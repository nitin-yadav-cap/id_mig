-- MySQL dump 10.13  Distrib 8.0.25, for macos11 (x86_64)
--
-- Host: localhost    Database: nightly_mod
-- ------------------------------------------------------
-- Server version	8.0.25


--
-- Dumping data for table `provider_tables`
--

REPLACE INTO `provider_tables` (`id`, `provider_id`, `name`, `provider_id_str`, `id_str`) VALUES (1,1,'zone_tills','intouch','zone_tills'),
(3,1,'customer_slab','intouch','customer_slab'),
(4,1,'concept_tills','intouch','concept_tills'),
(5,1,'org_unit_tills','intouch','org_unit_tills'),
(6,1,'inventory_items','intouch','inventory_items'),
(7,1,'points_promotions','intouch','points_promotions'),
(8,1,'points_category','intouch','points_category'),
(9,1,'coupon_series','intouch','coupon_series'),
(11,1,'campaigns','intouch','campaigns'),
(12,1,'users','intouch','users'),
(13,1,'gateway','intouch','gateway'),
(14,1,'campaign_groups','intouch','campaign_groups'),
(15,1,'call_tasks','intouch','call_tasks'),
(16,1,'customer_slab_changes_history','intouch','customer_slab_changes_history'),
(17,1,'inventory_item_attributes','intouch','inventory_item_attributes'),
(19,1,'lineitem_special_type','intouch','lineitem_special_type'),
(20,1,'brand_hierarchy','intouch','brand_hierarchy'),
(22,1,'click_event','intouch','click_event'),
(23,1,'channel_accounts','intouch','channel_accounts'),
(24,1,'cashier','intouch','cashier'),
(26,1,'lineitem_booking_type','intouch','lineitem_booking_type'),
(27,1,'lineitem_cashier_discount_reason','intouch','lineitem_cashier_discount_reason'),
(28,1,'lineitem_cashier','intouch','lineitem_cashier'),
(29,1,'lineitem_external_coupon_code','intouch','lineitem_external_coupon_code'),
(30,1,'lineitem_return_reason','intouch','lineitem_return_reason'),
(31,1,'user_subscription','intouch','user_subscription'),
(32,1,'standard_units','intouch','standard_units'),
(33,1,'bank_name','intouch','bank_name'),
(34,1,'card_number','intouch','card_number'),
(35,1,'coupon_code','intouch','coupon_code'),
(36,1,'coupon_type_code','intouch','coupon_type_code'),
(37,1,'payment_mode','intouch','payment_mode'),
(38,1,'bank_detail','intouch','bank_detail'),
(39,1,'pm_promotions','intouch','pm_promotions'),
(40,1,'payment_name','intouch','payment_name'),
(41,1,'pm_bank_detail','intouch','pm_bank_detail'),
(42,1,'pm_promotion_name','intouch','pm_promotion_name'),
(43,1,'pm_payment_name','intouch','pm_payment_name'),
(44,1,'issue_type','intouch','issue_type'),
(45,1,'admin_users','intouch','admin_users'),
(46,1,'reported_by','intouch','reported_by'),
(47,1,'custom_fields_info','intouch','custom_fields_info'),
(48,1,'bank_name_246','intouch','bank_name_246'),
(49,1,'card_type_117','intouch','card_type_117'),
(50,1,'campaign_msg','intouch','campaign_msg'),
(51,1,'task_statuses','intouch','task_statuses'),
(52,1,'timeline','intouch','timeline'),
(53,1,'timeline_milestone','intouch','timeline_milestone'),
(54,1,'timeline_phase','intouch','timeline_phase'),
(55,1,'timeline_org_config','intouch','timeline_org_config'),
(56,1,'product_brand','intouch','product_brand'),
(57,1,'product_category','intouch','product_category'),
(58,1,'lead_reasons','intouch','lead_reasons'),
(59,1,'payment_attributes','intouch','payment_attributes'),
(60,1,'payment_attribute_bridge','intouch','payment_attribute_bridge'),
(61,1,'cashier_discount_reason','intouch','cashier_discount_reason'),
(62,1,'buyer_type','intouch','buyer_type'),
(63,1,'membership_card_present','intouch','membership_card_present'),
(64,1,'jewellery_type','intouch','jewellery_type'),
(65,1,'item_discount_type','intouch','item_discount_type'),
(66,1,'item_jewellery_type','intouch','item_jewellery_type'),
(67,1,'item_diamond_color','intouch','item_diamond_color'),
(68,1,'item_diamond_clarity','intouch','item_diamond_clarity'),
(69,1,'item_order_status','intouch','item_order_status'),
(70,1,'lineitem_tax_code','intouch','lineitem_tax_code'),
(71,1,'lineitem_promotion_code','intouch','lineitem_promotion_code'),
(72,1,'game_card_number','intouch','game_card_number'),
(73,1,'ship_country','intouch','ship_country'),
(81,1,'staff_users','intouch','staff_users'),
(86,1,'leads_sub_status','intouch','leads_sub_status'),
(87,1,'cashier_name','intouch','cashier_name'),
(96,1,'transaction_external_coupon_code','intouch','transaction_external_coupon_code'),
(97,1,'transaction_external_coupon_title','intouch','transaction_external_coupon_title'),
(98,1,'service_associate_feedback','intouch','service_associate_feedback'),
(99,1,'store_ambience_feedback','intouch','store_ambience_feedback'),
(100,1,'value_for_money','intouch','value_for_money'),
(101,1,'wide_range_available','intouch','wide_range_available'),
(102,1,'latest_trend_available','intouch','latest_trend_available'),
(103,1,'lead_buying_for','intouch','lead_buying_for'),
(104,1,'lead_trial_period','intouch','lead_trial_period'),
(105,1,'lead_status_type','intouch','lead_status_type'),
(106,1,'lead_lead_source','intouch','lead_lead_source'),
(107,1,'lead_visit_type','intouch','lead_visit_type'),
(108,1,'lead_trial_status','intouch','lead_trial_status'),
(109,1,'lead_purchase_decision_factors','intouch','lead_purchase_decision_factors'),
(110,1,'transaction_trading_calendar_year','intouch','transaction_trading_calendar_year'),
(111,1,'transaction_trading_calendar_week','intouch','transaction_trading_calendar_week'),
(112,1,'transaction_trading_calendar_period','intouch','transaction_trading_calendar_period'),
(113,1,'device','intouch','device'),
(114,1,'booking_source','intouch','booking_source'),
(115,1,'reservation_type','intouch','reservation_type'),
(116,1,'booking_package','intouch','booking_package'),
(117,1,'booking_source_category','intouch','booking_source_category'),
(118,1,'booked_by','intouch','booked_by'),
(119,1,'ticket_class','intouch','ticket_class'),
(120,1,'show_type','intouch','show_type'),
(121,1,'screen_name','intouch','screen_name'),
(122,1,'viewership_certificate','intouch','viewership_certificate'),
(123,1,'genre','intouch','genre'),
(124,1,'credit_rate','intouch','credit_rate'),
(125,1,'credit_utilization_campaign','intouch','credit_utilization_campaign'),
(126,1,'star_rating','intouch','star_rating'),
(127,1,'program','intouch','program'),
(128,1,'users_pid_tmp','intouch','users_pid_tmp'),
(129,1,'email_links_redirection','intouch','email_links_redirection'),
(130,1,'txn_ef_floor_no','intouch','txn_ef_floor_no'),
(131,1,'tmall_sku_id','intouch','tmall_sku_id'),
(132,1,'lineitem_external_coupon_title','intouch','lineitem_external_coupon_title'),
(133,1,'machine_model_name','intouch','machine_model_name'),
(134,1,'machine_model_number','intouch','machine_model_number'),
(135,1,'card_used','intouch','card_used'),
(136,1,'card_series','intouch','card_series'),
(137,1,'entity_status_label','intouch','entity_status_label'),
(138,1,'item_service_type','intouch','item_service_type'),
(139,1,'price_override_applied','intouch','price_override_applied'),
(145,1,'order_channel_name','intouch','order_channel_name'),
(146,1,'bda_id','intouch','bda_id'),
(147,1,'lineitem_hsn_number','intouch','lineitem_hsn_number'),
(150,1,'promotion_meta','intouch','promotion_meta'),
(151,1,'boarding_status','intouch','boarding_status'),
(152,1,'product_class','intouch','product_class'),
(153,1,'entity_status_meta','intouch','entity_status_meta'),
(154,1,'partner_programs','intouch','partner_programs'),
(155,1,'benefits','intouch','benefits'),
(156,1,'rtn_txn_external_coupon_title','intouch','rtn_txn_external_coupon_title'),
(157,1,'rtn_line_external_coupon_title','intouch','rtn_line_external_coupon_title'),
(158,1,'card_vehicle_type','intouch','card_vehicle_type'),
(159,1,'order_sub_channel','intouch','order_sub_channel'),
(160,1,'delayed_delivery','intouch','delayed_delivery');

REPLACE INTO `provider_tables` (`id`, `provider_id`, `name`, `provider_id_str`, `id_str`) 
VALUES (161,1,'fleet_groups','intouch','fleet_groups'),
(162,1,'fleet_company','intouch','fleet_company'),
(163,1,'fleet_hierarchy_roles','intouch','fleet_hierarchy_roles');


-- Dump completed on 2021-12-03 21:25:39