import mysql.connector

import utils
from base_data import get_new_id_for_table
from utils import config
from utils import find_between

cnx = mysql.connector.connect(**config)
cursor = cnx.cursor(buffered=True, dictionary=True)

db_name = utils.db_name
dynamic_db_name = utils.dynamic_db_name
ext_db_name = utils.ext_db_name

prov_col_name_to_be_copied = [52, 53, 54, 55, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153,
                              178, 179, 180, 181, 182, 186, 187, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 358,
                              359, 622, 652, 694, 695, 715, 716, 720, 811, 812, 1050, 1051, 1052, 1111, 1112, 1113,
                              1154, 1155, 1156, 1219, 1220, 1221, 1222, 1268, 1269, 1270, 1271, 1272, 1273, 1274, 1275,
                              1276, 1735, 1736, 1737, 1738, 1739, 1786, 1787, 1788, 1789, 1790, 1791, 1792, 1793, 1794,
                              2529, 2530, 2634, 3488, 3489, 3491, 3492, 3494, 3495, 3604, 3605, 4631, 4632, 4633, 4634,
                              4635, 4776, 4777, 4778, 4779, 4780, 4792, 4793, 4794, 4795, 4796, 4797, 4798, 4799, 4800,
                              4801, 4802, 4803, 4851, 4852, 4853, 4854, 4873, 4874, 4875, 4876, 4877, 4891, 4892, 4893,
                              4894, 4895, 4906, 4907, 4908, 4909, 4912, 4913, 4914, 4915, 4916, 5008, 5009, 5010, 5011,
                              5012, 5013, 5311, 5312, 5339, 5340, 5341, 5342, 5600, 5601, 5602, 5603, 5604, 5605, 5606,
                              5607, 5608, 5609, 5610, 5643, 5644, 5645, 5646, 5647, 5648, 5649, 5650, 5651, 5652, 5653,
                              5654, 5655, 5656, 5657, 5658, 5683, 5751, 5752, 5753, 5754, 5755, 5756, 5757, 5758, 5759,
                              5760, 5761, 5762, 5763, 5764, 5765, 5766, 5767, 5768, 6717, 6969]


def handle_dimension_table():
    table_name = db_name + '.dimension_table'
    cols = ['auto_update_cols_str']
    sel_query = "SELECT * FROM {}".format(table_name)
    cursor.execute(sel_query)
    sqls = []
    for row in cursor:
        for c in cols:
            if 'auto_update_cols_str' == c:
                where_clause = "{} = '{}'".format('id', row['id'])
                # print(where_clause)
                cols_value = row['auto_update_cols']
                if cols_value is None or cols_value == "":
                    continue
                st_type = row['structure_type']
                if st_type == 'HIERARCHICAL':
                    vals = cols_value.split(',')
                    new_vals = []
                    for v in vals:
                        new_vals.append(get_new_id_for_table(db_name + '.hierarchical_dimension_columns', v))
                    new_val_str = ','.join(new_vals)
                elif st_type == 'FLAT':
                    vals = cols_value.split(',')
                    new_vals = []
                    for v in vals:
                        new_vals.append(get_new_id_for_table(db_name + '.flat_dimension_columns', v))
                    new_val_str = ','.join(new_vals)
                sql_str = "UPDATE {} SET {}='{}' WHERE {}".format(table_name, c, new_val_str, where_clause)
                # print(sql_str)
                sqls.append(sql_str)
    for s in sqls:
        utils.dump_sql(s)
        cursor.execute(s)
    cnx.commit()
    # cnx.close()


def handle_fact_table():
    table_name = db_name + '.fact_table'
    cols = ['parent_src_tables_str']
    sel_query = "SELECT * FROM {}".format(table_name)
    cursor.execute(sel_query)
    sqls = []
    for row in cursor:
        where_clause = "{} = '{}'".format('id', row['id'])
        for c in cols:
            if 'parent_src_tables_str' == c:
                # print(where_clause)
                cols_value = row['parent_src_tables']
                if cols_value is None or cols_value == "":
                    continue
                vals = cols_value.split(',')
                new_vals = []
                for v in vals:
                    new_vals.append(get_new_id_for_table(db_name + '.source_tables', v))
                new_val_str = ','.join(new_vals)
                sql_str = "UPDATE {} SET {}='{}' WHERE {}".format(table_name, c, new_val_str, where_clause)
                # print(sql_str)
                sqls.append(sql_str)
    for s in sqls:
        utils.dump_sql(s)
        cursor.execute(s)
    cnx.commit()
    # cnx.close()


