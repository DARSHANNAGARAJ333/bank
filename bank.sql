-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2024 at 05:15 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `area` varchar(200) NOT NULL,
  `number` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `services` varchar(1000) NOT NULL,
  `num` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`area`, `number`, `email`, `address`, `services`, `num`) VALUES
('Banashankari', '8455768869', 'BOIBanashankari@gmail.com', '#44 22th main Banashankari', 'Checking account. When you\'re thinking about what services banks provide, a checking account may be the first thing you think of. ...\r\nSavings account. ...\r\nMoney market account (MMA) ...\r\nCertificate of deposit (CD) ...\r\nDebit card. ...\r\nCredit card.', 4),
('Devanahalli', '9334534221', 'bioDevanahalli@gmail.com', '#123 2nd main Devanahalli', 'Accounts: Banks offer checking and savings accounts, as well as overdraft services. \r\nCards: Banks issue credit and debit cards. \r\nDigital banking: Banks provide digital banking services that allow customers to conduct banking transactions online using electronic devices. Digital banking can include fund transfers that can be done without checks or demand drafts', 7),
('Indiranagar', '6578667732', 'boiIndiranagar@gmail.con', '#223 3rd cross 4th main Indiranagar', 'Advancements of loans.\r\nCheque payments.\r\nDiscounting on bills of exchange.\r\nCollecting and paying the credit instruments.\r\nGuarantee by banks.\r\nConsultancy.\r\nCredit cards.\r\nFunds remittance.', 6),
('jj nagar', '7354677823', 'biojjnagar@gmail.com', '#234 4th cross 1st main jj nagar', 'Deposit and loans: Banks take deposits and provide loans of different types. \r\nAccounts: Banks offer checking and savings accounts, as well as overdraft services. \r\nCards: Banks issue credit and debit cards. \r\nDigital banking: Banks provide digital banking services that allow customers to conduct banking transactions online using electronic devices. Digital banking can include fund transfers that can be done without checks or demand drafts. \r\nOther services: Banks may also offer services such as wealth management, mortgage services, bill discounting, and consultancy. \r\n', 9),
('JP NAGAR', '9334534221', 'boijpnagar@gmail.com', '#343 2th main D block jp nagar mysure', 'Deposit and loans: Banks take deposits and provide loans of different types. \r\nAccounts: Banks offer checking and savings accounts, as well as overdraft services. \r\nCards: Banks issue credit and debit cards. \r\nDigital banking: Banks provide digital banking services that allow customers to conduct banking transactions online using electronic devices. Digital banking can include fund transfers that can be done without checks or demand drafts.', 0),
('RAJIV LAYOUT', '7685645298', 'BOIRAGIVLAYOUT@GMAIL.COM', '#32 20TH CROSS D BLOCK RAJIV NAGAJ', 'Digital banking: Banks provide digital banking services that allow customers to conduct banking transactions online using electronic devices. Digital banking can include fund transfers that can be done without checks or demand drafts. \r\nDeposit and loans: Banks take deposits and provide loans of different types. \r\nAccounts: Banks offer checking and savings accounts, as well as overdraft services. \r\nCards: Banks issue credit and debit cards', 3),
('RR PURAM', '8455768869', 'boirrpuram@gmail.com', '#123 2nd main rr puram', 'Advancements of loans.\r\nCheque payments.\r\nDiscounting on bills of exchange.\r\nCollecting and paying the credit instruments.\r\nGuarantee by banks.', 1),
('Sarjapur', '8345234576', 'bioSarjapur@gmail.com', '#434 3rd main Sarjapur', 'Discounting on bills of exchange.\r\nCollecting and paying the credit instruments.\r\nGuarantee by banks.\r\nConsultancy.\r\nCredit cards.\r\nFunds remittance.', 8),
('VIJAY NAGAR', '8345234576', 'BOIVIJAYNAGAR@GMAIL.COM', '#77 2ND MAIN 3RD CROSS VIJAY NAGAR', 'deposit cash.\r\nwithdraw cash.\r\ntransfer money into an account.\r\ncarry out standing orders.\r\ncarry out direct debits.\r\npay with a payment card or a similar payment method.', 2),
('Whitefield', '9966775544', 'boiWhitefield@gmail.com', '#56 3rd cross 4th main Whitefield', 'Deposit and loans: Banks take deposits and provide loans of different types. \r\nAccounts: Banks offer checking and savings accounts, as well as overdraft services. \r\nCards: Banks issue credit and debit cards. \r\nDigital banking: Banks provide digital banking services that allow customers to conduct banking transactions online using electronic devices. Digital banking can include fund transfers that can be done without checks or demand drafts. \r\n', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`area`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
