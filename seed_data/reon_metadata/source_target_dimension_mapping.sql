-- MySQL dump 10.13  Distrib 8.0.25, for macos11 (x86_64)
--
-- Host: localhost    Database: nightly_mod
-- ------------------------------------------------------
-- Server version	8.0.25


--
-- Dumping data for table `source_target_dimension_mapping`
--

REPLACE INTO `source_target_dimension_mapping` (`id`, `source_table_id`, `fact_table_id`, `is_active`, `scope_id`, `added_on`, `source_table_id_str`, `id_str`, `fact_table_id_str`) VALUES (1,106,1,1,-1000,'2017-01-30 16:20:23','loyalty_log_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','bill_lineitems_-1000_loyalty_log_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','bill_lineitems_-1000'),
(2,95,1,1,-1000,'2017-01-30 16:20:23','loyalty_bill_lineitems_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','bill_lineitems_-1000_loyalty_bill_lineitems_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','bill_lineitems_-1000'),
(3,94,1,1,-1000,'2017-01-30 16:20:23','loyalty_not_interested_bills_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','bill_lineitems_-1000_loyalty_not_interested_bills_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','bill_lineitems_-1000'),
(4,97,1,1,-1000,'2017-01-30 16:20:23','loyalty_not_interested_bill_lineitems_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','bill_lineitems_-1000_loyalty_not_interested_bill_lineitems_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','bill_lineitems_-1000'),
(5,108,2,1,-1000,'2017-01-30 16:20:23','returned_bills_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','return_bill_lineitem_-1000_returned_bills_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','return_bill_lineitem_-1000'),
(6,107,2,1,-1000,'2017-01-30 16:20:23','returned_bills_lineitems_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','return_bill_lineitem_-1000_returned_bills_lineitems_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','return_bill_lineitem_-1000'),
(7,98,2,1,-1000,'2017-01-30 16:20:23','not_interested_return_bills_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','return_bill_lineitem_-1000_not_interested_return_bills_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','return_bill_lineitem_-1000'),
(8,105,2,1,-1000,'2017-01-30 16:20:23','not_interested_return_bill_lineitems_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','return_bill_lineitem_-1000_not_interested_return_bill_lineitems_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','return_bill_lineitem_-1000'),
(9,5,3,1,-1000,'2017-01-30 16:20:23','bill_dump_import_bills_bill_import_local_INTOUCH_DB_MYSQL_BILLDUMP_SLAVE_MYSQL','bill_dump_bill_lineitems_-1000_bill_dump_import_bills_bill_import_local_INTOUCH_DB_MYSQL_BILLDUMP_SLAVE_MYSQL','bill_dump_bill_lineitems_-1000'),
(10,4,3,1,-1000,'2017-01-30 16:20:23','bill_dump_import_bill_lineitems_bill_import_local_INTOUCH_DB_MYSQL_BILLDUMP_SLAVE_MYSQL','bill_dump_bill_lineitems_-1000_bill_dump_import_bill_lineitems_bill_import_local_INTOUCH_DB_MYSQL_BILLDUMP_SLAVE_MYSQL','bill_dump_bill_lineitems_-1000'),
(11,19,12,1,-1000,'2017-01-30 16:20:23','coupons_issued_luci_LUCI_DB_MYSQL_SLAVE_MYSQL','coupons_-1000_coupons_issued_luci_LUCI_DB_MYSQL_SLAVE_MYSQL','coupons_-1000'),
(12,21,12,1,-1000,'2017-01-30 16:20:23','coupon_redemptions_luci_LUCI_DB_MYSQL_SLAVE_MYSQL','coupons_-1000_coupon_redemptions_luci_LUCI_DB_MYSQL_SLAVE_MYSQL','coupons_-1000'),
(13,125,5,1,-1000,'2017-01-30 16:20:23','points_awarded_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL','points_-1000_points_awarded_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL','points_-1000'),
(14,128,5,1,-1000,'2017-01-30 16:20:23','points_awarded_bill_promotions_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL','points_-1000_points_awarded_bill_promotions_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL','points_-1000'),
(15,127,5,1,-1000,'2017-01-30 16:20:23','points_awarded_lineitems_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL','points_-1000_points_awarded_lineitems_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL','points_-1000'),
(16,130,5,1,-1000,'2017-01-30 16:20:23','points_awarded_bill_lineitem_promotions_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL','points_-1000_points_awarded_bill_lineitem_promotions_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL','points_-1000'),
(17,126,5,1,-1000,'2017-01-30 16:20:23','points_awarded_customer_promotions_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL','points_-1000_points_awarded_customer_promotions_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL','points_-1000'),
(18,118,5,1,-1000,'2017-01-30 16:20:23','points_deductions_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL','points_-1000_points_deductions_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL','points_-1000'),
(19,82,6,0,-1000,'2017-01-30 16:20:23','fraud_users_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','customer_summary_-1000_fraud_users_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','customer_summary_-1000'),
(20,92,6,1,-1000,'2017-01-30 16:20:23','loyalty_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','customer_summary_-1000_loyalty_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','customer_summary_-1000'),
(21,121,6,1,-1000,'2017-01-30 16:20:23','redeemable_customer_points_summary_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL','customer_summary_-1000_redeemable_customer_points_summary_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL','customer_summary_-1000'),
(22,52,7,1,-1000,'2017-03-07 21:47:45','messages_nsadmin_NSADMIN_DB_MYSQL_SLAVE_MYSQL','nsadmin_messages_-1000_messages_nsadmin_NSADMIN_DB_MYSQL_SLAVE_MYSQL','nsadmin_messages_-1000'),
(24,114,8,1,-1000,'2017-03-08 02:38:04','communication_details_veneno_CAMPAIGN_SHARD_DB_MYSQL_SLAVE_MYSQL','contact_info_-1000_communication_details_veneno_CAMPAIGN_SHARD_DB_MYSQL_SLAVE_MYSQL','contact_info_-1000'),
(25,117,8,1,-1000,'2017-03-08 02:38:04','inboxes_veneno_data_details_CAMPAIGN_SHARD_DB_MYSQL_SLAVE_MYSQL','contact_info_-1000_inboxes_veneno_data_details_CAMPAIGN_SHARD_DB_MYSQL_SLAVE_MYSQL','contact_info_-1000'),
(28,131,9,1,-1000,'2017-03-09 21:23:03','expiry_reminder_sent_stats_customer_level_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL','points_expiry_reminder_info_-1000_expiry_reminder_sent_stats_customer_level_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL','points_expiry_reminder_info_-1000'),
(29,101,10,1,-1000,'2017-03-14 02:19:16','task_status_customer_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','call_task_customer_status_-1000_task_status_customer_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','call_task_customer_status_-1000'),
(30,50,8,1,-1000,'2017-03-08 02:38:04','user_email_stats_msging_INTOUCH_DB_MYSQL_SLAVE_MYSQL','contact_info_-1000_user_email_stats_msging_INTOUCH_DB_MYSQL_SLAVE_MYSQL','contact_info_-1000'),
(31,142,13,1,-1000,'2017-10-02 00:16:02','ffc_data_v2_storeCareDatabase_SPARK_SPARK','ffc_fact_-1000_ffc_data_v2_storeCareDatabase_SPARK_SPARK','ffc_fact_-1000'),
(32,143,13,1,-1000,'2017-10-02 00:16:02','ffc_groupCount_v2_storeCareDatabase_SPARK_SPARK','ffc_fact_-1000_ffc_groupCount_v2_storeCareDatabase_SPARK_SPARK','ffc_fact_-1000'),
(33,145,1,1,-1000,'2017-10-18 03:11:02','combo_details_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','bill_lineitems_-1000_combo_details_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','bill_lineitems_-1000'),
(34,144,14,1,-1000,'2017-10-29 21:20:52','custom_field_transpose_transpose_database_SPARK_SPARK','user_custom_fields_-1000_custom_field_transpose_transpose_database_SPARK_SPARK','user_custom_fields_-1000'),
(35,146,1,1,-998,'2017-10-29 22:17:31','shipping_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','bill_lineitems_-1000_shipping_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','bill_lineitems_-1000'),
(36,148,1,1,-1000,'2017-10-29 23:32:58','loyaty_txn_extended_fields_transpose_transpose_database_SPARK_SPARK','bill_lineitems_-1000_loyaty_txn_extended_fields_transpose_transpose_database_SPARK_SPARK','bill_lineitems_-1000'),
(37,149,1,1,-1000,'2017-10-29 23:32:58','ni_txn_extended_fields_transpose_transpose_database_SPARK_SPARK','bill_lineitems_-1000_ni_txn_extended_fields_transpose_transpose_database_SPARK_SPARK','bill_lineitems_-1000'),
(38,129,15,1,-1000,'2017-11-23 15:46:41','customer_slab_upgrade_history_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL','slab_change_log_-1000_customer_slab_upgrade_history_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL','slab_change_log_-1000'),
(39,119,15,1,-1000,'2017-11-23 15:41:23','customer_enrollment_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL','slab_change_log_-1000_customer_enrollment_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL','slab_change_log_-1000'),
(40,133,15,1,-1000,'2017-11-23 15:41:23','program_slabs_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL','slab_change_log_-1000_program_slabs_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL','slab_change_log_-1000'),
(41,135,16,1,-997,'2017-11-23 23:34:13','user_profile_details_multi_profile_SPARK_SPARK','user_profiles_-997_user_profile_details_multi_profile_SPARK_SPARK','user_profiles_-997'),
(43,69,17,0,-1000,'2017-11-23 23:39:32','referral_voucher_details_referral_INTOUCH_DB_MYSQL_SLAVE_MYSQL','user_comm_channels_-1000_referral_voucher_details_referral_INTOUCH_DB_MYSQL_SLAVE_MYSQL','user_comm_channels_-1000'),
(44,153,17,0,-1000,'2017-11-23 23:39:40','subscription_status_subscription_service_INTOUCH_DB_MYSQL_SLAVE_MYSQL','user_comm_channels_-1000_subscription_status_subscription_service_INTOUCH_DB_MYSQL_SLAVE_MYSQL','user_comm_channels_-1000'),
(45,156,1,1,-1000,'2017-12-05 00:07:55','loyalty_lineitem_extended_fields_transpose_transpose_database_SPARK_SPARK','bill_lineitems_-1000_loyalty_lineitem_extended_fields_transpose_transpose_database_SPARK_SPARK','bill_lineitems_-1000'),
(46,157,1,1,-1000,'2017-12-05 00:07:55','ni_lineitem_extended_fields_transpose_transpose_database_SPARK_SPARK','bill_lineitems_-1000_ni_lineitem_extended_fields_transpose_transpose_database_SPARK_SPARK','bill_lineitems_-1000'),
(50,163,20,1,-1000,'2018-01-03 03:41:29','event_feed_external_events_SPARK_SPARK','wechat_click_stream_-1000_event_feed_external_events_SPARK_SPARK','wechat_click_stream_-1000'),
(51,170,20,1,-1000,'2018-01-03 03:41:29','profile_v2_identifiers_mongo_doc_transpose_transpose_database_SPARK_SPARK','wechat_click_stream_-1000_profile_v2_identifiers_mongo_doc_transpose_transpose_database_SPARK_SPARK','wechat_click_stream_-1000'),
(53,167,6,1,-1000,'2018-01-16 06:18:59','customer_extended_fields_mongo_doc_transpose_transpose_database_SPARK_SPARK','customer_summary_-1000_customer_extended_fields_mongo_doc_transpose_transpose_database_SPARK_SPARK','customer_summary_-1000'),
(56,163,21,1,-1000,'2018-01-03 03:41:29','event_feed_external_events_SPARK_SPARK','wechat_qrscan_fact_-1000_event_feed_external_events_SPARK_SPARK','wechat_qrscan_fact_-1000'),
(57,170,21,1,-1000,'2018-01-03 03:41:29','profile_v2_identifiers_mongo_doc_transpose_transpose_database_SPARK_SPARK','wechat_qrscan_fact_-1000_profile_v2_identifiers_mongo_doc_transpose_transpose_database_SPARK_SPARK','wechat_qrscan_fact_-1000'),
(58,172,18,1,-1000,'2018-02-20 05:22:14','profile_users_mongo_doc_transpose_transpose_database_SPARK_SPARK','profile_users_-1000_profile_users_mongo_doc_transpose_transpose_database_SPARK_SPARK','profile_users_-1000'),
(59,163,22,1,-1000,'2018-01-03 09:11:29','event_feed_external_events_SPARK_SPARK','keyword_fact_-1000_event_feed_external_events_SPARK_SPARK','keyword_fact_-1000'),
(60,170,22,1,-1000,'2018-01-03 09:11:29','profile_v2_identifiers_mongo_doc_transpose_transpose_database_SPARK_SPARK','keyword_fact_-1000_profile_v2_identifiers_mongo_doc_transpose_transpose_database_SPARK_SPARK','keyword_fact_-1000'),
(61,11,8,1,-1000,'2018-03-12 05:23:35','control_group_users_history_veneno_data_details_CAMPAIGN_SHARD_DB_MYSQL_SLAVE_MYSQL','contact_info_-1000_control_group_users_history_veneno_data_details_CAMPAIGN_SHARD_DB_MYSQL_SLAVE_MYSQL','contact_info_-1000'),
(62,173,23,1,-1000,'2018-03-26 00:59:04','entity_life_cycle_audit_logs_INTOUCH_DB_MYSQL_SLAVE_MYSQL','registration_event_-1000_entity_life_cycle_audit_logs_INTOUCH_DB_MYSQL_SLAVE_MYSQL','registration_event_-1000'),
(63,188,24,0,-1000,'2018-07-05 03:43:52','payment_mode_attribute_values_transpose_transpose_database_SPARK_SPARK','payment_details_fact_-994_payment_mode_attribute_values_transpose_transpose_database_SPARK_SPARK','payment_details_fact_-994'),
(64,87,24,1,-1000,'2018-07-05 03:43:52','payment_mode_details_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','payment_details_fact_-994_payment_mode_details_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','payment_details_fact_-994'),
(65,70,25,1,-1000,'2017-01-30 21:50:23','issue_tracker_store_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','issue_tracker_fact_-1000_issue_tracker_store_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','issue_tracker_fact_-1000'),
(66,90,26,1,-1000,'2018-08-01 12:28:52','custom_fields_data_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','custom_fields_data_-1000_custom_fields_data_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','custom_fields_data_-1000'),
(67,194,18,1,-1000,'2018-08-17 02:19:33','profile_v2_comm_channels_mongo_doc_transpose_transpose_database_SPARK_SPARK','profile_users_-1000_profile_v2_comm_channels_mongo_doc_transpose_transpose_database_SPARK_SPARK','profile_users_-1000'),
(68,45,27,1,-1000,'2018-08-31 00:13:20','email_links_redirection_stats_msging_INTOUCH_DB_MYSQL_SLAVE_MYSQL','email_click_stats_-1000_email_links_redirection_stats_msging_INTOUCH_DB_MYSQL_SLAVE_MYSQL','email_click_stats_-1000'),
(69,46,27,1,-1000,'2018-08-31 00:13:20','email_links_redirection_msging_INTOUCH_DB_MYSQL_SLAVE_MYSQL','email_click_stats_-1000_email_links_redirection_msging_INTOUCH_DB_MYSQL_SLAVE_MYSQL','email_click_stats_-1000'),
(70,96,1,1,-1000,'2017-01-30 21:50:23','transaction_type_update_log_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','bill_lineitems_-1000_transaction_type_update_log_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','bill_lineitems_-1000'),
(71,84,28,1,-1000,'2018-10-05 01:42:35','merge_customers_log_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','customer_merge_log_-1000_merge_customers_log_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','customer_merge_log_-1000'),
(72,207,29,1,-1000,'2018-11-27 03:27:31','activity_context_history_temporal_engine_TIMELINE_DB_MYSQL_MYSQL','milestone_activity_fact_-1000_activity_context_history_temporal_engine_TIMELINE_DB_MYSQL_MYSQL','milestone_activity_fact_-1000'),
(73,241,30,1,-1000,'2019-01-03 00:35:36','leads_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','leads_fact_-590_leads_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','leads_fact_-590'),
(74,242,31,1,-1000,'2019-01-03 19:55:24','lead_status_log_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','lead_events_fact_-590_lead_status_log_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','lead_events_fact_-590'),
(75,243,31,1,-1000,'2019-01-03 19:55:24','lead_follow_up_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','lead_events_fact_-590_lead_follow_up_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','lead_events_fact_-590'),
(76,85,32,1,-1000,'2019-02-14 05:42:05','customer_notes_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','customer_notes_-1000_customer_notes_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','customer_notes_-1000'),
(77,265,33,1,-1000,'2019-04-04 07:50:58','credits_log_nsadmin_NSADMIN_DB_MYSQL_SLAVE_MYSQL','communication_credit_logs_-1000_credits_log_nsadmin_NSADMIN_DB_MYSQL_SLAVE_MYSQL','communication_credit_logs_-1000'),
(78,67,34,1,-1000,'2019-04-12 02:08:37','referees_referral_INTOUCH_DB_MYSQL_SLAVE_MYSQL','referrals_-1000_referees_referral_INTOUCH_DB_MYSQL_SLAVE_MYSQL','referrals_-1000'),
(79,66,35,1,-1000,'2019-04-12 02:09:19','referrers_referral_INTOUCH_DB_MYSQL_SLAVE_MYSQL','referrers_-1000_referrers_referral_INTOUCH_DB_MYSQL_SLAVE_MYSQL','referrers_-1000'),
(80,68,36,1,-1000,'2019-04-12 02:09:56','invitees_referral_INTOUCH_DB_MYSQL_SLAVE_MYSQL','invitations_sent_-1000_invitees_referral_INTOUCH_DB_MYSQL_SLAVE_MYSQL','invitations_sent_-1000'),
(81,92,18,1,-1000,'2019-07-25 18:27:43','loyalty_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','profile_users_-1000_loyalty_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','profile_users_-1000'),
(82,270,37,1,-800,'2019-09-06 03:02:14','cvp_v2_data_instoreai_storesense_SPARK_SPARK','cvp_fact_-800_cvp_v2_data_instoreai_storesense_SPARK_SPARK','cvp_fact_-800'),
(85,241,31,1,-1000,'2019-09-05 04:32:15','leads_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','lead_events_fact_-590_leads_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','lead_events_fact_-590'),
(91,252,30,1,-1000,'2019-11-26 04:25:53','lead_extended_fields_transpose_transpose_database_SPARK_SPARK','leads_fact_-590_lead_extended_fields_transpose_transpose_database_SPARK_SPARK','leads_fact_-590'),
(92,252,31,1,-1000,'2019-11-26 04:25:53','lead_extended_fields_transpose_transpose_database_SPARK_SPARK','lead_events_fact_-590_lead_extended_fields_transpose_transpose_database_SPARK_SPARK','lead_events_fact_-590'),
(93,274,38,1,-578,'2020-04-28 19:57:16','credit_transaction_details_nsadmin_NSADMIN_DB_MYSQL_SLAVE_MYSQL','credit_ledger_-578_credit_transaction_details_nsadmin_NSADMIN_DB_MYSQL_SLAVE_MYSQL','credit_ledger_-578'),
(94,275,38,1,-578,'2020-04-28 19:57:16','credit_utilization_details_nsadmin_NSADMIN_DB_MYSQL_SLAVE_MYSQL','credit_ledger_-578_credit_utilization_details_nsadmin_NSADMIN_DB_MYSQL_SLAVE_MYSQL','credit_ledger_-578'),
(95,276,38,0,-578,'2020-04-28 19:57:16','utilization_meta_details_nsadmin_NSADMIN_DB_MYSQL_SLAVE_MYSQL','credit_ledger_-578_utilization_meta_details_nsadmin_NSADMIN_DB_MYSQL_SLAVE_MYSQL','credit_ledger_-578'),
(96,277,38,0,-578,'2020-04-28 19:57:16','credit_channel_details_nsadmin_NSADMIN_DB_MYSQL_SLAVE_MYSQL','credit_ledger_-578_credit_channel_details_nsadmin_NSADMIN_DB_MYSQL_SLAVE_MYSQL','credit_ledger_-578'),
(97,278,38,0,-578,'2020-04-28 19:57:16','org_credit_rates_nsadmin_NSADMIN_DB_MYSQL_SLAVE_MYSQL','credit_ledger_-578_org_credit_rates_nsadmin_NSADMIN_DB_MYSQL_SLAVE_MYSQL','credit_ledger_-578'),
(98,119,40,1,-575,'2020-06-18 23:53:40','customer_enrollment_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL','customer_points_summary_-575_customer_enrollment_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL','customer_points_summary_-575'),
(99,121,40,1,-575,'2020-06-18 23:53:40','redeemable_customer_points_summary_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL','customer_points_summary_-575_redeemable_customer_points_summary_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL','customer_points_summary_-575'),
(100,132,41,1,-1000,'2020-07-05 20:48:59','points_redemption_summary_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL','points_redemption_summary_-1000_points_redemption_summary_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL','points_redemption_summary_-1000'),
(101,103,10,1,-572,'2021-10-12 23:51:56','task_campaign_mapping_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','call_task_customer_status_-1000_task_campaign_mapping_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','call_task_customer_status_-1000'),
(102,-46,-27,0,-569,'2020-10-06 07:30:00','','_',''),
(103,186,42,1,-563,'2020-12-05 07:30:00','subscription_configuration_subscription_service_INTOUCH_DB_MYSQL_SLAVE_MYSQL','subscription_config_-563_subscription_configuration_subscription_service_INTOUCH_DB_MYSQL_SLAVE_MYSQL','subscription_config_-563'),
(104,88,43,1,-563,'2020-12-05 07:30:00','users_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','subscription_status_change_log_-563_users_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','subscription_status_change_log_-563'),
(105,284,43,1,-563,'2020-12-05 07:30:00','subscription_status_changelog_subscription_service_INTOUCH_DB_MYSQL_SLAVE_MYSQL','subscription_status_change_log_-563_subscription_status_changelog_subscription_service_INTOUCH_DB_MYSQL_SLAVE_MYSQL','subscription_status_change_log_-563'),
(106,285,45,1,-1897,'2017-01-30 16:20:23','cards_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','card_status_log_fact_-1897_cards_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','card_status_log_fact_-1897'),
(107,286,45,1,-1897,'2017-01-30 16:20:23','card_series_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','card_status_log_fact_-1897_card_series_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','card_status_log_fact_-1897'),
(109,287,45,1,-1897,'2017-01-30 16:20:23','entity_status_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','card_status_log_fact_-1897_entity_status_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','card_status_log_fact_-1897'),
(110,292,46,0,-552,'2021-10-12 23:51:56','promotion_meta_mongo_doc_promotion_engine_SPARK_SPARK','promotion_redemptions_fact_-552_promotion_meta_mongo_doc_promotion_engine_SPARK_SPARK','promotion_redemptions_fact_-552'),
(111,295,46,1,-552,'2021-10-12 23:51:56','promotion_redemption_mongo_doc_promotion_engine_SPARK_SPARK','promotion_redemptions_fact_-552_promotion_redemption_mongo_doc_promotion_engine_SPARK_SPARK','promotion_redemptions_fact_-552'),
(112,292,47,0,-552,'2021-10-12 23:51:56','promotion_meta_mongo_doc_promotion_engine_SPARK_SPARK','promotion_activities_fact_-552_promotion_meta_mongo_doc_promotion_engine_SPARK_SPARK','promotion_activities_fact_-552'),
(113,293,47,1,-552,'2021-10-12 23:51:56','customer_issued_promotion_mongo_doc_promotion_engine_SPARK_SPARK','promotion_activities_fact_-552_customer_issued_promotion_mongo_doc_promotion_engine_SPARK_SPARK','promotion_activities_fact_-552'),
(114,294,47,1,-552,'2021-10-12 23:51:56','customer_earned_promotion_mongo_doc_promotion_engine_SPARK_SPARK','promotion_activities_fact_-552_customer_earned_promotion_mongo_doc_promotion_engine_SPARK_SPARK','promotion_activities_fact_-552'),
(115,295,47,1,-552,'2021-10-12 23:51:56','promotion_redemption_mongo_doc_promotion_engine_SPARK_SPARK','promotion_activities_fact_-552_promotion_redemption_mongo_doc_promotion_engine_SPARK_SPARK','promotion_activities_fact_-552'),
(116,296,47,0,-552,'2021-10-12 23:51:56','customer_promotion_preference_mongo_doc_promotion_engine_SPARK_SPARK','promotion_activities_fact_-552_customer_promotion_preference_mongo_doc_promotion_engine_SPARK_SPARK','promotion_activities_fact_-552'),
(117,298,48,1,-562,'2021-10-12 23:51:56','requests_member_care_INTOUCH_DB_MYSQL_SLAVE_MYSQL','goodwill_requests_-562_requests_member_care_INTOUCH_DB_MYSQL_SLAVE_MYSQL','goodwill_requests_-562'),
(118,299,48,1,-562,'2021-10-12 23:51:56','goodwill_requests_member_care_INTOUCH_DB_MYSQL_SLAVE_MYSQL','goodwill_requests_-562_goodwill_requests_member_care_INTOUCH_DB_MYSQL_SLAVE_MYSQL','goodwill_requests_-562'),
(119,300,48,1,-562,'2021-10-12 23:51:56','goodwill_points_log_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL','goodwill_requests_-562_goodwill_points_log_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL','goodwill_requests_-562'),
(120,311,49,1,-562,'2020-09-13 16:48:00','partner_program_enrollment_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL','partner_program_enrollment_-562_partner_program_enrollment_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL','partner_program_enrollment_-562'),
(121,312,50,1,-562,'2020-09-13 16:48:00','partner_program_slab_history_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL','partner_program_slab_history_-562_partner_program_slab_history_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL','partner_program_slab_history_-562'),
(122,314,51,1,-562,'2020-09-13 16:48:00','supplementary_partner_program_enrollment_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL','supplementary_partner_program_enrollment_-562_supplementary_partner_program_enrollment_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL','supplementary_partner_program_enrollment_-562'),
(123,315,52,1,-562,'2020-09-13 16:48:00','supplementary_membership_history_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL','supplementary_membership_history_-562_supplementary_membership_history_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL','supplementary_membership_history_-562'),
(124,316,15,1,-562,'2020-09-13 16:48:00','slab_change_details_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL','slab_change_log_-1000_slab_change_details_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL','slab_change_log_-1000'),
(125,317,53,1,-562,'2021-09-25 18:30:00','customer_benefit_tracking_log_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL','loyalty_benefits_-562_customer_benefit_tracking_log_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL','loyalty_benefits_-562'),
(126,318,53,1,-562,'2021-09-25 18:30:00','customer_benefit_tracking_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL','loyalty_benefits_-562_customer_benefit_tracking_warehouse_WAREHOUSE_DB_MYSQL_SLAVE_MYSQL','loyalty_benefits_-562'),
(127,324,2,1,-548,'2021-09-30 18:30:00','return_txn_extended_fields_transpose_transpose_database_SPARK_SPARK','return_bill_lineitem_-1000_return_txn_extended_fields_transpose_transpose_database_SPARK_SPARK','return_bill_lineitem_-1000'),
(128,325,2,1,-548,'2021-09-30 18:30:00','return_lineitem_extended_fields_transpose_transpose_database_SPARK_SPARK','return_bill_lineitem_-1000_return_lineitem_extended_fields_transpose_transpose_database_SPARK_SPARK','return_bill_lineitem_-1000'),
(129,326,2,1,-548,'2021-09-30 18:30:00','nireturn_txn_extended_fields_transpose_transpose_database_SPARK_SPARK','return_bill_lineitem_-1000_nireturn_txn_extended_fields_transpose_transpose_database_SPARK_SPARK','return_bill_lineitem_-1000'),
(130,327,2,1,-548,'2021-09-30 18:30:00','nireturn_lineitem_extended_fields_transpose_transpose_database_SPARK_SPARK','return_bill_lineitem_-1000_nireturn_lineitem_extended_fields_transpose_transpose_database_SPARK_SPARK','return_bill_lineitem_-1000');

REPLACE INTO `source_target_dimension_mapping` (`id`, `source_table_id`, `fact_table_id`, `is_active`, `scope_id`, `added_on`, `id_str`, `source_table_id_str`, `fact_table_id_str`) VALUES
(131,329,45,1,-547,'2021-11-25 18:30:00','card_status_log_fact_-1897_card_extended_fields_transpose_transpose_database_SPARK_SPARK','card_extended_fields_transpose_transpose_database_SPARK_SPARK','card_status_log_fact_-1897');

REPLACE INTO `source_target_dimension_mapping` (`id`, `source_table_id`, `fact_table_id`, `is_active`, `scope_id`, `added_on`, `source_table_id_str`, `id_str`, `fact_table_id_str`) 
VALUES (132,331,54,1,-545,'2021-12-29 11:41:44','fleet_users_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','fleet_users_-545_fleet_users_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','fleet_users_-545'),
(133,334,55,1,-545,'2021-12-29 11:41:44','fleet_group_mapping_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','user_group_mapping_-545_fleet_group_mapping_user_management_INTOUCH_DB_MYSQL_SLAVE_MYSQL','user_group_mapping_-545');


-- Dump completed on 2021-12-03 21:25:39
