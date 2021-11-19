import mysql.connector
import os

from utils import config


def create_meta_data_schema():
    cnx = mysql.connector.connect(**config)
    cursor = cnx.cursor(buffered=True, dictionary=True)
    table_list = ["attribution_strategy", "attribution_strategy_mapping", "config_key_values", "dimension",
                  "dimension_attribute_value_tables", "dimension_table", "dimension_etl_data_status",
                  "fact_dimension_overlap", "fact_context", "fact_fk_constraints", "fact_kpis", "fact_table",
                  "fact_table_column", "fact_table_run_type", "fact_table_standard_condition", "flat_dimension_columns",
                  "hierarchical_dimension_columns", "logical_summary_table", "logical_view",
                  "logical_view_column_definition", "mongo_collections", "mongo_source_columns", "mongo_source_tables",
                  "mongo_structs", "organization_scopes", "org_context", "providers", "provider_dimension_mapping",
                  "provider_tables", "scd_dimension_columns", "source_schema_end_point_mapping",
                  "source_shard_table_info", "source_tables", "source_table_column", "source_table_fk_constraints",
                  "source_target_column_mapping", "source_target_dimension_column_mapping",
                  "source_target_dimension_mapping", "source_target_table_mapping", "summary_condition",
                  "summary_groupBy", "summary_table", "summary_table_column", "summary_table_column_definition",
                  "transformations", "transpose_columns", "transpose_tables", "union_mapping"]
    for table in table_list:
        sql = "SHOW CREATE TABLE " + "nightly_mod." + table
        cursor.execute(sql)
        for row in cursor:
            create_stmt = row['Create Table']
            head, sep, tail = create_stmt.partition("ENGINE=InnoDB")
            head.replace('nightly_mod.', '')
            dump_sql(head + sep + ";", table)


def create_meta_data_ext_schema():
    cnx = mysql.connector.connect(**config)
    cursor = cnx.cursor(buffered=True, dictionary=True)
    table_list = ["banding", "config_keys", "custom_field_transformation", "custom_table", "custom_table_fk",
                  "dimension_groups", "external_flat_dimension_columns", "kpi_group_dimension", "pii_masked_column",
                  "source_data_dump"]
    for table in table_list:
        sql = "SHOW CREATE TABLE " + "nightly_external." + table
        cursor.execute(sql)
        for row in cursor:
            create_stmt = row['Create Table']
            head, sep, tail = create_stmt.partition("ENGINE=InnoDB")
            head.replace('nightly_external.', '')
            dump_sql(head + sep + ";", table)


def create_data_location_schema():
    cnx = mysql.connector.connect(**config)
    cursor = cnx.cursor(buffered=True, dictionary=True)
    table_list = ["data_location_dimension", "data_location_dimension_attr", "data_location_fact",
                  "data_location_source", "data_location_summary_fact", "scd_data_locations"]
    for table in table_list:
        sql = "SHOW CREATE TABLE " + "nightly_data_loc." + table
        cursor.execute(sql)
        for row in cursor:
            create_stmt = row['Create Table']
            head, sep, tail = create_stmt.partition("ENGINE=InnoDB")
            head.replace('nightly_external.', '')
            dump_sql(head + sep + ";", table)


def create_meta_data_dynamic_schema():
    cnx = mysql.connector.connect(**config)
    cursor = cnx.cursor(buffered=True, dictionary=True)
    table_list = ["flat_dimension_columns", "hierarchical_dimension_columns", "scd_dimension_columns",
                  "provider_dimension_mapping", "organization_scopes", "org_context", "transformations"]
    for table in table_list:
        sql = "SHOW CREATE TABLE " + "nightly_dynamic." + table
        cursor.execute(sql)
        for row in cursor:
            create_stmt = row['Create Table']
            head, sep, tail = create_stmt.partition("ENGINE=InnoDB")
            head.replace('nightly_dynamic.', '')
            dump_sql(head + sep + ";", table)


def create_dim_group_schema():
    cnx = mysql.connector.connect(**config)
    cursor = cnx.cursor(buffered=True, dictionary=True)
    table_list = ["dimension_grouping_run_details"]
    for table in table_list:
        sql = "SHOW CREATE TABLE " + "dimension_grouping." + table
        cursor.execute(sql)
        for row in cursor:
            create_stmt = row['Create Table']
            head, sep, tail = create_stmt.partition("ENGINE=InnoDB")
            head.replace('dimension_grouping.', '')
            dump_sql(head + sep + ";", table)


def dump_sql(stmt, file_name):
    # print(stmt)
    file = open(file_name + ".sql", "w")
    file.write(stmt)
    file.close()


def add_new_line(file_name):
    with open(file_name, "r") as file:
        filedata = file.read()
    filedata = filedata.replace('),', "),\n")
    with open(file_name, "w") as file:
        file.write(filedata)


def dump_seed_data():
    # tables = ["attribution_strategy", "attribution_strategy_mapping", "config_key_values", "dimension",
    #               "dimension_attribute_value_tables", "dimension_table", "dimension_etl_data_status",
    #               "fact_dimension_overlap", "fact_context", "fact_fk_constraints", "fact_kpis", "fact_table",
    #               "fact_table_column", "fact_table_run_type", "fact_table_standard_condition", "flat_dimension_columns",
    #               "hierarchical_dimension_columns", "logical_summary_table", "logical_view",
    #               "logical_view_column_definition", "mongo_collections", "mongo_source_columns",
    #               "mongo_source_tables", "mongo_structs", "organization_scopes", "org_context", "providers",
    #               "provider_dimension_mapping", "provider_tables", "scd_dimension_columns",
    #               "source_schema_end_point_mapping", "source_shard_table_info", "source_tables", "source_table_column",
    #               "source_table_fk_constraints", "source_target_column_mapping",
    #               "source_target_dimension_column_mapping", "source_target_dimension_mapping",
    #               "source_target_table_mapping", "summary_condition", "summary_groupBy", "summary_table",
    #               "summary_table_column", "summary_table_column_definition", "transformations", "transpose_columns",
    #               "transpose_tables", "union_mapping"]
    # tables = ["banding", "config_keys", "custom_field_transformation", "custom_table", "custom_table_fk",
    #                "dimension_groups", "external_flat_dimension_columns", "kpi_group_dimension", "pii_masked_column",
    #                "source_data_dump"]
    tables = ["external_flat_dimension_columns"]
    print(len(tables))
    for table in tables:
        command = "mysqldump --skip-add-drop-table --skip-add-locks --complete-insert --no-create-info --replace  --password=root@123 --user=root  nightly_external {} > {}.sql ".format(
        table, table)
        os.system(command)
        add_new_line(table+'.sql')


# create_meta_data_schema()
# create_meta_data_ext_schema()
# create_meta_data_dynamic_schema()
# create_dim_group_schema()
# create_data_location_schema()
dump_seed_data()
