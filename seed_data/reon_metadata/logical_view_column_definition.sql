-- MySQL dump 10.13  Distrib 8.0.25, for macos11 (x86_64)
--
-- Host: localhost    Database: nightly_mod
-- ------------------------------------------------------
-- Server version	8.0.25


--
-- Dumping data for table `logical_view_column_definition`
--

REPLACE INTO `logical_view_column_definition` (`column_id`, `view_id`, `scope_id`, `select_col_id`, `alias`, `dim_table_id`, `dim_col_id`, `is_active`, `column_id_str`, `view_id_str`, `select_col_id_str`, `dim_table_id_str`, `dim_col_id_str`) VALUES (1,1,-1000,146,'user_id',NULL,NULL,1,'customer_summary_view_customer_summary_-1000_user_id','customer_summary_view_customer_summary_-1000','customer_summary_-1000_dim_event_user_id','',''),
(2,1,-1000,158,'sku_purchased',NULL,NULL,1,'customer_summary_view_customer_summary_-1000_sku_purchased','customer_summary_view_customer_summary_-1000','customer_summary_-1000_sku_purchased','',''),
(4,1,-1000,300,'sku_returned',NULL,NULL,1,'customer_summary_view_customer_summary_-1000_sku_returned','customer_summary_view_customer_summary_-1000','customer_summary_-1000_skus_returned','',''),
(5,1,-1000,159,'average_spent_per_sku',NULL,NULL,1,'customer_summary_view_customer_summary_-1000_average_spent_per_sku','customer_summary_view_customer_summary_-1000','customer_summary_-1000_average_spent_per_sku','',''),
(6,1,-1000,144,'average_spent_per_visit',NULL,NULL,1,'customer_summary_view_customer_summary_-1000_average_spent_per_visit','customer_summary_view_customer_summary_-1000','customer_summary_-1000_average_spent_per_visit','',''),
(7,1,-1000,141,'expired_points',NULL,NULL,1,'customer_summary_view_customer_summary_-1000_expired_points','customer_summary_view_customer_summary_-1000','customer_summary_-1000_expired_points','',''),
(8,1,-1000,134,'first_visit_basket_size',NULL,NULL,1,'customer_summary_view_customer_summary_-1000_first_visit_basket_size','customer_summary_view_customer_summary_-1000','customer_summary_-1000_first_visit_basket_size','',''),
(9,1,-1000,142,'first_visit_bill_amount',NULL,NULL,1,'customer_summary_view_customer_summary_-1000_first_visit_bill_amount','customer_summary_view_customer_summary_-1000','customer_summary_-1000_first_visit_bill_amount','',''),
(10,1,-1000,379,'latency',NULL,NULL,1,'customer_summary_view_customer_summary_-1000_latency','customer_summary_view_customer_summary_-1000','customer_summary_-1000_latency','',''),
(11,1,-1000,149,'lifetime_points',NULL,NULL,1,'customer_summary_view_customer_summary_-1000_lifetime_points','customer_summary_view_customer_summary_-1000','customer_summary_-1000_lifetime_points','',''),
(12,1,-1000,157,'lifetime_purchased',NULL,NULL,1,'customer_summary_view_customer_summary_-1000_lifetime_purchased','customer_summary_view_customer_summary_-1000','customer_summary_-1000_lifetime_purchased','',''),
(13,1,-1000,140,'loyalty_points',NULL,NULL,1,'customer_summary_view_customer_summary_-1000_loyalty_points','customer_summary_view_customer_summary_-1000','customer_summary_-1000_loyalty_points','',''),
(14,1,-1000,150,'number_of_visits',NULL,NULL,1,'customer_summary_view_customer_summary_-1000_number_of_visits','customer_summary_view_customer_summary_-1000','customer_summary_-1000_number_of_visits','',''),
(15,1,-1000,136,'number_of_visit_days',NULL,NULL,1,'customer_summary_view_customer_summary_-1000_number_of_visit_days','customer_summary_view_customer_summary_-1000','customer_summary_-1000_number_of_visit_days','',''),
(16,1,-1000,133,'redeemed_points',NULL,NULL,1,'customer_summary_view_customer_summary_-1000_redeemed_points','customer_summary_view_customer_summary_-1000','customer_summary_-1000_redeemed_points','',''),
(17,1,-1000,145,'redeemed_voucher_count',NULL,NULL,1,'customer_summary_view_customer_summary_-1000_redeemed_voucher_count','customer_summary_view_customer_summary_-1000','customer_summary_-1000_redeemed_voucher_count','',''),
(18,1,-1000,137,'returned_bill_amount',NULL,NULL,1,'customer_summary_view_customer_summary_-1000_returned_bill_amount','customer_summary_view_customer_summary_-1000','customer_summary_-1000_returned_bill_amount','',''),
(19,1,-1000,161,'returned_bill_count',NULL,NULL,1,'customer_summary_view_customer_summary_-1000_returned_bill_count','customer_summary_view_customer_summary_-1000','customer_summary_-1000_returned_bill_count','',''),
(20,1,-1000,298,'total_bill_count',NULL,NULL,1,'customer_summary_view_customer_summary_-1000_total_bill_count','customer_summary_view_customer_summary_-1000','customer_summary_-1000_total_bill_count','',''),
(21,1,-1000,294,'total_bill_amount',NULL,NULL,1,'customer_summary_view_customer_summary_-1000_total_bill_amount','customer_summary_view_customer_summary_-1000','customer_summary_-1000_total_bill_amount','',''),
(22,1,-1000,295,'total_line_item_amount',NULL,NULL,1,'customer_summary_view_customer_summary_-1000_total_line_item_amount','customer_summary_view_customer_summary_-1000','customer_summary_-1000_total_line_item_amount','',''),
(25,1,-1000,297,'total_returned_line_item_amount',NULL,NULL,1,'customer_summary_view_customer_summary_-1000_total_returned_line_item_amount','customer_summary_view_customer_summary_-1000','customer_summary_-1000_total_returned_line_item_amount','',''),
(26,1,-1000,139,'conversion_date',1,29,1,'customer_summary_view_customer_summary_-1000_conversion_date','customer_summary_view_customer_summary_-1000','customer_summary_-1000_dim_conversion_date_id','date_-1000','date_-1000_date_-1000'),
(27,1,-1000,143,'last_bill_date',1,29,1,'customer_summary_view_customer_summary_-1000_last_bill_date','customer_summary_view_customer_summary_-1000','customer_summary_-1000_dim_last_bill_date_id','date_-1000','date_-1000_date_-1000'),
(28,1,-1000,151,'first_bill_date',1,29,1,'customer_summary_view_customer_summary_-1000_first_bill_date','customer_summary_view_customer_summary_-1000','customer_summary_-1000_dim_first_bill_date_id','date_-1000','date_-1000_date_-1000'),
(29,1,-1000,152,'first_redeemption_date',1,29,1,'customer_summary_view_customer_summary_-1000_first_redeemption_date','customer_summary_view_customer_summary_-1000','customer_summary_-1000_dim_first_redeemption_date_id','date_-1000','date_-1000_date_-1000'),
(30,1,-1000,156,'event_date',1,29,1,'customer_summary_view_customer_summary_-1000_event_date','customer_summary_view_customer_summary_-1000','customer_summary_-1000_dim_event_date_id','date_-1000','date_-1000_date_-1000'),
(31,1,-1000,160,'last_redeemption_date',1,29,1,'customer_summary_view_customer_summary_-1000_last_redeemption_date','customer_summary_view_customer_summary_-1000','customer_summary_-1000_dim_last_redeemption_date_id','date_-1000','date_-1000_date_-1000'),
(32,1,-1000,378,'lapsation_date',1,29,1,'customer_summary_view_customer_summary_-1000_lapsation_date','customer_summary_view_customer_summary_-1000','customer_summary_-1000_dim_lapsation_date_id','date_-1000','date_-1000_date_-1000'),
(33,1,-1000,360,'line_item_count',NULL,NULL,1,'customer_summary_view_customer_summary_-1000_line_item_count','customer_summary_view_customer_summary_-1000','customer_summary_-1000_line_item_count','',''),
(34,1,-1000,147,'registered_store_name',3,70,1,'customer_summary_view_customer_summary_-1000_registered_store_name','customer_summary_view_customer_summary_-1000','customer_summary_-1000_dim_event_zone_till_id','zone_tills_-1000','zone_tills_-1000_store_name_-1000'),
(35,1,-1000,135,'last_purchased_store_name',3,70,1,'customer_summary_view_customer_summary_-1000_last_purchased_store_name','customer_summary_view_customer_summary_-1000','customer_summary_-1000_dim_last_purchased_till_id','zone_tills_-1000','zone_tills_-1000_store_name_-1000'),
(36,1,-1000,383,'dim_preferred_store_id',NULL,NULL,1,'customer_summary_view_customer_summary_-1000_dim_preferred_store_id','customer_summary_view_customer_summary_-1000','customer_summary_-1000_dim_preferred_store_id','',''),
(37,1,-700,1480,'wechat_registered_store_name',3,70,1,'customer_summary_view_customer_summary_-1000_wechat_registered_store_name','customer_summary_view_customer_summary_-1000','customer_summary_-1000_dim_wechat_registered_till_id','zone_tills_-1000','zone_tills_-1000_store_name_-1000');


-- Dump completed on 2021-10-27 12:15:33
