-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2021 at 10:33 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yallansadar`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounttype`
--

CREATE TABLE `accounttype` (
  `id` int(11) NOT NULL,
  `En_name` varchar(30) NOT NULL,
  `Ar_name` varchar(30) NOT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `account_type_payment_method`
--

CREATE TABLE `account_type_payment_method` (
  `id` int(11) NOT NULL,
  `accountType_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `annual_input_and_export`
--

CREATE TABLE `annual_input_and_export` (
  `id` int(11) NOT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `En_name` varchar(30) NOT NULL,
  `Ar_name` varchar(30) NOT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `businesstype`
--

CREATE TABLE `businesstype` (
  `id` int(11) NOT NULL,
  `En_name` varchar(30) NOT NULL,
  `Ar_name` varchar(30) NOT NULL,
  `has_subcategory` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `businesstype_subcategory`
--

CREATE TABLE `businesstype_subcategory` (
  `id` int(11) NOT NULL,
  `En_name` varchar(30) NOT NULL,
  `Ar_name` varchar(30) NOT NULL,
  `businessType_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `certificates_and_file`
--

CREATE TABLE `certificates_and_file` (
  `id` int(11) NOT NULL,
  `En_name` varchar(50) NOT NULL,
  `Ar_name` varchar(50) NOT NULL,
  `accountType_id` int(11) NOT NULL,
  `has_A_name` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `En_name` varchar(30) NOT NULL,
  `Ar_name` varchar(30) NOT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `accountType_id` int(11) NOT NULL,
  `businessType_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `establishment_year` date NOT NULL,
  `employees_range_id` int(11) NOT NULL,
  `turnover_id` int(11) NOT NULL,
  `legal_status_id` int(11) NOT NULL,
  `businessType_subcategory_id` int(11) NOT NULL,
  `annual_input_and_export_id` int(11) NOT NULL,
  `import_and_export_percentage_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `company_contacts`
--

CREATE TABLE `company_contacts` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `country_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `company_files`
--

CREATE TABLE `company_files` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `certificates_and_file_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `company_package`
--

CREATE TABLE `company_package` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `packages_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `company_package_feauer`
--

CREATE TABLE `company_package_feauer` (
  `id` int(11) NOT NULL,
  `company_package_id` int(11) NOT NULL,
  `package_features_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `company_package_feauer_usage`
--

CREATE TABLE `company_package_feauer_usage` (
  `id` int(11) NOT NULL,
  `company_package_feauer_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `company_sector`
--

CREATE TABLE `company_sector` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `sector_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `company_service_provider`
--

CREATE TABLE `company_service_provider` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `service_provider_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `company_social_account_information`
--

CREATE TABLE `company_social_account_information` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `social_account_id` int(11) NOT NULL,
  `account_link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `En_name` varchar(30) NOT NULL,
  `ar_name` varchar(30) NOT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT 1,
  `code` varchar(10) NOT NULL,
  `flag` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `En_name` varchar(30) NOT NULL,
  `Ar_name` varchar(30) NOT NULL,
  `icon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employees_range`
--

CREATE TABLE `employees_range` (
  `id` int(11) NOT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `En_name` varchar(50) NOT NULL,
  `Ar_name` varchar(50) NOT NULL,
  `IsActive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `import_and_export_percentage`
--

CREATE TABLE `import_and_export_percentage` (
  `id` int(11) NOT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `legal_status`
--

CREATE TABLE `legal_status` (
  `id` int(11) NOT NULL,
  `En_name` varchar(30) NOT NULL,
  `Ar_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `measure_units`
--

CREATE TABLE `measure_units` (
  `id` int(11) NOT NULL,
  `En_name` varchar(30) NOT NULL,
  `Ar_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `En_name` varchar(50) NOT NULL,
  `Ar_name` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `user_type_id` int(11) NOT NULL,
  `price` double NOT NULL,
  `currency_id` int(11) NOT NULL,
  `duration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `package_features`
--

CREATE TABLE `package_features` (
  `id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `feature_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payments_method`
--

CREATE TABLE `payments_method` (
  `id` int(11) NOT NULL,
  `En_name` varchar(50) NOT NULL,
  `Ar_name` varchar(50) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment_terms`
--

CREATE TABLE `payment_terms` (
  `id` int(11) NOT NULL,
  `En_name` varchar(30) NOT NULL,
  `Ar_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment_type`
--

CREATE TABLE `payment_type` (
  `id` int(11) NOT NULL,
  `En_name` varchar(30) NOT NULL,
  `Ar_name` varchar(30) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ports`
--

CREATE TABLE `ports` (
  `id` int(11) NOT NULL,
  `En_name` varchar(50) NOT NULL,
  `ar_name` varchar(50) NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `proposals_status`
--

CREATE TABLE `proposals_status` (
  `id` int(11) NOT NULL,
  `En_name` varchar(30) NOT NULL,
  `Ar_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rfq`
--

CREATE TABLE `rfq` (
  `id` int(11) NOT NULL,
  `rfq_type` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL,
  `measure_unit_id` int(11) NOT NULL,
  `target_price` double NOT NULL,
  `target_price_for_measure_unit` int(11) NOT NULL,
  `destination_country` int(11) NOT NULL,
  `destination_port` int(11) NOT NULL,
  `product_Image` varchar(255) NOT NULL,
  `sector_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_requirement` text NOT NULL,
  `packaging_details` text NOT NULL,
  `seo_title` varchar(50) NOT NULL,
  `seo_description` text NOT NULL,
  `company_id` int(11) NOT NULL,
  `rfq_status_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rfq_payment_terms`
--

CREATE TABLE `rfq_payment_terms` (
  `id` int(11) NOT NULL,
  `rfq_id` int(11) NOT NULL,
  `payment_term_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rfq_private_details`
--

CREATE TABLE `rfq_private_details` (
  `id` int(11) NOT NULL,
  `rfq_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `exporter_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rfq_proposals`
--

CREATE TABLE `rfq_proposals` (
  `id` int(11) NOT NULL,
  `rfq_id` int(11) NOT NULL,
  `exporter_id` int(11) NOT NULL,
  `fob_price` double NOT NULL,
  `fob_currency` int(11) NOT NULL,
  `fob_unit` int(11) NOT NULL,
  `port_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `delivery_duration_days` int(11) NOT NULL,
  `packaging_details` text NOT NULL,
  `message` text NOT NULL,
  `available_quantity` int(11) NOT NULL,
  `proposals_status_id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rfq_proposals_update`
--

CREATE TABLE `rfq_proposals_update` (
  `id` int(11) NOT NULL,
  `rfq_proposal_id` int(11) NOT NULL,
  `proposals_status_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rfq_service_provider`
--

CREATE TABLE `rfq_service_provider` (
  `id` int(11) NOT NULL,
  `rfq_id` int(11) NOT NULL,
  `sevice_provider_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rfq_service_provider_proposals`
--

CREATE TABLE `rfq_service_provider_proposals` (
  `id` int(11) NOT NULL,
  `rfq_proposal_id` int(11) NOT NULL,
  `company_provider_id` int(11) NOT NULL,
  `sevice_provider_id` int(11) NOT NULL,
  `details` text NOT NULL,
  `delivery_duration_days` int(11) NOT NULL,
  `price` double NOT NULL,
  `status_id` int(11) NOT NULL,
  `currancy_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rfq_service_provider_proposals_update`
--

CREATE TABLE `rfq_service_provider_proposals_update` (
  `id` int(11) NOT NULL,
  `rfq_service_provider_proposals_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `details` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rfq_shaping_terms`
--

CREATE TABLE `rfq_shaping_terms` (
  `id` int(11) NOT NULL,
  `rfq_id` int(11) NOT NULL,
  `shaping_term_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rfq_status`
--

CREATE TABLE `rfq_status` (
  `id` int(11) NOT NULL,
  `En_name` varchar(30) NOT NULL,
  `Ar_name` varchar(30) NOT NULL,
  `color` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sectors`
--

CREATE TABLE `sectors` (
  `id` int(11) NOT NULL,
  `En_name` varchar(50) NOT NULL,
  `Ar_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `services_provider`
--

CREATE TABLE `services_provider` (
  `id` int(11) NOT NULL,
  `En_name` varchar(50) NOT NULL,
  `Ar_name` varchar(50) NOT NULL,
  `En_required_document` varchar(255) NOT NULL,
  `Ar_required_document` varchar(255) NOT NULL,
  `IsMain` tinyint(1) NOT NULL DEFAULT 0,
  `has_document` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `shaping_terms`
--

CREATE TABLE `shaping_terms` (
  `id` int(11) NOT NULL,
  `En_name` varchar(30) NOT NULL,
  `Ar_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` int(11) NOT NULL,
  `En_name` varchar(30) NOT NULL,
  `Ar_name` varchar(30) NOT NULL,
  `icon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `turnover`
--

CREATE TABLE `turnover` (
  `id` int(11) NOT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `second_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `whatsapp` varchar(30) NOT NULL,
  `birthday` date NOT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT 1,
  `password` varchar(255) NOT NULL,
  `userType_id` int(11) NOT NULL,
  `accountType_id` int(11) NOT NULL,
  `IsActive` int(11) NOT NULL DEFAULT 1,
  `verify_link` varchar(255) NOT NULL,
  `IsVerify` tinyint(1) NOT NULL DEFAULT 1,
  `area_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

CREATE TABLE `usertype` (
  `id` int(11) NOT NULL,
  `En_name` varchar(30) NOT NULL,
  `Ar_name` varchar(30) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounttype`
--
ALTER TABLE `accounttype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_type_payment_method`
--
ALTER TABLE `account_type_payment_method`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accountType_id` (`accountType_id`),
  ADD KEY `payment_method_id` (`payment_method_id`);

--
-- Indexes for table `annual_input_and_export`
--
ALTER TABLE `annual_input_and_export`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `businesstype`
--
ALTER TABLE `businesstype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `businesstype_subcategory`
--
ALTER TABLE `businesstype_subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certificates_and_file`
--
ALTER TABLE `certificates_and_file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accountType_id` (`accountType_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `businessType_id` (`businessType_id`),
  ADD KEY `employees_range_id` (`employees_range_id`),
  ADD KEY `turnover_id` (`turnover_id`),
  ADD KEY `company_legal_status_id` (`legal_status_id`),
  ADD KEY `businessType_subcategory_id` (`businessType_subcategory_id`),
  ADD KEY `annual_input_and_export_id` (`annual_input_and_export_id`),
  ADD KEY `import_and_export_percentage_id` (`import_and_export_percentage_id`),
  ADD KEY `accountType_id` (`accountType_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Indexes for table `company_contacts`
--
ALTER TABLE `company_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `company_id` (`company_id`),
  ADD KEY `area_id` (`area_id`);

--
-- Indexes for table `company_files`
--
ALTER TABLE `company_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `certificates_and_file_id` (`certificates_and_file_id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `company_package`
--
ALTER TABLE `company_package`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`),
  ADD KEY `packages_id` (`packages_id`);

--
-- Indexes for table `company_package_feauer`
--
ALTER TABLE `company_package_feauer`
  ADD KEY `company_package_id` (`company_package_id`),
  ADD KEY `package_features_id` (`package_features_id`);

--
-- Indexes for table `company_package_feauer_usage`
--
ALTER TABLE `company_package_feauer_usage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_package_feauer_id` (`company_package_feauer_id`);

--
-- Indexes for table `company_sector`
--
ALTER TABLE `company_sector`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`),
  ADD KEY `sector_id` (`sector_id`);

--
-- Indexes for table `company_service_provider`
--
ALTER TABLE `company_service_provider`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`),
  ADD KEY `service_provider_id` (`service_provider_id`);

--
-- Indexes for table `company_social_account_information`
--
ALTER TABLE `company_social_account_information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_account_id` (`social_account_id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees_range`
--
ALTER TABLE `employees_range`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `import_and_export_percentage`
--
ALTER TABLE `import_and_export_percentage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `legal_status`
--
ALTER TABLE `legal_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `measure_units`
--
ALTER TABLE `measure_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Indexes for table `package_features`
--
ALTER TABLE `package_features`
  ADD PRIMARY KEY (`id`),
  ADD KEY `package_id` (`package_id`),
  ADD KEY `feature_id` (`feature_id`);

--
-- Indexes for table `payments_method`
--
ALTER TABLE `payments_method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_terms`
--
ALTER TABLE `payment_terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_type`
--
ALTER TABLE `payment_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ports`
--
ALTER TABLE `ports`
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `proposals_status`
--
ALTER TABLE `proposals_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rfq`
--
ALTER TABLE `rfq`
  ADD PRIMARY KEY (`id`),
  ADD KEY `measure_unit_id` (`measure_unit_id`),
  ADD KEY `destination_country` (`destination_country`),
  ADD KEY `destination_port` (`destination_port`),
  ADD KEY `sector_id` (`sector_id`),
  ADD KEY `company_id` (`company_id`),
  ADD KEY `rfq_status_id` (`rfq_status_id`);

--
-- Indexes for table `rfq_payment_terms`
--
ALTER TABLE `rfq_payment_terms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rfq_id` (`rfq_id`),
  ADD KEY `payment_term_id` (`payment_term_id`);

--
-- Indexes for table `rfq_private_details`
--
ALTER TABLE `rfq_private_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rfq_id` (`rfq_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `exporter_id` (`exporter_id`);

--
-- Indexes for table `rfq_proposals`
--
ALTER TABLE `rfq_proposals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rfq_id` (`rfq_id`),
  ADD KEY `exporter_id` (`exporter_id`),
  ADD KEY `fob_currency` (`fob_currency`),
  ADD KEY `fob_unit` (`fob_unit`),
  ADD KEY `port_id` (`port_id`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `proposals_status_id` (`proposals_status_id`);

--
-- Indexes for table `rfq_proposals_update`
--
ALTER TABLE `rfq_proposals_update`
  ADD PRIMARY KEY (`id`),
  ADD KEY `proposals_status_id` (`proposals_status_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `rfq_service_provider`
--
ALTER TABLE `rfq_service_provider`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rfq_id` (`rfq_id`),
  ADD KEY `sevice_provider_id` (`sevice_provider_id`);

--
-- Indexes for table `rfq_service_provider_proposals`
--
ALTER TABLE `rfq_service_provider_proposals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rfq_proposal_id` (`rfq_proposal_id`),
  ADD KEY `company_provider_id` (`company_provider_id`),
  ADD KEY `sevice_provider_id` (`sevice_provider_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `currancy_id` (`currancy_id`);

--
-- Indexes for table `rfq_service_provider_proposals_update`
--
ALTER TABLE `rfq_service_provider_proposals_update`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rfq_service_provider_proposals_id` (`rfq_service_provider_proposals_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `rfq_shaping_terms`
--
ALTER TABLE `rfq_shaping_terms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rfq_id` (`rfq_id`),
  ADD KEY `shaping_term_id` (`shaping_term_id`);

--
-- Indexes for table `rfq_status`
--
ALTER TABLE `rfq_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sectors`
--
ALTER TABLE `sectors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services_provider`
--
ALTER TABLE `services_provider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shaping_terms`
--
ALTER TABLE `shaping_terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `turnover`
--
ALTER TABLE `turnover`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userType_id` (`userType_id`),
  ADD KEY `area_id` (`area_id`),
  ADD KEY `accountType_id` (`accountType_id`);

--
-- Indexes for table `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounttype`
--
ALTER TABLE `accounttype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_type_payment_method`
--
ALTER TABLE `account_type_payment_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `annual_input_and_export`
--
ALTER TABLE `annual_input_and_export`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `businesstype`
--
ALTER TABLE `businesstype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `businesstype_subcategory`
--
ALTER TABLE `businesstype_subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certificates_and_file`
--
ALTER TABLE `certificates_and_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_contacts`
--
ALTER TABLE `company_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_files`
--
ALTER TABLE `company_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_package`
--
ALTER TABLE `company_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_package_feauer_usage`
--
ALTER TABLE `company_package_feauer_usage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_sector`
--
ALTER TABLE `company_sector`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_service_provider`
--
ALTER TABLE `company_service_provider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_social_account_information`
--
ALTER TABLE `company_social_account_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees_range`
--
ALTER TABLE `employees_range`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `import_and_export_percentage`
--
ALTER TABLE `import_and_export_percentage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `legal_status`
--
ALTER TABLE `legal_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `measure_units`
--
ALTER TABLE `measure_units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `package_features`
--
ALTER TABLE `package_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments_method`
--
ALTER TABLE `payments_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_terms`
--
ALTER TABLE `payment_terms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_type`
--
ALTER TABLE `payment_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `proposals_status`
--
ALTER TABLE `proposals_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rfq`
--
ALTER TABLE `rfq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rfq_payment_terms`
--
ALTER TABLE `rfq_payment_terms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rfq_private_details`
--
ALTER TABLE `rfq_private_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rfq_proposals`
--
ALTER TABLE `rfq_proposals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rfq_proposals_update`
--
ALTER TABLE `rfq_proposals_update`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rfq_service_provider`
--
ALTER TABLE `rfq_service_provider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rfq_service_provider_proposals`
--
ALTER TABLE `rfq_service_provider_proposals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rfq_service_provider_proposals_update`
--
ALTER TABLE `rfq_service_provider_proposals_update`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rfq_shaping_terms`
--
ALTER TABLE `rfq_shaping_terms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rfq_status`
--
ALTER TABLE `rfq_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sectors`
--
ALTER TABLE `sectors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services_provider`
--
ALTER TABLE `services_provider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shaping_terms`
--
ALTER TABLE `shaping_terms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_accounts`
--
ALTER TABLE `social_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `turnover`
--
ALTER TABLE `turnover`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usertype`
--
ALTER TABLE `usertype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_type_payment_method`
--
ALTER TABLE `account_type_payment_method`
  ADD CONSTRAINT `account_type_payment_method_ibfk_1` FOREIGN KEY (`accountType_id`) REFERENCES `accounttype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `account_type_payment_method_ibfk_2` FOREIGN KEY (`payment_method_id`) REFERENCES `payments_method` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `areas`
--
ALTER TABLE `areas`
  ADD CONSTRAINT `areas_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_ibfk_1` FOREIGN KEY (`accountType_id`) REFERENCES `accounttype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `companies_ibfk_10` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `companies_ibfk_2` FOREIGN KEY (`employees_range_id`) REFERENCES `employees_range` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `companies_ibfk_3` FOREIGN KEY (`businessType_id`) REFERENCES `businesstype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `companies_ibfk_4` FOREIGN KEY (`turnover_id`) REFERENCES `turnover` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `companies_ibfk_5` FOREIGN KEY (`legal_status_id`) REFERENCES `legal_status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `companies_ibfk_6` FOREIGN KEY (`businessType_subcategory_id`) REFERENCES `businesstype_subcategory` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `companies_ibfk_7` FOREIGN KEY (`import_and_export_percentage_id`) REFERENCES `import_and_export_percentage` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `companies_ibfk_8` FOREIGN KEY (`annual_input_and_export_id`) REFERENCES `annual_input_and_export` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `companies_ibfk_9` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `company_contacts`
--
ALTER TABLE `company_contacts`
  ADD CONSTRAINT `company_contacts_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `company_contacts_ibfk_2` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `company_contacts_ibfk_3` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`);

--
-- Constraints for table `company_files`
--
ALTER TABLE `company_files`
  ADD CONSTRAINT `company_files_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `company_files_ibfk_2` FOREIGN KEY (`certificates_and_file_id`) REFERENCES `certificates_and_file` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `company_sector`
--
ALTER TABLE `company_sector`
  ADD CONSTRAINT `company_sector_ibfk_1` FOREIGN KEY (`sector_id`) REFERENCES `sectors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `company_sector_ibfk_2` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `company_service_provider`
--
ALTER TABLE `company_service_provider`
  ADD CONSTRAINT `company_service_provider_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `company_service_provider_ibfk_2` FOREIGN KEY (`service_provider_id`) REFERENCES `services_provider` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `company_social_account_information`
--
ALTER TABLE `company_social_account_information`
  ADD CONSTRAINT `company_social_account_information_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `company_social_account_information_ibfk_2` FOREIGN KEY (`social_account_id`) REFERENCES `social_accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ports`
--
ALTER TABLE `ports`
  ADD CONSTRAINT `ports_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`userType_id`) REFERENCES `usertype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_ibfk_3` FOREIGN KEY (`accountType_id`) REFERENCES `accounttype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
