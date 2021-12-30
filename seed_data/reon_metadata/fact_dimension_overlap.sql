-- MySQL dump 10.13  Distrib 8.0.25, for macos11 (x86_64)
--
-- Host: localhost    Database: nightly_mod
-- ------------------------------------------------------
-- Server version	8.0.25

--
-- Dumping data for table `fact_dimension_overlap`
--

REPLACE INTO `fact_dimension_overlap` (`id`, `name`, `fact_table_id`, `dim_id`, `overlap_on_id`, `overlap_on_type`, `dim_col_id`, `is_active`, `scope_id`, `fact_table_id_str`, `dim_col_id_str`, `overlap_on_id_str`, `dim_id_str`) VALUES (1,'bill_item_bill_id',1,5,8,'PK',NULL,1,-1000,'bill_lineitems_-1000','','bill_lineitems_-1000_bill_id','item_-1000'),
(2,'bill_item_user',1,5,3,'DIMENSION',16,1,-1000,'bill_lineitems_-1000','users_-1000_user_id_-1000','event_user_-1000','item_-1000');


-- Dump completed on 2021-11-30 18:29:20