def handle_stdcm_id_str():
    table_name = db_name + '.source_target_dimension_column_mapping'
    cols = ['id_str']
    sel_query = "SELECT * FROM {}".format(table_name)
    cursor.execute(sel_query)
    sqls = []
    for row in cursor:
        for c in cols:
            if 'id_str' == c:
                # print(where_clause)
                tmi_str = row['table_mapping_id_str']
                dim_id_str = row['dimension_id_str']
                tmi = row['table_mapping_id']
                dim_id = row['dimension_id']
                scope_id = row['scope_id']
                new_val = tmi_str + '_' + dim_id_str + '_' + str(scope_id)
                where_clause = "{} = '{}' AND {} = '{}' AND {} = '{}'".format('table_mapping_id', tmi, 'dimension_id',
                                                                              dim_id, 'scope_id', scope_id)
                sql_str = "UPDATE {} SET {}='{}' WHERE {}".format(table_name, c, new_val, where_clause)
                # print(sql_str)
                sqls.append(sql_str)
    for s in sqls:
        utils.dump_sql(s)
        cursor.execute(s)
    cnx.commit()
    # cnx.close()


def handle_fact_kpis_id_str():
    table_name = db_name + '.fact_kpis'
    cols = ['id_str']
    sel_query = "SELECT * FROM {}".format(table_name)
    cursor.execute(sel_query)
    sqls = []
    for row in cursor:
        for c in cols:
            if 'id_str' == c:
                # print(where_clause)
                ti_str = row['table_id_str']
                ci_str = row['column_id_str']
                ti = row['table_id']
                ci = row['column_id']
                scope_id = row['scope_id']
                new_val = ti_str + '_' + ci_str + '_' + str(scope_id)
                where_clause = "{} = '{}' AND {} = '{}' AND {} = '{}'".format('table_id', ti, 'column_id',
                                                                              ci, 'scope_id', scope_id)
                sql_str = "UPDATE {} SET {}='{}' WHERE {}".format(table_name, c, new_val, where_clause)
                # print(sql_str)
                sqls.append(sql_str)
    for s in sqls:
        utils.dump_sql(s)
        cursor.execute(s)
    cnx.commit()
    # cnx.close()


def handle_source_target_table_mapping():
    table_name = db_name + '.source_target_table_mapping'
    cols = ['id_str']
    sel_query = "SELECT * FROM {}".format(table_name)
    cursor.execute(sel_query)
    sqls = []
    for row in cursor:
        for c in cols:
            if 'id_str' == c:
                # print(where_clause)
                ft_id = row['fact_table_id_str']
                st_id = row['source_table_id_str']
                tt_id = row['target_table_id_str']
                tt_type = row['target_table_type']
                scope_id = row['scope_id']
                id = row['id']
                if tt_type == 'LOGICAL':
                    new_val = ft_id + '_' + st_id + '_' + tt_id + '_' + str(scope_id)
                    where_clause = "{} = '{}'".format('id', id)
                    sql_str = "UPDATE {} SET {}='{}' WHERE {}".format(table_name, c, new_val, where_clause)
                    # print(sql_str)
                    sqls.append(sql_str)
    for s in sqls:
        utils.dump_sql(s)
        cursor.execute(s)
    cnx.commit()
    # cnx.close()


