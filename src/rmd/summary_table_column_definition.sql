CREATE TABLE `summary_table_column_definition` (
  `id` int NOT NULL AUTO_INCREMENT,
  `column_id` int NOT NULL,
  `logical_summary_table_id` int NOT NULL,
  `scope_id` int NOT NULL DEFAULT '-1000',
  `src_table_type` enum('FACT','SUMMARY') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `select_table_id` int NOT NULL,
  `select_col_id` int NOT NULL,
  `udaf` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `filters` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logical_summary_table_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `select_table_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `select_col_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `column_scope` (`column_id`,`scope_id`)
) ENGINE=InnoDB;