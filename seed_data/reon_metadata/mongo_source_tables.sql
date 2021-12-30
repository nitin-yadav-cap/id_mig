-- MySQL dump 10.13  Distrib 8.0.25, for macos11 (x86_64)
--
-- Host: localhost    Database: nightly_mod
-- ------------------------------------------------------
-- Server version	8.0.25


--
-- Dumping data for table `mongo_source_tables`
--

REPLACE INTO `mongo_source_tables` (`source_table_id`, `mongo_collection_id`, `lateral_view_info`, `is_active`, `scope_id`, `added_on`, `source_table_id_str`, `mongo_collection_id_str`) VALUES (134,1,'[{\"as\": \"index_id,comm_channel\", \"column\" : \"commchannels\", \"function\" : \"posexplode\" }]',1,-1000,'2017-03-01 00:41:56','user_comm_channels_multi_profile_SPARK_SPARK','profileV2_-1000'),
(135,1,'[]',1,-1000,'2017-03-02 00:13:44','user_profile_details_multi_profile_SPARK_SPARK','profileV2_-1000'),
(136,2,'[{\"as\": \"index_id,cust_extnd_field_value\", \"column\" : \"extendedFields\", \"function\" : \"posexplode\" }]',1,-1000,'2017-05-17 06:04:45','customer_extended_fields_mongo_doc_multi_profile_SPARK_SPARK','customer_extended_fields_-1000'),
(140,3,'[{\"as\": \"index_id,cust_extnd_field_value\", \"column\" : \"extendedFields\", \"function\" : \"posexplode\" }]',1,-1000,'2017-06-23 05:30:02','loyaty_txn_extended_fields_mongo_doc_multi_profile_SPARK_SPARK','regular_transaction_extended_fields_-1000'),
(142,5,'[]',1,-1000,'2017-10-02 05:33:08','ffc_data_v2_storeCareDatabase_SPARK_SPARK','ffc_data_v2_-1000'),
(143,6,'[]',1,-1000,'2017-10-02 05:33:08','ffc_groupCount_v2_storeCareDatabase_SPARK_SPARK','ffc_groupCount_v2_-1000'),
(147,4,'[{\"as\": \"index_id,cust_extnd_field_value\", \"column\" : \"extendedFields\", \"function\" : \"posexplode\" }]',1,-1000,'2017-06-23 05:30:02','ni_txn_extended_fields_mongo_doc_multi_profile_SPARK_SPARK','ni_transaction_extended_fields_-1000'),
(154,8,'[{\"as\": \"index_id,cust_extnd_field_value\", \"column\" : \"extendedFields\", \"function\" : \"posexplode\" }]',1,-1000,'2017-12-05 05:34:08','loyalty_lineitem_extended_fields_multi_profile_SPARK_SPARK','regular_lineitem_extended_fields_-1000'),
(155,7,'[{\"as\": \"index_id,cust_extnd_field_value\", \"column\" : \"extendedFields\", \"function\" : \"posexplode\" }]',1,-1000,'2017-12-05 05:34:08','ni_lineitem_extended_fields_multi_profile_SPARK_SPARK','ni_lineitem_extended_fields_-1000'),
(163,10,'[]',1,-1000,'2018-01-03 08:56:33','event_feed_external_events_SPARK_SPARK','event_feed_-1000'),
(164,11,'[]',1,-1000,'2018-01-03 08:56:33','click_event_external_events_SPARK_SPARK','click_event_-1000'),
(169,1,'[{\"as\": \"index_id,identifier\", \"column\" : \"identifiers\", \"function\" : \"posexplode\" }]',1,-1000,'2018-01-23 11:22:41','profile_v2_identifiers_mongo_doc_multi_profile_SPARK_SPARK','profileV2_-1000'),
(171,1,'[{\"as\": \"index_id,identifier\", \"column\" : \"identifiers\", \"function\" : \"posexplode\" }]',1,-1000,'2018-02-20 06:21:06','profile_users_mongo_doc_multi_profile_SPARK_SPARK','profileV2_-1000'),
(193,1,'[{\"as\": \"index_id,comm_channel\", \"column\" : \"commchannels\", \"function\" : \"posexplode\" }]',1,-1000,'2018-01-23 11:22:41','profile_v2_comm_channels_mongo_doc_multi_profile_SPARK_SPARK','profileV2_-1000'),
(251,14,'[{\"as\": \"index_id,cust_extnd_field_value\", \"column\" : \"extendedFields\", \"function\" : \"posexplode\" }]',1,-1000,'2019-02-18 06:57:52','lead_extended_fields_mongo_doc_multi_profile_SPARK_SPARK','lead_extended_fields_-1000'),
(267,15,'[]',1,-1000,'2019-05-31 06:51:30','campaign_v2_mongo_doc_campaigns_SPARK_SPARK','campaign_-1000'),
(268,16,'[]',1,-1000,'2019-05-31 06:51:30','campaign_message_v2_mongo_doc_campaigns_SPARK_SPARK','message_-1000'),
(269,17,'[]',1,-1000,'2019-05-31 06:51:30','campaign_message_variant_v2_mongo_doc_campaigns_SPARK_SPARK','messageVariant_-1000'),
(270,18,'[]',1,-1000,'2019-07-26 00:35:53','cvp_v2_data_instoreai_storesense_SPARK_SPARK','visitorinferencesreons_-1000'),
(289,19,'[]',1,-1000,'2021-05-06 23:00:00','audience_group_v2_mongo_doc_am_SPARK_SPARK','audience_group_-1000'),
(290,20,'[]',1,-1000,'2021-05-06 23:00:00','audience_group_version_v2_mongo_doc_am_SPARK_SPARK','audience_group_version_-1000'),
(291,21,'[]',1,-1000,'2021-05-06 23:00:00','control_audience_group_version_v2_mongo_doc_am_SPARK_SPARK','control_audience_group_version_-1000'),
(292,22,'[]',1,-1000,'2021-09-15 06:21:49','promotion_meta_mongo_doc_promotion_engine_SPARK_SPARK','promotionMeta_-1000'),
(293,23,'[]',1,-1000,'2021-09-15 06:21:49','customer_issued_promotion_mongo_doc_promotion_engine_SPARK_SPARK','customerIssuedPromotion_-1000'),
(294,24,'[]',1,-1000,'2021-09-15 06:21:49','customer_earned_promotion_mongo_doc_promotion_engine_SPARK_SPARK','customerEarnedPromotion_-1000'),
(295,25,'[]',1,-1000,'2021-09-15 06:21:49','promotion_redemption_mongo_doc_promotion_engine_SPARK_SPARK','promotionRedemption_-1000'),
(296,26,'[]',1,-1000,'2021-09-15 06:21:49','customer_promotion_preference_mongo_doc_promotion_engine_SPARK_SPARK','customerPromotionPreference_-1000'),
(302,27,'[]',1,-1000,'2021-09-08 13:00:00','bi_kpis_reon_bi_SPARK_SPARK','kpis_-1000'),
(303,28,'[]',1,-1000,'2021-09-08 13:00:00','bi_categories_reon_bi_SPARK_SPARK','categories_-1000'),
(304,29,'[]',1,-1000,'2021-09-08 13:00:00','bi_charts_reon_bi_SPARK_SPARK','charts_-1000'),
(305,30,'[]',1,-1000,'2021-09-08 13:00:00','bi_reports_reon_bi_SPARK_SPARK','reports_-1000'),
(306,31,'[]',1,-1000,'2021-09-08 13:00:00','bi_schedules_reon_bi_SPARK_SPARK','schedules_-1000'),
(307,32,'[]',1,-1000,'2021-09-08 13:00:00','bi_schedule_triggers_nsmbroker_SPARK_SPARK','triggers_-1000'),
(308,33,'[]',1,-1000,'2021-09-08 13:00:00','bi_schedule_trigger_logs_nsmbroker_SPARK_SPARK','triggerlogs_-1000'),
(309,34,'[]',1,-1000,'2021-09-08 13:00:00','audience_filter_definitions_reon_bi_SPARK_SPARK','filters_-1000'),
(310,35,'[]',1,-1000,'2021-09-08 13:00:00','audience_filter_instances_reon_bi_SPARK_SPARK','filterinstances_-1000');

