-- MySQL dump 10.13  Distrib 8.0.25, for macos11 (x86_64)
--
-- Host: localhost    Database: nightly_mod
-- ------------------------------------------------------
-- Server version	8.0.25


--
-- Dumping data for table `logical_summary_table`
--

REPLACE INTO `logical_summary_table` (`id`, `summary_table_id`, `name`, `group_by_cols`, `is_active`, `scope_id`, `primary_date_key`, `partition_keys`, `apply_standard_filters`, `id_str`, `summary_table_id_str`, `group_by_cols_str`) VALUES (1,1,'bill_summary','5,1',1,-1000,'dim_event_date_id','year',1,'bill_summary_-1000','bill_summary_-1000','membership_-1000_membership_type_-1000_id_-1000_-1000,bill_lineitems_-1000_bill_lineitems_-1000_bill_id_-1000'),
(2,2,'daily_campaign_group_summary','4,2',1,-1000,'dim_event_date_id','year',1,'daily_campaign_group_summary_-1000','daily_campaign_group_summary_-1000','event_date_-1000_date_-1000_date_id_-1000_-1000,campaign_group_-1000_campaign_group_-1000_id_-1000_-1000'),
(3,3,'daily_till_summary','4,3',1,-1000,'dim_event_date_id','year',1,'daily_till_summary_-1000','daily_till_summary_-1000','event_date_-1000_date_-1000_date_id_-1000_-1000,event_zone_till_-1000_zone_tills_-1000_till_id_-1000_-1000'),
(4,4,'daily_store_summary','4,6',1,-1000,'dim_event_date_id','year',1,'daily_store_summary_-1000','daily_store_summary_-1000','event_date_-1000_date_-1000_date_id_-1000_-1000,event_zone_till_-1000_zone_tills_-1000_store_-1000_-1000'),
(5,5,'return_bill_summary','5,7',1,-1000,'dim_event_date_id','year',1,'return_bill_summary_-1000','return_bill_summary_-1000','membership_-1000_membership_type_-1000_id_-1000_-1000,return_bill_lineitem_-1000_return_bill_lineitem_-1000_bill_id_-1000'),
(6,6,'bill_product_summary','5,1,9',0,-1000,'dim_event_date_id','year',1,'bill_product_summary_-1000','bill_product_summary_-1000','membership_-1000_membership_type_-1000_id_-1000_-1000,bill_lineitems_-1000_bill_lineitems_-1000_bill_id_-1000,item_-1000_inventory_items_-1000_item_id_-1000_-1000'),
(7,7,'return_bill_product_summary','5,7,9',0,-1000,'dim_event_date_id','year',1,'return_bill_product_summary_-1000','return_bill_product_summary_-1000','membership_-1000_membership_type_-1000_id_-1000_-1000,return_bill_lineitem_-1000_return_bill_lineitem_-1000_bill_id_-1000,item_-1000_inventory_items_-1000_item_id_-1000_-1000'),
(8,8,'daily_product_summary','4,9',1,-1000,'dim_event_date_id','year',1,'daily_product_summary_-1000','daily_product_summary_-1000','event_date_-1000_date_-1000_date_id_-1000_-1000,item_-1000_inventory_items_-1000_item_id_-1000_-1000'),
(9,9,'response_bill_summary','10,11,12',1,-1000,'dim_event_date_id','year',1,'response_bill_summary_-1000','response_bill_summary_-1000','response_info_-1000_response_info_-1000_msg_id_-1000,response_info_-1000_response_info_-1000_dim_event_user_id_-1000,response_info_-1000_response_info_-1000_bill_id_-1000'),
(10,10,'campaign_bill_summary','12,13',0,-899,'dim_event_date_id','year',1,'campaign_bill_summary_-1000','campaign_bill_summary_-1000','response_info_-1000_response_info_-1000_bill_id_-1000,campaign_group_-1000_campaign_group_-1000_campaign_-1000_-1000'),
(11,11,'daily_group_type_campaign_summary','4,13,14,15',1,-1000,'dim_event_date_id','year',1,'daily_group_type_campaign_summary_-1000','daily_group_type_campaign_summary_-1000','event_date_-1000_date_-1000_date_id_-1000_-1000,campaign_group_-1000_campaign_group_-1000_campaign_-1000_-1000,campaign_group_-1000_campaign_group_-1000_group_type_-1000_-1000,campaign_group_-1000_campaign_group_-1000_name_-1000_-1000'),
(12,12,'campaign_daily_summary','4,18',1,-1000,'dim_event_date_id','year',1,'campaign_daily_summary_-1000','campaign_daily_summary_-1000','event_date_-1000_date_-1000_date_id_-1000_-1000,campaign_-1000_campaigns_-1000_campaign_id_-1000_-1000');



-- Dump completed on 2021-11-30 18:29:20
