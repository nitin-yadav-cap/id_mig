-- MySQL dump 10.13  Distrib 8.0.25, for macos11 (x86_64)
--
-- Host: localhost    Database: nightly_mod
-- ------------------------------------------------------
-- Server version	8.0.25


--
-- Dumping data for table `dimension_etl_data_status`
--

REPLACE INTO `dimension_etl_data_status` (`id`, `scope_id`, `dim_table_id`, `value_id`, `value_name`, `is_active`, `updated_on`, `dim_table_id_str`) VALUES (1,-1000,-1000,-10001,'NOT-CAPTURED',1,'2021-10-27 06:29:13','-1000'),
(2,-1000,-1000,-10002,'INVALID',1,'2021-10-27 06:29:13','-1000'),
(3,-1000,-1000,-10003,'NOT-APPLICABLE',1,'2021-10-27 06:29:13','-1000'),
(4,-1000,4,-10003,'not-interested',1,'2021-10-27 06:29:13','users_-1000'),
(5,-1000,74,-1,'INSTORE',1,'2021-10-27 06:29:13','channel_account_-1000'),
(6,-1000,33,-10002,'Capillary_Gateway',1,'2021-10-27 06:29:13','gateway_-1000'),
(7,-1000,14,-1,'TRANSACTIONAL',1,'2021-10-27 06:29:13','campaigns_-1000'),
(8,-1000,14,-20,'CAMPAIGN_PREVIEW',1,'2021-10-27 06:29:13','campaigns_-1000'),
(9,-1000,14,-30,'CAMPAIGN_STICKY_LIST',1,'2021-10-27 06:29:13','campaigns_-1000'),
(10,200067,14,-1,'NOT-APPLICABLE',1,'2021-10-27 06:29:13','campaigns_-1000');


-- Dump completed on 2021-10-27 12:15:31
