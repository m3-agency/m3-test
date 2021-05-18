-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 18, 2021 at 02:10 PM
-- Server version: 10.3.25-MariaDB-log
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `m3developmentco_m3-test`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_05_17_145113_create_todos_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `todo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed_at` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `user_id`, `todo`, `due_date`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, '1', 'Hatter, \'I cut some more bread-and-butter--\' \'But what did the archbishop find?\' The Mouse only shook its head down, and was going to say,\' said the Hatter, and, just as she could see it written up.', '2023-02-17 09:24:08', '2021-05-18 13:09:00', '2021-05-18 12:07:23', '2021-05-18 12:09:00'),
(2, '1', 'Mock Turtle to sing this:-- \'Beautiful Soup, so rich and green, Waiting in a long, low hall, which was full of the Queen to play croquet with the lobsters, out to sea as you go to on the OUTSIDE.\'.', '2022-11-14 22:17:29', NULL, '2021-05-18 12:07:23', '2021-05-18 12:07:23'),
(3, '1', 'Alice said; but was dreadfully puzzled by the hedge!\' then silence, and then treading on my tail. See how eagerly the lobsters to the other: the only difficulty was, that she was quite a chorus of.', '2022-08-21 12:50:56', NULL, '2021-05-18 12:07:23', '2021-05-18 12:07:23'),
(4, '1', 'Dormouse,\' the Queen had never before seen a cat without a porpoise.\' \'Wouldn\'t it really?\' said Alice aloud, addressing nobody in particular. \'She\'d soon fetch it back!\' \'And who is to give the.', '2022-04-09 03:15:06', NULL, '2021-05-18 12:07:23', '2021-05-18 12:07:23'),
(5, '1', 'March Hare had just begun to repeat it, but her head to keep herself from being broken. She hastily put down her flamingo, and began by producing from under his arm a great hurry to get us dry would.', '2021-08-15 07:55:24', NULL, '2021-05-18 12:07:23', '2021-05-18 12:07:23'),
(6, '1', 'MINE.\' The Queen had never forgotten that, if you please! \"William the Conqueror, whose cause was favoured by the officers of the moment she felt sure she would gather about her repeating \'YOU ARE.', '2021-08-08 17:09:37', '2021-05-18 13:07:23', '2021-05-18 12:07:23', '2021-05-18 12:07:23'),
(7, '1', 'The Dormouse had closed its eyes by this time, and was a very good height indeed!\' said Alice, swallowing down her anger as well say,\' added the Queen. \'Well, I can\'t understand it myself to begin.', '2022-01-03 09:55:09', '2021-05-18 13:07:23', '2021-05-18 12:07:23', '2021-05-18 12:07:23'),
(8, '9', 'I almost wish I hadn\'t gone down that rabbit-hole--and yet--and yet--it\'s rather curious, you know, as we were. My notion was that you have just been picked up.\' \'What\'s in it?\' said the Gryphon.', '2022-04-25 02:56:36', NULL, '2021-05-18 12:07:24', '2021-05-18 12:07:24'),
(9, '3', 'Alice called out as loud as she went hunting about, and shouting \'Off with his knuckles. It was all about, and called out in a hurry. \'No, I\'ll look first,\' she said, by way of escape, and wondering.', '2023-01-17 12:20:46', NULL, '2021-05-18 12:07:24', '2021-05-18 12:07:24'),
(10, '6', 'There was a paper label, with the Queen, who was passing at the moment, \'My dear! I wish you wouldn\'t mind,\' said Alice: \'she\'s so extremely--\' Just then her head down to them, and he checked.', '2021-07-17 12:31:42', NULL, '2021-05-18 12:07:24', '2021-05-18 12:07:24'),
(11, '3', 'THROUGH the earth! How funny it\'ll seem, sending presents to one\'s own feet! And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear.', '2023-05-06 12:05:44', NULL, '2021-05-18 12:07:24', '2021-05-18 12:07:24'),
(12, '8', 'William the Conqueror.\' (For, with all her riper years, the simple rules their friends had taught them: such as, \'Sure, I don\'t care which happens!\' She ate a little feeble, squeaking voice.', '2022-07-25 07:11:46', NULL, '2021-05-18 12:07:24', '2021-05-18 12:07:24'),
(13, '2', 'King said to the Cheshire Cat: now I shall be late!\' (when she thought it would,\' said the Pigeon in a dreamy sort of present!\' thought Alice. \'Now we shall get on better.\' \'I\'d rather finish my.', '2022-01-31 16:02:00', NULL, '2021-05-18 12:07:24', '2021-05-18 12:07:24'),
(14, '8', 'SHE, of course,\' said the Duchess: \'and the moral of THAT is--\"Take care of themselves.\"\' \'How fond she is of mine, the less there is of finding morals in things!\' Alice began to say but \'It belongs.', '2022-11-08 01:34:52', NULL, '2021-05-18 12:07:24', '2021-05-18 12:07:24'),
(15, '1', 'She pitied him deeply. \'What is it?\' The Gryphon lifted up both its paws in surprise. \'What! Never heard of one,\' said Alice. \'And where HAVE my shoulders got to? And oh, I wish you would seem to.', '2021-11-26 13:57:16', NULL, '2021-05-18 12:07:24', '2021-05-18 12:07:24'),
(16, '6', 'Alice, \'to speak to this last remark. \'Of course it is,\' said the Mock Turtle sang this, very slowly and sadly:-- \'\"Will you walk a little shaking among the trees upon her face. \'Very,\' said Alice.', '2022-10-27 12:53:09', NULL, '2021-05-18 12:07:24', '2021-05-18 12:07:24'),
(17, '6', 'Alice looked at poor Alice, and sighing. \'It IS the fun?\' said Alice. \'Then you keep moving round, I suppose?\' said Alice. \'Anything you like,\' said the Dormouse; \'--well in.\' This answer so.', '2022-08-05 23:47:26', NULL, '2021-05-18 12:07:24', '2021-05-18 12:07:24'),
(18, '7', 'I\'ll get into that beautiful garden--how IS that to be otherwise.\"\' \'I think I should think very likely it can be,\' said the King. Here one of the baby, the shriek of the wood--(she considered him.', '2021-08-07 20:29:29', NULL, '2021-05-18 12:07:24', '2021-05-18 12:07:24'),
(19, '5', 'Shark, But, when the tide rises and sharks are around, His voice has a timid and tremulous sound.] \'That\'s different from what I should think it would feel very sleepy and stupid), whether the.', '2023-04-02 18:06:13', NULL, '2021-05-18 12:07:24', '2021-05-18 12:07:24'),
(20, '8', 'Alice to herself, \'I wonder if I only wish it was,\' said the Caterpillar; and it was getting very sleepy; \'and they drew all manner of things--everything that begins with an M--\' \'Why with an.', '2021-12-07 15:54:32', NULL, '2021-05-18 12:07:24', '2021-05-18 12:07:24'),
(21, '9', 'Croquet-Ground A large rose-tree stood near the right size to do THAT in a very poor speaker,\' said the Cat, \'or you wouldn\'t mind,\' said Alice: \'she\'s so extremely--\' Just then she noticed that one.', '2023-02-08 20:47:13', NULL, '2021-05-18 12:07:24', '2021-05-18 12:07:24'),
(22, '9', 'Alice, that she did not seem to put his mouth close to her in the other: the only one way of expecting nothing but out-of-the-way things had happened lately, that Alice could not remember ever.', '2022-03-15 07:37:38', NULL, '2021-05-18 12:07:24', '2021-05-18 12:07:24'),
(23, '7', 'King had said that day. \'A likely story indeed!\' said the Duchess, \'chop off her knowledge, as there was hardly room to grow up any more HERE.\' \'But then,\' thought she, \'what would become of it.', '2022-03-31 20:30:36', NULL, '2021-05-18 12:07:24', '2021-05-18 12:07:24'),
(24, '8', 'Alice. \'Nothing WHATEVER?\' persisted the King. \'Nothing whatever,\' said Alice. \'Why not?\' said the Footman. \'That\'s the reason and all the jelly-fish out of the tale was something like this:-- \'Fury.', '2021-05-24 20:07:27', NULL, '2021-05-18 12:07:24', '2021-05-18 12:07:24'),
(25, '3', 'Alice, \'to pretend to be a walrus or hippopotamus, but then she remembered trying to make ONE respectable person!\' Soon her eye fell on a little timidly, for she was trying to box her own courage.', '2021-10-28 20:45:48', NULL, '2021-05-18 12:07:24', '2021-05-18 12:07:24'),
(26, '6', 'Next came an angry tone, \'Why, Mary Ann, and be turned out of the right-hand bit to try the thing Mock Turtle repeated thoughtfully. \'I should have liked teaching it tricks very much, if--if I\'d.', '2021-12-13 16:32:20', NULL, '2021-05-18 12:07:24', '2021-05-18 12:07:24'),
(27, '9', 'Alice. The poor little Lizard, Bill, was in the pictures of him), while the rest waited in silence. At last the Caterpillar sternly. \'Explain yourself!\' \'I can\'t explain MYSELF, I\'m afraid, sir\'.', '2021-10-25 22:04:19', NULL, '2021-05-18 12:07:24', '2021-05-18 12:07:24'),
(28, '6', 'I\'m doubtful about the twentieth time that day. \'A likely story indeed!\' said the Mock Turtle to the Cheshire Cat sitting on a crimson velvet cushion; and, last of all the arches are gone from this.', '2022-03-14 14:30:17', '2021-05-18 13:07:24', '2021-05-18 12:07:24', '2021-05-18 12:07:24'),
(29, '8', 'Will you, won\'t you, will you, won\'t you, won\'t you, won\'t you, will you join the dance. \'\"What matters it how far we go?\" his scaly friend replied. \"There is another shore, you know, upon the other.', '2021-11-23 05:17:49', '2021-05-18 13:07:24', '2021-05-18 12:07:24', '2021-05-18 12:07:24'),
(30, '6', 'Cat, \'if you only walk long enough.\' Alice felt a violent shake at the end of the legs of the creature, but on second thoughts she decided to remain where she was shrinking rapidly; so she began.', '2022-04-13 20:24:12', '2021-05-18 13:07:24', '2021-05-18 12:07:24', '2021-05-18 12:07:24'),
(31, '6', 'I got up very carefully, remarking, \'I really must be what he did with the birds hurried off to trouble myself about you: you must manage the best way you can;--but I must sugar my hair.\" As a duck.', '2021-09-04 11:04:44', '2021-05-18 13:07:24', '2021-05-18 12:07:24', '2021-05-18 12:07:24'),
(32, '3', 'Cheshire Cat sitting on a three-legged stool in the sea, \'and in that soup!\' Alice said to the fifth bend, I think?\' \'I had NOT!\' cried the Gryphon, sighing in his throat,\' said the youth, \'and your.', '2022-08-07 12:11:57', '2021-05-18 13:07:24', '2021-05-18 12:07:24', '2021-05-18 12:07:24'),
(33, '5', 'And yet I wish you would seem to be\"--or if you\'d like it very hard indeed to make out what it meant till now.\' \'If that\'s all I can go back and see that the cause of this sort of present!\' thought.', '2022-07-31 06:43:18', '2021-05-18 13:07:24', '2021-05-18 12:07:24', '2021-05-18 12:07:24'),
(34, '6', 'By this time the Queen had never left off quarrelling with the lobsters and the other side. The further off from England the nearer is to France-- Then turn not pale, beloved snail, but come and.', '2022-05-14 08:33:49', '2021-05-18 13:07:24', '2021-05-18 12:07:24', '2021-05-18 12:07:24'),
(35, '8', 'White Rabbit, who said in a solemn tone, \'For the Duchess. \'I make you grow shorter.\' \'One side of WHAT? The other side of the lefthand bit. * * * * * * * * * * * * * * * * \'What a funny watch!\' she.', '2022-07-05 19:44:51', '2021-05-18 13:07:24', '2021-05-18 12:07:24', '2021-05-18 12:07:24'),
(36, '10', 'Hatter, it woke up again as quickly as she was now more than nine feet high. \'Whoever lives there,\' thought Alice, \'to speak to this mouse? Everything is so out-of-the-way down here, that I should.', '2022-01-01 17:10:17', '2021-05-18 13:07:24', '2021-05-18 12:07:25', '2021-05-18 12:07:25'),
(37, '5', 'I\'m perfectly sure I can\'t tell you my adventures--beginning from this side of WHAT?\' thought Alice; \'I daresay it\'s a very humble tone, going down on one side, to look at them--\'I wish they\'d get.', '2022-07-18 14:56:55', '2021-05-18 13:07:24', '2021-05-18 12:07:25', '2021-05-18 12:07:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kelsie Cronin', 'test@test.test', '2021-05-18 12:07:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0AmgmdHrgv', '2021-05-18 12:07:23', '2021-05-18 12:07:23'),
(2, 'Simeon Runolfsson', 'hickle.lloyd@example.com', '2021-05-18 12:07:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jtwKZkSiwI', '2021-05-18 12:07:23', '2021-05-18 12:07:23'),
(3, 'Mr. Wallace Dibbert DDS', 'imelda81@example.org', '2021-05-18 12:07:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Y9JwSvESEy', '2021-05-18 12:07:23', '2021-05-18 12:07:23'),
(4, 'Mr. Jeromy Fadel DVM', 'ggreenfelder@example.com', '2021-05-18 12:07:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yfswbRTkn4', '2021-05-18 12:07:23', '2021-05-18 12:07:23'),
(5, 'Dr. Quinton McCullough', 'kale43@example.com', '2021-05-18 12:07:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1J8MijefPP', '2021-05-18 12:07:23', '2021-05-18 12:07:23'),
(6, 'Mr. Rasheed Pollich', 'trogahn@example.net', '2021-05-18 12:07:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'm2jbjn2p5M', '2021-05-18 12:07:23', '2021-05-18 12:07:23'),
(7, 'Soledad Wiegand IV', 'pouros.faustino@example.net', '2021-05-18 12:07:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ceqNhHGb1S', '2021-05-18 12:07:23', '2021-05-18 12:07:23'),
(8, 'Jonathan Terry V', 'rodolfo38@example.net', '2021-05-18 12:07:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DOJNTHTeL7', '2021-05-18 12:07:23', '2021-05-18 12:07:23'),
(9, 'Alia Quitzon', 'klocko.sylvester@example.com', '2021-05-18 12:07:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jnwvWW2AxS', '2021-05-18 12:07:23', '2021-05-18 12:07:23'),
(10, 'Ms. Tiffany Zboncak DDS', 'stehr.ruthie@example.org', '2021-05-18 12:07:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tZqzRftUdX', '2021-05-18 12:07:23', '2021-05-18 12:07:23');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
