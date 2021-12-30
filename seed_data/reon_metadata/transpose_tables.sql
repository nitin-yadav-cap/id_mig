-- MySQL dump 10.13  Distrib 8.0.25, for macos11 (x86_64)
--
-- Host: localhost    Database: nightly_mod
-- ------------------------------------------------------
-- Server version	8.0.25


--
-- Dumping data for table `transpose_tables`
--

REPLACE INTO `transpose_tables` (`transposed_table_id`, `source_table_id`, `scope_id`, `is_active`, `transposed_table_id_str`, `source_table_id_str`) VALUES (144,90,-1000,1,'custom_field_transpose_transpose_database_SPARK_SPARK','custom_fields_data_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL'),
(148,140,-1000,1,'loyaty_txn_extended_fields_transpose_transpose_database_SPARK_SPARK','loyaty_txn_extended_fields_mongo_doc_multi_profile_SPARK_SPARK'),
(149,147,-1000,1,'ni_txn_extended_fields_transpose_transpose_database_SPARK_SPARK','ni_txn_extended_fields_mongo_doc_multi_profile_SPARK_SPARK'),
(150,134,-997,1,'user_primary_comm_ids_transpose_database_SPARK_SPARK','user_comm_channels_multi_profile_SPARK_SPARK'),
(156,154,-1000,1,'loyalty_lineitem_extended_fields_transpose_transpose_database_SPARK_SPARK','loyalty_lineitem_extended_fields_multi_profile_SPARK_SPARK'),
(157,155,-1000,1,'ni_lineitem_extended_fields_transpose_transpose_database_SPARK_SPARK','ni_lineitem_extended_fields_multi_profile_SPARK_SPARK'),
(160,58,-1000,1,'inventory_attributes_transpose_transpose_database_SPARK_SPARK','inventory_items_product_management_INTOUCH_DB_MYSQL_PRODUCT_SLAVE_MYSQL'),
(167,136,-1000,1,'customer_extended_fields_mongo_doc_transpose_transpose_database_SPARK_SPARK','customer_extended_fields_mongo_doc_multi_profile_SPARK_SPARK'),
(170,169,-1000,1,'profile_v2_identifiers_mongo_doc_transpose_transpose_database_SPARK_SPARK','profile_v2_identifiers_mongo_doc_multi_profile_SPARK_SPARK'),
(172,171,-1000,1,'profile_users_mongo_doc_transpose_transpose_database_SPARK_SPARK','profile_users_mongo_doc_multi_profile_SPARK_SPARK'),
(188,86,-994,0,'payment_mode_attribute_values_transpose_transpose_database_SPARK_SPARK','payment_mode_attribute_values_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL'),
(189,153,-1000,1,'subscription_transpose_transpose_database_SPARK_SPARK','subscription_status_subscription_service_INTOUCH_DB_MYSQL_SLAVE_MYSQL'),
(194,193,-1000,1,'profile_v2_comm_channels_mongo_doc_transpose_transpose_database_SPARK_SPARK','profile_v2_comm_channels_mongo_doc_multi_profile_SPARK_SPARK'),
(252,251,-590,1,'lead_extended_fields_transpose_transpose_database_SPARK_SPARK','lead_extended_fields_mongo_doc_multi_profile_SPARK_SPARK'),
(324,320,-548,1,'return_txn_extended_fields_transpose_transpose_database_SPARK_SPARK','return_txn_extended_fields_multi_profile_SPARK_SPARK'),
(325,321,-548,1,'return_lineitem_extended_fields_transpose_transpose_database_SPARK_SPARK','return_lineitem_extended_fields_multi_profile_SPARK_SPARK'),
(326,322,-548,1,'nireturn_txn_extended_fields_transpose_transpose_database_SPARK_SPARK','nireturn_txn_extended_fields_multi_profile_SPARK_SPARK'),
(327,323,-548,1,'nireturn_lineitem_extended_fields_transpose_transpose_database_SPARK_SPARK','nireturn_lineitem_extended_fields_multi_profile_SPARK_SPARK'),
(329,328,-547,1,'card_extended_fields_transpose_transpose_database_SPARK_SPARK','card_extended_fields_multi_profile_SPARK_SPARK');


-- Dump completed on 2021-10-27 12:15:37