def handle_union_mapping_id_str():
    table_name = db_name + '.union_mapping'
    cols = ['id_str']
    sel_query = "SELECT * FROM {}".format(table_name)
    cursor.execute(sel_query)
    sqls = []
    for row in cursor:
        for c in cols:
            if 'id_str' == c:
                # print(where_clause)
                tmi_str = row['table_mapping_id_str']
                tdci_str = row['target_diff_column_id_str']
                tmi = row['table_mapping_id']
                tdci = row['target_diff_column_id']
                new_val = tmi_str + '_' + tdci_str
                where_clause = "{} = '{}' AND {} = '{}'".format('table_mapping_id', tmi, 'target_diff_column_id',
                                                                tdci)
                sql_str = "UPDATE {} SET {}='{}' WHERE {}".format(table_name, c, new_val, where_clause)
                # print(sql_str)
                sqls.append(sql_str)
    for s in sqls:
        utils.dump_sql(s)
        cursor.execute(s)
    cnx.commit()
    # cnx.close()


def handle_fact_table_column():
    table_name = db_name + '.fact_table_column'
    cols = ['functional_dependency_keys_str']
    sel_query = "SELECT * FROM {}".format(table_name)
    cursor.execute(sel_query)
    sqls = []
    for row in cursor:
        for c in cols:
            if 'functional_dependency_keys_str' == c:
                where_clause = "{} = '{}'".format('id', row['id'])
                # print(where_clause)
                cols_value = row['functional_dependency_keys']
                if cols_value is None or cols_value == "":
                    continue
                vals = cols_value.split(',')
                new_vals = []
                for v in vals:
                    new_vals.append(get_new_id_for_table(db_name + '.fact_table_column', v))
                new_val_str = ','.join(new_vals)
                sql_str = "UPDATE {} SET {}='{}' WHERE {}".format(table_name, c, new_val_str, where_clause)
                # print(sql_str)
                sqls.append(sql_str)
    for s in sqls:
        utils.dump_sql(s)
        cursor.execute(s)
    cnx.commit()
    # cnx.close()


def handle_fact_table_run_type():
    table_name = db_name + '.fact_table_run_type'
    cols = ['table_id_str']
    sel_query = "SELECT * FROM {}".format(table_name)
    cursor.execute(sel_query)
    sqls = []
    for row in cursor:
        for c in cols:
            if 'table_id_str' == c:
                where_clause = "{} = '{}'".format('id', row['id'])
                # print(where_clause)
                col_value = row['table_id']
                tt = row['table_type']
                new_val_str = ""
                if tt == 'SUMMARY':
                    new_val_str = get_new_id_for_table(db_name + '.summary_table', str(col_value))
                elif tt == 'FACT':
                    new_val_str = get_new_id_for_table(db_name + '.fact_table', str(col_value))
                sql_str = "UPDATE {} SET {}='{}' WHERE {}".format(table_name, c, new_val_str, where_clause)
                # print(sql_str)
                sqls.append(sql_str)
    for s in sqls:
        utils.dump_sql(s)
        cursor.execute(s)
    cnx.commit()
    # cnx.close()


def handle_fact_table_std_cond():
    table_name = db_name + '.fact_table_standard_condition'
    cols = ['column_id_str']
    sel_query = "SELECT * FROM {}".format(table_name)
    cursor.execute(sel_query)
    sqls = []
    for row in cursor:
        for c in cols:
            if 'column_id_str' == c:
                where_clause = "{} = '{}'".format('id', row['id'])
                # print(where_clause)
                col_value = row['column_id']
                dim_id = row['refTableId']
                dim_select_sql = "SELECT * from {}.dimension where dim_id = {}".format(db_name, dim_id)
                cu = cnx.cursor(buffered=True, dictionary=True)
                cu.execute(dim_select_sql)
                r = cu.fetchone()
                if r is None:
                    continue
                dim_table = r['dim_table_id']
                dim_select_sql = "SELECT * from {}.dimension_table where id = {}".format(db_name, dim_table)
                cu.execute(dim_select_sql)
                r1 = cu.fetchone()
                if r1 is None:
                    continue
                st_type = r1['structure_type']
                if st_type == 'HIERARCHICAL':
                    new_val_str = get_new_id_for_table(db_name + '.hierarchical_dimension_columns', str(col_value))
                elif st_type == 'FLAT':
                    new_val_str = get_new_id_for_table(db_name + '.flat_dimension_columns', str(col_value))
                sql_str = "UPDATE {} SET {}='{}' WHERE {}".format(table_name, c, new_val_str, where_clause)
                # print(sql_str)
                sqls.append(sql_str)
    for s in sqls:
        utils.dump_sql(s)
        cursor.execute(s)
    cnx.commit()
    # cnx.close()


