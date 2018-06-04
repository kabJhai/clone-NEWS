-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 04, 2018 at 09:53 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `addisfortune`
--

DROP TABLE IF EXISTS `addisfortune`;
CREATE TABLE IF NOT EXISTS `addisfortune` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(200) NOT NULL,
  `Image` text NOT NULL,
  `Data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Title` (`Title`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addisfortune`
--

INSERT INTO `addisfortune` (`id`, `Title`, `Image`, `Data`) VALUES
(4, 'Prime Minister Abiy Reshuffles MeTEC Board', 'https://addisfortune.net/wp-content/uploads/2018/05/Screenshot-2018-05-20-00.37.16.png', 'Labourers working inside the factories of the nation’s first industrial park, Bole Lemi, were on strike for five days starting on May 11, 2018. They are demanding higher pay and a favourable working environment. The...'),
(5, 'Investment for Berbera Port Expansion Dropped by 23pc', 'https://addisfortune.net/wp-content/uploads/2018/05/Megenagna-Intra-Public-Transport-Terminal.jpg', 'O Bon Voyage Architects & Engineers Consultant, a local consultancy firm, hands over the design of Megenagna Intra-City Public Transport Terminal, which was contracted for 3.38 million Br. To be situated in wereda...'),
(6, 'Sabir, Wilmar Wind-up Dispute Amicably', 'https://addisfortune.net/wp-content/uploads/2018/05/SanSheng-Pharmaceutical-Factory.jpg', 'SanSheng Pharmaceutical, a wing of the publicly listed Chongqing Sansheng Industrial Company in China, begins the first phase of production this month amidst a shortage of medical drugs. The pharmaceutical manufacturing...'),
(7, 'Authority Devices First Ever Binding Invoice Format', 'https://addisfortune.net/wp-content/uploads/2018/05/Breathalyser_drinks_driving.jpg', 'Addis Abeba’s Road Traffic Management Agency has procured half a million mouthpieces and 5,000 blow-tuber breathalysers at a total cost of 3.3 million Br. Imported from overseas, they will be distributed in June and...'),
(8, 'Labour Strike Rocks Bole Lemi Industrial Park', 'https://addisfortune.net/wp-content/uploads/2018/05/SherarAddis-inaguration-Amha-g-tsadik_adf.jpg', 'Addis Abeba gets an additional local brand hotel, Sherar Addis, that was constructed for a total of 80 million Br. The hotel is located off Africa Avenue. Under construction for the past four years, the hotel was inau...'),
(9, 'Intra-City Bus Terminal Edges to Break Addis’s Ground', 'https://addisfortune.net/wp-content/themes/smdthemeaddis/thumbnails/editorspick-default-tnail.png', 'Edible oil manufacturers established an association that was officially unveiled on May 17, 2018, at Ras Amba Hotel on Queen Elisabeth II Street. Close to 66 manufacturers were present at the event, while nearly 100 comp...'),
(10, 'Chinese Firm Builds-up Pharma with $85m', 'https://addisfortune.net/wp-content/uploads/2018/05/Screen-Shot-2018-05-19-at-10.35.31-AM.png', 'Bunge SA, an Amsterdam based grain trading company, made the least offer of close to 290 million Br to supply 35,000tn of wheat that will be distributed to beneficiaries under the fourth phase of Productive Safety Net Pr...'),
(11, 'Traffic Accident Marred City to Distribute Breathalysers, Mouthpieces', 'https://addisfortune.net/wp-content/uploads/2018/05/president_mulatu_welcoming_Li_Zhanshu.jpg', 'The Chairman of the Standing Committee of the National People’s Congress of China, Li Zhanshu (centre-left), met with President Mulatu Teshome (PhD) (centre) and Hirut Zemene, state minister for Foreign Affairs (centre...'),
(12, 'Addis Welcomes Sherar Hotel', 'https://addisfortune.net/wp-content/uploads/2018/05/ethiotelecom-1.jpg', 'The government has moved one step forward in liberalising the service part of the telecom industry by outsourcing a local private company to sell fixed-line internet services. Awarding G2G Clarity IT Solutions S.C for...'),
(13, 'Edible Oil Producers Cook Up an Association', 'https://addisfortune.net/wp-content/uploads/2018/05/Sheikh-Mohammed-Hussein-Ali-Al-Amoudi.jpg', 'The recent heated dispute and controversy over the extension of Midroc Gold’s concession period to extract gold in Lege Dembi, Guji Zone in the Oromia Regional State for an additional 10 years ended with the suspending...'),
(14, 'Bunge SA Proffers Least Price to Supply Wheat for Humanitarian Relief', 'https://addisfortune.net/wp-content/uploads/2018/05/coca_cola_ambo_water_deal.jpg', '  The legal battle the bottlers of Coca-Cola and Ambo Mineral Water are having with the prosecutors of the Trade Competition & Consumer Protection Authority set out for another trial as the appellate tribunal...'),
(15, 'Forward Together', 'https://addisfortune.net/wp-content/themes/smdthemeaddis/thumbnails/editorspick-default-tnail.png', 'The Ethiopian Revenues & Costumes Authority (ERCA) ordered all the private banks and the Commercial Bank of Ethiopia (CBE) to collect and pay taxes from the fringe benefits they have been providing their employees si...'),
(16, 'Ethio Telecom Takes Baby Step to Liberalise Services', 'https://addisfortune.net/wp-content/uploads/2018/05/teshome-gebremariam.jpg', 'The saga to finalise the inheritance of a prominent lawyer, the late Teshome Gebremariam, has lingered for an additional 20 days as the judge of the Federal First Instance Court, Lideta Division First Succession Bench ex...'),
(17, 'Ministry Tosses Midroc’s License', 'https://addisfortune.net/wp-content/themes/smdthemeaddis/thumbnails/editorspick-default-tnail.png', 'The Addis Abeba City Road Traffic Management Agency has modified its plan of building a smart and surface parking lot, at Ras Makonnen Bridge, to a two basement concrete building. Since the opening of letter of credit...'),
(18, 'Legal Wrangling over Ambo, Coca Merger Backtracks', 'https://addisfortune.net/wp-content/themes/smdthemeaddis/thumbnails/editorspick-default-tnail.png', 'The enterprises under the Ministry of the Public Enterprises (MoPE) have earned 26.7 billion Br in revenues within the first nine months of the current fiscal year. The revenue comes from the 17 enterprises’ transactio...'),
(19, 'ERCA Compels Banks to Pay Taxes on Employees Fringe Benefit', 'https://addisfortune.net/wp-content/uploads/2018/05/sheger_royal.jpg', 'A local company in the business of building rental, Sheger Plc, inaugurates a hotel worth a quarter of a billion Birr in the Bole district of Addis Abeba. The hotel, called Sheger Royal, has been under construction fo...'),
(20, 'Teshome Gebremariam’s Patrimony Epic Falters Once Again', 'https://addisfortune.net/wp-content/uploads/2018/05/speed_humps_in_addis_ababa.jpg', '  Addis Abeba gets speed humps for 10 accident-prone roads in the city in a bid to reduce traffic accidents. The Addis Abeba City Road Traffic Management Agency, has invested 62 million Br for the project and add...'),
(21, 'Forex Crunch Rams Smart Parking Design to Change', 'https://addisfortune.net/wp-content/uploads/2018/05/Cover-graph.jpg', 'The Addis Abeba City Administration’s Auditor General Office has found that institutions of the capital have made a 905.8 million Br worth of unaccounted transactions in the last fiscal year. Tsegewoyn Kassa, the ca...'),
(22, 'State Enterprises Score 2b Br Profit', 'https://addisfortune.net/wp-content/themes/smdthemeaddis/thumbnails/editorspick-default-tnail.png', 'The Ministry of Trade (MoT) has started to attempt revising the Ethiopian Standard Industrial Classification (ESIC), a system used for classifying industries by a five-digit code. It has formed a technical committee to c...'),
(23, 'Sheger Royal Joins Blossoming Hotel Industry', 'https://addisfortune.net/wp-content/themes/smdthemeaddis/thumbnails/editorspick-default-tnail.png', 'The Ethiopian Wildlife Conservation Authority (EWCA) signed a co-financing and advisory agreement with the African Wildlife Foundation (AWF) late last month. The deal is towards the implementation of a project inside the...'),
(24, 'Agency Aims to Reduce Speed-Induced Accidents', 'https://addisfortune.net/wp-content/uploads/2018/05/Frehiwot-Woldehanna-Getu-Tilahun-Tesfaye-Kidane.jpg', 'Ethiopian Construction Design & Supervision Works Corporation sealed a deal to conduct feasibility studies and design for the Wabi Hydropower Project which will generate 100MW of electric power. The Ministry of Wa...'),
(25, 'Capital’s Auditor General Discloses a 905m Br Audit Gap', 'https://addisfortune.net/wp-content/themes/smdthemeaddis/thumbnails/editorspick-default-tnail.png', 'The Addis Abeba City Council has legislated a bill that dissolves two institutions, which have been working on waste disposal management, to establish the Waste Administration Agency. The Cleanliness Administration Ag...'),
(26, 'Industrial Classification Queues Amendment to Circumvent Overlaps', 'https://addisfortune.net/wp-content/themes/smdthemeaddis/thumbnails/editorspick-default-tnail.png', 'A draft regulation that proposes the re-establishment of the Ethiopian Quality Award Organisation as an independent body has been finalised. It is set to be sent to the Council of Ministers (CoM) for approval in two week...');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
