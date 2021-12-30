-- MySQL dump 10.13  Distrib 8.0.25, for macos11 (x86_64)
--
-- Host: localhost    Database: nightly_mod
-- ------------------------------------------------------
-- Server version	8.0.25

--
-- Dumping data for table `mongo_collections`
--

REPLACE INTO `mongo_collections` (`id`, `name`, `end_point_id`, `is_sharded`, `is_active`, `scope_id`, `added_on`, `timestamp_column`, `pkey_columns`, `primary_mongo_struct_id`, `dependent_struct_ids`, `id_str`, `end_point_id_str`, `pkey_columns_str`, `primary_mongo_struct_id_str`, `dependent_struct_ids_str`) VALUES (1,'profileV2',24,0,1,-1000,'2017-03-01 00:38:55','autoUpdateTime',NULL,4,'1,2,3,14,4','profileV2_-1000','multi_profile_INTOUCH_DB_MONGO_SLAVE_MONGO','','profileV2_-1000','commChannel_-1000,identifier_-1000,auditInfo_-1000,attribution_type_-1000,profileV2_-1000'),
(2,'customer_extended_fields',24,0,1,-1000,'2017-03-01 00:38:55','autoUpdateTime',NULL,6,'5,6','customer_extended_fields_-1000','multi_profile_INTOUCH_DB_MONGO_SLAVE_MONGO','','customer_extended_fields_-1000','extndFieldValue_-1000,customer_extended_fields_-1000'),
(3,'regular_transaction_extended_fields',24,0,1,-1000,'2017-06-22 01:46:15','autoUpdateTime',NULL,6,'5,6','regular_transaction_extended_fields_-1000','multi_profile_INTOUCH_DB_MONGO_SLAVE_MONGO','','customer_extended_fields_-1000','extndFieldValue_-1000,customer_extended_fields_-1000'),
(4,'ni_transaction_extended_fields',24,0,1,-1000,'2017-06-22 01:46:50','autoUpdateTime',NULL,6,'5,6','ni_transaction_extended_fields_-1000','multi_profile_INTOUCH_DB_MONGO_SLAVE_MONGO','','customer_extended_fields_-1000','extndFieldValue_-1000,customer_extended_fields_-1000'),
(5,'ffc_data_v2',26,0,1,-1000,'2017-10-02 05:32:48','autoUpdateTime',NULL,7,'7','ffc_data_v2_-1000','storeCareDatabase_STORECARE_DB_MONGO_MONGO','','ffc_data_v2_-1000','ffc_data_v2_-1000'),
(6,'ffc_groupCount_v2',26,0,1,-1000,'2017-10-02 05:32:48','autoUpdateTime',NULL,8,'8','ffc_groupCount_v2_-1000','storeCareDatabase_STORECARE_DB_MONGO_MONGO','','ffc_groupCount_v2_-1000','ffc_groupCount_v2_-1000'),
(7,'ni_lineitem_extended_fields',24,0,1,-1000,'2017-12-05 05:34:08','autoUpdateTime',NULL,6,'5,6','ni_lineitem_extended_fields_-1000','multi_profile_INTOUCH_DB_MONGO_SLAVE_MONGO','','customer_extended_fields_-1000','extndFieldValue_-1000,customer_extended_fields_-1000'),
(8,'regular_lineitem_extended_fields',24,0,1,-1000,'2017-12-05 05:34:08','autoUpdateTime',NULL,6,'5,6','regular_lineitem_extended_fields_-1000','multi_profile_INTOUCH_DB_MONGO_SLAVE_MONGO','','customer_extended_fields_-1000','extndFieldValue_-1000,customer_extended_fields_-1000'),
(10,'event_feed',30,0,1,-1000,'2018-01-03 08:56:02','autoUpdateTime',NULL,10,'10','event_feed_-1000','external_events_INTOUCH_DB_MONGO_SLAVE_MONGO','','event_feed_-1000','event_feed_-1000'),
(11,'click_event',30,0,1,-1000,'2018-01-03 08:56:02','autoUpdateTime',NULL,11,'11','click_event_-1000','external_events_INTOUCH_DB_MONGO_SLAVE_MONGO','','click_event_-1000','click_event_-1000'),
(13,'profile_v2_identifiers',24,0,0,-1000,'2018-01-23 11:21:09','autoUpdateTime',NULL,13,'13,2','profile_v2_identifiers_-1000','multi_profile_INTOUCH_DB_MONGO_SLAVE_MONGO','','profile_v2_identifiers_-1000','profile_v2_identifiers_-1000,identifier_-1000'),
(14,'lead_extended_fields',24,0,1,-1000,'2019-02-18 06:56:04','autoUpdateTime',NULL,6,'5,6','lead_extended_fields_-1000','multi_profile_INTOUCH_DB_MONGO_SLAVE_MONGO','','customer_extended_fields_-1000','extndFieldValue_-1000,customer_extended_fields_-1000'),
(15,'campaign',35,0,1,-1000,'2019-05-31 06:51:30','autoUpdateTime',NULL,15,'15','campaign_-1000','campaigns_CAMPAIGNS_DB_MONGO_SLAVE_MONGO','','campaign_-1000','campaign_-1000'),
(16,'message',35,0,1,-1000,'2019-05-31 06:51:30','autoUpdateTime',NULL,18,'16,17,18','message_-1000','campaigns_CAMPAIGNS_DB_MONGO_SLAVE_MONGO','','message_-1000','schedule_-1000,strategy_-1000,message_-1000'),
(17,'messageVariant',35,0,1,-1000,'2019-05-31 06:51:30','autoUpdateTime',NULL,20,'19,20','messageVariant_-1000','campaigns_CAMPAIGNS_DB_MONGO_SLAVE_MONGO','','messageVariant_-1000','messageContent_-1000,messageVariant_-1000'),
(18,'visitorinferencesreons',38,0,1,-1000,'2019-07-26 00:35:53','updatedAt',NULL,22,'21,22','visitorinferencesreons_-1000','instoreai_storesense_STORECARE_DB_MONGO_MONGO','','cvp_v2_-1000','dOutput_-1000,cvp_v2_-1000'),
(19,'audience_group',45,0,1,-1000,'2021-04-01 00:00:00','attribution.lastUpdatedOn',NULL,23,'25,23','audience_group_-1000','am_CAMPAIGNS_DB_MONGO_SLAVE_MONGO','','audience_group_-1000','attribution_-1000,audience_group_-1000'),
(20,'audience_group_version',45,0,1,-1000,'2021-04-01 00:00:00','attribution.lastUpdatedOn',NULL,24,'25,24','audience_group_version_-1000','am_CAMPAIGNS_DB_MONGO_SLAVE_MONGO','','audience_group_version_-1000','attribution_-1000,audience_group_version_-1000'),
(21,'control_audience_group_version',45,0,1,-1000,'2021-04-01 00:00:00','attribution.lastUpdatedOn',NULL,26,'25,26','control_audience_group_version_-1000','am_CAMPAIGNS_DB_MONGO_SLAVE_MONGO','','control_audience_group_version_-1000','attribution_-1000,control_audience_group_version_-1000'),
(22,'promotionMeta',47,0,1,-1000,'2021-03-04 13:00:00','attribution.lastUpdatedOn',NULL,39,'25,30,31,33,34,39','promotionMeta_-1000','promotion_engine_EMF_DB_MONGO_MASTER_MONGO','','promotionMeta_-1000','attribution_-1000,ProductSelectionCriteria_-1000,Condition_-1000,RewardImmutable_-1000,Reward_-1000,promotionMeta_-1000'),
(23,'customerIssuedPromotion',47,0,1,-1000,'2021-03-04 13:00:00','attribution.lastUpdatedOn',NULL,40,'25,40','customerIssuedPromotion_-1000','promotion_engine_EMF_DB_MONGO_MASTER_MONGO','','customerIssuedPromotion_-1000','attribution_-1000,customerIssuedPromotion_-1000'),
(24,'customerEarnedPromotion',47,0,1,-1000,'2021-03-04 13:00:00','attribution.lastUpdatedOn',NULL,42,'25,42','customerEarnedPromotion_-1000','promotion_engine_EMF_DB_MONGO_MASTER_MONGO','','customerEarnedPromotion_-1000','attribution_-1000,customerEarnedPromotion_-1000'),
(25,'promotionRedemption',47,0,1,-1000,'2021-03-04 13:00:00','attribution.lastUpdatedOn',NULL,43,'25,43','promotionRedemption_-1000','promotion_engine_EMF_DB_MONGO_MASTER_MONGO','','promotionRedemption_-1000','attribution_-1000,promotionRedemption_-1000'),
(26,'customerPromotionPreference',47,0,1,-1000,'2021-03-04 13:00:00','attribution.lastUpdatedOn',NULL,44,'25,44','customerPromotionPreference_-1000','promotion_engine_EMF_DB_MONGO_MASTER_MONGO','','customerPromotionPreference_-1000','attribution_-1000,customerPromotionPreference_-1000'),
(27,'kpis',50,0,1,-1000,'2021-09-08 13:00:00','updatedAt',NULL,46,'45,46','kpis_-1000','reon_bi_REON_BI_DB_MONGO_MASTER_MONGO','','BiKpi_-1000','BiKpiScope_-1000,BiKpi_-1000'),
(28,'categories',50,0,1,-1000,'2021-09-08 13:00:00','',NULL,47,'47','categories_-1000','reon_bi_REON_BI_DB_MONGO_MASTER_MONGO','','BiCategories_-1000','BiCategories_-1000'),
(29,'charts',50,0,1,-1000,'2021-09-08 13:00:00','updatedOn',NULL,48,'48','charts_-1000','reon_bi_REON_BI_DB_MONGO_MASTER_MONGO','','BiCharts_-1000','BiCharts_-1000'),
(30,'reports',50,0,1,-1000,'2021-09-08 13:00:00','updatedOn',NULL,49,'49','reports_-1000','reon_bi_REON_BI_DB_MONGO_MASTER_MONGO','','BiReports_-1000','BiReports_-1000'),
(31,'schedules',50,0,1,-1000,'2021-09-08 13:00:00','updatedAt',NULL,50,'50','schedules_-1000','reon_bi_REON_BI_DB_MONGO_MASTER_MONGO','','BiSchedules_-1000','BiSchedules_-1000'),
(32,'triggers',52,0,1,-1000,'2021-09-08 13:00:00','updatedAt',NULL,51,'51','triggers_-1000','nsmbroker_NSM_BROKER_DB_MONGO_MASTER_MONGO','','BiScheduleTriggers_-1000','BiScheduleTriggers_-1000'),
(33,'triggerlogs',52,0,1,-1000,'2021-09-08 13:00:00','updatedAt',NULL,52,'52','triggerlogs_-1000','nsmbroker_NSM_BROKER_DB_MONGO_MASTER_MONGO','','BiScheduleTriggerLogs_-1000','BiScheduleTriggerLogs_-1000'),
(34,'filters',50,0,1,-1000,'2021-09-08 13:00:00','updatedAt',NULL,53,'45,53','filters_-1000','reon_bi_REON_BI_DB_MONGO_MASTER_MONGO','','AudienceFilterDefinitions_-1000','BiKpiScope_-1000,AudienceFilterDefinitions_-1000'),
(35,'filterinstances',50,0,1,-1000,'2021-09-08 13:00:00','createdOn',NULL,54,'54','filterinstances_-1000','reon_bi_REON_BI_DB_MONGO_MASTER_MONGO','','AudienceFilterInstances_-1000','AudienceFilterInstances_-1000');

