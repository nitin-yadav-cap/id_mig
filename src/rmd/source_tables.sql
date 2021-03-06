CREATE TABLE `source_tables` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `scope_id` int DEFAULT '-1000',
  `end_point_id` int NOT NULL,
  `is_sharded` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `partition_key_column` int DEFAULT NULL COMMENT 'NULL IF THERE IS NO PARTITION KEY',
  `timestamp_column` int DEFAULT NULL,
  `pkey_columns` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filter_expression` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_hive_table_enabled` tinyint DEFAULT '1',
  `has_dynamic_schema` tinyint(1) NOT NULL DEFAULT '0',
  `id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_point_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partition_key_column_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp_column_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkey_columns_str` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_end_point` (`name`,`end_point_id`)
) ENGINE=InnoDB;