def handle_logical_summary_table():
    table_name = db_name + '.logical_summary_table'
    cols = ['group_by_cols_str']
    sel_query = "SELECT * FROM {}".format(table_name)
    cursor.execute(sel_query)
    sqls = []
    for row in cursor:
        for c in cols:
            if 'group_by_cols_str' == c:
                where_clause = "{} = '{}'".format('id', row['id'])
                # print(where_clause)
                cols_value = row['group_by_cols']
                if cols_value is None or cols_value == "":
                    continue
                vals = cols_value.split(',')
                new_vals = []
                for v in vals:
                    new_vals.append(get_new_id_for_table(db_name + '.summary_groupBy', v))
                new_val_str = ','.join(new_vals)
                sql_str = "UPDATE {} SET {}='{}' WHERE {}".format(table_name, c, new_val_str, where_clause)
                # print(sql_str)
                sqls.append(sql_str)
    for s in sqls:
        utils.dump_sql(s)
        cursor.execute(s)
    cnx.commit()
    # cnx.close()


def handle_mongo_collections():
    table_name = db_name + '.mongo_collections'
    cols = ['dependent_struct_ids_str']
    sel_query = "SELECT * FROM {}".format(table_name)
    cursor.execute(sel_query)
    sqls = []
    for row in cursor:
        for c in cols:
            if 'dependent_struct_ids_str' == c:
                where_clause = "{} = '{}'".format('id', row['id'])
                # print(where_clause)
                cols_value = row['dependent_struct_ids']
                if cols_value is None or cols_value == "":
                    continue
                vals = cols_value.split(',')
                new_vals = []
                for v in vals:
                    new_vals.append(get_new_id_for_table(db_name + '.mongo_structs', v))
                new_val_str = ','.join(new_vals)
                sql_str = "UPDATE {} SET {}='{}' WHERE {}".format(table_name, c, new_val_str, where_clause)
                # print(sql_str)
                sqls.append(sql_str)
    for s in sqls:
        utils.dump_sql(s)
        cursor.execute(s)
    cnx.commit()
    # cnx.close()


def handle_provider_dim_map():
    table_name = db_name + '.provider_dimension_mapping'
    cols = ['provider_col_name_str', 'dimension_column_id_str']
    sel_query = "SELECT * FROM {}".format(table_name)
    cursor.execute(sel_query)
    sqls = []
    for row in cursor:
        where_clause = "{} = '{}'".format('id', row['id'])
        for c in cols:
            if 'provider_col_name_str' == c:
                # print(where_clause)
                col_value = row['provider_col_name']
                id = row['id']
                if col_value is None or col_value == "":
                    continue
                s_col = find_between(col_value, "_colId_", "_instance_")
                new_val_str = col_value.replace(s_col,
                                                get_new_id_for_table(db_name + '.source_table_column', str(s_col)))
                if id in prov_col_name_to_be_copied:
                    new_val_str = row['provider_col_name']
                sql_str = "UPDATE {} SET {}='{}' WHERE {}".format(table_name, c, new_val_str, where_clause)
                if id in prov_col_name_to_be_copied:
                    print(sql_str)
                sqls.append(sql_str)
            elif 'dimension_column_id_str' == c:
                col_value = row['dimension_column_id']
                dim_t_id = row['dim_table_id']
                if col_value is None or col_value == "":
                    continue
                dim_select_sql = "SELECT * from {}.dimension_table where id = {}".format(db_name, dim_t_id)
                cu = cnx.cursor(buffered=True, dictionary=True)
                cu.execute(dim_select_sql)
                r = cu.fetchone()
                st_type = r['structure_type']
                if st_type == 'HIERARCHICAL':
                    new_val_str = get_new_id_for_table(db_name + '.hierarchical_dimension_columns', str(col_value))
                elif st_type == 'FLAT':
                    new_val_str = get_new_id_for_table(db_name + '.flat_dimension_columns', str(col_value))
                elif st_type == 'SCD':
                    new_val_str = get_new_id_for_table(db_name + '.scd_dimension_columns', str(col_value))
                sql_str = "UPDATE {} SET {}='{}' WHERE {}".format(table_name, c, new_val_str, where_clause)
                # print(sql_str)
                sqls.append(sql_str)
    for s in sqls:
        utils.dump_sql(s)
        cursor.execute(s)
    cnx.commit()
    # cnx.close()