REPLACE INTO `mongo_source_tables` (`source_table_id`, `mongo_collection_id`, `lateral_view_info`, `is_active`, `scope_id`, `added_on`, `source_table_id_str`, `mongo_collection_id_str`) VALUES
(320,36,'[{\"as\": \"index_id,cust_extnd_field_value\", \"column\" : \"extendedFields\", \"function\" : \"posexplode\" }]',1,-1000,'2021-10-01 00:00:00','return_txn_extended_fields_multi_profile_SPARK_SPARK','return_transaction_extended_fields_-1000'),
(321,37,'[{\"as\": \"index_id,cust_extnd_field_value\", \"column\" : \"extendedFields\", \"function\" : \"posexplode\" }]',1,-1000,'2021-10-01 00:00:00','return_lineitem_extended_fields_multi_profile_SPARK_SPARK','return_lineitem_extended_fields_-1000'),
(322,38,'[{\"as\": \"index_id,cust_extnd_field_value\", \"column\" : \"extendedFields\", \"function\" : \"posexplode\" }]',1,-1000,'2021-10-01 00:00:00','nireturn_txn_extended_fields_multi_profile_SPARK_SPARK','nireturn_transaction_extended_fields_-1000'),
(323,39,'[{\"as\": \"index_id,cust_extnd_field_value\", \"column\" : \"extendedFields\", \"function\" : \"posexplode\" }]',1,-1000,'2021-10-01 00:00:00','nireturn_lineitem_extended_fields_multi_profile_SPARK_SPARK','nireturn_lineitem_extended_fields_-1000'),
(328,40,'[{\"as\": \"index_id,cust_extnd_field_value\", \"column\" : \"extendedFields\", \"function\" : \"posexplode\" }]',1,-1000,'2021-10-01 00:00:00','card_extended_fields_multi_profile_SPARK_SPARK','card_extended_fields_-1000');

-- Dump completed on 2021-10-27 12:15:33
