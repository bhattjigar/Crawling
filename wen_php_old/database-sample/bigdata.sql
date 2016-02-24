-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 31, 2016 at 05:11 PM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bigdata`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogspot_in`
--

CREATE TABLE IF NOT EXISTS `blogspot_in` (
  `wen_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `wen_name` text NOT NULL,
  `wen_hash` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`wen_no`),
  UNIQUE KEY `wen_hash` (`wen_hash`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=102 ;

--
-- Dumping data for table `blogspot_in`
--

INSERT INTO `blogspot_in` (`wen_no`, `wen_name`, `wen_hash`) VALUES
(1, '', 'cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e'),
(2, 'http://solanki-hardik.blogspot.com/feeds/posts/default', 'e24d4a4546d6c9c1ea5f08d8cb305c984e4e2a7deacb3a74bfafc603dd3156d2c7b6165d0bfbed74cd6de5fea41cc20804b3838b3b5f63d1a35fe40bf974d997'),
(3, 'http://solanki-hardik.blogspot.com/feeds/posts/default?alt=rss', '4270cba1e62bbad61edf6238ecbd10d0dd1f2d2a08cacf26f87f1fd9d378729d05e04cd3fbc513015dd11ac442beb51e62efee7e549e90858ca6fb4bf47ff3af'),
(4, 'https://www.blogger.com/feeds/9013034570276674757/posts/default', '19ba6f035906b03e7b06bca64430fbec8a0250c4adcc2825239a3e1e1068d8e57b574b9b56ad7544c39ecaa9f867ba7e44502da1a86bb08d7d6d3dc12dcfeeb0'),
(5, 'https://www.blogger.com/openid-server.g', '17ff1e61388280f4642ddd108160b2e73e7bd5084bcdc622d0a120672dabb174a02988487d859a6f25dbc401ee9d66443913e80857fa78cee013cd9206c1fe2c'),
(6, 'http://solanki-hardik.blogspot.in/2014/08/blog-post.html', 'dad7cc200c03fc30f09b923deb05a5920fe30a5e98dcca9e20e0adebaea67aa1bc21ab3e1e40012f842cea5023e26807d1b90853eac86589bc3e565813043e28'),
(7, 'http://www.theverge.com/2014/8/15/6004099/25-best-ceo-celebrity-ice-bucket-challenge-videos-als-charity', '92085af8b6e61471650eb821a8c1f0964911c1273085ad7ef87ec2e234be781893c98ffedbfba3dcc812b558b45caa6ffc8115431d873572ee0020326897dde0'),
(8, 'http://solanki-hardik.blogspot.in/2014/08/blog-post.html#comment-form', 'f5fb115ddec31b80028427c48dc2ee0dd32b641eb6a0cd75bc17103b6cd020ecb48db5446bbea07d5169f78be399728f6433e74077e40d66b8dd5521e0264df8'),
(9, 'https://www.blogger.com/post-edit.g?blogID=9013034570276674757&postID=2587990347374681211&from=pencil', 'cea2c31998606bcb8f1c0a87f3e9a055d921c64f4171bd547e8ba9949c6b3f86ff2003abe4c5822d0f4b6ab3245fe7742e7c5097bb868c230a9694b28891c62e'),
(10, 'https://www.blogger.com/share-post.g?blogID=9013034570276674757&postID=2587990347374681211&target=email', '8b2e12022fda780f9e7103b2480e8afbeeeed3cfaaf2282a3c57a901b675c215ba52361aed5ec673687fcc217ac743bcae9edf05b899cb8c48eff09ce80b1faa'),
(11, 'https://www.blogger.com/share-post.g?blogID=9013034570276674757&postID=2587990347374681211&target=blog', '595afb1a90f0ef18346dfeadff3efa09185bae035b6f5f0fe6a5377e6c5b17894f6e13a7eae66b29edd5881223c6f818ef4fcd663a67d9b3706c44e921165713'),
(12, 'https://www.blogger.com/share-post.g?blogID=9013034570276674757&postID=2587990347374681211&target=twitter', '18f0549132f7a99ec640a714b11dba6c5f5ab08bba8b7f69772245339c723ffa19a0ae086726389775f2b0d34399234c1cb13cfc109f276e37ebd5e99879d551'),
(13, 'https://www.blogger.com/share-post.g?blogID=9013034570276674757&postID=2587990347374681211&target=facebook', 'c34bcc5786dbf8f3a114da0601bac02a34cdd7a85dc24fd26925908d152ec8f0b408cdd2b7fb827a72709bc8b413bf145e46633d0c550dbfdb68ec6305340182'),
(14, 'https://www.blogger.com/share-post.g?blogID=9013034570276674757&postID=2587990347374681211&target=pinterest', '4a4d709e152e7a4901dd6899886fc31b1d02397528768f034691c93e9846e86174c02b218eee46c8de6941f33587c182d9283a321c5ded10239ab4d42299f297'),
(15, 'http://solanki-hardik.blogspot.in/2014/05/the-first-update.html', '4b8d4c1d14f57728e155cde7e7b87b109efbc9952c43351c5344a02990e0f5a77ccfdfe5162af4c62ddf14d82f6b1c9240986b3cba68f721f9caead171dbff50'),
(16, 'https://www.facebook.com/musicstreet.in/info', 'dccfb26ed3d5da05498dd1336c81219bd9e28ab00b7c9090bc80b1ea70d800a50e75268b4c2d1f2fb5ec2363e04d9fb8ceb3e34a083bafb261bc45f018b700f9'),
(17, 'https://www.blogger.com/', 'cefa11ee05ebb6b640cf908f283647b2d9dac677a6b27fb88460e2d42a20a19aac5f9ea37177a0fb71ff9abe84b3e56c26ce4cf571d071cb10f61f5a9a7cd60c'),
(18, 'http://musicstreet.in/', '7c2de0d21969bd8f8d4e12b8116edd8d377664de5647470a3afcee63327a687892bd4bacc40900f2e30d51b8cdbbdbe5d22ab8b3972433448debde4bf3233b50'),
(19, 'http://solanki-hardik.blogspot.in/2014/05/the-first-update.html#comment-form', '235b68470cdd29cb30b66141e478d3b0103c4b69e21048afe044a8f63723edfc9c2b449a78e002c88fc5ba9515cd21c15fbeda4a4c08dec7cb465f757c17cbdc'),
(20, 'https://www.blogger.com/post-edit.g?blogID=9013034570276674757&postID=1913776721175302459&from=pencil', '665c8751a48f37660bb3eaad0ba96760808e4051a796ec3ca3d1a31b66933592839f3358217f157cc936024201d32ad4c7632dd458f232cd1095306a16109c93'),
(21, 'https://www.blogger.com/share-post.g?blogID=9013034570276674757&postID=1913776721175302459&target=email', 'ab572de72c1d7e245b171a94add4d7620eec96a38fcb812ebc8d4d2cc9a58abb335fe970affbbf5bd133876fc7cba038fa8f304ee964fcdc9213ab2474c66cec'),
(22, 'https://www.blogger.com/share-post.g?blogID=9013034570276674757&postID=1913776721175302459&target=blog', '17925538ced0fab2249cb1a09f050d47aec62e3b43204c86732ee47cdb6d38b41843682c0958ea99ca795586d64141010dbde930870396e5165e38e80f09eb2f'),
(23, 'https://www.blogger.com/share-post.g?blogID=9013034570276674757&postID=1913776721175302459&target=twitter', '7ca72d96ed7c813a81ee1040e8b2b3eae9e99a5d6f1fcddf867a5401da9c73671279726d5f834eac7a3c2ba4f924fd04bed7367df80d567473c6baaf16e306d2'),
(24, 'https://www.blogger.com/share-post.g?blogID=9013034570276674757&postID=1913776721175302459&target=facebook', '066011a127802773756dedca846e6be7d4d1aed9e7c57d7814757abbf467f151ae297a865e23267530b4033a998090f82123b899dcb42cc75a9b7328e68be56a'),
(25, 'https://www.blogger.com/share-post.g?blogID=9013034570276674757&postID=1913776721175302459&target=pinterest', '2c9a55d6b8a7e2c1c995288abecb10c62d70c4e8e9d711c52719d501b81c6e5d5a0e11b38ede182ab74845210eff5baf80bfcd87c593d570fa7b1c3478e88b91'),
(26, 'http://solanki-hardik.blogspot.in/2014/05/instagram.html', '7eabd06b31f38d48248f0633d217f685943602bbf0d110e0ce725db0af17c76646fad3839d2aa69027ad282c25223d5b4a8602223abb112edc359af5d72b430c'),
(27, 'http://instagram.com/hardik_solanki', '5cffacf12a5aca622a6f429f84e35761abe5c34f072815c0f67db7b12979be5494ea574b4fa75e1d1daeeb6a95ae47b8f924379446e0c4e048c524f17739e4a6'),
(28, 'http://solanki-hardik.blogspot.in/2014/05/instagram.html#comment-form', '5d80acc36bc076c770a23d111cf3c7c5aa6f41cd366895d419c9ed17f177838197dba9513dca8cbd50053d76c4969f0dcd789331a2b73db08237582ad2b867b4'),
(29, 'https://www.blogger.com/post-edit.g?blogID=9013034570276674757&postID=5189929795147744234&from=pencil', 'a75b56ccf4303530ea23f9bfee4896c5c49684ff82eddd0358f45dc07512549af87ad73c333fe78936da344935c057198a1a070ec1750283ef5ebf2cb24d4729'),
(30, 'https://www.blogger.com/share-post.g?blogID=9013034570276674757&postID=5189929795147744234&target=email', 'b77a3ebfb8ce250f61fc536b7ff190b6b3f75765f599f83af2cee8ac5b02fb0379841bb5d204239f862d45db878888ab1d735ca15495adfbb04641bc3c4daa8e'),
(31, 'https://www.blogger.com/share-post.g?blogID=9013034570276674757&postID=5189929795147744234&target=blog', 'c6f5247e8b844f20d2626c8e941821975c7b8f4e39ae12d4acb0a3155db8704bbbf4d5bce784fbf33569125e6b42741d5c388bdce01e7137b3f6368302310dea'),
(32, 'https://www.blogger.com/share-post.g?blogID=9013034570276674757&postID=5189929795147744234&target=twitter', '1788fc242ead9b2bf10ff775d8c8fe9215903852aa33ed916d0949cf235258f195de98f3ce9efd0a2599bacb68cde21cba639c8c51c868c2f5541accd5398802'),
(33, 'https://www.blogger.com/share-post.g?blogID=9013034570276674757&postID=5189929795147744234&target=facebook', 'cae4d88219248d8c1df22a542c10cae5ce11bba8ac0b54f4040a9e2359a388a7912c8fc6e4dc94399a283d8a329e3056baaf2f4cbe32145b0b533aa24bf210e8'),
(34, 'https://www.blogger.com/share-post.g?blogID=9013034570276674757&postID=5189929795147744234&target=pinterest', 'ecad79d9589c0744e055a2b45df85b2ad4c8bdaa1f77d9203ae78378b2dd896b3ab6ecf209ea25bcb77fa062c32a023492c2e9b8096c1a5a63c3170754c8f2b6'),
(35, 'http://solanki-hardik.blogspot.in/2014/05/leaks-out-in-black-lime-green.html', 'a29ef801828c765bbd5aaae3e14d87c4ae99124c94a7eaea227ff0b9b69001a25a0841a93ee8291b130756a0b7b1a1c50f160a56288eeea7b0a07e9d3d2a7470'),
(36, 'http://www.facebook.com/musicstreet.in', '43e3dc8831bb53d73d9a3bffc374a44d084bdb6be350d9300b9ac91d397dcf31fb13638e9d9736fcabee729a7b2f7682cf4902a177bff232a304172eecccc38d'),
(37, 'http://solanki-hardik.blogspot.in/2014/05/leaks-out-in-black-lime-green.html#comment-form', 'eba5d3465d663017a94509845ee1b15fbe9dcbdf245e254cd240e88fca542155f56d5f76caebc3b4080444a53118277b55ac606db390cb79da58c0ff28800e2f'),
(38, 'https://www.blogger.com/post-edit.g?blogID=9013034570276674757&postID=9173629625858924112&from=pencil', 'b69ba379a038c2024bf5610647c583d09fcd78cd06edcfdb6f4bbce77be918dab471eeb0274621b7136ee0c17006b0c085f81b27ac0690444c476a5d7a76f90c'),
(39, 'https://www.blogger.com/share-post.g?blogID=9013034570276674757&postID=9173629625858924112&target=email', '27c89ebb9bfb3d8f3b42236053e249b4c786481af5fa9f702bfe45ee8a7d8f49fcded277d265445b8fe35947c02906abadc4221e505cabff480c7a5aeab79913'),
(40, 'https://www.blogger.com/share-post.g?blogID=9013034570276674757&postID=9173629625858924112&target=blog', '544021aaed9782f17cb1764e22b5b69fd25ff686a0bccad43c1fc8473b20bf6ae6254e704a6b3f99931e75c992f672c482dcb093b99d7ef558679ff59723e57a'),
(41, 'https://www.blogger.com/share-post.g?blogID=9013034570276674757&postID=9173629625858924112&target=twitter', '17a64b9393bdcc8bd0c3b406feb1b2d539e4fa4480124ad6564560540c3386aa5300e0111c8803f9a3ae46fbe387d1c515e6a43110341ac2f091f9a625c7d096'),
(42, 'https://www.blogger.com/share-post.g?blogID=9013034570276674757&postID=9173629625858924112&target=facebook', 'a4ebf449c1673fbd59cfce02b72de886e52422c035550c71b602cf7fad10f2b593b6417997e6697ae044cb692d5edfe80f4f1f72fc515b983864072077ef629b'),
(43, 'https://www.blogger.com/share-post.g?blogID=9013034570276674757&postID=9173629625858924112&target=pinterest', '9cdbf37b7b92dfcc5bbab418e725b3842e1e9e7177ce618e4b729be3ccc507d64d5cb8a2fc9650e2d0b0fb6bb5771d2196604f7e3ffcd814afe5a9196bf87ef0'),
(44, 'http://solanki-hardik.blogspot.in/2014/04/town-of-music-kick-start.html', '0e4039307fb4a3f470fb868b3ff411f46356e4d0f5ee01c99220515da05842153050ab5fe1ca7689d47848614b9847c999c6c8ef65119c4bb08c37af5cf11936'),
(45, 'https://www.facebook.com/pages/townofmusiccom/312938162189568', '74995c5d39ba604ac414a07be4c39a16a6c575cdfbf4b409c40ec90153778cb1756dd54059a207504ea00b8db505a603e5481f0e12d09ec21fa2b8a67903c1ed'),
(46, 'http://solanki-hardik.blogspot.in/2014/04/town-of-music-kick-start.html#comment-form', '814bee3ce0c7df0e433f6b0d88b9f97d9bb632df370c76e6dc8715a0657ba68d93a33621ef195bb0ddd43ed3d3164fc7ee1016c52ef87e2ba3506492861606e1'),
(47, 'https://www.blogger.com/post-edit.g?blogID=9013034570276674757&postID=6719854680773373749&from=pencil', '73bc3bca99f1ae0dd7a0de7cef27560c9dcfb73c6efd792594fe8b0342d3e03a9c270312202d3e0ae90d37d1946fbddca8d5b6580ca65cd014cdca45588b2d3d'),
(48, 'https://www.blogger.com/share-post.g?blogID=9013034570276674757&postID=6719854680773373749&target=email', '089385c2f18d041b38d58e7567ff9f5269d139836027f29cf24c57e6ffb58efc9b5d0576f3a9e2bb7be4ecf25935f78fc7fd4a97cc282bfcaa7ca39ba46c6d29'),
(49, 'https://www.blogger.com/share-post.g?blogID=9013034570276674757&postID=6719854680773373749&target=blog', '2cf80d53827c6efe6381ef57103b7a4248ef920712838227384a8d2e9d961df5bea27db440fe7f22da28d84b74048f24f62c03e1f8e778ba9213ab3d98c26f57'),
(50, 'https://www.blogger.com/share-post.g?blogID=9013034570276674757&postID=6719854680773373749&target=twitter', '7d8385dc89dd9d315932b4f4c04c84e5703b4e6df8d71da3a664603a406aa7ea879451b394a0d7f6cc37885641890d264d17320dedb72e085ca72e36c6895447'),
(51, 'https://www.blogger.com/share-post.g?blogID=9013034570276674757&postID=6719854680773373749&target=facebook', 'ed84b2892ba1307a5ab00bebbeaeb4c5856d3c59976c54a7361846e21863def81082c258ed18bdb243d58e38961ab9eab76c4560e94330705ee3f8707bcfd9e0'),
(52, 'https://www.blogger.com/share-post.g?blogID=9013034570276674757&postID=6719854680773373749&target=pinterest', '097a1d502dee1f7338c8275ab4c9692ed7190b5ad1deec85029c16d96f96d960aa1b7302a83ad14742db38e56ec7b8c49503859a799ed8de414f7c7a524728d9'),
(53, 'http://solanki-hardik.blogspot.in/2014/04/learn-python-hard-way.html', '05d6db29e692977bb4502fb303d5d2625d9afb816fb199319b71e592a2bd7dc1ea81e6fa5f009d3744afa6925e3ffe20992ced31ad8095e8270fdaa5df0f7820'),
(54, 'https://twitter.com/lzsthw', '4f5cd7c421479cb9dbf1b5148e982d694804a37be0d8d77694a458c614ba9055b0c60fa3f3709b781a8b6872748b8ec133c2ad7488bccab06ed41d82ddb39e2a'),
(55, 'http://learnpythonthehardway.org/book', 'c9b09436dfed238bb1e177fb8854a6ceb62f05a41ddab227990cb3bb55de3c411e62e89f6227faa2a0cfc9d17f2607dc4a12370a63eac223eeabfe84cc138a29'),
(56, 'http://solanki-hardik.blogspot.in/2014/04/learn-python-hard-way.html#comment-form', '514be4af3234c1f86c154bc9167c6e3ca9fb2b5e15572f88738afb987aa9161edac97dc6e9fde0a7006f0a7e189df89679548290b8d48fe309a5c77d7c3ba03e'),
(57, 'https://www.blogger.com/post-edit.g?blogID=9013034570276674757&postID=2810416690103475794&from=pencil', '447e2ff50b21e43767bc0106475e118c4e8ea103c28c3156923f3053975eb382147ae4aa649b9a492052e09987d85520e49e000e8133671c6b8858eeadc0b9a4'),
(58, 'https://www.blogger.com/share-post.g?blogID=9013034570276674757&postID=2810416690103475794&target=email', '2201239044de3d1be69ec0feeed20dcba6e7de40b99e0001dd9f11be2ac05d14bc0e4ccd3b6a42a1876622d2b4bad3ed691c0557b174ee517d4db23b973c4231'),
(59, 'https://www.blogger.com/share-post.g?blogID=9013034570276674757&postID=2810416690103475794&target=blog', '3d20118f0c284f74a0d1f100c04837dfd1ae1c5c3357973f0db57d614a29d2692a32f408962b5d019c3105ad7e2e26d02d9dc0c5291866746f6d9e105da2b25a'),
(60, 'https://www.blogger.com/share-post.g?blogID=9013034570276674757&postID=2810416690103475794&target=twitter', '07dfd9c339c35e9deedb27c9c6651efec0a40f54f10783c9bc5b0f0eba34a074a563ca52997166cdf1fa1555126557e19706404dbdf55fc4f508d55cd0b4287f'),
(61, 'https://www.blogger.com/share-post.g?blogID=9013034570276674757&postID=2810416690103475794&target=facebook', '7af739ff3325d69891529ab60afe3ec7d8847cec70c1b78e888396a84f4876f05af0ce5fbf7025c7fe1289936f0e018e09e3c85947fed7682e3e0d451d438014'),
(62, 'https://www.blogger.com/share-post.g?blogID=9013034570276674757&postID=2810416690103475794&target=pinterest', '54cfba894c55c7b348b5dc51ff35fbd3bb83a544b1ddfa87257f023df08e1d4af7b8f21c8961a4341329582e8753fdfb9e506cb142058825bf39d28894d2ed0c'),
(63, 'http://solanki-hardik.blogspot.in/2014/04/ubuntu-1404-release-party-ahmedabad.html', 'a0612b178e1cd9be7598d95eff67790e0e26d272fa3f99c7a97e8083ebd4776f17eb9373161d3c04362f3e4aea9928d14fe3581b8551ee81d1ff7329d0748b73'),
(64, 'http://loco.ubuntu.com/events/venues/India/1120/detail/', '424e7b869f96ddac09f3346747cac87311fe06848a2be67ce3c34653a7b6e42366649b0995732b61df311bf3f07339f15dfb76c46febe1db581d097efb5083e3'),
(65, 'http://loco.ubuntu.com/events/indian-team/2786-ubuntu-1404-release-party-ahmedabad/', 'b87d33172c944eec51076ea8297f0c566effc8a166d10d3696dc6d3e9e47967b93b562451c36c8b8f01c2c08d5674e4756f3f30f3abd8884eaf9f33ffbbe780b'),
(66, 'http://solanki-hardik.blogspot.in/2014/04/ubuntu-1404-release-party-ahmedabad.html#comment-form', '62c6f33a434c54e69cccd86859e44ff0ffdf11287888d746979cbf39ce809ebbc7942541ad5705b2cb8369d5d114a0d6e4961cef459c9987644796cf1fdafe79'),
(67, 'https://www.blogger.com/post-edit.g?blogID=9013034570276674757&postID=1935446163981428642&from=pencil', 'bc53189a0335f2fb622f378e0527afa1010884d162ff20fa6885544a4c5623cdfecd8e9468591f29cbaec570b1c909117880e46823caf2332c03a0f20a962c06'),
(68, 'https://www.blogger.com/share-post.g?blogID=9013034570276674757&postID=1935446163981428642&target=email', 'd9ece0c3e4aaaee7883bb3e747c5b4e0a1dae962b0024501e553b093adaa8a64cafc014bbb850709a95ca0ec4ab9b313e497743bbc4cbe3219ca1448789edeca'),
(69, 'https://www.blogger.com/share-post.g?blogID=9013034570276674757&postID=1935446163981428642&target=blog', '332de6aecb1f3eb49a8182a6a4a39b4ad70c9dab6a5d4cfcd295abcbbf5b8942bdeb9a31295a4f56688d66b908fb1a855cfdb0efe326dfc1695718e6bcc1d1a1'),
(70, 'https://www.blogger.com/share-post.g?blogID=9013034570276674757&postID=1935446163981428642&target=twitter', '81417672ab55f30a7433c722fd7463c87fbbb561867959f3f45b5066f972387d432160cdeeff17124481348e791dbe1b9d5893c8e209a28e4fa5205ffd6677b8'),
(71, 'https://www.blogger.com/share-post.g?blogID=9013034570276674757&postID=1935446163981428642&target=facebook', 'b4d338e407e749a7ed29a9197d3810ee402e334c6de1da2fbdfedf19da5ba6e1e1e6a062d5d0143c1bb7f5a47e67dbe31bac7fb0b11b43dd88519a1eec32249e'),
(72, 'https://www.blogger.com/share-post.g?blogID=9013034570276674757&postID=1935446163981428642&target=pinterest', '6a72820d32eae0bfadc31349e5ef2ad0c618b5c010b54cc04e144426e1119900ee17064b82b1c90f54d0464794dd2de321f9761b100928d58c07409b651afbe4'),
(73, 'http://solanki-hardik.blogspot.in/', 'fc6c5b25eab6cb96abd7643933f2d0b5357a6207a1044197fd5e9cf984bab6b62567f8d4a8d98be49d2affb21ba1ea31cfe2e6237259140a6c0433375c1f64ca'),
(74, 'http://solanki-hardik.blogspot.in/2014_08_01_archive.html', 'd6ed4e2686bcf16e5c077a13993c563b3724cc10ea6b800e4323d47e6c953a54c4fd47585ed107845061139a6094fe38fe9a2f915fb1e47a07c07f43d9ee74d6'),
(75, 'http://solanki-hardik.blogspot.in/2014_05_01_archive.html', '2ce15de1517ecbf4980b3249e1b7bc82c21889857ac332386255f2030232f48c6e63a6c545d4fd7f8eef466d05ffa672260966e5c1d939b0f381f431372be0e6'),
(76, 'http://solanki-hardik.blogspot.in/2014_04_01_archive.html', 'beb61745d00f05f4980e90ae1fb4abd0e0a48e4760552a1c1289c526e381dfa5bea879bc7ebe391e2bd8a41248e195aae36e01a196a69d73227b7cd0c48adc89'),
(77, 'http://www.blogger.com/rearrange?blogID=9013034570276674757&widgetType=BlogArchive&widgetId=BlogArchive1&action=editWidget&sectionId=sidebar-right-2-1', '01699b98e20040436c75fe82cb63ad6d810045435c02ef91c8f11843e394771a1e953f367d7363dcfee2e28e6eb1a3a800f12318e7d0641cf4ee3eeb1dd9c369'),
(78, 'https://www.blogger.com', 'c0bc67c768422823656ba04af7831542d5f8adf334abdaa3af10a498d456454cb8e4d2db27e0b4b7fcaefffb273c4c039407425e6d2b3b96f2b5d6c94a1aa772'),
(79, 'http://www.blogger.com/rearrange?blogID=9013034570276674757&widgetType=Attribution&widgetId=Attribution1&action=editWidget&sectionId=footer-3', '34c804c592bbdd2dc243dd42cc264aae11438282be8b0ae052bee6da0a72cbd6563bb45b454ad2d8040469d9e67f75f371afe6a03dd1f4772507fe8305586cfd'),
(80, 'http://solanki-hardik.blogspot.com/2014/08/blog-post.html', 'd6785cd579d27e7d30b406b7757555a293e855b5401c4353f1fe48a1c37f371fcf1f6c328b5ea9047650b460eec9156e3c756ea91d48df97e73862dc43c985d3'),
(81, 'http://solanki-hardik.blogspot.com/2014/05/the-first-update.html', '96332e2b2c8a61cb70c88b6e672dd12c1654c7a6d9d8bf34557ac0f1cd9ba9b06bbecec447dd7738103f20029ca1b9b13fc31989bb00eb6c11043c37b2e5708a'),
(82, 'http://solanki-hardik.blogspot.com/2014/05/instagram.html', 'c08c2425b2e49b6d5213946861c1bc19255f858196bd8dfd9e101db9398565aed945ad0b7054a612a8b8d8d093d01ab8bf5a68449bf0062d321661181500fa95'),
(83, 'http://solanki-hardik.blogspot.com/2014/05/leaks-out-in-black-lime-green.html', '05f4f167e9d7941d26f94501d5721d92496ae90a91f81f9143555e3d09db390ee8766c0d2e43dd3514e6f21b0d45e8f3cae73438b9c51773f3d3105f8df19f5d'),
(84, 'http://solanki-hardik.blogspot.com/2014/04/town-of-music-kick-start.html', 'bac1ce3f49a6d8d5f75e2be404c64e89041888d6b4b8886aa43e442c0fab6f0467dae538b04bf904dc52563d2d4b0bf7d8a472840b5da22b37b0928b9c9dc80f'),
(85, 'http://solanki-hardik.blogspot.com/2014/04/learn-python-hard-way.html', '7407dffb39b5bda7327dfbee60c1c8734196fb517e3b70f9ea32c93c2e497cffe0955b2a1cbd4a61048f15514f2feb6f18fec4a084c903a17e616d473ef276db'),
(86, 'http://solanki-hardik.blogspot.com/2014/04/ubuntu-1404-release-party-ahmedabad.html', '1608678178cdfdb26b5c01ca59673209dcf8ddfc4a9ffbc194bb17588c66fa126ceb456cdb5b15ac4b59e1c56129de561b747adbfc6fde4cd401442c6ba8ea5b'),
(88, 'http://www.blogger.com/feeds/9013034570276674757/posts/default', '47c7011c8940163bd8fae16590bc72f6286c7873fa13815d2987e78c4f6c5002a216c9754ed0f5641f79bc70e423b52e4b0f877f68f9e4234de446a8e52615ce'),
(89, 'http://solanki-hardik.blogspot.com/', 'a5becdfbb3798e3228eb926e4c0cae238dfcf54a8988e219fa72870314d711046c9159353b5ac07db55cbb46acbaec9016ec83083f57f74ab6e2ac6263f2ef83'),
(90, 'http://pubsubhubbub.appspot.com/', 'f5334121a778d186a00a8cae7bd60e5f84f2225a278ed860819da1e54dce55287396843ac95bcb949172e2e9191d41f60725b0f2f7f79e14faa87041b102d99e'),
(91, 'http://solanki-hardik.blogspot.com/feeds/2587990347374681211/comments/default', '9a64bc036cb75ddfcb89ba7ec44427710949c44d225fe924083d1c4eb1a19ef89d5fbf90d92a5a641377e37625818da77efaca9769a5c1de1b58de23cad7d7be'),
(92, 'http://solanki-hardik.blogspot.com/2014/08/blog-post.html#comment-form', 'acdced9e0591c263c1e3d51fdfdd386478cb4def313dc7bac347f475dcb1f0ea435fdc8740bc5859952bd558488267e1f90df8458bbebebb2bc572358d0654a3'),
(93, 'http://www.blogger.com/feeds/9013034570276674757/posts/default/2587990347374681211', 'e43cc0210d4b0af0dfe3a58afc0a449b1e5733be710b9c8e4959f1acc842f7a39a3b90e219aadb74fb189d5eeac80783c6fad2e9ad41137d553450c10c30c596'),
(95, 'http://solanki-hardik.blogspot.com/feeds/1913776721175302459/comments/default', '51934bd6861e2b69a04b9304d42d4e3230820168aa721df3ea5673d77695f95e2865a229f788bc200b47fa831a3678c21aa528e6483acf9d37d0116ded49b28d'),
(96, 'http://solanki-hardik.blogspot.com/2014/05/the-first-update.html#comment-form', '2f1a06733b01473f1ae3ea83d3a5b014589d9e8a48dfdb1d762470c62a17c188d674983dccfeb775b347a186911a9bae7bf1148b42e03078034608c87db8ca9c'),
(97, 'http://www.blogger.com/feeds/9013034570276674757/posts/default/1913776721175302459', '687f7635edbf6303c882ec10d3d0f51938115d7dd13b0f980351483f3f5ffd4998ac3a6a36cbbd8c4c1c18d349f6602cc537b1472bbe4a0d04aad6f161860d8f'),
(99, 'http://solanki-hardik.blogspot.com/feeds/5189929795147744234/comments/default', 'a464adc7275b3b38e20d227ef07490373e11e7e833a4b0d071c7b331698e68deaebd18a218be6e515a4132abb95c4facf1a33f483d6b00ce23d4a7a3f826064e'),
(100, 'http://solanki-hardik.blogspot.com/2014/05/instagram.html#comment-form', '5b6883a658ff35f7fdff47a8bd0cd191e46e23f2bda5b6eef53f4616ac15a5917bec0a745a5864cb6071ab914b3252671c7198afc2762202f149bc6fd0b5d366'),
(101, 'http://www.blogger.com/feeds/9013034570276674757/posts/default/5189929795147744234', '291a9e3118f59d28827a4954598d64612dc4ad7ebee818c64c7c3d481954ab0cd7f96edea36154ccc37f2602371c4ba0fdbc7bf2038b3b377a54acda293eccfc');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