def handle_source_table():
    table_name = db_name + '.source_tables'
    cols = ['pkey_columns_str']
    sel_query = "SELECT * FROM {}".format(table_name)
    cursor.execute(sel_query)
    sqls = []
    for row in cursor:
        for c in cols:
            if 'pkey_columns_str' == c:
                where_clause = "{} = '{}'".format('id', row['id'])
                # print(where_clause)
                cols_value = row['pkey_columns']
                if cols_value is None or cols_value == "":
                    continue
                vals = cols_value.split(',')
                new_vals = []
                for v in vals:
                    new_vals.append(get_new_id_for_table(db_name + '.source_table_column', v))
                new_val_str = ','.join(new_vals)
                sql_str = "UPDATE {} SET {}='{}' WHERE {}".format(table_name, c, new_val_str, where_clause)
                # print(sql_str)
                sqls.append(sql_str)
    for s in sqls:
        utils.dump_sql(s)
        cursor.execute(s)
    cnx.commit()
    # cnx.close()


def handle_source_target_dim_col_map():
    table_name = db_name + '.source_target_dimension_column_mapping'
    cols = ['join_col_id_str', 'select_col_id_str']
    sel_query = "SELECT * FROM {}".format(table_name)
    cursor.execute(sel_query)
    sqls = []
    for row in cursor:
        where_clause = "{} = '{}' AND {} = '{}' AND {} = '{}'".format('table_mapping_id', row['table_mapping_id'],
                                                                      'dimension_id', row['dimension_id'],
                                                                      'scope_id', row['scope_id'])
        dim_t_id = row['dim_table_id']
        dim_select_sql = "SELECT * from {}.dimension_table where id = {}".format(db_name, dim_t_id)
        cu = cnx.cursor(buffered=True, dictionary=True)
        cu.execute(dim_select_sql)
        r = cu.fetchone()
        if r is None:
            continue
        st_type = r['structure_type']
        for c in cols:
            if 'join_col_id_str' == c:
                # print(where_clause)
                col_value = row['join_col_id']
                if col_value is None or col_value == "":
                    continue
                new_val_str = ""
                if st_type == 'HIERARCHICAL':
                    new_val_str = get_new_id_for_table(db_name + '.hierarchical_dimension_columns', str(col_value))
                elif st_type == 'FLAT':
                    new_val_str = get_new_id_for_table(db_name + '.flat_dimension_columns', str(col_value))
                sql_str = "UPDATE {} SET {}='{}' WHERE {}".format(table_name, c, new_val_str, where_clause)
                # print(sql_str)
                sqls.append(sql_str)
            elif 'select_col_id_str' == c:
                col_value = row['select_col_id']
                if col_value is None or col_value == "":
                    continue
                new_val_str = ""
                if st_type == 'HIERARCHICAL':
                    new_val_str = get_new_id_for_table(db_name + '.hierarchical_dimension_columns', str(col_value))
                elif st_type == 'FLAT':
                    new_val_str = get_new_id_for_table(db_name + '.flat_dimension_columns', str(col_value))
                sql_str = "UPDATE {} SET {}='{}' WHERE {}".format(table_name, c, new_val_str, where_clause)
                # print(sql_str)
                sqls.append(sql_str)
    for s in sqls:
        utils.dump_sql(s)
        cursor.execute(s)
    cnx.commit()
    # cnx.close()


