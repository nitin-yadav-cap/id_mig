-- MySQL dump 10.13  Distrib 8.0.25, for macos11 (x86_64)
--
-- Host: localhost    Database: nightly_mod
-- ------------------------------------------------------
-- Server version	8.0.25


--
-- Dumping data for table `source_schema_end_point_mapping`
--

REPLACE INTO `source_schema_end_point_mapping` (`id`, `db_name`, `end_point_name`, `dialect`, `is_active`, `added_on`, `id_str`) VALUES (1,'user_management','INTOUCH_DB_MYSQL_SLAVE','MYSQL',1,'2016-12-22 12:17:17','user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL'),
(2,'masters','INTOUCH_DB_MYSQL_SLAVE','MYSQL',1,'2016-12-22 12:29:38','masters_INTOUCH_DB_MYSQL_SLAVE_MYSQL'),
(3,'warehouse','WAREHOUSE_DB_MYSQL_SLAVE','MYSQL',1,'2016-12-22 12:30:24','warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL'),
(4,'bill_import_local','INTOUCH_DB_MYSQL_BILLDUMP_SLAVE','MYSQL',1,'2017-01-25 17:50:39','bill_import_local_INTOUCH_DB_MYSQL_BILLDUMP_SLAVE_MYSQL'),
(5,'product_management','INTOUCH_DB_MYSQL_PRODUCT_SLAVE','MYSQL',1,'2017-01-25 17:50:39','product_management_INTOUCH_DB_MYSQL_PRODUCT_SLAVE_MYSQL'),
(6,'campaigns','INTOUCH_DB_MYSQL_SLAVE','MYSQL',1,'2017-01-25 17:52:31','campaigns_INTOUCH_DB_MYSQL_SLAVE_MYSQL'),
(7,'emf','WAREHOUSE_DB_MYSQL_SLAVE','MYSQL',1,'2017-01-25 17:52:31','emf_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL'),
(8,'luci','LUCI_DB_MYSQL_SLAVE','MYSQL',1,'2017-01-25 18:32:26','luci_LUCI_DB_MYSQL_SLAVE_MYSQL'),
(9,'subscription_management','SUBSCRIPTION_DB_MYSQL_SLAVE','MYSQL',1,'2017-01-25 18:32:26','subscription_management_SUBSCRIPTION_DB_MYSQL_SLAVE_MYSQL'),
(10,'authentication','INTOUCH_META_DB_MYSQL_SLAVE','MYSQL',1,'2017-01-26 14:01:05','authentication_INTOUCH_META_DB_MYSQL_SLAVE_MYSQL'),
(11,'store_management','INTOUCH_DB_MYSQL_SLAVE','MYSQL',1,'2017-01-26 14:01:05','store_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL'),
(12,'survey_management','INTOUCH_DB_MYSQL_SLAVE','MYSQL',1,'2017-01-26 14:01:05','survey_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL'),
(13,'veneno','CAMPAIGN_SHARD_DB_MYSQL_SLAVE','MYSQL',1,'2017-01-26 14:01:05','veneno_CAMPAIGN_SHARD_DB_MYSQL_SLAVE_MYSQL'),
(14,'campaign_meta_details','CAMPAIGN_SHARD_DB_MYSQL_SLAVE','MYSQL',1,'2017-01-26 14:01:05','campaign_meta_details_CAMPAIGN_SHARD_DB_MYSQL_SLAVE_MYSQL'),
(15,'veneno_data_details','CAMPAIGN_SHARD_DB_MYSQL_SLAVE','MYSQL',1,'2017-01-26 14:01:05','veneno_data_details_CAMPAIGN_SHARD_DB_MYSQL_SLAVE_MYSQL'),
(16,'campaign_data_details','CAMPAIGN_SHARD_DB_MYSQL_SLAVE','MYSQL',1,'2017-01-26 14:01:05','campaign_data_details_CAMPAIGN_SHARD_DB_MYSQL_SLAVE_MYSQL'),
(17,'msging','INTOUCH_DB_MYSQL_SLAVE','MYSQL',1,'2017-01-26 14:01:05','msging_INTOUCH_DB_MYSQL_SLAVE_MYSQL'),
(18,'nsadmin','NSADMIN_DB_MYSQL_SLAVE','MYSQL',1,'2017-01-26 14:01:05','nsadmin_NSADMIN_DB_MYSQL_SLAVE_MYSQL'),
(19,'referral','INTOUCH_DB_MYSQL_SLAVE','MYSQL',1,'2017-01-26 14:01:05','referral_INTOUCH_DB_MYSQL_SLAVE_MYSQL'),
(20,'log','NSADMIN_DB_MYSQL_SLAVE','MYSQL',1,'2017-01-26 14:01:05','log_NSADMIN_DB_MYSQL_SLAVE_MYSQL'),
(21,'multi_profile','SPARK','SPARK',1,'2017-01-26 14:01:05','multi_profile_SPARK_SPARK'),
(22,'veneno_meta_info','CAMPAIGN_SHARD_DB_MYSQL_SLAVE','MYSQL',1,'2017-01-26 14:01:05','veneno_meta_info_CAMPAIGN_SHARD_DB_MYSQL_SLAVE_MYSQL'),
(23,'masters','INTOUCH_META_DB_MYSQL_SLAVE','MYSQL',1,'2017-01-26 14:01:05','masters_INTOUCH_META_DB_MYSQL_SLAVE_MYSQL'),
(24,'multi_profile','INTOUCH_DB_MONGO_SLAVE','MONGO',1,'2017-05-17 05:03:38','multi_profile_INTOUCH_DB_MONGO_SLAVE_MONGO'),
(25,'storeCareDatabase','SPARK','SPARK',1,'2017-10-02 05:30:15','storeCareDatabase_SPARK_SPARK'),
(26,'storeCareDatabase','STORECARE_DB_MONGO','MONGO',1,'2017-10-02 05:30:15','storeCareDatabase_STORECARE_DB_MONGO_MONGO'),
(27,'transpose_database','SPARK','SPARK',1,'2017-10-02 05:30:15','transpose_database_SPARK_SPARK'),
(28,'subscription_service','INTOUCH_DB_MYSQL_SLAVE','MYSQL',1,'2017-11-24 05:07:30','subscription_service_INTOUCH_DB_MYSQL_SLAVE_MYSQL'),
(29,'external_events','SPARK','SPARK',1,'2018-01-03 08:54:57','external_events_SPARK_SPARK'),
(30,'external_events','INTOUCH_DB_MONGO_SLAVE','MONGO',1,'2018-01-03 08:54:57','external_events_INTOUCH_DB_MONGO_SLAVE_MONGO'),
(31,'audit_logs','INTOUCH_DB_MYSQL_SLAVE','MYSQL',1,'2018-03-26 06:28:57','audit_logs_INTOUCH_DB_MYSQL_SLAVE_MYSQL'),
(32,'extended_fields_custom_data','INTOUCH_META_DB_MYSQL_SLAVE','MYSQL',1,'2017-01-26 19:31:05','extended_fields_custom_data_INTOUCH_META_DB_MYSQL_SLAVE_MYSQL'),
(33,'temporal_engine','TIMELINE_DB_MYSQL','MYSQL',1,'2018-11-12 09:14:02','temporal_engine_TIMELINE_DB_MYSQL_MYSQL'),
(34,'temporal_engine_bootstrap','TIMELINE_DB_MYSQL','MYSQL',1,'2018-11-12 09:14:02','temporal_engine_bootstrap_TIMELINE_DB_MYSQL_MYSQL'),
(35,'campaigns','CAMPAIGNS_DB_MONGO_SLAVE','MONGO',1,'2019-05-31 06:51:30','campaigns_CAMPAIGNS_DB_MONGO_SLAVE_MONGO'),
(37,'campaigns','SPARK','SPARK',1,'2019-08-01 04:08:27','campaigns_SPARK_SPARK'),
(38,'instoreai_storesense','STORECARE_DB_MONGO','MONGO',1,'2019-07-26 00:35:53','instoreai_storesense_STORECARE_DB_MONGO_MONGO'),
(39,'instoreai_storesense','SPARK','SPARK',1,'2019-07-26 00:35:53','instoreai_storesense_SPARK_SPARK'),
(40,'otg_events','ES_ENDPOINT','ES',1,'2019-09-18 04:53:25','otg_events_ES_ENDPOINT_ES'),
(41,'otg_events','SPARK','SPARK',1,'2019-09-18 09:14:09','otg_events_SPARK_SPARK'),
(43,'instore_ai_devices','INTOUCH_META_DB_MYSQL_SLAVE','MYSQL',1,'2020-02-10 03:01:53','instore_ai_devices_INTOUCH_META_DB_MYSQL_SLAVE_MYSQL'),
(44,'darknight','NSADMIN_DB_MYSQL_SLAVE','MYSQL',1,'2020-10-15 04:01:05','darknight_NSADMIN_DB_MYSQL_SLAVE_MYSQL'),
(45,'am','CAMPAIGNS_DB_MONGO_SLAVE','MONGO',1,'2021-04-01 00:00:00','am_CAMPAIGNS_DB_MONGO_SLAVE_MONGO'),
(46,'am','SPARK','SPARK',1,'2021-04-01 00:00:00','am_SPARK_SPARK'),
(47,'promotion_engine','EMF_DB_MONGO_MASTER','MONGO',1,'2021-06-06 13:00:00','promotion_engine_EMF_DB_MONGO_MASTER_MONGO'),
(48,'promotion_engine','SPARK','SPARK',1,'2021-03-04 13:00:00','promotion_engine_SPARK_SPARK'),
(49,'member_care','INTOUCH_DB_MYSQL_SLAVE','MYSQL',1,'2021-09-15 10:22:32','member_care_INTOUCH_DB_MYSQL_SLAVE_MYSQL'),
(50,'reon_bi','REON_BI_DB_MONGO_MASTER','MONGO',1,'2021-09-08 13:00:00','reon_bi_REON_BI_DB_MONGO_MASTER_MONGO'),
(51,'reon_bi','SPARK','SPARK',1,'2021-09-08 13:00:00','reon_bi_SPARK_SPARK'),
(52,'nsmbroker','NSM_BROKER_DB_MONGO_MASTER','MONGO',1,'2021-09-08 13:00:00','nsmbroker_NSM_BROKER_DB_MONGO_MASTER_MONGO'),
(53,'nsmbroker','SPARK','SPARK',1,'2021-09-08 13:00:00','nsmbroker_SPARK_SPARK');


-- Dump completed on 2021-10-27 12:15:34
