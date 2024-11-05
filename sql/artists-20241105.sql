-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 05, 2024 at 03:29 PM
-- Server version: 8.0.40
-- PHP Version: 8.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rdm_tunetribe`
--

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `spotify_id` varchar(255) DEFAULT NULL,
  `bio` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`, `genre`, `spotify_id`, `bio`) VALUES
(1, 'Taylor Swift', 'Pop', '06HL4z0CvFAxyc27GXpf02', 'American singer-songwriter known for narrative songs about her personal life.'),
(2, 'Ariana Grande', 'Pop', '66CXWjxzNUsdJxJ2JdwvnR', 'American singer and actress known for her wide vocal range and hits like \"Thank U, Next\".'),
(3, 'Ed Sheeran', 'Pop', '6eUKZXaKkcviH0Ku9w2n3V', 'English singer-songwriter known for his hit songs and collaborations with various artists.'),
(4, 'Dua Lipa', 'Pop', '6M2wZ9GZgrQXHCFfjv46we', 'English singer and songwriter known for her disco-inspired hits and empowering lyrics.'),
(5, 'Billie Eilish', 'Pop', '6qqNVTkY8uBg9cP3Jd7DAH', 'American singer and songwriter known for her unique style and haunting music.'),
(6, 'Justin Bieber', 'Pop', '1uNFoZAHBGtllmzznpCI3s', 'Canadian singer and songwriter known for his catchy songs and collaborations.'),
(7, 'Katy Perry', 'Pop', '6jJ0s89eD6GaHleKKya26X', 'American singer known for her anthems and colorful performances.'),
(8, 'Lady Gaga', 'Pop', '1HY2Jd0NmPuamShAr6KMms', 'American singer and actress known for her theatricality and innovative music.'),
(9, 'Shawn Mendes', 'Pop', '7n2wHs1TKAczGzO7Dd2rGr', 'Canadian singer-songwriter known for his heartfelt songs and acoustic style.'),
(10, 'Rihanna', 'Pop', '5pKCCKE2ajJHZ9KAiaK11H', 'Barbadian singer known for her versatile music and entrepreneurial ventures.'),
(11, 'Bruno Mars', 'Pop', '0du5cEVh5yTK9QJze8zA0C', 'American singer known for his retro showmanship and blend of genres.'),
(12, 'Selena Gomez', 'Pop', '0C8ZW7ezQVs4URX5aX7Kqx', 'American singer and actress known for her pop hits and philanthropy.'),
(13, 'Sia', 'Pop', '5WUlDfRSoLAfcVSX1WnrxN', 'Australian singer-songwriter known for her powerful vocals and unique visuals.'),
(14, 'Halsey', 'Pop', '26VFTg2z8YR0cCuwLzESi2', 'American singer and songwriter known for her genre-blending music.'),
(15, 'Sam Smith', 'Pop', '2wY79sveU1sp5g7SokKOiI', 'British singer known for his emotive ballads and powerful voice.'),
(16, 'Lorde', 'Pop', '163tK9Wjr9P9DmM0AVK7lm', 'New Zealand singer-songwriter known for her introspective lyrics and unique sound.'),
(17, 'Charlie Puth', 'Pop', '6VuMaDnrHyPL1p4EHjYLi7', 'American singer known for his pop hits and impressive vocal range.'),
(18, 'Maroon 5', 'Pop', '04gDigrS5kc9YWfZHwBETP', 'American band known for their catchy pop tunes and chart-topping singles.'),
(19, 'Nick Jonas', 'Pop', '4Rxn7Im3LGfyRkY2FlHhWi', 'American singer, songwriter, and actor known for his work in the Jonas Brothers.'),
(20, 'Miley Cyrus', 'Pop', '5YGY8feqx7naU7z4HrwZM6', 'American singer and actress known for her evolution from child star to pop icon.'),
(21, 'Kesha', 'Pop', '6LqNN22kT3074XbTVUrhzX', 'American singer known for her party anthems and unique style.'),
(22, 'Adele', 'Pop', '4dpARuHxo51G3z768sgnrY', 'British singer known for her powerful ballads and emotive lyrics.'),
(23, 'Jason Derulo', 'Pop', '07YZf4WDAMNwqr4jfgOZ8y', 'American singer and songwriter known for his catchy hooks and dance tracks.'),
(24, 'P!nk', 'Pop', '1KCSPY1glIKqW2TotWuXOR', 'American singer-songwriter known for her acrobatic performances and empowerment themes.'),
(25, 'Khalid', 'Pop', '6LuN9FCkKOj5PcnpouEgny', 'American singer known for his smooth vocals and relatable lyrics.'),
(26, 'Demi Lovato', 'Pop', '6S2OmqARrzebs0tKUEyXyp', 'American singer and actress known for her powerful voice and advocacy work.'),
(27, 'The Weeknd', 'Pop', '1Xyo4u8uXC1ZmMpatF05PJ', 'Canadian singer known for his atmospheric sound and innovative music videos.'),
(28, 'Camila Cabello', 'Pop', '4nDoRrQiYLoBzwC5BhVJzF', 'Cuban-American singer known for her hit singles and contributions to pop music.'),
(29, 'Bebe Rexha', 'Pop', '64M6ah0SkkRsnPGtGiRAbb', 'American singer and songwriter known for her versatility and collaborations.'),
(30, 'Lana Del Rey', 'Pop', '00FQb4jTyendYWaN8pK0wa', 'American singer known for her cinematic style and nostalgic Americana themes.'),
(31, 'Tones and I', 'Pop', '2NjfBq1NflQcKSeiDooVjY', 'Australian singer known for her viral hits and distinctive voice.'),
(32, 'Led Zeppelin', 'Rock', '36QJpDe2go2KgaRleHCDTp', 'English rock band formed in 1968, known for their innovative and influential sound.'),
(33, 'The Rolling Stones', 'Rock', '22bE4uQ6baNwSHPVcDxLCe', 'Legendary rock band formed in 1962, known for their energetic performances and classic hits.'),
(34, 'Queen', 'Rock', '1dfeR4HaWDbWqFHLkxsg1d', 'British rock band known for their theatrical performances and iconic songs like \"Bohemian Rhapsody\".'),
(35, 'The Beatles', 'Rock', '3WrFJ7ztbogyGnTHbHJFl2', 'Iconic British band formed in 1960, recognized as one of the most influential acts in music history.'),
(36, 'Nirvana', 'Rock', '6olE6TJLqED3rqDCT0FyPh', 'American rock band formed in 1987, known for popularizing grunge music with their hit \"Smells Like Teen Spirit\".'),
(37, 'Pink Floyd', 'Rock', '0k17h0D3J5VfsdmQ1iZtE9', 'British rock band known for their progressive music and concept albums like \"The Dark Side of the Moon\".'),
(38, 'AC/DC', 'Rock', '711MCceyCBcFnzjGY4Q7Un', 'Australian rock band known for their high-energy performances and hits like \"Back in Black\".'),
(39, 'Guns N Roses', 'Rock', '3qm84nBOXUEQ2vnTfUTTFC', 'American hard rock band formed in 1985, known for their debut album \"Appetite for Destruction\".'),
(40, 'Foo Fighters', 'Rock', '7jy3rLJdDQY21OgRLCZ9sD', 'American rock band formed in 1994, led by former Nirvana drummer Dave Grohl.'),
(41, 'The Who', 'Rock', '67ea9eGLXYMsO2eYQRui3w', 'English rock band known for their energetic performances and rock opera \"Tommy\".'),
(42, 'Linkin Park', 'Rock', '6XyY86QOPPrYVGvF9ch6wz', 'American rock band known for their fusion of rock, metal, and electronic elements in their music.'),
(43, 'Red Hot Chili Peppers', 'Rock', '0L8ExT028jH3ddEcZwqJJ5', 'American rock band known for their funk-rock style and hits like \"Californication\".'),
(44, 'Radiohead', 'Rock', '4Z8W4fKeB5YxbusRsdQVPb', 'British rock band known for their experimental approach and albums like \"OK Computer\".'),
(45, 'Rage Against the Machine', 'Rock', '2d0hyoQ5ynDBnkvAbJKORj', 'American rock band known for their politically charged lyrics and fusion of rap and rock.'),
(46, 'Metallica', 'Rock', '2ye2Wgw4gimLv2eAKyk1NB', 'American heavy metal band formed in 1981, known for their aggressive sound and complex compositions.'),
(47, 'Bon Jovi', 'Rock', '58lV9VcRSjABbAbfWS6skp', 'American rock band known for their anthem-like songs and charismatic frontman Jon Bon Jovi.'),
(48, 'Bruce Springsteen', 'Rock', '3eqjTLE0HfPfh78zjh6TqT', 'American singer-songwriter known for his heartland rock style and storytelling lyrics.'),
(49, 'David Bowie', 'Rock', '0oSGxfWSnnOXhD2fKuz2Gy', 'British singer-songwriter known for his eclectic style and alter ego Ziggy Stardust.'),
(50, 'U2', 'Rock', '51Blml2LZPmy7TTiAg47vQ', 'Irish rock band known for their anthemic sound and socially conscious lyrics.'),
(51, 'The Doors', 'Rock', '22WZ7M8sxp5THdruNY3gXt', 'American rock band known for their poetic lyrics and Jim Morrison\'s charismatic presence.'),
(52, 'The Eagles', 'Rock', '0ECwFtbIWEVNwjlrfc6xoL', 'American rock band known for their harmonious sound and hits like \"Hotel California\".'),
(53, 'Journey', 'Rock', '0rvjqX7ttXeg3mTy8Xscbt', 'American rock band known for their arena rock sound and hit \"Don\'t Stop Believin\'\".'),
(54, 'Lynyrd Skynyrd', 'Rock', '4MVyzYMgTwdP7Z49wAZHx0', 'American rock band known for their southern rock style and hit \"Sweet Home Alabama\".'),
(55, 'Toto', 'Rock', '0PFtn5NtBbbUNbU9EAmIWF', 'American rock band known for their musicianship and hit song \"Africa\".'),
(56, 'Fleetwood Mac', 'Rock', '08GQAI4eElDnROBrJRGE0X', 'British-American rock band known for their harmonious sound and hits like \"Go Your Own Way\".'),
(57, 'Paramore', 'Rock', '74XFHRwlV6OrjEM0A2NCMF', 'American rock band known for their energetic sound and powerful vocals by lead singer Hayley Williams.'),
(58, 'My Chemical Romance', 'Rock', '7FBcuc1gsnv6Y1nwFtNRCb', 'American rock band known for their theatrical style and emo-pop hits.'),
(59, 'Green Day', 'Rock', '7oPftvlwr6VrsViSDV7fJY', 'American punk rock band known for their catchy melodies and socially conscious lyrics.'),
(60, 'Weezer', 'Rock', '3jOstUTkEu2JkjvRdBA5Gu', 'American rock band known for their catchy hooks and nerd rock aesthetic.'),
(61, 'Fall Out Boy', 'Rock', '4UXqAaa6dQYAk18Lv7PEgX', 'American rock band known for their pop-punk sound and hits like \"Sugar, We are Goin Down\".'),
(62, 'Blink-182', 'Rock', '6FBDaR13swtiWwGhX1WQsP', 'American rock band known for their punk rock style and humorous lyrics.'),
(63, 'Tupac Shakur', 'Rap', '1ZwdS5xdxEREPySFridCfh', 'American rapper and actor, known for his powerful lyrics and activism.'),
(64, 'The Notorious B.I.G.', 'Rap', '5me0Irg2ANcsgc93uaYrpb', 'Influential American rapper known for his storytelling and smooth flow.'),
(65, 'Jay-Z', 'Rap', '3nFkdlSjzX9mRTtwJOzDYB', 'American rapper and entrepreneur known for his impactful lyrics and business ventures.'),
(66, 'Eminem', 'Rap', '7dGJo4pcD2V6oG8kP0tJRR', 'American rapper known for his intricate wordplay and rapid-fire delivery.'),
(67, 'Kendrick Lamar', 'Rap', '2YZyLoL8N0Wb9xBt1NhZWg', 'American rapper and songwriter acclaimed for his deep, thought-provoking lyrics.'),
(68, 'Lil Wayne', 'Rap', '55Aa2cqylxrFIXC767Z865', 'American rapper known for his unique style and prolific output.'),
(69, 'Dr. Dre', 'Rap', '6DPYiyq5kWVQS4RGwxzPC7', 'American rapper and producer known for his role in popularizing West Coast hip hop.'),
(70, 'Snoop Dogg', 'Rap', '7hJcb9fa4alzcOq3EaNPoG', 'American rapper known for his laid-back style and iconic voice.'),
(71, 'J. Cole', 'Rap', '6l3HvQ5sa6mXTsMTB19rO5', 'American rapper and producer known for his introspective lyrics and storytelling.'),
(72, 'Cardi B', 'Rap', '4kYSro6naA4h99UJvo89HB', 'American rapper and songwriter known for her bold personality and chart-topping hits.'),
(73, 'Nicki Minaj', 'Rap', '0hCNtLu0JehylgoiP8L4Gh', 'American rapper and singer known for her versatility and colorful persona.'),
(74, 'Travis Scott', 'Rap', '0Y5tJX1MQlPlqiwlOH1tJY', 'American rapper known for his unique sound and energetic performances.'),
(75, 'Migos', 'Rap', '6oMuImdp5ZcFhWP0ESe6mG', 'American hip hop trio known for their catchy hooks and ad-libs.'),
(76, 'Future', 'Rap', '1RyvyyTE3xzB2ZywiAwp0i', 'American rapper known for his use of auto-tune and innovative sound.'),
(77, 'Lil Nas X', 'Rap', '7jVv8c5Fj3E9VhNjxT4snq', 'American rapper and singer known for his genre-blending music and viral hits.'),
(78, 'Chance the Rapper', 'Rap', '1anyVhU62p31KFi8MEzkbf', 'American rapper known for his positive messages and independent approach.'),
(79, '21 Savage', 'Rap', '1URnnhqYAYcrqrcwql10ft', 'British-American rapper known for his distinct voice and street narratives.'),
(80, 'Post Malone', 'Rap', '246dkjvS1zLTtiykXe5h60', 'American rapper and singer known for his melodic style and crossover hits.'),
(81, 'Lil Uzi Vert', 'Rap', '4O15NlyKLIASxsJ0PrXPfz', 'American rapper known for his energetic performances and unique fashion.'),
(82, 'Ice Cube', 'Rap', '3Mcii5XWf6E0lrY3Uky4cA', 'American rapper and actor known for his socially conscious lyrics and N.W.A. legacy.'),
(83, 'Drake', 'Rap', '3TVXtAsR1Inumwj472S9r4', 'Canadian rapper known for his versatility and massive commercial success.'),
(84, 'Missy Elliott', 'Rap', '2wIVse2owClT7go1WT98tk', 'American rapper and producer known for her innovative music videos and style.'),
(85, 'Lil Kim', 'Rap', '5tth2a3v0sWwV1C7bApBdX', 'American rapper known for her bold lyrics and influential fashion.'),
(86, 'Anderson .Paak', 'Rap', '3jK9MiCrA42lLAdMGUZpwa', 'American rapper and musician known for his blend of rap and R&B.'),
(87, 'Tyler, The Creator', 'Rap', '4V8LLVI7PbaPR0K2TGSxFF', 'American rapper and producer known for his unique style and creative visuals.'),
(88, 'Logic', 'Rap', '4xRYI6VqpkE3UwrDrAZL8L', 'American rapper known for his positive messages and fast-paced delivery.'),
(89, 'Wale', 'Rap', '67nwj3Y5sZQLl72VNUHEYE', 'American rapper known for his lyrical depth and poetic style.'),
(90, 'A Boogie wit da Hoodie', 'Rap', '31W5EY0aAly4Qieq6OFu6I', 'American rapper known for his melodic style and relatable lyrics.'),
(91, 'Rick Ross', 'Rap', '1X7wdE9Cm82Vi4sMPqDane', 'American rapper and entrepreneur known for his deep voice and storytelling.'),
(92, 'G-Eazy', 'Rap', '02kJSzxNuaWGqwubyUba0Z', 'American rapper known for his slick style and introspective lyrics.'),
(93, 'Denzel Curry', 'Rap', '6fxyWrfmjcbj5d12gXeiNV', 'American rapper known for his intense delivery and lyricism'),
(94, 'Miles Davis', 'Jazz', '0kbYTNQb4Pb1rPbbaF0pT4', 'An influential jazz trumpeter and composer, known for his innovative approach to jazz and for his role in the development of several jazz genres.'),
(95, 'John Coltrane', 'Jazz', '2hGh5VOeeqimQFxqXvfCUf', 'A pioneering jazz saxophonist and composer who played a major role in the development of modal jazz and free jazz.'),
(96, 'Louis Armstrong', 'Jazz', '19eLuQmk9aCobbVDHc6eek', 'A legendary trumpeter, composer, and vocalist, Armstrong is one of the most influential figures in jazz history.'),
(97, 'Duke Ellington', 'Jazz', '4F7Q5NV6h5TSwCainz8S5A', 'A prominent jazz composer and bandleader known for his unique orchestral sound and for elevating jazz to an art form.'),
(98, 'Billie Holiday', 'Jazz', '1YzCsTRb22dQkh9lghPIrp', 'A celebrated jazz and blues singer known for her emotive voice and her profound influence on music.'),
(99, 'Ella Fitzgerald', 'Jazz', '5V0MlUE1Bft0mbLlND7FJz', 'An iconic jazz singer often referred to as the \"First Lady of Song\", known for her scat singing and wide vocal range.'),
(100, 'Charlie Parker', 'Jazz', '4Ww5mwS7BWYjoZTUIrMHfC', 'A leading figure in the development of bebop, Parker was a highly influential jazz saxophonist and composer.'),
(101, 'Thelonious Monk', 'Jazz', '4PDpGtF16XpqvXxsrFwQnN', 'A jazz pianist and composer known for his unique improvisational style and his contributions to the bebop movement.'),
(102, 'Sarah Vaughan', 'Jazz', '1bgyxtWjZwA5PQlDsvs9b8', 'A powerful jazz singer known for her rich voice and innovative phrasing, often regarded as one of the greatest vocalists.'),
(103, 'Chet Baker', 'Jazz', '3rxeQlsv0Sc2nyYaZ5W71T', 'A celebrated trumpeter and vocalist known for his smooth, lyrical style and his influence on cool jazz.'),
(104, 'Herbie Hancock', 'Jazz', '2ZvrvbQNrHKwjT7qfGFFUW', 'An acclaimed jazz pianist and composer known for his innovative use of electronic instruments and diverse styles.'),
(105, 'Wayne Shorter', 'Jazz', '0ZqhrTXYPA9DZR527ZnFdO', 'A highly regarded jazz saxophonist and composer known for his work in both jazz and rock music.'),
(106, 'Chick Corea', 'Jazz', '5olDKSsFhhmwh8UCWwKtpq', 'An influential jazz pianist and composer known for his contributions to jazz fusion and avant-garde jazz.'),
(107, 'Stan Getz', 'Jazz', '0FMucZsEnCxs5pqBjHjIc8', 'A prominent jazz saxophonist known for his smooth tone and for popularizing bossa nova music in the U.S.'),
(108, 'Keith Jarrett', 'Jazz', '0F3Aew9DSd6fb6192K1K0Y', 'A renowned jazz pianist and composer known for his improvisational performances and wide-ranging styles.'),
(109, 'Nina Simone', 'Jazz', '7G1GBhoKtEPnP86X2PvEYO', 'A talented singer, songwriter, and pianist known for her distinct voice and for blending jazz with folk and blues.'),
(110, 'Pat Metheny', 'Jazz', '3t58jfUhoMLYVO14XaUFLA', 'A highly acclaimed jazz guitarist and composer known for his innovative approach to jazz and fusion music.'),
(111, 'Esperanza Spalding', 'Jazz', '5bepW5vcdRzheNc0F8lHJ5', 'A talented bassist and vocalist, Spalding is known for her genre-blending music and her Grammy-winning work.'),
(112, 'Bill Evans', 'Jazz', '4jXfFzeP66Zy67HM2mvIIF', 'An influential jazz pianist known for his innovative harmonic techniques and contributions to modal jazz.'),
(113, 'Jaco Pastorius', 'Jazz', '3U3C9o6UTYNdEsDckpRyvX', 'A pioneering jazz bassist known for his virtuosic playing and for revolutionizing the electric bass in jazz.'),
(114, 'Dianna Krall', 'Jazz', '5z1VAFwT35EVvCp1XlZZuL', 'A contemporary jazz pianist and singer known for her smooth voice and engaging live performances.'),
(115, 'Tony Williams', 'Jazz', '1TW90GjShgkjySrxBxcwQe', 'A legendary jazz drummer known for his innovative playing style and for his work with the Miles Davis Quintet.'),
(116, 'Robert Glasper', 'Jazz', '5cM1PvItlR21WUyBnsdMcn', 'An influential jazz pianist known for blending jazz with hip-hop and R&B influences.'),
(117, 'Trombone Shorty', 'Jazz', '37ZvFp654tY74Z1D2TLOGR', 'A talented trombonist and bandleader known for his energetic performances and for blending jazz with funk and rock.'),
(118, 'Christian Scott aTunde Adjuah', 'Jazz', '2q37Nw8NND2z1T1KU5XVfn', 'An innovative trumpeter and composer known for his unique style that fuses jazz with various genres.'),
(119, 'Jon Batiste', 'Jazz', '0eRbECAGCLLiTyVXPBRexU', 'A versatile musician and bandleader known for his work as a jazz pianist and his role as bandleader on \"The Late Show with Stephen Colbert\".'),
(120, 'Tia Fuller', 'Jazz', '3SMDloWrQhtfY0KsPQ1qql', 'A talented saxophonist and composer known for her vibrant playing style and contributions to contemporary jazz.'),
(121, 'Gonzalo Rubalcaba', 'Jazz', '0qEGZBnqUgcVlTE7EEjR2F', 'A Cuban jazz pianist known for his virtuosic technique and for blending Afro-Cuban music with jazz.'),
(122, 'Terri Lyne Carrington', 'Jazz', '02HpkiuAylAwAnQBswaXlP', 'An acclaimed drummer and composer known for her work in both jazz and contemporary music.'),
(123, 'Cassandra Wilson', 'Jazz', '6TZ5t4kclsmGWHqb3mGyha', 'A renowned jazz vocalist and songwriter known for her unique voice and innovative interpretations of classic songs.'),
(124, 'Adrenalize', 'Hardstyle', '6GebWeCCtey5pbQepRYD6c', 'Young Dutch hardstyle producer known for his melodic approach and energetic tracks.'),
(125, 'A-Lusion', 'Hardstyle', '4GWz1hkqnRxvBqWIu6BUM2', 'Dutch hardstyle producer known for his euphoric sound and melodic compositions.'),
(126, 'Angerfist', 'Hardcore', '4sQNUQjOYj9rV2sdfJ8laS', 'One of the most recognized names in the hardcore scene, known for his raw sound and intense performances.'),
(127, 'Anime', 'Hardcore', '6lnEWBl7dhcA1FL5yqRHPO', 'Hardstyle artist known for his energetic tracks and unique sound.'),
(128, 'Art of Fighters', 'Hardcore', '04k0n1Rcz2MxqvZfioAOTE', 'Italian hardcore duo known for their energetic performances and heavy sound.'),
(129, 'B-Front', 'Hardstyle', '6Xhhpra0X0hpvC3yZaQ0Du', 'Dutch hardstyle DJ and producer recognized for his creative sound and engaging performances.'),
(130, 'Brennan Heart', 'Hardstyle', '5QySqc6yAFDx9m7fedFZmC', 'Renowned hardstyle DJ and producer known for his emotional tracks and live performances.'),
(131, 'Coone', 'Hardstyle', '1Wt63OMKtv6v2ivHuQLm2C', 'Belgian hardstyle DJ and producer known for his distinctive sound and global performances.'),
(132, 'Crypsis', 'Hardcore', '4Kr8tEhZ6ecAQnqxd7WkTb', 'Known for his unique sound and high-energy performances in the hardcore scene.'),
(133, 'D-Block & S-te-Fan', 'Hardstyle', '6L7a6wPGpvLtTwOsMLnF1z', 'Dutch hardstyle duo known for their euphoric sound and energetic performances.'),
(134, 'Deadly Guns', 'Hardcore', '1RsU9zuGACUb1NGShiFpcP', 'Known for their raw sound and energetic tracks in the hardcore scene.'),
(135, 'Deetox', 'Hardstyle', '0g6dKn3203m8rAtAyjIdZl', 'Innovative hardstyle producer known for her energetic tracks and dynamic live shows.'),
(136, 'Drokz', 'Hardcore', '2RoJa2qF4fdyhBkVcl5pNi', 'Known for his extreme sound and energetic performances in the hardcore scene.'),
(137, 'D-Sturb', 'Hardstyle', '7E6DrjKJieOdJKO8mbwCMO', 'Rising star in the hardstyle scene, known for his powerful productions and dynamic sets.'),
(138, 'DJ Isaac', 'Hardstyle', '2FmgW6Jee0JQKtb6EnBWCq', 'Renowned DJ and producer known for his energetic sets and classic tracks.'),
(139, 'DJ Promo', 'Hardcore', '6CG5i0dfyqWIOrqFY60ooq', 'Veteran hardcore DJ known for his classic tracks and engaging performances.'),
(140, 'Dr. Peacock', 'Hardcore', '4RbUYWWjEBb4umwqakOEd3', 'French hardcore producer known for his unique sound and colorful performances.'),
(141, 'F. Noize', 'Hardcore', '0mdmNdny2m37Hb1DIdQkG7', 'Hardcore producer known for his heavy sound and intense performances.'),
(142, 'Frontliner', 'Hardstyle', '7momuad2Twkv5O7MY3dODa', 'Pioneering hardstyle artist known for his energetic tracks and live sets.'),
(143, 'Furyan', 'Hardcore', '7KAMvC5fpPMWUgZYu3mEYJ', 'Hardcore producer known for his fast-paced tracks and energetic live sets.'),
(144, 'G-Town Madness', 'Hardcore', '4vxLy9lWDO7KlaKiwJ8Mjp', 'Hardcore producer known for his energetic tracks and vibrant performances.'),
(145, 'Ghost Stories', 'Hardcore', '6J6UF3GqOLdt6f4gfazSzf', 'Known for their unique sound and engaging performances in the hardcore scene.'),
(146, 'Gunz For Hire', 'Hardcore', '0WbAxASsYdodSlqwserDAW', 'DJ duo known for their raw hardstyle sound and energetic live shows.'),
(147, 'Headhunterz', 'Hardstyle', '5DYMuWtQyr1J9Af0SMrDz8', 'One of the most influential hardstyle DJs and producers, known for his melodic tracks and energetic performances.'),
(148, 'Hatebreed', 'Hardcore', '17Mb968quDHpjCkIyq30QV', 'American hardcore band known for their aggressive sound and intense live shows.'),
(149, 'Hysta', 'Hardstyle', '5b4R0928g89y6qmOgtEN1O', 'Hardstyle producer known for his melodic tracks and engaging live performances.'),
(150, 'Korsakoff', 'Hardcore', '1rWaCpcmmjycvD00Kf6YyE', 'Pioneering female hardcore DJ known for her energetic performances and unique style.'),
(151, 'Kronos', 'Hardstyle', '2B3mYtzGes0f92Yfn4mVQD', 'Hardstyle DJ and producer known for his heavy sound and engaging performances.'),
(152, 'K-Traxx', 'Hardcore', '0tCoeM5Fad8FkkTXEBKhVJ', 'Influential hardcore producer known for his catchy melodies and high-energy tracks.'),
(153, 'LNY TNZ', 'Hardstyle', '1x0ScxgiyFRQDKT4VwcLHa', 'Dutch hardstyle DJ known for his energetic tracks and vibrant performances.'),
(154, 'LunaKorpz', 'Hardstyle', '2OSIL8pcABTROov8XT74z1', 'Hardstyle artist known for her powerful productions and engaging sets.'),
(155, 'Major Conspiracy', 'Hardcore', '0WjzjRwo3dcv6HCPs70Rnc', 'Hardcore producer known for his hard-hitting tracks and intense performances.'),
(156, 'Miss K8', 'Hardcore', '776uRsooWrGiVZkVWtvfgO', 'Known as the \"Queen of Hardstyle,\" she is recognized for her powerful sets and tracks.'),
(157, 'N-Vitral', 'Hardcore', '5yirHkilaq4YSjO9BY6oy3', 'Known for his hard-hitting tracks and engaging sets, blending various harder styles.'),
(158, 'Noize Suppressor', 'Hardcore', '69IwChH6kBVij0cmVHSOtt', 'Innovative producer known for his hard-hitting tracks and impactful performances.'),
(159, 'Noisecontrollers', 'Hardstyle', '6qJ61DomA73g7jQEKESw9Z', 'Dutch hardstyle duo known for their innovative sound design and memorable melodies.'),
(160, 'Outbreak', 'Hardcore', '5tlPrdBVJtoK1uWzzFs4M1', 'Known for their hard-hitting sound and energetic performances.'),
(161, 'Partyraiser', 'Hardcore', '39cgo5SPJygKIlIcrwkd73', 'Hardcore DJ and producer known for his high-energy sets and hard-hitting tracks.'),
(162, 'Paul Elstak', 'Hardcore', '123hDJRbi4KtCdBaaKNHW6', 'Pioneering hardcore producer known for his influential tracks and energetic performances.'),
(163, 'Phuture Noize', 'Hardstyle', '7AGSJihqYPhYy5QzMcwcQT', 'Innovative hardstyle duo known for their unique sound and emotional compositions.'),
(164, 'Radical Redemption', 'Hardcore', '3Ij56hbjOTHq8RgutQwfxC', 'Hardcore producer known for his raw sound and intense performances.'),
(165, 'Rejecta', 'Hardstyle', '2lmihUu4FzVOepdJpDDrof', 'Emerging hardstyle artist known for his unique sound and energetic sets.'),
(166, 'Riot Shift', 'Hardcore', '5J3RIw3YwgyXeosItjR9GY', 'Emerging artist known for his high-energy performances and unique sound.'),
(167, 'Ruthless', 'Hardcore', '0xMCuSqF7uPefaatWnEx7F', 'Hardcore producer known for his hard-hitting tracks and impactful performances.'),
(168, 'Sefa', 'Hardstyle', '0caJEGgVuXuSHhhrMCmlkI', 'Rising star in the hardstyle scene, known for his unique sound and high-energy sets.'),
(169, 'Sickmode', 'Hardstyle', '5PbgCU02dfdBCAzpOaNmYW', 'Rising star known for his energetic performances and unique sound.'),
(170, 'Sub Zero Project', 'Hardstyle', '4f0OXMMSxr0r8Ztx6CdpAl', 'Hardstyle duo known for their fresh sound and captivating performances.'),
(171, 'T-1000', 'Hardcore', '493uIXb1kcY1lMW2rBfxgw', 'Known for his unique style and powerful performances in the hardcore scene.'),
(172, 'Technoboy', 'Hardstyle', '37jL2LnGjAkadOCszr8v7C', 'Italian hardstyle producer and DJ known for his classic tracks and influential presence in the scene.'),
(173, 'The Prophet', 'Hardstyle', '2iRqqPkOyIvvb7qFZN1Onz', 'Pioneering hardstyle artist known for his influential sound and contributions to the genre.'),
(174, 'The Viper', 'Hardcore', '1ovLf87ytwpNoA4prvV8wt', 'Veteran hardcore DJ and producer known for his classic tracks and energetic performances.'),
(175, 'Wasted Penguinz', 'Hardstyle', '1Ok5WQlGEnuFOiUlpCKcVT', 'Hardstyle duo known for their euphoric melodies and engaging performances.'),
(176, 'Zany', 'Hardstyle', '5lHeHJPYUJdDBXIApseBwO', 'Veteran hardstyle DJ and producer known for his unique style and contributions to the genre.'),
(177, 'Zatox', 'Hardstyle', '27Z5l2Kfy1IaYZMg5INWqO', 'Italian hardstyle producer known for his hard-hitting tracks and unique style.'),
(178, 'ADO', 'J-Pop', '6mEQK9m2krja6X1cfsAjfl', 'A popular Japanese singer known for her powerful vocals and unique style.'),
(179, 'Amy Shark', 'Pop', '2DORQjKJVYZMx9uu82UGtT', 'Australian singer-songwriter known for her heartfelt lyrics and catchy melodies.'),
(180, 'Amanda Jordan', 'Pop', '5UzX8YYER6nwjEoJjt6QCv', 'Emerging pop artist known for her engaging performances and relatable songs.'),
(181, 'Avril Lavigne', 'Pop/Rock', '0p4nmQO2msCgU4IF37Wi3j', 'Canadian singer-songwriter known for her punk-influenced pop music and iconic hits.'),
(182, 'Chrissy Costanza', 'Pop/Rock', '2zmjYl582zO64LcLQtOEuv', 'Lead vocalist of the band Against The Current, known for her strong vocals and energetic performances.'),
(183, 'Em Beihold', 'Pop', '7o2ZQYM7nTsaVdkXY38UAA', 'Rising pop artist known for her emotional songwriting and captivating voice.'),
(184, 'Emmy', 'Pop', '4rrI3dKjmTOzRZvOwOWOlu', 'Emerging pop singer known for her catchy songs and dynamic performances.'),
(185, 'Felicia Lu', 'Pop', '0bLxXoUrh0kANKQMWts8KV', 'German pop artist known for her vibrant sound and engaging performances.'),
(186, 'Isaac Dunbar', 'Pop', '2sBVpvpeQxK01FqIt5t816', 'Young pop singer-songwriter known for his unique sound and creative storytelling.'),
(187, 'Lilith Max', 'Filk', '797SPxZf82IYq3XCM8c9AM', 'New pop artist known for her distinctive voice and innovative approach to music.'),
(188, 'Macartney Reinhardt', 'Country', '3PEJZduB4hvkRYuKItEDtu', 'Rising pop artist known for her relatable lyrics and engaging melodies.'),
(189, 'Mish', 'Hardstyle', '65kwwmTEJIlKRldGhmUM0b', 'Pop artist known for her captivating voice and engaging stage presence.'),
(190, 'Mitski', 'Indie Pop', '2uYWxilOVlUdk4oV9DvwqK', 'Acclaimed singer-songwriter known for her introspective lyrics and unique sound.'),
(191, 'Neoni', 'Pop', '38wxcfNEqMwuPniHvplin5', 'Emerging pop artist known for her dynamic performances and relatable songs.'),
(192, 'Dual Damage', 'Hardstyle', '05bETZtzSdUI5fconFIKRX', 'Duet known for their collaborative tracks and engaging performances.'),
(193, 'Chappell Roan', 'Pop', '7GlBOeep6PqTfFi59PTUUN', 'Rising star known for her powerful vocals and catchy melodies.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
