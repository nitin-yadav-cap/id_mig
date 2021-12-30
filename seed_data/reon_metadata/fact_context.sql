-- MySQL dump 10.13  Distrib 8.0.25, for macos11 (x86_64)
--
-- Host: localhost    Database: nightly_mod
-- ------------------------------------------------------
-- Server version	8.0.25

-- Dumping data for table `fact_context`
--

REPLACE INTO `fact_context` (`id`, `fact_table_id`, `context_key`, `is_active`, `derive_expresion`, `id_str`, `fact_table_id_str`) VALUES (1,1,'dim_ou_id',1,'dimension.org_unit_tills.ou_id','bill_lineitems_-1000_dim_ou_id','bill_lineitems_-1000'),
(2,2,'dim_ou_id',1,'dimension.org_unit_tills.ou_id','return_bill_lineitem_-1000_dim_ou_id','return_bill_lineitem_-1000'),
(3,5,'dim_ou_id',1,'dimension.org_unit_tills.ou_id','points_-1000_dim_ou_id','points_-1000'),
(4,11,'dim_ou_id',1,'dimension.org_unit_tills.ou_id','response_info_-1000_dim_ou_id','response_info_-1000'),
(5,12,'dim_ou_id',1,'dimension.org_unit_tills.ou_id','coupons_-1000_dim_ou_id','coupons_-1000'),
(6,3,'dim_ou_id',1,'dimension.org_unit_tills.ou_id','bill_dump_bill_lineitems_-1000_dim_ou_id','bill_dump_bill_lineitems_-1000'),
(7,8,'dim_ou_id',1,'dimension.campaigns.ou_id','contact_info_-1000_dim_ou_id','contact_info_-1000');


-- Dump completed on 2021-10-27 12:15:32
