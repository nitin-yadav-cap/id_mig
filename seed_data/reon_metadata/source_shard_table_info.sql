-- MySQL dump 10.13  Distrib 8.0.25, for macos11 (x86_64)
--
-- Host: localhost    Database: nightly_mod
-- ------------------------------------------------------
-- Server version	8.0.25


--
-- Dumping data for table `source_shard_table_info`
--

REPLACE INTO `source_shard_table_info` (`table_id`, `end_point_id`, `from_table`, `select_column`, `is_table_sharded`, `is_active`, `added_on`, `table_id_str`, `end_point_id_str`) VALUES (52,18,'reon_archived_messages_metatable_view','table_name',1,1,'2017-03-07 00:14:58','messages_nsadmin_NSADMIN_DB_MYSQL_SLAVE_MYSQL','nsadmin_NSADMIN_DB_MYSQL_SLAVE_MYSQL'),
(117,22,'bucket_details_reon','bucket_name',1,1,'2017-03-06 23:46:43','inboxes_veneno_data_details_CAMPAIGN_SHARD_DB_MYSQL_SLAVE_MYSQL','veneno_meta_info_CAMPAIGN_SHARD_DB_MYSQL_SLAVE_MYSQL'),
(206,34,'sharding_config_view','database_name',0,1,'2018-11-13 06:50:41','activity_context_attrs_temporal_engine_TIMELINE_DB_MYSQL_MYSQL','temporal_engine_bootstrap_TIMELINE_DB_MYSQL_MYSQL'),
(207,34,'sharding_config_view','database_name',0,1,'2018-11-13 06:28:49','activity_context_history_temporal_engine_TIMELINE_DB_MYSQL_MYSQL','temporal_engine_bootstrap_TIMELINE_DB_MYSQL_MYSQL'),
(208,34,'sharding_config_view','database_name',0,1,'2018-11-13 06:50:41','category_attrs_temporal_engine_TIMELINE_DB_MYSQL_MYSQL','temporal_engine_bootstrap_TIMELINE_DB_MYSQL_MYSQL'),
(209,34,'sharding_config_view','database_name',0,1,'2018-11-13 06:50:41','current_message_context_temporal_engine_TIMELINE_DB_MYSQL_MYSQL','temporal_engine_bootstrap_TIMELINE_DB_MYSQL_MYSQL'),
(210,34,'sharding_config_view','database_name',0,1,'2018-11-13 06:50:41','current_milestone_contexts_temporal_engine_TIMELINE_DB_MYSQL_MYSQL','temporal_engine_bootstrap_TIMELINE_DB_MYSQL_MYSQL'),
(211,34,'sharding_config_view','database_name',0,1,'2018-11-13 06:50:41','events_temporal_engine_TIMELINE_DB_MYSQL_MYSQL','temporal_engine_bootstrap_TIMELINE_DB_MYSQL_MYSQL'),
(212,34,'sharding_config_view','database_name',0,1,'2018-11-13 06:50:41','event_categories_temporal_engine_TIMELINE_DB_MYSQL_MYSQL','temporal_engine_bootstrap_TIMELINE_DB_MYSQL_MYSQL'),
(213,34,'sharding_config_view','database_name',0,1,'2018-11-13 06:50:41','event_milestone_mapping_temporal_engine_TIMELINE_DB_MYSQL_MYSQL','temporal_engine_bootstrap_TIMELINE_DB_MYSQL_MYSQL'),
(214,34,'sharding_config_view','database_name',0,1,'2018-11-13 06:50:41','milestones_temporal_engine_TIMELINE_DB_MYSQL_MYSQL','temporal_engine_bootstrap_TIMELINE_DB_MYSQL_MYSQL'),
(215,34,'sharding_config_view','database_name',0,1,'2018-11-13 06:50:41','milestone_context_history_temporal_engine_TIMELINE_DB_MYSQL_MYSQL','temporal_engine_bootstrap_TIMELINE_DB_MYSQL_MYSQL'),
(216,34,'sharding_config_view','database_name',0,1,'2018-11-13 06:50:41','offers_temporal_engine_TIMELINE_DB_MYSQL_MYSQL','temporal_engine_bootstrap_TIMELINE_DB_MYSQL_MYSQL'),
(217,34,'sharding_config_view','database_name',0,1,'2018-11-13 06:50:41','offer_email_templates_temporal_engine_TIMELINE_DB_MYSQL_MYSQL','temporal_engine_bootstrap_TIMELINE_DB_MYSQL_MYSQL'),
(218,34,'sharding_config_view','database_name',0,1,'2018-11-13 06:50:41','offer_filters_temporal_engine_TIMELINE_DB_MYSQL_MYSQL','temporal_engine_bootstrap_TIMELINE_DB_MYSQL_MYSQL'),
(219,34,'sharding_config_view','database_name',0,1,'2018-11-13 06:50:41','offer_sms_templates_temporal_engine_TIMELINE_DB_MYSQL_MYSQL','temporal_engine_bootstrap_TIMELINE_DB_MYSQL_MYSQL'),
(220,34,'sharding_config_view','database_name',0,1,'2018-11-13 06:50:41','org_config_temporal_engine_TIMELINE_DB_MYSQL_MYSQL','temporal_engine_bootstrap_TIMELINE_DB_MYSQL_MYSQL'),
(221,34,'sharding_config_view','database_name',0,1,'2018-11-13 06:50:41','org_config_properties_temporal_engine_TIMELINE_DB_MYSQL_MYSQL','temporal_engine_bootstrap_TIMELINE_DB_MYSQL_MYSQL'),
(222,34,'sharding_config_view','database_name',0,1,'2018-11-13 06:50:41','org_config_time_prefs_temporal_engine_TIMELINE_DB_MYSQL_MYSQL','temporal_engine_bootstrap_TIMELINE_DB_MYSQL_MYSQL'),
(223,34,'sharding_config_view','database_name',0,1,'2018-11-13 06:50:41','phases_temporal_engine_TIMELINE_DB_MYSQL_MYSQL','temporal_engine_bootstrap_TIMELINE_DB_MYSQL_MYSQL'),
(225,34,'sharding_config_view','database_name',0,1,'2018-11-13 06:50:41','timelines_temporal_engine_TIMELINE_DB_MYSQL_MYSQL','temporal_engine_bootstrap_TIMELINE_DB_MYSQL_MYSQL'),
(226,34,'sharding_config_view','database_name',0,1,'2018-11-13 06:50:41','timeline_properties_temporal_engine_TIMELINE_DB_MYSQL_MYSQL','temporal_engine_bootstrap_TIMELINE_DB_MYSQL_MYSQL'),
(228,34,'sharding_config_view','database_name',0,1,'2018-11-13 06:50:41','user_initialization_history_temporal_engine_TIMELINE_DB_MYSQL_MYSQL','temporal_engine_bootstrap_TIMELINE_DB_MYSQL_MYSQL');


-- Dump completed on 2021-10-27 12:15:35
