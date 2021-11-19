import mysql.connector
from mysql.connector import Error
import re

config = {
    'user': 'root',
    'password': 'root@123',
    'host': '127.0.0.1',
    'database': 'nightly_mod',
    'raise_on_warnings': True
}


db_name = "nightly_mod"
dynamic_db_name = "nightly_dynamic"
ext_db_name = "nightly_external"
dim_grouping = "dimension_grouping"
data_location_db = "nightly_data_loc"


# db_name = "reon_metadata_2021_08_31_18_55"
# dynamic_db_name = "reon_metadata_dynamic_2021_09_01_17_57"
# ext_db_name = "reon_metadata_external"
# dim_grouping = "dimension_grouping"
# data_location_db = "reon_data_location_info"

def dump_sql(stmt):
    #print(stmt)
    file = open("id_mgr.sql_1", "a")
    file.write(stmt+";\n")
    file.close()


def create_db_connection(host_name, user_name, user_password, db_name):
    connection = None
    try:
        connection = mysql.connector.connect(
            host=host_name,
            user=user_name,
            passwd=user_password,
            database=db_name
        )
        #print("MySQL Database connection successful")
    except Error as err:
        print(f"Error: '{err}'")

    return connection


def execute_query(connection, query):
    cursor = connection.cursor()
    try:
        cursor.execute(query)
        connection.commit()
        print("Query successful")
    except Error as err:
        print(f"Error: '{err}'")


def read_query(connection, query):
    cursor = connection.cursor()
    result = None
    try:
        cursor.execute(query)
        result = cursor.fetchall()
        return result
    except Error as err:
        print(f"Error: '{err}'")


def read_conf(file_name):
    with open(file_name) as f:
        return f.readlines()


def find_between(s, first, last):
    try:
        start = s.index(first) + len(first)
        end = s.index(last, start)
        return s[start:end]
    except ValueError:
        return ""


def find_all_between(s, what_to):
    regex = ''
    if what_to == 'tableId':
        regex = r'"tableId":(.*?),'
    elif what_to == 'selectCols':
        regex = r'"selectCols":\[(.*?)\]'
    elif what_to == 'fk':
        regex = r'"fk":(.*?),'
    elif what_to == 'colId':
        regex = r'"colId":(.*?),'
    elif what_to == 'groupByCol':
        regex = r'"groupByCol":(.*?),'
    elif what_to == 'valueCol':
        regex = r'"valueCol":(.*?),'
    elif what_to == 'columnId':
        regex = r'"columnId":(.*?),'
    elif what_to == 'values':
        regex = r'"values":"(.*?)"'
    try:
        return re.findall(regex, s)
    except ValueError:
        return ""