REPLACE INTO `mongo_collections` (`id`, `name`, `end_point_id`, `is_sharded`, `is_active`, `scope_id`, `added_on`, `timestamp_column`, `pkey_columns`, `primary_mongo_struct_id`, `dependent_struct_ids`, `id_str`, `primary_mongo_struct_id_str`, `end_point_id_str`, `pkey_columns_str`, `dependent_struct_ids_str`) VALUES 
(36,'return_transaction_extended_fields',24,0,1,-1000,'2021-10-01 00:00:00','autoUpdateTime',NULL,6,'5,6','return_transaction_extended_fields_-1000','customer_extended_fields_-1000','multi_profile_INTOUCH_DB_MONGO_SLAVE_MONGO','','extndFieldValue_-1000,customer_extended_fields_-1000'),
(37,'return_lineitem_extended_fields',24,0,1,-1000,'2021-10-01 00:00:00','autoUpdateTime',NULL,6,'5,6','return_lineitem_extended_fields_-1000','customer_extended_fields_-1000','multi_profile_INTOUCH_DB_MONGO_SLAVE_MONGO','','extndFieldValue_-1000,customer_extended_fields_-1000'),
(38,'nireturn_transaction_extended_fields',24,0,1,-1000,'2021-10-01 00:00:00','autoUpdateTime',NULL,6,'5,6','nireturn_transaction_extended_fields_-1000','customer_extended_fields_-1000','multi_profile_INTOUCH_DB_MONGO_SLAVE_MONGO','','extndFieldValue_-1000,customer_extended_fields_-1000'),
(39,'nireturn_lineitem_extended_fields',24,0,1,-1000,'2021-10-01 00:00:00','autoUpdateTime',NULL,6,'5,6','nireturn_lineitem_extended_fields_-1000','customer_extended_fields_-1000','multi_profile_INTOUCH_DB_MONGO_SLAVE_MONGO','','extndFieldValue_-1000,customer_extended_fields_-1000'),
(40,'card_extended_fields',24,0,1,-1000,'2021-10-01 00:00:00','autoUpdateTime',NULL,6,'5,6','card_extended_fields_-1000','customer_extended_fields_-1000','multi_profile_INTOUCH_DB_MONGO_SLAVE_MONGO','','extndFieldValue_-1000,customer_extended_fields_-1000');

-- Dump completed on 2021-10-27 12:15:33
