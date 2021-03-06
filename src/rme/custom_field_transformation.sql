CREATE TABLE `custom_field_transformation` (
  `custom_table_id` int NOT NULL,
  `meta_src_table_id` int NOT NULL,
  `meta_source_table_filter_expr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_src_join_tables` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `column_select_col_id` int NOT NULL,
  `column_name_col_id` int NOT NULL,
  `column_data_type_col_id` int DEFAULT NULL,
  `data_src_table_id` int NOT NULL,
  `data_src_table_filter_expr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `data_src_join_tables` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `data_src_table_primay_dim_src_fk` int NOT NULL,
  `data_src_table_instance_id` int NOT NULL,
  `group_by_col` int NOT NULL,
  `value_col_id` int NOT NULL,
  `condition_col_id` int NOT NULL,
  `is_condition_col_id_based` tinyint(1) NOT NULL DEFAULT '1',
  `is_disabled_src_col_id` int DEFAULT NULL,
  `active_status` enum('ACTIVE','DISABLE') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scope_id` int NOT NULL DEFAULT '-1000',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `added_on` timestamp NULL DEFAULT NULL,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_scope_filter_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `scope_filter_meta_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_src_table_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_source_table_filter_expr_str` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_src_join_tables_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_select_col_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name_col_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_data_type_col_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_src_table_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_src_table_filter_expr_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_src_join_tables_str` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_src_table_primay_dim_src_fk_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_src_table_instance_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_by_col_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value_col_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `condition_col_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_disabled_src_col_id_str` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scope_filter_meta_info_str` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`custom_table_id`)
) ENGINE=InnoDB;