-- MySQL dump 10.13  Distrib 8.0.25, for macos11 (x86_64)
--
-- Host: localhost    Database: nightly_mod
-- ------------------------------------------------------
-- Server version	8.0.25


--
-- Dumping data for table `summary_condition`
--

REPLACE INTO `summary_condition` (`id`, `name`, `tableType`, `refTableId`, `column_id`, `operator`, `condition_value`, `is_active`, `scope_id`, `id_str`, `refTableId_str`, `column_id_str`) VALUES (1,'sent_status','DIMENSION',249,697,'IN','(\'INVALID\',\'NOT-CAPTURED\',\'Bounced\',\'Clicked\',\'Delivered\',\'Marked Spam\',\'Not Delivered\',\'Opened\',\'Sent\',\'NOT-APPLICABLE\')',1,-1000,'sent_status_campaign_delivery_status_-1000_DIMENSION_-1000','campaign_delivery_status_-1000','campaign_delivery_status_-1000_campaign_legend_lebel_-1000'),
(2,'delivery_status','DIMENSION',249,697,'IN','(\'INVALID\',\'NOT-CAPTURED\',\'NOT-APPLICABLE\',\'Bounced\',\'Clicked\',\'Delivered\',\'Marked Spam\',\'Opened\',\'Sent\')',1,-1000,'delivery_status_campaign_delivery_status_-1000_DIMENSION_-1000','campaign_delivery_status_-1000','campaign_delivery_status_-1000_campaign_legend_lebel_-1000'),
(3,'unsubscribed','DIMENSION',101,171,'=','\'OPTED_OUT\'',1,-1000,'unsubscribed_unsubscription_status_-1000_DIMENSION_-1000','unsubscription_status_-1000','unsubscription_status_-1000_status_-1000'),
(4,'coupon_issued','DIMENSION',17,69,'=','\'ISSUED\'',1,-1000,'coupon_issued_coupon_event_type_-1000_DIMENSION_-1000','coupon_event_type_-1000','redeemed_status_-1000_status_-1000'),
(5,'coupon_redeemed','DIMENSION',17,69,'=','\'REDEEMED\'',1,-1000,'coupon_redeemed_coupon_event_type_-1000_DIMENSION_-1000','coupon_event_type_-1000','redeemed_status_-1000_status_-1000'),
(6,'loyalty_bills','DIMENSION',1,34,'=','\'loyalty\'',1,-1000,'loyalty_bills_loyalty_type_-1000_DIMENSION_-1000','loyalty_type_-1000','loyalty_type_-1000_type_-1000'),
(7,'non_loyalty_bills','DIMENSION',1,34,'=','\'non_loyalty\'',1,-1000,'non_loyalty_bills_loyalty_type_-1000_DIMENSION_-1000','loyalty_type_-1000','loyalty_type_-1000_type_-1000'),
(8,'is_outlier','DIMENSION',9,30,'IN','(\'INTERNAL\', \'FRAUD\', \'OUTLIER\',\'DELETED\')',1,-1000,'is_outlier_bill_outlier_status_-1000_DIMENSION_-1000','bill_outlier_status_-1000','outlier_status_-1000_status_-1000'),
(9,'org_visit_one','FACT',1,13,'=','1',1,-1000,'org_visit_one_bill_lineitems_-1000_FACT_-1000','bill_lineitems_-1000','bill_lineitems_-1000_visit_count'),
(10,'org_visit_day_gt_zero','FACT',1,20,'>','0',1,-1000,'org_visit_day_gt_zero_bill_lineitems_-1000_FACT_-1000','bill_lineitems_-1000','bill_lineitems_-1000_visit_day_count'),
(11,'outlier_status_non_retro','DIMENSION',9,30,'!=','\'RETRO\'',1,-1000,'outlier_status_non_retro_bill_outlier_status_-1000_DIMENSION_-1000','bill_outlier_status_-1000','outlier_status_-1000_status_-1000'),
(12,'not_interested','DIMENSION',65,73,'=','\'not-interested\'',1,-1000,'not_interested_membership_-1000_DIMENSION_-1000','membership_-1000','membership_type_-1000_type_-1000'),
(13,'points_awarded','DIMENSION',28,40,'=','\'POINTS_AWARDED\'',1,-1000,'points_awarded_points_event_type_-1000_DIMENSION_-1000','points_event_type_-1000','points_event_type_-1000_type_-1000'),
(14,'points_deducted','DIMENSION',28,40,'=','\'POINTS_DEDUCTED\'',1,-1000,'points_deducted_points_event_type_-1000_DIMENSION_-1000','points_event_type_-1000','points_event_type_-1000_type_-1000'),
(15,'redeemed_deduction','DIMENSION',64,71,'=','\'REDEEMED\'',1,-1000,'redeemed_deduction_deduction_type_-1000_DIMENSION_-1000','deduction_type_-1000','deduction_type_-1000_type_-1000'),
(16,'org_visit_summary_one','FACT',1,13,'=','1',1,-1000,'org_visit_summary_one_bill_lineitems_-1000_FACT_-1000','bill_lineitems_-1000','bill_lineitems_-1000_visit_count'),
(17,'org_visit_summary_day_gt_zero','FACT',1,20,'>','1',1,-1000,'org_visit_summary_day_gt_zero_bill_lineitems_-1000_FACT_-1000','bill_lineitems_-1000','bill_lineitems_-1000_visit_day_count'),
(18,'expired_deduction','DIMENSION',64,71,'=','\'EXPIRED\'',1,-1000,'expired_deduction_deduction_type_-1000_DIMENSION_-1000','deduction_type_-1000','deduction_type_-1000_type_-1000'),
(19,'returned_deduction','DIMENSION',64,71,'=','\'RETURN\'',1,-1000,'returned_deduction_deduction_type_-1000_DIMENSION_-1000','deduction_type_-1000','deduction_type_-1000_type_-1000'),
(20,'redeemed_points_gt_zero','FACT',1,359,'>','0',1,-1000,'redeemed_points_gt_zero_bill_lineitems_-1000_FACT_-1000','bill_lineitems_-1000','bill_lineitems_-1000_redeemed_points'),
(21,'member_bills','DIMENSION',65,73,'=','\'member\'',1,-1000,'member_bills_membership_-1000_DIMENSION_-1000','membership_-1000','membership_type_-1000_type_-1000'),
(22,'non_member_bills','DIMENSION',65,73,'=','\'not-interested\'',1,-1000,'non_member_bills_membership_-1000_DIMENSION_-1000','membership_-1000','membership_type_-1000_type_-1000'),
(23,'test_group','DIMENSION',85,42,'IN','(\'TEST\')',1,-1000,'test_group_campaign_group_-1000_DIMENSION_-1000','campaign_group_-1000','campaign_group_-1000_group_type_-1000'),
(24,'delivery_applicable_status','DIMENSION',249,697,'IN','(\'INVALID\',\'NOT-CAPTURED\',\'NOT-APPLICABLE\',\'Not Delivered\',\'Bounced\',\'Clicked\',\'Delivered\',\'Marked Spam\',\'Not Delivered\',\'Opened\',\'Sent\')',1,-1000,'delivery_applicable_status_campaign_delivery_status_-1000_DIMENSION_-1000','campaign_delivery_status_-1000','campaign_delivery_status_-1000_campaign_legend_lebel_-1000');



-- Dump completed on 2021-11-30 18:29:20
