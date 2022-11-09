-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 09, 2022 at 01:41 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_book_store_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `full_name`, `email`, `password`) VALUES
(1, 'Naeem', 'naeemwitbooi4@gmail.com', '$2y$10$Nqq/y251QX2Ccvb1Ax7hUuMqQSkG3yRLCxN2KPdetnSP3oaXVH70a');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` varchar(100) NOT NULL,
  `genre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `age`, `genre`) VALUES
(1, 'Vikram Seth', '68', 'Poetry'),
(2, 'Abu\'l-fazl ibn Mubarak', 'Deceased', 'Biography'),
(3, 'Philip Zimbardo', '87', 'Psychology'),
(4, 'Jane Austen', 'Deceased', 'Novel'),
(5, 'J. M. Coetzee', '81', 'Novel');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author_id`, `description`, `category_id`, `cover`, `file`) VALUES
(1, 'The Tale Of Melon City ', 1, 'It is a poem by Vikram Seth in which he mocks any government system. These tails age-old customs or being proud of beliefs and traditions too simple. Moreover, through the melon city, the poet represents any nation whose policies are on the basis of superstitions and old age beliefs.', 1, '', ''),
(2, 'The Humble Administrator\'s Garden ', 1, 'The Humble Administrator\'s Garden is a collection of poetry written by Vikram Seth. It is his first collection, published in 1985.', 1, '', ''),
(3, 'All You Who Sleep Tonight ', 1, 'The poem is about those who are far away from their loved ones. Vikram Seth sympathizes with the lonely feeling of those who are living alone away from their loved ones at a different places and surroundings. Life is easy and happier when one stays with those who loves and cares for them.', 1, '', ''),
(4, 'Akbarnama', 2, 'The first volume of Akbarnama deals with the birth of Akbar, the history of Timur\'s family and the reigns of Babur and Humayun and the Suri sultans of Delhi. Volume one of Akbarnama encompasses Akbar\'s birth and his upbringings.', 2, '', ''),
(5, 'The Cognitive Control of Motivation', 3, 'Philip George Zimbardo (born March 23, 1933) is a psychologist and a professor emeritus at Stanford University. He became known for his 1971 Stanford prison experiment and has since authored various introductory psychology books, textbooks for college students, and other notable works, including The Lucifer Effect, The Time Paradox and The Time Cure.', 3, '', ''),
(6, 'Stanford prison experiment: A simulation study of the psychology of imprisonment', 3, 'According to Zimbardo and his colleagues, the Stanford Prison Experiment revealed how people will readily conform to the social roles they are expected to play, especially if the roles are as strongly stereotyped as those of the prison guards.', 3, '', ''),
(7, 'Influencing Attitudes and Changing Behaviour', 3, 'In this introductory text to the field of attitude change, the emphasis is on one of the end products of research in social psychology--manipulation and control of attitudes and related behaviors. The text first defines the concept of attitude, then identifies ideas from the areas of history, literature, law, religion, and the social sciences that explore concepts of attitude change.', 3, '', ''),
(8, 'Sense and Sensibility ', 4, 'Sense and Sensibility tells the story of the impoverished Dashwood family, focusing on the sisters Elinor and Marianne, personifications of good sense (common sense) and sensibility (emotionality), respectively.', 4, '', ''),
(9, 'Pride and Prejudice ', 4, 'Pride and Prejudice follows the turbulent relationship between Elizabeth Bennet, the daughter of a country gentleman, and Fitzwilliam Darcy, a rich aristocratic landowner. They must overcome the titular sins of pride and prejudice in order to fall in love and marry.', 4, '', ''),
(10, 'Mansfield Park ', 4, 'Mansfield Park is the story of Fanny Price, sent by her impoverished family to be raised in the household of a wealthy aunt and uncle. The story follows her into adulthood and is a commentary on class, family ties, marriage, and the status of women.', 4, '', ''),
(11, 'Emma', 4, 'Emma, fourth novel by Jane Austen, published in three volumes in 1815. Set in Highbury, England, in the early 19th century, the novel centres on Emma Woodhouse, a precocious young woman whose misplaced confidence in her matchmaking abilities occasions several romantic misadventures.', 4, '', ''),
(12, 'Northanger Abbey ', 4, 'Northanger Abbey is a coming-of-age novel and a satire of Gothic novels written by Jane Austen. Austen was also influenced by Charlotte Lennox\'s The Female Quixote. Northanger Abbey was completed in 1803, the first of Austen\'s novels completed in full, but was published posthumously in 1817 with Persuasion.', 4, '', ''),
(13, 'Persuasion ', 4, 'Persuasion tells the story of a second chance, the reawakening of love between Anne Elliot and Captain Frederick Wentworth, whom eight years earlier she had been persuaded not to marry. Wentworth returns from the Napoleonic Wars with prize money and the social acceptability of naval rank.', 4, '', ''),
(14, 'Lady Susan ', 4, 'It is about the horrible flirt Lady Susan Vernon, a widow in her thirties who has an affair with a married man. After her husband\'s death she stays with her brother and his family and soon enchants the handsome, friendly but naïve and idealistic Reginald de Courcy, who is her brother-in-law', 4, '', ''),
(15, 'The Childhood of Jesus ', 5, 'In The Childhood of Jesus (2013), a boy and his guardian scour a dystopian world—from which desire and pleasure have apparently been purged—in search of the boy\'s mother. The first in a trilogy, it was followed by The Schooldays of Jesus (2016) and The Death of Jesus (2020).', 5, '', ''),
(16, 'The Schooldays of Jesus ', 5, 'It picks up the story of Davíd, a young boy raised in a foreign country by people who are not his parents. In The Schooldays, Davíd attends a dance academy, where he becomes involved in a murder. The novel was longlisted for the 2016 Man Booker Prize (an award which Coetzee, also a Nobel laureate, has won twice).', 5, '', ''),
(17, 'The Death of Jesus ', 5, 'The Death of Jesus is a 2019 novel by Nobel Prize-winning writer J.M. Coetzee; it is the third in his ', 5, '6357ed102eee62.48987599.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Poetry'),
(2, 'Biography'),
(3, 'Psychology'),
(4, 'Novel'),
(5, 'Novel2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