def handle_source_target_table_map():
    table_name = db_name + '.source_target_table_mapping'
    cols = ['source_table_id_str', 'target_table_id_str']
    sel_query = "SELECT * FROM {}".format(table_name)
    cursor.execute(sel_query)
    sqls = []
    for row in cursor:
        where_clause = "{} = '{}'".format('id', row['id'])
        s_t_type = row['source_table_type']
        t_t_type = row['target_table_type']
        for c in cols:
            if 'source_table_id_str' == c:
                col_value = row['source_table_id']
                if s_t_type == 'LOGICAL':
                    sql_str = "UPDATE {} SET {}='{}' WHERE {}".format(table_name, c, col_value, where_clause)
                    # print(sql_str)
                    sqls.append(sql_str)
            elif 'target_table_id_str' == c:
                # print(where_clause)
                col_value = row['target_table_id']
                if t_t_type == 'LOGICAL':
                    sql_str = "UPDATE {} SET {}='{}' WHERE {}".format(table_name, c, col_value, where_clause)
                    # print(sql_str)
                    sqls.append(sql_str)
    for s in sqls:
        utils.dump_sql(s)
        cursor.execute(s)
    cnx.commit()
    # cnx.close()


def handle_summary_table_column_definition():
    table_name = db_name + '.summary_table_column_definition'
    cols = ['filters_str']
    sel_query = "SELECT * FROM {}".format(table_name)
    cursor.execute(sel_query)
    sqls = []
    for row in cursor:
        where_clause = "{} = '{}'".format('id', row['id'])
        for c in cols:
            if 'filters_str' == c:
                v = row['filters']
                if v is None:
                    continue
                filter_ids = v.split(',')
                new_vals = []
                for id in filter_ids:
                    new_vals.append(get_new_id_for_table(db_name + '.summary_condition', id))
                new_v = ",".join(new_vals)
                sql_str = "UPDATE {} SET {}='{}' WHERE {}".format(table_name, c, new_v, where_clause)
                sqls.append(sql_str)
    for s in sqls:
        utils.dump_sql(s)
        cursor.execute(s)
    cnx.commit()


def handle_summary_condition():
    table_name = db_name + '.summary_condition'
    cols = ['refTableId_str', 'column_id_str']
    sel_query = "SELECT * FROM {}".format(table_name)
    cursor.execute(sel_query)
    sqls = []
    for row in cursor:
        where_clause = "{} = '{}'".format('id', row['id'])
        t_type = row['tableType']
        for c in cols:
            if 'refTableId_str' == c:
                col_value = row['refTableId']
                if t_type == 'DIMENSION':
                    new_val_str = get_new_id_for_table(db_name + '.dimension', str(col_value))
                    sql_str = "UPDATE {} SET {}='{}' WHERE {}".format(table_name, c, new_val_str, where_clause)
                    # print(sql_str)
                    sqls.append(sql_str)
                elif t_type == 'FACT':
                    new_val_str = get_new_id_for_table(db_name + '.fact_table', str(col_value))
                    sql_str = "UPDATE {} SET {}='{}' WHERE {}".format(table_name, c, new_val_str, where_clause)
                    # print(sql_str)
                    sqls.append(sql_str)
            elif 'column_id_str' == c:
                # print(where_clause)
                dim_id = row['refTableId']
                col_value = row['column_id']
                if t_type == 'DIMENSION':
                    dim_select_sql = "SELECT * from {}.dimension where dim_id = {}".format(db_name, dim_id)
                    cu = cnx.cursor(buffered=True, dictionary=True)
                    cu.execute(dim_select_sql)
                    r = cu.fetchone()
                    if r is None:
                        continue
                    dim_table = r['dim_table_id']
                    dim_select_sql = "SELECT * from {}.dimension_table where id = {}".format(db_name, dim_table)
                    cu.execute(dim_select_sql)
                    r1 = cu.fetchone()
                    if r1 is None:
                        continue
                    st_type = r1['structure_type']
                    new_val_str = ""
                    if st_type == 'HIERARCHICAL':
                        new_val_str = get_new_id_for_table(db_name + '.hierarchical_dimension_columns', str(col_value))
                    elif st_type == 'FLAT':
                        new_val_str = get_new_id_for_table(db_name + '.flat_dimension_columns', str(col_value))
                    sql_str = "UPDATE {} SET {}='{}' WHERE {}".format(table_name, c, new_val_str, where_clause)
                    # print(sql_str)
                    sqls.append(sql_str)
                elif t_type == 'FACT':
                    new_val_str = get_new_id_for_table(db_name + '.fact_table_column', str(col_value))
                    sql_str = "UPDATE {} SET {}='{}' WHERE {}".format(table_name, c, new_val_str, where_clause)
                    # print(sql_str)
                    sqls.append(sql_str)
    for s in sqls:
        utils.dump_sql(s)
        cursor.execute(s)
    cnx.commit()
    # cnx.close()