test_str = "[{\"primaryTable\":{\"tableId\":88,\"selectCols\":[1254,1257,1258,1261,1262,1263,1268,1267],\"filters\":[],\"tableInstanceId\":1},\"joinTables\":[{\"fk\":4,\"joinWithTableInstanceId\":1,\"tableId\":92,\"selectCols\":[980,982,990,988],\"filters\":[],\"tableInstanceId\":1,\"joinType\":\"LEFT\"},{\"fk\":13,\"joinWithTableInstanceId\":1,\"tableId\":82,\"selectCols\":[967,971],\"filters\":[],\"tableInstanceId\":1,\"joinType\":\"LEFT\"},{\"fk\":14,\"joinWithTableInstanceId\":1,\"tableId\":84,\"selectCols\":[1034,1041],\"filters\":[],\"tableInstanceId\":1,\"joinType\":\"LEFT\"},{\"fk\":15,\"joinWithTableInstanceId\":1,\"tableId\":83,\"selectCols\":[1250,1253],\"filters\":[],\"tableInstanceId\":1,\"joinType\":\"LEFT\"},{\"fk\":11,\"joinWithTableInstanceId\":1,\"tableId\":119,\"selectCols\":[1379,1383,1384],\"filters\":[{\"colId\":1378,\"operator\":\"=\",\"value\":\"1\"}],\"tableInstanceId\":1,\"joinType\":\"LEFT\"},{\"fk\":42,\"joinWithTableInstanceId\":1,\"tableId\":122,\"selectCols\":[],\"filters\":[],\"whereFilters\":[{\"colId\":2399,\"operator\":\"!<=>\",\"value\":\"0\"}],\"tableInstanceId\":1,\"joinType\":\"LEFT\"},{\"fk\":12,\"joinWithTableInstanceId\":1,\"tableId\":133,\"selectCols\":[1622],\"filters\":[],\"tableInstanceId\":1,\"joinType\":\"LEFT\"}],\"transposes\":[{\"groupByCol\":834,\"derivedCols\":[{\"colValueFilters\":[{\"colId\":836,\"operator\":\"=\",\"value\":\"1\"},{\"colId\":837,\"operator\":\"IN\",\"value\":\"('BULK','ALL')\"}],\"valueCol\":835,\"colAlias\":\"subscription_status_sms_bulk\"},{\"colValueFilters\":[{\"colId\":836,\"operator\":\"=\",\"value\":\"1\"},{\"colId\":837,\"operator\":\"IN\",\"value\":\"('TRANS','ALL')\"}],\"valueCol\":835,\"colAlias\":\"subscription_status_sms_trans\"},{\"colValueFilters\":[{\"colId\":836,\"operator\":\"=\",\"value\":\"2\"},{\"colId\":837,\"operator\":\"IN\",\"value\":\"('BULK','ALL')\"}],\"valueCol\":835,\"colAlias\":\"subscription_status_email_bulk\"},{\"colValueFilters\":[{\"colId\":836,\"operator\":\"=\",\"value\":\"2\"},{\"colId\":837,\"operator\":\"IN\",\"value\":\"('TRANS','ALL')\"}],\"valueCol\":835,\"colAlias\":\"subscription_status_email_trans\"},{\"colValueFilters\":[{\"colId\":836,\"operator\":\"=\",\"value\":\"3\"},{\"colId\":837,\"operator\":\"IN\",\"value\":\"('BULK','ALL')\"}],\"valueCol\":835,\"colAlias\":\"subscription_status_wechat_bulk\"},{\"colValueFilters\":[{\"colId\":836,\"operator\":\"=\",\"value\":\"3\"},{\"colId\":837,\"operator\":\"IN\",\"value\":\"('TRANS','ALL')\"}],\"valueCol\":835,\"colAlias\":\"subscription_status_wechat_trans\"}],\"tableId\":74,\"tableInstanceId\":1,\"fk\":16},{\"groupByCol\":2050,\"derivedCols\":[{\"colValueFilters\":[{\"colId\":2051,\"operator\":\"=\",\"value\":\"'WECHAT'\"},{\"colId\":2053,\"operator\":\"=\",\"value\":\"'mobile'\"},{\"colId\":2058,\"operator\":\"=\",\"value\":\"'1234'\"}],\"valueCol\":2054,\"colAlias\":\"v2_profile_value_WECHAT_mobile_1234\"},{\"colValueFilters\":[{\"colId\":2051,\"operator\":\"=\",\"value\":\"'WECHAT'\"},{\"colId\":2053,\"operator\":\"=\",\"value\":\"'email'\"},{\"colId\":2058,\"operator\":\"=\",\"value\":\"'1234'\"}],\"valueCol\":2054,\"colAlias\":\"v2_profile_value_WECHAT_email_1234\"},{\"colValueFilters\":[{\"colId\":2051,\"operator\":\"=\",\"value\":\"'WECHAT'\"},{\"colId\":2053,\"operator\":\"=\",\"value\":\"'email'\"},{\"colId\":2058,\"operator\":\"=\",\"value\":\"'919905092973'\"}],\"valueCol\":2054,\"colAlias\":\"v2_profile_value_WECHAT_email_919905092973\"}],\"tableId\":134,\"tableInstanceId\":1,\"fk\":17},{\"groupByCol\":2059,\"derivedCols\":[{\"colValueFilters\":[{\"colId\":2060,\"operator\":\"=\",\"value\":\"'WECHAT'\"},{\"colId\":2061,\"operator\":\"=\",\"value\":\"'1234'\"}],\"valueCol\":2068,\"colAlias\":\"v2_profile_created_date_WECHAT_1234\"},{\"colValueFilters\":[{\"colId\":2060,\"operator\":\"=\",\"value\":\"'WECHAT'\"},{\"colId\":2061,\"operator\":\"=\",\"value\":\"'919905092973'\"}],\"valueCol\":2068,\"colAlias\":\"v2_profile_created_date_WECHAT_919905092973\"},{\"colValueFilters\":[{\"colId\":2060,\"operator\":\"=\",\"value\":\"'WECHAT'\"},{\"colId\":2061,\"operator\":\"=\",\"value\":\"'1234'\"}],\"valueCol\":2067,\"colAlias\":\"v2_profile_modified_date_WECHAT_1234\"},{\"colValueFilters\":[{\"colId\":2060,\"operator\":\"=\",\"value\":\"'WECHAT'\"},{\"colId\":2061,\"operator\":\"=\",\"value\":\"'919905092973'\"}],\"valueCol\":2067,\"colAlias\":\"v2_profile_modified_date_WECHAT_919905092973\"}],\"tableId\":135,\"tableInstanceId\":1,\"fk\":18}]}]"
f = '"tableId":'
s = ','

print(find_all_between(test_str, 'tableId'))
