-- MySQL dump 10.13  Distrib 8.0.25, for macos11 (x86_64)
--
-- Host: localhost    Database: nightly_mod
-- ------------------------------------------------------
-- Server version	8.0.25


--
-- Dumping data for table `union_mapping`
--

REPLACE INTO `union_mapping` (`table_mapping_id`, `target_diff_column_id`, `diff_column_value`, `is_active`, `scope_id`, `added_on`, `is_dynamic_partition`, `id_str`, `table_mapping_id_str`, `target_diff_column_id_str`) VALUES (11,302,'1',1,-1000,'2017-03-08 02:34:41',0,'coupons_-1000_coupons_issued_luci_LUCI_DB_MYSQL_SLAVE_MYSQL_coupons_-1000_dim_coupon_event_type_id','coupons_-1000_coupons_issued_luci_LUCI_DB_MYSQL_SLAVE_MYSQL','coupons_-1000_dim_coupon_event_type_id'),
(12,302,'2',1,-1000,'2017-03-08 02:34:41',0,'coupons_-1000_coupon_redemptions_luci_LUCI_DB_MYSQL_SLAVE_MYSQL_coupons_-1000_dim_coupon_event_type_id','coupons_-1000_coupon_redemptions_luci_LUCI_DB_MYSQL_SLAVE_MYSQL','coupons_-1000_dim_coupon_event_type_id'),
(13,88,'1',1,-1000,'2017-01-27 13:47:26',0,'points_-1000_points_awarded_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL_1_-1000_points_-1000_dim_points_awarded_type_id','points_-1000_points_awarded_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL_1_-1000','points_-1000_dim_points_awarded_type_id'),
(14,88,'2',1,-1000,'2017-01-27 13:47:26',0,'points_-1000_points_awarded_bill_promotions_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL_1_-1000_points_-1000_dim_points_awarded_type_id','points_-1000_points_awarded_bill_promotions_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL_1_-1000','points_-1000_dim_points_awarded_type_id'),
(15,88,'3',1,-1000,'2017-01-27 13:47:26',0,'points_-1000_points_awarded_lineitems_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL_1_-1000_points_-1000_dim_points_awarded_type_id','points_-1000_points_awarded_lineitems_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL_1_-1000','points_-1000_dim_points_awarded_type_id'),
(16,88,'4',1,-1000,'2017-01-27 13:47:26',0,'points_-1000_points_awarded_bill_lineitem_promotions_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL_1_-1000_points_-1000_dim_points_awarded_type_id','points_-1000_points_awarded_bill_lineitem_promotions_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL_1_-1000','points_-1000_dim_points_awarded_type_id'),
(17,88,'5',1,-1000,'2017-01-27 13:47:26',0,'points_-1000_points_awarded_customer_promotions_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL_1_-1000_points_-1000_dim_points_awarded_type_id','points_-1000_points_awarded_customer_promotions_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL_1_-1000','points_-1000_dim_points_awarded_type_id'),
(18,88,'',0,-1000,'2017-01-27 13:47:26',1,'points_-1000_points_deductions_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL_2_-1000_points_-1000_dim_points_awarded_type_id','points_-1000_points_deductions_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL_2_-1000','points_-1000_dim_points_awarded_type_id'),
(19,1,'1',1,-1000,'2017-01-27 13:47:26',0,'bill_lineitems_-1000_1_bill_lineitems_-1000_dim_membership_id','bill_lineitems_-1000_1','bill_lineitems_-1000_dim_membership_id'),
(20,1,'2',1,-1000,'2017-01-27 13:47:26',0,'bill_lineitems_-1000_2_bill_lineitems_-1000_dim_membership_id','bill_lineitems_-1000_2','bill_lineitems_-1000_dim_membership_id'),
(21,43,'1',1,-1000,'2017-01-27 13:47:26',0,'return_bill_lineitem_-1000_1_return_bill_lineitem_-1000_dim_membership_id','return_bill_lineitem_-1000_1','return_bill_lineitem_-1000_dim_membership_id'),
(22,43,'2',1,-1000,'2017-01-27 13:47:26',0,'return_bill_lineitem_-1000_2_return_bill_lineitem_-1000_dim_membership_id','return_bill_lineitem_-1000_2','return_bill_lineitem_-1000_dim_membership_id'),
(23,98,'1',1,-1000,'2017-01-27 13:47:26',0,'points_-1000_1_points_-1000_dim_points_event_type_id','points_-1000_1','points_-1000_dim_points_event_type_id'),
(24,98,'2',1,-1000,'2017-01-27 13:47:26',0,'points_-1000_3_points_-1000_dim_points_event_type_id','points_-1000_3','points_-1000_dim_points_event_type_id'),
(45,237,'4',1,-1000,'2017-03-08 02:34:41',0,'contact_info_-1000_1_contact_info_-1000_dim_communication_type_id','contact_info_-1000_1','contact_info_-1000_dim_communication_type_id'),
(46,237,'3',1,-1000,'2017-03-08 02:34:41',0,'contact_info_-1000_2_contact_info_-1000_dim_communication_type_id','contact_info_-1000_2','contact_info_-1000_dim_communication_type_id'),
(53,363,'1',1,-1000,'2017-10-02 00:16:28',0,'ffc_fact_-1000_ffc_data_v2_storeCareDatabase_SPARK_SPARK_ffc_fact_-1000_dim_walkin_type_id','ffc_fact_-1000_ffc_data_v2_storeCareDatabase_SPARK_SPARK','ffc_fact_-1000_dim_walkin_type_id'),
(54,363,'2',1,-1000,'2017-10-02 00:16:28',0,'ffc_fact_-1000_ffc_groupCount_v2_storeCareDatabase_SPARK_SPARK_ffc_fact_-1000_dim_walkin_type_id','ffc_fact_-1000_ffc_groupCount_v2_storeCareDatabase_SPARK_SPARK','ffc_fact_-1000_dim_walkin_type_id'),
(65,426,'1',1,-1000,'2017-11-23 15:54:54',0,'slab_change_log_-1000_1_slab_change_log_-1000_dim_scd_type_id','slab_change_log_-1000_1','slab_change_log_-1000_dim_scd_type_id'),
(66,426,'2',1,-1000,'2017-11-23 15:54:54',0,'slab_change_log_-1000_2_slab_change_log_-1000_dim_scd_type_id','slab_change_log_-1000_2','slab_change_log_-1000_dim_scd_type_id'),
(89,1,'3',1,150148,'2017-01-27 19:17:26',0,'bill_lineitems_-1000_3_bill_lineitems_-1000_dim_membership_id','bill_lineitems_-1000_3','bill_lineitems_-1000_dim_membership_id'),
(105,935,'3',1,-1000,'2018-11-27 02:21:32',0,'milestone_activity_fact_-1000_1_milestone_activity_fact_-1000_dim_communication_type_id','milestone_activity_fact_-1000_1','milestone_activity_fact_-1000_dim_communication_type_id'),
(106,935,'4',1,-1000,'2018-11-27 02:21:32',0,'milestone_activity_fact_-1000_2_milestone_activity_fact_-1000_dim_communication_type_id','milestone_activity_fact_-1000_2','milestone_activity_fact_-1000_dim_communication_type_id'),
(121,1113,'2',1,-1000,'2019-07-29 14:39:05',0,'profile_users_-1000_1_profile_users_-1000_dim_source_profile_type_id','profile_users_-1000_1','profile_users_-1000_dim_source_profile_type_id'),
(122,1113,'1',1,-1000,'2019-07-29 14:39:28',0,'profile_users_-1000_2_profile_users_-1000_dim_source_profile_type_id','profile_users_-1000_2','profile_users_-1000_dim_source_profile_type_id'),
(129,954,'',1,-1000,'2019-01-02 18:53:20',1,'lead_events_fact_-590_1_lead_events_fact_-590_dim_lead_event_type_id','lead_events_fact_-590_1','lead_events_fact_-590_dim_lead_event_type_id'),
(130,954,'8',1,-1000,'2019-01-02 18:53:20',0,'lead_events_fact_-590_2_lead_events_fact_-590_dim_lead_event_type_id','lead_events_fact_-590_2','lead_events_fact_-590_dim_lead_event_type_id'),
(131,1515,'1',1,-578,'2020-04-28 19:57:16',0,'credit_ledger_-578_credit_transaction_details_nsadmin_NSADMIN_DB_MYSQL_SLAVE_MYSQL_credit_ledger_-578_dim_credit_usage_id','credit_ledger_-578_credit_transaction_details_nsadmin_NSADMIN_DB_MYSQL_SLAVE_MYSQL','credit_ledger_-578_dim_credit_usage_id'),
(132,1515,'2',1,-578,'2020-04-28 19:57:16',0,'credit_ledger_-578_credit_utilization_details_nsadmin_NSADMIN_DB_MYSQL_SLAVE_MYSQL_credit_ledger_-578_dim_credit_usage_id','credit_ledger_-578_credit_utilization_details_nsadmin_NSADMIN_DB_MYSQL_SLAVE_MYSQL','credit_ledger_-578_dim_credit_usage_id'),
(148,1652,'2',1,-552,'2021-08-29 03:37:14',0,'promotion_activities_fact_-552_customer_earned_promotion_mongo_doc_promotion_engine_SPARK_SPARK_1_-552_promotion_activities_fact_-552_dim_promotion_activity_type_id','promotion_activities_fact_-552_customer_earned_promotion_mongo_doc_promotion_engine_SPARK_SPARK_1_-552','promotion_activities_fact_-552_dim_promotion_activity_type_id'),
(149,1652,'3',1,-552,'2021-08-29 03:37:14',0,'promotion_activities_fact_-552_promotion_redemption_mongo_doc_promotion_engine_SPARK_SPARK_2_-552_promotion_activities_fact_-552_dim_promotion_activity_type_id','promotion_activities_fact_-552_promotion_redemption_mongo_doc_promotion_engine_SPARK_SPARK_2_-552','promotion_activities_fact_-552_dim_promotion_activity_type_id'),
(155,1652,'1',1,-552,'2021-08-29 03:37:14',0,'promotion_activities_fact_-552_customer_issued_promotion_mongo_doc_promotion_engine_SPARK_SPARK_3_-552_promotion_activities_fact_-552_dim_promotion_activity_type_id','promotion_activities_fact_-552_customer_issued_promotion_mongo_doc_promotion_engine_SPARK_SPARK_3_-552','promotion_activities_fact_-552_dim_promotion_activity_type_id'),
(158,1652,'2',1,-552,'2021-08-29 03:37:14',0,'promotion_activities_fact_-552_1_promotion_activities_fact_-552_dim_promotion_activity_type_id','promotion_activities_fact_-552_1','promotion_activities_fact_-552_dim_promotion_activity_type_id'),
(159,1652,'3',1,-552,'2021-08-29 03:37:14',0,'promotion_activities_fact_-552_2_promotion_activities_fact_-552_dim_promotion_activity_type_id','promotion_activities_fact_-552_2','promotion_activities_fact_-552_dim_promotion_activity_type_id'),
(160,1652,'1',1,-552,'2021-08-29 03:37:14',0,'promotion_activities_fact_-552_3_promotion_activities_fact_-552_dim_promotion_activity_type_id','promotion_activities_fact_-552_3','promotion_activities_fact_-552_dim_promotion_activity_type_id'),
(166,88,'',1,-1000,'2021-08-26 21:30:26',1,'points_-1000_2_3_-1000_points_-1000_dim_points_awarded_type_id','points_-1000_2_3_-1000','points_-1000_dim_points_awarded_type_id');



-- Dump completed on 2021-11-30 18:29:20