def handle_summary_group_by():
    table_name = db_name + '.summary_groupBy'
    cols = ['refTableId_str', 'column_id_str']
    sel_query = "SELECT * FROM {}".format(table_name)
    cursor.execute(sel_query)
    sqls = []
    for row in cursor:
        where_clause = "{} = '{}'".format('id', row['id'])
        t_type = row['tableType']
        for c in cols:
            if 'refTableId_str' == c:
                col_value = row['refTableId']
                if t_type == 'DIMENSION':
                    new_val_str = get_new_id_for_table(db_name + '.dimension', str(col_value))
                    sql_str = "UPDATE {} SET {}='{}' WHERE {}".format(table_name, c, new_val_str, where_clause)
                    # print(sql_str)
                    sqls.append(sql_str)
                elif t_type == 'FACT':
                    new_val_str = get_new_id_for_table(db_name + '.fact_table', str(col_value))
                    sql_str = "UPDATE {} SET {}='{}' WHERE {}".format(table_name, c, new_val_str, where_clause)
                    # print(sql_str)
                    sqls.append(sql_str)
            elif 'column_id_str' == c:
                # print(where_clause)
                dim_id = row['refTableId']
                col_value = row['column_id']
                if t_type == 'DIMENSION':
                    dim_select_sql = "SELECT * from {}.dimension where dim_id = {}".format(db_name, dim_id)
                    cu = cnx.cursor(buffered=True, dictionary=True)
                    cu.execute(dim_select_sql)
                    r = cu.fetchone()
                    if r is None:
                        continue
                    dim_table_id = r['dim_table_id']
                    dim_select_sql = "SELECT * from {}.dimension_table where id = {}".format(db_name, dim_table_id)
                    cu.execute(dim_select_sql)
                    r1 = cu.fetchone()
                    if r1 is None:
                        continue
                    st_type = r1['structure_type']
                    new_val_str = ""
                    if st_type == 'HIERARCHICAL':
                        new_val_str = get_new_id_for_table(db_name + '.hierarchical_dimension_columns', str(col_value))
                    elif st_type == 'FLAT':
                        new_val_str = get_new_id_for_table(db_name + '.flat_dimension_columns', str(col_value))
                    sql_str = "UPDATE {} SET {}='{}' WHERE {}".format(table_name, c, new_val_str, where_clause)
                    # print(sql_str)
                    sqls.append(sql_str)
                elif t_type == 'FACT':
                    new_val_str = get_new_id_for_table(db_name + '.fact_table_column', str(col_value))
                    sql_str = "UPDATE {} SET {}='{}' WHERE {}".format(table_name, c, new_val_str, where_clause)
                    # print(sql_str)
                    sqls.append(sql_str)
    for s in sqls:
        utils.dump_sql(s)
        cursor.execute(s)
    cnx.commit()
    # cnx.close()


