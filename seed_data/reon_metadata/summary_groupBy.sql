-- MySQL dump 10.13  Distrib 8.0.25, for macos11 (x86_64)
--
-- Host: localhost    Database: nightly_mod
-- ------------------------------------------------------
-- Server version	8.0.25


--
-- Dumping data for table `summary_groupBy`
--

REPLACE INTO `summary_groupBy` (`id`, `tableType`, `refTableId`, `column_id`, `is_active`, `scope_id`, `id_str`, `column_id_str`, `refTableId_str`) VALUES (1,'FACT',1,8,1,-1000,'bill_lineitems_-1000_bill_lineitems_-1000_bill_id_-1000','bill_lineitems_-1000_bill_id','bill_lineitems_-1000'),
(2,'DIMENSION',85,43,1,-1000,'campaign_group_-1000_campaign_group_-1000_id_-1000_-1000','campaign_group_-1000_id_-1000','campaign_group_-1000'),
(3,'DIMENSION',4,1,1,-1000,'event_zone_till_-1000_zone_tills_-1000_till_id_-1000_-1000','zone_tills_-1000_till_id_-1000','event_zone_till_-1000'),
(4,'DIMENSION',31,28,1,-1000,'event_date_-1000_date_-1000_date_id_-1000_-1000','date_-1000_date_id_-1000','event_date_-1000'),
(5,'DIMENSION',65,72,1,-1000,'membership_-1000_membership_type_-1000_id_-1000_-1000','membership_type_-1000_id_-1000','membership_-1000'),
(6,'DIMENSION',4,5,1,-1000,'event_zone_till_-1000_zone_tills_-1000_store_-1000_-1000','zone_tills_-1000_store_-1000','event_zone_till_-1000'),
(7,'FACT',2,28,1,-1000,'return_bill_lineitem_-1000_return_bill_lineitem_-1000_bill_id_-1000','return_bill_lineitem_-1000_bill_id','return_bill_lineitem_-1000'),
(8,'DIMENSION',5,57,1,-1000,'item_-1000_inventory_items_-1000_item_code_-1000_-1000','inventory_items_-1000_item_code_-1000','item_-1000'),
(9,'DIMENSION',5,58,1,-1000,'item_-1000_inventory_items_-1000_item_id_-1000_-1000','inventory_items_-1000_item_id_-1000','item_-1000'),
(10,'FACT',11,277,1,-1000,'response_info_-1000_response_info_-1000_msg_id_-1000','response_info_-1000_msg_id','response_info_-1000'),
(11,'FACT',11,278,1,-1000,'response_info_-1000_response_info_-1000_dim_event_user_id_-1000','response_info_-1000_dim_event_user_id','response_info_-1000'),
(12,'FACT',11,279,1,-1000,'response_info_-1000_response_info_-1000_bill_id_-1000','response_info_-1000_bill_id','response_info_-1000'),
(13,'DIMENSION',85,39,1,-1000,'campaign_group_-1000_campaign_group_-1000_campaign_-1000_-1000','campaign_group_-1000_campaign_-1000','campaign_group_-1000'),
(14,'DIMENSION',85,42,1,-1000,'campaign_group_-1000_campaign_group_-1000_group_type_-1000_-1000','campaign_group_-1000_group_type_-1000','campaign_group_-1000'),
(15,'DIMENSION',85,45,1,-1000,'campaign_group_-1000_campaign_group_-1000_name_-1000_-1000','campaign_group_-1000_name_-1000','campaign_group_-1000'),
(16,'DIMENSION',85,40,1,-1000,'campaign_group_-1000_campaign_group_-1000_campaign_end_date_-1000_-1000','campaign_group_-1000_campaign_end_date_-1000','campaign_group_-1000'),
(17,'DIMENSION',85,41,1,-1000,'campaign_group_-1000_campaign_group_-1000_campaign_start_date_-1000_-1000','campaign_group_-1000_campaign_start_date_-1000','campaign_group_-1000'),
(18,'DIMENSION',82,55,1,-1000,'campaign_-1000_campaigns_-1000_campaign_id_-1000_-1000','campaigns_-1000_campaign_id_-1000','campaign_-1000');



-- Dump completed on 2021-11-30 18:29:20
