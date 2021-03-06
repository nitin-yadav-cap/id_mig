CREATE TABLE `external_flat_dimension_columns` (
  `column_id` int NOT NULL AUTO_INCREMENT,
  `dim_table_id` int NOT NULL,
  `column_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_type` enum('PK','VALUE','ATTRIBUTE','DATE_ATTRIBUTE','TIME_ATTRIBUTE','ALIAS','NONE') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NONE',
  `scope_id` int NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `data_type` enum('TEXT','NUMBER','BIGNUMBER','BOOLEAN','DATE','TIME') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'TEXT',
  `value_col_scope` enum('CAP','ORG') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ORG',
  `display_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `usability_type` enum('DUMP_ONLY','PARTIAL_KEY','SELECT','FILTER','GROUP') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'SELECT',
  `functional_dependency_column` int DEFAULT NULL,
  `unique_value_dependent_column` int DEFAULT NULL,
  `attr_table_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_attr_value_table_present` tinyint(1) NOT NULL DEFAULT '0',
  `computation_type` enum('ETL','VIEW') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ETL',
  `location_table_type` enum('FACT','DIMENSION','VIEW','ATTR') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ATTR',
  `location_type_entity_id` int DEFAULT NULL,
  `scd_type` enum('NONE','SOURCE_GENERATED','ETL_GENERATED','VERSIONED_PARTITIONS') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NONE',
  `scd_table_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `column_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dim_table_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `functional_dependency_column_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unique_value_dependent_column_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type_entity_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`column_id`),
  UNIQUE KEY `dim_table_id_column_name` (`dim_table_id`,`scope_id`,`column_name`)
) ENGINE=InnoDB;