def handle_transformation():
    table_name = db_name + '.transformations'
    f_to_replace = ['tableId', 'selectCols', 'fk', 'colId', 'groupByCol', 'valueCol']
    sel_query = "SELECT * FROM {}".format(table_name)
    cursor.execute(sel_query)
    sqls = []
    for row in cursor:
        id_num = row['id']
        if id_num != 1005:
            continue
        where_clause = "{} = '{}'".format('id', row['id'])
        # print(where_clause)
        template = row['template'].replace(" ", "")
        for f in f_to_replace:
            if f == 'tableId':
                vals = utils.find_all_between(template, f)
                if vals is not None:
                    for v in vals:
                        if v is None or v == "":
                            continue
                        old_vals_str = '"tableId":' + v + ','
                        new_vals_str = '"tableId":"' + get_new_id_for_table(db_name + '.source_tables', v) + '",'
                        template = template.replace(old_vals_str, new_vals_str)
            elif f == 'selectCols':
                vals = utils.find_all_between(template, f)
                if vals is None:
                    continue
                for v in vals:
                    if v is None or v == "":
                        continue
                    all_val = v.split(',')
                    new_vals = []
                    for id in all_val:
                        new_vals.append('"' + get_new_id_for_table(db_name + '.source_table_column', id) + '"')
                    new_vals_str = '"selectCols":[' + ",".join(new_vals) + '],'
                    old_vals_str = '"selectCols":[' + v + '],'
                    template = template.replace(old_vals_str, new_vals_str)
            elif f == 'fk':
                vals = utils.find_all_between(template, f)
                if vals is None:
                    continue
                for v in vals:
                    if v is None or v == "":
                        continue
                    v = v.replace("}", "")
                    old_vals_str = '"fk":' + v + ','
                    new_vals_str = '"fk":"' + get_new_id_for_table(db_name + '.source_table_fk_constraints', v) + '",'
                    template = template.replace(old_vals_str, new_vals_str)
            elif f == 'colId':
                vals = utils.find_all_between(template, f)
                if vals is None:
                    continue
                for v in vals:
                    if v is None or v == "":
                        continue
                    old_vals_str = '"colId":' + v + ','
                    new_vals_str = '"colId":"' + get_new_id_for_table(db_name + '.source_table_column', v) + '",'
                    template = template.replace(old_vals_str, new_vals_str)
            elif f == 'groupByCol':
                vals = utils.find_all_between(template, f)
                if vals is None:
                    continue
                for v in vals:
                    if v is None or v == "":
                        continue
                    old_vals_str = '"groupByCol":' + v + ','
                    new_vals_str = '"groupByCol":"' + get_new_id_for_table(db_name + '.source_table_column', v) + '",'
                    template = template.replace(old_vals_str, new_vals_str)
            elif f == 'valueCol':
                vals = utils.find_all_between(template, f)
                if vals is None:
                    continue
                for v in vals:
                    if v is None or v == "":
                        continue
                    old_vals_str = '"valueCol":' + v + ','
                    new_vals_str = '"valueCol":"' + get_new_id_for_table(db_name + '.source_table_column', v) + '",'
                    template = template.replace(old_vals_str, new_vals_str)
        sql_str = "UPDATE {} SET {}='{}' WHERE {}".format(table_name, 'template_str', template, where_clause)
        # print(sql_str)
        sqls.append(sql_str)

    for s in sqls:
        utils.dump_sql(s)
        # cursor.execute(s)
    cnx.commit()
    cnx.close()


def handle_transpose_columns():
    table_name = db_name + '.transpose_columns'
    f_to_replace = ['columnId']
    sel_query = "SELECT * FROM {}".format(table_name)
    cursor.execute(sel_query)
    sqls = []
    for row in cursor:

        tc_id = row['transposed_column_id']
        scope_id = row['scope_id']
        if tc_id == 2227 and scope_id == -997:
            continue
        where_clause = "{} = '{}' AND {} = '{}'".format('transposed_column_id', tc_id,
                                                        'scope_id', scope_id)
        cond = row['conditions']
        if cond is None:
            continue
        cond = cond.replace(" ", "")
        for f in f_to_replace:
            if f == 'columnId':
                vals = utils.find_all_between(cond, f)
                i = 0
                col_vs = utils.find_all_between(cond, "values")
                for v in vals:
                    c_v = col_vs[i]
                    old_vals_str = '"columnId":' + v + ','
                    v = v.replace('"', "")
                    new_vals_str = '"columnId":"' + get_new_id_for_table(db_name + '.source_table_column', v) + '",'
                    cond = cond.replace(old_vals_str, new_vals_str)
                    i = i + 1
                    if c_v.replace("'", "").isnumeric():
                        cond = cond.replace("'", "\\'")
                    else:
                        # cond = [bytes(s, 'utf-8').decode('unicode_escape') for s in cond]
                        cond = cond.replace("'", "\\\'")
        sql_str = "UPDATE {} SET {}='{}' WHERE {};".format(table_name, 'conditions_str', cond, where_clause)
        # print(sql_str)
        sqls.append(sql_str)
    for s in sqls:
        utils.dump_sql(s)
        cursor.execute(s)
    cnx.commit()
    cnx.close()
