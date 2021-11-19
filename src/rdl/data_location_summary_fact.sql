CREATE TABLE `data_location_summary_fact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `run_id` int NOT NULL,
  `is_full_run` tinyint(1) NOT NULL,
  `run_date` datetime NOT NULL,
  `org_id` int DEFAULT NULL,
  `table_id` int NOT NULL,
  `table_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `partition_value` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_partitions_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_table_schema` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_valid` tinyint(1) NOT NULL DEFAULT '1',
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `table_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `table_data_location` (`org_id`,`table_id`,`partition_value`)
) ENGINE=InnoDB;