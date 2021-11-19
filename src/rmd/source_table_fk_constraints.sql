CREATE TABLE `source_table_fk_constraints` (
  `id` int NOT NULL AUTO_INCREMENT,
  `constraint_name` varchar(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_id` int NOT NULL,
  `ordinal_position` int NOT NULL DEFAULT '1',
  `ref_col_id` int NOT NULL DEFAULT '-1',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `scope_id` int NOT NULL DEFAULT '-1000',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_col_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `column_ref_col` (`column_id`,`ref_col_id`)
) ENGINE=InnoDB;