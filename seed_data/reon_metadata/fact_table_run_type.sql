-- MySQL dump 10.13  Distrib 8.0.25, for macos11 (x86_64)
--
-- Host: localhost    Database: nightly_mod
-- ------------------------------------------------------
-- Server version	8.0.25


--
-- Dumping data for table `fact_table_run_type`
--

REPLACE INTO `fact_table_run_type` (`id`, `table_id`, `table_type`, `is_full_run`, `is_active`, `id_str`, `table_id_str`) VALUES (1,3,'SUMMARY',0,1,'daily_till_summary_-1000_SUMMARY','daily_till_summary_-1000'),
(2,4,'SUMMARY',0,1,'daily_store_summary_-1000_SUMMARY','daily_store_summary_-1000'),
(3,1,'SUMMARY',0,1,'bill_summary_-1000_SUMMARY','bill_summary_-1000'),
(4,2,'SUMMARY',0,1,'daily_campaign_group_summary_-1000_SUMMARY','daily_campaign_group_summary_-1000'),
(5,1,'FACT',0,1,'bill_lineitems_-1000_FACT','bill_lineitems_-1000'),
(6,6,'FACT',0,1,'customer_summary_-1000_FACT','customer_summary_-1000'),
(7,5,'SUMMARY',0,1,'return_bill_summary_-1000_SUMMARY','return_bill_summary_-1000'),
(8,6,'SUMMARY',0,1,'bill_product_summary_-1000_SUMMARY','bill_product_summary_-1000'),
(9,7,'SUMMARY',0,1,'return_bill_product_summary_-1000_SUMMARY','return_bill_product_summary_-1000'),
(10,8,'SUMMARY',0,1,'daily_product_summary_-1000_SUMMARY','daily_product_summary_-1000'),
(11,11,'FACT',0,1,'response_info_-1000_FACT','response_info_-1000'),
(12,2,'FACT',0,1,'return_bill_lineitem_-1000_FACT','return_bill_lineitem_-1000'),
(13,9,'SUMMARY',0,1,'response_bill_summary_-1000_SUMMARY','response_bill_summary_-1000');


-- Dump completed on 2021-10-27 12:15:32
