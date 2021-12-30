-- MySQL dump 10.13  Distrib 8.0.25, for macos11 (x86_64)
--
-- Host: localhost    Database: nightly_mod
-- ------------------------------------------------------
-- Server version	8.0.25


--
-- Dumping data for table `scd_dimension_columns`
--

REPLACE INTO `scd_dimension_columns` (`column_id`, `dim_table_id`, `column_name`, `column_type`, `scope_id`, `is_active`, `data_type`, `value_col_scope`, `display_name`, `usability_type`, `functional_dependency_column`, `unique_value_dependent_column`, `attr_table_name`, `is_attr_value_table_present`, `computation_type`, `location_table_type`, `location_type_entity_id`, `column_id_str`, `dim_table_id_str`, `functional_dependency_column_str`, `unique_value_dependent_column_str`, `location_type_entity_id_str`) VALUES (1,39,'user','PK',-1000,1,'BIGNUMBER','ORG',NULL,'SELECT',1,NULL,NULL,0,'ETL','DIMENSION',NULL,'customer_slab_duration_-1000_user_-1000','customer_slab_duration_-1000','customer_slab_duration_-1000_user_-1000','',''),
(2,39,'slab','CHANGING_ATTRIBUTE',-1000,1,'TEXT','ORG',NULL,'SELECT',2,NULL,NULL,0,'ETL','DIMENSION',NULL,'customer_slab_duration_-1000_slab_-1000','customer_slab_duration_-1000','customer_slab_duration_-1000_slab_-1000','',''),
(3,39,'start_date','DATE_ATTRIBUTE',-1000,1,'TEXT','ORG',NULL,'SELECT',3,NULL,NULL,0,'ETL','DIMENSION',NULL,'customer_slab_duration_-1000_start_date_-1000','customer_slab_duration_-1000','customer_slab_duration_-1000_start_date_-1000','',''),
(4,39,'end_date','DATE_ATTRIBUTE',-1000,1,'TEXT','ORG',NULL,'SELECT',4,NULL,NULL,0,'ETL','DIMENSION',NULL,'customer_slab_duration_-1000_end_date_-1000','customer_slab_duration_-1000','customer_slab_duration_-1000_end_date_-1000','',''),
(5,39,'is_active','ATTRIBUTE',-1000,1,'NUMBER','ORG',NULL,'SELECT',5,NULL,NULL,0,'ETL','DIMENSION',NULL,'customer_slab_duration_-1000_is_active_-1000','customer_slab_duration_-1000','customer_slab_duration_-1000_is_active_-1000','',''),
(11,39,'start_time','TIME_ATTRIBUTE',-1000,1,'TEXT','ORG',NULL,'SELECT',11,NULL,NULL,0,'ETL','DIMENSION',NULL,'customer_slab_duration_-1000_start_time_-1000','customer_slab_duration_-1000','customer_slab_duration_-1000_start_time_-1000','',''),
(12,39,'end_time','TIME_ATTRIBUTE',-1000,1,'TEXT','ORG',NULL,'SELECT',12,NULL,NULL,0,'ETL','DIMENSION',NULL,'customer_slab_duration_-1000_end_time_-1000','customer_slab_duration_-1000','customer_slab_duration_-1000_end_time_-1000','','');


-- Dump completed on 2021-10-27 12:15:34
