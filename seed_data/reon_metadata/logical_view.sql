-- MySQL dump 10.13  Distrib 8.0.25, for macos11 (x86_64)
--
-- Host: localhost    Database: nightly_mod
-- ------------------------------------------------------
-- Server version	8.0.25


--
-- Dumping data for table `logical_view`
--

REPLACE INTO `logical_view` (`id`, `name`, `src_table_type`, `select_table_id`, `view_pk_cols`, `is_active`, `scope_id`, `select_table_id_str`, `id_str`, `view_pk_cols_str`) VALUES (1,'customer_summary_view','FACT',6,'1',1,-1000,'customer_summary_-1000','customer_summary_view_customer_summary_-1000','customer_summary_view_customer_summary_-1000_user_id');



-- Dump completed on 2021-11-30 18:29:20
