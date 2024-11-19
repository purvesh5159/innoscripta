-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 19, 2024 at 06:27 AM
-- Server version: 8.3.0
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `innoscripta`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NOT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `articles_url_unique` (`url`),
  UNIQUE KEY `articles_source_id_unique` (`source_id`),
  KEY `articles_title_index` (`title`),
  KEY `articles_published_at_index` (`published_at`),
  KEY `articles_source_index` (`source`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `description`, `author`, `url`, `published_at`, `source`, `source_id`, `created_at`, `updated_at`) VALUES
(1, '[Removed]', '[Removed]', 'John Doe', 'https://removed.com', '2024-11-13 14:59:40', 'NewsAPI', NULL, '2024-11-18 11:55:21', '2024-11-18 11:55:22'),
(2, 'Exclusive OnePlus Promo Code: Up to 20% Off | November 2024', 'Save up to 20% with OnePlus promo codes. Browse the latest deals and coupons to save sitewide in November 2024.', 'Molly Higgins', 'https://www.wired.com/story/oneplus-promo-code/', '2024-11-14 01:40:00', 'NewsAPI', NULL, '2024-11-18 11:55:21', '2024-11-18 11:55:21'),
(3, 'Vardy launches appeal bid against latest Rooney ruling', 'Last month a judge ruled in favour of Mrs Rooney in a dispute about the legal costs Mrs Vardy must pay.', 'Unknown', 'https://www.bbc.com/news/articles/c62lk04xnqyo', '2024-11-01 09:29:09', 'NewsAPI', NULL, '2024-11-18 11:55:21', '2024-11-18 11:55:21'),
(4, 'Casio’s first smart ring has innovative features like a stopwatch and flashing alarm', 'Casio’s latest wearable is a digital ring watch that includes a stopwatch and a calendar function, in addition to telling the time.', 'Andrew Liszewski', 'https://www.theverge.com/2024/11/15/24297261/casio-smart-ring-digital-watch-crw-001-1jr', '2024-11-15 11:02:27', 'NewsAPI', NULL, '2024-11-18 11:55:21', '2024-11-18 11:55:21'),
(5, 'Yes, Teen Is Indeed [Redacted] in the Latest Agatha All Along', 'The identity of Joe Locke\'s character is now officially confirmed—in an episode dedicated to the reveal.', 'Gordon Jackson', 'https://gizmodo.com/yes-teen-is-indeed-redacted-in-the-latest-agatha-all-along-2000512987', '2024-10-17 14:50:11', 'NewsAPI', NULL, '2024-11-18 11:55:21', '2024-11-18 11:55:21'),
(6, 'The Latest Look at Disney’s Live-Action Stitch Will Fill You With Cute Aggression', 'The live-action remake of 2002 animated hit Lilo & Stitch hits theaters in May 2025.', 'Cheryl Eddy', 'https://gizmodo.com/the-latest-look-at-disneys-live-action-stitch-will-fill-you-with-cute-aggression-2000522234', '2024-11-08 16:50:17', 'NewsAPI', NULL, '2024-11-18 11:55:21', '2024-11-18 11:55:21'),
(7, 'What We Do in the Shadows Champions Found Families, No Matter How Dysfunctional', 'Season six\'s latest episode introduced Laszlo\'s father—and chaos inevitably followed.', 'Cheryl Eddy', 'https://gizmodo.com/what-we-do-in-the-shadows-season-6-found-family-2000523659', '2024-11-12 14:20:22', 'NewsAPI', NULL, '2024-11-18 11:55:21', '2024-11-18 11:55:21'),
(8, 'Matter 1.4 tries to set the smart home standard back on track', 'Matter 1.4, the latest specification for the Apple, Amazon, and Google-backed standard, brings improvements to interoperability and enables energy management solutions.', 'Jennifer Pattison Tuohy', 'https://www.theverge.com/2024/11/7/24289972/matter-smart-home-standard-1-4-spec-new-features-device-types', '2024-11-07 07:30:00', 'NewsAPI', NULL, '2024-11-18 11:55:21', '2024-11-18 11:55:21'),
(9, 'All the news from Apple’s ‘week’ of Mac announcements', 'Apple is announcing an M4 MacBook Pro, an M4 iMac, and a redesigned M4 Mac Mini. Here’s all the news on Apple’s latest Macs.', 'Antonio G. Di Benedetto', 'https://www.theverge.com/24279307/apple-mac-m4-updates-news-announcements', '2024-10-28 04:30:00', 'NewsAPI', NULL, '2024-11-18 11:55:21', '2024-11-18 11:55:21'),
(10, 'Kevin Feige Says Marvel Is Still Committed to Getting Blade Into the MCU', 'Plus, Scary Movie\'s Officer Doofy teases what the new movie wants to spoof from the latest Scream films.', 'Gordon Jackson', 'https://gizmodo.com/kevin-feige-blade-marvel-mcu-update-mahershala-ali-2000523295', '2024-11-12 08:30:03', 'NewsAPI', NULL, '2024-11-18 11:55:21', '2024-11-18 11:55:21'),
(11, 'Just Before Black Friday, Amazon is Slashing Prices on The New MacBook Air With The XL 15-Inch Display', 'Amazon Slashes Prices on the Latest Apple Ultrabook.', 'Gizmodo Deals', 'https://gizmodo.com/just-before-black-friday-amazon-is-slashing-prices-on-the-new-macbook-air-with-the-xl-15-inch-display-2000520066', '2024-11-03 16:55:07', 'NewsAPI', NULL, '2024-11-18 11:55:21', '2024-11-18 11:55:21'),
(12, 'Tom Holland Joins Christopher Nolan’s Next Movie, and We Heard a Great Rumor About It', 'The Spider-Man actor joins Matt Damon in the latest mystery film from the Oppenheimer director.', 'Germain Lussier', 'https://gizmodo.com/christopher-nolan-new-movie-plot-tom-holland-imax-2000514765', '2024-10-21 16:05:52', 'NewsAPI', NULL, '2024-11-18 11:55:21', '2024-11-18 11:55:21'),
(13, 'Tom Holland Loves the Latest Draft of Spider-Man 4 but Explains the Struggle to Make It', 'The Marvel Studios star spoke at length about the great responsibility of making a sequel to Spider-Man: No Way Home.', 'Germain Lussier', 'https://gizmodo.com/spider-man-4-script-update-tom-holland-marvel-studios-2000513164', '2024-10-17 13:01:57', 'NewsAPI', NULL, '2024-11-18 11:55:21', '2024-11-18 11:55:21'),
(14, 'The Latest 4TB Samsung SSD Is 45% Off, Only 7.5 Cents Per GB in This Early Black Friday Deal', 'In a world where data reigns supreme, the Samsung T9 4TB SSD shines as your ultimate ally.', 'Gizmodo Deals', 'https://gizmodo.com/the-latest-4tb-samsung-ssd-is-45-off-only-7-5-cents-per-gb-in-this-early-black-friday-deal-2000521038', '2024-11-06 06:55:33', 'NewsAPI', NULL, '2024-11-18 11:55:21', '2024-11-18 11:55:21'),
(15, 'The X-Men Are X-Babies All Over Again In Jeffrey Brown’s Latest Pop Culture Kids Book', 'The artist takes the leap from Star Wars and Thor to bring his trademark adorable art style to the world of Marvel\'s mutants.', 'James Whitbrook', 'https://gizmodo.com/jeffrey-brown-x-men-days-of-future-fun-preview-marvel-2000518310', '2024-10-30 09:30:26', 'NewsAPI', NULL, '2024-11-18 11:55:21', '2024-11-18 11:55:21'),
(16, 'Bowen: Iran faces hard choices between risks of escalation or looking weak', 'International editor Jeremy Bowen examines what Iran\'s response might be to Israel\'s latest attack.', 'Unknown', 'https://www.bbc.com/news/articles/cm2742rynqgo', '2024-10-26 09:49:54', 'NewsAPI', NULL, '2024-11-18 11:55:21', '2024-11-18 11:55:21'),
(17, 'A Saint Unleashes Vengeance Where It’s Needed Most in This Fiery Short Story', 'Read \"We Will Bring Siege to the Bastion of Sin that Cries Out in Your Prayer,\" a short story by Hammond Diehl, from the latest issue of Lightspeed Magazine.', 'By Lightspeed Magazine', 'https://gizmodo.com/a-saint-unleashes-vengeance-where-its-needed-most-in-this-fiery-short-story-2000523364', '2024-11-14 12:15:37', 'NewsAPI', NULL, '2024-11-18 11:55:21', '2024-11-18 11:55:21'),
(18, 'Apple secretly included quantum dot tech in the M4 MacBook Pro\'s display', 'Apple\'s latest M4-powered MacBook Pro is a pretty stellar laptop. We gave it a score of 92 in our review, due in part to its great screen. The display is brighter this time around, peaking at 1,000 nits for SDR (standard dynamic range) content and 1,600 nits …', 'Kris Holt', 'https://consent.yahoo.com/v2/collectConsent?sessionId=1_cc-session_72825322-6e56-4f1d-b58d-d363d6837f0d', '2024-11-15 12:04:24', 'NewsAPI', NULL, '2024-11-18 11:55:21', '2024-11-18 11:55:21'),
(19, 'An Old Foe Dethrones Covid-19 as the World’s Leading Infectious Killer', 'The WHO\'s latest report on tuberculosis shows that it\'s once again the leading cause of death from a single infectious disease.', 'Ed Cara', 'https://gizmodo.com/an-old-foe-dethrones-covid-19-as-the-worlds-leading-infectious-killer-2000518320', '2024-10-30 10:50:31', 'NewsAPI', NULL, '2024-11-18 11:55:21', '2024-11-18 11:55:21'),
(20, 'The Mandalorian‘s Worst Season Is Coming to Blu-Ray', 'Don\'t worry though, you could distract yourself with Ahsoka, Hawkeye, and Loki Season 2 in Disney\'s latest 4K UHD offerings instead.', 'James Whitbrook', 'https://gizmodo.com/mandalorian-season-3-ahsoka-loki-season-2-hawkeye-4k-uhd-blu-ray-release-date-2000515993', '2024-10-24 09:15:26', 'NewsAPI', NULL, '2024-11-18 11:55:21', '2024-11-18 11:55:21'),
(21, 'The Case for Ozempic as a Addiction Treatment Keeps Getting Better', 'Research from earlier this week is the latest to suggest that semaglutide and other GLP-1 drugs can help treat people\'s addiction to both opioids and alcohol.', 'Ed Cara', 'https://gizmodo.com/the-case-for-ozempic-as-a-addiction-treatment-keeps-getting-better-2000513096', '2024-10-17 14:35:25', 'NewsAPI', NULL, '2024-11-18 11:55:21', '2024-11-18 11:55:21'),
(22, 'Severance‘s First Season 2 Teaser Welcomes You Back to Work', 'Adam Scott\'s Mark (or is it Marcus now?) returns to Lumon Industries in our latest look at the Apple TV+ series\' much-anticipated second season.', 'Cheryl Eddy', 'https://gizmodo.com/severances-first-season-2-teaser-welcomes-you-back-to-work-2000515387', '2024-10-23 07:30:40', 'NewsAPI', NULL, '2024-11-18 11:55:21', '2024-11-18 11:55:21'),
(23, 'Astronomers Found Something Cold and Wet Near Uranus', 'The icy moon Miranda is the latest satellite in our solar system to spark hope in the search for life beyond Earth.', 'Isaac Schultz', 'https://gizmodo.com/astronomers-found-something-cold-and-wet-near-uranus-2000518316', '2024-10-30 12:50:15', 'NewsAPI', NULL, '2024-11-18 11:55:21', '2024-11-18 11:55:21'),
(24, 'The Rey Movie Has Lost Its Writer (Again)', 'Steven Knight is the latest to exit Lucasfilm\'s attempts to return to the Star Wars timeline after the events of The Rise of Skywalker.', 'James Whitbrook', 'https://gizmodo.com/star-wars-rey-movie-delay-steven-knight-lucasfilm-disney-2000516492', '2024-10-25 08:30:48', 'NewsAPI', NULL, '2024-11-18 11:55:21', '2024-11-18 11:55:21'),
(25, 'The New Pokémon Card App Is Teaching Me the Restraint of Card-Collecting Youth', 'The Pokémon Trading Card Game\'s latest app Pocket has sunken its teeth into me, but with one clever mechanic to stop me from going completely overboard.', 'James Whitbrook', 'https://gizmodo.com/pokemon-tcg-pocket-free-boosters-card-game-nintedo-2000520311', '2024-11-04 17:10:27', 'NewsAPI', NULL, '2024-11-18 11:55:21', '2024-11-18 11:55:21'),
(26, 'Adopting as a single mum in my 40s changed my life', 'The number of people adopting in Wales is falling, according to the latest figures.', 'Unknown', 'https://www.bbc.com/news/articles/c3dvjkd47n2o', '2024-10-20 15:16:47', 'NewsAPI', NULL, '2024-11-18 11:55:21', '2024-11-18 11:55:21'),
(27, 'Crime up 10% over past year in England and Wales, ONS says', 'The latest figures show offences including robbery and violence returned to pre-pandemic levels.', 'Unknown', 'https://www.bbc.com/news/articles/cpwr89rv9qno', '2024-10-24 07:38:18', 'NewsAPI', NULL, '2024-11-18 11:55:21', '2024-11-18 11:55:21'),
(28, 'Gen Z\'s latest obsession: smelling good', 'The luxury fragrance industry is booming thanks to TikTok and teen boys.', 'Eve Upton-Clark', 'https://www.businessinsider.com/gen-z-luxury-perfume-obsession-tiktok-fragrance-teen-boys-branding-2024-10', '2024-10-29 03:53:01', 'NewsAPI', NULL, '2024-11-18 11:55:21', '2024-11-18 11:55:21'),
(29, 'Fresh Spain floods sweep away dozens of cars near Girona', 'No casualties were reported in the latest round of flooding, after more than 200 people were killed last week.', 'Unknown', 'https://www.bbc.com/news/articles/crk4zlkdgk8o', '2024-11-08 05:38:40', 'NewsAPI', NULL, '2024-11-18 11:55:21', '2024-11-18 11:55:21'),
(30, 'Latest Motorola Rizr rollable phone patent highlights new security tricks', 'A new patent for Motorola\'s rollable phone concept was spotted with a new addition.', 'nickodiaz@sbcglobal.net (Nickolas Diaz)', 'https://www.androidcentral.com/phones/motorola-rizr-rollable-phone-updated-fingerprint-patent', '2024-11-07 14:16:32', 'NewsAPI', NULL, '2024-11-18 11:55:21', '2024-11-18 11:55:21'),
(31, 'Apple\'s M4 iMac is already on sale in an early Black Friday deal', 'If you weren\'t able to buy Apple\'s latest iMac in time to get it on its release day on November 8, here\'s your chance to get a discount on the all-in-one computer. The company is already selling it for $85 off at Amazon before the Black Friday frenzy even beg…', 'Mariella Moon', 'https://consent.yahoo.com/v2/collectConsent?sessionId=1_cc-session_97de6244-543f-4951-9fbd-c51479121039', '2024-11-09 05:30:29', 'NewsAPI', NULL, '2024-11-18 11:55:21', '2024-11-18 11:55:21'),
(32, 'McDonald\'s is the latest election battleground for Trump and Harris', 'Presidential candidates have often invoked McDonald\'s during their runs for the White House, both as a place to eat and as a place to work.', 'Alex Bitter', 'https://www.businessinsider.com/mcdonalds-is-latest-election-battleground-for-trump-and-harris-2024-10', '2024-10-21 14:46:05', 'NewsAPI', NULL, '2024-11-18 11:55:21', '2024-11-18 11:55:21'),
(33, 'The latest sign Costco is having a \'Netflix moment\'', 'Morgan Stanley analysts say they\'ve seen \"surprising conversion rates\" of previously non-member Costco shoppers electing to pay the annual fee.', 'Dominick Reuter', 'https://www.businessinsider.com/costco-set-to-have-netflix-moment-membership-sharing-crackdown-2024-10', '2024-10-26 03:32:02', 'NewsAPI', NULL, '2024-11-18 11:55:21', '2024-11-18 11:55:21'),
(34, 'Unity mounts a comeback with launch of Unity 6 game engine', 'Unity has released\r\n the latest version of its engine for developing games and interactive experiences. Unity 6 has new workflows for creating online multiplayer games and more tools for projects intended for mobile platforms, including mobile web support for…', 'Anna Washenko', 'https://consent.yahoo.com/v2/collectConsent?sessionId=1_cc-session_be056e1f-54f6-410b-aa42-9b18e3de2214', '2024-10-17 15:23:32', 'NewsAPI', NULL, '2024-11-18 11:55:21', '2024-11-18 11:55:21'),
(35, 'Google sells refurbished Pixel phones with fresh parts and the latest software', 'Google announced the start of its Certified Refurbished Pixel program.', 'nickodiaz@sbcglobal.net (Nickolas Diaz)', 'https://www.androidcentral.com/phones/google-certified-refurbished-pixel-program-detailed', '2024-10-28 14:51:33', 'NewsAPI', NULL, '2024-11-18 11:55:21', '2024-11-18 11:55:21'),
(36, 'Latest Google Pixel 9a leak says it might strive for Pro XL power levels', 'A Pixel 9a report claims it could deliver a higher battery capacity when it launches.', 'nickodiaz@sbcglobal.net (Nickolas Diaz)', 'https://www.androidcentral.com/phones/google-pixel-9a-battery-capacity-pro-xl-leak', '2024-10-29 11:47:04', 'NewsAPI', NULL, '2024-11-18 11:55:21', '2024-11-18 11:55:21'),
(37, 'Prime Video might roll out a very YouTube TV-style multiview experience', 'Code in Prime Video\'s latest build might\'ve teased a \"multiview\" experience.', 'nickodiaz@sbcglobal.net (Nickolas Diaz)', 'https://www.androidcentral.com/streaming-tv/amazon-prime-video-multiview-code-spotted', '2024-11-13 15:04:53', 'NewsAPI', NULL, '2024-11-18 11:55:21', '2024-11-18 11:55:21'),
(38, 'Apple\'s latest coffee table book is aimed at music lovers and costs $450', 'Apple Music teamed up with Assouline for a limited-edition \"100 Best Albums\" coffee table book which costs $450.', 'jhart@insider.com (Jordan Hart)', 'https://www.businessinsider.com/apple-coffee-table-book-top-100-music-albums-list-2024-11', '2024-11-12 11:53:20', 'NewsAPI', NULL, '2024-11-18 11:55:21', '2024-11-18 11:55:21'),
(39, 'WhatsApp could get a Google Lens-like feature to search images', 'A new “Search on web” feature is spotted in the latest beta version of the app.', 'vishnu.skar@gmail.com (Vishnu Sarangapurkar)', 'https://www.androidcentral.com/apps-software/whatsapp-likely-to-get-google-powered-reverse-image-search', '2024-11-11 11:10:39', 'NewsAPI', NULL, '2024-11-18 11:55:21', '2024-11-18 11:55:21'),
(40, 'OnePlus 13 sharpens up its camera just in time for its global launch', 'OnePlus\' latest flagship gets a new macro mode with a software update.', 'techkritiko@gmail.com (Jay Bonggolto)', 'https://www.androidcentral.com/phones/oneplus-13-sharpens-up-its-camera-just-in-time-for-its-global-launch', '2024-11-14 15:52:49', 'NewsAPI', NULL, '2024-11-18 11:55:21', '2024-11-18 11:55:21'),
(41, 'Mario & Luigi Brothership: Nintendo\'s Latest Mario RPG Is New, and Deserves a Switch 2', 'A familiar-feeling series gains some new twists, but the Switch\'s age is showing.', 'Scott Stein', 'https://www.cnet.com/tech/gaming/mario-luigi-brothership-nintendos-latest-mario-rpg-is-new-and-deserves-a-switch-2/', '2024-11-04 06:30:07', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(42, 'Inside Capitol Hill’s Latest UFO Hearings', 'Witnesses argue that the government knows more than it\'s admitting.', 'Jeffrey Kluger', 'https://time.com/7176658/inside-capitol-hills-latest-ufo-hearings/', '2024-11-15 09:25:04', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(43, 'LG Display’s stretchable screen is now even stretchier', 'LG Display’s stretchable screen prototype can now expand from 12 to 18 inches and be repeatedly stretched over 10,000 times without damage.', 'Andrew Liszewski', 'https://www.theverge.com/2024/11/12/24294480/lg-display-stretchable-screen-expands', '2024-11-12 08:31:35', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(44, 'Chrome 131 for iOS adds 4 new features that could pull iPhone users into the Google ecosystem', 'Google Chrome is now a better Safari replacement, and the latest Chrome 131 update could pull iOS users to Android.', 'bradypsnyder@gmail.com (Brady Snyder)', 'https://www.androidcentral.com/apps-software/chrome-131-for-ios-adds-4-new-features-that-could-pull-iphone-users-into-the-google-ecosystem', '2024-11-12 14:27:07', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(45, 'Google\'s new app secures your chats with a twist', 'Google\'s latest app locks down your chats with encryption keys, and you can share those keys through QR codes.', 'techkritiko@gmail.com (Jay Bonggolto)', 'https://www.androidcentral.com/apps-software/googles-new-app-secures-your-chats-with-a-twist', '2024-11-15 00:21:14', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(46, 'OWC\'s Upcoming Thunderbolt 5 Hub Adds Three More Thunderbolt 5 Ports to Latest Macs', 'OWC today announced its new Thunderbolt 5 Hub, one of the first accessories to support Intel\'s latest Thunderbolt standard, and offering Thunderbolt 5 compatibility with Apple\'s new Mac mini and MacBook Pro Models with M4 Pro and M4 Max chips. \n\n\n\n\n\nThe hub c…', 'Tim Hardwick', 'https://www.macrumors.com/2024/11/12/owc-thunderbolt-5-hub-unveiled/', '2024-11-12 07:40:40', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(47, 'OWC\'s Thunderbolt 5 External SSD for Latest Macs is Impressively Fast', 'Apple\'s new Mac mini with the M4 Pro chip and MacBook Pro models with M4 Pro and M4 Max chips feature support for the faster Thunderbolt 5 specification, and reputable accessory maker OWC is ready with a new external SSD.\n\n\n\n\n\nAnnounced in September, OWC\'s En…', 'Joe Rossignol', 'https://www.macrumors.com/2024/11/05/owc-thunderbolt-5-external-ssd-for-macs/', '2024-11-05 16:21:39', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(48, 'Boeing machinists reject latest proposal, and a bruising six-week strike continues', 'Striking machinists voted to reject an agreement that would have boosted wages by 35%. It’s another blow for Boeing, which reported a $6 billion quarterly loss on Wednesday.', 'Joel Rose', 'https://www.npr.org/2024/10/23/g-s1-29638/boeing-machinists-reject-contract-strike', '2024-10-23 20:58:51', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(49, 'Apple Updates iMac With M4, More RAM, Nano-Texture Display and More', 'Meet the first Mac desktop with Apple\'s latest M4 processor.', 'Matt Elliott', 'https://www.cnet.com/tech/computing/apple-updates-imac-with-m4-more-ram-nano-texture-display-and-more/', '2024-10-28 10:20:00', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(50, 'Meta layoffs are the latest sign that constant job cuts are the new Big Tech normal', 'Recent layoffs at Meta point to a tech industry playbook of making recurring cutbacks. Yet these regular reductions risk damaging worker morale.', 'Tim Paradis', 'https://www.businessinsider.com/meta-job-cuts-indicate-tech-companies-like-recurring-layoffs-2024-10', '2024-10-18 04:42:02', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(51, 'Partner pay at Big 4 firms is dropping, the latest sign of the consulting slowdown', 'Partners at the Big Four consultancies are taking home less this year after the sector sees slowdown in growth.', 'Polly Thompson', 'https://www.businessinsider.com/partner-pay-at-big-four-falling-ey-pwc-deloitte-kpmg-2024-10', '2024-10-28 06:12:49', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(52, 'Saudia Arabia\'s new airline just announced a major Airbus order in the latest blow for Boeing', 'Riyadh Air announced an order for 60 Airbus A321neo jets, confounding speculation that the new Saudi airline was set to order Boeing 737 Max aircraft.', 'Pete Syme', 'https://www.businessinsider.com/saudi-arabia-riyadh-air-airbus-a321neo-order-blow-boeing-2024-10', '2024-10-30 10:36:05', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(53, 'Boeing workers reject the company\'s latest proposal, which included a 35% wage hike', 'The strike has halted most of Boeing\'s manufacturing for over five weeks.', 'Shubhangi Goel', 'https://www.businessinsider.com/boeing-workers-reject-latest-proposal-with-35-wage-hike-union-2024-10', '2024-10-23 21:04:59', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(54, 'Toyota and BMW are the latest casualties in China\'s evolving EV market', 'Toyota and BMW reported sinking profits on Wednesday, with sales in China slumping as both face growing competition from local automakers like BYD.', 'Tom Carter', 'https://www.businessinsider.com/toyota-bmw-face-reckoning-in-china-sinking-sales-2024-11', '2024-11-06 06:50:16', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(55, 'Ford tells EV owners to stop using its free Tesla Supercharger adapters', 'After offering its customers free NACS adapters for Tesla\'s Superchargers, Ford is telling its customers to stop using them, according to a service bulletin spotted by InsideEVs. The reason cited is a \"potential issue\" that could reduce charging speeds over t…', 'Steve Dent', 'https://consent.yahoo.com/v2/collectConsent?sessionId=1_cc-session_f32bc962-b2a8-4229-a463-03a5d0dc3eb9', '2024-10-21 06:30:23', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(56, 'Hurricane Oscar\'s path: See latest updates, spaghetti models, possible impacts', 'Here\'s a look at where Hurricane Oscar is, where it\'s headed and the impacts it could have.', 'John Gallas and Diane Pantaleo, USA TODAY NETWORK - Florida', 'https://www.jacksonville.com/story/weather/hurricane/2024/10/20/hurricane-oscar-track-path-spaghetti-models/75762714007/', '2024-10-20 06:03:10', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(57, 'Middle East latest: Hezbollah fires rockets into central Israel', NULL, 'Unknown', 'https://consent.yahoo.com/v2/collectConsent?sessionId=1_cc-session_587a17cd-2675-4d5a-92a4-55b4464b7794', '2024-10-22 00:29:09', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(58, 'Telegram\'s new update is a visual treat for big channels', 'Telegram\'s latest update lets you pick video quality for big channels, adjust playback speed, and more.', 'techkritiko@gmail.com (Jay Bonggolto)', 'https://www.androidcentral.com/apps-software/telegrams-new-update-is-a-visual-treat-for-big-channels', '2024-11-03 04:48:02', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(59, 'Google\'s testing a conversational search feature that updates results in real time', 'Google\'s latest experiment is to make Search more like a conversational voice assistant.', 'bradypsnyder@gmail.com (Brady Snyder)', 'https://www.androidcentral.com/apps-software/googles-testing-a-conversational-search-feature-that-updates-results-in-real-time', '2024-11-07 09:44:57', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(60, 'New Drag and Drop Is Just One of Several Real-World Reasons to Use iPhone Mirroring on Your Mac', 'The latest iOS and MacOS updates add this super useful shortcut for moving files between devices.', 'Jeff Carlson', 'https://www.cnet.com/tech/services-and-software/new-drag-and-drop-is-just-one-of-several-real-world-reasons-to-use-iphone-mirroring-on-your-mac/', '2024-10-30 05:31:13', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(61, 'Motorola Razr update finally adds Circle to Search', 'Motorola\'s latest update for the Razr 50/2024 series brings Circle to Search and the September security patch.', 'derrek.lee@futurenet.com (Derrek Lee)', 'https://www.androidcentral.com/apps-software/motorola-razr-2024-circle-to-search', '2024-10-22 13:09:45', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(62, 'Nothing unveils the Phone 2a Plus with a glow-up back that shines in the dark', 'Nothing\'s latest phone glows in the dark, though tracking it down in stores might be a challenge.', 'techkritiko@gmail.com (Jay Bonggolto)', 'https://www.androidcentral.com/phones/nothing-unveils-the-phone-2a-plus-with-a-glow-up-back-that-shines-in-the-dark', '2024-10-31 01:53:59', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(63, 'Pixel 9 series users can expect notable bug fixes with the November security patch', 'Other Pixel 6, Pixel 7, and Pixel 8 models also get the latest firmware with general improvements.', 'vishnu.skar@gmail.com (Vishnu Sarangapurkar)', 'https://www.androidcentral.com/apps-software/google-pixel-9-verizon-owners-already-receive-november-2024-firmware', '2024-11-06 13:49:51', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(64, 'Apple\'s M2 iPad Air Now Starts at Just $499 at Amazon', 'Apple\'s latest M2 iPad Air is now available with prices as low as $499 for the 11-inch model.', 'Ingrid Cruz', 'https://www.cnet.com/deals/apples-m2-ipad-air-now-starts-at-just-499-at-amazon/', '2024-10-28 12:37:12', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(65, 'Stardew Valley\'s Latest Update Is The Perfect Excuse To Get Into The King Of Cozy Games', 'Next week marks one of the single most important events in Western civilization, and it’s important that you participate. I am, of course, referring to the console and mobile release of Stardew Valley’s latest major content patch.Read more...', 'Thomas Wilde', 'https://kotaku.com/stardew-valley-beginner-guide-patch-update-cozy-1851688289', '2024-11-04 13:00:00', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(66, 'The RedMagic 10 Pro Plus is basically a power bank attached to a gaming phone', 'RedMagic just unveiled the 10 Pro Plus in China, and it is a beast of a gaming phone. With the latest Qualcomm hardware, a massive 6.85-inch 144Hz panel, and ridiculous 7050mAh battery, it ticks all the right boxes.', 'harish.jonnalagadda@futurenet.com (Harish Jonnalagadda)', 'https://www.androidcentral.com/phones/the-redmagic-10-pro-is-basically-a-power-bank-attached-to-a-gaming-phone', '2024-11-13 08:28:42', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(67, 'Boston Dynamics\' Atlas at Work: Everything We Know video', 'In the latest video of Boston Dynamics\' Atlas, the humanoid robot demonstrates its first fully autonomous work tasks, using new grippers and self-correcting any errors along the way.', 'Jesse Orrall', 'https://www.cnet.com/videos/boston-dynamics-atlas-at-work-everything-we-know/', '2024-11-12 07:30:03', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(68, 'Disney hits a roadblock with Daisy Ridley\'s \'Star Wars\' movie — the latest project it\'s had trouble getting off the ground', 'Writer Steven Knight has left Daisy Ridley\'s untitled \"Star Wars\" sequel. It\'s the latest project the studio has had trouble getting off the ground.', 'Eammon Jacobs', 'https://www.businessinsider.com/disney-star-wars-daisy-ridley-roadblock-project-steven-knight-2024-10', '2024-10-25 06:35:10', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(69, 'The NFL\'s $1,000 branded designer jackets are the latest sign of fashion\'s newfound love affair with sports', 'As luxury fashion brands see their pandemic boom fade, some are looking to boost their exposure by collaborating with sports events and teams.', 'Maria Noyen', 'https://www.businessinsider.com/nfl-partnership-luxury-fashion-brand-pricey-women-team-jackets-2024-10', '2024-10-22 04:52:09', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(70, 'Google Messages now has smarter detection to tackle tricky scam messages', 'Google’s latest updates are geared to guard Android users from fake deliveries, job-offer scams, and other shady schemes using on-device AI.', 'techkritiko@gmail.com (Jay Bonggolto)', 'https://www.androidcentral.com/apps-software/google-messages-now-has-smarter-detection-to-tackle-tricky-scam-messages', '2024-10-23 02:35:59', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(71, 'Banish Night-Time Anxiety With the Cognitive Shuffling Sleep Hack', 'Cognitive shuffling is the latest sleep hack that has gone viral on TikTok. Here\'s everything you need to know about how to do it.', 'Sean Jackson', 'https://www.cnet.com/health/sleep/banish-night-time-anxiety-with-the-cognitive-shuffling-sleep-hack/', '2024-10-23 10:30:06', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(72, '60,000 student-loan borrowers in public service are getting $4.5 billion in debt cancellation while Biden\'s broader relief remains blocked in court', 'The latest student-loan forgiveness announcement brings the total number of borrowers approved for relief through PSLF to 1 million.', 'Ayelet Sheffey', 'https://www.businessinsider.com/student-loan-forgiveness-pslf-more-borrowers-approved-debt-cancellation-biden-2024-10', '2024-10-17 03:31:01', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(73, 'China just announced an $1.4 trillion plan to rescue its local governments', 'Friday\'s announcement is the latest in a string of stimulus measures China has taken to turn around its ailing economy.', 'Huileng Tan', 'https://www.businessinsider.com/china-economy-local-government-debt-rescue-trump-us-presidential-election-2024-11', '2024-11-08 03:46:25', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(74, 'Stock market today: Indexes drop as tech shares slide before Apple, Amazon earnings', 'Indexes fell for a second day on Thursday as investors reacted to the latest tech earnings and digested the Fed\'s preferred inflation gauge.', 'kcloonan@insider.com (Kelly Cloonan)', 'https://markets.businessinsider.com/news/stocks/stock-market-today-apple-amazon-tech-earnings-microsoft-meta-iphone-2024-10', '2024-10-31 08:10:20', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(75, 'Trump scores a Joe Rogan interview for the first time, with an eye on male voters', 'Joe Rogan\'s interview with Donald Trump would be the former president\'s latest appearance on a podcast that attracts young men.', 'Kelsey Vlamis', 'https://www.businessinsider.com/trump-joe-rogan-interview-podcast-young-male-voters-2024-10', '2024-10-22 18:01:13', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(76, 'Mac Mini (2024): Specs, Release Date, Price, Features', 'This desktop computer has its first design change since 2010, with a smaller footprint, vents at the bottom, and ports on the front.', 'Brenda Stolyar', 'https://www.wired.com/story/apple-mac-mini-2024/', '2024-10-29 09:30:00', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(77, 'Haiti swears in a new leader as gangs shoot at a flight landing in the main airport', 'Haiti\'s international airport shut down temporarily after gangs opened fire at a Spirit Airlines flight landing in Port-Au-Prince. The latest violence came as a new prime minister was sworn in.', 'The Associated Press', 'https://www.npr.org/2024/11/11/nx-s1-5187050/haiti-gang-violence-spirit-airlines-new-prime-minister', '2024-11-11 15:39:08', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(78, 'One thing Trump and Obama have in common: a fondness for \'czars\'', 'Trump is the latest president to appoint a czar to deal with a particular issue — in this case, the border. But what does that mean? A look at the controversial history of government czars.', 'Rachel Treisman', 'https://www.npr.org/2024/11/15/nx-s1-5189264/trump-border-czar-political-czar-history', '2024-11-15 04:30:00', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(79, 'Boeing’s striking machinists union will vote Monday on a new contract offer', 'Boeing’s machinists union leaders are endorsing the company’s latest contract offer, setting the stage for a vote on Monday that could end the seven week-long strike.', 'Joel Rose', 'https://www.npr.org/2024/11/01/nx-s1-5174234/boeing-strike-machinists-union-contract-vote', '2024-11-01 03:30:00', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(80, 'A TV show about EA Sports\' Madden games hits Prime Video on November 26', 'Madden NFL has been around for almost 40 years (really) so it’s high time the gaming franchise got the documentary treatment. Prime Video has got you covered. The platform just announced that It’s in the Game: Madden NFL will stream on November 26, which is j…', 'Lawrence Bonk', 'https://consent.yahoo.com/v2/collectConsent?sessionId=1_cc-session_50fa9fb6-17a1-417d-9ce3-3a170dfdd96b', '2024-11-11 14:18:33', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(81, 'Micro-trends are taking over social media, and keeping up can be really expensive', 'A new aesthetic or core circulates on social-media feeds every couple of weeks, pressuring consumers to buy the latest trendy items.', 'Lindsay Dodgson', 'https://www.businessinsider.com/social-media-micro-trends-cause-financial-problems-fashion-mental-health-2024-10', '2024-10-24 03:26:20', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(82, 'Ukraine\'s deep strikes on ammo depots and weapons factories across Russia aim to weaken its war machine', 'Two weekend strikes were the latest in a string of recent attacks that have targeted facilities crucial to supporting Russian operations in Ukraine.', 'Jake Epstein', 'https://www.businessinsider.com/ukraine-deep-strikes-inside-russia-meant-to-weaken-war-machines-2024-10', '2024-10-22 11:52:39', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(83, 'Willie Nelson’s Latest Is a Cannabis Cookbook', 'The ninety-one-year-old singer might outsmoke Snoop Dogg, but for lunch he’ll stick to bacon-and-tomato sandwiches, Adam Iscoe writes.', 'Adam Iscoe', 'https://www.newyorker.com/magazine/2024/11/11/willie-nelsons-latest-is-a-cannabis-cookbook', '2024-11-04 05:30:00', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(84, 'Will Republicans or Democrats control US Congress in January? Here’s the latest', NULL, 'Unknown', 'https://consent.yahoo.com/v2/collectConsent?sessionId=1_cc-session_bba78b33-9bf3-44ea-ba89-2da0406ea568', '2024-11-05 20:42:32', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(85, 'Saturday, Nov 9 update: Latest on Tropical Storm Rafael from the National Hurricane Center', NULL, 'Unknown', 'https://consent.yahoo.com/v2/collectConsent?sessionId=1_cc-session_4c19790c-28e0-4261-a598-5356f2cbbc84', '2024-11-09 09:25:03', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(86, 'US laments \'disappointing\' Swiss decision not to fully adopt latest EU sanctions against Russia', 'The United States is expressing disappointment over a decision by the Swiss government not to adopt all measures in the latest round of European Union...', 'JAMEY KEATEN', 'https://www.yahoo.com/news/us-laments-disappointing-swiss-decision-164528955.html', '2024-10-18 11:15:28', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(87, 'JD Vance’s Latest Trump Line Left Jake Tapper Laughing During Brutal CNN Interview', 'Jake Tapper couldn’t hold back his laughter after Republican vice presidential candidate JD Vance revealed a new theory about why several big-name...', 'Katie Francis', 'https://www.thedailybeast.com/jd-vances-latest-trump-line-left-jake-tapper-laughing-during-brutal-cnn-interview/', '2024-10-27 10:47:22', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(88, 'Take Aim With This Glorious Ultraman Trading Card Art', 'io9 has your exclusive first look at some of the new cards coming to wave 2 of Ultraman: The Trading Card Game.', 'James Whitbrook', 'https://gizmodo.com/nycc-2024-ultraman-trading-card-game-wave-2-exclusive-reveal-2000514210', '2024-10-20 12:30:02', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(89, 'Before Black Friday, Amazon Is Slashing The Price of Google’s Foldable Phone to a Record Low Price', 'This is the first time since its release that Google\'s foldable phone is available at a discounted price.', 'Gizmodo Deals', 'https://gizmodo.com/before-black-friday-amazon-is-slashing-the-price-of-googles-foldable-phone-to-a-record-low-price-2000522645', '2024-11-10 07:40:18', 'NewsAPI', NULL, '2024-11-18 11:55:22', '2024-11-18 11:55:22'),
(90, '\'The Latest Slang\'', 'Monologue &#124; Aired Monday night on NBC: This is actually a true story. It was in the news today. The latest slang dictionary reports that the word Obama means \"cool,\" as in \"you are so Obama.\" Also gaining popularity: the phrase \"shut your Biden-hole.\" ', 'By ALAN LEE', 'https://laughlines.blogs.nytimes.com/2009/08/04/blogs/04laughlines-the-late8969.html', '2009-08-04 08:56:03', 'NYTimes', NULL, '2024-11-18 11:55:24', '2024-11-18 11:55:24'),
(91, 'That’s the Latest', 'It’s no surprise that triumphant Tea Party politicians are seeking ranking posts within the incoming House Republican majority. But their likely speaker, Representative John Boehner, already has a problem with Representative Michele Bachmann of Minnesota, the doyenne of conservative insurgents. ', 'Unknown', 'https://www.nytimes.com/2010/11/06/opinion/06sat4.html', '2010-11-05 20:32:09', 'NYTimes', NULL, '2024-11-18 11:55:24', '2024-11-18 11:55:24'),
(92, 'Egypt’s Latest Outrage', 'Two events over the weekend illustrated the contradictory relationship between the United States and Egypt. On Friday, Egypt refused to grant entry to an American scholar and former diplomat, Michele Dunne, who had been invited to attend a conference in Cairo. ', 'By The Editorial Board', 'https://www.nytimes.com/2014/12/16/opinion/egypts-latest-outrage.html', '2014-12-15 20:47:29', 'NYTimes', NULL, '2024-11-18 11:55:24', '2024-11-18 11:55:24'),
(93, 'Meyer\'s Latest? Maialino.', 'Danny Meyer is naming his Italian restaurant in the Gramercy Park Hotel Maialino. It means \"little pig\" or \"suckling pig.\" ', 'By FLORENCE FABRICANT', 'https://dinersjournal.blogs.nytimes.com/2009/08/19/blogs/19dinersjournal-meyers-l4967.html', '2009-08-19 11:34:18', 'NYTimes', NULL, '2024-11-18 11:55:24', '2024-11-18 11:55:24'),
(94, 'President Karzai’s Latest', 'It took particular audacity for President Hamid Karzai of Afghanistan to order Parliament to delay this weekend’s opening session while an unconstitutional court he appointed re-investigates charges of fraud in last fall’s parliamentary vote. ', 'Unknown', 'https://www.nytimes.com/2011/01/21/opinion/21fri1.html', '2011-01-20 22:07:01', 'NYTimes', NULL, '2024-11-18 11:55:24', '2024-11-18 11:55:24'),
(95, 'Rodriguez’s Latest Exposure', 'The upcoming Details magazine cover.  For Yankees\' third baseman Alex Rodriguez, the timing of a cover story (\"Confessions of a Damned Yankee\" by Jason Gay) and eye-opening photo shoot by Steven Klein for Details magazine could hardly have come at a less opportune time. He had agreed to it in late December, when it seemed like a good, mainstream way to raise his fashionable profile. Instead, he sat for the interview on the day he found out Sports Illustrated reporter Selena Roberts would write he had tested positive for steroids in 2003.  For Details, of course, the timing felt altogether serendipitous. An athlete profile turned out to be a window into the biggest, messiest sports story of the year.   \"You look at the pictures and you have to wonder what he is thinking,\" said Alex Bhattacharji, the editor in charge of the story and photos. \"He was totally at ease. It led us to believe he was either relieved it was coming out or he didn\'t realize it would come out so soon. We either lucked into or fell into the time period that adds a head-scratching element to the whole question of who Alex is.\"   Gay\'s story describes Rodriguez\'s relaxed state of mind as he knew the Sports Illustrated story was imminent. He was taking no frantic phone calls and did not hint at the turmoil that was about to hit. Gay detailed how Rodriguez drank shots of Patrón and posed without complaint for photos that would set off alarm bells in the minds of many image-conscious athletes. The interview, Gay said, was classic guarded A-Rod, but the photos were altogether different. Klein and creative director Rockwell Harwood chose the setting, a bare-bones gym in Tampa with mattresses strewn on a concrete floor, and suggested the poses. Bhattacharji said Rodriguez had every opportunity to decline any of the shots, but did not. He did not take his shirt off, but chose a sleeveless one.  \"We thought he was getting to a different level of comfort with himself,\" Bhattacharji said. \"The picture of him kissing his reflection is very revealing. Is he in love with himself or is he kissing something goodbye?\"  A day later, Rodriguez was text-messaging Gay and nervously asking that he not write that Rodriguez had revealed his favorite Madonna song. He still said nothing about the steroid allegations.  A few days later, Rodriguez looked markedly less comfortable as he admitted his performance enhancing drug use, which instantly became the backdrop for Gay\'s story. The magazine is set to hit the newsstands soon, as baseball season approaches and Rodriguez searches for a way to manage in an even harsher spotlight.  When Details first approached Rodriguez\' representatives and public relations handlers, including Guy Oseary, the manager he shares with Madonna, Rodriguez saw posing for a magazine aimed at fashion-conscious young men as a way to improve his image, said Bhattacharji. But Gay describes Rodriguez as decidedly un-hip. \"Style-wise, he\'s a little Fred Rogers, a little Jerry Seinfeld,\" Gay writes.  Now, in the eyes of the public, Rodriguez is a little Barry Bonds and a little, perhaps, Madonna.         ', 'By LYNN ZINSER', 'https://bats.blogs.nytimes.com/2009/03/17/blogs/17bats-rodrigue3037.html', '2009-03-17 14:09:07', 'NYTimes', NULL, '2024-11-18 11:55:24', '2024-11-18 11:55:24'),
(96, 'Williams\'s Latest Injury Is Latest Hurdle for Nets', 'After numerous postponements and months of bad news, the Nets had finally begun to let themselves imagine the presence of Jayson Williams in their lineup. He had overcome his injuries, they thought, and though it would likely be a couple of weeks before he made a major contribution, they felt free to exhale.', 'By Chris Broussard', 'https://www.nytimes.com/2000/03/17/sports/pro-basketball-williams-s-latest-injury-is-latest-hurdle-for-nets.html', '2000-03-16 23:30:00', 'NYTimes', NULL, '2024-11-18 11:55:24', '2024-11-18 11:55:24'),
(97, 'Here’s the latest.', 'Former President Donald J. Trump was rushed off a stage by Secret Service agents at a rally in Butler, Pa., after several pops that sounded like gunshots.', 'By Chris Cameron', 'https://www.nytimes.com/2024/07/13/us/politics/trump-will-rally-in-pennsylvania-as-biden-allies-hit-the-trail-too-heres-the-latest.html', '2024-07-13 06:47:52', 'NYTimes', NULL, '2024-11-18 11:55:24', '2024-11-18 11:55:24'),
(98, 'The Latest on the Election', 'Joe Biden is now the favorite to win the presidency, and Republicans are favored to keep Senate control — but both results are far from certain. And Democrats failed to win the resounding victory that pre-election polls had suggested they could.', 'By David Leonhardt', 'https://www.nytimes.com/2020/11/04/briefing/election-day-michigan-donald-trump.html', '2020-11-04 06:16:14', 'NYTimes', NULL, '2024-11-18 11:55:24', '2024-11-18 11:55:24'),
(99, '‘The Latest Slang’', 'Monologue |  Aired Monday night on NBC: This is actually a true story. It was in the news today. The latest slang dictionary reports that the word Obama means “cool,” as in “you are so Obama.” Also gaining popularity: the phrase “shut your Biden-hole.” ', 'By Alan Lee', 'https://laughlines.blogs.nytimes.com/2009/08/04/the-latest-slang/', '2009-08-04 08:56:03', 'NYTimes', NULL, '2024-11-18 11:55:24', '2024-11-18 11:55:24'),
(100, 'Paris Olympics 2024 latest medal table', NULL, 'Purvesh', 'https://www.theguardian.com/sport/ng-interactive/2024/aug/11/paris-olympics-2024-medal-table-latest', '2024-08-11 05:59:16', 'Guardian', NULL, '2024-11-18 11:55:25', '2024-11-18 11:55:25'),
(101, 'Russia’s latest attack on Ukraine shows maximalist war aims remain unchanged', NULL, 'Piyush', 'https://www.theguardian.com/world/2024/nov/17/russias-latest-attack-on-ukraine-shows-maximalist-war-aims-remain-unchanged', '2024-11-17 12:34:24', 'Guardian', NULL, '2024-11-18 11:55:25', '2024-11-18 11:55:25'),
(102, '2024 US presidential polls tracker: Trump v Harris latest national averages', NULL, 'Unknown', 'https://www.theguardian.com/us-news/ng-interactive/2024/nov/04/presidential-polls-today-election-donald-trump-kamala-harris-latest', '2024-11-04 12:31:04', 'Guardian', NULL, '2024-11-18 11:55:25', '2024-11-18 11:55:25'),
(103, 'Express editor Gary Jones departs in latest Reach cutbacks', NULL, 'Unknown', 'https://www.theguardian.com/media/2024/sep/17/express-editor-gary-jones-departs-reach-cutbacks', '2024-09-17 03:16:01', 'Guardian', NULL, '2024-11-18 11:55:25', '2024-11-18 11:55:25'),
(104, 'Trump hawks $100 commemorative coins in latest hunt for cash', NULL, 'Unknown', 'https://www.theguardian.com/us-news/2024/sep/22/trump-commemorative-coins', '2024-09-22 08:08:23', 'Guardian', NULL, '2024-11-18 11:55:25', '2024-11-18 11:55:25'),
(105, 'Hot ticket: Brooklyn Beckham is latest celebrity to launch fiery sauce', NULL, 'Unknown', 'https://www.theguardian.com/food/2024/oct/18/brooklyn-beckham-latest-celebrity-launch-hot-sauce', '2024-10-18 05:06:29', 'Guardian', NULL, '2024-11-18 11:55:25', '2024-11-18 11:55:25'),
(106, 'Anne Hathaway and Zendaya are latest to join Christopher Nolan’s new film', NULL, 'Unknown', 'https://www.theguardian.com/film/2024/nov/08/new-christopher-nolan-movie-anne-hathaway-zendaya', '2024-11-08 15:24:11', 'Guardian', NULL, '2024-11-18 11:55:25', '2024-11-18 11:55:25'),
(107, 'Netflix’s latest show is the worst live TV event ever', NULL, 'Unknown', 'https://www.theguardian.com/tv-and-radio/2024/sep/18/netflixs-latest-show-is-the-worst-live-tv-event-ever', '2024-09-18 07:18:01', 'Guardian', NULL, '2024-11-18 11:55:25', '2024-11-18 11:55:25'),
(108, 'Noni Madueke’s Greece audition is latest act in England coming-of-age story', NULL, 'Unknown', 'https://www.theguardian.com/football/2024/nov/15/noni-madueke-greece-audition-latest-act-england-coming-of-age-story', '2024-11-15 17:00:22', 'Guardian', NULL, '2024-11-18 11:55:25', '2024-11-18 11:55:25'),
(109, 'Kamala Harris is just the latest victim of global trend to oust incumbents', NULL, 'Unknown', 'https://www.theguardian.com/global/2024/nov/10/kamala-harris-is-just-the-latest-victim-of-global-trend-to-oust-incumbents', '2024-11-10 06:30:18', 'Guardian', NULL, '2024-11-18 11:55:25', '2024-11-18 11:55:25');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_11_15_081001_create_preferences_table', 1),
(6, '2024_11_15_083207_create_articles_table', 1),
(7, '2024_11_18_060003_add_fields_to_articles_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('Purveshramoliya5159@gmail.com', '$2y$10$jd3DbpztPi9ydruJNeEFYO0VBs5Z085MskYSnII5QOG3yosSF3dNy', '2024-11-16 04:57:05');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(9, 'App\\Models\\User', 1, 'auth_token', 'e2e23cbc30ec1605beb9ecb95e1256af8ffe4ba7d69d80bd4554444099ddc806', '[\"*\"]', '2024-11-18 12:29:56', NULL, '2024-11-18 04:49:38', '2024-11-18 12:29:56'),
(8, 'App\\Models\\User', 1, 'auth_token', 'a38fe4f1ab38048777407fe6e8bb5ab3b8b597e37b76adbd3f75513689a0be83', '[\"*\"]', NULL, NULL, '2024-11-16 05:18:22', '2024-11-16 05:18:22'),
(7, 'App\\Models\\User', 1, 'auth_token', '196e267094d9aee2d02fe5897192c7f4583a68ac1b848c8392c64a4d6426387b', '[\"*\"]', '2024-11-16 05:17:55', NULL, '2024-11-16 05:17:21', '2024-11-16 05:17:55'),
(6, 'App\\Models\\User', 1, 'auth_token', '37ce8c1ca14c6fbf4d92cbc32a4641b2f9550495bb70e9fa8e3abf6e18029836', '[\"*\"]', NULL, NULL, '2024-11-16 05:02:45', '2024-11-16 05:02:45');

-- --------------------------------------------------------

--
-- Table structure for table `preferences`
--

DROP TABLE IF EXISTS `preferences`;
CREATE TABLE IF NOT EXISTS `preferences` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `sources` json DEFAULT NULL,
  `categories` json DEFAULT NULL,
  `authors` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `preferences_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `preferences`
--

INSERT INTO `preferences` (`id`, `user_id`, `sources`, `categories`, `authors`, `created_at`, `updated_at`) VALUES
(1, 1, '[\"Guardian\", \"NewsAPI\"]', '[\"Technology\", \"Sports\"]', '[\"John Doe\", \"Molly Higgins\"]', '2024-11-18 05:23:40', '2024-11-18 05:25:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Purvesh', 'Purveshramoliya5159@gmail.com', NULL, '$2y$10$ivjCzKVeV.InBOFLo4dad.wvnavPm11YuDEvFA7I1gT0XpVG38jZO', NULL, '2024-11-15 12:35:59', '2024-11-16 05:17:57');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
