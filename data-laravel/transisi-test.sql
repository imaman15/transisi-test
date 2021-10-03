-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2021 at 03:13 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `transisi-test`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `email`, `logo`, `website`, `created_at`, `updated_at`) VALUES
(1, 'Jaxspan', 'fchurly0@g.co', 'company/default.png', 'http://google.it', '2021-10-03 13:09:40', '2021-10-03 13:09:40'),
(2, 'Reallinks', 'cbush1@cdbaby.com', 'company/default.png', 'http://people.com.cn', '2021-10-03 13:09:40', '2021-10-03 13:09:40'),
(3, 'Edgetag', 'anowak2@google.co.jp', 'company/default.png', 'http://mayoclinic.com', '2021-10-03 13:09:40', '2021-10-03 13:09:40'),
(4, 'Buzzster', 'nestick3@time.com', 'company/default.png', 'http://facebook.com', '2021-10-03 13:09:40', '2021-10-03 13:09:40'),
(5, 'Roomm', 'mledwitch4@cdbaby.com', 'company/default.png', 'http://reverbnation.com', '2021-10-03 13:09:40', '2021-10-03 13:09:40'),
(6, 'Gabtype', 'hportam5@dailymail.co.uk', 'company/default.png', 'http://cpanel.net', '2021-10-03 13:09:40', '2021-10-03 13:09:40'),
(7, 'Skyble', 'ccovendon6@economist.com', 'company/default.png', 'http://marriott.com', '2021-10-03 13:09:40', '2021-10-03 13:09:40'),
(8, 'Plambee', 'lmcphillimey7@tumblr.com', 'company/default.png', 'http://toplist.cz', '2021-10-03 13:09:40', '2021-10-03 13:09:40'),
(9, 'Photojam', 'hfarny8@yellowbook.com', 'company/default.png', 'https://mit.edu', '2021-10-03 13:09:40', '2021-10-03 13:09:40'),
(10, 'Yozio', 'wlowen9@devhub.com', 'company/default.png', 'https://e-recht24.de', '2021-10-03 13:09:40', '2021-10-03 13:09:40'),
(11, 'Shuffledrive', 'lhilletta@fc2.com', 'company/default.png', 'https://github.com', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(12, 'Demizz', 'cremonb@cisco.com', 'company/default.png', 'http://cpanel.net', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(13, 'Quimba', 'vstigerc@e-recht24.de', 'company/default.png', 'http://tuttocitta.it', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(14, 'Tagpad', 'cklimkovd@wordpress.org', 'company/default.png', 'https://tinyurl.com', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(15, 'Quaxo', 'gpriditte@vistaprint.com', 'company/default.png', 'https://nhs.uk', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(16, 'Gabspot', 'ebandyf@dagondesign.com', 'company/default.png', 'https://newyorker.com', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(17, 'Gigashots', 'ytorricinag@omniture.com', 'company/default.png', 'http://histats.com', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(18, 'Leexo', 'gbindenh@blogspot.com', 'company/default.png', 'http://hubpages.com', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(19, 'Browsecat', 'lcathraei@scribd.com', 'company/default.png', 'https://epa.gov', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(20, 'Jatri', 'bbanfieldj@fc2.com', 'company/default.png', 'http://hibu.com', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(21, 'Thoughtmix', 'rsaterweytek@vistaprint.com', 'company/default.png', 'http://de.vu', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(22, 'Skilith', 'sdaveranl@zimbio.com', 'company/default.png', 'https://storify.com', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(23, 'Riffpath', 'rphippsm@hibu.com', 'company/default.png', 'http://usgs.gov', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(24, 'Realcube', 'ccardon@paypal.com', 'company/default.png', 'http://plala.or.jp', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(25, 'Topicstorm', 'chinzero@eepurl.com', 'company/default.png', 'https://patch.com', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(26, 'Skiptube', 'cduckworthp@friendfeed.com', 'company/default.png', 'http://pcworld.com', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(27, 'Mudo', 'cleveyq@symantec.com', 'company/default.png', 'https://ibm.com', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(28, 'Mybuzz', 'zmoyer@ted.com', 'company/default.png', 'https://devhub.com', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(29, 'Vinder', 'cnorths@samsung.com', 'company/default.png', 'http://nature.com', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(30, 'Photojam', 'grambadtt@ow.ly', 'company/default.png', 'https://uiuc.edu', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(31, 'Realcube', 'rgenickeu@livejournal.com', 'company/default.png', 'http://ehow.com', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(32, 'Zoombox', 'cpeviev@51.la', 'company/default.png', 'http://time.com', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(33, 'Dabshots', 'ihalesw@paginegialle.it', 'company/default.png', 'http://bloomberg.com', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(34, 'Browsetype', 'cdennesx@ucoz.ru', 'company/default.png', 'http://twitpic.com', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(35, 'Ainyx', 'bwatersy@globo.com', 'company/default.png', 'https://eventbrite.com', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(36, 'Quatz', 'bmontacutez@mashable.com', 'company/default.png', 'http://google.ru', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(37, 'Zoomlounge', 'nsummerell10@buzzfeed.com', 'company/default.png', 'https://marketwatch.com', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(38, 'Realcube', 'bmerrall11@tinypic.com', 'company/default.png', 'https://360.cn', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(39, 'Innojam', 'hborgesio12@apple.com', 'company/default.png', 'http://huffingtonpost.com', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(40, 'Aibox', 'hkinsey13@parallels.com', 'company/default.png', 'https://nymag.com', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(41, 'Wordtune', 'lbarkhouse14@senate.gov', 'company/default.png', 'https://thetimes.co.uk', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(42, 'Skiptube', 'csoden15@sciencedaily.com', 'company/default.png', 'https://bizjournals.com', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(43, 'Zoomzone', 'dwoltering16@engadget.com', 'company/default.png', 'http://telegraph.co.uk', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(44, 'Devshare', 'bbackhurst17@shinystat.com', 'company/default.png', 'http://mapy.cz', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(45, 'Devbug', 'spalmar18@cornell.edu', 'company/default.png', 'https://nba.com', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(46, 'Kwimbee', 'ecogdon19@blogspot.com', 'company/default.png', 'https://shutterfly.com', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(47, 'Brainsphere', 'vmcginny1a@imdb.com', 'company/default.png', 'http://bluehost.com', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(48, 'Abata', 'aslite1b@economist.com', 'company/default.png', 'http://jimdo.com', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(49, 'Voonix', 'mbeavan1c@stanford.edu', 'company/default.png', 'https://histats.com', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(50, 'Wikizz', 'bgodfroy1d@cbc.ca', 'company/default.png', 'http://icq.com', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(51, 'Yozio', 'ahulburt1e@tumblr.com', 'company/default.png', 'http://cpanel.net', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(52, 'Photobug', 'jmcclune1f@biglobe.ne.jp', 'company/default.png', 'http://gmpg.org', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(53, 'Twimm', 'nvanderweedenburg1g@oakley.com', 'company/default.png', 'http://engadget.com', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(54, 'Devpoint', 'atitlow1h@discuz.net', 'company/default.png', 'https://goo.gl', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(55, 'Twimbo', 'charmes1i@bloglines.com', 'company/default.png', 'https://de.vu', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(56, 'Agivu', 'pfowley1j@netvibes.com', 'company/default.png', 'https://hao123.com', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(57, 'Npath', 'jvanbaaren1k@icio.us', 'company/default.png', 'https://house.gov', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(58, 'Jaxnation', 'jcases1l@e-recht24.de', 'company/default.png', 'http://economist.com', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(59, 'Edgeclub', 'arichings1m@vk.com', 'company/default.png', 'https://1und1.de', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(60, 'Gabtune', 'cbrislan1n@huffingtonpost.com', 'company/default.png', 'http://stumbleupon.com', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(61, 'Jayo', 'espeakman1o@cloudflare.com', 'company/default.png', 'https://bizjournals.com', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(62, 'InnoZ', 'wrampling1p@istockphoto.com', 'company/default.png', 'http://washingtonpost.com', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(63, 'Browsedrive', 'labramovic1q@constantcontact.com', 'company/default.png', 'http://quantcast.com', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(64, 'Linkbridge', 'nandryushchenko1r@theguardian.com', 'company/default.png', 'http://soundcloud.com', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(65, 'Wikizz', 'mstollenbeck1s@mapy.cz', 'company/default.png', 'https://go.com', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(66, 'Meejo', 'lbrooks1t@cyberchimps.com', 'company/default.png', 'https://mayoclinic.com', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(67, 'Edgewire', 'nmckendry1u@photobucket.com', 'company/default.png', 'http://xing.com', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(68, 'Voolia', 'lhartington1v@opera.com', 'company/default.png', 'http://cornell.edu', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(69, 'Flipstorm', 'kwallbrook1w@com.com', 'company/default.png', 'http://mozilla.com', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(70, 'Gigaclub', 'sdillingham1x@techcrunch.com', 'company/default.png', 'https://google.nl', '2021-10-03 13:09:41', '2021-10-03 13:09:41'),
(71, 'Nlounge', 'cbruyns1y@blogtalkradio.com', 'company/default.png', 'https://i2i.jp', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(72, 'Gabtune', 'rgalbraeth1z@addthis.com', 'company/default.png', 'https://yellowpages.com', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(73, 'Flipopia', 'kparks20@engadget.com', 'company/default.png', 'http://gravatar.com', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(74, 'Mydeo', 'aspurway21@nps.gov', 'company/default.png', 'http://reverbnation.com', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(75, 'Tagtune', 'clis22@biglobe.ne.jp', 'company/default.png', 'http://jigsy.com', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(76, 'Wikibox', 'gbenford23@amazon.de', 'company/default.png', 'http://fc2.com', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(77, 'Centizu', 'adarree24@auda.org.au', 'company/default.png', 'https://plala.or.jp', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(78, 'Edgeify', 'mblucher25@joomla.org', 'company/default.png', 'http://timesonline.co.uk', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(79, 'Roomm', 'bshepstone26@msu.edu', 'company/default.png', 'https://spotify.com', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(80, 'Eire', 'emckeowon27@multiply.com', 'company/default.png', 'https://vinaora.com', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(81, 'Chatterpoint', 'sallcorn28@ucoz.com', 'company/default.png', 'http://ezinearticles.com', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(82, 'Talane', 'jbozworth29@altervista.org', 'company/default.png', 'http://hp.com', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(83, 'Edgewire', 'dtummasutti2a@tuttocitta.it', 'company/default.png', 'https://live.com', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(84, 'Quire', 'eerangey2b@livejournal.com', 'company/default.png', 'http://ucla.edu', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(85, 'Riffpath', 'sgiovannelli2c@europa.eu', 'company/default.png', 'https://wunderground.com', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(86, 'Pixoboo', 'nhofler2d@bing.com', 'company/default.png', 'http://seesaa.net', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(87, 'Lajo', 'smatousek2e@nationalgeographic.com', 'company/default.png', 'https://usgs.gov', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(88, 'Mybuzz', 'epayn2f@sakura.ne.jp', 'company/default.png', 'http://ucoz.ru', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(89, 'Vipe', 'lgolsby2g@flavors.me', 'company/default.png', 'https://meetup.com', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(90, 'Agimba', 'khembry2h@163.com', 'company/default.png', 'http://boston.com', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(91, 'Skilith', 'rbaxandall2i@merriam-webster.com', 'company/default.png', 'https://4shared.com', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(92, 'Riffpath', 'rstokoe2j@goo.gl', 'company/default.png', 'http://theglobeandmail.com', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(93, 'Skiptube', 'rfinicj2k@hugedomains.com', 'company/default.png', 'http://exblog.jp', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(94, 'Gabspot', 'kandrysek2l@github.io', 'company/default.png', 'http://paginegialle.it', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(95, 'Topiczoom', 'hharbidge2m@netvibes.com', 'company/default.png', 'https://omniture.com', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(96, 'Fanoodle', 'kelvin2n@w3.org', 'company/default.png', 'https://unicef.org', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(97, 'Jabberbean', 'wfarnaby2o@nba.com', 'company/default.png', 'http://zimbio.com', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(98, 'Jayo', 'logready2p@cpanel.net', 'company/default.png', 'http://sitemeter.com', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(99, 'Oyonder', 'rpaprotny2q@cmu.edu', 'company/default.png', 'http://drupal.org', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(100, 'Divanoodle', 'dstrete2r@bravesites.com', 'company/default.png', 'http://google.cn', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(101, 'Trilia', 'ebutler2s@sbwire.com', 'company/default.png', 'http://unesco.org', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(102, 'Zooxo', 'adevonport2t@ocn.ne.jp', 'company/default.png', 'https://illinois.edu', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(103, 'Topicware', 'llisett2u@wikia.com', 'company/default.png', 'https://uiuc.edu', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(104, 'Topicware', 'kandrioli2v@bloomberg.com', 'company/default.png', 'http://theglobeandmail.com', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(105, 'Brightbean', 'glewisham2w@ocn.ne.jp', 'company/default.png', 'https://ca.gov', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(106, 'Photojam', 'ecale2x@addtoany.com', 'company/default.png', 'https://hao123.com', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(107, 'Wordpedia', 'mhartzog2y@washington.edu', 'company/default.png', 'https://e-recht24.de', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(108, 'Wordpedia', 'cbyng2z@ca.gov', 'company/default.png', 'https://angelfire.com', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(109, 'Zava', 'srhydderch30@amazon.co.jp', 'company/default.png', 'https://mediafire.com', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(110, 'Photobug', 'lpendre31@baidu.com', 'company/default.png', 'http://ifeng.com', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(111, 'Skajo', 'vjeremiah32@wordpress.org', 'company/default.png', 'https://admin.ch', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(112, 'Snaptags', 'mgourlay33@intel.com', 'company/default.png', 'http://bravesites.com', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(113, 'Wikizz', 'aburdess34@msn.com', 'company/default.png', 'http://twitter.com', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(114, 'Twitterbeat', 'jvasilik35@ning.com', 'company/default.png', 'https://nhs.uk', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(115, 'Camido', 'kpellew36@digg.com', 'company/default.png', 'https://ox.ac.uk', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(116, 'Meevee', 'dheinrich37@dell.com', 'company/default.png', 'http://globo.com', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(117, 'Tanoodle', 'bardern38@senate.gov', 'company/default.png', 'http://multiply.com', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(118, 'Thoughtbridge', 'mlampel39@sina.com.cn', 'company/default.png', 'https://cbslocal.com', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(119, 'Avamba', 'vryrie3a@umn.edu', 'company/default.png', 'http://census.gov', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(120, 'Jaxworks', 'mminkin3b@usgs.gov', 'company/default.png', 'https://furl.net', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(121, 'Twimm', 'bjakoubek3c@nsw.gov.au', 'company/default.png', 'http://usnews.com', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(122, 'Quimm', 'ckidwell3d@auda.org.au', 'company/default.png', 'https://chronoengine.com', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(123, 'Vitz', 'bcolls3e@gravatar.com', 'company/default.png', 'https://ask.com', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(124, 'Livetube', 'efeavearyear3f@arstechnica.com', 'company/default.png', 'https://taobao.com', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(125, 'Wordpedia', 'lfranzman3g@sitemeter.com', 'company/default.png', 'https://china.com.cn', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(126, 'Oozz', 'aseeborne3h@1und1.de', 'company/default.png', 'http://netscape.com', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(127, 'Kare', 'okubas3i@comcast.net', 'company/default.png', 'https://wikimedia.org', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(128, 'Rhynyx', 'mstabler3j@creativecommons.org', 'company/default.png', 'http://simplemachines.org', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(129, 'Voolia', 'droydon3k@facebook.com', 'company/default.png', 'https://shareasale.com', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(130, 'Oba', 'dcreaney3l@twitpic.com', 'company/default.png', 'https://squidoo.com', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(131, 'Ntag', 'hluquet3m@moonfruit.com', 'company/default.png', 'https://photobucket.com', '2021-10-03 13:09:42', '2021-10-03 13:09:42'),
(132, 'Fivebridge', 'smcilveen3n@cbsnews.com', 'company/default.png', 'http://woothemes.com', '2021-10-03 13:09:43', '2021-10-03 13:09:43'),
(133, 'Bubbletube', 'mboadby3o@feedburner.com', 'company/default.png', 'http://dion.ne.jp', '2021-10-03 13:09:43', '2021-10-03 13:09:43'),
(134, 'Avamba', 'mdebow3p@ibm.com', 'company/default.png', 'http://google.com.br', '2021-10-03 13:09:43', '2021-10-03 13:09:43'),
(135, 'Browseblab', 'sdairton3q@bbc.co.uk', 'company/default.png', 'http://blogs.com', '2021-10-03 13:09:43', '2021-10-03 13:09:43'),
(136, 'Kazu', 'jguesford3r@360.cn', 'company/default.png', 'https://shop-pro.jp', '2021-10-03 13:09:43', '2021-10-03 13:09:43'),
(137, 'Kazio', 'cridolfi3s@wix.com', 'company/default.png', 'https://a8.net', '2021-10-03 13:09:43', '2021-10-03 13:09:43'),
(138, 'Zoomzone', 'dpackham3t@wordpress.com', 'company/default.png', 'https://skyrock.com', '2021-10-03 13:09:43', '2021-10-03 13:09:43'),
(139, 'JumpXS', 'ggeorgeou3u@de.vu', 'company/default.png', 'http://discovery.com', '2021-10-03 13:09:43', '2021-10-03 13:09:43'),
(140, 'Edgewire', 'creinmar3v@qq.com', 'company/default.png', 'https://washingtonpost.com', '2021-10-03 13:09:43', '2021-10-03 13:09:43'),
(141, 'Livepath', 'mpepperill3w@gmpg.org', 'company/default.png', 'https://photobucket.com', '2021-10-03 13:09:43', '2021-10-03 13:09:43'),
(142, 'Gabspot', 'amarzelo3x@cafepress.com', 'company/default.png', 'https://t-online.de', '2021-10-03 13:09:43', '2021-10-03 13:09:43'),
(143, 'Centidel', 'jjanczyk3y@histats.com', 'company/default.png', 'http://weibo.com', '2021-10-03 13:09:43', '2021-10-03 13:09:43'),
(144, 'Jatri', 'jwyne3z@uiuc.edu', 'company/default.png', 'https://geocities.com', '2021-10-03 13:09:43', '2021-10-03 13:09:43'),
(145, 'Leexo', 'sethridge40@mac.com', 'company/default.png', 'https://google.com.hk', '2021-10-03 13:09:43', '2021-10-03 13:09:43'),
(146, 'Jetwire', 'agrissett41@springer.com', 'company/default.png', 'http://marketwatch.com', '2021-10-03 13:09:43', '2021-10-03 13:09:43'),
(147, 'Vitz', 'momulderrig42@squarespace.com', 'company/default.png', 'https://bizjournals.com', '2021-10-03 13:09:43', '2021-10-03 13:09:43'),
(148, 'Photobug', 'bbyars43@photobucket.com', 'company/default.png', 'https://oracle.com', '2021-10-03 13:09:43', '2021-10-03 13:09:43'),
(149, 'Eamia', 'lkilcullen44@aboutads.info', 'company/default.png', 'http://technorati.com', '2021-10-03 13:09:43', '2021-10-03 13:09:43'),
(150, 'Skinix', 'nrodgers45@wikispaces.com', 'company/default.png', 'https://lycos.com', '2021-10-03 13:09:43', '2021-10-03 13:09:43');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `company_id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Yamia', 5, 'fleindecker0@freewebs.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(2, 'Plajo', 2, 'rrillett1@google.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(3, 'Tambee', 29, 'rmuir2@state.tx.us', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(4, 'Yamia', 36, 'kcruise3@columbia.edu', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(5, 'Livefish', 15, 'fmacdiarmond4@wordpress.org', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(6, 'Brainsphere', 26, 'clineker5@comcast.net', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(7, 'Twitterlist', 48, 'lgriffitt6@abc.net.au', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(8, 'Zooxo', 32, 'lbentame7@europa.eu', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(9, 'Wordtune', 40, 'dhadlee8@nytimes.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(10, 'Babbleblab', 8, 'mpenylton9@cam.ac.uk', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(11, 'Yodel', 24, 'asherea@arizona.edu', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(12, 'Mybuzz', 22, 'vpohlb@so-net.ne.jp', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(13, 'Dynava', 34, 'lestcourtc@goo.ne.jp', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(14, 'Yakitri', 45, 'bbunclarkd@sciencedaily.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(15, 'Photobug', 35, 'ebaacke@whitehouse.gov', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(16, 'Skynoodle', 45, 'sgoodlifef@netvibes.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(17, 'Photobug', 15, 'jgeorgievg@tinyurl.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(18, 'Roodel', 42, 'dvooghth@about.me', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(19, 'Aimbu', 18, 'grevingtoni@timesonline.co.uk', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(20, 'Buzzbean', 5, 'kleppingtonj@domainmarket.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(21, 'Topicstorm', 23, 'tdidomenicok@hao123.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(22, 'Yakidoo', 18, 'sannandl@loc.gov', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(23, 'Kwideo', 17, 'jblackborom@domainmarket.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(24, 'Linktype', 40, 'dlesurfn@ow.ly', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(25, 'Dynazzy', 46, 'iplumbleyo@digg.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(26, 'Divavu', 29, 'melgeep@godaddy.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(27, 'Buzzster', 36, 'mmcfeeq@reuters.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(28, 'Minyx', 17, 'ncaulierr@pinterest.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(29, 'Shuffletag', 48, 'irosenzwigs@imgur.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(30, 'Yabox', 47, 'ireedyhought@answers.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(31, 'Gigaclub', 13, 'fmaddinu@photobucket.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(32, 'Skyndu', 49, 'relphinstonv@spiegel.de', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(33, 'Jaxnation', 4, 'ajoanicw@istockphoto.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(34, 'Flashdog', 40, 'hwaylettx@blogger.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(35, 'Fivespan', 47, 'nteeneyy@ca.gov', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(36, 'Skyvu', 7, 'cdohrmannz@columbia.edu', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(37, 'Edgeify', 14, 'lmisson10@arstechnica.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(38, 'Meedoo', 9, 'fboys11@gmpg.org', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(39, 'Shuffletag', 32, 'kthick12@thetimes.co.uk', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(40, 'Wordware', 43, 'bkitchingman13@mlb.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(41, 'Yadel', 42, 'mjeaffreson14@purevolume.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(42, 'Linkbuzz', 9, 'gpeile15@rakuten.co.jp', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(43, 'Yombu', 48, 'dbalcers16@studiopress.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(44, 'Innojam', 37, 'adreakin17@is.gd', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(45, 'Oodoo', 36, 'plaval18@tripod.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(46, 'Voonte', 29, 'wzarfati19@sciencedirect.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(47, 'Edgeclub', 14, 'rbello1a@yelp.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(48, 'Mydo', 29, 'arisbrough1b@nytimes.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(49, 'Kwideo', 32, 'fphilpot1c@thetimes.co.uk', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(50, 'Voolith', 14, 'fshepstone1d@army.mil', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(51, 'Eabox', 37, 'glillgard1e@princeton.edu', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(52, 'Photobug', 46, 'sheadon1f@pinterest.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(53, 'Camido', 31, 'mhinder1g@homestead.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(54, 'Photobean', 27, 'tvonhelmholtz1h@mediafire.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(55, 'Zoozzy', 4, 'bacock1i@elegantthemes.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(56, 'Riffwire', 27, 'hsuermeiers1j@auda.org.au', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(57, 'Yoveo', 9, 'ldimnage1k@cbc.ca', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(58, 'Innojam', 48, 'dbrogiotti1l@com.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(59, 'Jazzy', 48, 'ktomaszek1m@slashdot.org', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(60, 'Meeveo', 19, 'rwetherby1n@weather.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(61, 'Blogtags', 30, 'lgellert1o@a8.net', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(62, 'Meezzy', 18, 'lchristofe1p@de.vu', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(63, 'Gabtune', 7, 'bjosland1q@skyrock.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(64, 'Feedbug', 41, 'rbox1r@china.com.cn', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(65, 'Avavee', 40, 'lspaxman1s@fc2.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(66, 'Demizz', 47, 'dchuck1t@lulu.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(67, 'Avaveo', 18, 'etrustey1u@cnbc.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(68, 'Yata', 33, 'ntillot1v@washingtonpost.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(69, 'Riffpath', 37, 'amundie1w@prnewswire.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(70, 'Bluezoom', 42, 'yparton1x@skype.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(71, 'Abata', 7, 'nfollit1y@cdbaby.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(72, 'Topicware', 39, 'dgostling1z@wikispaces.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(73, 'Avavee', 42, 'aberger20@joomla.org', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(74, 'Livepath', 34, 'hbaxandall21@woothemes.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(75, 'Quaxo', 27, 'ftellenbrok22@artisteer.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(76, 'Quamba', 12, 'hewbanke23@sohu.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(77, 'Skipstorm', 13, 'adixson24@dagondesign.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(78, 'Photobug', 10, 'apolycote25@myspace.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(79, 'Yacero', 9, 'mmacklin26@mashable.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(80, 'Eidel', 21, 'idillingston27@eepurl.com', '2021-10-03 13:10:07', '2021-10-03 13:10:07'),
(81, 'Centizu', 24, 'vbezemer28@fc2.com', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(82, 'Oyoyo', 38, 'efeldfisher29@nyu.edu', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(83, 'Vipe', 50, 'groze2a@netscape.com', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(84, 'Blogtags', 30, 'ashoebridge2b@typepad.com', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(85, 'Blogtag', 16, 'mpeile2c@hatena.ne.jp', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(86, 'Buzzbean', 30, 'kcardiff2d@com.com', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(87, 'Wikizz', 35, 'qescale2e@harvard.edu', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(88, 'Tambee', 48, 'cfetherston2f@tumblr.com', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(89, 'Blogtag', 6, 'pgrieger2g@umn.edu', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(90, 'Blogspan', 11, 'dgladdolph2h@youku.com', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(91, 'Fadeo', 3, 'hhrinchenko2i@exblog.jp', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(92, 'Tagcat', 38, 'ajeune2j@weibo.com', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(93, 'Avaveo', 40, 'hsapauton2k@opera.com', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(94, 'Eadel', 40, 'rcrosi2l@liveinternet.ru', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(95, 'Centidel', 11, 'cquadri2m@unc.edu', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(96, 'Quatz', 41, 'mgalland2n@geocities.com', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(97, 'Linktype', 40, 'nspriggs2o@earthlink.net', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(98, 'Quatz', 44, 'kkisbey2p@hostgator.com', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(99, 'Bubbletube', 17, 'bolivari2q@smugmug.com', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(100, 'Meembee', 35, 'decob2r@sciencedirect.com', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(101, 'Kimia', 33, 'mtumielli2s@163.com', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(102, 'Pixonyx', 24, 'scannan2t@prweb.com', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(103, 'Centidel', 21, 'enorrey2u@redcross.org', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(104, 'Gabtune', 40, 'wparman2v@thetimes.co.uk', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(105, 'Yakitri', 23, 'myeats2w@mtv.com', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(106, 'Fiveclub', 39, 'cnorthleigh2x@nature.com', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(107, 'Realfire', 31, 'gknightly2y@msu.edu', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(108, 'Browsetype', 49, 'adevaar2z@godaddy.com', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(109, 'Eadel', 42, 'jdalbey30@sina.com.cn', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(110, 'Trudeo', 28, 'lrubinovitch31@51.la', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(111, 'Realbuzz', 30, 'jagus32@posterous.com', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(112, 'Skajo', 17, 'kvial33@blogs.com', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(113, 'Zava', 33, 'nredferne34@examiner.com', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(114, 'Wordtune', 30, 'ddrinkhall35@flavors.me', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(115, 'Ntag', 3, 'bmullaney36@narod.ru', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(116, 'Ailane', 9, 'rivantsov37@alibaba.com', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(117, 'Trunyx', 8, 'lplenty38@cnet.com', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(118, 'Pixoboo', 23, 'tquirke39@drupal.org', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(119, 'Feedfire', 21, 'tperon3a@purevolume.com', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(120, 'Buzzshare', 46, 'darnaud3b@uiuc.edu', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(121, 'Tekfly', 2, 'oquinnell3c@bigcartel.com', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(122, 'Wordify', 24, 'kshankle3d@wikimedia.org', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(123, 'Quire', 16, 'fmuxworthy3e@hatena.ne.jp', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(124, 'Yacero', 33, 'lcleevely3f@squarespace.com', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(125, 'Tagopia', 2, 'dkendal3g@about.com', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(126, 'Browsecat', 27, 'bsirette3h@vimeo.com', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(127, 'Kwideo', 5, 'acanadas3i@angelfire.com', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(128, 'Eazzy', 8, 'ddreamer3j@nasa.gov', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(129, 'Livefish', 9, 'lheffy3k@washingtonpost.com', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(130, 'Buzzdog', 24, 'rlazarus3l@edublogs.org', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(131, 'Skalith', 18, 'rreavey3m@cafepress.com', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(132, 'BlogXS', 36, 'ajobe3n@sohu.com', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(133, 'Quaxo', 42, 'dstaton3o@virginia.edu', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(134, 'Voolia', 33, 'gagney3p@abc.net.au', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(135, 'Twinte', 17, 'sneave3q@bravesites.com', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(136, 'Linklinks', 29, 'pjedraszczyk3r@boston.com', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(137, 'Wordware', 46, 'lmattiazzi3s@tinypic.com', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(138, 'Kanoodle', 34, 'tgrimsdale3t@123-reg.co.uk', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(139, 'Demimbu', 8, 'esharratt3u@mtv.com', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(140, 'Innojam', 21, 'gbeards3v@elpais.com', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(141, 'Leenti', 43, 'uiannazzi3w@bloglines.com', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(142, 'Skyba', 42, 'rwhalley3x@wiley.com', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(143, 'Edgetag', 35, 'jfurnell3y@yahoo.com', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(144, 'Gabspot', 40, 'fveighey3z@cdc.gov', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(145, 'Photobug', 6, 'omorat40@nymag.com', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(146, 'Fiveclub', 29, 'willesley41@apache.org', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(147, 'Shuffledrive', 14, 'mprobet42@msn.com', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(148, 'Oyoba', 16, 'nacton43@soundcloud.com', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(149, 'Yabox', 1, 'cjosebury44@forbes.com', '2021-10-03 13:10:08', '2021-10-03 13:10:08'),
(150, 'Eimbee', 27, 'tsunnucks45@sciencedaily.com', '2021-10-03 13:10:08', '2021-10-03 13:10:08');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_09_30_144310_create_companies_table', 1),
(6, '2021_09_30_144358_create_employees_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `level`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', 'admin@transisi.id ', NULL, '$2y$10$7FOMwE/yyJ7CDHstVDC0kuHEmOsribCdr2yO9dbClhEsczBrmWrIy', NULL, '2021-10-03 13:03:58', '2021-10-03 13:03:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
