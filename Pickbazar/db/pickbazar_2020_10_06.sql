/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : localhost:3306
 Source Schema         : pickbazar

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 06/10/2020 11:26:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (3, 2, '43 Street, 2341 Road Visalia, Ny 24252', 'Home');
INSERT INTO `address` VALUES (4, 2, '29 Eve Street, 543 Evenue Road, Ny 87876', 'Office');
INSERT INTO `address` VALUES (6, 1, '43 Street, 2341 Road Visalia, Ny 24252\n', 'Home');
INSERT INTO `address` VALUES (7, 1, '29 Eve Street, 543 Evenue Road, Ny 87876', 'Office');
INSERT INTO `address` VALUES (10, 1, '29 Eve Street, 543 Evenue Road, Ny 87876', 'House');

-- ----------------------------
-- Table structure for author
-- ----------------------------
DROP TABLE IF EXISTS `author`;
CREATE TABLE `author`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `product_id` int(0) NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bio` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `website` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of author
-- ----------------------------
INSERT INTO `author` VALUES (1, 670, 'Princeton', '', 'Far far away, behind the word mountains, far from ', 'princeton@demo.com', 'https://princeton.demo');
INSERT INTO `author` VALUES (2, 671, 'Bryna', '', 'Far far away, behind the word mountains, far from ', 'bryna@demo.com', 'https://bryna.demo');
INSERT INTO `author` VALUES (3, 672, 'Quienten Blake', '', 'Far far away, behind the word mountains, far from ', 'blake@demo.com', 'https://blake.demo');
INSERT INTO `author` VALUES (4, 673, 'Asphyxia', '', 'Far far away, behind the word mountains, far from ', 'asphyxia@demo.com', 'https://asphyxia.demo');
INSERT INTO `author` VALUES (5, 674, 'Ibby', '', 'Far far away, behind the word mountains, far from ', 'ibby@demo.com', 'https://ibby.demo');
INSERT INTO `author` VALUES (6, 675, 'Quienten Blake', '', 'Far far away, behind the word mountains, far from ', 'blake@demo.com', 'https://blake.demo');
INSERT INTO `author` VALUES (7, 676, 'Usborne', '', 'Far far away, behind the word mountains, far from ', 'usnorne@demo.com', 'https://usborne.demo');
INSERT INTO `author` VALUES (8, 677, 'Yiddish', '', 'Far far away, behind the word mountains, far from ', 'usnorne@demo.com', 'https://Yiddish.demo');
INSERT INTO `author` VALUES (9, 678, 'usborne', '', 'Far far away, behind the word mountains, far from ', 'usnorne@demo.com', 'https://usborne.demo');
INSERT INTO `author` VALUES (10, 679, 'Felix', '', 'Far far away, behind the word mountains, far from ', 'felix@demo.com', 'https://felix.demo');
INSERT INTO `author` VALUES (11, 680, 'Marvel', '', 'Far far away, behind the word mountains, far from ', 'marvel@demo.com', 'https://marvel.demo');
INSERT INTO `author` VALUES (12, 681, 'ABC', '', 'Far far away, behind the word mountains, far from ', 'marvel@demo.com', 'https://abc.demo');
INSERT INTO `author` VALUES (13, 682, 'ABC', '', 'Far far away, behind the word mountains, far from ', 'abc@demo.com', 'https://abc.demo');
INSERT INTO `author` VALUES (14, 683, 'Planet Comic', '', 'Far far away, behind the word mountains, far from ', 'planet@demo.com', 'https://planet.demo');
INSERT INTO `author` VALUES (15, 684, 'Chris Gavalar', '', 'Far far away, behind the word mountains, far from ', 'planet@demo.com', 'https://chrisgavalar.demo');
INSERT INTO `author` VALUES (16, 685, 'Chris Gavalar', '', 'Far far away, behind the word mountains, far from ', 'planet@demo.com', 'https://chrisgavalar.demo');
INSERT INTO `author` VALUES (17, 686, 'Steve Dillon', '', 'Far far away, behind the word mountains, far from ', 'planet@demo.com', 'https://stevedillon.demo');
INSERT INTO `author` VALUES (18, 687, 'Afu Chan', '', 'Far far away, behind the word mountains, far from ', 'afuchan@demo.com', 'https://afuchan.demo');
INSERT INTO `author` VALUES (19, 688, 'Hannah West', '', 'Far far away, behind the word mountains, far from ', 'hannah@demo.com', 'https://hannah.demo');
INSERT INTO `author` VALUES (20, 689, 'Cassandra Finerty', '', 'Far far away, behind the word mountains, far from ', 'cassandra@demo.com', 'https://cassandra.demo');
INSERT INTO `author` VALUES (21, 690, 'Jeffry Moore', '', 'Far far away, behind the word mountains, far from ', 'jeffry@demo.com', 'https://jeffry.demo');
INSERT INTO `author` VALUES (22, 691, 'Cathrine Egar', '', 'Far far away, behind the word mountains, far from ', 'Cathrine@demo.com', 'https://cathrine.demo');
INSERT INTO `author` VALUES (23, 692, 'Stephine Garbine', '', 'Far far away, behind the word mountains, far from ', 'stephane@demo.com', 'https://stephine.demo');
INSERT INTO `author` VALUES (24, 693, 'Susan dennard', '', 'Far far away, behind the word mountains, far from ', 'susan@demo.com', 'https://susan.demo');
INSERT INTO `author` VALUES (25, 694, 'Zen Cho', '', 'Far far away, behind the word mountains, far from ', 'zen@demo.com', 'https://zen.demo');
INSERT INTO `author` VALUES (26, 695, 'Tom Green', '', 'Far far away, behind the word mountains, far from ', 'tom@demo.com', 'https://tom.demo');
INSERT INTO `author` VALUES (27, 696, 'John F.D. Taff', '', 'Far far away, behind the word mountains, far from ', 'john@demo.com', 'https://john.demo');
INSERT INTO `author` VALUES (28, 697, 'Julien Jamar', '', 'Far far away, behind the word mountains, far from ', 'julien@demo.com', 'https://julien.demo');
INSERT INTO `author` VALUES (29, 698, 'Sarah Pinbrough', '', 'Far far away, behind the word mountains, far from ', 'sarah@demo.com', 'https://sarah.demo');
INSERT INTO `author` VALUES (30, 699, 'Dan Poblocki', '', 'Far far away, behind the word mountains, far from ', 'dan@demo.com', 'https://dan.demo');
INSERT INTO `author` VALUES (31, 700, 'Rin Chupeco', '', 'Far far away, behind the word mountains, far from ', 'rin@demo.com', 'https://rin.demo');
INSERT INTO `author` VALUES (32, 701, 'Jay Anson', '', 'Far far away, behind the word mountains, far from ', 'jay@demo.com', 'https://jay.demo');
INSERT INTO `author` VALUES (33, 702, 'Stephan King', '', 'Far far away, behind the word mountains, far from ', 'stephen@demo.com', 'https://stephen.demo');
INSERT INTO `author` VALUES (34, 703, 'William Gay', '', 'Far far away, behind the word mountains, far from ', 'william@demo.com', 'https://william.demo');
INSERT INTO `author` VALUES (35, 704, 'Molly Green', '', 'Far far away, behind the word mountains, far from ', 'molly@demo.com', 'https://molly.demo');
INSERT INTO `author` VALUES (36, 705, 'Michael Ondaatje', '', 'Far far away, behind the word mountains, far from ', 'michael@demo.com', 'https://michael.demo');
INSERT INTO `author` VALUES (37, 706, 'Caroline Kepnes', '', 'Far far away, behind the word mountains, far from ', 'kepnes@demo.com', 'https://kepnes.demo');
INSERT INTO `author` VALUES (38, 707, 'Shelly Krane', '', 'Far far away, behind the word mountains, far from ', 'shelly@demo.com', 'https://shelly.demo');
INSERT INTO `author` VALUES (39, 708, 'Isabel Alledine', '', 'Far far away, behind the word mountains, far from ', 'isabel@demo.com', 'https://isabel.demo');
INSERT INTO `author` VALUES (40, 709, 'Cara Hunter', '', 'Far far away, behind the word mountains, far from ', 'cara@demo.com', 'https://cara.demo');
INSERT INTO `author` VALUES (41, 710, 'Charlie Lovett', '', 'Far far away, behind the word mountains, far from ', 'charlie@demo.com', 'https://charlie.demo');
INSERT INTO `author` VALUES (42, 711, 'Melissa Breyden', '', 'Far far away, behind the word mountains, far from ', 'melissa@demo.com', 'https://melissa.demo');
INSERT INTO `author` VALUES (43, 712, 'Kandie Steiner', '', 'Far far away, behind the word mountains, far from ', 'kandi@demo.com', 'https://kandi.demo');
INSERT INTO `author` VALUES (44, 713, 'Lisa Berne', '', 'Far far away, behind the word mountains, far from ', 'lisa@demo.com', 'https://lisa.demo');
INSERT INTO `author` VALUES (45, 714, 'Kandi Steiner', '', 'Far far away, behind the word mountains, far from ', 'kandi@demo.com', 'https://kandi.demo');
INSERT INTO `author` VALUES (46, 715, 'Juliet Dark', '', 'Far far away, behind the word mountains, far from ', 'juliet@demo.com', 'https://juliet.demo');
INSERT INTO `author` VALUES (47, 716, 'Camryn Rhys', '', 'Far far away, behind the word mountains, far from ', 'camryn@demo.com', 'https://camryn.demo');
INSERT INTO `author` VALUES (48, 717, 'Melissa Foster', '', 'Far far away, behind the word mountains, far from ', 'melissa@demo.com', 'https://melissa.demo');
INSERT INTO `author` VALUES (49, 718, 'A.M. Brooks', '', 'Far far away, behind the word mountains, far from ', 'brooks@demo.com', 'https://brooks.demo');
INSERT INTO `author` VALUES (50, 719, 'Kandi Steiner', '', 'Far far away, behind the word mountains, far from ', 'kandi@demo.com', 'https://kandi.demo');
INSERT INTO `author` VALUES (51, 720, 'Aleister Davidson', '', 'Far far away, behind the word mountains, far from ', 'aliester@demo.com', 'https://aliester.demo');
INSERT INTO `author` VALUES (52, 721, 'Kameron Hurly', '', 'Far far away, behind the word mountains, far from ', 'kameron@demo.com', 'https://kameron.demo');
INSERT INTO `author` VALUES (53, 722, 'JM Hart', '', 'Far far away, behind the word mountains, far from ', 'hart@demo.com', 'https://hart.demo');
INSERT INTO `author` VALUES (54, 723, 'John Premade', '', 'Far far away, behind the word mountains, far from ', 'premade@demo.com', 'https://premade.demo');
INSERT INTO `author` VALUES (55, 724, 'John J. Smith', '', 'Far far away, behind the word mountains, far from ', 'john@demo.com', 'https://john.demo');
INSERT INTO `author` VALUES (56, 726, 'Cathrine Knutsson', '', 'Far far away, behind the word mountains, far from ', 'cathrine@demo.com', 'https://cathrine.demo');
INSERT INTO `author` VALUES (57, 730, 'David Young', '', 'Far far away, behind the word mountains, far from ', 'dyoung@demo.com', 'https://dyoung.demo');
INSERT INTO `author` VALUES (58, 731, 'Patricia Gibney', '', 'Far far away, behind the word mountains, far from ', 'patricia@demo.com', 'https://patricia.demo');
INSERT INTO `author` VALUES (59, 732, 'Pat Wilpenter', '', 'Far far away, behind the word mountains, far from ', 'pat@demo.com', 'https://pat.demo');
INSERT INTO `author` VALUES (60, 733, 'Juno Dawson', '', 'Far far away, behind the word mountains, far from ', 'dawson@demo.com', 'https://dawson.demo');
INSERT INTO `author` VALUES (61, 734, 'CJ Lyons', '', 'Far far away, behind the word mountains, far from ', 'lyons@demo.com', 'https://lyons.demo');
INSERT INTO `author` VALUES (62, 735, 'Cathrine Knutsson', '', 'Far far away, behind the word mountains, far from ', 'cathrine@demo.com', 'https://cathrine.demo');

-- ----------------------------
-- Table structure for card
-- ----------------------------
DROP TABLE IF EXISTS `card`;
CREATE TABLE `card`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NOT NULL,
  `card` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of card
-- ----------------------------
INSERT INTO `card` VALUES (1, 1, '2349', 'paypal');
INSERT INTO `card` VALUES (2, 1, '8724', 'master');
INSERT INTO `card` VALUES (3, 1, '4535', 'visa');
INSERT INTO `card` VALUES (4, 1, '4585', 'visa');
INSERT INTO `card` VALUES (5, 2, '8723', 'paypal');
INSERT INTO `card` VALUES (6, 2, '4352', 'master');
INSERT INTO `card` VALUES (7, 2, '2398', 'visa');

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tag_id` bigint(0) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `parent_id` int(0) NULL DEFAULT NULL,
  `inserted_at` timestamp(0) NOT NULL,
  `updated_at` timestamp(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2015 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, 1, 'Fruits & Vegetables', 'fruits-and-vegetables', 'FruitsVegetable', NULL, '2020-09-22 16:41:29', '2020-09-22 16:41:29');
INSERT INTO `categories` VALUES (2, 1, 'Fruits', 'fruits', NULL, 1, '2020-09-22 16:41:29', '2020-09-22 16:41:29');
INSERT INTO `categories` VALUES (3, 1, 'vegetables', 'vegetables', NULL, 1, '2020-09-22 16:41:29', '2020-09-22 16:41:29');
INSERT INTO `categories` VALUES (9, 1, 'Meat & Fish', 'meat-and-fish', 'MeatFish', NULL, '2020-09-22 16:41:29', '2020-09-22 16:41:29');
INSERT INTO `categories` VALUES (12, 1, 'Fresh Fish', 'fresh-fish', NULL, 9, '2020-09-22 16:41:30', '2020-09-22 16:41:30');
INSERT INTO `categories` VALUES (13, 1, 'Meat', 'meat', NULL, 9, '2020-09-22 16:41:30', '2020-09-22 16:41:30');
INSERT INTO `categories` VALUES (14, 2, 'Purse', 'purse', 'Purse', NULL, '2020-09-22 16:41:30', '2020-09-22 16:41:30');
INSERT INTO `categories` VALUES (15, 2, 'Hand bags', 'hand-bags', 'HandBags', NULL, '2020-09-22 16:41:30', '2020-09-22 16:41:30');
INSERT INTO `categories` VALUES (16, 2, 'Shoulder bags', 'shoulder-bags', 'ShoulderBags', NULL, '2020-09-22 16:41:30', '2020-09-22 16:41:30');
INSERT INTO `categories` VALUES (17, 2, 'Wallet', 'wallet', 'Wallet', NULL, '2020-09-22 16:41:31', '2020-09-22 16:41:31');
INSERT INTO `categories` VALUES (18, 2, 'Laptop bags', 'laptop-bags', 'LaptopBags', NULL, '2020-09-22 16:41:31', '2020-09-22 16:41:31');
INSERT INTO `categories` VALUES (19, 3, 'Women Dress', 'women-dress', 'WomenDress', NULL, '2020-09-22 16:41:31', '2020-09-22 16:41:31');
INSERT INTO `categories` VALUES (20, 3, 'Printed', 'printed', NULL, 19, '2020-09-22 16:41:31', '2020-09-22 16:41:31');
INSERT INTO `categories` VALUES (21, 3, 'Floral', 'floral', NULL, 19, '2020-09-22 16:41:31', '2020-09-22 16:41:31');
INSERT INTO `categories` VALUES (22, 3, 'Single Color', 'single-color', NULL, 19, '2020-09-22 16:41:31', '2020-09-22 16:41:31');
INSERT INTO `categories` VALUES (23, 3, 'Outer Wear', 'outer-wear', 'OuterWear', NULL, '2020-09-22 16:41:32', '2020-09-22 16:41:32');
INSERT INTO `categories` VALUES (24, 3, 'Hoodie', 'hoodie', NULL, 23, '2020-09-22 16:41:32', '2020-09-22 16:41:32');
INSERT INTO `categories` VALUES (25, 3, 'Jacket', 'jacket', NULL, 23, '2020-09-22 16:41:32', '2020-09-22 16:41:32');
INSERT INTO `categories` VALUES (26, 3, 'Blazer', 'blazer', NULL, 23, '2020-09-22 16:41:32', '2020-09-22 16:41:32');
INSERT INTO `categories` VALUES (27, 3, 'Waist Coat', 'waist-coat', NULL, 23, '2020-09-22 16:41:32', '2020-09-22 16:41:32');
INSERT INTO `categories` VALUES (28, 3, 'Pants', 'pants', 'Pants', NULL, '2020-09-22 16:41:32', '2020-09-22 16:41:32');
INSERT INTO `categories` VALUES (29, 3, 'Jeans', 'jeans', NULL, 28, '2020-09-22 16:41:32', '2020-09-22 16:41:32');
INSERT INTO `categories` VALUES (30, 3, 'Chinos', 'chinos', NULL, 28, '2020-09-22 16:41:32', '2020-09-22 16:41:32');
INSERT INTO `categories` VALUES (31, 3, 'Sports', 'sports', NULL, 28, '2020-09-22 16:41:33', '2020-09-22 16:41:33');
INSERT INTO `categories` VALUES (32, 3, 'Tops', 'tops', 'Tops', NULL, '2020-09-22 16:41:33', '2020-09-22 16:41:33');
INSERT INTO `categories` VALUES (33, 3, 'Skirts', 'skirts', 'Skirts', NULL, '2020-09-22 16:41:33', '2020-09-22 16:41:33');
INSERT INTO `categories` VALUES (34, 3, 'Shirts', 'shirts', 'Shirts', NULL, '2020-09-22 16:41:33', '2020-09-22 16:41:33');
INSERT INTO `categories` VALUES (35, 4, 'Face', 'face', 'Face', NULL, '2020-09-22 16:41:33', '2020-09-22 16:41:33');
INSERT INTO `categories` VALUES (36, 4, 'Blusher', 'blusher', NULL, 35, '2020-09-22 16:41:33', '2020-09-22 16:41:33');
INSERT INTO `categories` VALUES (37, 4, 'Foundation', 'foundation', NULL, 35, '2020-09-22 16:41:34', '2020-09-22 16:41:34');
INSERT INTO `categories` VALUES (38, 4, 'Face Powder', 'face-powder', NULL, 35, '2020-09-22 16:41:34', '2020-09-22 16:41:34');
INSERT INTO `categories` VALUES (39, 4, 'Eyes', 'eyes', 'Eyes', NULL, '2020-09-22 16:41:34', '2020-09-22 16:41:34');
INSERT INTO `categories` VALUES (40, 4, 'Eye Shadow', 'eye-shadow', NULL, 39, '2020-09-22 16:41:34', '2020-09-22 16:41:34');
INSERT INTO `categories` VALUES (41, 4, 'Glitter', 'glitter', NULL, 39, '2020-09-22 16:41:34', '2020-09-22 16:41:34');
INSERT INTO `categories` VALUES (42, 4, 'Mascara', 'mascara', NULL, 39, '2020-09-22 16:41:34', '2020-09-22 16:41:34');
INSERT INTO `categories` VALUES (43, 4, 'Lips', 'lips', 'Lips', NULL, '2020-09-22 16:41:35', '2020-09-22 16:41:35');
INSERT INTO `categories` VALUES (44, 4, 'Lip Gloss', 'lip-gloss', NULL, 43, '2020-09-22 16:41:35', '2020-09-22 16:41:35');
INSERT INTO `categories` VALUES (45, 4, 'Lipstick', 'lipstick', NULL, 43, '2020-09-22 16:41:35', '2020-09-22 16:41:35');
INSERT INTO `categories` VALUES (46, 4, 'Lip Kit', 'lip-kit', NULL, 43, '2020-09-22 16:41:35', '2020-09-22 16:41:35');
INSERT INTO `categories` VALUES (47, 4, 'Accessories', 'accessories', 'Accessories', NULL, '2020-09-22 16:41:35', '2020-09-22 16:41:35');
INSERT INTO `categories` VALUES (48, 1, 'Snacks', 'snacks', 'Snacks', NULL, '2020-09-22 16:41:35', '2020-09-22 16:41:35');
INSERT INTO `categories` VALUES (49, 1, 'Biscuits', 'biscuits', NULL, 48, '2020-09-22 16:41:35', '2020-09-22 16:41:35');
INSERT INTO `categories` VALUES (50, 1, 'Chocolates', 'chocolates', NULL, 48, '2020-09-22 16:41:36', '2020-09-22 16:41:36');
INSERT INTO `categories` VALUES (51, 1, 'Crisps', 'crisps', NULL, 48, '2020-09-22 16:41:36', '2020-09-22 16:41:36');
INSERT INTO `categories` VALUES (52, 1, 'Noodles', 'noodles', NULL, 48, '2020-09-22 16:41:36', '2020-09-22 16:41:36');
INSERT INTO `categories` VALUES (53, 1, 'Nuts', 'nuts', NULL, 48, '2020-09-22 16:41:36', '2020-09-22 16:41:36');
INSERT INTO `categories` VALUES (54, 1, 'Pasta', 'pasta', NULL, 48, '2020-09-22 16:41:36', '2020-09-22 16:41:36');
INSERT INTO `categories` VALUES (55, 1, 'Sauce', 'sauce', NULL, 48, '2020-09-22 16:41:36', '2020-09-22 16:41:36');
INSERT INTO `categories` VALUES (56, 1, 'Soup', 'soup', NULL, 48, '2020-09-22 16:41:37', '2020-09-22 16:41:37');
INSERT INTO `categories` VALUES (57, 1, 'Pet Care', 'petcare', 'PetCare', NULL, '2020-09-22 16:41:37', '2020-09-22 16:41:37');
INSERT INTO `categories` VALUES (58, 1, 'Cat Food', 'catfood', NULL, 57, '2020-09-22 16:41:37', '2020-09-22 16:41:37');
INSERT INTO `categories` VALUES (59, 1, 'Dog Food', 'dogfood', NULL, 57, '2020-09-22 16:41:37', '2020-09-22 16:41:37');
INSERT INTO `categories` VALUES (60, 1, 'KItten Food', 'kittenfood', NULL, 57, '2020-09-22 16:41:37', '2020-09-22 16:41:37');
INSERT INTO `categories` VALUES (61, 1, 'Pet Accessories', 'petaccessories', NULL, 57, '2020-09-22 16:41:37', '2020-09-22 16:41:37');
INSERT INTO `categories` VALUES (62, 1, 'Home & Cleaning', 'home-cleaning', 'HomeCleaning', NULL, '2020-09-22 16:41:37', '2020-09-22 16:41:37');
INSERT INTO `categories` VALUES (63, 1, 'Air Freshner', 'air_freshner', NULL, 62, '2020-09-22 16:41:38', '2020-09-22 16:41:38');
INSERT INTO `categories` VALUES (64, 1, 'Cleaning Products', 'cleaning_products', NULL, 62, '2020-09-22 16:41:38', '2020-09-22 16:41:38');
INSERT INTO `categories` VALUES (65, 1, 'Dishwasher', 'dishwasher', NULL, 62, '2020-09-22 16:41:38', '2020-09-22 16:41:38');
INSERT INTO `categories` VALUES (66, 1, 'Kitchen Accessories', 'kitchen_accessories', NULL, 62, '2020-09-22 16:41:38', '2020-09-22 16:41:38');
INSERT INTO `categories` VALUES (67, 1, 'Laundry', 'laundry', NULL, 62, '2020-09-22 16:41:38', '2020-09-22 16:41:38');
INSERT INTO `categories` VALUES (68, 1, 'Pest Control', 'Pest_control', NULL, 62, '2020-09-22 16:41:38', '2020-09-22 16:41:38');
INSERT INTO `categories` VALUES (69, 1, 'Dairy', 'dairy', 'Dairy', NULL, '2020-09-22 16:41:38', '2020-09-22 16:41:38');
INSERT INTO `categories` VALUES (70, 1, 'Butter', 'butter', NULL, 69, '2020-09-22 16:41:39', '2020-09-22 16:41:39');
INSERT INTO `categories` VALUES (71, 1, 'Egg', 'egg', NULL, 69, '2020-09-22 16:41:39', '2020-09-22 16:41:39');
INSERT INTO `categories` VALUES (72, 1, 'Milk', 'milk', NULL, 69, '2020-09-22 16:41:39', '2020-09-22 16:41:39');
INSERT INTO `categories` VALUES (73, 1, 'Milk Cream', 'milk_cream', NULL, 69, '2020-09-22 16:41:39', '2020-09-22 16:41:39');
INSERT INTO `categories` VALUES (74, 1, 'Powder Milk', 'Powder_Milk', NULL, 69, '2020-09-22 16:41:39', '2020-09-22 16:41:39');
INSERT INTO `categories` VALUES (75, 1, 'Yogourt', 'yogourt', NULL, 69, '2020-09-22 16:41:39', '2020-09-22 16:41:39');
INSERT INTO `categories` VALUES (76, 1, 'Cooking', 'cooking', 'Cooking', NULL, '2020-09-22 16:41:39', '2020-09-22 16:41:39');
INSERT INTO `categories` VALUES (77, 1, 'Oil', 'oil', NULL, 76, '2020-09-22 16:41:40', '2020-09-22 16:41:40');
INSERT INTO `categories` VALUES (78, 1, 'Rice', 'rice', NULL, 76, '2020-09-22 16:41:40', '2020-09-22 16:41:40');
INSERT INTO `categories` VALUES (79, 1, 'Salt & Sugar', 'Salt_sugar', NULL, 76, '2020-09-22 16:41:40', '2020-09-22 16:41:40');
INSERT INTO `categories` VALUES (80, 1, 'Spices', 'milk_cream', NULL, 76, '2020-09-22 16:41:40', '2020-09-22 16:41:40');
INSERT INTO `categories` VALUES (82, 1, 'Breakfast', 'breakfast', 'Breakfast', NULL, '2020-09-22 16:41:40', '2020-09-22 16:41:40');
INSERT INTO `categories` VALUES (83, 1, 'Bread', 'bread', NULL, 82, '2020-09-22 16:41:40', '2020-09-22 16:41:40');
INSERT INTO `categories` VALUES (84, 1, 'Cereal', 'cereal', NULL, 82, '2020-09-22 16:41:41', '2020-09-22 16:41:41');
INSERT INTO `categories` VALUES (85, 1, 'Honey', 'honey', NULL, 82, '2020-09-22 16:41:41', '2020-09-22 16:41:41');
INSERT INTO `categories` VALUES (86, 1, 'Jam', 'jam', NULL, 82, '2020-09-22 16:41:41', '2020-09-22 16:41:41');
INSERT INTO `categories` VALUES (87, 1, 'Mayonnaise', 'mayonnaise', NULL, 82, '2020-09-22 16:41:41', '2020-09-22 16:41:41');
INSERT INTO `categories` VALUES (88, 1, 'Oats', 'oats', NULL, 82, '2020-09-22 16:41:41', '2020-09-22 16:41:41');
INSERT INTO `categories` VALUES (90, 1, 'Beverage', 'beverage', 'Beverage', NULL, '2020-09-22 16:41:41', '2020-09-22 16:41:41');
INSERT INTO `categories` VALUES (91, 1, 'Coffee', 'coffee', NULL, 90, '2020-09-22 16:41:41', '2020-09-22 16:41:41');
INSERT INTO `categories` VALUES (92, 1, 'Energy Drinks', 'energy_drinks', NULL, 90, '2020-09-22 16:41:42', '2020-09-22 16:41:42');
INSERT INTO `categories` VALUES (93, 1, 'Juice', 'juice', NULL, 90, '2020-09-22 16:41:42', '2020-09-22 16:41:42');
INSERT INTO `categories` VALUES (94, 1, 'Fizzy Drinks', 'fizzy_drinks', NULL, 90, '2020-09-22 16:41:42', '2020-09-22 16:41:42');
INSERT INTO `categories` VALUES (95, 1, 'Syrup & powder', 'syrup_powder', NULL, 90, '2020-09-22 16:41:42', '2020-09-22 16:41:42');
INSERT INTO `categories` VALUES (96, 1, 'Tea', 'tea', NULL, 90, '2020-09-22 16:41:42', '2020-09-22 16:41:42');
INSERT INTO `categories` VALUES (97, 1, 'Water', 'water', NULL, 90, '2020-09-22 16:41:42', '2020-09-22 16:41:42');
INSERT INTO `categories` VALUES (98, 1, 'Beauty & Health', 'health_beauty', 'BeautyHealth', NULL, '2020-09-22 16:41:42', '2020-09-22 16:41:42');
INSERT INTO `categories` VALUES (99, 1, 'Bath', 'bath', NULL, 98, '2020-09-22 16:41:43', '2020-09-22 16:41:43');
INSERT INTO `categories` VALUES (100, 1, 'Cream', 'cream', NULL, 98, '2020-09-22 16:41:43', '2020-09-22 16:41:43');
INSERT INTO `categories` VALUES (101, 1, 'Deodorant', 'deodorant', NULL, 98, '2020-09-22 16:41:43', '2020-09-22 16:41:43');
INSERT INTO `categories` VALUES (102, 1, 'Face Care', 'face_care', NULL, 98, '2020-09-22 16:41:43', '2020-09-22 16:41:43');
INSERT INTO `categories` VALUES (105, 1, 'Oral Care', 'Oral_care', NULL, 98, '2020-09-22 16:41:43', '2020-09-22 16:41:43');
INSERT INTO `categories` VALUES (106, 1, 'Shaving Needs', 'shaving_needs', NULL, 98, '2020-09-22 16:41:43', '2020-09-22 16:41:43');
INSERT INTO `categories` VALUES (107, 4, 'Shaving Needs', 'shaving_needs', 'ShavingNeeds', NULL, '2020-09-22 16:41:43', '2020-09-22 16:41:43');
INSERT INTO `categories` VALUES (108, 4, 'Oral Care', 'Oral_care', 'OralCare', NULL, '2020-09-22 16:41:43', '2020-09-22 16:41:43');
INSERT INTO `categories` VALUES (109, 4, 'Facial Care', 'face_care', 'FacialCare', NULL, '2020-09-22 16:41:44', '2020-09-22 16:41:44');
INSERT INTO `categories` VALUES (110, 4, 'Deodorant', 'deodorant', 'Deodorant', NULL, '2020-09-22 16:41:44', '2020-09-22 16:41:44');
INSERT INTO `categories` VALUES (111, 4, 'Bath & Oil', 'bath', 'BathOil', NULL, '2020-09-22 16:41:44', '2020-09-22 16:41:44');
INSERT INTO `categories` VALUES (112, 5, 'Children Literature', 'children_literature', '', NULL, '2020-09-22 16:41:44', '2020-09-22 16:41:44');
INSERT INTO `categories` VALUES (113, 5, 'Comic Book', 'comic_book', '', NULL, '2020-09-22 16:41:44', '2020-09-22 16:41:44');
INSERT INTO `categories` VALUES (114, 5, 'Fantasy', 'fantasy', '', NULL, '2020-09-22 16:41:45', '2020-09-22 16:41:45');
INSERT INTO `categories` VALUES (115, 5, 'Horror', 'horror', '', NULL, '2020-09-22 16:41:45', '2020-09-22 16:41:45');
INSERT INTO `categories` VALUES (116, 5, 'Novel', 'novel', '', NULL, '2020-09-22 16:41:45', '2020-09-22 16:41:45');
INSERT INTO `categories` VALUES (117, 5, 'Romantic', 'romantic', '', NULL, '2020-09-22 16:41:45', '2020-09-22 16:41:45');
INSERT INTO `categories` VALUES (118, 5, 'Science Fiction', 'science_fiction', '', NULL, '2020-09-22 16:41:45', '2020-09-22 16:41:45');
INSERT INTO `categories` VALUES (119, 5, 'Thriller', 'thriller', '', NULL, '2020-09-22 16:41:46', '2020-09-22 16:41:46');
INSERT INTO `categories` VALUES (120, 6, 'Bed', 'bed', '', NULL, '2020-09-22 16:41:46', '2020-09-22 16:41:46');
INSERT INTO `categories` VALUES (121, 6, 'Master Bed', 'master_bed', NULL, 120, '2020-09-22 16:41:46', '2020-09-22 16:41:46');
INSERT INTO `categories` VALUES (122, 6, 'Single Bed', 'single_bed', NULL, 120, '2020-09-22 16:41:46', '2020-09-22 16:41:46');
INSERT INTO `categories` VALUES (123, 6, 'Semi Double Bed', 'semi_double_bed', NULL, 120, '2020-09-22 16:41:46', '2020-09-22 16:41:46');
INSERT INTO `categories` VALUES (124, 6, 'Chair', 'chair', '', NULL, '2020-09-22 16:41:46', '2020-09-22 16:41:46');
INSERT INTO `categories` VALUES (125, 6, 'Cozy Chair', 'cozy_chair', NULL, 124, '2020-09-22 16:41:47', '2020-09-22 16:41:47');
INSERT INTO `categories` VALUES (126, 6, 'Rocking Chair', 'rocking_chair', NULL, 124, '2020-09-22 16:41:47', '2020-09-22 16:41:47');
INSERT INTO `categories` VALUES (127, 6, 'Single Chair', 'single_chair', NULL, 124, '2020-09-22 16:41:47', '2020-09-22 16:41:47');
INSERT INTO `categories` VALUES (128, 6, 'Sofa', 'sofa', '', NULL, '2020-09-22 16:41:47', '2020-09-22 16:41:47');
INSERT INTO `categories` VALUES (129, 6, 'Double Sofa', 'double_sofa', NULL, 128, '2020-09-22 16:41:47', '2020-09-22 16:41:47');
INSERT INTO `categories` VALUES (130, 6, 'Single Sofa', 'single_sofa', NULL, 128, '2020-09-22 16:41:47', '2020-09-22 16:41:47');
INSERT INTO `categories` VALUES (131, 6, 'Sofa set', 'sofa_set', NULL, 128, '2020-09-22 16:41:47', '2020-09-22 16:41:47');
INSERT INTO `categories` VALUES (132, 6, 'Table', 'table', '', NULL, '2020-09-22 16:41:48', '2020-09-22 16:41:48');
INSERT INTO `categories` VALUES (133, 6, 'Bedside Table', 'bedside_table', NULL, 132, '2020-09-22 16:41:48', '2020-09-22 16:41:48');
INSERT INTO `categories` VALUES (134, 6, 'Coffee Table', 'coffee_table', NULL, 132, '2020-09-22 16:41:48', '2020-09-22 16:41:48');
INSERT INTO `categories` VALUES (135, 6, 'Dining Table', 'dining_table', NULL, 132, '2020-09-22 16:41:48', '2020-09-22 16:41:48');
INSERT INTO `categories` VALUES (201, 8, 'Barista', 'barista', '', NULL, '2020-09-22 16:41:53', '2020-09-22 16:41:53');
INSERT INTO `categories` VALUES (1001, 7, 'Cold & Flu', 'cold_flu', '', NULL, '2020-09-22 16:41:48', '2020-09-22 16:41:48');
INSERT INTO `categories` VALUES (1002, 7, 'First Aid', 'first_aid', '', NULL, '2020-09-22 16:41:49', '2020-09-22 16:41:49');
INSERT INTO `categories` VALUES (1003, 7, 'Pain Relief', 'pain_relief', '', NULL, '2020-09-22 16:41:49', '2020-09-22 16:41:49');
INSERT INTO `categories` VALUES (1004, 7, 'Quit Smoking', 'quit_smoking', '', NULL, '2020-09-22 16:41:49', '2020-09-22 16:41:49');
INSERT INTO `categories` VALUES (1005, 7, 'Herbal Products', 'herbal_product', '', NULL, '2020-09-22 16:41:49', '2020-09-22 16:41:49');
INSERT INTO `categories` VALUES (1006, 7, 'Supplements', 'supplement', '', NULL, '2020-09-22 16:41:49', '2020-09-22 16:41:49');
INSERT INTO `categories` VALUES (1007, 7, 'Baby Care', 'baby_care', '', NULL, '2020-09-22 16:41:49', '2020-09-22 16:41:49');
INSERT INTO `categories` VALUES (1008, 7, 'Diaper', 'diaper', NULL, 1007, '2020-09-22 16:41:50', '2020-09-22 16:41:50');
INSERT INTO `categories` VALUES (1009, 7, 'Wipes', 'wipes', NULL, 1007, '2020-09-22 16:41:50', '2020-09-22 16:41:50');
INSERT INTO `categories` VALUES (1010, 7, 'Baby Supplement', 'baby_supplement', NULL, 1007, '2020-09-22 16:41:50', '2020-09-22 16:41:50');
INSERT INTO `categories` VALUES (1011, 7, 'Baby Skin Care', 'baby_skin_Care', NULL, 1007, '2020-09-22 16:41:50', '2020-09-22 16:41:50');
INSERT INTO `categories` VALUES (2000, 8, 'Chinese', 'chinese', '', NULL, '2020-09-22 16:41:50', '2020-09-22 16:41:50');
INSERT INTO `categories` VALUES (2001, 8, 'Sea Food', 'sea-food', '', NULL, '2020-09-22 16:41:50', '2020-09-22 16:41:50');
INSERT INTO `categories` VALUES (2002, 8, 'Fast Food', 'fast-food', '', NULL, '2020-09-22 16:41:50', '2020-09-22 16:41:50');
INSERT INTO `categories` VALUES (2003, 8, 'Pizza', 'pizza', '', NULL, '2020-09-22 16:41:51', '2020-09-22 16:41:51');
INSERT INTO `categories` VALUES (2004, 8, 'Indian', 'indian', '', NULL, '2020-09-22 16:41:51', '2020-09-22 16:41:51');
INSERT INTO `categories` VALUES (2005, 8, 'Kebab', 'kebab', '', NULL, '2020-09-22 16:41:51', '2020-09-22 16:41:51');
INSERT INTO `categories` VALUES (2006, 8, 'Thai', 'thai', '', NULL, '2020-09-22 16:41:51', '2020-09-22 16:41:51');
INSERT INTO `categories` VALUES (2007, 8, 'Italian', 'italian', '', NULL, '2020-09-22 16:41:51', '2020-09-22 16:41:51');
INSERT INTO `categories` VALUES (2008, 8, 'Steak House', 'steak-house', '', NULL, '2020-09-22 16:41:52', '2020-09-22 16:41:52');
INSERT INTO `categories` VALUES (2009, 8, 'Traditional English', 'traditional-english', '', NULL, '2020-09-22 16:41:52', '2020-09-22 16:41:52');
INSERT INTO `categories` VALUES (2010, 8, 'Caribbean', 'caribbean', '', NULL, '2020-09-22 16:41:52', '2020-09-22 16:41:52');
INSERT INTO `categories` VALUES (2011, 8, 'Arabic', 'arabic', '', NULL, '2020-09-22 16:41:52', '2020-09-22 16:41:52');
INSERT INTO `categories` VALUES (2012, 8, 'Lebanese', 'lebanese', '', NULL, '2020-09-22 16:41:52', '2020-09-22 16:41:52');
INSERT INTO `categories` VALUES (2013, 8, 'Vegetarian', 'vegetarian', '', NULL, '2020-09-22 16:41:53', '2020-09-22 16:41:53');
INSERT INTO `categories` VALUES (2014, 8, 'Vegan', 'vegan', '', NULL, '2020-09-22 16:41:53', '2020-09-22 16:41:53');

-- ----------------------------
-- Table structure for cc_transactions
-- ----------------------------
DROP TABLE IF EXISTS `cc_transactions`;
CREATE TABLE `cc_transactions`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `coupon_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `order_id` int(0) NOT NULL,
  `delivery_time` varchar(0) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `processor` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `processor_trans_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `delivery_address` int(0) NOT NULL,
  `delivery_contact` int(0) NULL DEFAULT NULL,
  `amount` decimal(10, 0) NOT NULL,
  `fee` decimal(10, 0) NOT NULL,
  `discount` decimal(10, 0) NULL DEFAULT NULL,
  `sub_amount` decimal(10, 0) NULL DEFAULT NULL,
  `cc_num` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `cc_type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `response` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `status` tinyint(0) NOT NULL,
  `inserted_at` timestamp(0) NOT NULL,
  `updated_at` timestamp(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cc_transactions
-- ----------------------------
INSERT INTO `cc_transactions` VALUES (1, '2', 1, '', NULL, NULL, 6, 1, 19, 0, 5, 24, NULL, NULL, NULL, 0, '2020-09-29 12:02:00', '2020-09-29 12:02:00');

-- ----------------------------
-- Table structure for contact
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NOT NULL,
  `type` tinyint(0) NULL DEFAULT NULL,
  `contact_number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contact
-- ----------------------------
INSERT INTO `contact` VALUES (1, 1, NULL, '(202) 555-0191');
INSERT INTO `contact` VALUES (2, 1, NULL, '(202) 555-0701');
INSERT INTO `contact` VALUES (3, 2, NULL, '(202) 555-0191');
INSERT INTO `contact` VALUES (4, 2, NULL, '(202) 555-0701');
INSERT INTO `contact` VALUES (5, 1, NULL, '(123) 123-1231');

-- ----------------------------
-- Table structure for coupons
-- ----------------------------
DROP TABLE IF EXISTS `coupons`;
CREATE TABLE `coupons`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT 1,
  `number` decimal(10, 0) NULL DEFAULT NULL,
  `multiple` tinyint(1) NULL DEFAULT 0,
  `used_number` decimal(10, 0) NULL DEFAULT NULL,
  `discount_percent` decimal(10, 0) NULL DEFAULT NULL,
  `minimum_amount` decimal(10, 2) NULL DEFAULT NULL,
  `category_id` int(0) NULL DEFAULT NULL,
  `start_date` timestamp(0) NULL DEFAULT NULL,
  `end_date` timestamp(0) NULL DEFAULT NULL,
  `inserted_at` timestamp(0) NOT NULL,
  `updated_at` timestamp(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of coupons
-- ----------------------------
INSERT INTO `coupons` VALUES (1, 'RAMADAN15', 'Free Delivery', 'Free_Delivery', 1, 20, 0, 10, 15, NULL, NULL, '2020-09-23 08:48:14', '2020-09-23 08:48:14', '2020-09-23 08:48:14', '2020-09-23 08:48:14');
INSERT INTO `coupons` VALUES (2, 'RAMADAN20', 'Free Delivery', 'Free_Delivery', 1, 20, 0, 10, 20, NULL, NULL, '2020-09-23 08:48:14', '2020-09-23 08:48:14', '2020-09-23 08:48:14', '2020-09-23 08:48:14');
INSERT INTO `coupons` VALUES (3, 'CYBERMONDAY10', 'cyber Monday Sale', 'cyber_Monday Sale', 1, 20, 0, 10, 10, NULL, NULL, '2020-09-23 08:48:15', '2020-09-23 08:48:15', '2020-09-23 08:48:15', '2020-09-23 08:48:15');
INSERT INTO `coupons` VALUES (4, 'DISCOUNT10', 'Boxing Day Sale', 'Boxing_Day Sale', 1, 10, 0, 5, 10, NULL, NULL, '2020-09-23 08:48:15', '2020-09-23 08:48:15', '2020-09-23 08:48:15', '2020-09-23 08:48:15');
INSERT INTO `coupons` VALUES (5, 'SUMMER10', 'Summer Discount', 'Summer_Discount', 1, 10, 0, 5, 10, NULL, NULL, '2020-09-23 08:48:15', '2020-09-23 08:48:15', '2020-09-23 08:48:15', '2020-09-23 08:48:15');
INSERT INTO `coupons` VALUES (6, 'WINTER10', 'Winter Discount', 'Winter_Discount', 1, 10, 0, 15, 10, NULL, NULL, '2020-09-23 08:48:15', '2020-09-23 08:48:15', '2020-09-23 08:48:15', '2020-09-23 08:48:15');
INSERT INTO `coupons` VALUES (7, '1AUTUMN10', 'Autumn Discount', 'Autumn_Discount', 1, 10, 0, 15, 10, NULL, NULL, '2020-09-23 08:48:15', '2020-09-23 08:48:15', '2020-09-23 08:48:15', '2020-09-23 08:48:15');
INSERT INTO `coupons` VALUES (8, 'WINTER10', 'Winter Discount', 'Winter_Discount', 1, 10, 0, 15, 10, NULL, NULL, '2020-09-23 08:48:15', '2020-09-23 08:48:15', '2020-09-23 08:48:15', '2020-09-23 08:48:15');
INSERT INTO `coupons` VALUES (9, 'WINTER15', 'Winter Sale', 'Winter_Sale', 1, 10, 0, 15, 15, NULL, NULL, '2020-09-23 08:48:15', '2020-09-23 08:48:15', '2020-09-23 08:48:15', '2020-09-23 08:48:15');
INSERT INTO `coupons` VALUES (10, 'HALLOWEEN20', 'Halloween Sale', 'Halloween_Sale', 1, 10, 0, 15, 20, NULL, NULL, '2020-09-23 08:48:16', '2020-09-23 08:48:16', '2020-09-23 08:48:16', '2020-09-23 08:48:16');

-- ----------------------------
-- Table structure for meta
-- ----------------------------
DROP TABLE IF EXISTS `meta`;
CREATE TABLE `meta`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `product_id` int(0) NOT NULL,
  `publisher` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isbn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `edition` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `country` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `languages` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `numberOfReader` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `numberOfPage` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `samplePDF` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of meta
-- ----------------------------
INSERT INTO `meta` VALUES (1, 670, 'Princeton Public Library', '978-8-8929-3288-3', 'New Edition, 2013', 'USA', 'english', '30000', '260', '');
INSERT INTO `meta` VALUES (2, 671, 'Bryna & Louis', '978-8-1899-2536-9', 'New Edition, 2013', 'USA', 'english', '50000', '520', '');
INSERT INTO `meta` VALUES (3, 672, 'Roald Dahl', '978-3-2153-9289-4', '6th Edition, 2015', 'France', 'english', '60000', '730', '');
INSERT INTO `meta` VALUES (4, 673, 'MUsic School', '978-0-9393-4776-6', '2nd Edition, 2019', 'Germany', 'english', '40000', '650', '');
INSERT INTO `meta` VALUES (5, 674, 'IBBY', '978-8-0437-1998-1', '2nd Edition, 2014', 'Canada', 'english', '40000', '650', '');
INSERT INTO `meta` VALUES (6, 675, 'Roald Dahl', '978-3-2519-3870-4', '6th Edition, 2015', 'France', 'english', '60000', '730', '');
INSERT INTO `meta` VALUES (7, 676, 'Usborne Publication', '978-9-7826-5468-7', '7th Edition, 2018', 'France', 'english', '80000', '920', '');
INSERT INTO `meta` VALUES (8, 677, 'The Art Yiddish Literature', '978-8-3532-4196-7', '7th Edition, 2019', 'Germany', 'english', '80000', '920', '');
INSERT INTO `meta` VALUES (9, 678, 'The USborne', '978-8-3532-4196-7', '7th Edition, 2019', 'USA', 'english', '80000', '920', '');
INSERT INTO `meta` VALUES (10, 679, 'Felix', '978-8-3532-4196-7', '7th Edition, 2019', 'England', 'english', '80000', '920', '');
INSERT INTO `meta` VALUES (11, 680, 'Marvel', '978-8-3532-4196-7', '5th Edition, 2017', 'England', 'english', '75000', '980', '');
INSERT INTO `meta` VALUES (12, 681, 'ABC Publication', '978-8-6589-4196-7', '5th Edition, 2017', 'Russia', 'english', '79000', '970', '');
INSERT INTO `meta` VALUES (13, 682, 'ABC Publication', '978-8-6589-6985-7', '5th Edition, 2017', 'England', 'english', '85000', '920', '');
INSERT INTO `meta` VALUES (14, 683, 'Planet Comic Publication', '879-8-6589-6985-7', '5th Edition, 2017', 'England', 'english', '85000', '920', '');
INSERT INTO `meta` VALUES (15, 684, 'Bloomsbury Comics Studio', '879-8-8896-6985-7', '2nd Edition, 2014', 'England', 'english', '85000', '920', '');
INSERT INTO `meta` VALUES (16, 685, 'Bloomsbury Comics Studio', '879-8-8896-6985-8', '2nd Edition, 1969', 'England', 'english', '85000', '920', '');
INSERT INTO `meta` VALUES (17, 686, 'DC Comics Studio', '960-8-8896-6985-8', '3rd Edition, 2001', 'England', 'english', '95000', '995', '');
INSERT INTO `meta` VALUES (18, 687, 'DC Comics Studio', '960-8-8896-7012-8', '3rd Edition, 2009', 'England', 'english', '95000', '995', '');
INSERT INTO `meta` VALUES (19, 688, 'Nissar Novels', '960-8-3256-7012-8', '3rd Edition, 2009', 'England', 'english', '95000', '995', '');
INSERT INTO `meta` VALUES (20, 689, 'Nissar Novels', '555-8-3256-7012-8', '3rd Edition, 2009', 'England', 'english', '95000', '995', '');
INSERT INTO `meta` VALUES (21, 690, 'Nissar Novels', '555-8-3698-7012-8', '3rd Edition, 2009', 'England', 'english', '95000', '995', '');
INSERT INTO `meta` VALUES (22, 691, 'Nissar Novels', '555-8-3698-7012-3', '3rd Edition, 2009', 'England', 'english', '95000', '995', '');
INSERT INTO `meta` VALUES (23, 692, 'Nissar Novels', '555-8-3698-8102-3', '3rd Edition, 2009', 'England', 'english', '95000', '995', '');
INSERT INTO `meta` VALUES (24, 693, 'Withcland Novels', '555-8-8869-8102-3', '3rd Edition, 2009', 'England', 'english', '95000', '995', '');
INSERT INTO `meta` VALUES (25, 694, 'Crown Novel', '585-8-8869-8102-3', '3rd Edition, 2009', 'China', 'english', '95000', '995', '');
INSERT INTO `meta` VALUES (26, 695, 'Crown Novel', '585-8-8869-1234-3', '3rd Edition, 2009', 'USA', 'english', '95000', '995', '');
INSERT INTO `meta` VALUES (27, 696, 'Crown Novel', '585-8-8869-1234-3', '3rd Edition, 2009', 'USA', 'english', '95000', '995', '');
INSERT INTO `meta` VALUES (28, 697, 'Crown Novel', '585-8-8869-1234-3', '3rd Edition, 2009', 'Russia', 'english', '95000', '995', '');
INSERT INTO `meta` VALUES (29, 698, 'Crown Novel', '585-8-8869-3215-3', '3rd Edition, 2009', 'France', 'english', '95000', '995', '');
INSERT INTO `meta` VALUES (30, 699, 'Crown Novel', '585-8-8869-1234-3', '3rd Edition, 2009', 'Ukrain', 'english', '95000', '995', '');
INSERT INTO `meta` VALUES (31, 700, 'Crown Novel', '585-8-8869-1234-3', '3rd Edition, 2009', 'Russia', 'english', '95000', '995', '');
INSERT INTO `meta` VALUES (32, 701, 'Crown Novel', '585-8-8869-1234-3', '3rd Edition, 2009', 'Russia', 'english', '95000', '995', '');
INSERT INTO `meta` VALUES (33, 702, 'Crown Novel', '585-8-8992-1234-3', '3rd Edition, 2009', 'Russia', 'english', '95000', '995', '');
INSERT INTO `meta` VALUES (34, 703, 'Sonny Novel', '585-8-8992-1234-3', '3rd Edition, 2009', 'USA', 'english', '95000', '995', '');
INSERT INTO `meta` VALUES (35, 704, 'Crown Novel', '585-8-8992-1234-3', '3rd Edition, 2009', 'England', 'english', '95000', '995', '');
INSERT INTO `meta` VALUES (36, 705, 'Crown Novel', '585-8-8992-1234-3', '3rd Edition, 2009', 'England', 'english', '95000', '995', '');
INSERT INTO `meta` VALUES (37, 706, 'Crown Novel', '585-8-8992-1234-3', '3rd Edition, 2009', 'Russia', 'english', '95000', '995', '');
INSERT INTO `meta` VALUES (38, 707, 'Crown Novel', '585-8-8992-1234-3', '3rd Edition, 2009', 'Russia', 'english', '95000', '995', '');
INSERT INTO `meta` VALUES (39, 708, 'Santa Novel', '585-8-8992-1234-3', '3rd Edition, 2009', 'Canada', 'english', '95000', '995', '');
INSERT INTO `meta` VALUES (40, 709, 'Di Adam Fawley', '585-8-8992-1234-3', '3rd Edition, 2009', 'England', 'english', '95000', '995', '');
INSERT INTO `meta` VALUES (41, 710, 'Penguin Novel', '585-8-8992-1234-3', '3rd Edition, 2009', 'USA', 'english', '95000', '995', '');
INSERT INTO `meta` VALUES (42, 711, 'Penguin Novel', '585-8-8992-1234-3', '3rd Edition, 2009', 'USA', 'english', '95000', '995', '');
INSERT INTO `meta` VALUES (43, 712, 'Penguin Novel', '585-8-8992-1234-3', '3rd Edition, 2009', 'USA', 'english', '95000', '995', '');
INSERT INTO `meta` VALUES (44, 713, 'Avon Books', '585-8-8992-1234-3', '3rd Edition, 2009', 'USA', 'english', '95000', '995', '');
INSERT INTO `meta` VALUES (45, 714, 'Penguin Novel', '585-8-8992-1234-3', '3rd Edition, 2009', 'USA', 'english', '95000', '995', '');
INSERT INTO `meta` VALUES (46, 715, 'Penguin Novel', '585-8-8992-1234-3', '3rd Edition, 2009', 'USA', 'english', '95000', '995', '');
INSERT INTO `meta` VALUES (47, 716, 'Penguin Novel', '585-8-8992-1234-3', '3rd Edition, 2009', 'USA', 'english', '95000', '995', '');
INSERT INTO `meta` VALUES (48, 717, 'Grace and Reed', '585-8-8992-1234-3', '3rd Edition, 2009', 'USA', 'english', '95000', '995', '');
INSERT INTO `meta` VALUES (49, 718, 'Penguin Novel', '585-8-8992-1234-3', '3rd Edition, 2009', 'USA', 'english', '95000', '995', '');
INSERT INTO `meta` VALUES (50, 719, 'Penguin Novel', '585-8-8992-1234-3', '3rd Edition, 2009', 'USA', 'english', '95000', '995', '');
INSERT INTO `meta` VALUES (51, 720, 'Penguin Novel', '585-8-8992-1234-3', '3rd Edition, 2009', 'USA', 'english', '95000', '995', '');
INSERT INTO `meta` VALUES (52, 721, 'Penguin Novel', '585-8-8992-1234-3', '3rd Edition, 2009', 'USA', 'english', '95000', '995', '');
INSERT INTO `meta` VALUES (53, 722, 'Penguin Novel', '585-8-8992-1234-3', '3rd Edition, 2009', 'USA', 'english', '95000', '995', '');
INSERT INTO `meta` VALUES (54, 723, 'Penguin Novel', '585-8-8992-1234-3', '3rd Edition, 2009', 'USA', 'english', '95000', '995', '');
INSERT INTO `meta` VALUES (55, 724, 'Penguin Novel', '585-8-8992-1234-3', '3rd Edition, 2009', 'USA', 'english', '95000', '995', '');
INSERT INTO `meta` VALUES (56, 726, 'Penguin Novel', '585-8-8992-1234-3', '3rd Edition, 2009', 'USA', 'english', '95000', '995', '');
INSERT INTO `meta` VALUES (57, 730, 'Karin Muller', '585-8-8992-1234-3', '3rd Edition, 2009', 'USA', 'english', '95000', '995', '');
INSERT INTO `meta` VALUES (58, 731, 'Penguin Novel', '585-8-8992-1234-3', '3rd Edition, 2009', 'USA', 'english', '95000', '995', '');
INSERT INTO `meta` VALUES (59, 732, 'Penguin Novel', '585-8-8992-1234-3', '3rd Edition, 2009', 'USA', 'english', '95000', '995', '');
INSERT INTO `meta` VALUES (60, 733, 'Penguin Novel', '585-8-8992-1234-3', '3rd Edition, 2009', 'USA', 'english', '95000', '995', '');
INSERT INTO `meta` VALUES (61, 734, 'Penguin Novel', '585-8-8992-1234-3', '3rd Edition, 2009', 'USA', 'english', '95000', '995', '');
INSERT INTO `meta` VALUES (62, 735, 'Penguin Novel', '585-8-8992-1234-3', '3rd Edition, 2009', 'USA', 'english', '95000', '995', '');

-- ----------------------------
-- Table structure for order_products
-- ----------------------------
DROP TABLE IF EXISTS `order_products`;
CREATE TABLE `order_products`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(0) NULL DEFAULT NULL,
  `order_id` int(0) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `image` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `price` double(10, 0) NOT NULL,
  `quantity` int(0) NOT NULL,
  `unit` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tag_id` int(0) NULL DEFAULT NULL,
  `inserted_at` timestamp(0) NOT NULL,
  `updated_at` timestamp(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_products
-- ----------------------------
INSERT INTO `order_products` VALUES (1, 679, 1, 'Felix The Cat', 'http://localhost:4000/shop_productimage?gallery=Felix The Cat&filename=Felix The Cat_thumb.png', 20, 1, ' 10 pc(s)', 5, '2020-09-29 12:01:59', '2020-09-29 12:01:59');
INSERT INTO `order_products` VALUES (2, 5, 1, 'Pears', 'http://localhost:4000/shop_productimage?gallery=Pears&filename=Pears_thumb.png', 2, 1, '1 lb', 1, '2020-09-29 12:01:59', '2020-09-29 12:01:59');
INSERT INTO `order_products` VALUES (3, 4, 1, 'Apples', 'http://localhost:4000/shop_productimage?gallery=Apples&filename=Apples_thumb.png', 2, 1, '2 lb', 1, '2020-09-29 12:01:59', '2020-09-29 12:01:59');

-- ----------------------------
-- Table structure for payment_mothod
-- ----------------------------
DROP TABLE IF EXISTS `payment_mothod`;
CREATE TABLE `payment_mothod`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of payment_mothod
-- ----------------------------
INSERT INTO `payment_mothod` VALUES (1, 'Cash on delivery');
INSERT INTO `payment_mothod` VALUES (2, 'payoneer');
INSERT INTO `payment_mothod` VALUES (3, 'visa');
INSERT INTO `payment_mothod` VALUES (4, 'escrow');

-- ----------------------------
-- Table structure for product_categories
-- ----------------------------
DROP TABLE IF EXISTS `product_categories`;
CREATE TABLE `product_categories`  (
  `category_id` int(0) NOT NULL,
  `product_id` int(0) NOT NULL,
  `inserted_at` timestamp(0) NOT NULL,
  `updated_at` timestamp(0) NOT NULL,
  PRIMARY KEY (`category_id`, `product_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_categories
-- ----------------------------
INSERT INTO `product_categories` VALUES (1, 1, '2020-09-28 13:47:14', '2020-09-28 13:47:14');
INSERT INTO `product_categories` VALUES (1, 2, '2020-09-28 13:47:18', '2020-09-28 13:47:18');
INSERT INTO `product_categories` VALUES (1, 3, '2020-09-28 13:47:22', '2020-09-28 13:47:22');
INSERT INTO `product_categories` VALUES (1, 4, '2020-09-28 13:47:25', '2020-09-28 13:47:25');
INSERT INTO `product_categories` VALUES (1, 5, '2020-09-28 13:47:29', '2020-09-28 13:47:29');
INSERT INTO `product_categories` VALUES (1, 6, '2020-09-28 13:47:37', '2020-09-28 13:47:37');
INSERT INTO `product_categories` VALUES (1, 7, '2020-09-28 13:47:40', '2020-09-28 13:47:40');
INSERT INTO `product_categories` VALUES (1, 8, '2020-09-28 13:46:13', '2020-09-28 13:46:13');
INSERT INTO `product_categories` VALUES (1, 9, '2020-09-28 13:46:21', '2020-09-28 13:46:21');
INSERT INTO `product_categories` VALUES (1, 10, '2020-09-28 13:46:25', '2020-09-28 13:46:25');
INSERT INTO `product_categories` VALUES (1, 11, '2020-09-28 13:46:30', '2020-09-28 13:46:30');
INSERT INTO `product_categories` VALUES (1, 12, '2020-09-28 13:46:34', '2020-09-28 13:46:34');
INSERT INTO `product_categories` VALUES (1, 13, '2020-09-28 13:46:38', '2020-09-28 13:46:38');
INSERT INTO `product_categories` VALUES (1, 14, '2020-09-28 13:46:42', '2020-09-28 13:46:42');
INSERT INTO `product_categories` VALUES (1, 15, '2020-09-28 13:46:48', '2020-09-28 13:46:48');
INSERT INTO `product_categories` VALUES (1, 16, '2020-09-28 13:46:52', '2020-09-28 13:46:52');
INSERT INTO `product_categories` VALUES (1, 17, '2020-09-28 13:46:57', '2020-09-28 13:46:57');
INSERT INTO `product_categories` VALUES (1, 18, '2020-09-28 13:47:02', '2020-09-28 13:47:02');
INSERT INTO `product_categories` VALUES (1, 19, '2020-09-28 13:47:07', '2020-09-28 13:47:07');
INSERT INTO `product_categories` VALUES (1, 20, '2020-09-28 13:47:11', '2020-09-28 13:47:11');
INSERT INTO `product_categories` VALUES (1, 3372, '2020-09-29 16:08:10', '2020-09-29 16:08:10');
INSERT INTO `product_categories` VALUES (2, 1, '2020-09-28 13:47:15', '2020-09-28 13:47:15');
INSERT INTO `product_categories` VALUES (2, 2, '2020-09-28 13:47:18', '2020-09-28 13:47:18');
INSERT INTO `product_categories` VALUES (2, 3, '2020-09-28 13:47:22', '2020-09-28 13:47:22');
INSERT INTO `product_categories` VALUES (2, 4, '2020-09-28 13:47:25', '2020-09-28 13:47:25');
INSERT INTO `product_categories` VALUES (2, 5, '2020-09-28 13:47:29', '2020-09-28 13:47:29');
INSERT INTO `product_categories` VALUES (2, 6, '2020-09-28 13:47:37', '2020-09-28 13:47:37');
INSERT INTO `product_categories` VALUES (2, 7, '2020-09-28 13:47:40', '2020-09-28 13:47:40');
INSERT INTO `product_categories` VALUES (2, 10, '2020-09-28 13:46:25', '2020-09-28 13:46:25');
INSERT INTO `product_categories` VALUES (3, 8, '2020-09-28 13:46:13', '2020-09-28 13:46:13');
INSERT INTO `product_categories` VALUES (3, 9, '2020-09-28 13:46:21', '2020-09-28 13:46:21');
INSERT INTO `product_categories` VALUES (3, 11, '2020-09-28 13:46:31', '2020-09-28 13:46:31');
INSERT INTO `product_categories` VALUES (3, 12, '2020-09-28 13:46:34', '2020-09-28 13:46:34');
INSERT INTO `product_categories` VALUES (3, 13, '2020-09-28 13:46:38', '2020-09-28 13:46:38');
INSERT INTO `product_categories` VALUES (3, 14, '2020-09-28 13:46:42', '2020-09-28 13:46:42');
INSERT INTO `product_categories` VALUES (3, 15, '2020-09-28 13:46:49', '2020-09-28 13:46:49');
INSERT INTO `product_categories` VALUES (3, 16, '2020-09-28 13:46:52', '2020-09-28 13:46:52');
INSERT INTO `product_categories` VALUES (3, 17, '2020-09-28 13:46:58', '2020-09-28 13:46:58');
INSERT INTO `product_categories` VALUES (3, 18, '2020-09-28 13:47:02', '2020-09-28 13:47:02');
INSERT INTO `product_categories` VALUES (3, 19, '2020-09-28 13:47:08', '2020-09-28 13:47:08');
INSERT INTO `product_categories` VALUES (3, 20, '2020-09-28 13:47:11', '2020-09-28 13:47:11');
INSERT INTO `product_categories` VALUES (9, 21, '2020-09-28 13:47:45', '2020-09-28 13:47:45');
INSERT INTO `product_categories` VALUES (9, 22, '2020-09-28 13:47:49', '2020-09-28 13:47:49');
INSERT INTO `product_categories` VALUES (9, 23, '2020-09-28 13:47:52', '2020-09-28 13:47:52');
INSERT INTO `product_categories` VALUES (9, 24, '2020-09-28 13:47:58', '2020-09-28 13:47:58');
INSERT INTO `product_categories` VALUES (9, 25, '2020-09-28 13:48:02', '2020-09-28 13:48:02');
INSERT INTO `product_categories` VALUES (9, 26, '2020-09-28 13:48:06', '2020-09-28 13:48:06');
INSERT INTO `product_categories` VALUES (9, 27, '2020-09-28 13:48:11', '2020-09-28 13:48:11');
INSERT INTO `product_categories` VALUES (9, 28, '2020-09-28 13:48:18', '2020-09-28 13:48:18');
INSERT INTO `product_categories` VALUES (9, 29, '2020-09-28 13:48:22', '2020-09-28 13:48:22');
INSERT INTO `product_categories` VALUES (9, 30, '2020-09-28 13:48:26', '2020-09-28 13:48:26');
INSERT INTO `product_categories` VALUES (12, 21, '2020-09-28 13:47:46', '2020-09-28 13:47:46');
INSERT INTO `product_categories` VALUES (12, 22, '2020-09-28 13:47:49', '2020-09-28 13:47:49');
INSERT INTO `product_categories` VALUES (12, 23, '2020-09-28 13:47:52', '2020-09-28 13:47:52');
INSERT INTO `product_categories` VALUES (12, 24, '2020-09-28 13:47:58', '2020-09-28 13:47:58');
INSERT INTO `product_categories` VALUES (12, 25, '2020-09-28 13:48:03', '2020-09-28 13:48:03');
INSERT INTO `product_categories` VALUES (13, 26, '2020-09-28 13:48:06', '2020-09-28 13:48:06');
INSERT INTO `product_categories` VALUES (13, 27, '2020-09-28 13:48:11', '2020-09-28 13:48:11');
INSERT INTO `product_categories` VALUES (13, 28, '2020-09-28 13:48:19', '2020-09-28 13:48:19');
INSERT INTO `product_categories` VALUES (13, 29, '2020-09-28 13:48:23', '2020-09-28 13:48:23');
INSERT INTO `product_categories` VALUES (13, 30, '2020-09-28 13:48:26', '2020-09-28 13:48:26');
INSERT INTO `product_categories` VALUES (14, 39, '2020-09-28 13:50:07', '2020-09-28 13:50:07');
INSERT INTO `product_categories` VALUES (14, 40, '2020-09-28 13:50:25', '2020-09-28 13:50:25');
INSERT INTO `product_categories` VALUES (14, 46, '2020-09-28 13:51:55', '2020-09-28 13:51:55');
INSERT INTO `product_categories` VALUES (14, 48, '2020-09-28 13:52:24', '2020-09-28 13:52:24');
INSERT INTO `product_categories` VALUES (14, 49, '2020-09-28 13:52:40', '2020-09-28 13:52:40');
INSERT INTO `product_categories` VALUES (15, 38, '2020-09-28 13:49:55', '2020-09-28 13:49:55');
INSERT INTO `product_categories` VALUES (15, 47, '2020-09-28 13:52:12', '2020-09-28 13:52:12');
INSERT INTO `product_categories` VALUES (16, 36, '2020-09-28 13:49:12', '2020-09-28 13:49:12');
INSERT INTO `product_categories` VALUES (16, 42, '2020-09-28 13:50:59', '2020-09-28 13:50:59');
INSERT INTO `product_categories` VALUES (16, 45, '2020-09-28 13:51:42', '2020-09-28 13:51:42');
INSERT INTO `product_categories` VALUES (16, 53, '2020-09-28 13:53:46', '2020-09-28 13:53:46');
INSERT INTO `product_categories` VALUES (16, 54, '2020-09-28 13:54:05', '2020-09-28 13:54:05');
INSERT INTO `product_categories` VALUES (16, 55, '2020-09-28 13:54:25', '2020-09-28 13:54:25');
INSERT INTO `product_categories` VALUES (17, 37, '2020-09-28 13:49:27', '2020-09-28 13:49:27');
INSERT INTO `product_categories` VALUES (17, 41, '2020-09-28 13:50:40', '2020-09-28 13:50:40');
INSERT INTO `product_categories` VALUES (17, 43, '2020-09-28 13:51:13', '2020-09-28 13:51:13');
INSERT INTO `product_categories` VALUES (17, 44, '2020-09-28 13:51:29', '2020-09-28 13:51:29');
INSERT INTO `product_categories` VALUES (17, 52, '2020-09-28 13:53:27', '2020-09-28 13:53:27');
INSERT INTO `product_categories` VALUES (18, 35, '2020-09-28 13:48:51', '2020-09-28 13:48:51');
INSERT INTO `product_categories` VALUES (18, 50, '2020-09-28 13:52:57', '2020-09-28 13:52:57');
INSERT INTO `product_categories` VALUES (18, 51, '2020-09-28 13:53:12', '2020-09-28 13:53:12');
INSERT INTO `product_categories` VALUES (19, 57, '2020-09-28 13:55:05', '2020-09-28 13:55:05');
INSERT INTO `product_categories` VALUES (19, 58, '2020-09-28 13:55:23', '2020-09-28 13:55:23');
INSERT INTO `product_categories` VALUES (19, 59, '2020-09-28 13:55:34', '2020-09-28 13:55:34');
INSERT INTO `product_categories` VALUES (19, 60, '2020-09-28 13:55:51', '2020-09-28 13:55:51');
INSERT INTO `product_categories` VALUES (20, 57, '2020-09-28 13:55:05', '2020-09-28 13:55:05');
INSERT INTO `product_categories` VALUES (21, 59, '2020-09-28 13:55:35', '2020-09-28 13:55:35');
INSERT INTO `product_categories` VALUES (22, 58, '2020-09-28 13:55:23', '2020-09-28 13:55:23');
INSERT INTO `product_categories` VALUES (22, 60, '2020-09-28 13:55:52', '2020-09-28 13:55:52');
INSERT INTO `product_categories` VALUES (23, 65, '2020-09-28 13:57:19', '2020-09-28 13:57:19');
INSERT INTO `product_categories` VALUES (23, 66, '2020-09-28 13:57:37', '2020-09-28 13:57:37');
INSERT INTO `product_categories` VALUES (23, 67, '2020-09-28 13:57:56', '2020-09-28 13:57:56');
INSERT INTO `product_categories` VALUES (23, 68, '2020-09-28 13:58:14', '2020-09-28 13:58:14');
INSERT INTO `product_categories` VALUES (23, 69, '2020-09-28 13:58:34', '2020-09-28 13:58:34');
INSERT INTO `product_categories` VALUES (23, 70, '2020-09-28 13:58:49', '2020-09-28 13:58:49');
INSERT INTO `product_categories` VALUES (23, 71, '2020-09-28 13:59:03', '2020-09-28 13:59:03');
INSERT INTO `product_categories` VALUES (23, 72, '2020-09-28 13:59:19', '2020-09-28 13:59:19');
INSERT INTO `product_categories` VALUES (23, 73, '2020-09-28 13:59:32', '2020-09-28 13:59:32');
INSERT INTO `product_categories` VALUES (23, 74, '2020-09-28 13:59:48', '2020-09-28 13:59:48');
INSERT INTO `product_categories` VALUES (23, 75, '2020-09-28 14:00:02', '2020-09-28 14:00:02');
INSERT INTO `product_categories` VALUES (23, 482, '2020-09-28 16:55:24', '2020-09-28 16:55:24');
INSERT INTO `product_categories` VALUES (23, 483, '2020-09-28 16:55:40', '2020-09-28 16:55:40');
INSERT INTO `product_categories` VALUES (23, 484, '2020-09-28 16:55:55', '2020-09-28 16:55:55');
INSERT INTO `product_categories` VALUES (23, 485, '2020-09-28 16:56:17', '2020-09-28 16:56:17');
INSERT INTO `product_categories` VALUES (23, 486, '2020-09-28 16:56:43', '2020-09-28 16:56:43');
INSERT INTO `product_categories` VALUES (23, 488, '2020-09-28 16:57:16', '2020-09-28 16:57:16');
INSERT INTO `product_categories` VALUES (23, 489, '2020-09-28 16:57:33', '2020-09-28 16:57:33');
INSERT INTO `product_categories` VALUES (23, 490, '2020-09-28 16:57:50', '2020-09-28 16:57:50');
INSERT INTO `product_categories` VALUES (23, 491, '2020-09-28 16:58:10', '2020-09-28 16:58:10');
INSERT INTO `product_categories` VALUES (23, 492, '2020-09-28 16:58:34', '2020-09-28 16:58:34');
INSERT INTO `product_categories` VALUES (23, 493, '2020-09-28 16:58:52', '2020-09-28 16:58:52');
INSERT INTO `product_categories` VALUES (23, 494, '2020-09-28 16:59:12', '2020-09-28 16:59:12');
INSERT INTO `product_categories` VALUES (23, 495, '2020-09-28 16:59:42', '2020-09-28 16:59:42');
INSERT INTO `product_categories` VALUES (23, 496, '2020-09-28 17:00:02', '2020-09-28 17:00:02');
INSERT INTO `product_categories` VALUES (23, 497, '2020-09-28 17:00:32', '2020-09-28 17:00:32');
INSERT INTO `product_categories` VALUES (23, 498, '2020-09-28 17:00:55', '2020-09-28 17:00:55');
INSERT INTO `product_categories` VALUES (23, 499, '2020-09-28 17:01:16', '2020-09-28 17:01:16');
INSERT INTO `product_categories` VALUES (23, 500, '2020-09-28 17:01:39', '2020-09-28 17:01:39');
INSERT INTO `product_categories` VALUES (23, 501, '2020-09-28 17:02:14', '2020-09-28 17:02:14');
INSERT INTO `product_categories` VALUES (23, 502, '2020-09-28 17:02:31', '2020-09-28 17:02:31');
INSERT INTO `product_categories` VALUES (23, 503, '2020-09-28 17:02:54', '2020-09-28 17:02:54');
INSERT INTO `product_categories` VALUES (23, 504, '2020-09-28 17:03:39', '2020-09-28 17:03:39');
INSERT INTO `product_categories` VALUES (23, 505, '2020-09-28 17:04:14', '2020-09-28 17:04:14');
INSERT INTO `product_categories` VALUES (23, 506, '2020-09-28 17:04:36', '2020-09-28 17:04:36');
INSERT INTO `product_categories` VALUES (24, 71, '2020-09-28 13:59:03', '2020-09-28 13:59:03');
INSERT INTO `product_categories` VALUES (24, 72, '2020-09-28 13:59:20', '2020-09-28 13:59:20');
INSERT INTO `product_categories` VALUES (25, 73, '2020-09-28 13:59:32', '2020-09-28 13:59:32');
INSERT INTO `product_categories` VALUES (25, 74, '2020-09-28 13:59:48', '2020-09-28 13:59:48');
INSERT INTO `product_categories` VALUES (25, 75, '2020-09-28 14:00:02', '2020-09-28 14:00:02');
INSERT INTO `product_categories` VALUES (25, 488, '2020-09-28 16:57:17', '2020-09-28 16:57:17');
INSERT INTO `product_categories` VALUES (25, 489, '2020-09-28 16:57:33', '2020-09-28 16:57:33');
INSERT INTO `product_categories` VALUES (25, 490, '2020-09-28 16:57:51', '2020-09-28 16:57:51');
INSERT INTO `product_categories` VALUES (25, 491, '2020-09-28 16:58:10', '2020-09-28 16:58:10');
INSERT INTO `product_categories` VALUES (25, 492, '2020-09-28 16:58:34', '2020-09-28 16:58:34');
INSERT INTO `product_categories` VALUES (25, 493, '2020-09-28 16:58:52', '2020-09-28 16:58:52');
INSERT INTO `product_categories` VALUES (25, 494, '2020-09-28 16:59:12', '2020-09-28 16:59:12');
INSERT INTO `product_categories` VALUES (25, 495, '2020-09-28 16:59:43', '2020-09-28 16:59:43');
INSERT INTO `product_categories` VALUES (25, 496, '2020-09-28 17:00:02', '2020-09-28 17:00:02');
INSERT INTO `product_categories` VALUES (25, 497, '2020-09-28 17:00:32', '2020-09-28 17:00:32');
INSERT INTO `product_categories` VALUES (26, 65, '2020-09-28 13:57:19', '2020-09-28 13:57:19');
INSERT INTO `product_categories` VALUES (26, 66, '2020-09-28 13:57:37', '2020-09-28 13:57:37');
INSERT INTO `product_categories` VALUES (26, 67, '2020-09-28 13:57:56', '2020-09-28 13:57:56');
INSERT INTO `product_categories` VALUES (26, 482, '2020-09-28 16:55:24', '2020-09-28 16:55:24');
INSERT INTO `product_categories` VALUES (26, 483, '2020-09-28 16:55:40', '2020-09-28 16:55:40');
INSERT INTO `product_categories` VALUES (26, 484, '2020-09-28 16:55:55', '2020-09-28 16:55:55');
INSERT INTO `product_categories` VALUES (26, 485, '2020-09-28 16:56:17', '2020-09-28 16:56:17');
INSERT INTO `product_categories` VALUES (26, 486, '2020-09-28 16:56:43', '2020-09-28 16:56:43');
INSERT INTO `product_categories` VALUES (27, 68, '2020-09-28 13:58:14', '2020-09-28 13:58:14');
INSERT INTO `product_categories` VALUES (27, 69, '2020-09-28 13:58:34', '2020-09-28 13:58:34');
INSERT INTO `product_categories` VALUES (27, 70, '2020-09-28 13:58:49', '2020-09-28 13:58:49');
INSERT INTO `product_categories` VALUES (27, 498, '2020-09-28 17:00:55', '2020-09-28 17:00:55');
INSERT INTO `product_categories` VALUES (27, 499, '2020-09-28 17:01:16', '2020-09-28 17:01:16');
INSERT INTO `product_categories` VALUES (27, 500, '2020-09-28 17:01:39', '2020-09-28 17:01:39');
INSERT INTO `product_categories` VALUES (27, 501, '2020-09-28 17:02:15', '2020-09-28 17:02:15');
INSERT INTO `product_categories` VALUES (27, 502, '2020-09-28 17:02:31', '2020-09-28 17:02:31');
INSERT INTO `product_categories` VALUES (27, 503, '2020-09-28 17:02:54', '2020-09-28 17:02:54');
INSERT INTO `product_categories` VALUES (27, 504, '2020-09-28 17:03:39', '2020-09-28 17:03:39');
INSERT INTO `product_categories` VALUES (27, 505, '2020-09-28 17:04:14', '2020-09-28 17:04:14');
INSERT INTO `product_categories` VALUES (27, 506, '2020-09-28 17:04:37', '2020-09-28 17:04:37');
INSERT INTO `product_categories` VALUES (28, 78, '2020-09-28 14:01:02', '2020-09-28 14:01:02');
INSERT INTO `product_categories` VALUES (28, 79, '2020-09-28 14:01:24', '2020-09-28 14:01:24');
INSERT INTO `product_categories` VALUES (28, 80, '2020-09-28 14:01:38', '2020-09-28 14:01:38');
INSERT INTO `product_categories` VALUES (28, 81, '2020-09-28 14:01:57', '2020-09-28 14:01:57');
INSERT INTO `product_categories` VALUES (28, 82, '2020-09-28 14:02:19', '2020-09-28 14:02:19');
INSERT INTO `product_categories` VALUES (28, 476, '2020-09-28 16:52:23', '2020-09-28 16:52:23');
INSERT INTO `product_categories` VALUES (28, 477, '2020-09-28 16:52:46', '2020-09-28 16:52:46');
INSERT INTO `product_categories` VALUES (28, 478, '2020-09-28 16:53:27', '2020-09-28 16:53:27');
INSERT INTO `product_categories` VALUES (28, 479, '2020-09-28 16:54:06', '2020-09-28 16:54:06');
INSERT INTO `product_categories` VALUES (28, 480, '2020-09-28 16:54:53', '2020-09-28 16:54:53');
INSERT INTO `product_categories` VALUES (28, 481, '2020-09-28 16:55:07', '2020-09-28 16:55:07');
INSERT INTO `product_categories` VALUES (28, 508, '2020-09-28 17:05:05', '2020-09-28 17:05:05');
INSERT INTO `product_categories` VALUES (28, 509, '2020-09-28 17:05:34', '2020-09-28 17:05:34');
INSERT INTO `product_categories` VALUES (28, 510, '2020-09-28 17:05:52', '2020-09-28 17:05:52');
INSERT INTO `product_categories` VALUES (28, 511, '2020-09-28 17:06:06', '2020-09-28 17:06:06');
INSERT INTO `product_categories` VALUES (28, 512, '2020-09-28 17:06:20', '2020-09-28 17:06:20');
INSERT INTO `product_categories` VALUES (28, 513, '2020-09-28 17:06:39', '2020-09-28 17:06:39');
INSERT INTO `product_categories` VALUES (28, 514, '2020-09-28 17:06:53', '2020-09-28 17:06:53');
INSERT INTO `product_categories` VALUES (28, 515, '2020-09-28 17:07:21', '2020-09-28 17:07:21');
INSERT INTO `product_categories` VALUES (28, 516, '2020-09-28 17:07:43', '2020-09-28 17:07:43');
INSERT INTO `product_categories` VALUES (28, 517, '2020-09-28 17:08:07', '2020-09-28 17:08:07');
INSERT INTO `product_categories` VALUES (29, 81, '2020-09-28 14:01:58', '2020-09-28 14:01:58');
INSERT INTO `product_categories` VALUES (29, 82, '2020-09-28 14:02:19', '2020-09-28 14:02:19');
INSERT INTO `product_categories` VALUES (29, 508, '2020-09-28 17:05:06', '2020-09-28 17:05:06');
INSERT INTO `product_categories` VALUES (29, 509, '2020-09-28 17:05:34', '2020-09-28 17:05:34');
INSERT INTO `product_categories` VALUES (29, 510, '2020-09-28 17:05:52', '2020-09-28 17:05:52');
INSERT INTO `product_categories` VALUES (29, 511, '2020-09-28 17:06:06', '2020-09-28 17:06:06');
INSERT INTO `product_categories` VALUES (29, 512, '2020-09-28 17:06:20', '2020-09-28 17:06:20');
INSERT INTO `product_categories` VALUES (30, 78, '2020-09-28 14:01:02', '2020-09-28 14:01:02');
INSERT INTO `product_categories` VALUES (30, 476, '2020-09-28 16:52:24', '2020-09-28 16:52:24');
INSERT INTO `product_categories` VALUES (30, 477, '2020-09-28 16:52:46', '2020-09-28 16:52:46');
INSERT INTO `product_categories` VALUES (30, 478, '2020-09-28 16:53:27', '2020-09-28 16:53:27');
INSERT INTO `product_categories` VALUES (30, 479, '2020-09-28 16:54:06', '2020-09-28 16:54:06');
INSERT INTO `product_categories` VALUES (30, 480, '2020-09-28 16:54:53', '2020-09-28 16:54:53');
INSERT INTO `product_categories` VALUES (30, 481, '2020-09-28 16:55:08', '2020-09-28 16:55:08');
INSERT INTO `product_categories` VALUES (31, 79, '2020-09-28 14:01:24', '2020-09-28 14:01:24');
INSERT INTO `product_categories` VALUES (31, 80, '2020-09-28 14:01:39', '2020-09-28 14:01:39');
INSERT INTO `product_categories` VALUES (31, 513, '2020-09-28 17:06:40', '2020-09-28 17:06:40');
INSERT INTO `product_categories` VALUES (31, 514, '2020-09-28 17:06:53', '2020-09-28 17:06:53');
INSERT INTO `product_categories` VALUES (31, 515, '2020-09-28 17:07:22', '2020-09-28 17:07:22');
INSERT INTO `product_categories` VALUES (31, 516, '2020-09-28 17:07:43', '2020-09-28 17:07:43');
INSERT INTO `product_categories` VALUES (31, 517, '2020-09-28 17:08:08', '2020-09-28 17:08:08');
INSERT INTO `product_categories` VALUES (32, 56, '2020-09-28 13:54:43', '2020-09-28 13:54:43');
INSERT INTO `product_categories` VALUES (33, 61, '2020-09-28 13:56:11', '2020-09-28 13:56:11');
INSERT INTO `product_categories` VALUES (33, 62, '2020-09-28 13:56:33', '2020-09-28 13:56:33');
INSERT INTO `product_categories` VALUES (33, 63, '2020-09-28 13:56:44', '2020-09-28 13:56:44');
INSERT INTO `product_categories` VALUES (33, 64, '2020-09-28 13:57:00', '2020-09-28 13:57:00');
INSERT INTO `product_categories` VALUES (34, 76, '2020-09-28 14:00:20', '2020-09-28 14:00:20');
INSERT INTO `product_categories` VALUES (34, 77, '2020-09-28 14:00:42', '2020-09-28 14:00:42');
INSERT INTO `product_categories` VALUES (35, 83, '2020-09-28 14:02:38', '2020-09-28 14:02:38');
INSERT INTO `product_categories` VALUES (35, 84, '2020-09-28 14:02:52', '2020-09-28 14:02:52');
INSERT INTO `product_categories` VALUES (35, 85, '2020-09-28 14:03:09', '2020-09-28 14:03:09');
INSERT INTO `product_categories` VALUES (35, 86, '2020-09-28 14:03:27', '2020-09-28 14:03:27');
INSERT INTO `product_categories` VALUES (35, 90, '2020-09-28 14:04:18', '2020-09-28 14:04:18');
INSERT INTO `product_categories` VALUES (35, 94, '2020-09-28 14:05:19', '2020-09-28 14:05:19');
INSERT INTO `product_categories` VALUES (35, 100, '2020-09-28 14:06:48', '2020-09-28 14:06:48');
INSERT INTO `product_categories` VALUES (35, 533, '2020-09-28 17:13:03', '2020-09-28 17:13:03');
INSERT INTO `product_categories` VALUES (35, 534, '2020-09-28 17:13:27', '2020-09-28 17:13:27');
INSERT INTO `product_categories` VALUES (35, 535, '2020-09-28 17:13:56', '2020-09-28 17:13:56');
INSERT INTO `product_categories` VALUES (35, 536, '2020-09-28 17:14:16', '2020-09-28 17:14:16');
INSERT INTO `product_categories` VALUES (35, 537, '2020-09-28 17:14:40', '2020-09-28 17:14:40');
INSERT INTO `product_categories` VALUES (35, 538, '2020-09-28 17:15:39', '2020-09-28 17:15:39');
INSERT INTO `product_categories` VALUES (35, 539, '2020-09-28 17:16:08', '2020-09-28 17:16:08');
INSERT INTO `product_categories` VALUES (35, 540, '2020-09-28 17:16:53', '2020-09-28 17:16:53');
INSERT INTO `product_categories` VALUES (35, 541, '2020-09-28 17:17:06', '2020-09-28 17:17:06');
INSERT INTO `product_categories` VALUES (35, 542, '2020-09-28 17:17:19', '2020-09-28 17:17:19');
INSERT INTO `product_categories` VALUES (35, 543, '2020-09-28 17:17:38', '2020-09-28 17:17:38');
INSERT INTO `product_categories` VALUES (35, 544, '2020-09-28 17:17:52', '2020-09-28 17:17:52');
INSERT INTO `product_categories` VALUES (35, 545, '2020-09-28 17:18:45', '2020-09-28 17:18:45');
INSERT INTO `product_categories` VALUES (35, 546, '2020-09-28 17:18:58', '2020-09-28 17:18:58');
INSERT INTO `product_categories` VALUES (35, 547, '2020-09-28 17:19:18', '2020-09-28 17:19:18');
INSERT INTO `product_categories` VALUES (36, 83, '2020-09-28 14:02:38', '2020-09-28 14:02:38');
INSERT INTO `product_categories` VALUES (36, 84, '2020-09-28 14:02:53', '2020-09-28 14:02:53');
INSERT INTO `product_categories` VALUES (36, 85, '2020-09-28 14:03:09', '2020-09-28 14:03:09');
INSERT INTO `product_categories` VALUES (36, 86, '2020-09-28 14:03:27', '2020-09-28 14:03:27');
INSERT INTO `product_categories` VALUES (37, 90, '2020-09-28 14:04:18', '2020-09-28 14:04:18');
INSERT INTO `product_categories` VALUES (37, 94, '2020-09-28 14:05:19', '2020-09-28 14:05:19');
INSERT INTO `product_categories` VALUES (37, 541, '2020-09-28 17:17:07', '2020-09-28 17:17:07');
INSERT INTO `product_categories` VALUES (37, 542, '2020-09-28 17:17:19', '2020-09-28 17:17:19');
INSERT INTO `product_categories` VALUES (37, 543, '2020-09-28 17:17:38', '2020-09-28 17:17:38');
INSERT INTO `product_categories` VALUES (37, 544, '2020-09-28 17:17:52', '2020-09-28 17:17:52');
INSERT INTO `product_categories` VALUES (37, 545, '2020-09-28 17:18:45', '2020-09-28 17:18:45');
INSERT INTO `product_categories` VALUES (37, 546, '2020-09-28 17:18:58', '2020-09-28 17:18:58');
INSERT INTO `product_categories` VALUES (37, 547, '2020-09-28 17:19:18', '2020-09-28 17:19:18');
INSERT INTO `product_categories` VALUES (38, 100, '2020-09-28 14:06:48', '2020-09-28 14:06:48');
INSERT INTO `product_categories` VALUES (38, 533, '2020-09-28 17:13:03', '2020-09-28 17:13:03');
INSERT INTO `product_categories` VALUES (38, 534, '2020-09-28 17:13:27', '2020-09-28 17:13:27');
INSERT INTO `product_categories` VALUES (38, 535, '2020-09-28 17:13:56', '2020-09-28 17:13:56');
INSERT INTO `product_categories` VALUES (38, 536, '2020-09-28 17:14:16', '2020-09-28 17:14:16');
INSERT INTO `product_categories` VALUES (38, 537, '2020-09-28 17:14:40', '2020-09-28 17:14:40');
INSERT INTO `product_categories` VALUES (38, 538, '2020-09-28 17:15:39', '2020-09-28 17:15:39');
INSERT INTO `product_categories` VALUES (38, 539, '2020-09-28 17:16:08', '2020-09-28 17:16:08');
INSERT INTO `product_categories` VALUES (38, 540, '2020-09-28 17:16:53', '2020-09-28 17:16:53');
INSERT INTO `product_categories` VALUES (39, 88, '2020-09-28 14:03:52', '2020-09-28 14:03:52');
INSERT INTO `product_categories` VALUES (39, 89, '2020-09-28 14:04:04', '2020-09-28 14:04:04');
INSERT INTO `product_categories` VALUES (39, 91, '2020-09-28 14:04:36', '2020-09-28 14:04:36');
INSERT INTO `product_categories` VALUES (39, 92, '2020-09-28 14:04:55', '2020-09-28 14:04:55');
INSERT INTO `product_categories` VALUES (39, 102, '2020-09-28 14:07:19', '2020-09-28 14:07:19');
INSERT INTO `product_categories` VALUES (39, 468, '2020-09-28 16:48:28', '2020-09-28 16:48:28');
INSERT INTO `product_categories` VALUES (39, 469, '2020-09-28 16:48:52', '2020-09-28 16:48:52');
INSERT INTO `product_categories` VALUES (39, 470, '2020-09-28 16:49:13', '2020-09-28 16:49:13');
INSERT INTO `product_categories` VALUES (39, 471, '2020-09-28 16:49:51', '2020-09-28 16:49:51');
INSERT INTO `product_categories` VALUES (39, 472, '2020-09-28 16:50:12', '2020-09-28 16:50:12');
INSERT INTO `product_categories` VALUES (39, 473, '2020-09-28 16:50:32', '2020-09-28 16:50:32');
INSERT INTO `product_categories` VALUES (39, 474, '2020-09-28 16:50:47', '2020-09-28 16:50:47');
INSERT INTO `product_categories` VALUES (39, 475, '2020-09-28 16:51:24', '2020-09-28 16:51:24');
INSERT INTO `product_categories` VALUES (39, 520, '2020-09-28 17:08:23', '2020-09-28 17:08:23');
INSERT INTO `product_categories` VALUES (39, 521, '2020-09-28 17:08:52', '2020-09-28 17:08:52');
INSERT INTO `product_categories` VALUES (39, 522, '2020-09-28 17:09:32', '2020-09-28 17:09:32');
INSERT INTO `product_categories` VALUES (39, 523, '2020-09-28 17:09:52', '2020-09-28 17:09:52');
INSERT INTO `product_categories` VALUES (39, 524, '2020-09-28 17:10:13', '2020-09-28 17:10:13');
INSERT INTO `product_categories` VALUES (39, 525, '2020-09-28 17:10:34', '2020-09-28 17:10:34');
INSERT INTO `product_categories` VALUES (39, 526, '2020-09-28 17:10:50', '2020-09-28 17:10:50');
INSERT INTO `product_categories` VALUES (39, 527, '2020-09-28 17:11:10', '2020-09-28 17:11:10');
INSERT INTO `product_categories` VALUES (39, 528, '2020-09-28 17:11:20', '2020-09-28 17:11:20');
INSERT INTO `product_categories` VALUES (39, 529, '2020-09-28 17:11:36', '2020-09-28 17:11:36');
INSERT INTO `product_categories` VALUES (39, 530, '2020-09-28 17:11:56', '2020-09-28 17:11:56');
INSERT INTO `product_categories` VALUES (39, 531, '2020-09-28 17:12:13', '2020-09-28 17:12:13');
INSERT INTO `product_categories` VALUES (39, 532, '2020-09-28 17:12:34', '2020-09-28 17:12:34');
INSERT INTO `product_categories` VALUES (40, 88, '2020-09-28 14:03:52', '2020-09-28 14:03:52');
INSERT INTO `product_categories` VALUES (40, 89, '2020-09-28 14:04:04', '2020-09-28 14:04:04');
INSERT INTO `product_categories` VALUES (40, 468, '2020-09-28 16:48:28', '2020-09-28 16:48:28');
INSERT INTO `product_categories` VALUES (40, 469, '2020-09-28 16:48:52', '2020-09-28 16:48:52');
INSERT INTO `product_categories` VALUES (40, 470, '2020-09-28 16:49:13', '2020-09-28 16:49:13');
INSERT INTO `product_categories` VALUES (40, 471, '2020-09-28 16:49:51', '2020-09-28 16:49:51');
INSERT INTO `product_categories` VALUES (40, 472, '2020-09-28 16:50:12', '2020-09-28 16:50:12');
INSERT INTO `product_categories` VALUES (40, 473, '2020-09-28 16:50:33', '2020-09-28 16:50:33');
INSERT INTO `product_categories` VALUES (40, 474, '2020-09-28 16:50:47', '2020-09-28 16:50:47');
INSERT INTO `product_categories` VALUES (40, 475, '2020-09-28 16:51:24', '2020-09-28 16:51:24');
INSERT INTO `product_categories` VALUES (41, 91, '2020-09-28 14:04:36', '2020-09-28 14:04:36');
INSERT INTO `product_categories` VALUES (41, 92, '2020-09-28 14:04:55', '2020-09-28 14:04:55');
INSERT INTO `product_categories` VALUES (41, 520, '2020-09-28 17:08:23', '2020-09-28 17:08:23');
INSERT INTO `product_categories` VALUES (41, 521, '2020-09-28 17:08:52', '2020-09-28 17:08:52');
INSERT INTO `product_categories` VALUES (41, 522, '2020-09-28 17:09:32', '2020-09-28 17:09:32');
INSERT INTO `product_categories` VALUES (41, 523, '2020-09-28 17:09:52', '2020-09-28 17:09:52');
INSERT INTO `product_categories` VALUES (41, 524, '2020-09-28 17:10:14', '2020-09-28 17:10:14');
INSERT INTO `product_categories` VALUES (41, 525, '2020-09-28 17:10:34', '2020-09-28 17:10:34');
INSERT INTO `product_categories` VALUES (42, 102, '2020-09-28 14:07:19', '2020-09-28 14:07:19');
INSERT INTO `product_categories` VALUES (42, 526, '2020-09-28 17:10:50', '2020-09-28 17:10:50');
INSERT INTO `product_categories` VALUES (42, 527, '2020-09-28 17:11:10', '2020-09-28 17:11:10');
INSERT INTO `product_categories` VALUES (42, 528, '2020-09-28 17:11:21', '2020-09-28 17:11:21');
INSERT INTO `product_categories` VALUES (42, 529, '2020-09-28 17:11:37', '2020-09-28 17:11:37');
INSERT INTO `product_categories` VALUES (42, 530, '2020-09-28 17:11:56', '2020-09-28 17:11:56');
INSERT INTO `product_categories` VALUES (42, 531, '2020-09-28 17:12:14', '2020-09-28 17:12:14');
INSERT INTO `product_categories` VALUES (42, 532, '2020-09-28 17:12:34', '2020-09-28 17:12:34');
INSERT INTO `product_categories` VALUES (43, 95, '2020-09-28 14:05:32', '2020-09-28 14:05:32');
INSERT INTO `product_categories` VALUES (43, 96, '2020-09-28 14:05:50', '2020-09-28 14:05:50');
INSERT INTO `product_categories` VALUES (43, 97, '2020-09-28 14:06:01', '2020-09-28 14:06:01');
INSERT INTO `product_categories` VALUES (43, 98, '2020-09-28 14:06:13', '2020-09-28 14:06:13');
INSERT INTO `product_categories` VALUES (43, 99, '2020-09-28 14:06:29', '2020-09-28 14:06:29');
INSERT INTO `product_categories` VALUES (43, 548, '2020-09-28 17:19:30', '2020-09-28 17:19:30');
INSERT INTO `product_categories` VALUES (43, 549, '2020-09-28 17:19:49', '2020-09-28 17:19:49');
INSERT INTO `product_categories` VALUES (43, 550, '2020-09-28 17:20:16', '2020-09-28 17:20:16');
INSERT INTO `product_categories` VALUES (43, 551, '2020-09-28 17:20:35', '2020-09-28 17:20:35');
INSERT INTO `product_categories` VALUES (43, 552, '2020-09-28 17:21:23', '2020-09-28 17:21:23');
INSERT INTO `product_categories` VALUES (43, 553, '2020-09-28 17:21:36', '2020-09-28 17:21:36');
INSERT INTO `product_categories` VALUES (43, 554, '2020-09-28 17:21:53', '2020-09-28 17:21:53');
INSERT INTO `product_categories` VALUES (43, 555, '2020-09-28 17:22:09', '2020-09-28 17:22:09');
INSERT INTO `product_categories` VALUES (43, 556, '2020-09-28 17:22:21', '2020-09-28 17:22:21');
INSERT INTO `product_categories` VALUES (43, 557, '2020-09-28 17:22:35', '2020-09-28 17:22:35');
INSERT INTO `product_categories` VALUES (43, 558, '2020-09-28 17:22:49', '2020-09-28 17:22:49');
INSERT INTO `product_categories` VALUES (43, 559, '2020-09-28 17:23:08', '2020-09-28 17:23:08');
INSERT INTO `product_categories` VALUES (43, 560, '2020-09-28 17:23:27', '2020-09-28 17:23:27');
INSERT INTO `product_categories` VALUES (43, 561, '2020-09-28 17:23:47', '2020-09-28 17:23:47');
INSERT INTO `product_categories` VALUES (43, 562, '2020-09-28 17:23:59', '2020-09-28 17:23:59');
INSERT INTO `product_categories` VALUES (43, 563, '2020-09-28 17:24:14', '2020-09-28 17:24:14');
INSERT INTO `product_categories` VALUES (43, 564, '2020-09-28 17:24:30', '2020-09-28 17:24:30');
INSERT INTO `product_categories` VALUES (43, 565, '2020-09-28 17:24:44', '2020-09-28 17:24:44');
INSERT INTO `product_categories` VALUES (43, 566, '2020-09-28 17:24:56', '2020-09-28 17:24:56');
INSERT INTO `product_categories` VALUES (43, 568, '2020-09-28 17:25:22', '2020-09-28 17:25:22');
INSERT INTO `product_categories` VALUES (44, 98, '2020-09-28 14:06:14', '2020-09-28 14:06:14');
INSERT INTO `product_categories` VALUES (44, 555, '2020-09-28 17:22:09', '2020-09-28 17:22:09');
INSERT INTO `product_categories` VALUES (44, 556, '2020-09-28 17:22:21', '2020-09-28 17:22:21');
INSERT INTO `product_categories` VALUES (44, 557, '2020-09-28 17:22:36', '2020-09-28 17:22:36');
INSERT INTO `product_categories` VALUES (44, 558, '2020-09-28 17:22:50', '2020-09-28 17:22:50');
INSERT INTO `product_categories` VALUES (44, 559, '2020-09-28 17:23:08', '2020-09-28 17:23:08');
INSERT INTO `product_categories` VALUES (44, 560, '2020-09-28 17:23:27', '2020-09-28 17:23:27');
INSERT INTO `product_categories` VALUES (44, 561, '2020-09-28 17:23:47', '2020-09-28 17:23:47');
INSERT INTO `product_categories` VALUES (44, 562, '2020-09-28 17:23:59', '2020-09-28 17:23:59');
INSERT INTO `product_categories` VALUES (45, 96, '2020-09-28 14:05:50', '2020-09-28 14:05:50');
INSERT INTO `product_categories` VALUES (45, 97, '2020-09-28 14:06:02', '2020-09-28 14:06:02');
INSERT INTO `product_categories` VALUES (45, 99, '2020-09-28 14:06:29', '2020-09-28 14:06:29');
INSERT INTO `product_categories` VALUES (45, 563, '2020-09-28 17:24:15', '2020-09-28 17:24:15');
INSERT INTO `product_categories` VALUES (45, 564, '2020-09-28 17:24:30', '2020-09-28 17:24:30');
INSERT INTO `product_categories` VALUES (45, 565, '2020-09-28 17:24:44', '2020-09-28 17:24:44');
INSERT INTO `product_categories` VALUES (45, 566, '2020-09-28 17:24:56', '2020-09-28 17:24:56');
INSERT INTO `product_categories` VALUES (45, 568, '2020-09-28 17:25:22', '2020-09-28 17:25:22');
INSERT INTO `product_categories` VALUES (46, 95, '2020-09-28 14:05:33', '2020-09-28 14:05:33');
INSERT INTO `product_categories` VALUES (46, 548, '2020-09-28 17:19:31', '2020-09-28 17:19:31');
INSERT INTO `product_categories` VALUES (46, 549, '2020-09-28 17:19:49', '2020-09-28 17:19:49');
INSERT INTO `product_categories` VALUES (46, 550, '2020-09-28 17:20:17', '2020-09-28 17:20:17');
INSERT INTO `product_categories` VALUES (46, 551, '2020-09-28 17:20:36', '2020-09-28 17:20:36');
INSERT INTO `product_categories` VALUES (46, 552, '2020-09-28 17:21:23', '2020-09-28 17:21:23');
INSERT INTO `product_categories` VALUES (46, 553, '2020-09-28 17:21:36', '2020-09-28 17:21:36');
INSERT INTO `product_categories` VALUES (46, 554, '2020-09-28 17:21:54', '2020-09-28 17:21:54');
INSERT INTO `product_categories` VALUES (47, 87, '2020-09-28 14:03:40', '2020-09-28 14:03:40');
INSERT INTO `product_categories` VALUES (47, 93, '2020-09-28 14:05:07', '2020-09-28 14:05:07');
INSERT INTO `product_categories` VALUES (47, 101, '2020-09-28 14:07:01', '2020-09-28 14:07:01');
INSERT INTO `product_categories` VALUES (47, 103, '2020-09-28 14:07:31', '2020-09-28 14:07:31');
INSERT INTO `product_categories` VALUES (48, 104, '2020-09-28 14:08:35', '2020-09-28 14:08:35');
INSERT INTO `product_categories` VALUES (48, 105, '2020-09-28 14:08:59', '2020-09-28 14:08:59');
INSERT INTO `product_categories` VALUES (48, 106, '2020-09-28 14:09:23', '2020-09-28 14:09:23');
INSERT INTO `product_categories` VALUES (48, 107, '2020-09-28 14:10:11', '2020-09-28 14:10:11');
INSERT INTO `product_categories` VALUES (48, 108, '2020-09-28 14:10:37', '2020-09-28 14:10:37');
INSERT INTO `product_categories` VALUES (48, 110, '2020-09-28 14:11:08', '2020-09-28 14:11:08');
INSERT INTO `product_categories` VALUES (48, 111, '2020-09-28 14:11:35', '2020-09-28 14:11:35');
INSERT INTO `product_categories` VALUES (48, 112, '2020-09-28 14:12:18', '2020-09-28 14:12:18');
INSERT INTO `product_categories` VALUES (48, 113, '2020-09-28 14:12:59', '2020-09-28 14:12:59');
INSERT INTO `product_categories` VALUES (48, 114, '2020-09-28 14:13:20', '2020-09-28 14:13:20');
INSERT INTO `product_categories` VALUES (48, 115, '2020-09-28 14:13:43', '2020-09-28 14:13:43');
INSERT INTO `product_categories` VALUES (48, 116, '2020-09-28 14:14:15', '2020-09-28 14:14:15');
INSERT INTO `product_categories` VALUES (48, 117, '2020-09-28 14:14:42', '2020-09-28 14:14:42');
INSERT INTO `product_categories` VALUES (48, 118, '2020-09-28 14:15:22', '2020-09-28 14:15:22');
INSERT INTO `product_categories` VALUES (48, 119, '2020-09-28 14:15:46', '2020-09-28 14:15:46');
INSERT INTO `product_categories` VALUES (48, 120, '2020-09-28 14:16:04', '2020-09-28 14:16:04');
INSERT INTO `product_categories` VALUES (48, 121, '2020-09-28 14:16:28', '2020-09-28 14:16:28');
INSERT INTO `product_categories` VALUES (48, 122, '2020-09-28 14:17:00', '2020-09-28 14:17:00');
INSERT INTO `product_categories` VALUES (48, 123, '2020-09-28 14:17:37', '2020-09-28 14:17:37');
INSERT INTO `product_categories` VALUES (48, 124, '2020-09-28 14:17:58', '2020-09-28 14:17:58');
INSERT INTO `product_categories` VALUES (48, 125, '2020-09-28 14:18:22', '2020-09-28 14:18:22');
INSERT INTO `product_categories` VALUES (48, 126, '2020-09-28 14:18:45', '2020-09-28 14:18:45');
INSERT INTO `product_categories` VALUES (48, 127, '2020-09-28 14:19:13', '2020-09-28 14:19:13');
INSERT INTO `product_categories` VALUES (48, 128, '2020-09-28 14:19:48', '2020-09-28 14:19:48');
INSERT INTO `product_categories` VALUES (48, 129, '2020-09-28 14:20:08', '2020-09-28 14:20:08');
INSERT INTO `product_categories` VALUES (48, 130, '2020-09-28 14:20:43', '2020-09-28 14:20:43');
INSERT INTO `product_categories` VALUES (48, 131, '2020-09-28 14:21:21', '2020-09-28 14:21:21');
INSERT INTO `product_categories` VALUES (48, 132, '2020-09-28 14:22:06', '2020-09-28 14:22:06');
INSERT INTO `product_categories` VALUES (48, 133, '2020-09-28 14:22:25', '2020-09-28 14:22:25');
INSERT INTO `product_categories` VALUES (48, 134, '2020-09-28 14:22:43', '2020-09-28 14:22:43');
INSERT INTO `product_categories` VALUES (48, 135, '2020-09-28 14:23:24', '2020-09-28 14:23:24');
INSERT INTO `product_categories` VALUES (48, 136, '2020-09-28 14:23:59', '2020-09-28 14:23:59');
INSERT INTO `product_categories` VALUES (48, 137, '2020-09-28 14:24:40', '2020-09-28 14:24:40');
INSERT INTO `product_categories` VALUES (48, 138, '2020-09-28 14:25:12', '2020-09-28 14:25:12');
INSERT INTO `product_categories` VALUES (48, 139, '2020-09-28 14:26:07', '2020-09-28 14:26:07');
INSERT INTO `product_categories` VALUES (48, 140, '2020-09-28 14:26:30', '2020-09-28 14:26:30');
INSERT INTO `product_categories` VALUES (48, 141, '2020-09-28 14:26:54', '2020-09-28 14:26:54');
INSERT INTO `product_categories` VALUES (48, 142, '2020-09-28 14:27:11', '2020-09-28 14:27:11');
INSERT INTO `product_categories` VALUES (48, 143, '2020-09-28 14:27:35', '2020-09-28 14:27:35');
INSERT INTO `product_categories` VALUES (48, 144, '2020-09-28 14:28:21', '2020-09-28 14:28:21');
INSERT INTO `product_categories` VALUES (48, 145, '2020-09-28 14:29:04', '2020-09-28 14:29:04');
INSERT INTO `product_categories` VALUES (48, 146, '2020-09-28 14:29:53', '2020-09-28 14:29:53');
INSERT INTO `product_categories` VALUES (48, 147, '2020-09-28 14:30:35', '2020-09-28 14:30:35');
INSERT INTO `product_categories` VALUES (48, 148, '2020-09-28 14:31:15', '2020-09-28 14:31:15');
INSERT INTO `product_categories` VALUES (48, 150, '2020-09-28 14:31:43', '2020-09-28 14:31:43');
INSERT INTO `product_categories` VALUES (48, 151, '2020-09-28 14:32:08', '2020-09-28 14:32:08');
INSERT INTO `product_categories` VALUES (48, 152, '2020-09-28 14:32:45', '2020-09-28 14:32:45');
INSERT INTO `product_categories` VALUES (48, 153, '2020-09-28 14:33:20', '2020-09-28 14:33:20');
INSERT INTO `product_categories` VALUES (48, 154, '2020-09-28 14:33:50', '2020-09-28 14:33:50');
INSERT INTO `product_categories` VALUES (48, 155, '2020-09-28 14:34:09', '2020-09-28 14:34:09');
INSERT INTO `product_categories` VALUES (48, 156, '2020-09-28 14:34:36', '2020-09-28 14:34:36');
INSERT INTO `product_categories` VALUES (48, 157, '2020-09-28 14:34:56', '2020-09-28 14:34:56');
INSERT INTO `product_categories` VALUES (48, 158, '2020-09-28 14:35:46', '2020-09-28 14:35:46');
INSERT INTO `product_categories` VALUES (48, 159, '2020-09-28 14:36:22', '2020-09-28 14:36:22');
INSERT INTO `product_categories` VALUES (48, 160, '2020-09-28 14:37:27', '2020-09-28 14:37:27');
INSERT INTO `product_categories` VALUES (48, 161, '2020-09-28 14:37:57', '2020-09-28 14:37:57');
INSERT INTO `product_categories` VALUES (48, 162, '2020-09-28 14:38:33', '2020-09-28 14:38:33');
INSERT INTO `product_categories` VALUES (48, 163, '2020-09-28 14:39:18', '2020-09-28 14:39:18');
INSERT INTO `product_categories` VALUES (48, 164, '2020-09-28 14:40:11', '2020-09-28 14:40:11');
INSERT INTO `product_categories` VALUES (48, 165, '2020-09-28 14:40:43', '2020-09-28 14:40:43');
INSERT INTO `product_categories` VALUES (48, 166, '2020-09-28 14:41:48', '2020-09-28 14:41:48');
INSERT INTO `product_categories` VALUES (48, 167, '2020-09-28 14:42:03', '2020-09-28 14:42:03');
INSERT INTO `product_categories` VALUES (48, 168, '2020-09-28 14:42:29', '2020-09-28 14:42:29');
INSERT INTO `product_categories` VALUES (48, 169, '2020-09-28 14:42:58', '2020-09-28 14:42:58');
INSERT INTO `product_categories` VALUES (48, 170, '2020-09-28 14:43:11', '2020-09-28 14:43:11');
INSERT INTO `product_categories` VALUES (48, 171, '2020-09-28 14:43:36', '2020-09-28 14:43:36');
INSERT INTO `product_categories` VALUES (48, 172, '2020-09-28 14:44:01', '2020-09-28 14:44:01');
INSERT INTO `product_categories` VALUES (48, 173, '2020-09-28 14:44:27', '2020-09-28 14:44:27');
INSERT INTO `product_categories` VALUES (48, 174, '2020-09-28 14:45:16', '2020-09-28 14:45:16');
INSERT INTO `product_categories` VALUES (48, 175, '2020-09-28 14:45:39', '2020-09-28 14:45:39');
INSERT INTO `product_categories` VALUES (48, 176, '2020-09-28 14:46:02', '2020-09-28 14:46:02');
INSERT INTO `product_categories` VALUES (48, 177, '2020-09-28 14:46:35', '2020-09-28 14:46:35');
INSERT INTO `product_categories` VALUES (48, 178, '2020-09-28 14:47:44', '2020-09-28 14:47:44');
INSERT INTO `product_categories` VALUES (48, 179, '2020-09-28 14:48:10', '2020-09-28 14:48:10');
INSERT INTO `product_categories` VALUES (48, 180, '2020-09-28 14:48:26', '2020-09-28 14:48:26');
INSERT INTO `product_categories` VALUES (48, 181, '2020-09-28 14:48:50', '2020-09-28 14:48:50');
INSERT INTO `product_categories` VALUES (49, 104, '2020-09-28 14:08:35', '2020-09-28 14:08:35');
INSERT INTO `product_categories` VALUES (49, 105, '2020-09-28 14:08:59', '2020-09-28 14:08:59');
INSERT INTO `product_categories` VALUES (49, 106, '2020-09-28 14:09:24', '2020-09-28 14:09:24');
INSERT INTO `product_categories` VALUES (49, 107, '2020-09-28 14:10:11', '2020-09-28 14:10:11');
INSERT INTO `product_categories` VALUES (49, 108, '2020-09-28 14:10:37', '2020-09-28 14:10:37');
INSERT INTO `product_categories` VALUES (49, 110, '2020-09-28 14:11:09', '2020-09-28 14:11:09');
INSERT INTO `product_categories` VALUES (49, 111, '2020-09-28 14:11:36', '2020-09-28 14:11:36');
INSERT INTO `product_categories` VALUES (49, 112, '2020-09-28 14:12:18', '2020-09-28 14:12:18');
INSERT INTO `product_categories` VALUES (49, 113, '2020-09-28 14:12:59', '2020-09-28 14:12:59');
INSERT INTO `product_categories` VALUES (50, 114, '2020-09-28 14:13:20', '2020-09-28 14:13:20');
INSERT INTO `product_categories` VALUES (50, 115, '2020-09-28 14:13:43', '2020-09-28 14:13:43');
INSERT INTO `product_categories` VALUES (50, 116, '2020-09-28 14:14:15', '2020-09-28 14:14:15');
INSERT INTO `product_categories` VALUES (50, 117, '2020-09-28 14:14:42', '2020-09-28 14:14:42');
INSERT INTO `product_categories` VALUES (50, 118, '2020-09-28 14:15:22', '2020-09-28 14:15:22');
INSERT INTO `product_categories` VALUES (50, 119, '2020-09-28 14:15:46', '2020-09-28 14:15:46');
INSERT INTO `product_categories` VALUES (50, 120, '2020-09-28 14:16:04', '2020-09-28 14:16:04');
INSERT INTO `product_categories` VALUES (50, 121, '2020-09-28 14:16:28', '2020-09-28 14:16:28');
INSERT INTO `product_categories` VALUES (50, 122, '2020-09-28 14:17:00', '2020-09-28 14:17:00');
INSERT INTO `product_categories` VALUES (50, 123, '2020-09-28 14:17:37', '2020-09-28 14:17:37');
INSERT INTO `product_categories` VALUES (50, 124, '2020-09-28 14:17:58', '2020-09-28 14:17:58');
INSERT INTO `product_categories` VALUES (50, 125, '2020-09-28 14:18:22', '2020-09-28 14:18:22');
INSERT INTO `product_categories` VALUES (50, 126, '2020-09-28 14:18:46', '2020-09-28 14:18:46');
INSERT INTO `product_categories` VALUES (51, 127, '2020-09-28 14:19:13', '2020-09-28 14:19:13');
INSERT INTO `product_categories` VALUES (51, 128, '2020-09-28 14:19:48', '2020-09-28 14:19:48');
INSERT INTO `product_categories` VALUES (51, 129, '2020-09-28 14:20:09', '2020-09-28 14:20:09');
INSERT INTO `product_categories` VALUES (51, 130, '2020-09-28 14:20:44', '2020-09-28 14:20:44');
INSERT INTO `product_categories` VALUES (51, 131, '2020-09-28 14:21:21', '2020-09-28 14:21:21');
INSERT INTO `product_categories` VALUES (51, 132, '2020-09-28 14:22:06', '2020-09-28 14:22:06');
INSERT INTO `product_categories` VALUES (51, 133, '2020-09-28 14:22:26', '2020-09-28 14:22:26');
INSERT INTO `product_categories` VALUES (51, 134, '2020-09-28 14:22:43', '2020-09-28 14:22:43');
INSERT INTO `product_categories` VALUES (51, 135, '2020-09-28 14:23:24', '2020-09-28 14:23:24');
INSERT INTO `product_categories` VALUES (51, 136, '2020-09-28 14:23:59', '2020-09-28 14:23:59');
INSERT INTO `product_categories` VALUES (51, 137, '2020-09-28 14:24:41', '2020-09-28 14:24:41');
INSERT INTO `product_categories` VALUES (51, 138, '2020-09-28 14:25:12', '2020-09-28 14:25:12');
INSERT INTO `product_categories` VALUES (51, 139, '2020-09-28 14:26:07', '2020-09-28 14:26:07');
INSERT INTO `product_categories` VALUES (51, 140, '2020-09-28 14:26:31', '2020-09-28 14:26:31');
INSERT INTO `product_categories` VALUES (52, 141, '2020-09-28 14:26:54', '2020-09-28 14:26:54');
INSERT INTO `product_categories` VALUES (52, 142, '2020-09-28 14:27:11', '2020-09-28 14:27:11');
INSERT INTO `product_categories` VALUES (52, 143, '2020-09-28 14:27:35', '2020-09-28 14:27:35');
INSERT INTO `product_categories` VALUES (52, 144, '2020-09-28 14:28:21', '2020-09-28 14:28:21');
INSERT INTO `product_categories` VALUES (52, 145, '2020-09-28 14:29:05', '2020-09-28 14:29:05');
INSERT INTO `product_categories` VALUES (52, 146, '2020-09-28 14:29:53', '2020-09-28 14:29:53');
INSERT INTO `product_categories` VALUES (52, 147, '2020-09-28 14:30:35', '2020-09-28 14:30:35');
INSERT INTO `product_categories` VALUES (52, 148, '2020-09-28 14:31:15', '2020-09-28 14:31:15');
INSERT INTO `product_categories` VALUES (53, 150, '2020-09-28 14:31:43', '2020-09-28 14:31:43');
INSERT INTO `product_categories` VALUES (53, 151, '2020-09-28 14:32:08', '2020-09-28 14:32:08');
INSERT INTO `product_categories` VALUES (53, 152, '2020-09-28 14:32:46', '2020-09-28 14:32:46');
INSERT INTO `product_categories` VALUES (53, 153, '2020-09-28 14:33:20', '2020-09-28 14:33:20');
INSERT INTO `product_categories` VALUES (53, 154, '2020-09-28 14:33:50', '2020-09-28 14:33:50');
INSERT INTO `product_categories` VALUES (53, 155, '2020-09-28 14:34:09', '2020-09-28 14:34:09');
INSERT INTO `product_categories` VALUES (53, 156, '2020-09-28 14:34:36', '2020-09-28 14:34:36');
INSERT INTO `product_categories` VALUES (53, 157, '2020-09-28 14:34:56', '2020-09-28 14:34:56');
INSERT INTO `product_categories` VALUES (53, 158, '2020-09-28 14:35:47', '2020-09-28 14:35:47');
INSERT INTO `product_categories` VALUES (53, 159, '2020-09-28 14:36:22', '2020-09-28 14:36:22');
INSERT INTO `product_categories` VALUES (53, 160, '2020-09-28 14:37:27', '2020-09-28 14:37:27');
INSERT INTO `product_categories` VALUES (53, 161, '2020-09-28 14:37:57', '2020-09-28 14:37:57');
INSERT INTO `product_categories` VALUES (54, 162, '2020-09-28 14:38:33', '2020-09-28 14:38:33');
INSERT INTO `product_categories` VALUES (54, 163, '2020-09-28 14:39:18', '2020-09-28 14:39:18');
INSERT INTO `product_categories` VALUES (54, 164, '2020-09-28 14:40:12', '2020-09-28 14:40:12');
INSERT INTO `product_categories` VALUES (54, 165, '2020-09-28 14:40:44', '2020-09-28 14:40:44');
INSERT INTO `product_categories` VALUES (54, 166, '2020-09-28 14:41:48', '2020-09-28 14:41:48');
INSERT INTO `product_categories` VALUES (54, 167, '2020-09-28 14:42:03', '2020-09-28 14:42:03');
INSERT INTO `product_categories` VALUES (54, 168, '2020-09-28 14:42:30', '2020-09-28 14:42:30');
INSERT INTO `product_categories` VALUES (55, 169, '2020-09-28 14:42:58', '2020-09-28 14:42:58');
INSERT INTO `product_categories` VALUES (55, 170, '2020-09-28 14:43:11', '2020-09-28 14:43:11');
INSERT INTO `product_categories` VALUES (55, 171, '2020-09-28 14:43:36', '2020-09-28 14:43:36');
INSERT INTO `product_categories` VALUES (55, 172, '2020-09-28 14:44:01', '2020-09-28 14:44:01');
INSERT INTO `product_categories` VALUES (55, 173, '2020-09-28 14:44:27', '2020-09-28 14:44:27');
INSERT INTO `product_categories` VALUES (55, 174, '2020-09-28 14:45:16', '2020-09-28 14:45:16');
INSERT INTO `product_categories` VALUES (55, 175, '2020-09-28 14:45:39', '2020-09-28 14:45:39');
INSERT INTO `product_categories` VALUES (55, 176, '2020-09-28 14:46:02', '2020-09-28 14:46:02');
INSERT INTO `product_categories` VALUES (56, 177, '2020-09-28 14:46:35', '2020-09-28 14:46:35');
INSERT INTO `product_categories` VALUES (56, 178, '2020-09-28 14:47:44', '2020-09-28 14:47:44');
INSERT INTO `product_categories` VALUES (56, 179, '2020-09-28 14:48:10', '2020-09-28 14:48:10');
INSERT INTO `product_categories` VALUES (56, 180, '2020-09-28 14:48:27', '2020-09-28 14:48:27');
INSERT INTO `product_categories` VALUES (56, 181, '2020-09-28 14:48:50', '2020-09-28 14:48:50');
INSERT INTO `product_categories` VALUES (57, 182, '2020-09-28 14:49:36', '2020-09-28 14:49:36');
INSERT INTO `product_categories` VALUES (57, 183, '2020-09-28 14:50:31', '2020-09-28 14:50:31');
INSERT INTO `product_categories` VALUES (57, 184, '2020-09-28 14:50:55', '2020-09-28 14:50:55');
INSERT INTO `product_categories` VALUES (57, 185, '2020-09-28 14:51:46', '2020-09-28 14:51:46');
INSERT INTO `product_categories` VALUES (57, 186, '2020-09-28 14:52:10', '2020-09-28 14:52:10');
INSERT INTO `product_categories` VALUES (57, 187, '2020-09-28 14:52:42', '2020-09-28 14:52:42');
INSERT INTO `product_categories` VALUES (57, 188, '2020-09-28 14:53:17', '2020-09-28 14:53:17');
INSERT INTO `product_categories` VALUES (57, 189, '2020-09-28 14:53:44', '2020-09-28 14:53:44');
INSERT INTO `product_categories` VALUES (57, 190, '2020-09-28 14:54:28', '2020-09-28 14:54:28');
INSERT INTO `product_categories` VALUES (57, 191, '2020-09-28 14:55:08', '2020-09-28 14:55:08');
INSERT INTO `product_categories` VALUES (57, 192, '2020-09-28 14:55:55', '2020-09-28 14:55:55');
INSERT INTO `product_categories` VALUES (57, 193, '2020-09-28 14:56:10', '2020-09-28 14:56:10');
INSERT INTO `product_categories` VALUES (57, 194, '2020-09-28 14:57:02', '2020-09-28 14:57:02');
INSERT INTO `product_categories` VALUES (57, 195, '2020-09-28 14:57:45', '2020-09-28 14:57:45');
INSERT INTO `product_categories` VALUES (57, 196, '2020-09-28 14:58:25', '2020-09-28 14:58:25');
INSERT INTO `product_categories` VALUES (57, 197, '2020-09-28 14:59:00', '2020-09-28 14:59:00');
INSERT INTO `product_categories` VALUES (57, 198, '2020-09-28 14:59:17', '2020-09-28 14:59:17');
INSERT INTO `product_categories` VALUES (57, 199, '2020-09-28 14:59:53', '2020-09-28 14:59:53');
INSERT INTO `product_categories` VALUES (57, 200, '2020-09-28 15:00:12', '2020-09-28 15:00:12');
INSERT INTO `product_categories` VALUES (57, 201, '2020-09-28 15:00:28', '2020-09-28 15:00:28');
INSERT INTO `product_categories` VALUES (57, 202, '2020-09-28 15:00:57', '2020-09-28 15:00:57');
INSERT INTO `product_categories` VALUES (57, 203, '2020-09-28 15:01:30', '2020-09-28 15:01:30');
INSERT INTO `product_categories` VALUES (57, 204, '2020-09-28 15:02:21', '2020-09-28 15:02:21');
INSERT INTO `product_categories` VALUES (57, 205, '2020-09-28 15:03:03', '2020-09-28 15:03:03');
INSERT INTO `product_categories` VALUES (57, 206, '2020-09-28 15:03:53', '2020-09-28 15:03:53');
INSERT INTO `product_categories` VALUES (57, 207, '2020-09-28 15:04:31', '2020-09-28 15:04:31');
INSERT INTO `product_categories` VALUES (57, 208, '2020-09-28 15:04:59', '2020-09-28 15:04:59');
INSERT INTO `product_categories` VALUES (57, 209, '2020-09-28 15:05:38', '2020-09-28 15:05:38');
INSERT INTO `product_categories` VALUES (57, 210, '2020-09-28 15:06:18', '2020-09-28 15:06:18');
INSERT INTO `product_categories` VALUES (57, 211, '2020-09-28 15:07:01', '2020-09-28 15:07:01');
INSERT INTO `product_categories` VALUES (57, 212, '2020-09-28 15:07:27', '2020-09-28 15:07:27');
INSERT INTO `product_categories` VALUES (57, 213, '2020-09-28 15:07:41', '2020-09-28 15:07:41');
INSERT INTO `product_categories` VALUES (57, 214, '2020-09-28 15:08:14', '2020-09-28 15:08:14');
INSERT INTO `product_categories` VALUES (57, 215, '2020-09-28 15:08:39', '2020-09-28 15:08:39');
INSERT INTO `product_categories` VALUES (57, 216, '2020-09-28 15:09:18', '2020-09-28 15:09:18');
INSERT INTO `product_categories` VALUES (57, 217, '2020-09-28 15:10:02', '2020-09-28 15:10:02');
INSERT INTO `product_categories` VALUES (57, 219, '2020-09-28 15:10:30', '2020-09-28 15:10:30');
INSERT INTO `product_categories` VALUES (57, 220, '2020-09-28 15:10:51', '2020-09-28 15:10:51');
INSERT INTO `product_categories` VALUES (57, 221, '2020-09-28 15:11:15', '2020-09-28 15:11:15');
INSERT INTO `product_categories` VALUES (57, 224, '2020-09-28 15:11:44', '2020-09-28 15:11:44');
INSERT INTO `product_categories` VALUES (57, 225, '2020-09-28 15:12:14', '2020-09-28 15:12:14');
INSERT INTO `product_categories` VALUES (58, 182, '2020-09-28 14:49:36', '2020-09-28 14:49:36');
INSERT INTO `product_categories` VALUES (58, 183, '2020-09-28 14:50:31', '2020-09-28 14:50:31');
INSERT INTO `product_categories` VALUES (58, 184, '2020-09-28 14:50:55', '2020-09-28 14:50:55');
INSERT INTO `product_categories` VALUES (58, 185, '2020-09-28 14:51:47', '2020-09-28 14:51:47');
INSERT INTO `product_categories` VALUES (58, 186, '2020-09-28 14:52:10', '2020-09-28 14:52:10');
INSERT INTO `product_categories` VALUES (58, 187, '2020-09-28 14:52:42', '2020-09-28 14:52:42');
INSERT INTO `product_categories` VALUES (58, 188, '2020-09-28 14:53:17', '2020-09-28 14:53:17');
INSERT INTO `product_categories` VALUES (58, 189, '2020-09-28 14:53:44', '2020-09-28 14:53:44');
INSERT INTO `product_categories` VALUES (59, 190, '2020-09-28 14:54:28', '2020-09-28 14:54:28');
INSERT INTO `product_categories` VALUES (59, 191, '2020-09-28 14:55:08', '2020-09-28 14:55:08');
INSERT INTO `product_categories` VALUES (59, 192, '2020-09-28 14:55:55', '2020-09-28 14:55:55');
INSERT INTO `product_categories` VALUES (59, 193, '2020-09-28 14:56:10', '2020-09-28 14:56:10');
INSERT INTO `product_categories` VALUES (59, 194, '2020-09-28 14:57:02', '2020-09-28 14:57:02');
INSERT INTO `product_categories` VALUES (59, 195, '2020-09-28 14:57:45', '2020-09-28 14:57:45');
INSERT INTO `product_categories` VALUES (59, 196, '2020-09-28 14:58:25', '2020-09-28 14:58:25');
INSERT INTO `product_categories` VALUES (59, 197, '2020-09-28 14:59:00', '2020-09-28 14:59:00');
INSERT INTO `product_categories` VALUES (60, 198, '2020-09-28 14:59:18', '2020-09-28 14:59:18');
INSERT INTO `product_categories` VALUES (60, 199, '2020-09-28 14:59:54', '2020-09-28 14:59:54');
INSERT INTO `product_categories` VALUES (60, 200, '2020-09-28 15:00:12', '2020-09-28 15:00:12');
INSERT INTO `product_categories` VALUES (60, 201, '2020-09-28 15:00:28', '2020-09-28 15:00:28');
INSERT INTO `product_categories` VALUES (60, 202, '2020-09-28 15:00:57', '2020-09-28 15:00:57');
INSERT INTO `product_categories` VALUES (60, 203, '2020-09-28 15:01:30', '2020-09-28 15:01:30');
INSERT INTO `product_categories` VALUES (60, 204, '2020-09-28 15:02:21', '2020-09-28 15:02:21');
INSERT INTO `product_categories` VALUES (60, 205, '2020-09-28 15:03:03', '2020-09-28 15:03:03');
INSERT INTO `product_categories` VALUES (60, 206, '2020-09-28 15:03:54', '2020-09-28 15:03:54');
INSERT INTO `product_categories` VALUES (60, 207, '2020-09-28 15:04:31', '2020-09-28 15:04:31');
INSERT INTO `product_categories` VALUES (60, 208, '2020-09-28 15:04:59', '2020-09-28 15:04:59');
INSERT INTO `product_categories` VALUES (61, 209, '2020-09-28 15:05:38', '2020-09-28 15:05:38');
INSERT INTO `product_categories` VALUES (61, 210, '2020-09-28 15:06:18', '2020-09-28 15:06:18');
INSERT INTO `product_categories` VALUES (61, 211, '2020-09-28 15:07:01', '2020-09-28 15:07:01');
INSERT INTO `product_categories` VALUES (61, 212, '2020-09-28 15:07:28', '2020-09-28 15:07:28');
INSERT INTO `product_categories` VALUES (61, 213, '2020-09-28 15:07:41', '2020-09-28 15:07:41');
INSERT INTO `product_categories` VALUES (61, 214, '2020-09-28 15:08:14', '2020-09-28 15:08:14');
INSERT INTO `product_categories` VALUES (61, 215, '2020-09-28 15:08:39', '2020-09-28 15:08:39');
INSERT INTO `product_categories` VALUES (61, 216, '2020-09-28 15:09:19', '2020-09-28 15:09:19');
INSERT INTO `product_categories` VALUES (61, 217, '2020-09-28 15:10:02', '2020-09-28 15:10:02');
INSERT INTO `product_categories` VALUES (61, 219, '2020-09-28 15:10:30', '2020-09-28 15:10:30');
INSERT INTO `product_categories` VALUES (61, 220, '2020-09-28 15:10:52', '2020-09-28 15:10:52');
INSERT INTO `product_categories` VALUES (61, 221, '2020-09-28 15:11:15', '2020-09-28 15:11:15');
INSERT INTO `product_categories` VALUES (61, 224, '2020-09-28 15:11:45', '2020-09-28 15:11:45');
INSERT INTO `product_categories` VALUES (61, 225, '2020-09-28 15:12:14', '2020-09-28 15:12:14');
INSERT INTO `product_categories` VALUES (63, 226, '2020-09-28 15:12:30', '2020-09-28 15:12:30');
INSERT INTO `product_categories` VALUES (63, 227, '2020-09-28 15:12:56', '2020-09-28 15:12:56');
INSERT INTO `product_categories` VALUES (63, 228, '2020-09-28 15:13:08', '2020-09-28 15:13:08');
INSERT INTO `product_categories` VALUES (63, 229, '2020-09-28 15:13:28', '2020-09-28 15:13:28');
INSERT INTO `product_categories` VALUES (63, 230, '2020-09-28 15:13:45', '2020-09-28 15:13:45');
INSERT INTO `product_categories` VALUES (63, 231, '2020-09-28 15:13:57', '2020-09-28 15:13:57');
INSERT INTO `product_categories` VALUES (63, 232, '2020-09-28 15:14:14', '2020-09-28 15:14:14');
INSERT INTO `product_categories` VALUES (63, 233, '2020-09-28 15:14:34', '2020-09-28 15:14:34');
INSERT INTO `product_categories` VALUES (63, 234, '2020-09-28 15:14:51', '2020-09-28 15:14:51');
INSERT INTO `product_categories` VALUES (63, 235, '2020-09-28 15:15:24', '2020-09-28 15:15:24');
INSERT INTO `product_categories` VALUES (64, 236, '2020-09-28 15:15:57', '2020-09-28 15:15:57');
INSERT INTO `product_categories` VALUES (64, 237, '2020-09-28 15:16:23', '2020-09-28 15:16:23');
INSERT INTO `product_categories` VALUES (64, 238, '2020-09-28 15:16:49', '2020-09-28 15:16:49');
INSERT INTO `product_categories` VALUES (64, 239, '2020-09-28 15:17:05', '2020-09-28 15:17:05');
INSERT INTO `product_categories` VALUES (64, 240, '2020-09-28 15:17:20', '2020-09-28 15:17:20');
INSERT INTO `product_categories` VALUES (64, 241, '2020-09-28 15:18:04', '2020-09-28 15:18:04');
INSERT INTO `product_categories` VALUES (64, 242, '2020-09-28 15:18:34', '2020-09-28 15:18:34');
INSERT INTO `product_categories` VALUES (64, 243, '2020-09-28 15:18:51', '2020-09-28 15:18:51');
INSERT INTO `product_categories` VALUES (65, 244, '2020-09-28 15:19:09', '2020-09-28 15:19:09');
INSERT INTO `product_categories` VALUES (65, 245, '2020-09-28 15:19:47', '2020-09-28 15:19:47');
INSERT INTO `product_categories` VALUES (65, 246, '2020-09-28 15:20:05', '2020-09-28 15:20:05');
INSERT INTO `product_categories` VALUES (65, 247, '2020-09-28 15:20:29', '2020-09-28 15:20:29');
INSERT INTO `product_categories` VALUES (65, 248, '2020-09-28 15:20:43', '2020-09-28 15:20:43');
INSERT INTO `product_categories` VALUES (65, 249, '2020-09-28 15:20:57', '2020-09-28 15:20:57');
INSERT INTO `product_categories` VALUES (65, 251, '2020-09-28 15:21:34', '2020-09-28 15:21:34');
INSERT INTO `product_categories` VALUES (66, 252, '2020-09-28 15:22:00', '2020-09-28 15:22:00');
INSERT INTO `product_categories` VALUES (66, 253, '2020-09-28 15:22:50', '2020-09-28 15:22:50');
INSERT INTO `product_categories` VALUES (66, 254, '2020-09-28 15:23:23', '2020-09-28 15:23:23');
INSERT INTO `product_categories` VALUES (66, 255, '2020-09-28 15:24:24', '2020-09-28 15:24:24');
INSERT INTO `product_categories` VALUES (66, 256, '2020-09-28 15:25:26', '2020-09-28 15:25:26');
INSERT INTO `product_categories` VALUES (66, 257, '2020-09-28 15:26:05', '2020-09-28 15:26:05');
INSERT INTO `product_categories` VALUES (66, 258, '2020-09-28 15:26:40', '2020-09-28 15:26:40');
INSERT INTO `product_categories` VALUES (67, 259, '2020-09-28 15:27:01', '2020-09-28 15:27:01');
INSERT INTO `product_categories` VALUES (67, 260, '2020-09-28 15:27:20', '2020-09-28 15:27:20');
INSERT INTO `product_categories` VALUES (67, 261, '2020-09-28 15:27:40', '2020-09-28 15:27:40');
INSERT INTO `product_categories` VALUES (67, 262, '2020-09-28 15:27:53', '2020-09-28 15:27:53');
INSERT INTO `product_categories` VALUES (67, 263, '2020-09-28 15:28:23', '2020-09-28 15:28:23');
INSERT INTO `product_categories` VALUES (67, 264, '2020-09-28 15:28:36', '2020-09-28 15:28:36');
INSERT INTO `product_categories` VALUES (67, 265, '2020-09-28 15:28:57', '2020-09-28 15:28:57');
INSERT INTO `product_categories` VALUES (67, 266, '2020-09-28 15:29:16', '2020-09-28 15:29:16');
INSERT INTO `product_categories` VALUES (67, 267, '2020-09-28 15:29:42', '2020-09-28 15:29:42');
INSERT INTO `product_categories` VALUES (67, 268, '2020-09-28 15:29:57', '2020-09-28 15:29:57');
INSERT INTO `product_categories` VALUES (67, 269, '2020-09-28 15:30:13', '2020-09-28 15:30:13');
INSERT INTO `product_categories` VALUES (67, 270, '2020-09-28 15:30:35', '2020-09-28 15:30:35');
INSERT INTO `product_categories` VALUES (68, 271, '2020-09-28 15:30:53', '2020-09-28 15:30:53');
INSERT INTO `product_categories` VALUES (68, 272, '2020-09-28 15:31:12', '2020-09-28 15:31:12');
INSERT INTO `product_categories` VALUES (68, 274, '2020-09-28 15:31:43', '2020-09-28 15:31:43');
INSERT INTO `product_categories` VALUES (68, 275, '2020-09-28 15:31:59', '2020-09-28 15:31:59');
INSERT INTO `product_categories` VALUES (68, 276, '2020-09-28 15:32:24', '2020-09-28 15:32:24');
INSERT INTO `product_categories` VALUES (68, 277, '2020-09-28 15:32:50', '2020-09-28 15:32:50');
INSERT INTO `product_categories` VALUES (69, 278, '2020-09-28 15:33:12', '2020-09-28 15:33:12');
INSERT INTO `product_categories` VALUES (69, 280, '2020-09-28 15:33:27', '2020-09-28 15:33:27');
INSERT INTO `product_categories` VALUES (69, 281, '2020-09-28 15:33:58', '2020-09-28 15:33:58');
INSERT INTO `product_categories` VALUES (69, 282, '2020-09-28 15:34:15', '2020-09-28 15:34:15');
INSERT INTO `product_categories` VALUES (69, 284, '2020-09-28 15:34:30', '2020-09-28 15:34:30');
INSERT INTO `product_categories` VALUES (69, 285, '2020-09-28 15:35:05', '2020-09-28 15:35:05');
INSERT INTO `product_categories` VALUES (69, 286, '2020-09-28 15:35:24', '2020-09-28 15:35:24');
INSERT INTO `product_categories` VALUES (69, 287, '2020-09-28 15:35:41', '2020-09-28 15:35:41');
INSERT INTO `product_categories` VALUES (69, 288, '2020-09-28 15:35:56', '2020-09-28 15:35:56');
INSERT INTO `product_categories` VALUES (69, 289, '2020-09-28 15:36:11', '2020-09-28 15:36:11');
INSERT INTO `product_categories` VALUES (69, 290, '2020-09-28 15:36:35', '2020-09-28 15:36:35');
INSERT INTO `product_categories` VALUES (69, 291, '2020-09-28 15:36:49', '2020-09-28 15:36:49');
INSERT INTO `product_categories` VALUES (69, 292, '2020-09-28 15:37:00', '2020-09-28 15:37:00');
INSERT INTO `product_categories` VALUES (69, 293, '2020-09-28 15:37:19', '2020-09-28 15:37:19');
INSERT INTO `product_categories` VALUES (69, 294, '2020-09-28 15:37:32', '2020-09-28 15:37:32');
INSERT INTO `product_categories` VALUES (69, 295, '2020-09-28 15:37:51', '2020-09-28 15:37:51');
INSERT INTO `product_categories` VALUES (69, 296, '2020-09-28 15:38:14', '2020-09-28 15:38:14');
INSERT INTO `product_categories` VALUES (69, 297, '2020-09-28 15:38:29', '2020-09-28 15:38:29');
INSERT INTO `product_categories` VALUES (69, 298, '2020-09-28 15:38:59', '2020-09-28 15:38:59');
INSERT INTO `product_categories` VALUES (69, 299, '2020-09-28 15:39:13', '2020-09-28 15:39:13');
INSERT INTO `product_categories` VALUES (69, 300, '2020-09-28 15:39:43', '2020-09-28 15:39:43');
INSERT INTO `product_categories` VALUES (69, 301, '2020-09-28 15:39:59', '2020-09-28 15:39:59');
INSERT INTO `product_categories` VALUES (69, 302, '2020-09-28 15:40:36', '2020-09-28 15:40:36');
INSERT INTO `product_categories` VALUES (69, 303, '2020-09-28 15:41:05', '2020-09-28 15:41:05');
INSERT INTO `product_categories` VALUES (69, 304, '2020-09-28 15:41:26', '2020-09-28 15:41:26');
INSERT INTO `product_categories` VALUES (69, 305, '2020-09-28 15:41:55', '2020-09-28 15:41:55');
INSERT INTO `product_categories` VALUES (69, 306, '2020-09-28 15:42:19', '2020-09-28 15:42:19');
INSERT INTO `product_categories` VALUES (69, 307, '2020-09-28 15:42:42', '2020-09-28 15:42:42');
INSERT INTO `product_categories` VALUES (69, 308, '2020-09-28 15:43:15', '2020-09-28 15:43:15');
INSERT INTO `product_categories` VALUES (69, 309, '2020-09-28 15:43:33', '2020-09-28 15:43:33');
INSERT INTO `product_categories` VALUES (69, 310, '2020-09-28 15:43:51', '2020-09-28 15:43:51');
INSERT INTO `product_categories` VALUES (69, 311, '2020-09-28 15:44:14', '2020-09-28 15:44:14');
INSERT INTO `product_categories` VALUES (69, 312, '2020-09-28 15:44:37', '2020-09-28 15:44:37');
INSERT INTO `product_categories` VALUES (69, 313, '2020-09-28 15:44:55', '2020-09-28 15:44:55');
INSERT INTO `product_categories` VALUES (69, 314, '2020-09-28 15:45:20', '2020-09-28 15:45:20');
INSERT INTO `product_categories` VALUES (69, 315, '2020-09-28 15:45:46', '2020-09-28 15:45:46');
INSERT INTO `product_categories` VALUES (69, 316, '2020-09-28 15:46:12', '2020-09-28 15:46:12');
INSERT INTO `product_categories` VALUES (69, 317, '2020-09-28 15:46:44', '2020-09-28 15:46:44');
INSERT INTO `product_categories` VALUES (69, 318, '2020-09-28 15:47:05', '2020-09-28 15:47:05');
INSERT INTO `product_categories` VALUES (69, 319, '2020-09-28 15:47:22', '2020-09-28 15:47:22');
INSERT INTO `product_categories` VALUES (69, 320, '2020-09-28 15:47:39', '2020-09-28 15:47:39');
INSERT INTO `product_categories` VALUES (70, 278, '2020-09-28 15:33:13', '2020-09-28 15:33:13');
INSERT INTO `product_categories` VALUES (70, 280, '2020-09-28 15:33:27', '2020-09-28 15:33:27');
INSERT INTO `product_categories` VALUES (70, 281, '2020-09-28 15:33:58', '2020-09-28 15:33:58');
INSERT INTO `product_categories` VALUES (70, 282, '2020-09-28 15:34:15', '2020-09-28 15:34:15');
INSERT INTO `product_categories` VALUES (70, 284, '2020-09-28 15:34:30', '2020-09-28 15:34:30');
INSERT INTO `product_categories` VALUES (70, 285, '2020-09-28 15:35:05', '2020-09-28 15:35:05');
INSERT INTO `product_categories` VALUES (70, 286, '2020-09-28 15:35:24', '2020-09-28 15:35:24');
INSERT INTO `product_categories` VALUES (71, 287, '2020-09-28 15:35:42', '2020-09-28 15:35:42');
INSERT INTO `product_categories` VALUES (71, 288, '2020-09-28 15:35:56', '2020-09-28 15:35:56');
INSERT INTO `product_categories` VALUES (71, 289, '2020-09-28 15:36:12', '2020-09-28 15:36:12');
INSERT INTO `product_categories` VALUES (71, 290, '2020-09-28 15:36:35', '2020-09-28 15:36:35');
INSERT INTO `product_categories` VALUES (71, 291, '2020-09-28 15:36:50', '2020-09-28 15:36:50');
INSERT INTO `product_categories` VALUES (71, 292, '2020-09-28 15:37:00', '2020-09-28 15:37:00');
INSERT INTO `product_categories` VALUES (71, 293, '2020-09-28 15:37:19', '2020-09-28 15:37:19');
INSERT INTO `product_categories` VALUES (71, 294, '2020-09-28 15:37:33', '2020-09-28 15:37:33');
INSERT INTO `product_categories` VALUES (72, 295, '2020-09-28 15:37:51', '2020-09-28 15:37:51');
INSERT INTO `product_categories` VALUES (72, 296, '2020-09-28 15:38:14', '2020-09-28 15:38:14');
INSERT INTO `product_categories` VALUES (72, 297, '2020-09-28 15:38:29', '2020-09-28 15:38:29');
INSERT INTO `product_categories` VALUES (72, 298, '2020-09-28 15:38:59', '2020-09-28 15:38:59');
INSERT INTO `product_categories` VALUES (72, 299, '2020-09-28 15:39:13', '2020-09-28 15:39:13');
INSERT INTO `product_categories` VALUES (72, 300, '2020-09-28 15:39:43', '2020-09-28 15:39:43');
INSERT INTO `product_categories` VALUES (72, 301, '2020-09-28 15:39:59', '2020-09-28 15:39:59');
INSERT INTO `product_categories` VALUES (73, 302, '2020-09-28 15:40:36', '2020-09-28 15:40:36');
INSERT INTO `product_categories` VALUES (73, 303, '2020-09-28 15:41:06', '2020-09-28 15:41:06');
INSERT INTO `product_categories` VALUES (73, 304, '2020-09-28 15:41:27', '2020-09-28 15:41:27');
INSERT INTO `product_categories` VALUES (74, 305, '2020-09-28 15:41:55', '2020-09-28 15:41:55');
INSERT INTO `product_categories` VALUES (74, 306, '2020-09-28 15:42:20', '2020-09-28 15:42:20');
INSERT INTO `product_categories` VALUES (74, 307, '2020-09-28 15:42:42', '2020-09-28 15:42:42');
INSERT INTO `product_categories` VALUES (74, 308, '2020-09-28 15:43:16', '2020-09-28 15:43:16');
INSERT INTO `product_categories` VALUES (74, 309, '2020-09-28 15:43:33', '2020-09-28 15:43:33');
INSERT INTO `product_categories` VALUES (74, 310, '2020-09-28 15:43:51', '2020-09-28 15:43:51');
INSERT INTO `product_categories` VALUES (74, 311, '2020-09-28 15:44:15', '2020-09-28 15:44:15');
INSERT INTO `product_categories` VALUES (75, 312, '2020-09-28 15:44:37', '2020-09-28 15:44:37');
INSERT INTO `product_categories` VALUES (75, 313, '2020-09-28 15:44:55', '2020-09-28 15:44:55');
INSERT INTO `product_categories` VALUES (75, 314, '2020-09-28 15:45:20', '2020-09-28 15:45:20');
INSERT INTO `product_categories` VALUES (75, 315, '2020-09-28 15:45:47', '2020-09-28 15:45:47');
INSERT INTO `product_categories` VALUES (75, 316, '2020-09-28 15:46:12', '2020-09-28 15:46:12');
INSERT INTO `product_categories` VALUES (75, 317, '2020-09-28 15:46:44', '2020-09-28 15:46:44');
INSERT INTO `product_categories` VALUES (75, 318, '2020-09-28 15:47:05', '2020-09-28 15:47:05');
INSERT INTO `product_categories` VALUES (75, 319, '2020-09-28 15:47:22', '2020-09-28 15:47:22');
INSERT INTO `product_categories` VALUES (75, 320, '2020-09-28 15:47:39', '2020-09-28 15:47:39');
INSERT INTO `product_categories` VALUES (76, 321, '2020-09-28 15:47:54', '2020-09-28 15:47:54');
INSERT INTO `product_categories` VALUES (76, 322, '2020-09-28 15:48:17', '2020-09-28 15:48:17');
INSERT INTO `product_categories` VALUES (76, 323, '2020-09-28 15:48:33', '2020-09-28 15:48:33');
INSERT INTO `product_categories` VALUES (76, 324, '2020-09-28 15:48:50', '2020-09-28 15:48:50');
INSERT INTO `product_categories` VALUES (76, 325, '2020-09-28 15:49:03', '2020-09-28 15:49:03');
INSERT INTO `product_categories` VALUES (76, 326, '2020-09-28 15:49:28', '2020-09-28 15:49:28');
INSERT INTO `product_categories` VALUES (76, 327, '2020-09-28 15:49:53', '2020-09-28 15:49:53');
INSERT INTO `product_categories` VALUES (76, 328, '2020-09-28 15:50:08', '2020-09-28 15:50:08');
INSERT INTO `product_categories` VALUES (76, 329, '2020-09-28 15:50:35', '2020-09-28 15:50:35');
INSERT INTO `product_categories` VALUES (76, 330, '2020-09-28 15:51:07', '2020-09-28 15:51:07');
INSERT INTO `product_categories` VALUES (76, 331, '2020-09-28 15:51:41', '2020-09-28 15:51:41');
INSERT INTO `product_categories` VALUES (76, 332, '2020-09-28 15:52:18', '2020-09-28 15:52:18');
INSERT INTO `product_categories` VALUES (76, 333, '2020-09-28 15:52:43', '2020-09-28 15:52:43');
INSERT INTO `product_categories` VALUES (76, 334, '2020-09-28 15:53:11', '2020-09-28 15:53:11');
INSERT INTO `product_categories` VALUES (76, 335, '2020-09-28 15:53:39', '2020-09-28 15:53:39');
INSERT INTO `product_categories` VALUES (76, 336, '2020-09-28 15:54:12', '2020-09-28 15:54:12');
INSERT INTO `product_categories` VALUES (76, 337, '2020-09-28 15:54:26', '2020-09-28 15:54:26');
INSERT INTO `product_categories` VALUES (76, 338, '2020-09-28 15:54:42', '2020-09-28 15:54:42');
INSERT INTO `product_categories` VALUES (76, 339, '2020-09-28 15:55:15', '2020-09-28 15:55:15');
INSERT INTO `product_categories` VALUES (76, 340, '2020-09-28 15:55:34', '2020-09-28 15:55:34');
INSERT INTO `product_categories` VALUES (76, 341, '2020-09-28 15:55:50', '2020-09-28 15:55:50');
INSERT INTO `product_categories` VALUES (76, 342, '2020-09-28 15:56:04', '2020-09-28 15:56:04');
INSERT INTO `product_categories` VALUES (76, 343, '2020-09-28 15:56:20', '2020-09-28 15:56:20');
INSERT INTO `product_categories` VALUES (76, 344, '2020-09-28 15:57:00', '2020-09-28 15:57:00');
INSERT INTO `product_categories` VALUES (76, 345, '2020-09-28 15:57:14', '2020-09-28 15:57:14');
INSERT INTO `product_categories` VALUES (76, 346, '2020-09-28 15:58:11', '2020-09-28 15:58:11');
INSERT INTO `product_categories` VALUES (76, 347, '2020-09-28 15:58:32', '2020-09-28 15:58:32');
INSERT INTO `product_categories` VALUES (76, 348, '2020-09-28 15:58:58', '2020-09-28 15:58:58');
INSERT INTO `product_categories` VALUES (76, 349, '2020-09-28 15:59:14', '2020-09-28 15:59:14');
INSERT INTO `product_categories` VALUES (76, 350, '2020-09-28 15:59:31', '2020-09-28 15:59:31');
INSERT INTO `product_categories` VALUES (76, 351, '2020-09-28 15:59:52', '2020-09-28 15:59:52');
INSERT INTO `product_categories` VALUES (76, 352, '2020-09-28 16:00:19', '2020-09-28 16:00:19');
INSERT INTO `product_categories` VALUES (76, 353, '2020-09-28 16:00:31', '2020-09-28 16:00:31');
INSERT INTO `product_categories` VALUES (76, 354, '2020-09-28 16:00:48', '2020-09-28 16:00:48');
INSERT INTO `product_categories` VALUES (76, 355, '2020-09-28 16:01:03', '2020-09-28 16:01:03');
INSERT INTO `product_categories` VALUES (76, 356, '2020-09-28 16:01:17', '2020-09-28 16:01:17');
INSERT INTO `product_categories` VALUES (77, 321, '2020-09-28 15:47:54', '2020-09-28 15:47:54');
INSERT INTO `product_categories` VALUES (77, 322, '2020-09-28 15:48:17', '2020-09-28 15:48:17');
INSERT INTO `product_categories` VALUES (77, 323, '2020-09-28 15:48:34', '2020-09-28 15:48:34');
INSERT INTO `product_categories` VALUES (77, 324, '2020-09-28 15:48:50', '2020-09-28 15:48:50');
INSERT INTO `product_categories` VALUES (77, 325, '2020-09-28 15:49:04', '2020-09-28 15:49:04');
INSERT INTO `product_categories` VALUES (77, 326, '2020-09-28 15:49:28', '2020-09-28 15:49:28');
INSERT INTO `product_categories` VALUES (77, 327, '2020-09-28 15:49:53', '2020-09-28 15:49:53');
INSERT INTO `product_categories` VALUES (77, 328, '2020-09-28 15:50:08', '2020-09-28 15:50:08');
INSERT INTO `product_categories` VALUES (78, 329, '2020-09-28 15:50:35', '2020-09-28 15:50:35');
INSERT INTO `product_categories` VALUES (78, 330, '2020-09-28 15:51:08', '2020-09-28 15:51:08');
INSERT INTO `product_categories` VALUES (78, 331, '2020-09-28 15:51:41', '2020-09-28 15:51:41');
INSERT INTO `product_categories` VALUES (78, 332, '2020-09-28 15:52:18', '2020-09-28 15:52:18');
INSERT INTO `product_categories` VALUES (78, 333, '2020-09-28 15:52:43', '2020-09-28 15:52:43');
INSERT INTO `product_categories` VALUES (78, 334, '2020-09-28 15:53:11', '2020-09-28 15:53:11');
INSERT INTO `product_categories` VALUES (78, 335, '2020-09-28 15:53:39', '2020-09-28 15:53:39');
INSERT INTO `product_categories` VALUES (78, 336, '2020-09-28 15:54:12', '2020-09-28 15:54:12');
INSERT INTO `product_categories` VALUES (80, 349, '2020-09-28 15:59:15', '2020-09-28 15:59:15');
INSERT INTO `product_categories` VALUES (80, 350, '2020-09-28 15:59:31', '2020-09-28 15:59:31');
INSERT INTO `product_categories` VALUES (80, 351, '2020-09-28 15:59:52', '2020-09-28 15:59:52');
INSERT INTO `product_categories` VALUES (80, 352, '2020-09-28 16:00:20', '2020-09-28 16:00:20');
INSERT INTO `product_categories` VALUES (80, 353, '2020-09-28 16:00:32', '2020-09-28 16:00:32');
INSERT INTO `product_categories` VALUES (80, 354, '2020-09-28 16:00:49', '2020-09-28 16:00:49');
INSERT INTO `product_categories` VALUES (80, 355, '2020-09-28 16:01:04', '2020-09-28 16:01:04');
INSERT INTO `product_categories` VALUES (80, 356, '2020-09-28 16:01:17', '2020-09-28 16:01:17');
INSERT INTO `product_categories` VALUES (82, 357, '2020-09-28 16:01:39', '2020-09-28 16:01:39');
INSERT INTO `product_categories` VALUES (82, 358, '2020-09-28 16:02:07', '2020-09-28 16:02:07');
INSERT INTO `product_categories` VALUES (82, 359, '2020-09-28 16:02:26', '2020-09-28 16:02:26');
INSERT INTO `product_categories` VALUES (82, 360, '2020-09-28 16:02:55', '2020-09-28 16:02:55');
INSERT INTO `product_categories` VALUES (82, 361, '2020-09-28 16:03:11', '2020-09-28 16:03:11');
INSERT INTO `product_categories` VALUES (82, 362, '2020-09-28 16:03:46', '2020-09-28 16:03:46');
INSERT INTO `product_categories` VALUES (82, 363, '2020-09-28 16:04:23', '2020-09-28 16:04:23');
INSERT INTO `product_categories` VALUES (82, 364, '2020-09-28 16:04:56', '2020-09-28 16:04:56');
INSERT INTO `product_categories` VALUES (82, 365, '2020-09-28 16:05:29', '2020-09-28 16:05:29');
INSERT INTO `product_categories` VALUES (82, 366, '2020-09-28 16:05:53', '2020-09-28 16:05:53');
INSERT INTO `product_categories` VALUES (82, 367, '2020-09-28 16:06:22', '2020-09-28 16:06:22');
INSERT INTO `product_categories` VALUES (82, 368, '2020-09-28 16:06:42', '2020-09-28 16:06:42');
INSERT INTO `product_categories` VALUES (82, 369, '2020-09-28 16:07:05', '2020-09-28 16:07:05');
INSERT INTO `product_categories` VALUES (82, 370, '2020-09-28 16:07:20', '2020-09-28 16:07:20');
INSERT INTO `product_categories` VALUES (82, 371, '2020-09-28 16:07:40', '2020-09-28 16:07:40');
INSERT INTO `product_categories` VALUES (82, 372, '2020-09-28 16:08:31', '2020-09-28 16:08:31');
INSERT INTO `product_categories` VALUES (82, 373, '2020-09-28 16:08:50', '2020-09-28 16:08:50');
INSERT INTO `product_categories` VALUES (82, 374, '2020-09-28 16:09:22', '2020-09-28 16:09:22');
INSERT INTO `product_categories` VALUES (82, 375, '2020-09-28 16:09:53', '2020-09-28 16:09:53');
INSERT INTO `product_categories` VALUES (82, 376, '2020-09-28 16:10:39', '2020-09-28 16:10:39');
INSERT INTO `product_categories` VALUES (82, 377, '2020-09-28 16:11:18', '2020-09-28 16:11:18');
INSERT INTO `product_categories` VALUES (82, 378, '2020-09-28 16:11:53', '2020-09-28 16:11:53');
INSERT INTO `product_categories` VALUES (82, 379, '2020-09-28 16:12:17', '2020-09-28 16:12:17');
INSERT INTO `product_categories` VALUES (82, 380, '2020-09-28 16:12:36', '2020-09-28 16:12:36');
INSERT INTO `product_categories` VALUES (82, 381, '2020-09-28 16:13:05', '2020-09-28 16:13:05');
INSERT INTO `product_categories` VALUES (82, 3371, '2020-09-28 16:07:55', '2020-09-28 16:07:55');
INSERT INTO `product_categories` VALUES (83, 357, '2020-09-28 16:01:39', '2020-09-28 16:01:39');
INSERT INTO `product_categories` VALUES (83, 358, '2020-09-28 16:02:07', '2020-09-28 16:02:07');
INSERT INTO `product_categories` VALUES (83, 359, '2020-09-28 16:02:26', '2020-09-28 16:02:26');
INSERT INTO `product_categories` VALUES (83, 360, '2020-09-28 16:02:55', '2020-09-28 16:02:55');
INSERT INTO `product_categories` VALUES (83, 361, '2020-09-28 16:03:11', '2020-09-28 16:03:11');
INSERT INTO `product_categories` VALUES (83, 362, '2020-09-28 16:03:46', '2020-09-28 16:03:46');
INSERT INTO `product_categories` VALUES (83, 363, '2020-09-28 16:04:23', '2020-09-28 16:04:23');
INSERT INTO `product_categories` VALUES (83, 364, '2020-09-28 16:04:56', '2020-09-28 16:04:56');
INSERT INTO `product_categories` VALUES (84, 365, '2020-09-28 16:05:29', '2020-09-28 16:05:29');
INSERT INTO `product_categories` VALUES (84, 366, '2020-09-28 16:05:53', '2020-09-28 16:05:53');
INSERT INTO `product_categories` VALUES (84, 367, '2020-09-28 16:06:23', '2020-09-28 16:06:23');
INSERT INTO `product_categories` VALUES (84, 368, '2020-09-28 16:06:42', '2020-09-28 16:06:42');
INSERT INTO `product_categories` VALUES (84, 369, '2020-09-28 16:07:06', '2020-09-28 16:07:06');
INSERT INTO `product_categories` VALUES (85, 370, '2020-09-28 16:07:21', '2020-09-28 16:07:21');
INSERT INTO `product_categories` VALUES (85, 371, '2020-09-28 16:07:40', '2020-09-28 16:07:40');
INSERT INTO `product_categories` VALUES (85, 372, '2020-09-28 16:08:31', '2020-09-28 16:08:31');
INSERT INTO `product_categories` VALUES (85, 3371, '2020-09-28 16:07:55', '2020-09-28 16:07:55');
INSERT INTO `product_categories` VALUES (86, 373, '2020-09-28 16:08:51', '2020-09-28 16:08:51');
INSERT INTO `product_categories` VALUES (86, 374, '2020-09-28 16:09:22', '2020-09-28 16:09:22');
INSERT INTO `product_categories` VALUES (86, 375, '2020-09-28 16:09:54', '2020-09-28 16:09:54');
INSERT INTO `product_categories` VALUES (87, 376, '2020-09-28 16:10:40', '2020-09-28 16:10:40');
INSERT INTO `product_categories` VALUES (87, 377, '2020-09-28 16:11:18', '2020-09-28 16:11:18');
INSERT INTO `product_categories` VALUES (87, 378, '2020-09-28 16:11:53', '2020-09-28 16:11:53');
INSERT INTO `product_categories` VALUES (88, 379, '2020-09-28 16:12:17', '2020-09-28 16:12:17');
INSERT INTO `product_categories` VALUES (88, 380, '2020-09-28 16:12:36', '2020-09-28 16:12:36');
INSERT INTO `product_categories` VALUES (88, 381, '2020-09-28 16:13:05', '2020-09-28 16:13:05');
INSERT INTO `product_categories` VALUES (90, 382, '2020-09-28 16:13:37', '2020-09-28 16:13:37');
INSERT INTO `product_categories` VALUES (90, 383, '2020-09-28 16:14:02', '2020-09-28 16:14:02');
INSERT INTO `product_categories` VALUES (90, 384, '2020-09-28 16:14:27', '2020-09-28 16:14:27');
INSERT INTO `product_categories` VALUES (90, 385, '2020-09-28 16:15:00', '2020-09-28 16:15:00');
INSERT INTO `product_categories` VALUES (90, 386, '2020-09-28 16:15:29', '2020-09-28 16:15:29');
INSERT INTO `product_categories` VALUES (90, 387, '2020-09-28 16:15:54', '2020-09-28 16:15:54');
INSERT INTO `product_categories` VALUES (90, 388, '2020-09-28 16:16:29', '2020-09-28 16:16:29');
INSERT INTO `product_categories` VALUES (90, 389, '2020-09-28 16:16:49', '2020-09-28 16:16:49');
INSERT INTO `product_categories` VALUES (90, 390, '2020-09-28 16:17:06', '2020-09-28 16:17:06');
INSERT INTO `product_categories` VALUES (90, 391, '2020-09-28 16:17:53', '2020-09-28 16:17:53');
INSERT INTO `product_categories` VALUES (90, 392, '2020-09-28 16:18:23', '2020-09-28 16:18:23');
INSERT INTO `product_categories` VALUES (90, 393, '2020-09-28 16:18:54', '2020-09-28 16:18:54');
INSERT INTO `product_categories` VALUES (90, 394, '2020-09-28 16:19:19', '2020-09-28 16:19:19');
INSERT INTO `product_categories` VALUES (90, 395, '2020-09-28 16:19:49', '2020-09-28 16:19:49');
INSERT INTO `product_categories` VALUES (90, 396, '2020-09-28 16:20:16', '2020-09-28 16:20:16');
INSERT INTO `product_categories` VALUES (90, 397, '2020-09-28 16:20:31', '2020-09-28 16:20:31');
INSERT INTO `product_categories` VALUES (90, 398, '2020-09-28 16:21:07', '2020-09-28 16:21:07');
INSERT INTO `product_categories` VALUES (90, 399, '2020-09-28 16:21:25', '2020-09-28 16:21:25');
INSERT INTO `product_categories` VALUES (90, 400, '2020-09-28 16:21:35', '2020-09-28 16:21:35');
INSERT INTO `product_categories` VALUES (90, 401, '2020-09-28 16:22:09', '2020-09-28 16:22:09');
INSERT INTO `product_categories` VALUES (90, 402, '2020-09-28 16:22:30', '2020-09-28 16:22:30');
INSERT INTO `product_categories` VALUES (90, 403, '2020-09-28 16:22:49', '2020-09-28 16:22:49');
INSERT INTO `product_categories` VALUES (90, 404, '2020-09-28 16:23:16', '2020-09-28 16:23:16');
INSERT INTO `product_categories` VALUES (90, 405, '2020-09-28 16:23:41', '2020-09-28 16:23:41');
INSERT INTO `product_categories` VALUES (90, 406, '2020-09-28 16:24:13', '2020-09-28 16:24:13');
INSERT INTO `product_categories` VALUES (90, 407, '2020-09-28 16:25:00', '2020-09-28 16:25:00');
INSERT INTO `product_categories` VALUES (90, 408, '2020-09-28 16:25:30', '2020-09-28 16:25:30');
INSERT INTO `product_categories` VALUES (90, 409, '2020-09-28 16:25:55', '2020-09-28 16:25:55');
INSERT INTO `product_categories` VALUES (90, 410, '2020-09-28 16:26:29', '2020-09-28 16:26:29');
INSERT INTO `product_categories` VALUES (90, 411, '2020-09-28 16:26:52', '2020-09-28 16:26:52');
INSERT INTO `product_categories` VALUES (90, 412, '2020-09-28 16:27:16', '2020-09-28 16:27:16');
INSERT INTO `product_categories` VALUES (90, 413, '2020-09-28 16:27:34', '2020-09-28 16:27:34');
INSERT INTO `product_categories` VALUES (90, 414, '2020-09-28 16:27:47', '2020-09-28 16:27:47');
INSERT INTO `product_categories` VALUES (90, 415, '2020-09-28 16:28:21', '2020-09-28 16:28:21');
INSERT INTO `product_categories` VALUES (90, 416, '2020-09-28 16:28:38', '2020-09-28 16:28:38');
INSERT INTO `product_categories` VALUES (91, 382, '2020-09-28 16:13:37', '2020-09-28 16:13:37');
INSERT INTO `product_categories` VALUES (91, 383, '2020-09-28 16:14:02', '2020-09-28 16:14:02');
INSERT INTO `product_categories` VALUES (91, 384, '2020-09-28 16:14:27', '2020-09-28 16:14:27');
INSERT INTO `product_categories` VALUES (91, 385, '2020-09-28 16:15:01', '2020-09-28 16:15:01');
INSERT INTO `product_categories` VALUES (92, 386, '2020-09-28 16:15:29', '2020-09-28 16:15:29');
INSERT INTO `product_categories` VALUES (92, 387, '2020-09-28 16:15:54', '2020-09-28 16:15:54');
INSERT INTO `product_categories` VALUES (92, 388, '2020-09-28 16:16:29', '2020-09-28 16:16:29');
INSERT INTO `product_categories` VALUES (92, 389, '2020-09-28 16:16:49', '2020-09-28 16:16:49');
INSERT INTO `product_categories` VALUES (93, 390, '2020-09-28 16:17:06', '2020-09-28 16:17:06');
INSERT INTO `product_categories` VALUES (93, 391, '2020-09-28 16:17:53', '2020-09-28 16:17:53');
INSERT INTO `product_categories` VALUES (93, 392, '2020-09-28 16:18:23', '2020-09-28 16:18:23');
INSERT INTO `product_categories` VALUES (93, 393, '2020-09-28 16:18:54', '2020-09-28 16:18:54');
INSERT INTO `product_categories` VALUES (93, 394, '2020-09-28 16:19:19', '2020-09-28 16:19:19');
INSERT INTO `product_categories` VALUES (94, 395, '2020-09-28 16:19:49', '2020-09-28 16:19:49');
INSERT INTO `product_categories` VALUES (94, 396, '2020-09-28 16:20:17', '2020-09-28 16:20:17');
INSERT INTO `product_categories` VALUES (94, 397, '2020-09-28 16:20:31', '2020-09-28 16:20:31');
INSERT INTO `product_categories` VALUES (94, 398, '2020-09-28 16:21:07', '2020-09-28 16:21:07');
INSERT INTO `product_categories` VALUES (94, 399, '2020-09-28 16:21:25', '2020-09-28 16:21:25');
INSERT INTO `product_categories` VALUES (94, 400, '2020-09-28 16:21:35', '2020-09-28 16:21:35');
INSERT INTO `product_categories` VALUES (94, 401, '2020-09-28 16:22:09', '2020-09-28 16:22:09');
INSERT INTO `product_categories` VALUES (96, 407, '2020-09-28 16:25:00', '2020-09-28 16:25:00');
INSERT INTO `product_categories` VALUES (96, 408, '2020-09-28 16:25:31', '2020-09-28 16:25:31');
INSERT INTO `product_categories` VALUES (96, 409, '2020-09-28 16:25:56', '2020-09-28 16:25:56');
INSERT INTO `product_categories` VALUES (96, 410, '2020-09-28 16:26:29', '2020-09-28 16:26:29');
INSERT INTO `product_categories` VALUES (96, 411, '2020-09-28 16:26:52', '2020-09-28 16:26:52');
INSERT INTO `product_categories` VALUES (97, 412, '2020-09-28 16:27:16', '2020-09-28 16:27:16');
INSERT INTO `product_categories` VALUES (97, 413, '2020-09-28 16:27:34', '2020-09-28 16:27:34');
INSERT INTO `product_categories` VALUES (97, 414, '2020-09-28 16:27:48', '2020-09-28 16:27:48');
INSERT INTO `product_categories` VALUES (97, 415, '2020-09-28 16:28:21', '2020-09-28 16:28:21');
INSERT INTO `product_categories` VALUES (97, 416, '2020-09-28 16:28:39', '2020-09-28 16:28:39');
INSERT INTO `product_categories` VALUES (99, 417, '2020-09-28 16:28:56', '2020-09-28 16:28:56');
INSERT INTO `product_categories` VALUES (99, 418, '2020-09-28 16:29:12', '2020-09-28 16:29:12');
INSERT INTO `product_categories` VALUES (99, 419, '2020-09-28 16:29:31', '2020-09-28 16:29:31');
INSERT INTO `product_categories` VALUES (99, 420, '2020-09-28 16:29:46', '2020-09-28 16:29:46');
INSERT INTO `product_categories` VALUES (99, 421, '2020-09-28 16:30:07', '2020-09-28 16:30:07');
INSERT INTO `product_categories` VALUES (100, 422, '2020-09-28 16:30:27', '2020-09-28 16:30:27');
INSERT INTO `product_categories` VALUES (100, 423, '2020-09-28 16:30:42', '2020-09-28 16:30:42');
INSERT INTO `product_categories` VALUES (100, 424, '2020-09-28 16:31:06', '2020-09-28 16:31:06');
INSERT INTO `product_categories` VALUES (100, 425, '2020-09-28 16:31:27', '2020-09-28 16:31:27');
INSERT INTO `product_categories` VALUES (101, 426, '2020-09-28 16:31:54', '2020-09-28 16:31:54');
INSERT INTO `product_categories` VALUES (101, 427, '2020-09-28 16:32:11', '2020-09-28 16:32:11');
INSERT INTO `product_categories` VALUES (101, 428, '2020-09-28 16:32:35', '2020-09-28 16:32:35');
INSERT INTO `product_categories` VALUES (101, 429, '2020-09-28 16:32:58', '2020-09-28 16:32:58');
INSERT INTO `product_categories` VALUES (101, 430, '2020-09-28 16:33:11', '2020-09-28 16:33:11');
INSERT INTO `product_categories` VALUES (101, 431, '2020-09-28 16:33:37', '2020-09-28 16:33:37');
INSERT INTO `product_categories` VALUES (101, 458, '2020-09-28 16:43:44', '2020-09-28 16:43:44');
INSERT INTO `product_categories` VALUES (101, 459, '2020-09-28 16:44:02', '2020-09-28 16:44:02');
INSERT INTO `product_categories` VALUES (101, 460, '2020-09-28 16:44:28', '2020-09-28 16:44:28');
INSERT INTO `product_categories` VALUES (101, 461, '2020-09-28 16:44:59', '2020-09-28 16:44:59');
INSERT INTO `product_categories` VALUES (101, 462, '2020-09-28 16:45:12', '2020-09-28 16:45:12');
INSERT INTO `product_categories` VALUES (101, 463, '2020-09-28 16:45:50', '2020-09-28 16:45:50');
INSERT INTO `product_categories` VALUES (102, 432, '2020-09-28 16:33:57', '2020-09-28 16:33:57');
INSERT INTO `product_categories` VALUES (102, 433, '2020-09-28 16:34:39', '2020-09-28 16:34:39');
INSERT INTO `product_categories` VALUES (102, 434, '2020-09-28 16:34:58', '2020-09-28 16:34:58');
INSERT INTO `product_categories` VALUES (102, 435, '2020-09-28 16:35:39', '2020-09-28 16:35:39');
INSERT INTO `product_categories` VALUES (105, 436, '2020-09-28 16:36:04', '2020-09-28 16:36:04');
INSERT INTO `product_categories` VALUES (105, 437, '2020-09-28 16:36:25', '2020-09-28 16:36:25');
INSERT INTO `product_categories` VALUES (105, 438, '2020-09-28 16:36:42', '2020-09-28 16:36:42');
INSERT INTO `product_categories` VALUES (105, 451, '2020-09-28 16:41:24', '2020-09-28 16:41:24');
INSERT INTO `product_categories` VALUES (105, 452, '2020-09-28 16:41:33', '2020-09-28 16:41:33');
INSERT INTO `product_categories` VALUES (105, 453, '2020-09-28 16:41:41', '2020-09-28 16:41:41');
INSERT INTO `product_categories` VALUES (106, 439, '2020-09-28 16:37:01', '2020-09-28 16:37:01');
INSERT INTO `product_categories` VALUES (106, 440, '2020-09-28 16:37:13', '2020-09-28 16:37:13');
INSERT INTO `product_categories` VALUES (106, 441, '2020-09-28 16:37:29', '2020-09-28 16:37:29');
INSERT INTO `product_categories` VALUES (106, 442, '2020-09-28 16:37:45', '2020-09-28 16:37:45');
INSERT INTO `product_categories` VALUES (106, 443, '2020-09-28 16:38:07', '2020-09-28 16:38:07');
INSERT INTO `product_categories` VALUES (106, 444, '2020-09-28 16:38:49', '2020-09-28 16:38:49');
INSERT INTO `product_categories` VALUES (106, 445, '2020-09-28 16:39:16', '2020-09-28 16:39:16');
INSERT INTO `product_categories` VALUES (106, 446, '2020-09-28 16:39:32', '2020-09-28 16:39:32');
INSERT INTO `product_categories` VALUES (106, 447, '2020-09-28 16:39:51', '2020-09-28 16:39:51');
INSERT INTO `product_categories` VALUES (106, 448, '2020-09-28 16:40:13', '2020-09-28 16:40:13');
INSERT INTO `product_categories` VALUES (106, 449, '2020-09-28 16:40:26', '2020-09-28 16:40:26');
INSERT INTO `product_categories` VALUES (106, 450, '2020-09-28 16:40:55', '2020-09-28 16:40:55');
INSERT INTO `product_categories` VALUES (109, 454, '2020-09-28 16:41:55', '2020-09-28 16:41:55');
INSERT INTO `product_categories` VALUES (109, 455, '2020-09-28 16:42:20', '2020-09-28 16:42:20');
INSERT INTO `product_categories` VALUES (109, 456, '2020-09-28 16:42:41', '2020-09-28 16:42:41');
INSERT INTO `product_categories` VALUES (109, 457, '2020-09-28 16:43:23', '2020-09-28 16:43:23');
INSERT INTO `product_categories` VALUES (112, 670, '2020-09-28 18:34:33', '2020-09-28 18:34:33');
INSERT INTO `product_categories` VALUES (112, 671, '2020-09-28 18:34:51', '2020-09-28 18:34:51');
INSERT INTO `product_categories` VALUES (112, 672, '2020-09-28 18:35:11', '2020-09-28 18:35:11');
INSERT INTO `product_categories` VALUES (112, 673, '2020-09-28 18:35:28', '2020-09-28 18:35:28');
INSERT INTO `product_categories` VALUES (112, 674, '2020-09-28 18:35:42', '2020-09-28 18:35:42');
INSERT INTO `product_categories` VALUES (112, 675, '2020-09-28 18:35:55', '2020-09-28 18:35:55');
INSERT INTO `product_categories` VALUES (112, 676, '2020-09-28 18:36:11', '2020-09-28 18:36:11');
INSERT INTO `product_categories` VALUES (112, 677, '2020-09-28 18:36:30', '2020-09-28 18:36:30');
INSERT INTO `product_categories` VALUES (112, 678, '2020-09-28 18:36:44', '2020-09-28 18:36:44');
INSERT INTO `product_categories` VALUES (113, 679, '2020-09-28 18:37:00', '2020-09-28 18:37:00');
INSERT INTO `product_categories` VALUES (113, 680, '2020-09-28 18:37:25', '2020-09-28 18:37:25');
INSERT INTO `product_categories` VALUES (113, 681, '2020-09-28 18:37:40', '2020-09-28 18:37:40');
INSERT INTO `product_categories` VALUES (113, 682, '2020-09-28 18:37:54', '2020-09-28 18:37:54');
INSERT INTO `product_categories` VALUES (113, 683, '2020-09-28 18:38:13', '2020-09-28 18:38:13');
INSERT INTO `product_categories` VALUES (113, 684, '2020-09-28 18:38:32', '2020-09-28 18:38:32');
INSERT INTO `product_categories` VALUES (113, 685, '2020-09-28 18:38:49', '2020-09-28 18:38:49');
INSERT INTO `product_categories` VALUES (113, 686, '2020-09-28 18:39:09', '2020-09-28 18:39:09');
INSERT INTO `product_categories` VALUES (113, 687, '2020-09-28 18:39:27', '2020-09-28 18:39:27');
INSERT INTO `product_categories` VALUES (114, 688, '2020-09-28 18:39:51', '2020-09-28 18:39:51');
INSERT INTO `product_categories` VALUES (114, 689, '2020-09-28 18:40:19', '2020-09-28 18:40:19');
INSERT INTO `product_categories` VALUES (114, 690, '2020-09-28 18:40:39', '2020-09-28 18:40:39');
INSERT INTO `product_categories` VALUES (114, 691, '2020-09-28 18:40:59', '2020-09-28 18:40:59');
INSERT INTO `product_categories` VALUES (114, 692, '2020-09-28 18:41:16', '2020-09-28 18:41:16');
INSERT INTO `product_categories` VALUES (114, 693, '2020-09-28 18:41:35', '2020-09-28 18:41:35');
INSERT INTO `product_categories` VALUES (114, 694, '2020-09-28 18:41:56', '2020-09-28 18:41:56');
INSERT INTO `product_categories` VALUES (114, 695, '2020-09-28 18:42:14', '2020-09-28 18:42:14');
INSERT INTO `product_categories` VALUES (115, 696, '2020-09-28 18:42:31', '2020-09-28 18:42:31');
INSERT INTO `product_categories` VALUES (115, 697, '2020-09-28 18:42:53', '2020-09-28 18:42:53');
INSERT INTO `product_categories` VALUES (115, 698, '2020-09-28 18:43:09', '2020-09-28 18:43:09');
INSERT INTO `product_categories` VALUES (115, 699, '2020-09-28 18:43:40', '2020-09-28 18:43:40');
INSERT INTO `product_categories` VALUES (115, 700, '2020-09-28 18:43:58', '2020-09-28 18:43:58');
INSERT INTO `product_categories` VALUES (115, 701, '2020-09-28 18:44:20', '2020-09-28 18:44:20');
INSERT INTO `product_categories` VALUES (115, 702, '2020-09-28 18:44:36', '2020-09-28 18:44:36');
INSERT INTO `product_categories` VALUES (116, 703, '2020-09-28 18:44:55', '2020-09-28 18:44:55');
INSERT INTO `product_categories` VALUES (116, 704, '2020-09-28 18:45:16', '2020-09-28 18:45:16');
INSERT INTO `product_categories` VALUES (116, 705, '2020-09-28 18:45:32', '2020-09-28 18:45:32');
INSERT INTO `product_categories` VALUES (116, 706, '2020-09-28 18:45:46', '2020-09-28 18:45:46');
INSERT INTO `product_categories` VALUES (116, 707, '2020-09-28 18:46:08', '2020-09-28 18:46:08');
INSERT INTO `product_categories` VALUES (116, 708, '2020-09-28 18:46:21', '2020-09-28 18:46:21');
INSERT INTO `product_categories` VALUES (116, 709, '2020-09-28 18:46:41', '2020-09-28 18:46:41');
INSERT INTO `product_categories` VALUES (116, 710, '2020-09-28 18:47:00', '2020-09-28 18:47:00');
INSERT INTO `product_categories` VALUES (117, 711, '2020-09-28 18:47:25', '2020-09-28 18:47:25');
INSERT INTO `product_categories` VALUES (117, 712, '2020-09-28 18:47:49', '2020-09-28 18:47:49');
INSERT INTO `product_categories` VALUES (117, 713, '2020-09-28 18:48:04', '2020-09-28 18:48:04');
INSERT INTO `product_categories` VALUES (117, 714, '2020-09-28 18:48:24', '2020-09-28 18:48:24');
INSERT INTO `product_categories` VALUES (117, 715, '2020-09-28 18:48:37', '2020-09-28 18:48:37');
INSERT INTO `product_categories` VALUES (117, 716, '2020-09-28 18:48:58', '2020-09-28 18:48:58');
INSERT INTO `product_categories` VALUES (117, 717, '2020-09-28 18:49:20', '2020-09-28 18:49:20');
INSERT INTO `product_categories` VALUES (117, 718, '2020-09-28 18:49:38', '2020-09-28 18:49:38');
INSERT INTO `product_categories` VALUES (117, 719, '2020-09-28 18:49:55', '2020-09-28 18:49:55');
INSERT INTO `product_categories` VALUES (118, 720, '2020-09-28 18:50:12', '2020-09-28 18:50:12');
INSERT INTO `product_categories` VALUES (118, 721, '2020-09-28 18:50:26', '2020-09-28 18:50:26');
INSERT INTO `product_categories` VALUES (118, 722, '2020-09-28 18:50:42', '2020-09-28 18:50:42');
INSERT INTO `product_categories` VALUES (118, 723, '2020-09-28 18:50:55', '2020-09-28 18:50:55');
INSERT INTO `product_categories` VALUES (118, 724, '2020-09-28 18:51:11', '2020-09-28 18:51:11');
INSERT INTO `product_categories` VALUES (118, 726, '2020-09-28 18:51:39', '2020-09-28 18:51:39');
INSERT INTO `product_categories` VALUES (119, 730, '2020-09-28 18:51:55', '2020-09-28 18:51:55');
INSERT INTO `product_categories` VALUES (119, 731, '2020-09-28 18:52:10', '2020-09-28 18:52:10');
INSERT INTO `product_categories` VALUES (119, 732, '2020-09-28 18:52:22', '2020-09-28 18:52:22');
INSERT INTO `product_categories` VALUES (119, 733, '2020-09-28 18:52:37', '2020-09-28 18:52:37');
INSERT INTO `product_categories` VALUES (119, 734, '2020-09-28 18:52:48', '2020-09-28 18:52:48');
INSERT INTO `product_categories` VALUES (119, 735, '2020-09-28 18:52:58', '2020-09-28 18:52:58');
INSERT INTO `product_categories` VALUES (120, 571, '2020-09-28 17:25:31', '2020-09-28 17:25:31');
INSERT INTO `product_categories` VALUES (120, 572, '2020-09-28 17:25:42', '2020-09-28 17:25:42');
INSERT INTO `product_categories` VALUES (120, 573, '2020-09-28 17:25:53', '2020-09-28 17:25:53');
INSERT INTO `product_categories` VALUES (120, 574, '2020-09-28 17:26:05', '2020-09-28 17:26:05');
INSERT INTO `product_categories` VALUES (120, 575, '2020-09-28 17:26:18', '2020-09-28 17:26:18');
INSERT INTO `product_categories` VALUES (120, 576, '2020-09-28 17:26:31', '2020-09-28 17:26:31');
INSERT INTO `product_categories` VALUES (120, 577, '2020-09-28 17:26:42', '2020-09-28 17:26:42');
INSERT INTO `product_categories` VALUES (120, 578, '2020-09-28 17:26:52', '2020-09-28 17:26:52');
INSERT INTO `product_categories` VALUES (120, 579, '2020-09-28 17:27:04', '2020-09-28 17:27:04');
INSERT INTO `product_categories` VALUES (120, 580, '2020-09-28 17:27:14', '2020-09-28 17:27:14');
INSERT INTO `product_categories` VALUES (120, 581, '2020-09-28 17:27:25', '2020-09-28 17:27:25');
INSERT INTO `product_categories` VALUES (120, 582, '2020-09-28 17:27:35', '2020-09-28 17:27:35');
INSERT INTO `product_categories` VALUES (120, 583, '2020-09-28 17:27:46', '2020-09-28 17:27:46');
INSERT INTO `product_categories` VALUES (120, 585, '2020-09-28 17:28:03', '2020-09-28 17:28:03');
INSERT INTO `product_categories` VALUES (120, 586, '2020-09-28 17:28:21', '2020-09-28 17:28:21');
INSERT INTO `product_categories` VALUES (120, 587, '2020-09-28 17:28:38', '2020-09-28 17:28:38');
INSERT INTO `product_categories` VALUES (120, 588, '2020-09-28 17:28:53', '2020-09-28 17:28:53');
INSERT INTO `product_categories` VALUES (120, 589, '2020-09-28 17:29:07', '2020-09-28 17:29:07');
INSERT INTO `product_categories` VALUES (120, 590, '2020-09-28 17:29:26', '2020-09-28 17:29:26');
INSERT INTO `product_categories` VALUES (120, 591, '2020-09-28 17:29:41', '2020-09-28 17:29:41');
INSERT INTO `product_categories` VALUES (120, 592, '2020-09-28 17:30:01', '2020-09-28 17:30:01');
INSERT INTO `product_categories` VALUES (120, 593, '2020-09-28 17:30:15', '2020-09-28 17:30:15');
INSERT INTO `product_categories` VALUES (120, 594, '2020-09-28 17:30:31', '2020-09-28 17:30:31');
INSERT INTO `product_categories` VALUES (120, 595, '2020-09-28 17:30:47', '2020-09-28 17:30:47');
INSERT INTO `product_categories` VALUES (121, 571, '2020-09-28 17:25:32', '2020-09-28 17:25:32');
INSERT INTO `product_categories` VALUES (121, 572, '2020-09-28 17:25:42', '2020-09-28 17:25:42');
INSERT INTO `product_categories` VALUES (121, 573, '2020-09-28 17:25:54', '2020-09-28 17:25:54');
INSERT INTO `product_categories` VALUES (121, 574, '2020-09-28 17:26:06', '2020-09-28 17:26:06');
INSERT INTO `product_categories` VALUES (121, 575, '2020-09-28 17:26:18', '2020-09-28 17:26:18');
INSERT INTO `product_categories` VALUES (121, 576, '2020-09-28 17:26:31', '2020-09-28 17:26:31');
INSERT INTO `product_categories` VALUES (121, 577, '2020-09-28 17:26:43', '2020-09-28 17:26:43');
INSERT INTO `product_categories` VALUES (121, 578, '2020-09-28 17:26:53', '2020-09-28 17:26:53');
INSERT INTO `product_categories` VALUES (121, 579, '2020-09-28 17:27:04', '2020-09-28 17:27:04');
INSERT INTO `product_categories` VALUES (122, 586, '2020-09-28 17:28:21', '2020-09-28 17:28:21');
INSERT INTO `product_categories` VALUES (122, 587, '2020-09-28 17:28:38', '2020-09-28 17:28:38');
INSERT INTO `product_categories` VALUES (122, 588, '2020-09-28 17:28:53', '2020-09-28 17:28:53');
INSERT INTO `product_categories` VALUES (122, 589, '2020-09-28 17:29:07', '2020-09-28 17:29:07');
INSERT INTO `product_categories` VALUES (122, 590, '2020-09-28 17:29:26', '2020-09-28 17:29:26');
INSERT INTO `product_categories` VALUES (122, 591, '2020-09-28 17:29:41', '2020-09-28 17:29:41');
INSERT INTO `product_categories` VALUES (122, 592, '2020-09-28 17:30:02', '2020-09-28 17:30:02');
INSERT INTO `product_categories` VALUES (122, 593, '2020-09-28 17:30:15', '2020-09-28 17:30:15');
INSERT INTO `product_categories` VALUES (122, 594, '2020-09-28 17:30:31', '2020-09-28 17:30:31');
INSERT INTO `product_categories` VALUES (122, 595, '2020-09-28 17:30:47', '2020-09-28 17:30:47');
INSERT INTO `product_categories` VALUES (123, 580, '2020-09-28 17:27:14', '2020-09-28 17:27:14');
INSERT INTO `product_categories` VALUES (123, 581, '2020-09-28 17:27:26', '2020-09-28 17:27:26');
INSERT INTO `product_categories` VALUES (123, 582, '2020-09-28 17:27:35', '2020-09-28 17:27:35');
INSERT INTO `product_categories` VALUES (123, 583, '2020-09-28 17:27:46', '2020-09-28 17:27:46');
INSERT INTO `product_categories` VALUES (123, 585, '2020-09-28 17:28:03', '2020-09-28 17:28:03');
INSERT INTO `product_categories` VALUES (124, 596, '2020-09-28 17:31:05', '2020-09-28 17:31:05');
INSERT INTO `product_categories` VALUES (124, 597, '2020-09-28 17:31:25', '2020-09-28 17:31:25');
INSERT INTO `product_categories` VALUES (124, 598, '2020-09-28 17:31:40', '2020-09-28 17:31:40');
INSERT INTO `product_categories` VALUES (124, 599, '2020-09-28 17:31:51', '2020-09-28 17:31:51');
INSERT INTO `product_categories` VALUES (124, 600, '2020-09-28 17:32:05', '2020-09-28 17:32:05');
INSERT INTO `product_categories` VALUES (124, 601, '2020-09-28 17:32:15', '2020-09-28 17:32:15');
INSERT INTO `product_categories` VALUES (124, 602, '2020-09-28 17:32:25', '2020-09-28 17:32:25');
INSERT INTO `product_categories` VALUES (124, 603, '2020-09-28 17:32:37', '2020-09-28 17:32:37');
INSERT INTO `product_categories` VALUES (124, 604, '2020-09-28 17:32:49', '2020-09-28 17:32:49');
INSERT INTO `product_categories` VALUES (124, 605, '2020-09-28 17:32:59', '2020-09-28 17:32:59');
INSERT INTO `product_categories` VALUES (124, 606, '2020-09-28 17:33:09', '2020-09-28 17:33:09');
INSERT INTO `product_categories` VALUES (124, 607, '2020-09-28 17:33:20', '2020-09-28 17:33:20');
INSERT INTO `product_categories` VALUES (124, 608, '2020-09-28 17:33:31', '2020-09-28 17:33:31');
INSERT INTO `product_categories` VALUES (124, 609, '2020-09-28 17:33:39', '2020-09-28 17:33:39');
INSERT INTO `product_categories` VALUES (124, 610, '2020-09-28 17:33:51', '2020-09-28 17:33:51');
INSERT INTO `product_categories` VALUES (124, 611, '2020-09-28 17:34:05', '2020-09-28 17:34:05');
INSERT INTO `product_categories` VALUES (124, 612, '2020-09-28 17:34:21', '2020-09-28 17:34:21');
INSERT INTO `product_categories` VALUES (124, 613, '2020-09-28 17:34:36', '2020-09-28 17:34:36');
INSERT INTO `product_categories` VALUES (124, 614, '2020-09-28 17:34:53', '2020-09-28 17:34:53');
INSERT INTO `product_categories` VALUES (124, 615, '2020-09-28 17:35:04', '2020-09-28 17:35:04');
INSERT INTO `product_categories` VALUES (125, 596, '2020-09-28 17:31:05', '2020-09-28 17:31:05');
INSERT INTO `product_categories` VALUES (125, 597, '2020-09-28 17:31:25', '2020-09-28 17:31:25');
INSERT INTO `product_categories` VALUES (125, 598, '2020-09-28 17:31:40', '2020-09-28 17:31:40');
INSERT INTO `product_categories` VALUES (125, 599, '2020-09-28 17:31:52', '2020-09-28 17:31:52');
INSERT INTO `product_categories` VALUES (125, 600, '2020-09-28 17:32:05', '2020-09-28 17:32:05');
INSERT INTO `product_categories` VALUES (126, 601, '2020-09-28 17:32:15', '2020-09-28 17:32:15');
INSERT INTO `product_categories` VALUES (126, 602, '2020-09-28 17:32:25', '2020-09-28 17:32:25');
INSERT INTO `product_categories` VALUES (126, 603, '2020-09-28 17:32:38', '2020-09-28 17:32:38');
INSERT INTO `product_categories` VALUES (126, 604, '2020-09-28 17:32:49', '2020-09-28 17:32:49');
INSERT INTO `product_categories` VALUES (126, 605, '2020-09-28 17:32:59', '2020-09-28 17:32:59');
INSERT INTO `product_categories` VALUES (126, 606, '2020-09-28 17:33:10', '2020-09-28 17:33:10');
INSERT INTO `product_categories` VALUES (127, 607, '2020-09-28 17:33:20', '2020-09-28 17:33:20');
INSERT INTO `product_categories` VALUES (127, 608, '2020-09-28 17:33:31', '2020-09-28 17:33:31');
INSERT INTO `product_categories` VALUES (127, 609, '2020-09-28 17:33:39', '2020-09-28 17:33:39');
INSERT INTO `product_categories` VALUES (127, 610, '2020-09-28 17:33:51', '2020-09-28 17:33:51');
INSERT INTO `product_categories` VALUES (127, 611, '2020-09-28 17:34:05', '2020-09-28 17:34:05');
INSERT INTO `product_categories` VALUES (127, 612, '2020-09-28 17:34:21', '2020-09-28 17:34:21');
INSERT INTO `product_categories` VALUES (127, 613, '2020-09-28 17:34:36', '2020-09-28 17:34:36');
INSERT INTO `product_categories` VALUES (127, 614, '2020-09-28 17:34:53', '2020-09-28 17:34:53');
INSERT INTO `product_categories` VALUES (127, 615, '2020-09-28 17:35:04', '2020-09-28 17:35:04');
INSERT INTO `product_categories` VALUES (128, 616, '2020-09-28 17:35:23', '2020-09-28 17:35:23');
INSERT INTO `product_categories` VALUES (128, 617, '2020-09-28 17:35:40', '2020-09-28 17:35:40');
INSERT INTO `product_categories` VALUES (128, 618, '2020-09-28 17:35:54', '2020-09-28 17:35:54');
INSERT INTO `product_categories` VALUES (128, 619, '2020-09-28 17:36:05', '2020-09-28 17:36:05');
INSERT INTO `product_categories` VALUES (128, 620, '2020-09-28 17:36:14', '2020-09-28 17:36:14');
INSERT INTO `product_categories` VALUES (128, 621, '2020-09-28 17:36:29', '2020-09-28 17:36:29');
INSERT INTO `product_categories` VALUES (128, 622, '2020-09-28 17:36:43', '2020-09-28 17:36:43');
INSERT INTO `product_categories` VALUES (128, 623, '2020-09-28 17:37:01', '2020-09-28 17:37:01');
INSERT INTO `product_categories` VALUES (128, 624, '2020-09-28 17:37:12', '2020-09-28 17:37:12');
INSERT INTO `product_categories` VALUES (128, 625, '2020-09-28 17:37:23', '2020-09-28 17:37:23');
INSERT INTO `product_categories` VALUES (128, 626, '2020-09-28 17:37:40', '2020-09-28 17:37:40');
INSERT INTO `product_categories` VALUES (128, 627, '2020-09-28 17:37:52', '2020-09-28 17:37:52');
INSERT INTO `product_categories` VALUES (128, 628, '2020-09-28 17:38:03', '2020-09-28 17:38:03');
INSERT INTO `product_categories` VALUES (128, 629, '2020-09-28 17:38:15', '2020-09-28 17:38:15');
INSERT INTO `product_categories` VALUES (128, 630, '2020-09-28 17:38:31', '2020-09-28 17:38:31');
INSERT INTO `product_categories` VALUES (128, 631, '2020-09-28 17:38:42', '2020-09-28 17:38:42');
INSERT INTO `product_categories` VALUES (128, 632, '2020-09-28 17:38:54', '2020-09-28 17:38:54');
INSERT INTO `product_categories` VALUES (128, 633, '2020-09-28 17:39:07', '2020-09-28 17:39:07');
INSERT INTO `product_categories` VALUES (128, 634, '2020-09-28 17:39:23', '2020-09-28 17:39:23');
INSERT INTO `product_categories` VALUES (128, 635, '2020-09-28 17:39:33', '2020-09-28 17:39:33');
INSERT INTO `product_categories` VALUES (128, 636, '2020-09-28 17:39:42', '2020-09-28 17:39:42');
INSERT INTO `product_categories` VALUES (128, 637, '2020-09-28 17:39:53', '2020-09-28 17:39:53');
INSERT INTO `product_categories` VALUES (128, 638, '2020-09-28 17:40:07', '2020-09-28 17:40:07');
INSERT INTO `product_categories` VALUES (128, 639, '2020-09-28 17:40:19', '2020-09-28 17:40:19');
INSERT INTO `product_categories` VALUES (128, 640, '2020-09-28 17:40:34', '2020-09-28 17:40:34');
INSERT INTO `product_categories` VALUES (128, 641, '2020-09-28 17:40:45', '2020-09-28 17:40:45');
INSERT INTO `product_categories` VALUES (128, 642, '2020-09-28 17:40:58', '2020-09-28 17:40:58');
INSERT INTO `product_categories` VALUES (128, 643, '2020-09-28 17:41:11', '2020-09-28 17:41:11');
INSERT INTO `product_categories` VALUES (128, 644, '2020-09-28 17:41:21', '2020-09-28 17:41:21');
INSERT INTO `product_categories` VALUES (128, 645, '2020-09-28 17:41:32', '2020-09-28 17:41:32');
INSERT INTO `product_categories` VALUES (128, 646, '2020-09-28 17:41:46', '2020-09-28 17:41:46');
INSERT INTO `product_categories` VALUES (129, 616, '2020-09-28 17:35:24', '2020-09-28 17:35:24');
INSERT INTO `product_categories` VALUES (129, 617, '2020-09-28 17:35:40', '2020-09-28 17:35:40');
INSERT INTO `product_categories` VALUES (129, 618, '2020-09-28 17:35:54', '2020-09-28 17:35:54');
INSERT INTO `product_categories` VALUES (129, 619, '2020-09-28 17:36:05', '2020-09-28 17:36:05');
INSERT INTO `product_categories` VALUES (129, 620, '2020-09-28 17:36:14', '2020-09-28 17:36:14');
INSERT INTO `product_categories` VALUES (129, 621, '2020-09-28 17:36:29', '2020-09-28 17:36:29');
INSERT INTO `product_categories` VALUES (129, 622, '2020-09-28 17:36:43', '2020-09-28 17:36:43');
INSERT INTO `product_categories` VALUES (129, 623, '2020-09-28 17:37:01', '2020-09-28 17:37:01');
INSERT INTO `product_categories` VALUES (129, 624, '2020-09-28 17:37:12', '2020-09-28 17:37:12');
INSERT INTO `product_categories` VALUES (129, 625, '2020-09-28 17:37:23', '2020-09-28 17:37:23');
INSERT INTO `product_categories` VALUES (129, 626, '2020-09-28 17:37:40', '2020-09-28 17:37:40');
INSERT INTO `product_categories` VALUES (130, 627, '2020-09-28 17:37:52', '2020-09-28 17:37:52');
INSERT INTO `product_categories` VALUES (130, 628, '2020-09-28 17:38:03', '2020-09-28 17:38:03');
INSERT INTO `product_categories` VALUES (130, 629, '2020-09-28 17:38:15', '2020-09-28 17:38:15');
INSERT INTO `product_categories` VALUES (130, 630, '2020-09-28 17:38:31', '2020-09-28 17:38:31');
INSERT INTO `product_categories` VALUES (130, 631, '2020-09-28 17:38:43', '2020-09-28 17:38:43');
INSERT INTO `product_categories` VALUES (130, 632, '2020-09-28 17:38:54', '2020-09-28 17:38:54');
INSERT INTO `product_categories` VALUES (130, 633, '2020-09-28 17:39:07', '2020-09-28 17:39:07');
INSERT INTO `product_categories` VALUES (130, 634, '2020-09-28 17:39:23', '2020-09-28 17:39:23');
INSERT INTO `product_categories` VALUES (130, 635, '2020-09-28 17:39:34', '2020-09-28 17:39:34');
INSERT INTO `product_categories` VALUES (130, 637, '2020-09-28 17:39:53', '2020-09-28 17:39:53');
INSERT INTO `product_categories` VALUES (131, 636, '2020-09-28 17:39:42', '2020-09-28 17:39:42');
INSERT INTO `product_categories` VALUES (131, 638, '2020-09-28 17:40:07', '2020-09-28 17:40:07');
INSERT INTO `product_categories` VALUES (131, 639, '2020-09-28 17:40:19', '2020-09-28 17:40:19');
INSERT INTO `product_categories` VALUES (131, 640, '2020-09-28 17:40:34', '2020-09-28 17:40:34');
INSERT INTO `product_categories` VALUES (131, 641, '2020-09-28 17:40:45', '2020-09-28 17:40:45');
INSERT INTO `product_categories` VALUES (131, 642, '2020-09-28 17:40:58', '2020-09-28 17:40:58');
INSERT INTO `product_categories` VALUES (131, 643, '2020-09-28 17:41:11', '2020-09-28 17:41:11');
INSERT INTO `product_categories` VALUES (131, 644, '2020-09-28 17:41:21', '2020-09-28 17:41:21');
INSERT INTO `product_categories` VALUES (131, 645, '2020-09-28 17:41:32', '2020-09-28 17:41:32');
INSERT INTO `product_categories` VALUES (131, 646, '2020-09-28 17:41:46', '2020-09-28 17:41:46');
INSERT INTO `product_categories` VALUES (132, 647, '2020-09-28 17:42:00', '2020-09-28 17:42:00');
INSERT INTO `product_categories` VALUES (132, 648, '2020-09-28 17:42:08', '2020-09-28 17:42:08');
INSERT INTO `product_categories` VALUES (132, 649, '2020-09-28 17:42:25', '2020-09-28 17:42:25');
INSERT INTO `product_categories` VALUES (132, 650, '2020-09-28 17:42:37', '2020-09-28 17:42:37');
INSERT INTO `product_categories` VALUES (132, 651, '2020-09-28 17:42:48', '2020-09-28 17:42:48');
INSERT INTO `product_categories` VALUES (132, 652, '2020-09-28 17:42:58', '2020-09-28 17:42:58');
INSERT INTO `product_categories` VALUES (132, 653, '2020-09-28 17:43:08', '2020-09-28 17:43:08');
INSERT INTO `product_categories` VALUES (132, 654, '2020-09-28 17:43:18', '2020-09-28 17:43:18');
INSERT INTO `product_categories` VALUES (132, 655, '2020-09-28 17:43:29', '2020-09-28 17:43:29');
INSERT INTO `product_categories` VALUES (132, 656, '2020-09-28 17:43:38', '2020-09-28 17:43:38');
INSERT INTO `product_categories` VALUES (132, 657, '2020-09-28 17:43:49', '2020-09-28 17:43:49');
INSERT INTO `product_categories` VALUES (132, 658, '2020-09-28 17:43:59', '2020-09-28 17:43:59');
INSERT INTO `product_categories` VALUES (132, 659, '2020-09-28 17:44:08', '2020-09-28 17:44:08');
INSERT INTO `product_categories` VALUES (132, 660, '2020-09-28 17:44:20', '2020-09-28 17:44:20');
INSERT INTO `product_categories` VALUES (132, 661, '2020-09-28 17:44:28', '2020-09-28 17:44:28');
INSERT INTO `product_categories` VALUES (132, 662, '2020-09-28 17:44:37', '2020-09-28 17:44:37');
INSERT INTO `product_categories` VALUES (132, 663, '2020-09-28 17:44:50', '2020-09-28 17:44:50');
INSERT INTO `product_categories` VALUES (132, 664, '2020-09-28 17:45:08', '2020-09-28 17:45:08');
INSERT INTO `product_categories` VALUES (132, 665, '2020-09-28 17:45:21', '2020-09-28 17:45:21');
INSERT INTO `product_categories` VALUES (132, 666, '2020-09-28 17:45:38', '2020-09-28 17:45:38');
INSERT INTO `product_categories` VALUES (132, 667, '2020-09-28 17:45:49', '2020-09-28 17:45:49');
INSERT INTO `product_categories` VALUES (132, 668, '2020-09-28 17:46:08', '2020-09-28 17:46:08');
INSERT INTO `product_categories` VALUES (132, 669, '2020-09-28 17:46:19', '2020-09-28 17:46:19');
INSERT INTO `product_categories` VALUES (133, 647, '2020-09-28 17:42:00', '2020-09-28 17:42:00');
INSERT INTO `product_categories` VALUES (133, 648, '2020-09-28 17:42:09', '2020-09-28 17:42:09');
INSERT INTO `product_categories` VALUES (133, 649, '2020-09-28 17:42:25', '2020-09-28 17:42:25');
INSERT INTO `product_categories` VALUES (133, 650, '2020-09-28 17:42:37', '2020-09-28 17:42:37');
INSERT INTO `product_categories` VALUES (133, 651, '2020-09-28 17:42:48', '2020-09-28 17:42:48');
INSERT INTO `product_categories` VALUES (133, 652, '2020-09-28 17:42:59', '2020-09-28 17:42:59');
INSERT INTO `product_categories` VALUES (133, 653, '2020-09-28 17:43:08', '2020-09-28 17:43:08');
INSERT INTO `product_categories` VALUES (133, 654, '2020-09-28 17:43:18', '2020-09-28 17:43:18');
INSERT INTO `product_categories` VALUES (134, 655, '2020-09-28 17:43:30', '2020-09-28 17:43:30');
INSERT INTO `product_categories` VALUES (134, 656, '2020-09-28 17:43:38', '2020-09-28 17:43:38');
INSERT INTO `product_categories` VALUES (134, 657, '2020-09-28 17:43:49', '2020-09-28 17:43:49');
INSERT INTO `product_categories` VALUES (134, 658, '2020-09-28 17:43:59', '2020-09-28 17:43:59');
INSERT INTO `product_categories` VALUES (134, 659, '2020-09-28 17:44:08', '2020-09-28 17:44:08');
INSERT INTO `product_categories` VALUES (134, 660, '2020-09-28 17:44:20', '2020-09-28 17:44:20');
INSERT INTO `product_categories` VALUES (134, 661, '2020-09-28 17:44:28', '2020-09-28 17:44:28');
INSERT INTO `product_categories` VALUES (134, 662, '2020-09-28 17:44:38', '2020-09-28 17:44:38');
INSERT INTO `product_categories` VALUES (135, 663, '2020-09-28 17:44:50', '2020-09-28 17:44:50');
INSERT INTO `product_categories` VALUES (135, 664, '2020-09-28 17:45:08', '2020-09-28 17:45:08');
INSERT INTO `product_categories` VALUES (135, 665, '2020-09-28 17:45:21', '2020-09-28 17:45:21');
INSERT INTO `product_categories` VALUES (135, 666, '2020-09-28 17:45:38', '2020-09-28 17:45:38');
INSERT INTO `product_categories` VALUES (135, 667, '2020-09-28 17:45:49', '2020-09-28 17:45:49');
INSERT INTO `product_categories` VALUES (135, 668, '2020-09-28 17:46:08', '2020-09-28 17:46:08');
INSERT INTO `product_categories` VALUES (135, 669, '2020-09-28 17:46:19', '2020-09-28 17:46:19');
INSERT INTO `product_categories` VALUES (1001, 773, '2020-09-28 18:55:08', '2020-09-28 18:55:08');
INSERT INTO `product_categories` VALUES (1001, 774, '2020-09-28 18:55:12', '2020-09-28 18:55:12');
INSERT INTO `product_categories` VALUES (1001, 775, '2020-09-28 18:55:15', '2020-09-28 18:55:15');
INSERT INTO `product_categories` VALUES (1001, 776, '2020-09-28 18:55:17', '2020-09-28 18:55:17');
INSERT INTO `product_categories` VALUES (1001, 777, '2020-09-28 18:55:23', '2020-09-28 18:55:23');
INSERT INTO `product_categories` VALUES (1002, 778, '2020-09-28 18:55:26', '2020-09-28 18:55:26');
INSERT INTO `product_categories` VALUES (1002, 779, '2020-09-28 18:55:29', '2020-09-28 18:55:29');
INSERT INTO `product_categories` VALUES (1002, 780, '2020-09-28 18:55:32', '2020-09-28 18:55:32');
INSERT INTO `product_categories` VALUES (1002, 781, '2020-09-28 18:55:34', '2020-09-28 18:55:34');
INSERT INTO `product_categories` VALUES (1002, 782, '2020-09-28 18:55:41', '2020-09-28 18:55:41');
INSERT INTO `product_categories` VALUES (1003, 783, '2020-09-28 18:55:44', '2020-09-28 18:55:44');
INSERT INTO `product_categories` VALUES (1003, 784, '2020-09-28 18:55:48', '2020-09-28 18:55:48');
INSERT INTO `product_categories` VALUES (1003, 785, '2020-09-28 18:55:51', '2020-09-28 18:55:51');
INSERT INTO `product_categories` VALUES (1003, 786, '2020-09-28 18:55:54', '2020-09-28 18:55:54');
INSERT INTO `product_categories` VALUES (1003, 787, '2020-09-28 18:55:58', '2020-09-28 18:55:58');
INSERT INTO `product_categories` VALUES (1004, 788, '2020-09-28 18:56:01', '2020-09-28 18:56:01');
INSERT INTO `product_categories` VALUES (1004, 789, '2020-09-28 18:56:05', '2020-09-28 18:56:05');
INSERT INTO `product_categories` VALUES (1004, 790, '2020-09-28 18:56:08', '2020-09-28 18:56:08');
INSERT INTO `product_categories` VALUES (1004, 791, '2020-09-28 18:56:10', '2020-09-28 18:56:10');
INSERT INTO `product_categories` VALUES (1004, 792, '2020-09-28 18:56:12', '2020-09-28 18:56:12');
INSERT INTO `product_categories` VALUES (1005, 760, '2020-09-28 18:54:18', '2020-09-28 18:54:18');
INSERT INTO `product_categories` VALUES (1005, 761, '2020-09-28 18:54:21', '2020-09-28 18:54:21');
INSERT INTO `product_categories` VALUES (1005, 762, '2020-09-28 18:54:24', '2020-09-28 18:54:24');
INSERT INTO `product_categories` VALUES (1005, 763, '2020-09-28 18:54:27', '2020-09-28 18:54:27');
INSERT INTO `product_categories` VALUES (1005, 764, '2020-09-28 18:54:29', '2020-09-28 18:54:29');
INSERT INTO `product_categories` VALUES (1005, 765, '2020-09-28 18:54:45', '2020-09-28 18:54:45');
INSERT INTO `product_categories` VALUES (1005, 766, '2020-09-28 18:54:47', '2020-09-28 18:54:47');
INSERT INTO `product_categories` VALUES (1007, 737, '2020-09-28 18:53:02', '2020-09-28 18:53:02');
INSERT INTO `product_categories` VALUES (1007, 740, '2020-09-28 18:53:05', '2020-09-28 18:53:05');
INSERT INTO `product_categories` VALUES (1007, 741, '2020-09-28 18:53:10', '2020-09-28 18:53:10');
INSERT INTO `product_categories` VALUES (1007, 742, '2020-09-28 18:53:13', '2020-09-28 18:53:13');
INSERT INTO `product_categories` VALUES (1007, 743, '2020-09-28 18:53:17', '2020-09-28 18:53:17');
INSERT INTO `product_categories` VALUES (1007, 744, '2020-09-28 18:53:21', '2020-09-28 18:53:21');
INSERT INTO `product_categories` VALUES (1007, 745, '2020-09-28 18:53:24', '2020-09-28 18:53:24');
INSERT INTO `product_categories` VALUES (1007, 746, '2020-09-28 18:53:26', '2020-09-28 18:53:26');
INSERT INTO `product_categories` VALUES (1007, 747, '2020-09-28 18:53:29', '2020-09-28 18:53:29');
INSERT INTO `product_categories` VALUES (1007, 748, '2020-09-28 18:53:34', '2020-09-28 18:53:34');
INSERT INTO `product_categories` VALUES (1007, 749, '2020-09-28 18:53:38', '2020-09-28 18:53:38');
INSERT INTO `product_categories` VALUES (1007, 750, '2020-09-28 18:53:40', '2020-09-28 18:53:40');
INSERT INTO `product_categories` VALUES (1007, 751, '2020-09-28 18:53:44', '2020-09-28 18:53:44');
INSERT INTO `product_categories` VALUES (1007, 752, '2020-09-28 18:53:49', '2020-09-28 18:53:49');
INSERT INTO `product_categories` VALUES (1007, 753, '2020-09-28 18:53:51', '2020-09-28 18:53:51');
INSERT INTO `product_categories` VALUES (1007, 754, '2020-09-28 18:53:55', '2020-09-28 18:53:55');
INSERT INTO `product_categories` VALUES (1007, 755, '2020-09-28 18:53:59', '2020-09-28 18:53:59');
INSERT INTO `product_categories` VALUES (1007, 756, '2020-09-28 18:54:02', '2020-09-28 18:54:02');
INSERT INTO `product_categories` VALUES (1007, 757, '2020-09-28 18:54:07', '2020-09-28 18:54:07');
INSERT INTO `product_categories` VALUES (1007, 758, '2020-09-28 18:54:11', '2020-09-28 18:54:11');
INSERT INTO `product_categories` VALUES (1007, 759, '2020-09-28 18:54:15', '2020-09-28 18:54:15');
INSERT INTO `product_categories` VALUES (1008, 745, '2020-09-28 18:53:24', '2020-09-28 18:53:24');
INSERT INTO `product_categories` VALUES (1008, 746, '2020-09-28 18:53:27', '2020-09-28 18:53:27');
INSERT INTO `product_categories` VALUES (1008, 747, '2020-09-28 18:53:29', '2020-09-28 18:53:29');
INSERT INTO `product_categories` VALUES (1008, 748, '2020-09-28 18:53:34', '2020-09-28 18:53:34');
INSERT INTO `product_categories` VALUES (1008, 749, '2020-09-28 18:53:38', '2020-09-28 18:53:38');
INSERT INTO `product_categories` VALUES (1008, 750, '2020-09-28 18:53:41', '2020-09-28 18:53:41');
INSERT INTO `product_categories` VALUES (1009, 737, '2020-09-28 18:53:02', '2020-09-28 18:53:02');
INSERT INTO `product_categories` VALUES (1009, 740, '2020-09-28 18:53:05', '2020-09-28 18:53:05');
INSERT INTO `product_categories` VALUES (1009, 741, '2020-09-28 18:53:10', '2020-09-28 18:53:10');
INSERT INTO `product_categories` VALUES (1009, 742, '2020-09-28 18:53:13', '2020-09-28 18:53:13');
INSERT INTO `product_categories` VALUES (1009, 743, '2020-09-28 18:53:18', '2020-09-28 18:53:18');
INSERT INTO `product_categories` VALUES (1009, 744, '2020-09-28 18:53:21', '2020-09-28 18:53:21');
INSERT INTO `product_categories` VALUES (1011, 755, '2020-09-28 18:53:59', '2020-09-28 18:53:59');
INSERT INTO `product_categories` VALUES (1011, 756, '2020-09-28 18:54:02', '2020-09-28 18:54:02');
INSERT INTO `product_categories` VALUES (1011, 757, '2020-09-28 18:54:07', '2020-09-28 18:54:07');
INSERT INTO `product_categories` VALUES (1011, 758, '2020-09-28 18:54:11', '2020-09-28 18:54:11');
INSERT INTO `product_categories` VALUES (1011, 759, '2020-09-28 18:54:15', '2020-09-28 18:54:15');

-- ----------------------------
-- Table structure for product_statuses
-- ----------------------------
DROP TABLE IF EXISTS `product_statuses`;
CREATE TABLE `product_statuses`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `inserted_at` timestamp(0) NOT NULL,
  `updated_at` timestamp(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_statuses
-- ----------------------------

-- ----------------------------
-- Table structure for product_tags
-- ----------------------------
DROP TABLE IF EXISTS `product_tags`;
CREATE TABLE `product_tags`  (
  `product_id` int(0) NOT NULL,
  `tag_id` int(0) NULL DEFAULT NULL,
  `inserted_at` timestamp(0) NOT NULL,
  `updated_at` timestamp(0) NOT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_tags
-- ----------------------------
INSERT INTO `product_tags` VALUES (8, 1, '2020-09-28 13:46:13', '2020-09-28 13:46:13');
INSERT INTO `product_tags` VALUES (9, 1, '2020-09-28 13:46:20', '2020-09-28 13:46:20');
INSERT INTO `product_tags` VALUES (10, 1, '2020-09-28 13:46:25', '2020-09-28 13:46:25');
INSERT INTO `product_tags` VALUES (11, 1, '2020-09-28 13:46:30', '2020-09-28 13:46:30');
INSERT INTO `product_tags` VALUES (12, 1, '2020-09-28 13:46:33', '2020-09-28 13:46:33');
INSERT INTO `product_tags` VALUES (13, 1, '2020-09-28 13:46:38', '2020-09-28 13:46:38');
INSERT INTO `product_tags` VALUES (14, 1, '2020-09-28 13:46:42', '2020-09-28 13:46:42');
INSERT INTO `product_tags` VALUES (15, 1, '2020-09-28 13:46:48', '2020-09-28 13:46:48');
INSERT INTO `product_tags` VALUES (16, 1, '2020-09-28 13:46:51', '2020-09-28 13:46:51');
INSERT INTO `product_tags` VALUES (17, 1, '2020-09-28 13:46:57', '2020-09-28 13:46:57');
INSERT INTO `product_tags` VALUES (18, 1, '2020-09-28 13:47:01', '2020-09-28 13:47:01');
INSERT INTO `product_tags` VALUES (19, 1, '2020-09-28 13:47:07', '2020-09-28 13:47:07');
INSERT INTO `product_tags` VALUES (20, 1, '2020-09-28 13:47:11', '2020-09-28 13:47:11');
INSERT INTO `product_tags` VALUES (1, 1, '2020-09-28 13:47:14', '2020-09-28 13:47:14');
INSERT INTO `product_tags` VALUES (2, 1, '2020-09-28 13:47:18', '2020-09-28 13:47:18');
INSERT INTO `product_tags` VALUES (3, 1, '2020-09-28 13:47:21', '2020-09-28 13:47:21');
INSERT INTO `product_tags` VALUES (4, 1, '2020-09-28 13:47:25', '2020-09-28 13:47:25');
INSERT INTO `product_tags` VALUES (5, 1, '2020-09-28 13:47:28', '2020-09-28 13:47:28');
INSERT INTO `product_tags` VALUES (6, 1, '2020-09-28 13:47:36', '2020-09-28 13:47:36');
INSERT INTO `product_tags` VALUES (7, 1, '2020-09-28 13:47:40', '2020-09-28 13:47:40');
INSERT INTO `product_tags` VALUES (21, 1, '2020-09-28 13:47:45', '2020-09-28 13:47:45');
INSERT INTO `product_tags` VALUES (22, 1, '2020-09-28 13:47:49', '2020-09-28 13:47:49');
INSERT INTO `product_tags` VALUES (23, 1, '2020-09-28 13:47:52', '2020-09-28 13:47:52');
INSERT INTO `product_tags` VALUES (24, 1, '2020-09-28 13:47:57', '2020-09-28 13:47:57');
INSERT INTO `product_tags` VALUES (25, 1, '2020-09-28 13:48:02', '2020-09-28 13:48:02');
INSERT INTO `product_tags` VALUES (26, 1, '2020-09-28 13:48:06', '2020-09-28 13:48:06');
INSERT INTO `product_tags` VALUES (27, 1, '2020-09-28 13:48:11', '2020-09-28 13:48:11');
INSERT INTO `product_tags` VALUES (28, 1, '2020-09-28 13:48:18', '2020-09-28 13:48:18');
INSERT INTO `product_tags` VALUES (29, 1, '2020-09-28 13:48:22', '2020-09-28 13:48:22');
INSERT INTO `product_tags` VALUES (30, 1, '2020-09-28 13:48:26', '2020-09-28 13:48:26');
INSERT INTO `product_tags` VALUES (35, 2, '2020-09-28 13:48:50', '2020-09-28 13:48:50');
INSERT INTO `product_tags` VALUES (36, 2, '2020-09-28 13:49:12', '2020-09-28 13:49:12');
INSERT INTO `product_tags` VALUES (37, 2, '2020-09-28 13:49:27', '2020-09-28 13:49:27');
INSERT INTO `product_tags` VALUES (38, 2, '2020-09-28 13:49:55', '2020-09-28 13:49:55');
INSERT INTO `product_tags` VALUES (39, 2, '2020-09-28 13:50:07', '2020-09-28 13:50:07');
INSERT INTO `product_tags` VALUES (40, 2, '2020-09-28 13:50:25', '2020-09-28 13:50:25');
INSERT INTO `product_tags` VALUES (41, 2, '2020-09-28 13:50:40', '2020-09-28 13:50:40');
INSERT INTO `product_tags` VALUES (42, 2, '2020-09-28 13:50:59', '2020-09-28 13:50:59');
INSERT INTO `product_tags` VALUES (43, 2, '2020-09-28 13:51:12', '2020-09-28 13:51:12');
INSERT INTO `product_tags` VALUES (44, 2, '2020-09-28 13:51:28', '2020-09-28 13:51:28');
INSERT INTO `product_tags` VALUES (45, 2, '2020-09-28 13:51:41', '2020-09-28 13:51:41');
INSERT INTO `product_tags` VALUES (46, 2, '2020-09-28 13:51:55', '2020-09-28 13:51:55');
INSERT INTO `product_tags` VALUES (47, 2, '2020-09-28 13:52:12', '2020-09-28 13:52:12');
INSERT INTO `product_tags` VALUES (48, 2, '2020-09-28 13:52:23', '2020-09-28 13:52:23');
INSERT INTO `product_tags` VALUES (49, 2, '2020-09-28 13:52:40', '2020-09-28 13:52:40');
INSERT INTO `product_tags` VALUES (50, 2, '2020-09-28 13:52:56', '2020-09-28 13:52:56');
INSERT INTO `product_tags` VALUES (51, 2, '2020-09-28 13:53:12', '2020-09-28 13:53:12');
INSERT INTO `product_tags` VALUES (52, 2, '2020-09-28 13:53:27', '2020-09-28 13:53:27');
INSERT INTO `product_tags` VALUES (53, 2, '2020-09-28 13:53:46', '2020-09-28 13:53:46');
INSERT INTO `product_tags` VALUES (54, 2, '2020-09-28 13:54:04', '2020-09-28 13:54:04');
INSERT INTO `product_tags` VALUES (55, 2, '2020-09-28 13:54:25', '2020-09-28 13:54:25');
INSERT INTO `product_tags` VALUES (56, 3, '2020-09-28 13:54:43', '2020-09-28 13:54:43');
INSERT INTO `product_tags` VALUES (57, 3, '2020-09-28 13:55:05', '2020-09-28 13:55:05');
INSERT INTO `product_tags` VALUES (58, 3, '2020-09-28 13:55:22', '2020-09-28 13:55:22');
INSERT INTO `product_tags` VALUES (59, 3, '2020-09-28 13:55:34', '2020-09-28 13:55:34');
INSERT INTO `product_tags` VALUES (60, 3, '2020-09-28 13:55:51', '2020-09-28 13:55:51');
INSERT INTO `product_tags` VALUES (61, 3, '2020-09-28 13:56:11', '2020-09-28 13:56:11');
INSERT INTO `product_tags` VALUES (62, 3, '2020-09-28 13:56:33', '2020-09-28 13:56:33');
INSERT INTO `product_tags` VALUES (63, 3, '2020-09-28 13:56:44', '2020-09-28 13:56:44');
INSERT INTO `product_tags` VALUES (64, 3, '2020-09-28 13:57:00', '2020-09-28 13:57:00');
INSERT INTO `product_tags` VALUES (65, 3, '2020-09-28 13:57:19', '2020-09-28 13:57:19');
INSERT INTO `product_tags` VALUES (66, 3, '2020-09-28 13:57:36', '2020-09-28 13:57:36');
INSERT INTO `product_tags` VALUES (67, 3, '2020-09-28 13:57:56', '2020-09-28 13:57:56');
INSERT INTO `product_tags` VALUES (68, 3, '2020-09-28 13:58:14', '2020-09-28 13:58:14');
INSERT INTO `product_tags` VALUES (69, 3, '2020-09-28 13:58:33', '2020-09-28 13:58:33');
INSERT INTO `product_tags` VALUES (70, 3, '2020-09-28 13:58:49', '2020-09-28 13:58:49');
INSERT INTO `product_tags` VALUES (71, 3, '2020-09-28 13:59:03', '2020-09-28 13:59:03');
INSERT INTO `product_tags` VALUES (72, 3, '2020-09-28 13:59:19', '2020-09-28 13:59:19');
INSERT INTO `product_tags` VALUES (73, 3, '2020-09-28 13:59:31', '2020-09-28 13:59:31');
INSERT INTO `product_tags` VALUES (74, 3, '2020-09-28 13:59:48', '2020-09-28 13:59:48');
INSERT INTO `product_tags` VALUES (75, 3, '2020-09-28 14:00:01', '2020-09-28 14:00:01');
INSERT INTO `product_tags` VALUES (76, 3, '2020-09-28 14:00:20', '2020-09-28 14:00:20');
INSERT INTO `product_tags` VALUES (77, 3, '2020-09-28 14:00:42', '2020-09-28 14:00:42');
INSERT INTO `product_tags` VALUES (78, 3, '2020-09-28 14:01:02', '2020-09-28 14:01:02');
INSERT INTO `product_tags` VALUES (79, 3, '2020-09-28 14:01:23', '2020-09-28 14:01:23');
INSERT INTO `product_tags` VALUES (80, 3, '2020-09-28 14:01:38', '2020-09-28 14:01:38');
INSERT INTO `product_tags` VALUES (81, 3, '2020-09-28 14:01:57', '2020-09-28 14:01:57');
INSERT INTO `product_tags` VALUES (82, 3, '2020-09-28 14:02:18', '2020-09-28 14:02:18');
INSERT INTO `product_tags` VALUES (83, 4, '2020-09-28 14:02:38', '2020-09-28 14:02:38');
INSERT INTO `product_tags` VALUES (84, 4, '2020-09-28 14:02:52', '2020-09-28 14:02:52');
INSERT INTO `product_tags` VALUES (85, 4, '2020-09-28 14:03:09', '2020-09-28 14:03:09');
INSERT INTO `product_tags` VALUES (86, 4, '2020-09-28 14:03:26', '2020-09-28 14:03:26');
INSERT INTO `product_tags` VALUES (87, 4, '2020-09-28 14:03:39', '2020-09-28 14:03:39');
INSERT INTO `product_tags` VALUES (88, 4, '2020-09-28 14:03:52', '2020-09-28 14:03:52');
INSERT INTO `product_tags` VALUES (89, 4, '2020-09-28 14:04:04', '2020-09-28 14:04:04');
INSERT INTO `product_tags` VALUES (90, 4, '2020-09-28 14:04:17', '2020-09-28 14:04:17');
INSERT INTO `product_tags` VALUES (91, 4, '2020-09-28 14:04:35', '2020-09-28 14:04:35');
INSERT INTO `product_tags` VALUES (92, 4, '2020-09-28 14:04:55', '2020-09-28 14:04:55');
INSERT INTO `product_tags` VALUES (93, 4, '2020-09-28 14:05:07', '2020-09-28 14:05:07');
INSERT INTO `product_tags` VALUES (94, 4, '2020-09-28 14:05:19', '2020-09-28 14:05:19');
INSERT INTO `product_tags` VALUES (95, 4, '2020-09-28 14:05:32', '2020-09-28 14:05:32');
INSERT INTO `product_tags` VALUES (96, 4, '2020-09-28 14:05:50', '2020-09-28 14:05:50');
INSERT INTO `product_tags` VALUES (97, 4, '2020-09-28 14:06:01', '2020-09-28 14:06:01');
INSERT INTO `product_tags` VALUES (98, 4, '2020-09-28 14:06:13', '2020-09-28 14:06:13');
INSERT INTO `product_tags` VALUES (99, 4, '2020-09-28 14:06:29', '2020-09-28 14:06:29');
INSERT INTO `product_tags` VALUES (100, 4, '2020-09-28 14:06:48', '2020-09-28 14:06:48');
INSERT INTO `product_tags` VALUES (101, 4, '2020-09-28 14:07:01', '2020-09-28 14:07:01');
INSERT INTO `product_tags` VALUES (102, 4, '2020-09-28 14:07:19', '2020-09-28 14:07:19');
INSERT INTO `product_tags` VALUES (103, 4, '2020-09-28 14:07:31', '2020-09-28 14:07:31');
INSERT INTO `product_tags` VALUES (104, 1, '2020-09-28 14:08:34', '2020-09-28 14:08:34');
INSERT INTO `product_tags` VALUES (105, 1, '2020-09-28 14:08:59', '2020-09-28 14:08:59');
INSERT INTO `product_tags` VALUES (106, 1, '2020-09-28 14:09:23', '2020-09-28 14:09:23');
INSERT INTO `product_tags` VALUES (107, 1, '2020-09-28 14:10:10', '2020-09-28 14:10:10');
INSERT INTO `product_tags` VALUES (108, 1, '2020-09-28 14:10:37', '2020-09-28 14:10:37');
INSERT INTO `product_tags` VALUES (110, 1, '2020-09-28 14:11:08', '2020-09-28 14:11:08');
INSERT INTO `product_tags` VALUES (111, 1, '2020-09-28 14:11:35', '2020-09-28 14:11:35');
INSERT INTO `product_tags` VALUES (112, 1, '2020-09-28 14:12:18', '2020-09-28 14:12:18');
INSERT INTO `product_tags` VALUES (113, 1, '2020-09-28 14:12:58', '2020-09-28 14:12:58');
INSERT INTO `product_tags` VALUES (114, 1, '2020-09-28 14:13:19', '2020-09-28 14:13:19');
INSERT INTO `product_tags` VALUES (115, 1, '2020-09-28 14:13:43', '2020-09-28 14:13:43');
INSERT INTO `product_tags` VALUES (116, 1, '2020-09-28 14:14:15', '2020-09-28 14:14:15');
INSERT INTO `product_tags` VALUES (117, 1, '2020-09-28 14:14:42', '2020-09-28 14:14:42');
INSERT INTO `product_tags` VALUES (118, 1, '2020-09-28 14:15:22', '2020-09-28 14:15:22');
INSERT INTO `product_tags` VALUES (119, 1, '2020-09-28 14:15:46', '2020-09-28 14:15:46');
INSERT INTO `product_tags` VALUES (120, 1, '2020-09-28 14:16:04', '2020-09-28 14:16:04');
INSERT INTO `product_tags` VALUES (121, 1, '2020-09-28 14:16:28', '2020-09-28 14:16:28');
INSERT INTO `product_tags` VALUES (122, 1, '2020-09-28 14:17:00', '2020-09-28 14:17:00');
INSERT INTO `product_tags` VALUES (123, 1, '2020-09-28 14:17:36', '2020-09-28 14:17:36');
INSERT INTO `product_tags` VALUES (124, 1, '2020-09-28 14:17:57', '2020-09-28 14:17:57');
INSERT INTO `product_tags` VALUES (125, 1, '2020-09-28 14:18:22', '2020-09-28 14:18:22');
INSERT INTO `product_tags` VALUES (126, 1, '2020-09-28 14:18:45', '2020-09-28 14:18:45');
INSERT INTO `product_tags` VALUES (127, 1, '2020-09-28 14:19:13', '2020-09-28 14:19:13');
INSERT INTO `product_tags` VALUES (128, 1, '2020-09-28 14:19:48', '2020-09-28 14:19:48');
INSERT INTO `product_tags` VALUES (129, 1, '2020-09-28 14:20:08', '2020-09-28 14:20:08');
INSERT INTO `product_tags` VALUES (130, 1, '2020-09-28 14:20:43', '2020-09-28 14:20:43');
INSERT INTO `product_tags` VALUES (131, 1, '2020-09-28 14:21:21', '2020-09-28 14:21:21');
INSERT INTO `product_tags` VALUES (132, 1, '2020-09-28 14:22:06', '2020-09-28 14:22:06');
INSERT INTO `product_tags` VALUES (133, 1, '2020-09-28 14:22:25', '2020-09-28 14:22:25');
INSERT INTO `product_tags` VALUES (134, 1, '2020-09-28 14:22:43', '2020-09-28 14:22:43');
INSERT INTO `product_tags` VALUES (135, 1, '2020-09-28 14:23:24', '2020-09-28 14:23:24');
INSERT INTO `product_tags` VALUES (136, 1, '2020-09-28 14:23:59', '2020-09-28 14:23:59');
INSERT INTO `product_tags` VALUES (137, 1, '2020-09-28 14:24:40', '2020-09-28 14:24:40');
INSERT INTO `product_tags` VALUES (138, 1, '2020-09-28 14:25:11', '2020-09-28 14:25:11');
INSERT INTO `product_tags` VALUES (139, 1, '2020-09-28 14:26:07', '2020-09-28 14:26:07');
INSERT INTO `product_tags` VALUES (140, 1, '2020-09-28 14:26:30', '2020-09-28 14:26:30');
INSERT INTO `product_tags` VALUES (141, 1, '2020-09-28 14:26:54', '2020-09-28 14:26:54');
INSERT INTO `product_tags` VALUES (142, 1, '2020-09-28 14:27:10', '2020-09-28 14:27:10');
INSERT INTO `product_tags` VALUES (143, 1, '2020-09-28 14:27:35', '2020-09-28 14:27:35');
INSERT INTO `product_tags` VALUES (144, 1, '2020-09-28 14:28:21', '2020-09-28 14:28:21');
INSERT INTO `product_tags` VALUES (145, 1, '2020-09-28 14:29:04', '2020-09-28 14:29:04');
INSERT INTO `product_tags` VALUES (146, 1, '2020-09-28 14:29:53', '2020-09-28 14:29:53');
INSERT INTO `product_tags` VALUES (147, 1, '2020-09-28 14:30:35', '2020-09-28 14:30:35');
INSERT INTO `product_tags` VALUES (148, 1, '2020-09-28 14:31:14', '2020-09-28 14:31:14');
INSERT INTO `product_tags` VALUES (150, 1, '2020-09-28 14:31:42', '2020-09-28 14:31:42');
INSERT INTO `product_tags` VALUES (151, 1, '2020-09-28 14:32:07', '2020-09-28 14:32:07');
INSERT INTO `product_tags` VALUES (152, 1, '2020-09-28 14:32:45', '2020-09-28 14:32:45');
INSERT INTO `product_tags` VALUES (153, 1, '2020-09-28 14:33:20', '2020-09-28 14:33:20');
INSERT INTO `product_tags` VALUES (154, 1, '2020-09-28 14:33:49', '2020-09-28 14:33:49');
INSERT INTO `product_tags` VALUES (155, 1, '2020-09-28 14:34:09', '2020-09-28 14:34:09');
INSERT INTO `product_tags` VALUES (156, 1, '2020-09-28 14:34:35', '2020-09-28 14:34:35');
INSERT INTO `product_tags` VALUES (157, 1, '2020-09-28 14:34:56', '2020-09-28 14:34:56');
INSERT INTO `product_tags` VALUES (158, 1, '2020-09-28 14:35:46', '2020-09-28 14:35:46');
INSERT INTO `product_tags` VALUES (159, 1, '2020-09-28 14:36:22', '2020-09-28 14:36:22');
INSERT INTO `product_tags` VALUES (160, 1, '2020-09-28 14:37:26', '2020-09-28 14:37:26');
INSERT INTO `product_tags` VALUES (161, 1, '2020-09-28 14:37:57', '2020-09-28 14:37:57');
INSERT INTO `product_tags` VALUES (162, 1, '2020-09-28 14:38:33', '2020-09-28 14:38:33');
INSERT INTO `product_tags` VALUES (163, 1, '2020-09-28 14:39:18', '2020-09-28 14:39:18');
INSERT INTO `product_tags` VALUES (164, 1, '2020-09-28 14:40:11', '2020-09-28 14:40:11');
INSERT INTO `product_tags` VALUES (165, 1, '2020-09-28 14:40:43', '2020-09-28 14:40:43');
INSERT INTO `product_tags` VALUES (166, 1, '2020-09-28 14:41:48', '2020-09-28 14:41:48');
INSERT INTO `product_tags` VALUES (167, 1, '2020-09-28 14:42:02', '2020-09-28 14:42:02');
INSERT INTO `product_tags` VALUES (168, 1, '2020-09-28 14:42:29', '2020-09-28 14:42:29');
INSERT INTO `product_tags` VALUES (169, 1, '2020-09-28 14:42:58', '2020-09-28 14:42:58');
INSERT INTO `product_tags` VALUES (170, 1, '2020-09-28 14:43:10', '2020-09-28 14:43:10');
INSERT INTO `product_tags` VALUES (171, 1, '2020-09-28 14:43:36', '2020-09-28 14:43:36');
INSERT INTO `product_tags` VALUES (172, 1, '2020-09-28 14:44:01', '2020-09-28 14:44:01');
INSERT INTO `product_tags` VALUES (173, 1, '2020-09-28 14:44:27', '2020-09-28 14:44:27');
INSERT INTO `product_tags` VALUES (174, 1, '2020-09-28 14:45:16', '2020-09-28 14:45:16');
INSERT INTO `product_tags` VALUES (175, 1, '2020-09-28 14:45:39', '2020-09-28 14:45:39');
INSERT INTO `product_tags` VALUES (176, 1, '2020-09-28 14:46:01', '2020-09-28 14:46:01');
INSERT INTO `product_tags` VALUES (177, 1, '2020-09-28 14:46:35', '2020-09-28 14:46:35');
INSERT INTO `product_tags` VALUES (178, 1, '2020-09-28 14:47:43', '2020-09-28 14:47:43');
INSERT INTO `product_tags` VALUES (179, 1, '2020-09-28 14:48:10', '2020-09-28 14:48:10');
INSERT INTO `product_tags` VALUES (180, 1, '2020-09-28 14:48:26', '2020-09-28 14:48:26');
INSERT INTO `product_tags` VALUES (181, 1, '2020-09-28 14:48:50', '2020-09-28 14:48:50');
INSERT INTO `product_tags` VALUES (182, 1, '2020-09-28 14:49:36', '2020-09-28 14:49:36');
INSERT INTO `product_tags` VALUES (183, 1, '2020-09-28 14:50:31', '2020-09-28 14:50:31');
INSERT INTO `product_tags` VALUES (184, 1, '2020-09-28 14:50:54', '2020-09-28 14:50:54');
INSERT INTO `product_tags` VALUES (185, 1, '2020-09-28 14:51:46', '2020-09-28 14:51:46');
INSERT INTO `product_tags` VALUES (186, 1, '2020-09-28 14:52:10', '2020-09-28 14:52:10');
INSERT INTO `product_tags` VALUES (187, 1, '2020-09-28 14:52:41', '2020-09-28 14:52:41');
INSERT INTO `product_tags` VALUES (188, 1, '2020-09-28 14:53:16', '2020-09-28 14:53:16');
INSERT INTO `product_tags` VALUES (189, 1, '2020-09-28 14:53:44', '2020-09-28 14:53:44');
INSERT INTO `product_tags` VALUES (190, 1, '2020-09-28 14:54:27', '2020-09-28 14:54:27');
INSERT INTO `product_tags` VALUES (191, 1, '2020-09-28 14:55:08', '2020-09-28 14:55:08');
INSERT INTO `product_tags` VALUES (192, 1, '2020-09-28 14:55:55', '2020-09-28 14:55:55');
INSERT INTO `product_tags` VALUES (193, 1, '2020-09-28 14:56:10', '2020-09-28 14:56:10');
INSERT INTO `product_tags` VALUES (194, 1, '2020-09-28 14:57:02', '2020-09-28 14:57:02');
INSERT INTO `product_tags` VALUES (195, 1, '2020-09-28 14:57:45', '2020-09-28 14:57:45');
INSERT INTO `product_tags` VALUES (196, 1, '2020-09-28 14:58:25', '2020-09-28 14:58:25');
INSERT INTO `product_tags` VALUES (197, 1, '2020-09-28 14:59:00', '2020-09-28 14:59:00');
INSERT INTO `product_tags` VALUES (198, 1, '2020-09-28 14:59:17', '2020-09-28 14:59:17');
INSERT INTO `product_tags` VALUES (199, 1, '2020-09-28 14:59:53', '2020-09-28 14:59:53');
INSERT INTO `product_tags` VALUES (200, 1, '2020-09-28 15:00:11', '2020-09-28 15:00:11');
INSERT INTO `product_tags` VALUES (201, 1, '2020-09-28 15:00:28', '2020-09-28 15:00:28');
INSERT INTO `product_tags` VALUES (202, 1, '2020-09-28 15:00:57', '2020-09-28 15:00:57');
INSERT INTO `product_tags` VALUES (203, 1, '2020-09-28 15:01:30', '2020-09-28 15:01:30');
INSERT INTO `product_tags` VALUES (204, 1, '2020-09-28 15:02:21', '2020-09-28 15:02:21');
INSERT INTO `product_tags` VALUES (205, 1, '2020-09-28 15:03:02', '2020-09-28 15:03:02');
INSERT INTO `product_tags` VALUES (206, 1, '2020-09-28 15:03:53', '2020-09-28 15:03:53');
INSERT INTO `product_tags` VALUES (207, 1, '2020-09-28 15:04:31', '2020-09-28 15:04:31');
INSERT INTO `product_tags` VALUES (208, 1, '2020-09-28 15:04:58', '2020-09-28 15:04:58');
INSERT INTO `product_tags` VALUES (209, 1, '2020-09-28 15:05:37', '2020-09-28 15:05:37');
INSERT INTO `product_tags` VALUES (210, 1, '2020-09-28 15:06:18', '2020-09-28 15:06:18');
INSERT INTO `product_tags` VALUES (211, 1, '2020-09-28 15:07:01', '2020-09-28 15:07:01');
INSERT INTO `product_tags` VALUES (212, 1, '2020-09-28 15:07:27', '2020-09-28 15:07:27');
INSERT INTO `product_tags` VALUES (213, 1, '2020-09-28 15:07:41', '2020-09-28 15:07:41');
INSERT INTO `product_tags` VALUES (214, 1, '2020-09-28 15:08:13', '2020-09-28 15:08:13');
INSERT INTO `product_tags` VALUES (215, 1, '2020-09-28 15:08:39', '2020-09-28 15:08:39');
INSERT INTO `product_tags` VALUES (216, 1, '2020-09-28 15:09:18', '2020-09-28 15:09:18');
INSERT INTO `product_tags` VALUES (217, 1, '2020-09-28 15:10:02', '2020-09-28 15:10:02');
INSERT INTO `product_tags` VALUES (219, 1, '2020-09-28 15:10:30', '2020-09-28 15:10:30');
INSERT INTO `product_tags` VALUES (220, 1, '2020-09-28 15:10:51', '2020-09-28 15:10:51');
INSERT INTO `product_tags` VALUES (221, 1, '2020-09-28 15:11:15', '2020-09-28 15:11:15');
INSERT INTO `product_tags` VALUES (224, 1, '2020-09-28 15:11:44', '2020-09-28 15:11:44');
INSERT INTO `product_tags` VALUES (225, 1, '2020-09-28 15:12:14', '2020-09-28 15:12:14');
INSERT INTO `product_tags` VALUES (226, 1, '2020-09-28 15:12:30', '2020-09-28 15:12:30');
INSERT INTO `product_tags` VALUES (227, 1, '2020-09-28 15:12:56', '2020-09-28 15:12:56');
INSERT INTO `product_tags` VALUES (228, 1, '2020-09-28 15:13:08', '2020-09-28 15:13:08');
INSERT INTO `product_tags` VALUES (229, 1, '2020-09-28 15:13:27', '2020-09-28 15:13:27');
INSERT INTO `product_tags` VALUES (230, 1, '2020-09-28 15:13:45', '2020-09-28 15:13:45');
INSERT INTO `product_tags` VALUES (231, 1, '2020-09-28 15:13:57', '2020-09-28 15:13:57');
INSERT INTO `product_tags` VALUES (232, 1, '2020-09-28 15:14:14', '2020-09-28 15:14:14');
INSERT INTO `product_tags` VALUES (233, 1, '2020-09-28 15:14:34', '2020-09-28 15:14:34');
INSERT INTO `product_tags` VALUES (234, 1, '2020-09-28 15:14:51', '2020-09-28 15:14:51');
INSERT INTO `product_tags` VALUES (235, 1, '2020-09-28 15:15:24', '2020-09-28 15:15:24');
INSERT INTO `product_tags` VALUES (236, 1, '2020-09-28 15:15:57', '2020-09-28 15:15:57');
INSERT INTO `product_tags` VALUES (237, 1, '2020-09-28 15:16:22', '2020-09-28 15:16:22');
INSERT INTO `product_tags` VALUES (238, 1, '2020-09-28 15:16:49', '2020-09-28 15:16:49');
INSERT INTO `product_tags` VALUES (239, 1, '2020-09-28 15:17:05', '2020-09-28 15:17:05');
INSERT INTO `product_tags` VALUES (240, 1, '2020-09-28 15:17:20', '2020-09-28 15:17:20');
INSERT INTO `product_tags` VALUES (241, 1, '2020-09-28 15:18:03', '2020-09-28 15:18:03');
INSERT INTO `product_tags` VALUES (242, 1, '2020-09-28 15:18:34', '2020-09-28 15:18:34');
INSERT INTO `product_tags` VALUES (243, 1, '2020-09-28 15:18:51', '2020-09-28 15:18:51');
INSERT INTO `product_tags` VALUES (244, 1, '2020-09-28 15:19:08', '2020-09-28 15:19:08');
INSERT INTO `product_tags` VALUES (245, 1, '2020-09-28 15:19:46', '2020-09-28 15:19:46');
INSERT INTO `product_tags` VALUES (246, 1, '2020-09-28 15:20:05', '2020-09-28 15:20:05');
INSERT INTO `product_tags` VALUES (247, 1, '2020-09-28 15:20:29', '2020-09-28 15:20:29');
INSERT INTO `product_tags` VALUES (248, 1, '2020-09-28 15:20:43', '2020-09-28 15:20:43');
INSERT INTO `product_tags` VALUES (249, 1, '2020-09-28 15:20:57', '2020-09-28 15:20:57');
INSERT INTO `product_tags` VALUES (251, 1, '2020-09-28 15:21:34', '2020-09-28 15:21:34');
INSERT INTO `product_tags` VALUES (252, 1, '2020-09-28 15:22:00', '2020-09-28 15:22:00');
INSERT INTO `product_tags` VALUES (253, 1, '2020-09-28 15:22:50', '2020-09-28 15:22:50');
INSERT INTO `product_tags` VALUES (254, 1, '2020-09-28 15:23:23', '2020-09-28 15:23:23');
INSERT INTO `product_tags` VALUES (255, 1, '2020-09-28 15:24:24', '2020-09-28 15:24:24');
INSERT INTO `product_tags` VALUES (256, 1, '2020-09-28 15:25:26', '2020-09-28 15:25:26');
INSERT INTO `product_tags` VALUES (257, 1, '2020-09-28 15:26:05', '2020-09-28 15:26:05');
INSERT INTO `product_tags` VALUES (258, 1, '2020-09-28 15:26:39', '2020-09-28 15:26:39');
INSERT INTO `product_tags` VALUES (259, 1, '2020-09-28 15:27:01', '2020-09-28 15:27:01');
INSERT INTO `product_tags` VALUES (260, 1, '2020-09-28 15:27:20', '2020-09-28 15:27:20');
INSERT INTO `product_tags` VALUES (261, 1, '2020-09-28 15:27:40', '2020-09-28 15:27:40');
INSERT INTO `product_tags` VALUES (262, 1, '2020-09-28 15:27:53', '2020-09-28 15:27:53');
INSERT INTO `product_tags` VALUES (263, 1, '2020-09-28 15:28:23', '2020-09-28 15:28:23');
INSERT INTO `product_tags` VALUES (264, 1, '2020-09-28 15:28:35', '2020-09-28 15:28:35');
INSERT INTO `product_tags` VALUES (265, 1, '2020-09-28 15:28:56', '2020-09-28 15:28:56');
INSERT INTO `product_tags` VALUES (266, 1, '2020-09-28 15:29:16', '2020-09-28 15:29:16');
INSERT INTO `product_tags` VALUES (267, 1, '2020-09-28 15:29:42', '2020-09-28 15:29:42');
INSERT INTO `product_tags` VALUES (268, 1, '2020-09-28 15:29:57', '2020-09-28 15:29:57');
INSERT INTO `product_tags` VALUES (269, 1, '2020-09-28 15:30:12', '2020-09-28 15:30:12');
INSERT INTO `product_tags` VALUES (270, 1, '2020-09-28 15:30:35', '2020-09-28 15:30:35');
INSERT INTO `product_tags` VALUES (271, 1, '2020-09-28 15:30:53', '2020-09-28 15:30:53');
INSERT INTO `product_tags` VALUES (272, 1, '2020-09-28 15:31:11', '2020-09-28 15:31:11');
INSERT INTO `product_tags` VALUES (274, 1, '2020-09-28 15:31:43', '2020-09-28 15:31:43');
INSERT INTO `product_tags` VALUES (275, 1, '2020-09-28 15:31:59', '2020-09-28 15:31:59');
INSERT INTO `product_tags` VALUES (276, 1, '2020-09-28 15:32:24', '2020-09-28 15:32:24');
INSERT INTO `product_tags` VALUES (277, 1, '2020-09-28 15:32:50', '2020-09-28 15:32:50');
INSERT INTO `product_tags` VALUES (278, 1, '2020-09-28 15:33:12', '2020-09-28 15:33:12');
INSERT INTO `product_tags` VALUES (280, 1, '2020-09-28 15:33:26', '2020-09-28 15:33:26');
INSERT INTO `product_tags` VALUES (281, 1, '2020-09-28 15:33:57', '2020-09-28 15:33:57');
INSERT INTO `product_tags` VALUES (282, 1, '2020-09-28 15:34:15', '2020-09-28 15:34:15');
INSERT INTO `product_tags` VALUES (284, 1, '2020-09-28 15:34:30', '2020-09-28 15:34:30');
INSERT INTO `product_tags` VALUES (285, 1, '2020-09-28 15:35:05', '2020-09-28 15:35:05');
INSERT INTO `product_tags` VALUES (286, 1, '2020-09-28 15:35:24', '2020-09-28 15:35:24');
INSERT INTO `product_tags` VALUES (287, 1, '2020-09-28 15:35:41', '2020-09-28 15:35:41');
INSERT INTO `product_tags` VALUES (288, 1, '2020-09-28 15:35:56', '2020-09-28 15:35:56');
INSERT INTO `product_tags` VALUES (289, 1, '2020-09-28 15:36:11', '2020-09-28 15:36:11');
INSERT INTO `product_tags` VALUES (290, 1, '2020-09-28 15:36:35', '2020-09-28 15:36:35');
INSERT INTO `product_tags` VALUES (291, 1, '2020-09-28 15:36:49', '2020-09-28 15:36:49');
INSERT INTO `product_tags` VALUES (292, 1, '2020-09-28 15:37:00', '2020-09-28 15:37:00');
INSERT INTO `product_tags` VALUES (293, 1, '2020-09-28 15:37:18', '2020-09-28 15:37:18');
INSERT INTO `product_tags` VALUES (294, 1, '2020-09-28 15:37:32', '2020-09-28 15:37:32');
INSERT INTO `product_tags` VALUES (295, 1, '2020-09-28 15:37:51', '2020-09-28 15:37:51');
INSERT INTO `product_tags` VALUES (296, 1, '2020-09-28 15:38:13', '2020-09-28 15:38:13');
INSERT INTO `product_tags` VALUES (297, 1, '2020-09-28 15:38:29', '2020-09-28 15:38:29');
INSERT INTO `product_tags` VALUES (298, 1, '2020-09-28 15:38:59', '2020-09-28 15:38:59');
INSERT INTO `product_tags` VALUES (299, 1, '2020-09-28 15:39:13', '2020-09-28 15:39:13');
INSERT INTO `product_tags` VALUES (300, 1, '2020-09-28 15:39:42', '2020-09-28 15:39:42');
INSERT INTO `product_tags` VALUES (301, 1, '2020-09-28 15:39:59', '2020-09-28 15:39:59');
INSERT INTO `product_tags` VALUES (302, 1, '2020-09-28 15:40:36', '2020-09-28 15:40:36');
INSERT INTO `product_tags` VALUES (303, 1, '2020-09-28 15:41:05', '2020-09-28 15:41:05');
INSERT INTO `product_tags` VALUES (304, 1, '2020-09-28 15:41:26', '2020-09-28 15:41:26');
INSERT INTO `product_tags` VALUES (305, 1, '2020-09-28 15:41:55', '2020-09-28 15:41:55');
INSERT INTO `product_tags` VALUES (306, 1, '2020-09-28 15:42:19', '2020-09-28 15:42:19');
INSERT INTO `product_tags` VALUES (307, 1, '2020-09-28 15:42:42', '2020-09-28 15:42:42');
INSERT INTO `product_tags` VALUES (308, 1, '2020-09-28 15:43:15', '2020-09-28 15:43:15');
INSERT INTO `product_tags` VALUES (309, 1, '2020-09-28 15:43:33', '2020-09-28 15:43:33');
INSERT INTO `product_tags` VALUES (310, 1, '2020-09-28 15:43:51', '2020-09-28 15:43:51');
INSERT INTO `product_tags` VALUES (311, 1, '2020-09-28 15:44:14', '2020-09-28 15:44:14');
INSERT INTO `product_tags` VALUES (312, 1, '2020-09-28 15:44:36', '2020-09-28 15:44:36');
INSERT INTO `product_tags` VALUES (313, 1, '2020-09-28 15:44:55', '2020-09-28 15:44:55');
INSERT INTO `product_tags` VALUES (314, 1, '2020-09-28 15:45:19', '2020-09-28 15:45:19');
INSERT INTO `product_tags` VALUES (315, 1, '2020-09-28 15:45:46', '2020-09-28 15:45:46');
INSERT INTO `product_tags` VALUES (316, 1, '2020-09-28 15:46:12', '2020-09-28 15:46:12');
INSERT INTO `product_tags` VALUES (317, 1, '2020-09-28 15:46:43', '2020-09-28 15:46:43');
INSERT INTO `product_tags` VALUES (318, 1, '2020-09-28 15:47:05', '2020-09-28 15:47:05');
INSERT INTO `product_tags` VALUES (319, 1, '2020-09-28 15:47:22', '2020-09-28 15:47:22');
INSERT INTO `product_tags` VALUES (320, 1, '2020-09-28 15:47:39', '2020-09-28 15:47:39');
INSERT INTO `product_tags` VALUES (321, 1, '2020-09-28 15:47:54', '2020-09-28 15:47:54');
INSERT INTO `product_tags` VALUES (322, 1, '2020-09-28 15:48:17', '2020-09-28 15:48:17');
INSERT INTO `product_tags` VALUES (323, 1, '2020-09-28 15:48:33', '2020-09-28 15:48:33');
INSERT INTO `product_tags` VALUES (324, 1, '2020-09-28 15:48:49', '2020-09-28 15:48:49');
INSERT INTO `product_tags` VALUES (325, 1, '2020-09-28 15:49:03', '2020-09-28 15:49:03');
INSERT INTO `product_tags` VALUES (326, 1, '2020-09-28 15:49:28', '2020-09-28 15:49:28');
INSERT INTO `product_tags` VALUES (327, 1, '2020-09-28 15:49:52', '2020-09-28 15:49:52');
INSERT INTO `product_tags` VALUES (328, 1, '2020-09-28 15:50:07', '2020-09-28 15:50:07');
INSERT INTO `product_tags` VALUES (329, 1, '2020-09-28 15:50:35', '2020-09-28 15:50:35');
INSERT INTO `product_tags` VALUES (330, 1, '2020-09-28 15:51:07', '2020-09-28 15:51:07');
INSERT INTO `product_tags` VALUES (331, 1, '2020-09-28 15:51:41', '2020-09-28 15:51:41');
INSERT INTO `product_tags` VALUES (332, 1, '2020-09-28 15:52:17', '2020-09-28 15:52:17');
INSERT INTO `product_tags` VALUES (333, 1, '2020-09-28 15:52:43', '2020-09-28 15:52:43');
INSERT INTO `product_tags` VALUES (334, 1, '2020-09-28 15:53:10', '2020-09-28 15:53:10');
INSERT INTO `product_tags` VALUES (335, 1, '2020-09-28 15:53:39', '2020-09-28 15:53:39');
INSERT INTO `product_tags` VALUES (336, 1, '2020-09-28 15:54:12', '2020-09-28 15:54:12');
INSERT INTO `product_tags` VALUES (337, 1, '2020-09-28 15:54:26', '2020-09-28 15:54:26');
INSERT INTO `product_tags` VALUES (338, 1, '2020-09-28 15:54:42', '2020-09-28 15:54:42');
INSERT INTO `product_tags` VALUES (339, 1, '2020-09-28 15:55:15', '2020-09-28 15:55:15');
INSERT INTO `product_tags` VALUES (340, 1, '2020-09-28 15:55:34', '2020-09-28 15:55:34');
INSERT INTO `product_tags` VALUES (341, 1, '2020-09-28 15:55:50', '2020-09-28 15:55:50');
INSERT INTO `product_tags` VALUES (342, 1, '2020-09-28 15:56:03', '2020-09-28 15:56:03');
INSERT INTO `product_tags` VALUES (343, 1, '2020-09-28 15:56:20', '2020-09-28 15:56:20');
INSERT INTO `product_tags` VALUES (344, 1, '2020-09-28 15:57:00', '2020-09-28 15:57:00');
INSERT INTO `product_tags` VALUES (345, 1, '2020-09-28 15:57:13', '2020-09-28 15:57:13');
INSERT INTO `product_tags` VALUES (346, 1, '2020-09-28 15:58:11', '2020-09-28 15:58:11');
INSERT INTO `product_tags` VALUES (347, 1, '2020-09-28 15:58:32', '2020-09-28 15:58:32');
INSERT INTO `product_tags` VALUES (348, 1, '2020-09-28 15:58:58', '2020-09-28 15:58:58');
INSERT INTO `product_tags` VALUES (349, 1, '2020-09-28 15:59:14', '2020-09-28 15:59:14');
INSERT INTO `product_tags` VALUES (350, 1, '2020-09-28 15:59:30', '2020-09-28 15:59:30');
INSERT INTO `product_tags` VALUES (351, 1, '2020-09-28 15:59:52', '2020-09-28 15:59:52');
INSERT INTO `product_tags` VALUES (352, 1, '2020-09-28 16:00:19', '2020-09-28 16:00:19');
INSERT INTO `product_tags` VALUES (353, 1, '2020-09-28 16:00:31', '2020-09-28 16:00:31');
INSERT INTO `product_tags` VALUES (354, 1, '2020-09-28 16:00:48', '2020-09-28 16:00:48');
INSERT INTO `product_tags` VALUES (355, 1, '2020-09-28 16:01:03', '2020-09-28 16:01:03');
INSERT INTO `product_tags` VALUES (356, 1, '2020-09-28 16:01:17', '2020-09-28 16:01:17');
INSERT INTO `product_tags` VALUES (357, 1, '2020-09-28 16:01:39', '2020-09-28 16:01:39');
INSERT INTO `product_tags` VALUES (358, 1, '2020-09-28 16:02:07', '2020-09-28 16:02:07');
INSERT INTO `product_tags` VALUES (359, 1, '2020-09-28 16:02:26', '2020-09-28 16:02:26');
INSERT INTO `product_tags` VALUES (360, 1, '2020-09-28 16:02:55', '2020-09-28 16:02:55');
INSERT INTO `product_tags` VALUES (361, 1, '2020-09-28 16:03:11', '2020-09-28 16:03:11');
INSERT INTO `product_tags` VALUES (362, 1, '2020-09-28 16:03:46', '2020-09-28 16:03:46');
INSERT INTO `product_tags` VALUES (363, 1, '2020-09-28 16:04:22', '2020-09-28 16:04:22');
INSERT INTO `product_tags` VALUES (364, 1, '2020-09-28 16:04:56', '2020-09-28 16:04:56');
INSERT INTO `product_tags` VALUES (365, 1, '2020-09-28 16:05:28', '2020-09-28 16:05:28');
INSERT INTO `product_tags` VALUES (366, 1, '2020-09-28 16:05:52', '2020-09-28 16:05:52');
INSERT INTO `product_tags` VALUES (367, 1, '2020-09-28 16:06:22', '2020-09-28 16:06:22');
INSERT INTO `product_tags` VALUES (368, 1, '2020-09-28 16:06:41', '2020-09-28 16:06:41');
INSERT INTO `product_tags` VALUES (369, 1, '2020-09-28 16:07:05', '2020-09-28 16:07:05');
INSERT INTO `product_tags` VALUES (370, 1, '2020-09-28 16:07:20', '2020-09-28 16:07:20');
INSERT INTO `product_tags` VALUES (371, 1, '2020-09-28 16:07:39', '2020-09-28 16:07:39');
INSERT INTO `product_tags` VALUES (3371, 1, '2020-09-28 16:07:55', '2020-09-28 16:07:55');
INSERT INTO `product_tags` VALUES (372, 1, '2020-09-28 16:08:31', '2020-09-28 16:08:31');
INSERT INTO `product_tags` VALUES (373, 1, '2020-09-28 16:08:50', '2020-09-28 16:08:50');
INSERT INTO `product_tags` VALUES (374, 1, '2020-09-28 16:09:22', '2020-09-28 16:09:22');
INSERT INTO `product_tags` VALUES (375, 1, '2020-09-28 16:09:53', '2020-09-28 16:09:53');
INSERT INTO `product_tags` VALUES (376, 1, '2020-09-28 16:10:39', '2020-09-28 16:10:39');
INSERT INTO `product_tags` VALUES (377, 1, '2020-09-28 16:11:18', '2020-09-28 16:11:18');
INSERT INTO `product_tags` VALUES (378, 1, '2020-09-28 16:11:53', '2020-09-28 16:11:53');
INSERT INTO `product_tags` VALUES (379, 1, '2020-09-28 16:12:17', '2020-09-28 16:12:17');
INSERT INTO `product_tags` VALUES (380, 1, '2020-09-28 16:12:36', '2020-09-28 16:12:36');
INSERT INTO `product_tags` VALUES (381, 1, '2020-09-28 16:13:04', '2020-09-28 16:13:04');
INSERT INTO `product_tags` VALUES (382, 1, '2020-09-28 16:13:37', '2020-09-28 16:13:37');
INSERT INTO `product_tags` VALUES (383, 1, '2020-09-28 16:14:01', '2020-09-28 16:14:01');
INSERT INTO `product_tags` VALUES (384, 1, '2020-09-28 16:14:27', '2020-09-28 16:14:27');
INSERT INTO `product_tags` VALUES (385, 1, '2020-09-28 16:15:00', '2020-09-28 16:15:00');
INSERT INTO `product_tags` VALUES (386, 1, '2020-09-28 16:15:28', '2020-09-28 16:15:28');
INSERT INTO `product_tags` VALUES (387, 1, '2020-09-28 16:15:53', '2020-09-28 16:15:53');
INSERT INTO `product_tags` VALUES (388, 1, '2020-09-28 16:16:29', '2020-09-28 16:16:29');
INSERT INTO `product_tags` VALUES (389, 1, '2020-09-28 16:16:49', '2020-09-28 16:16:49');
INSERT INTO `product_tags` VALUES (390, 1, '2020-09-28 16:17:05', '2020-09-28 16:17:05');
INSERT INTO `product_tags` VALUES (391, 1, '2020-09-28 16:17:52', '2020-09-28 16:17:52');
INSERT INTO `product_tags` VALUES (392, 1, '2020-09-28 16:18:23', '2020-09-28 16:18:23');
INSERT INTO `product_tags` VALUES (393, 1, '2020-09-28 16:18:54', '2020-09-28 16:18:54');
INSERT INTO `product_tags` VALUES (394, 1, '2020-09-28 16:19:19', '2020-09-28 16:19:19');
INSERT INTO `product_tags` VALUES (395, 1, '2020-09-28 16:19:49', '2020-09-28 16:19:49');
INSERT INTO `product_tags` VALUES (396, 1, '2020-09-28 16:20:16', '2020-09-28 16:20:16');
INSERT INTO `product_tags` VALUES (397, 1, '2020-09-28 16:20:31', '2020-09-28 16:20:31');
INSERT INTO `product_tags` VALUES (398, 1, '2020-09-28 16:21:07', '2020-09-28 16:21:07');
INSERT INTO `product_tags` VALUES (399, 1, '2020-09-28 16:21:25', '2020-09-28 16:21:25');
INSERT INTO `product_tags` VALUES (400, 1, '2020-09-28 16:21:35', '2020-09-28 16:21:35');
INSERT INTO `product_tags` VALUES (401, 1, '2020-09-28 16:22:09', '2020-09-28 16:22:09');
INSERT INTO `product_tags` VALUES (402, 1, '2020-09-28 16:22:29', '2020-09-28 16:22:29');
INSERT INTO `product_tags` VALUES (403, 1, '2020-09-28 16:22:48', '2020-09-28 16:22:48');
INSERT INTO `product_tags` VALUES (404, 1, '2020-09-28 16:23:16', '2020-09-28 16:23:16');
INSERT INTO `product_tags` VALUES (405, 1, '2020-09-28 16:23:41', '2020-09-28 16:23:41');
INSERT INTO `product_tags` VALUES (406, 1, '2020-09-28 16:24:13', '2020-09-28 16:24:13');
INSERT INTO `product_tags` VALUES (407, 1, '2020-09-28 16:25:00', '2020-09-28 16:25:00');
INSERT INTO `product_tags` VALUES (408, 1, '2020-09-28 16:25:30', '2020-09-28 16:25:30');
INSERT INTO `product_tags` VALUES (409, 1, '2020-09-28 16:25:55', '2020-09-28 16:25:55');
INSERT INTO `product_tags` VALUES (410, 1, '2020-09-28 16:26:28', '2020-09-28 16:26:28');
INSERT INTO `product_tags` VALUES (411, 1, '2020-09-28 16:26:51', '2020-09-28 16:26:51');
INSERT INTO `product_tags` VALUES (412, 1, '2020-09-28 16:27:16', '2020-09-28 16:27:16');
INSERT INTO `product_tags` VALUES (413, 1, '2020-09-28 16:27:34', '2020-09-28 16:27:34');
INSERT INTO `product_tags` VALUES (414, 1, '2020-09-28 16:27:47', '2020-09-28 16:27:47');
INSERT INTO `product_tags` VALUES (415, 1, '2020-09-28 16:28:21', '2020-09-28 16:28:21');
INSERT INTO `product_tags` VALUES (416, 1, '2020-09-28 16:28:38', '2020-09-28 16:28:38');
INSERT INTO `product_tags` VALUES (417, 1, '2020-09-28 16:28:55', '2020-09-28 16:28:55');
INSERT INTO `product_tags` VALUES (418, 1, '2020-09-28 16:29:12', '2020-09-28 16:29:12');
INSERT INTO `product_tags` VALUES (419, 1, '2020-09-28 16:29:30', '2020-09-28 16:29:30');
INSERT INTO `product_tags` VALUES (420, 1, '2020-09-28 16:29:46', '2020-09-28 16:29:46');
INSERT INTO `product_tags` VALUES (421, 1, '2020-09-28 16:30:07', '2020-09-28 16:30:07');
INSERT INTO `product_tags` VALUES (422, 1, '2020-09-28 16:30:27', '2020-09-28 16:30:27');
INSERT INTO `product_tags` VALUES (423, 1, '2020-09-28 16:30:41', '2020-09-28 16:30:41');
INSERT INTO `product_tags` VALUES (424, 1, '2020-09-28 16:31:06', '2020-09-28 16:31:06');
INSERT INTO `product_tags` VALUES (425, 1, '2020-09-28 16:31:27', '2020-09-28 16:31:27');
INSERT INTO `product_tags` VALUES (426, 1, '2020-09-28 16:31:53', '2020-09-28 16:31:53');
INSERT INTO `product_tags` VALUES (427, 1, '2020-09-28 16:32:10', '2020-09-28 16:32:10');
INSERT INTO `product_tags` VALUES (428, 1, '2020-09-28 16:32:35', '2020-09-28 16:32:35');
INSERT INTO `product_tags` VALUES (429, 1, '2020-09-28 16:32:57', '2020-09-28 16:32:57');
INSERT INTO `product_tags` VALUES (430, 1, '2020-09-28 16:33:11', '2020-09-28 16:33:11');
INSERT INTO `product_tags` VALUES (431, 1, '2020-09-28 16:33:37', '2020-09-28 16:33:37');
INSERT INTO `product_tags` VALUES (432, 1, '2020-09-28 16:33:57', '2020-09-28 16:33:57');
INSERT INTO `product_tags` VALUES (433, 1, '2020-09-28 16:34:39', '2020-09-28 16:34:39');
INSERT INTO `product_tags` VALUES (434, 1, '2020-09-28 16:34:58', '2020-09-28 16:34:58');
INSERT INTO `product_tags` VALUES (435, 1, '2020-09-28 16:35:39', '2020-09-28 16:35:39');
INSERT INTO `product_tags` VALUES (436, 1, '2020-09-28 16:36:03', '2020-09-28 16:36:03');
INSERT INTO `product_tags` VALUES (437, 1, '2020-09-28 16:36:25', '2020-09-28 16:36:25');
INSERT INTO `product_tags` VALUES (438, 1, '2020-09-28 16:36:42', '2020-09-28 16:36:42');
INSERT INTO `product_tags` VALUES (439, 1, '2020-09-28 16:37:01', '2020-09-28 16:37:01');
INSERT INTO `product_tags` VALUES (440, 1, '2020-09-28 16:37:13', '2020-09-28 16:37:13');
INSERT INTO `product_tags` VALUES (441, 1, '2020-09-28 16:37:28', '2020-09-28 16:37:28');
INSERT INTO `product_tags` VALUES (442, 1, '2020-09-28 16:37:45', '2020-09-28 16:37:45');
INSERT INTO `product_tags` VALUES (443, 1, '2020-09-28 16:38:06', '2020-09-28 16:38:06');
INSERT INTO `product_tags` VALUES (444, 1, '2020-09-28 16:38:49', '2020-09-28 16:38:49');
INSERT INTO `product_tags` VALUES (445, 4, '2020-09-28 16:39:16', '2020-09-28 16:39:16');
INSERT INTO `product_tags` VALUES (446, 4, '2020-09-28 16:39:32', '2020-09-28 16:39:32');
INSERT INTO `product_tags` VALUES (447, 4, '2020-09-28 16:39:51', '2020-09-28 16:39:51');
INSERT INTO `product_tags` VALUES (448, 4, '2020-09-28 16:40:12', '2020-09-28 16:40:12');
INSERT INTO `product_tags` VALUES (449, 4, '2020-09-28 16:40:26', '2020-09-28 16:40:26');
INSERT INTO `product_tags` VALUES (450, 4, '2020-09-28 16:40:55', '2020-09-28 16:40:55');
INSERT INTO `product_tags` VALUES (451, 4, '2020-09-28 16:41:24', '2020-09-28 16:41:24');
INSERT INTO `product_tags` VALUES (452, 4, '2020-09-28 16:41:32', '2020-09-28 16:41:32');
INSERT INTO `product_tags` VALUES (453, 4, '2020-09-28 16:41:41', '2020-09-28 16:41:41');
INSERT INTO `product_tags` VALUES (454, 4, '2020-09-28 16:41:55', '2020-09-28 16:41:55');
INSERT INTO `product_tags` VALUES (455, 4, '2020-09-28 16:42:19', '2020-09-28 16:42:19');
INSERT INTO `product_tags` VALUES (456, 4, '2020-09-28 16:42:40', '2020-09-28 16:42:40');
INSERT INTO `product_tags` VALUES (457, 4, '2020-09-28 16:43:23', '2020-09-28 16:43:23');
INSERT INTO `product_tags` VALUES (458, 4, '2020-09-28 16:43:44', '2020-09-28 16:43:44');
INSERT INTO `product_tags` VALUES (459, 4, '2020-09-28 16:44:02', '2020-09-28 16:44:02');
INSERT INTO `product_tags` VALUES (460, 4, '2020-09-28 16:44:28', '2020-09-28 16:44:28');
INSERT INTO `product_tags` VALUES (461, 4, '2020-09-28 16:44:59', '2020-09-28 16:44:59');
INSERT INTO `product_tags` VALUES (462, 4, '2020-09-28 16:45:11', '2020-09-28 16:45:11');
INSERT INTO `product_tags` VALUES (463, 4, '2020-09-28 16:45:49', '2020-09-28 16:45:49');
INSERT INTO `product_tags` VALUES (464, 4, '2020-09-28 16:46:27', '2020-09-28 16:46:27');
INSERT INTO `product_tags` VALUES (465, 4, '2020-09-28 16:47:15', '2020-09-28 16:47:15');
INSERT INTO `product_tags` VALUES (466, 4, '2020-09-28 16:47:35', '2020-09-28 16:47:35');
INSERT INTO `product_tags` VALUES (467, 4, '2020-09-28 16:47:57', '2020-09-28 16:47:57');
INSERT INTO `product_tags` VALUES (468, 4, '2020-09-28 16:48:27', '2020-09-28 16:48:27');
INSERT INTO `product_tags` VALUES (469, 4, '2020-09-28 16:48:52', '2020-09-28 16:48:52');
INSERT INTO `product_tags` VALUES (470, 4, '2020-09-28 16:49:12', '2020-09-28 16:49:12');
INSERT INTO `product_tags` VALUES (471, 4, '2020-09-28 16:49:50', '2020-09-28 16:49:50');
INSERT INTO `product_tags` VALUES (472, 4, '2020-09-28 16:50:12', '2020-09-28 16:50:12');
INSERT INTO `product_tags` VALUES (473, 4, '2020-09-28 16:50:32', '2020-09-28 16:50:32');
INSERT INTO `product_tags` VALUES (474, 4, '2020-09-28 16:50:47', '2020-09-28 16:50:47');
INSERT INTO `product_tags` VALUES (475, 4, '2020-09-28 16:51:23', '2020-09-28 16:51:23');
INSERT INTO `product_tags` VALUES (476, 3, '2020-09-28 16:52:23', '2020-09-28 16:52:23');
INSERT INTO `product_tags` VALUES (477, 3, '2020-09-28 16:52:46', '2020-09-28 16:52:46');
INSERT INTO `product_tags` VALUES (478, 3, '2020-09-28 16:53:26', '2020-09-28 16:53:26');
INSERT INTO `product_tags` VALUES (479, 3, '2020-09-28 16:54:06', '2020-09-28 16:54:06');
INSERT INTO `product_tags` VALUES (480, 3, '2020-09-28 16:54:52', '2020-09-28 16:54:52');
INSERT INTO `product_tags` VALUES (481, 3, '2020-09-28 16:55:07', '2020-09-28 16:55:07');
INSERT INTO `product_tags` VALUES (482, 3, '2020-09-28 16:55:24', '2020-09-28 16:55:24');
INSERT INTO `product_tags` VALUES (483, 3, '2020-09-28 16:55:40', '2020-09-28 16:55:40');
INSERT INTO `product_tags` VALUES (484, 3, '2020-09-28 16:55:55', '2020-09-28 16:55:55');
INSERT INTO `product_tags` VALUES (485, 3, '2020-09-28 16:56:16', '2020-09-28 16:56:16');
INSERT INTO `product_tags` VALUES (486, 3, '2020-09-28 16:56:43', '2020-09-28 16:56:43');
INSERT INTO `product_tags` VALUES (488, 3, '2020-09-28 16:57:16', '2020-09-28 16:57:16');
INSERT INTO `product_tags` VALUES (489, 3, '2020-09-28 16:57:33', '2020-09-28 16:57:33');
INSERT INTO `product_tags` VALUES (490, 3, '2020-09-28 16:57:50', '2020-09-28 16:57:50');
INSERT INTO `product_tags` VALUES (491, 3, '2020-09-28 16:58:10', '2020-09-28 16:58:10');
INSERT INTO `product_tags` VALUES (492, 3, '2020-09-28 16:58:34', '2020-09-28 16:58:34');
INSERT INTO `product_tags` VALUES (493, 3, '2020-09-28 16:58:52', '2020-09-28 16:58:52');
INSERT INTO `product_tags` VALUES (494, 3, '2020-09-28 16:59:12', '2020-09-28 16:59:12');
INSERT INTO `product_tags` VALUES (495, 3, '2020-09-28 16:59:42', '2020-09-28 16:59:42');
INSERT INTO `product_tags` VALUES (496, 3, '2020-09-28 17:00:01', '2020-09-28 17:00:01');
INSERT INTO `product_tags` VALUES (497, 3, '2020-09-28 17:00:32', '2020-09-28 17:00:32');
INSERT INTO `product_tags` VALUES (498, 3, '2020-09-28 17:00:55', '2020-09-28 17:00:55');
INSERT INTO `product_tags` VALUES (499, 3, '2020-09-28 17:01:15', '2020-09-28 17:01:15');
INSERT INTO `product_tags` VALUES (500, 3, '2020-09-28 17:01:39', '2020-09-28 17:01:39');
INSERT INTO `product_tags` VALUES (501, 3, '2020-09-28 17:02:14', '2020-09-28 17:02:14');
INSERT INTO `product_tags` VALUES (502, 3, '2020-09-28 17:02:30', '2020-09-28 17:02:30');
INSERT INTO `product_tags` VALUES (503, 3, '2020-09-28 17:02:54', '2020-09-28 17:02:54');
INSERT INTO `product_tags` VALUES (504, 3, '2020-09-28 17:03:39', '2020-09-28 17:03:39');
INSERT INTO `product_tags` VALUES (505, 3, '2020-09-28 17:04:13', '2020-09-28 17:04:13');
INSERT INTO `product_tags` VALUES (506, 3, '2020-09-28 17:04:36', '2020-09-28 17:04:36');
INSERT INTO `product_tags` VALUES (508, 3, '2020-09-28 17:05:05', '2020-09-28 17:05:05');
INSERT INTO `product_tags` VALUES (509, 3, '2020-09-28 17:05:34', '2020-09-28 17:05:34');
INSERT INTO `product_tags` VALUES (510, 3, '2020-09-28 17:05:52', '2020-09-28 17:05:52');
INSERT INTO `product_tags` VALUES (511, 3, '2020-09-28 17:06:06', '2020-09-28 17:06:06');
INSERT INTO `product_tags` VALUES (512, 3, '2020-09-28 17:06:19', '2020-09-28 17:06:19');
INSERT INTO `product_tags` VALUES (513, 3, '2020-09-28 17:06:39', '2020-09-28 17:06:39');
INSERT INTO `product_tags` VALUES (514, 3, '2020-09-28 17:06:52', '2020-09-28 17:06:52');
INSERT INTO `product_tags` VALUES (515, 3, '2020-09-28 17:07:21', '2020-09-28 17:07:21');
INSERT INTO `product_tags` VALUES (516, 3, '2020-09-28 17:07:43', '2020-09-28 17:07:43');
INSERT INTO `product_tags` VALUES (517, 3, '2020-09-28 17:08:07', '2020-09-28 17:08:07');
INSERT INTO `product_tags` VALUES (520, 4, '2020-09-28 17:08:23', '2020-09-28 17:08:23');
INSERT INTO `product_tags` VALUES (521, 4, '2020-09-28 17:08:52', '2020-09-28 17:08:52');
INSERT INTO `product_tags` VALUES (522, 4, '2020-09-28 17:09:31', '2020-09-28 17:09:31');
INSERT INTO `product_tags` VALUES (523, 4, '2020-09-28 17:09:52', '2020-09-28 17:09:52');
INSERT INTO `product_tags` VALUES (524, 4, '2020-09-28 17:10:13', '2020-09-28 17:10:13');
INSERT INTO `product_tags` VALUES (525, 4, '2020-09-28 17:10:33', '2020-09-28 17:10:33');
INSERT INTO `product_tags` VALUES (526, 4, '2020-09-28 17:10:50', '2020-09-28 17:10:50');
INSERT INTO `product_tags` VALUES (527, 4, '2020-09-28 17:11:10', '2020-09-28 17:11:10');
INSERT INTO `product_tags` VALUES (528, 4, '2020-09-28 17:11:20', '2020-09-28 17:11:20');
INSERT INTO `product_tags` VALUES (529, 4, '2020-09-28 17:11:36', '2020-09-28 17:11:36');
INSERT INTO `product_tags` VALUES (530, 4, '2020-09-28 17:11:56', '2020-09-28 17:11:56');
INSERT INTO `product_tags` VALUES (531, 4, '2020-09-28 17:12:13', '2020-09-28 17:12:13');
INSERT INTO `product_tags` VALUES (532, 4, '2020-09-28 17:12:34', '2020-09-28 17:12:34');
INSERT INTO `product_tags` VALUES (533, 4, '2020-09-28 17:13:03', '2020-09-28 17:13:03');
INSERT INTO `product_tags` VALUES (534, 4, '2020-09-28 17:13:26', '2020-09-28 17:13:26');
INSERT INTO `product_tags` VALUES (535, 4, '2020-09-28 17:13:56', '2020-09-28 17:13:56');
INSERT INTO `product_tags` VALUES (536, 4, '2020-09-28 17:14:16', '2020-09-28 17:14:16');
INSERT INTO `product_tags` VALUES (537, 4, '2020-09-28 17:14:40', '2020-09-28 17:14:40');
INSERT INTO `product_tags` VALUES (538, 4, '2020-09-28 17:15:38', '2020-09-28 17:15:38');
INSERT INTO `product_tags` VALUES (539, 4, '2020-09-28 17:16:07', '2020-09-28 17:16:07');
INSERT INTO `product_tags` VALUES (540, 4, '2020-09-28 17:16:52', '2020-09-28 17:16:52');
INSERT INTO `product_tags` VALUES (541, 4, '2020-09-28 17:17:06', '2020-09-28 17:17:06');
INSERT INTO `product_tags` VALUES (542, 4, '2020-09-28 17:17:18', '2020-09-28 17:17:18');
INSERT INTO `product_tags` VALUES (543, 4, '2020-09-28 17:17:38', '2020-09-28 17:17:38');
INSERT INTO `product_tags` VALUES (544, 4, '2020-09-28 17:17:52', '2020-09-28 17:17:52');
INSERT INTO `product_tags` VALUES (545, 4, '2020-09-28 17:18:45', '2020-09-28 17:18:45');
INSERT INTO `product_tags` VALUES (546, 4, '2020-09-28 17:18:58', '2020-09-28 17:18:58');
INSERT INTO `product_tags` VALUES (547, 4, '2020-09-28 17:19:18', '2020-09-28 17:19:18');
INSERT INTO `product_tags` VALUES (548, 4, '2020-09-28 17:19:30', '2020-09-28 17:19:30');
INSERT INTO `product_tags` VALUES (549, 4, '2020-09-28 17:19:49', '2020-09-28 17:19:49');
INSERT INTO `product_tags` VALUES (550, 4, '2020-09-28 17:20:16', '2020-09-28 17:20:16');
INSERT INTO `product_tags` VALUES (551, 4, '2020-09-28 17:20:35', '2020-09-28 17:20:35');
INSERT INTO `product_tags` VALUES (552, 4, '2020-09-28 17:21:23', '2020-09-28 17:21:23');
INSERT INTO `product_tags` VALUES (553, 4, '2020-09-28 17:21:35', '2020-09-28 17:21:35');
INSERT INTO `product_tags` VALUES (554, 4, '2020-09-28 17:21:53', '2020-09-28 17:21:53');
INSERT INTO `product_tags` VALUES (555, 4, '2020-09-28 17:22:09', '2020-09-28 17:22:09');
INSERT INTO `product_tags` VALUES (556, 4, '2020-09-28 17:22:21', '2020-09-28 17:22:21');
INSERT INTO `product_tags` VALUES (557, 4, '2020-09-28 17:22:35', '2020-09-28 17:22:35');
INSERT INTO `product_tags` VALUES (558, 4, '2020-09-28 17:22:49', '2020-09-28 17:22:49');
INSERT INTO `product_tags` VALUES (559, 4, '2020-09-28 17:23:08', '2020-09-28 17:23:08');
INSERT INTO `product_tags` VALUES (560, 4, '2020-09-28 17:23:26', '2020-09-28 17:23:26');
INSERT INTO `product_tags` VALUES (561, 4, '2020-09-28 17:23:47', '2020-09-28 17:23:47');
INSERT INTO `product_tags` VALUES (562, 4, '2020-09-28 17:23:59', '2020-09-28 17:23:59');
INSERT INTO `product_tags` VALUES (563, 4, '2020-09-28 17:24:14', '2020-09-28 17:24:14');
INSERT INTO `product_tags` VALUES (564, 4, '2020-09-28 17:24:29', '2020-09-28 17:24:29');
INSERT INTO `product_tags` VALUES (565, 4, '2020-09-28 17:24:44', '2020-09-28 17:24:44');
INSERT INTO `product_tags` VALUES (566, 4, '2020-09-28 17:24:56', '2020-09-28 17:24:56');
INSERT INTO `product_tags` VALUES (568, 4, '2020-09-28 17:25:22', '2020-09-28 17:25:22');
INSERT INTO `product_tags` VALUES (571, 6, '2020-09-28 17:25:31', '2020-09-28 17:25:31');
INSERT INTO `product_tags` VALUES (572, 6, '2020-09-28 17:25:42', '2020-09-28 17:25:42');
INSERT INTO `product_tags` VALUES (573, 6, '2020-09-28 17:25:53', '2020-09-28 17:25:53');
INSERT INTO `product_tags` VALUES (574, 6, '2020-09-28 17:26:05', '2020-09-28 17:26:05');
INSERT INTO `product_tags` VALUES (575, 6, '2020-09-28 17:26:17', '2020-09-28 17:26:17');
INSERT INTO `product_tags` VALUES (576, 6, '2020-09-28 17:26:31', '2020-09-28 17:26:31');
INSERT INTO `product_tags` VALUES (577, 6, '2020-09-28 17:26:42', '2020-09-28 17:26:42');
INSERT INTO `product_tags` VALUES (578, 6, '2020-09-28 17:26:52', '2020-09-28 17:26:52');
INSERT INTO `product_tags` VALUES (579, 6, '2020-09-28 17:27:04', '2020-09-28 17:27:04');
INSERT INTO `product_tags` VALUES (580, 6, '2020-09-28 17:27:13', '2020-09-28 17:27:13');
INSERT INTO `product_tags` VALUES (581, 6, '2020-09-28 17:27:25', '2020-09-28 17:27:25');
INSERT INTO `product_tags` VALUES (582, 6, '2020-09-28 17:27:35', '2020-09-28 17:27:35');
INSERT INTO `product_tags` VALUES (583, 6, '2020-09-28 17:27:45', '2020-09-28 17:27:45');
INSERT INTO `product_tags` VALUES (585, 6, '2020-09-28 17:28:03', '2020-09-28 17:28:03');
INSERT INTO `product_tags` VALUES (586, 6, '2020-09-28 17:28:21', '2020-09-28 17:28:21');
INSERT INTO `product_tags` VALUES (587, 6, '2020-09-28 17:28:38', '2020-09-28 17:28:38');
INSERT INTO `product_tags` VALUES (588, 6, '2020-09-28 17:28:53', '2020-09-28 17:28:53');
INSERT INTO `product_tags` VALUES (589, 6, '2020-09-28 17:29:06', '2020-09-28 17:29:06');
INSERT INTO `product_tags` VALUES (590, 6, '2020-09-28 17:29:25', '2020-09-28 17:29:25');
INSERT INTO `product_tags` VALUES (591, 6, '2020-09-28 17:29:41', '2020-09-28 17:29:41');
INSERT INTO `product_tags` VALUES (592, 6, '2020-09-28 17:30:01', '2020-09-28 17:30:01');
INSERT INTO `product_tags` VALUES (593, 6, '2020-09-28 17:30:15', '2020-09-28 17:30:15');
INSERT INTO `product_tags` VALUES (594, 6, '2020-09-28 17:30:30', '2020-09-28 17:30:30');
INSERT INTO `product_tags` VALUES (595, 6, '2020-09-28 17:30:47', '2020-09-28 17:30:47');
INSERT INTO `product_tags` VALUES (596, 6, '2020-09-28 17:31:05', '2020-09-28 17:31:05');
INSERT INTO `product_tags` VALUES (597, 6, '2020-09-28 17:31:25', '2020-09-28 17:31:25');
INSERT INTO `product_tags` VALUES (598, 6, '2020-09-28 17:31:40', '2020-09-28 17:31:40');
INSERT INTO `product_tags` VALUES (599, 6, '2020-09-28 17:31:51', '2020-09-28 17:31:51');
INSERT INTO `product_tags` VALUES (600, 6, '2020-09-28 17:32:05', '2020-09-28 17:32:05');
INSERT INTO `product_tags` VALUES (601, 6, '2020-09-28 17:32:14', '2020-09-28 17:32:14');
INSERT INTO `product_tags` VALUES (602, 6, '2020-09-28 17:32:25', '2020-09-28 17:32:25');
INSERT INTO `product_tags` VALUES (603, 6, '2020-09-28 17:32:37', '2020-09-28 17:32:37');
INSERT INTO `product_tags` VALUES (604, 6, '2020-09-28 17:32:49', '2020-09-28 17:32:49');
INSERT INTO `product_tags` VALUES (605, 6, '2020-09-28 17:32:59', '2020-09-28 17:32:59');
INSERT INTO `product_tags` VALUES (606, 6, '2020-09-28 17:33:09', '2020-09-28 17:33:09');
INSERT INTO `product_tags` VALUES (607, 6, '2020-09-28 17:33:20', '2020-09-28 17:33:20');
INSERT INTO `product_tags` VALUES (608, 6, '2020-09-28 17:33:30', '2020-09-28 17:33:30');
INSERT INTO `product_tags` VALUES (609, 6, '2020-09-28 17:33:39', '2020-09-28 17:33:39');
INSERT INTO `product_tags` VALUES (610, 6, '2020-09-28 17:33:51', '2020-09-28 17:33:51');
INSERT INTO `product_tags` VALUES (611, 6, '2020-09-28 17:34:04', '2020-09-28 17:34:04');
INSERT INTO `product_tags` VALUES (612, 6, '2020-09-28 17:34:21', '2020-09-28 17:34:21');
INSERT INTO `product_tags` VALUES (613, 6, '2020-09-28 17:34:35', '2020-09-28 17:34:35');
INSERT INTO `product_tags` VALUES (614, 6, '2020-09-28 17:34:53', '2020-09-28 17:34:53');
INSERT INTO `product_tags` VALUES (615, 6, '2020-09-28 17:35:04', '2020-09-28 17:35:04');
INSERT INTO `product_tags` VALUES (616, 6, '2020-09-28 17:35:23', '2020-09-28 17:35:23');
INSERT INTO `product_tags` VALUES (617, 6, '2020-09-28 17:35:39', '2020-09-28 17:35:39');
INSERT INTO `product_tags` VALUES (618, 6, '2020-09-28 17:35:54', '2020-09-28 17:35:54');
INSERT INTO `product_tags` VALUES (619, 6, '2020-09-28 17:36:05', '2020-09-28 17:36:05');
INSERT INTO `product_tags` VALUES (620, 6, '2020-09-28 17:36:13', '2020-09-28 17:36:13');
INSERT INTO `product_tags` VALUES (621, 6, '2020-09-28 17:36:29', '2020-09-28 17:36:29');
INSERT INTO `product_tags` VALUES (622, 6, '2020-09-28 17:36:42', '2020-09-28 17:36:42');
INSERT INTO `product_tags` VALUES (623, 6, '2020-09-28 17:37:01', '2020-09-28 17:37:01');
INSERT INTO `product_tags` VALUES (624, 6, '2020-09-28 17:37:12', '2020-09-28 17:37:12');
INSERT INTO `product_tags` VALUES (625, 6, '2020-09-28 17:37:23', '2020-09-28 17:37:23');
INSERT INTO `product_tags` VALUES (626, 6, '2020-09-28 17:37:40', '2020-09-28 17:37:40');
INSERT INTO `product_tags` VALUES (627, 6, '2020-09-28 17:37:52', '2020-09-28 17:37:52');
INSERT INTO `product_tags` VALUES (628, 6, '2020-09-28 17:38:03', '2020-09-28 17:38:03');
INSERT INTO `product_tags` VALUES (629, 6, '2020-09-28 17:38:15', '2020-09-28 17:38:15');
INSERT INTO `product_tags` VALUES (630, 6, '2020-09-28 17:38:31', '2020-09-28 17:38:31');
INSERT INTO `product_tags` VALUES (631, 6, '2020-09-28 17:38:42', '2020-09-28 17:38:42');
INSERT INTO `product_tags` VALUES (632, 6, '2020-09-28 17:38:54', '2020-09-28 17:38:54');
INSERT INTO `product_tags` VALUES (633, 6, '2020-09-28 17:39:06', '2020-09-28 17:39:06');
INSERT INTO `product_tags` VALUES (634, 6, '2020-09-28 17:39:23', '2020-09-28 17:39:23');
INSERT INTO `product_tags` VALUES (635, 6, '2020-09-28 17:39:33', '2020-09-28 17:39:33');
INSERT INTO `product_tags` VALUES (636, 6, '2020-09-28 17:39:42', '2020-09-28 17:39:42');
INSERT INTO `product_tags` VALUES (637, 6, '2020-09-28 17:39:53', '2020-09-28 17:39:53');
INSERT INTO `product_tags` VALUES (638, 6, '2020-09-28 17:40:07', '2020-09-28 17:40:07');
INSERT INTO `product_tags` VALUES (639, 6, '2020-09-28 17:40:19', '2020-09-28 17:40:19');
INSERT INTO `product_tags` VALUES (640, 6, '2020-09-28 17:40:34', '2020-09-28 17:40:34');
INSERT INTO `product_tags` VALUES (641, 6, '2020-09-28 17:40:44', '2020-09-28 17:40:44');
INSERT INTO `product_tags` VALUES (642, 6, '2020-09-28 17:40:58', '2020-09-28 17:40:58');
INSERT INTO `product_tags` VALUES (643, 6, '2020-09-28 17:41:11', '2020-09-28 17:41:11');
INSERT INTO `product_tags` VALUES (644, 6, '2020-09-28 17:41:20', '2020-09-28 17:41:20');
INSERT INTO `product_tags` VALUES (645, 6, '2020-09-28 17:41:32', '2020-09-28 17:41:32');
INSERT INTO `product_tags` VALUES (646, 6, '2020-09-28 17:41:46', '2020-09-28 17:41:46');
INSERT INTO `product_tags` VALUES (647, 6, '2020-09-28 17:42:00', '2020-09-28 17:42:00');
INSERT INTO `product_tags` VALUES (648, 6, '2020-09-28 17:42:08', '2020-09-28 17:42:08');
INSERT INTO `product_tags` VALUES (649, 6, '2020-09-28 17:42:25', '2020-09-28 17:42:25');
INSERT INTO `product_tags` VALUES (650, 6, '2020-09-28 17:42:37', '2020-09-28 17:42:37');
INSERT INTO `product_tags` VALUES (651, 6, '2020-09-28 17:42:48', '2020-09-28 17:42:48');
INSERT INTO `product_tags` VALUES (652, 6, '2020-09-28 17:42:58', '2020-09-28 17:42:58');
INSERT INTO `product_tags` VALUES (653, 6, '2020-09-28 17:43:08', '2020-09-28 17:43:08');
INSERT INTO `product_tags` VALUES (654, 6, '2020-09-28 17:43:18', '2020-09-28 17:43:18');
INSERT INTO `product_tags` VALUES (655, 6, '2020-09-28 17:43:29', '2020-09-28 17:43:29');
INSERT INTO `product_tags` VALUES (656, 6, '2020-09-28 17:43:38', '2020-09-28 17:43:38');
INSERT INTO `product_tags` VALUES (657, 6, '2020-09-28 17:43:49', '2020-09-28 17:43:49');
INSERT INTO `product_tags` VALUES (658, 6, '2020-09-28 17:43:59', '2020-09-28 17:43:59');
INSERT INTO `product_tags` VALUES (659, 6, '2020-09-28 17:44:08', '2020-09-28 17:44:08');
INSERT INTO `product_tags` VALUES (660, 6, '2020-09-28 17:44:19', '2020-09-28 17:44:19');
INSERT INTO `product_tags` VALUES (661, 6, '2020-09-28 17:44:28', '2020-09-28 17:44:28');
INSERT INTO `product_tags` VALUES (662, 6, '2020-09-28 17:44:37', '2020-09-28 17:44:37');
INSERT INTO `product_tags` VALUES (663, 6, '2020-09-28 17:44:50', '2020-09-28 17:44:50');
INSERT INTO `product_tags` VALUES (664, 6, '2020-09-28 17:45:08', '2020-09-28 17:45:08');
INSERT INTO `product_tags` VALUES (665, 6, '2020-09-28 17:45:21', '2020-09-28 17:45:21');
INSERT INTO `product_tags` VALUES (666, 6, '2020-09-28 17:45:38', '2020-09-28 17:45:38');
INSERT INTO `product_tags` VALUES (667, 6, '2020-09-28 17:45:49', '2020-09-28 17:45:49');
INSERT INTO `product_tags` VALUES (668, 6, '2020-09-28 17:46:08', '2020-09-28 17:46:08');
INSERT INTO `product_tags` VALUES (669, 6, '2020-09-28 17:46:19', '2020-09-28 17:46:19');
INSERT INTO `product_tags` VALUES (670, 5, '2020-09-28 18:34:33', '2020-09-28 18:34:33');
INSERT INTO `product_tags` VALUES (671, 5, '2020-09-28 18:34:51', '2020-09-28 18:34:51');
INSERT INTO `product_tags` VALUES (672, 5, '2020-09-28 18:35:11', '2020-09-28 18:35:11');
INSERT INTO `product_tags` VALUES (673, 5, '2020-09-28 18:35:28', '2020-09-28 18:35:28');
INSERT INTO `product_tags` VALUES (674, 5, '2020-09-28 18:35:42', '2020-09-28 18:35:42');
INSERT INTO `product_tags` VALUES (675, 5, '2020-09-28 18:35:55', '2020-09-28 18:35:55');
INSERT INTO `product_tags` VALUES (676, 5, '2020-09-28 18:36:11', '2020-09-28 18:36:11');
INSERT INTO `product_tags` VALUES (677, 5, '2020-09-28 18:36:30', '2020-09-28 18:36:30');
INSERT INTO `product_tags` VALUES (678, 5, '2020-09-28 18:36:44', '2020-09-28 18:36:44');
INSERT INTO `product_tags` VALUES (679, 5, '2020-09-28 18:36:59', '2020-09-28 18:36:59');
INSERT INTO `product_tags` VALUES (680, 5, '2020-09-28 18:37:25', '2020-09-28 18:37:25');
INSERT INTO `product_tags` VALUES (681, 5, '2020-09-28 18:37:40', '2020-09-28 18:37:40');
INSERT INTO `product_tags` VALUES (682, 5, '2020-09-28 18:37:54', '2020-09-28 18:37:54');
INSERT INTO `product_tags` VALUES (683, 5, '2020-09-28 18:38:13', '2020-09-28 18:38:13');
INSERT INTO `product_tags` VALUES (684, 5, '2020-09-28 18:38:32', '2020-09-28 18:38:32');
INSERT INTO `product_tags` VALUES (685, 5, '2020-09-28 18:38:49', '2020-09-28 18:38:49');
INSERT INTO `product_tags` VALUES (686, 5, '2020-09-28 18:39:09', '2020-09-28 18:39:09');
INSERT INTO `product_tags` VALUES (687, 5, '2020-09-28 18:39:26', '2020-09-28 18:39:26');
INSERT INTO `product_tags` VALUES (688, 5, '2020-09-28 18:39:51', '2020-09-28 18:39:51');
INSERT INTO `product_tags` VALUES (689, 5, '2020-09-28 18:40:19', '2020-09-28 18:40:19');
INSERT INTO `product_tags` VALUES (690, 5, '2020-09-28 18:40:39', '2020-09-28 18:40:39');
INSERT INTO `product_tags` VALUES (691, 5, '2020-09-28 18:40:59', '2020-09-28 18:40:59');
INSERT INTO `product_tags` VALUES (692, 5, '2020-09-28 18:41:16', '2020-09-28 18:41:16');
INSERT INTO `product_tags` VALUES (693, 5, '2020-09-28 18:41:35', '2020-09-28 18:41:35');
INSERT INTO `product_tags` VALUES (694, 5, '2020-09-28 18:41:56', '2020-09-28 18:41:56');
INSERT INTO `product_tags` VALUES (695, 5, '2020-09-28 18:42:14', '2020-09-28 18:42:14');
INSERT INTO `product_tags` VALUES (696, 5, '2020-09-28 18:42:31', '2020-09-28 18:42:31');
INSERT INTO `product_tags` VALUES (697, 5, '2020-09-28 18:42:52', '2020-09-28 18:42:52');
INSERT INTO `product_tags` VALUES (698, 5, '2020-09-28 18:43:09', '2020-09-28 18:43:09');
INSERT INTO `product_tags` VALUES (699, 5, '2020-09-28 18:43:40', '2020-09-28 18:43:40');
INSERT INTO `product_tags` VALUES (700, 5, '2020-09-28 18:43:58', '2020-09-28 18:43:58');
INSERT INTO `product_tags` VALUES (701, 5, '2020-09-28 18:44:20', '2020-09-28 18:44:20');
INSERT INTO `product_tags` VALUES (702, 5, '2020-09-28 18:44:36', '2020-09-28 18:44:36');
INSERT INTO `product_tags` VALUES (703, 5, '2020-09-28 18:44:55', '2020-09-28 18:44:55');
INSERT INTO `product_tags` VALUES (704, 5, '2020-09-28 18:45:16', '2020-09-28 18:45:16');
INSERT INTO `product_tags` VALUES (705, 5, '2020-09-28 18:45:32', '2020-09-28 18:45:32');
INSERT INTO `product_tags` VALUES (706, 5, '2020-09-28 18:45:46', '2020-09-28 18:45:46');
INSERT INTO `product_tags` VALUES (707, 5, '2020-09-28 18:46:07', '2020-09-28 18:46:07');
INSERT INTO `product_tags` VALUES (708, 5, '2020-09-28 18:46:21', '2020-09-28 18:46:21');
INSERT INTO `product_tags` VALUES (709, 5, '2020-09-28 18:46:40', '2020-09-28 18:46:40');
INSERT INTO `product_tags` VALUES (710, 5, '2020-09-28 18:47:00', '2020-09-28 18:47:00');
INSERT INTO `product_tags` VALUES (711, 5, '2020-09-28 18:47:25', '2020-09-28 18:47:25');
INSERT INTO `product_tags` VALUES (712, 5, '2020-09-28 18:47:48', '2020-09-28 18:47:48');
INSERT INTO `product_tags` VALUES (713, 5, '2020-09-28 18:48:04', '2020-09-28 18:48:04');
INSERT INTO `product_tags` VALUES (714, 5, '2020-09-28 18:48:23', '2020-09-28 18:48:23');
INSERT INTO `product_tags` VALUES (715, 5, '2020-09-28 18:48:37', '2020-09-28 18:48:37');
INSERT INTO `product_tags` VALUES (716, 5, '2020-09-28 18:48:58', '2020-09-28 18:48:58');
INSERT INTO `product_tags` VALUES (717, 5, '2020-09-28 18:49:19', '2020-09-28 18:49:19');
INSERT INTO `product_tags` VALUES (718, 5, '2020-09-28 18:49:38', '2020-09-28 18:49:38');
INSERT INTO `product_tags` VALUES (719, 5, '2020-09-28 18:49:54', '2020-09-28 18:49:54');
INSERT INTO `product_tags` VALUES (720, 5, '2020-09-28 18:50:11', '2020-09-28 18:50:11');
INSERT INTO `product_tags` VALUES (721, 5, '2020-09-28 18:50:26', '2020-09-28 18:50:26');
INSERT INTO `product_tags` VALUES (722, 5, '2020-09-28 18:50:42', '2020-09-28 18:50:42');
INSERT INTO `product_tags` VALUES (723, 5, '2020-09-28 18:50:55', '2020-09-28 18:50:55');
INSERT INTO `product_tags` VALUES (724, 5, '2020-09-28 18:51:11', '2020-09-28 18:51:11');
INSERT INTO `product_tags` VALUES (726, 5, '2020-09-28 18:51:39', '2020-09-28 18:51:39');
INSERT INTO `product_tags` VALUES (730, 5, '2020-09-28 18:51:55', '2020-09-28 18:51:55');
INSERT INTO `product_tags` VALUES (731, 5, '2020-09-28 18:52:10', '2020-09-28 18:52:10');
INSERT INTO `product_tags` VALUES (732, 5, '2020-09-28 18:52:22', '2020-09-28 18:52:22');
INSERT INTO `product_tags` VALUES (733, 5, '2020-09-28 18:52:36', '2020-09-28 18:52:36');
INSERT INTO `product_tags` VALUES (734, 5, '2020-09-28 18:52:48', '2020-09-28 18:52:48');
INSERT INTO `product_tags` VALUES (735, 5, '2020-09-28 18:52:58', '2020-09-28 18:52:58');
INSERT INTO `product_tags` VALUES (737, 7, '2020-09-28 18:53:02', '2020-09-28 18:53:02');
INSERT INTO `product_tags` VALUES (740, 7, '2020-09-28 18:53:05', '2020-09-28 18:53:05');
INSERT INTO `product_tags` VALUES (741, 7, '2020-09-28 18:53:10', '2020-09-28 18:53:10');
INSERT INTO `product_tags` VALUES (742, 7, '2020-09-28 18:53:13', '2020-09-28 18:53:13');
INSERT INTO `product_tags` VALUES (743, 7, '2020-09-28 18:53:17', '2020-09-28 18:53:17');
INSERT INTO `product_tags` VALUES (744, 7, '2020-09-28 18:53:20', '2020-09-28 18:53:20');
INSERT INTO `product_tags` VALUES (745, 7, '2020-09-28 18:53:23', '2020-09-28 18:53:23');
INSERT INTO `product_tags` VALUES (746, 7, '2020-09-28 18:53:26', '2020-09-28 18:53:26');
INSERT INTO `product_tags` VALUES (747, 7, '2020-09-28 18:53:29', '2020-09-28 18:53:29');
INSERT INTO `product_tags` VALUES (748, 7, '2020-09-28 18:53:34', '2020-09-28 18:53:34');
INSERT INTO `product_tags` VALUES (749, 7, '2020-09-28 18:53:38', '2020-09-28 18:53:38');
INSERT INTO `product_tags` VALUES (750, 7, '2020-09-28 18:53:40', '2020-09-28 18:53:40');
INSERT INTO `product_tags` VALUES (751, 7, '2020-09-28 18:53:44', '2020-09-28 18:53:44');
INSERT INTO `product_tags` VALUES (752, 7, '2020-09-28 18:53:48', '2020-09-28 18:53:48');
INSERT INTO `product_tags` VALUES (753, 7, '2020-09-28 18:53:51', '2020-09-28 18:53:51');
INSERT INTO `product_tags` VALUES (754, 7, '2020-09-28 18:53:55', '2020-09-28 18:53:55');
INSERT INTO `product_tags` VALUES (755, 7, '2020-09-28 18:53:58', '2020-09-28 18:53:58');
INSERT INTO `product_tags` VALUES (756, 7, '2020-09-28 18:54:02', '2020-09-28 18:54:02');
INSERT INTO `product_tags` VALUES (757, 7, '2020-09-28 18:54:07', '2020-09-28 18:54:07');
INSERT INTO `product_tags` VALUES (758, 7, '2020-09-28 18:54:11', '2020-09-28 18:54:11');
INSERT INTO `product_tags` VALUES (759, 7, '2020-09-28 18:54:15', '2020-09-28 18:54:15');
INSERT INTO `product_tags` VALUES (760, 7, '2020-09-28 18:54:18', '2020-09-28 18:54:18');
INSERT INTO `product_tags` VALUES (761, 7, '2020-09-28 18:54:21', '2020-09-28 18:54:21');
INSERT INTO `product_tags` VALUES (762, 7, '2020-09-28 18:54:24', '2020-09-28 18:54:24');
INSERT INTO `product_tags` VALUES (763, 7, '2020-09-28 18:54:27', '2020-09-28 18:54:27');
INSERT INTO `product_tags` VALUES (764, 7, '2020-09-28 18:54:29', '2020-09-28 18:54:29');
INSERT INTO `product_tags` VALUES (765, 7, '2020-09-28 18:54:44', '2020-09-28 18:54:44');
INSERT INTO `product_tags` VALUES (766, 7, '2020-09-28 18:54:47', '2020-09-28 18:54:47');
INSERT INTO `product_tags` VALUES (767, 7, '2020-09-28 18:54:51', '2020-09-28 18:54:51');
INSERT INTO `product_tags` VALUES (768, 7, '2020-09-28 18:54:54', '2020-09-28 18:54:54');
INSERT INTO `product_tags` VALUES (769, 7, '2020-09-28 18:54:56', '2020-09-28 18:54:56');
INSERT INTO `product_tags` VALUES (770, 7, '2020-09-28 18:54:59', '2020-09-28 18:54:59');
INSERT INTO `product_tags` VALUES (771, 7, '2020-09-28 18:55:01', '2020-09-28 18:55:01');
INSERT INTO `product_tags` VALUES (772, 7, '2020-09-28 18:55:04', '2020-09-28 18:55:04');
INSERT INTO `product_tags` VALUES (773, 7, '2020-09-28 18:55:08', '2020-09-28 18:55:08');
INSERT INTO `product_tags` VALUES (774, 7, '2020-09-28 18:55:12', '2020-09-28 18:55:12');
INSERT INTO `product_tags` VALUES (775, 7, '2020-09-28 18:55:15', '2020-09-28 18:55:15');
INSERT INTO `product_tags` VALUES (776, 7, '2020-09-28 18:55:17', '2020-09-28 18:55:17');
INSERT INTO `product_tags` VALUES (777, 7, '2020-09-28 18:55:23', '2020-09-28 18:55:23');
INSERT INTO `product_tags` VALUES (778, 7, '2020-09-28 18:55:26', '2020-09-28 18:55:26');
INSERT INTO `product_tags` VALUES (779, 7, '2020-09-28 18:55:29', '2020-09-28 18:55:29');
INSERT INTO `product_tags` VALUES (780, 7, '2020-09-28 18:55:32', '2020-09-28 18:55:32');
INSERT INTO `product_tags` VALUES (781, 7, '2020-09-28 18:55:34', '2020-09-28 18:55:34');
INSERT INTO `product_tags` VALUES (782, 7, '2020-09-28 18:55:41', '2020-09-28 18:55:41');
INSERT INTO `product_tags` VALUES (783, 7, '2020-09-28 18:55:44', '2020-09-28 18:55:44');
INSERT INTO `product_tags` VALUES (784, 7, '2020-09-28 18:55:47', '2020-09-28 18:55:47');
INSERT INTO `product_tags` VALUES (785, 7, '2020-09-28 18:55:51', '2020-09-28 18:55:51');
INSERT INTO `product_tags` VALUES (786, 7, '2020-09-28 18:55:54', '2020-09-28 18:55:54');
INSERT INTO `product_tags` VALUES (787, 7, '2020-09-28 18:55:58', '2020-09-28 18:55:58');
INSERT INTO `product_tags` VALUES (788, 7, '2020-09-28 18:56:01', '2020-09-28 18:56:01');
INSERT INTO `product_tags` VALUES (789, 7, '2020-09-28 18:56:05', '2020-09-28 18:56:05');
INSERT INTO `product_tags` VALUES (790, 7, '2020-09-28 18:56:08', '2020-09-28 18:56:08');
INSERT INTO `product_tags` VALUES (791, 7, '2020-09-28 18:56:09', '2020-09-28 18:56:09');
INSERT INTO `product_tags` VALUES (792, 7, '2020-09-28 18:56:12', '2020-09-28 18:56:12');
INSERT INTO `product_tags` VALUES (3372, 1, '2020-09-29 16:08:10', '2020-09-29 16:08:10');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sku` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `image` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `product_status_id` int(0) NOT NULL,
  `regular_price` decimal(10, 0) NULL DEFAULT 0,
  `discount_price` decimal(10, 0) NULL DEFAULT 0,
  `discount_percent` decimal(10, 0) NULL DEFAULT NULL,
  `quantity` int(0) NULL DEFAULT 0,
  `unit` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `taxable` tinyint(1) NULL DEFAULT 0,
  `inserted_at` timestamp(0) NOT NULL,
  `updated_at` timestamp(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3373 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, '', 'strawbery', 'Strawberry', 'Strawberry', 'The garden strawberry is a widely grown hybrid species of the genus Fragaria, collectively known as the strawberries, which are cultivated worldwide for their fruit. The fruit is widely appreciated for its characteristic aroma, bright red color, juicy texture, and sweetness.', 0, 5, 3, 40, 0, '1 lb', 0, '2020-09-28 13:47:14', '2020-09-28 13:47:14');
INSERT INTO `products` VALUES (2, '', 'blueberry', 'Blueberries', 'Blueberries', 'Blueberries are perennial flowering plants with blue or purple berries. They are classified in the section Cyanococcus within the genus Vaccinium. Vaccinium also includes cranberries, bilberries, huckleberries and Madeira blueberries. Commercial blueberries—both wild and cultivated —are all native to North America.', 0, 8, 7, 13, 0, '1 lb', 0, '2020-09-28 13:47:18', '2020-09-28 13:47:18');
INSERT INTO `products` VALUES (3, '', 'clementines', 'Clementines', 'Clementines', ' clementine is a tangor, a citrus fruit hybrid between a willowleaf mandarin orange and a sweet orange, named for its late 19th-century discoverer. The exterior is a deep orange colour with a smooth, glossy appearance. ', 0, 3, 3, 0, 0, '2 lb', 0, '2020-09-28 13:47:21', '2020-09-28 13:47:21');
INSERT INTO `products` VALUES (4, '', 'apples', 'Apples', 'Apples', 'An apple is a sweet, edible fruit produced by an apple tree (Malus domestica). Apple trees are ... The skin of ripe apples is generally red, yellow, green, pink, or russetted, though many bi- or tri-colored cultivars may be found. ', 0, 2, 2, 0, 0, '2 lb', 0, '2020-09-28 13:47:25', '2020-09-28 13:47:25');
INSERT INTO `products` VALUES (5, '', 'pear', 'Pears', 'Pears', 'The pear tree and shrub are a species of genus Pyrus, in the family Rosaceae, bearing the pomaceous fruit of the same name. Several species of pear are valued for their edible fruit and juices while others are cultivated as trees.', 0, 2, 2, 0, 0, '1 lb', 0, '2020-09-28 13:47:28', '2020-09-28 13:47:28');
INSERT INTO `products` VALUES (6, '', 'mango', 'Mango', 'Mango', 'A mango is a juicy stone fruit produced from numerous species of tropical trees belonging to the flowering plant genus Mangifera, cultivated mostly for their edible fruit. Most of these species are found in nature as wild mangoes. The genus belongs to the cashew family Anacardiaceae.', 0, 3, 3, 0, 0, '2 lb', 0, '2020-09-28 13:47:36', '2020-09-28 13:47:36');
INSERT INTO `products` VALUES (7, '', 'dates', 'Dates', 'Dates', 'Phoenix dactylifera, commonly known as date or date palm, is a flowering plant species in the palm family, Arecaceae, cultivated for its edible sweet fruit.', 0, 15, 12, 20, 0, '2 lb', 0, '2020-09-28 13:47:39', '2020-09-28 13:47:39');
INSERT INTO `products` VALUES (8, '', 'lime', 'lime', 'lime', 'The lemon/lime, Citrus limon Osbeck, is a species of small evergreen tree in the flowering plant family Rutaceae, native to South Asia, primarily North eastern India.', 0, 2, 2, 0, 0, '12 pc(s)', 0, '2020-09-28 13:46:13', '2020-09-28 13:46:13');
INSERT INTO `products` VALUES (9, '', 'lemon', 'Lemon', 'Lemon', 'The lemon/lime, Citrus limon Osbeck, is a species of small evergreen tree in the flowering plant family Rutaceae, native to South Asia, primarily North eastern India.', 0, 2, 2, 0, 0, '12 pc(s)', 0, '2020-09-28 13:46:20', '2020-09-28 13:46:20');
INSERT INTO `products` VALUES (10, '', 'cherry', 'Cherry', 'Cherry', 'A cherry is the fruit of many plants of the genus Prunus, and is a fleshy drupe. Commercial cherries are obtained from cultivars of several species, such as the sweet Prunus avium and the sour Prunus cerasus', 0, 2, 2, 0, 0, '0.5 lb', 0, '2020-09-28 13:46:24', '2020-09-28 13:46:24');
INSERT INTO `products` VALUES (11, '', 'celerystick', 'Celery Stick', 'Celery Stick', 'celery stick - celery stalks cut into small sticks. crudites - raw vegetables cut into bite-sized strips and served with a dip. celery - stalks eaten raw or cooked or used as seasoning.', 0, 1, 1, 0, 0, '1 lb', 0, '2020-09-28 13:46:30', '2020-09-28 13:46:30');
INSERT INTO `products` VALUES (12, '', 'babyspinach', 'Baby Spinach', 'Baby Spinach', 'Spinach (Spinacia oleracea) is a leafy green flowering plant native to central and western Asia. It is of the order Caryophyllales, family Amaranthaceae, subfamily Chenopodioideae. Its leaves are a common edible vegetable consumed either fresh.', 0, 1, 1, 0, 0, '0.2 lb', 0, '2020-09-28 13:46:33', '2020-09-28 13:46:33');
INSERT INTO `products` VALUES (13, '', 'mixveggieplatter', 'Mix Vegetable Platter', 'Mix Vegetable Platter', 'Spinach (Spinacia oleracea) is a leafy green flowering plant native to central and western Asia. It is of the order Caryophyllales, family Amaranthaceae, subfamily Chenopodioideae. Its leaves are a common edible vegetable consumed either fresh.', 0, 2, 2, 0, 0, '0.4 lb', 0, '2020-09-28 13:46:38', '2020-09-28 13:46:38');
INSERT INTO `products` VALUES (14, '', 'frenchgreenbeans', 'French Green Beans', 'French Green Beans', 'Green beans are the unripe, young fruit and protective pods of various cultivars of the common bean. Immature or young pods of the runner bean, yardlong bean, and hyacinth bean are used in a similar way.', 0, 2, 2, 0, 0, '.6 lb', 0, '2020-09-28 13:46:42', '2020-09-28 13:46:42');
INSERT INTO `products` VALUES (15, '', 'sweetcorn', 'Sweet Corn', 'Sweet Corn', 'Maize, also known as corn, is a cereal grain first domesticated by indigenous peoples in southern Mexico about 10,000 years ago. The leafy stalk of the plant produces pollen inflorescences and separate ovuliferous inflorescences called ears that yield kernels or seeds, which are fruits.', 0, 3, 3, 0, 0, '2.5 lb', 0, '2020-09-28 13:46:48', '2020-09-28 13:46:48');
INSERT INTO `products` VALUES (16, '', 'cucumber', 'Cucumber', 'Cucumber', 'Cucumber is a widely cultivated plant in the gourd family, Cucurbitaceae. It is a creeping vine that bears cucumiform fruits that are used as vegetables. There are three main varieties of cucumber: slicing, pickling, and seedless. Within these varieties, several cultivars have been created.', 0, 2, 2, 0, 0, '4 lb', 0, '2020-09-28 13:46:51', '2020-09-28 13:46:51');
INSERT INTO `products` VALUES (17, '', 'pepper', 'Pepper', 'Pepper', 'Black pepper is a flowering vine in the family Piperaceae, cultivated for its fruit, known as a peppercorn, which is usually dried and used as a spice and seasoning. When fresh and fully mature, it is about 5 mm in diameter and dark red, and contains a single seed, like all drupes', 0, 10, 8, 20, 0, '1.5 lb', 0, '2020-09-28 13:46:57', '2020-09-28 13:46:57');
INSERT INTO `products` VALUES (18, '', 'greenbeans', ' Green Beans', ' Green Beans', 'Green beans are the unripe, young fruit and protective pods of various cultivars of the common bean. Immature or young pods of the runner bean, yardlong bean, and hyacinth bean are used in a similar way.', 0, 2, 1, 50, 0, '.6 lb', 0, '2020-09-28 13:47:01', '2020-09-28 13:47:01');
INSERT INTO `products` VALUES (19, '', 'brusselssprouts', ' Brussels Sprout', ' Brussels Sprout', 'The Brussels sprout is a member of the Gemmifera Group of cabbages, grown for its edible buds. The leaf vegetables are typically 1.5–4.0 cm in diameter and look like miniature cabbages. The Brussels sprout has long been popular in Brussels, Belgium, and may have gained its name there.', 0, 4, 4, 0, 0, '1 lb', 0, '2020-09-28 13:47:07', '2020-09-28 13:47:07');
INSERT INTO `products` VALUES (20, '', 'babycarrot', 'Peeled Baby Carrot', 'Peeled Baby Carrot', 'The carrot is a root vegetable, usually orange in colour, though purple, black, red, white, and yellow cultivars exist. They are a domesticated form of the wild carrot, Daucus carota, native to Europe and Southwestern Asia. The plant probably originated in Persia and was originally cultivated for its leaves and seeds.', 0, 3, 3, 0, 0, '2 lb', 0, '2020-09-28 13:47:10', '2020-09-28 13:47:10');
INSERT INTO `products` VALUES (21, '', 'signaturesalmon', 'Signature Salmon', 'Signature Salmon', 'Salmon is a common food classified as an oily fish with a rich content of protein and omega-3 fatty acids', 0, 5, 5, 0, 0, '1 lb', 0, '2020-09-28 13:47:45', '2020-09-28 13:47:45');
INSERT INTO `products` VALUES (22, '', 'codfillet', 'Cod Fillet', 'Cod Fillet', 'Cod is the common name for the demersal fish genus Gadus, belonging to the family Gadidae. Cod is also used as part of the common name for a number of other fish species, and some species suggested to belong to genus Gadus are not called cod.', 0, 10, 8, 20, 0, '1 lb', 0, '2020-09-28 13:47:48', '2020-09-28 13:47:48');
INSERT INTO `products` VALUES (23, '', 'swordfish', 'Swordfish Fillet', 'Swordfish Fillet', 'The swordfish meat has a very delicate flavour, meaty and mild. Swordfish, also known as broadbills, is an oily fish similar to tuna, chunky meat without bones.', 0, 10, 9, 10, 0, '1.5 lb', 0, '2020-09-28 13:47:52', '2020-09-28 13:47:52');
INSERT INTO `products` VALUES (24, '', 'halibut', 'Halibut Fillet', 'Halibut Fillet', 'Hippoglossus stenolepis, the Pacific halibut, is a species of righteye flounder. This very large species of flatfish is native to the North Pacific and is fished by commercial fisheries, sport fishers, and subsistence fishers.', 0, 15, 15, 0, 0, '2 lb', 0, '2020-09-28 13:47:57', '2020-09-28 13:47:57');
INSERT INTO `products` VALUES (25, '', 'tilapia', 'Tilapia Fillet', 'Tilapia Fillet', 'Tilapia is the common name for nearly a hundred species of cichlid fish from the coelotilapine, coptodonine, heterotilapine, oreochromine, pelmatolapiine and tilapiine tribes, with the economically most important species placed in Coptodonini and Oreochromini.', 0, 8, 8, 0, 0, '1 lb', 0, '2020-09-28 13:48:02', '2020-09-28 13:48:02');
INSERT INTO `products` VALUES (26, '', 'beef', 'Fresh Beef', 'Fresh Beef', 'Meat is animal flesh that is eaten as food. Humans have hunted and killed animals for meat since prehistoric times. The advent of civilization allowed the domestication of animals such as chickens, sheep, rabbits, pigs and cattle.', 0, 6, 6, 0, 0, '1 lb', 0, '2020-09-28 13:48:06', '2020-09-28 13:48:06');
INSERT INTO `products` VALUES (27, '', 'turkeybreast', 'Sliced Turkey Breast', 'Sliced Turkey Breast', 'Meat is animal flesh that is eaten as food. Humans have hunted and killed animals for meat since prehistoric times. The advent of civilization allowed the domestication of animals such as chickens, sheep, rabbits, pigs and cattle.', 0, 8, 7, 13, 0, '2 lb ', 0, '2020-09-28 13:48:10', '2020-09-28 13:48:10');
INSERT INTO `products` VALUES (28, '', 'chickenthigh', 'Chicken Thighs', 'Chicken Thighs', 'Meat is animal flesh that is eaten as food. Humans have hunted and killed animals for meat since prehistoric times. The advent of civilization allowed the domestication of animals such as chickens, sheep, rabbits, pigs and cattle.', 0, 10, 7, 30, 0, '5 lb ', 0, '2020-09-28 13:48:18', '2020-09-28 13:48:18');
INSERT INTO `products` VALUES (29, '', 'chickenbreast', 'Chicken Breast', 'Chicken Breast', 'Meat is animal flesh that is eaten as food. Humans have hunted and killed animals for meat since prehistoric times. The advent of civilization allowed the domestication of animals such as chickens, sheep, rabbits, pigs and cattle.', 0, 10, 10, 0, 0, '5 lb ', 0, '2020-09-28 13:48:22', '2020-09-28 13:48:22');
INSERT INTO `products` VALUES (30, '', 'beefsteak', 'Beef Steak', 'Beef Steak', 'Meat is animal flesh that is eaten as food. Humans have hunted and killed animals for meat since prehistoric times. The advent of civilization allowed the domestication of animals such as chickens, sheep, rabbits, pigs and cattle.', 0, 15, 15, 0, 0, '3 lb ', 0, '2020-09-28 13:48:25', '2020-09-28 13:48:25');
INSERT INTO `products` VALUES (35, '', 'advent-laptop-bag', 'Advent Laptop Bag', 'Advent Laptop Bag', 'Material: Laptop Shoulder Bag is made of quality canvas, protecting your laptop from dust, scratches and water', 0, 200, 160, 20, 0, '1 pc(s)', 0, '2020-09-28 13:48:50', '2020-09-28 13:48:50');
INSERT INTO `products` VALUES (36, '', 'alex-maqueen-shoulder-bag', 'Alex Maqueeen Shoulder Bag', 'Alex Maqueeen Shoulder Bag', 'Luxury British fashion house Alexander McQueen is famed for its exquisitely designed handbags and accessories, as showcased through this stunning black Box bag. Expertly crafted in Italy from supple calf leather, the bag is an ideal accessory choice which suits a variety of styles and occasions.', 0, 250, 200, 20, 0, '1 pc(s)', 0, '2020-09-28 13:49:12', '2020-09-28 13:49:12');
INSERT INTO `products` VALUES (37, '', 'armani-black-wallet', 'Armani Black Wallet', 'Armani Black Wallet', 'Brand New Emporio Armani Leather Wallet. Shipped with USPS First Class Package.', 0, 150, 135, 10, 0, '1 pc(s)', 0, '2020-09-28 13:49:27', '2020-09-28 13:49:27');
INSERT INTO `products` VALUES (38, '', 'armani-handbag', 'Armani Handbag', 'Armani Handbag', 'Black logo embossed messenger bag from Giorgio Armani featuring an adjustable shoulder strap, a top zip fastening and a front zip pocket.', 0, 350, 350, 0, 0, '1 pc(s)', 0, '2020-09-28 13:49:55', '2020-09-28 13:49:55');
INSERT INTO `products` VALUES (39, '', 'armani-leather-purse', 'Armani Leather Purse', 'Armani Leather Purse', 'The name Giorgio Armani has become synonymous with clean lines and Italian style. One of the most recognisable fashion houses in the world, the label has dressed some of the world’s most beautiful women.', 0, 50, 40, 20, 0, '1 pc(s)', 0, '2020-09-28 13:50:06', '2020-09-28 13:50:06');
INSERT INTO `products` VALUES (40, '', 'armani-purse', 'Armani Purse', 'Armani Purse', 'Black logo embossed messenger bag from Giorgio Armani featuring an adjustable shoulder strap, a top zip fastening and a front zip pocket.', 0, 80, 72, 10, 0, '1 pc(s)', 0, '2020-09-28 13:50:25', '2020-09-28 13:50:25');
INSERT INTO `products` VALUES (41, '', 'armani-wallet', 'Armani Wallet', 'Armani Wallet', 'Brand New Emporio Armani Leather Wallet. Shipped with USPS First Class Package.', 0, 60, 60, 0, 0, '1 pc(s)', 0, '2020-09-28 13:50:40', '2020-09-28 13:50:40');
INSERT INTO `products` VALUES (42, '', 'chanel-shoulder-bag', 'Chanel Shoulder Bag', 'Chanel Shoulder Bag', '00% Authenticity Guaranteed Chanel Classic Jumbo Single Flap Black Caviar Shoulder Bag', 0, 190, 171, 10, 0, '1 pc(s)', 0, '2020-09-28 13:50:59', '2020-09-28 13:50:59');
INSERT INTO `products` VALUES (43, '', 'chanel-wallet-brown', 'Chanel Wallet Brown', 'Chanel Wallet Brown', 'Beautiful new Chanel fingerless wallet. Tweed with leather CC on top and leather on the backside of the wallet.', 0, 90, 90, 0, 0, '1 pc(s)', 0, '2020-09-28 13:51:12', '2020-09-28 13:51:12');
INSERT INTO `products` VALUES (44, '', 'chanel-wallet', 'Chanel Wallet', 'Chanel Wallet', 'Beautiful new Chanel fingerless wallet. Tweed with leather CC on top and leather on the backside of the wallet.', 0, 60, 48, 20, 0, '1 pc(s)', 0, '2020-09-28 13:51:28', '2020-09-28 13:51:28');
INSERT INTO `products` VALUES (45, '', 'givenchy-shoulder-bag', 'Givenchy Shoulder Bag', 'Givenchy Shoulder Bag', 'Established in 1952, Givenchy\'s stance on contemporary elegance is perfectly captured through the brand’s premium accessory collections. Crafted from calf leather, this grey GV3 croc-effect shoulder bag from Givenchy features a chain top handle with logo charm, a detachable shoulder strap, a front flap closure, a metal logo plaque to the front, gold-tone hardware and suede panels.', 0, 210, 210, 0, 0, '1 pc(s)', 0, '2020-09-28 13:51:41', '2020-09-28 13:51:41');
INSERT INTO `products` VALUES (46, '', 'givenchy-purse', 'Givenchy Purse', 'Givenchy Purse', 'Established in 1952, Givenchy\'s stance on contemporary elegance is perfectly captured through the brand’s premium accessory collections. Crafted from calf leather, this grey GV3 croc-effect shoulder bag from Givenchy features a chain top handle with logo charm, a detachable shoulder strap, a front flap closure, a metal logo plaque to the front, gold-tone hardware and suede panels.', 0, 75, 60, 20, 0, '1 pc(s)', 0, '2020-09-28 13:51:54', '2020-09-28 13:51:54');
INSERT INTO `products` VALUES (47, '', 'gucci-handbag', 'Gucci Handbag', 'Gucci Handbag', 'Luxury Italian fashion house Gucci is renowned for its instantly recognisable bags and accessories, infusing its unique sense of quality and exquisite design into each piece. This pink logo print leather backpack from Gucci features top handles, a drawstring fastening, a pebbled leather texture, a removable zipped pouch and a vintage Gucci logo.', 0, 380, 380, 0, 0, '1 pc(s)', 0, '2020-09-28 13:52:12', '2020-09-28 13:52:12');
INSERT INTO `products` VALUES (48, '', 'givenchy-mini-purse', 'Givenchy Mini Purse', 'Givenchy Mini Purse', 'Luxury Italian fashion house Gucci is renowned for its instantly recognisable bags and accessories, infusing its unique sense of quality and exquisite design into each piece. This pink logo print leather backpack from Gucci features top handles, a drawstring fastening, a pebbled leather texture, a removable zipped pouch and a vintage Gucci logo.', 0, 65, 52, 20, 0, '1 pc(s)', 0, '2020-09-28 13:52:23', '2020-09-28 13:52:23');
INSERT INTO `products` VALUES (49, '', 'gucci-purse', 'Gucci Purse', 'Gucci Purse', 'Luxury Italian fashion house Gucci is renowned for its instantly recognisable bags and accessories, infusing its unique sense of quality and exquisite design into each piece. This pink logo print leather backpack from Gucci features top handles, a drawstring fastening, a pebbled leather texture, a removable zipped pouch and a vintage Gucci logo.', 0, 95, 76, 20, 0, '1 pc(s)', 0, '2020-09-28 13:52:40', '2020-09-28 13:52:40');
INSERT INTO `products` VALUES (50, '', 'hp-laptop-bag', 'Hp Laptop Bag', 'Hp Laptop Bag', 'Bewitching black, plush padding and faux-fur lining surround and cradle your 15.6 Ultrabook in trendsetting luxury. It is the perfect accessory for every season and all occasions. Dress it up; dress it down. Take it with you everywhere you go.', 0, 295, 236, 20, 0, '1 pc(s)', 0, '2020-09-28 13:52:56', '2020-09-28 13:52:56');
INSERT INTO `products` VALUES (51, '', 'mac-laptop-bag', 'Mac Laptop Bag', 'Mac Laptop Bag', 'Bewitching black, plush padding and faux-fur lining surround and cradle your 15.6 macbook™ in trendsetting luxury. It is the perfect accessory for every season and all occasions. Dress it up; dress it down. Take it with you everywhere you go.', 0, 325, 325, 0, 0, '1 pc(s)', 0, '2020-09-28 13:53:12', '2020-09-28 13:53:12');
INSERT INTO `products` VALUES (52, '', 'muse-wallet', 'Muse Wallet', 'Muse Wallet', 'Muse Medium Zip Around Wallet has been crafted from a beautiful clotted cream saffiano leather. The leather has been thoughtfully paired with brass hardware throughout and a discrete foil logo. The interior is lined with cotton twill and is fitted with 2 main compartments with a zip coin pocket, 2 note pockets and 12 credit card slots, all in soft nappa leather.', 0, 80, 80, 0, 0, '1 pc(s)', 0, '2020-09-28 13:53:27', '2020-09-28 13:53:27');
INSERT INTO `products` VALUES (53, '', 'philip-lim-shoulder-bag', 'Philip Lim Shoulder Bag', 'Philip Lim Shoulder Bag', 'Structured buffed nappa leather top handle bag in \'scarlet\' red. Carry handle at top. Detachable and adjustable shoulder strap with lanyard clasp fastening. Foldover flap with signature logo-engraved \'paper clip\' fastening. Patch pocket and gold-tone logo stamp at two-compartment interior. ', 0, 250, 250, 0, 0, '1 pc(s)', 0, '2020-09-28 13:53:46', '2020-09-28 13:53:46');
INSERT INTO `products` VALUES (54, '', 'sports-shoulder-bag', 'Sports Shoulder Bag', 'Sports Shoulder Bag', 'Structured buffed nappa leather top handle bag in \'scarlet\' red. Carry handle at top. Detachable and adjustable shoulder strap with lanyard clasp fastening. Foldover flap with signature logo-engraved \'paper clip\' fastening. Patch pocket and gold-tone logo stamp at two-compartment interior. ', 0, 150, 150, 0, 0, '1 pc(s)', 0, '2020-09-28 13:54:04', '2020-09-28 13:54:04');
INSERT INTO `products` VALUES (55, '', 'supreme-shoulder-bag', 'Supreme Shoulder Bag', 'Supreme Shoulder Bag', 'Structured buffed nappa leather top handle bag in \'scarlet\' red. Carry handle at top. Detachable and adjustable shoulder strap with lanyard clasp fastening. Foldover flap with signature logo-engraved \'paper clip\' fastening. Patch pocket and gold-tone logo stamp at two-compartment interior. ', 0, 190, 190, 0, 0, '1 pc(s)', 0, '2020-09-28 13:54:25', '2020-09-28 13:54:25');
INSERT INTO `products` VALUES (56, '', 'roadster-women-solid-top', 'Roadster Women Solid Top', 'Roadster Women Solid Top', 'Fendi began life in 1925 as a fur and leather speciality store in Rome. Despite growing into one of the world’s most renowned luxury labels, the business has retained its family feel, with a focus on fine detail, Italian craftsmanship and the support of local artisans.', 0, 15, 12, 20, 0, '1 pc(s)', 0, '2020-09-28 13:54:43', '2020-09-28 13:54:43');
INSERT INTO `products` VALUES (57, '', 'magnetic-designs-women-printed-fit-and-flare-dress', 'Magnetic Designs Women Printed Fit And Flare Dress', 'Magnetic Designs Women Printed Fit And Flare Dress', 'Mauve printed knitted fit and flare dress, has a round neck, three-quarter sleeves, concealed zip closure,, flared hem', 0, 35, 35, 0, 0, '1 pc(s)', 0, '2020-09-28 13:55:05', '2020-09-28 13:55:05');
INSERT INTO `products` VALUES (58, '', 'mango-self-striped-a-line-dress', 'Mango Self Striped A Line Dress', 'Mango Self Striped A Line Dress', 'Off-White self-striped knitted midi A-line dress, has a scoop neck, sleeveless, straight hem', 0, 85, 68, 20, 0, '1 pc(s)', 0, '2020-09-28 13:55:22', '2020-09-28 13:55:22');
INSERT INTO `products` VALUES (59, '', ' forever-21-solid-bodycon-midi-dress', 'Forever 21 Solid Bodycon Midi Dress', 'Forever 21 Solid Bodycon Midi Dress', 'Grey solid woven bodycon dress, has a round neck, sleeveless, straight hem', 0, 185, 185, 0, 0, '1 pc(s)', 0, '2020-09-28 13:55:34', '2020-09-28 13:55:34');
INSERT INTO `products` VALUES (60, '', 'dorothy-perkins-self-striped-a-line-dress', 'Dorothy Perkins Self Striped A Line Dress', 'Dorothy Perkins Self Striped A Line Dress', 'Rust red self-striped knitted A-line dress, has a V-neck with button detailing, three-quarter sleeves, flared hem', 0, 125, 125, 0, 0, '1 pc(s)', 0, '2020-09-28 13:55:51', '2020-09-28 13:55:51');
INSERT INTO `products` VALUES (61, '', 'flounce-high-low-plain-midi-skirt', 'Flounce High Low Plain Midi Skirt', 'Flounce High Low Plain Midi Skirt', 'Blue washed mini A-line denim pencil skirt, has a waistband with nabelt loops, button closures', 0, 25, 20, 20, 0, '1 pc(s)', 0, '2020-09-28 13:56:11', '2020-09-28 13:56:11');
INSERT INTO `products` VALUES (62, '', 'basic-hollow-out-flared-midi-skirt', 'Basic Hollow Out Flared Midi Skirt', 'Basic Hollow Out Flared Midi Skirt', 'Blue washed pencil denim distressed skirt with ruffle detail, has a waistband with belt loops, 2 pockets, straight hem with back slit Comes with a fabric belt.', 0, 25, 20, 20, 0, '1 pc(s)', 0, '2020-09-28 13:56:32', '2020-09-28 13:56:32');
INSERT INTO `products` VALUES (63, '', 'charming-red-flared-midi-skirt', 'Charming Red Flared Midi Skirt', 'Charming Red Flared Midi Skirt', 'Red and gold-coloured printed flared maxi skirt with satin lining, has an elasticated waistband with side hook closure, flared hem', 0, 35, 28, 20, 0, '1 pc(s)', 0, '2020-09-28 13:56:44', '2020-09-28 13:56:44');
INSERT INTO `products` VALUES (64, '', 'plain-midi-flared-skirts', 'Plain Midi Flared Skirts', 'Plain Midi Flared Skirts', 'Red and gold-coloured printed flared maxi skirt with satin lining, has an elasticated waistband with side hook closure, flared hem', 0, 40, 40, 0, 0, '1 pc(s)', 0, '2020-09-28 13:56:59', '2020-09-28 13:56:59');
INSERT INTO `products` VALUES (65, '', 'fold-over-collar-plain-blazers', 'Fold Over Collar Plain Blazers', 'Fold Over Collar Plain Blazers', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 105, 84, 20, 0, '1 pc(s)', 0, '2020-09-28 13:57:19', '2020-09-28 13:57:19');
INSERT INTO `products` VALUES (66, '', 'solid-notch-lapel-single-button-long-sleeve-blazer', 'Solid Notch Lapel Single Button Long Sleeve Blazer', 'Solid Notch Lapel Single Button Long Sleeve Blazer', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 150, 150, 0, 0, '1 pc(s)', 0, '2020-09-28 13:57:36', '2020-09-28 13:57:36');
INSERT INTO `products` VALUES (67, '', 'notch-lapel-single-button-color-black-blazer', 'Notch Lapel Single Button Color Block Blazer', 'Notch Lapel Single Button Color Block Blazer', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 120, 108, 10, 0, '1 pc(s)', 0, '2020-09-28 13:57:56', '2020-09-28 13:57:56');
INSERT INTO `products` VALUES (68, '', 'narrow-notch-lapel-slit-pocket-plain-blazers', 'Narrow Notch Lapel Slit Pocket Plain Blazers', 'Narrow Notch Lapel Slit Pocket Plain Blazers', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 110, 110, 0, 0, '1 pc(s)', 0, '2020-09-28 13:58:13', '2020-09-28 13:58:13');
INSERT INTO `products` VALUES (69, '', 'notch-lapel-elastic-waist-plain-trench-coat', 'Notch Lapel Elastic Waist Plain Trench Coat', 'Notch Lapel Elastic Waist Plain Trench Coat', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 160, 160, 0, 0, '1 pc(s)', 0, '2020-09-28 13:58:33', '2020-09-28 13:58:33');
INSERT INTO `products` VALUES (70, '', 'turn-down-collar-elascit-waist-plain-trench-coat', 'Turn Down Collar Elastic Waist Plain Trench Coat', 'Turn Down Collar Elastic Waist Plain Trench Coat', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 160, 144, 10, 0, '1 pc(s)', 0, '2020-09-28 13:58:49', '2020-09-28 13:58:49');
INSERT INTO `products` VALUES (71, '', 'cowl-neck-kangaroo-pocket', 'Cowl Neck Kangaroo Pocket Color Block Hoodie', 'Cowl Neck Kangaroo Pocket Color Block Hoodie', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 100, 85, 15, 0, '1 pc(s)', 0, '2020-09-28 13:59:03', '2020-09-28 13:59:03');
INSERT INTO `products` VALUES (72, '', 'hooded-zips-plain-long-sleeve-hoodies', 'Hooded Zips Plain Long Sleeve Hoodies', 'Hooded Zips Plain Long Sleeve Hoodies', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 120, 120, 0, 0, '1 pc(s)', 0, '2020-09-28 13:59:19', '2020-09-28 13:59:19');
INSERT INTO `products` VALUES (73, '', 'lapel-zips-plain-long-sleeve-jackets', 'Lapel Zips Plain Long Sleeve Jackets', 'Lapel Zips Plain Long Sleeve Jackets', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 180, 180, 0, 0, '1 pc(s)', 0, '2020-09-28 13:59:31', '2020-09-28 13:59:31');
INSERT INTO `products` VALUES (74, '', 'boxy-cardigan', 'Boxy Cardigan', 'Boxy Cardigan', 'Blue and navy cotton Decima zipped cardigan from ANGLOZINE featuring a classic collar, a front zip fastening, a chest pocket, long sleeves, contrasting panels and a slim fit. This item is unisex.', 0, 80, 72, 10, 0, '1 pc(s)', 0, '2020-09-28 13:59:48', '2020-09-28 13:59:48');
INSERT INTO `products` VALUES (75, '', 'stretch=cotton-utility-jacket-with-adjustable-wiast', 'Stretch Cotton Utility Jacket With Adjustable Waist', 'Stretch Cotton Utility Jacket With Adjustable Waist', 'Blue and navy cotton Decima zipped cardigan from ANGLOZINE featuring a classic collar, a front zip fastening, a chest pocket, long sleeves, contrasting panels and a slim fit. This item is unisex.', 0, 95, 76, 20, 0, '1 pc(s)', 0, '2020-09-28 14:00:01', '2020-09-28 14:00:01');
INSERT INTO `products` VALUES (76, '', 'levis-western-denim-shirt', 'Levi\'S Western Denim Shirt', 'Levi\'S Western Denim Shirt', 'Black cotton shearling denim jacket from Levi\'s featuring long sleeves, a front button fastening, two chest pockets, side slit pockets, a shearling lining and a logo tag.', 0, 55, 44, 20, 0, '1 pc(s)', 0, '2020-09-28 14:00:19', '2020-09-28 14:00:19');
INSERT INTO `products` VALUES (77, '', 'ivory-check-longline-tunic-shirt', 'Ivory Check Longline Tunic Shirt', 'Ivory Check Longline Tunic Shirt', 'Black cotton shearling denim jacket from Levi\'s featuring long sleeves, a front button fastening, two chest pockets, side slit pockets, a shearling lining and a logo tag.', 0, 40, 40, 0, 0, '1 pc(s)', 0, '2020-09-28 14:00:41', '2020-09-28 14:00:41');
INSERT INTO `products` VALUES (78, '', 'vero-moda-coco-wide-pant', 'Vero Moda Coco Wide Pant', 'Vero Moda Coco Wide Pant', 'Indigo blue cotton mid rise denim shorts from Levi\'s featuring a waistband with belt loops, a button and zip fly, an unfinished hem and a five pocket design.', 0, 45, 36, 20, 0, '1 pc(s)', 0, '2020-09-28 14:01:01', '2020-09-28 14:01:01');
INSERT INTO `products` VALUES (79, '', 'skechers-kallen-fleece-jog-pant', 'Skechers Kallen Fleece Jog Pant', 'Skechers Kallen Fleece Jog Pant', 'Brown Yogi High Rise 7/8 tights from Nimble Activewear featuring a high waist, a fitted silhouette, a lightunit construction and a cropped length.', 0, 30, 21, 30, 0, '1 pc(s)', 0, '2020-09-28 14:01:23', '2020-09-28 14:01:23');
INSERT INTO `products` VALUES (80, '', 'reebok-french-terry-jog-pants', 'Reebok French Terry Jog Pants', 'Reebok French Terry Jog Pants', 'Brown Yogi High Rise 7/8 tights from Nimble Activewear featuring a high waist, a fitted silhouette, a lightunit construction and a cropped length.', 0, 35, 28, 20, 0, '1 pc(s)', 0, '2020-09-28 14:01:38', '2020-09-28 14:01:38');
INSERT INTO `products` VALUES (81, '', 'white-infinity-4-way-stretch-skinny-jeans-regular-length', 'White Infinity 4 Way Stretch Skinny Jeans Regular Length', 'White Infinity 4 Way Stretch Skinny Jeans Regular Length', 'Indigo blue cotton mid rise denim shorts from Levi\'s featuring a waistband with belt loops, a button and zip fly, an unfinished hem and a five pocket design.', 0, 60, 54, 10, 0, '1 pc(s)', 0, '2020-09-28 14:01:57', '2020-09-28 14:01:57');
INSERT INTO `products` VALUES (82, '', 'junarose-queen-skinny-jean', 'Junarose Queen Skinny Jean', 'Junarose Queen Skinny Jean', 'Indigo blue cotton mid rise denim shorts from Levi\'s featuring a waistband with belt loops, a button and zip fly, an unfinished hem and a five pocket design.', 0, 60, 60, 0, 0, '1 pc(s)', 0, '2020-09-28 14:02:18', '2020-09-28 14:02:18');
INSERT INTO `products` VALUES (83, '', 'bourjois-little-round-pot-blusher', 'Bourjois Little Round Pot Blusher', 'Bourjois Little Round Pot Blusher', 'Bourjois Little Round Pot Blusher has been keeping women beautiful for generations. Made in an exclusive baked technology process, its incredibly transparent & light texture formula is easy to apply and blends impeccably.', 0, 10, 9, 10, 0, '1 pc(s)', 0, '2020-09-28 14:02:38', '2020-09-28 14:02:38');
INSERT INTO `products` VALUES (84, '', 'cyo-crush-on-blush-powder-blush', 'Cyo Crush On Blush Powder Blush', 'Cyo Crush On Blush Powder Blush', 'Bourjois Little Round Pot Blusher has been keeping women beautiful for generations. Made in an exclusive baked technology process, its incredibly transparent & light texture formula is easy to apply and blends impeccably.', 0, 12, 11, 8, 0, '1 pc(s)', 0, '2020-09-28 14:02:52', '2020-09-28 14:02:52');
INSERT INTO `products` VALUES (85, '', 'smashbox-the-cali-counter-palette', 'Smashbox The Cali Contour Palette', 'Smashbox The Cali Contour Palette', 'An easy-to-use, six-well contour kit with pigment-packed, blendable highlighter, bronzer, and blush powders. Use these versatile shades to create an effortlessly lifted neutral look or a warm, just-cruised-down-the-coast glow. It features three matte and two pearlescent powders to shape, bronze, and highlight. It also includes one matte blush to add a youthful flush of subtle color to any look. It is formulated Without: - Parabens- Phthalates This laid-back makeup palette makes it easy to add warmth and dimension to your look. Customize your signature Cali glow using six neutrals, including two of Smashbox\'s bestselling contour shades. This product is cruelty-free and formulated without parabens, phthalates, fragrance.', 0, 40, 40, 0, 0, '1 pc(s)', 0, '2020-09-28 14:03:09', '2020-09-28 14:03:09');
INSERT INTO `products` VALUES (86, '', 'dior-blockstage-contour-palette', 'Dior Backstage Contour Palette', 'Dior Backstage Contour Palette', 'An easy-to-use, six-well contour kit with pigment-packed, blendable highlighter, bronzer, and blush powders. Use these versatile shades to create an effortlessly lifted neutral look or a warm, just-cruised-down-the-coast glow. It features three matte and two pearlescent powders to shape, bronze, and highlight. It also includes one matte blush to add a youthful flush of subtle color to any look. It is formulated Without: - Parabens- Phthalates This laid-back makeup palette makes it easy to add warmth and dimension to your look. Customize your signature Cali glow using six neutrals, including two of Smashbox\'s bestselling contour shades. This product is cruelty-free and formulated without parabens, phthalates, fragrance.', 0, 50, 50, 0, 0, '1 pc(s)', 0, '2020-09-28 14:03:26', '2020-09-28 14:03:26');
INSERT INTO `products` VALUES (87, '', 'spectrum-collection-perfect-blend-eye-set', 'Spectrum Collections Perfect Blend Eye Set', 'Spectrum Collections Perfect Blend Eye Set', 'Everything you need to create beautiful eye make-up looks. From dark and dramatic, blown out colour, pastel washes and contoured creations, this is the ultimate eye blending set. The larger shaders are ideal to apply a base colour, then build the detail with the smaller shaders and blenders.', 0, 35, 35, 0, 0, '1 pc(s)', 0, '2020-09-28 14:03:39', '2020-09-28 14:03:39');
INSERT INTO `products` VALUES (88, '', 'max-factor-wild-eyeshadow-pot', 'Max Factor Wild Eyeshadow Pot', 'Max Factor Wild Eyeshadow Pot', 'Pigment packed formula for bold colour looks! Max Factor Wild Shadow Eye Shadow Pots bring a highly pigmented shadow to sweep across your lids, providing a fierce shot of intense colour. The formula is micro-fine and can be used wet for a more intense look, is easily blendable and buildable colour for endless versatility.', 0, 15, 12, 20, 0, '1 pc(s)', 0, '2020-09-28 14:03:51', '2020-09-28 14:03:51');
INSERT INTO `products` VALUES (89, '', 'fenty-beauty-moroccan-spice-eyeshadow-palette', 'Fenty Beauty Moroccan Spice Eyeshadow Palette', 'Fenty Beauty Moroccan Spice Eyeshadow Palette', 'An eyeshadow palette of 16 longwearing Moroccan-inspired shades ranging from matte to shimmer finishes—perfect for spicing up your look in limitless ways.', 0, 55, 55, 0, 0, '1 pc(s)', 0, '2020-09-28 14:04:03', '2020-09-28 14:04:03');
INSERT INTO `products` VALUES (90, '', 'clarins-everlasting-compact-foundation', 'Clarins Everlasting Compact Foundation', 'Clarins Everlasting Compact Foundation', 'A 15-hour matte finish your skin will feel good about! Clarins\' long-wearing compact foundation evens out skin tone and minimizes the look of imperfections in seconds, delivering a shine-free, matte finish and hours of comfortable wear. Ultra-fine texture resists heat, humidity and perspiration for flawless coverage that lasts throughout the day.', 0, 55, 55, 0, 0, '1 pc(s)', 0, '2020-09-28 14:04:17', '2020-09-28 14:04:17');
INSERT INTO `products` VALUES (91, '', 'stila-magnificent-metals-glitter-&-glow-liquid-eye-shadow', 'Stila Magnificent Metals Glitter Glow Liquid Eye Shadow', 'Stila Magnificent Metals Glitter Glow Liquid Eye Shadow', 'This brilliantly long-wearing sparkle eye shadow combines the perfect mix of pearl and glitter to lavish eyes with incredible luster and shimmer.  With its uniquely lightunit, water-infused texture, Glitter & Glow glides on effortlessly, then dries down smoothly, locking in maximum sparkle with minimal fallout, for eyes with a real wow! factor.', 0, 25, 20, 20, 0, '1 pc(s)', 0, '2020-09-28 14:04:35', '2020-09-28 14:04:35');
INSERT INTO `products` VALUES (92, '', 'skinnydip-party-glitter-mirror', 'Skinnydip Party Glitter Mirror', 'Skinnydip Party Glitter Mirror', 'No more bad days with our Party Glitter Mirror. Keeping your make up in check is easy as can be with this cute little addition! Plus, it\'s the perfect size to throw in your handbag!', 0, 25, 20, 20, 0, '1 pc(s)', 0, '2020-09-28 14:04:55', '2020-09-28 14:04:55');
INSERT INTO `products` VALUES (93, '', 'shockwaves-sleek-n-shine-hairspray', 'Shockwaves Sleek N Shine Hairspray', 'Shockwaves Sleek N Shine Hairspray', 'Shockwaves Sleek n Shine Hairspray 250ml for a hairstyle that you want to look great, just apply Sleek and Shine Hairspray to damp or dry hair and allow it to dry naturally or blow dry using a diffusor. Great for all types and styles of hair, this product provides sleek looks with lasting shape, definition and shine, helped by an anti-freeze effect. It protects your hair from the humidity and gives it that beautiful, sleek  feel that lasts for up to 24 hours.', 0, 25, 25, 0, 0, '1 pc(s)', 0, '2020-09-28 14:05:06', '2020-09-28 14:05:06');
INSERT INTO `products` VALUES (94, '', 'ex1-invisiwear-liquid-foundation', 'Ex1 Invisiwear Liquid Foundation', 'Ex1 Invisiwear Liquid Foundation', 'A lightunit and luminous liquid base formulated with light diffusers to unify skin tone and effortlessly cover imperfections. Specially designed ‘true colour’ pigments work perfectly with your skins’ natural tones in an ultra-blendable formula.', 0, 20, 18, 10, 0, '1 pc(s)', 0, '2020-09-28 14:05:18', '2020-09-28 14:05:18');
INSERT INTO `products` VALUES (95, '', 'barry-m-matte-me-up-lip-kit-pose', 'Barry M Matte Me Up Lip Kit Pose', 'Barry M Matte Me Up Lip Kit Pose', 'Reach pout perfection with the Matte Me Up Liquid Lip Paint and Liner. Its non-drying, ultra-long wearing formula is easy to apply and will leave lips with a gorgeously bold finish. Each kit comes with a matte liquid Lip Paint and Lip Liner. ', 0, 12, 6, 50, 0, '1 pc(s)', 0, '2020-09-28 14:05:32', '2020-09-28 14:05:32');
INSERT INTO `products` VALUES (96, '', 'retro-matte-lipstick', 'Retro Matte Lipstick', 'Retro Matte Lipstick', 'M·A·C Lipstick – the iconic product that made M·A·C famous. This long-wearing formula features an intense colour payoff and a completely matte finish.', 0, 20, 20, 0, 0, '1 pc(s)', 0, '2020-09-28 14:05:50', '2020-09-28 14:05:50');
INSERT INTO `products` VALUES (97, '', 'liptensity-lipstick', 'Liptensity Lipstick', 'Liptensity Lipstick', 'M·A·C Lipstick – the iconic product that made M·A·C famous. This long-wearing formula features an intense colour payoff and a completely matte finish.', 0, 20, 20, 0, 0, '1 pc(s)', 0, '2020-09-28 14:06:01', '2020-09-28 14:06:01');
INSERT INTO `products` VALUES (98, '', 'bling-thing-liquid-lipcolour', 'Bling Thing Liquid Lipcolour', 'Bling Thing Liquid Lipcolour', 'M·A·C Lipstick – the iconic product that made M·A·C famous. This long-wearing formula features an intense colour payoff and a completely matte finish.', 0, 25, 20, 20, 0, '1 pc(s)', 0, '2020-09-28 14:06:13', '2020-09-28 14:06:13');
INSERT INTO `products` VALUES (99, '', 'viva-glam-lipstick', 'Viva Glam Lipstick', 'Viva Glam Lipstick', 'M·A·C Lipstick – the iconic product that made M·A·C famous. This long-wearing formula features an intense colour payoff and a completely matte finish.', 0, 25, 25, 0, 0, '1 pc(s)', 0, '2020-09-28 14:06:29', '2020-09-28 14:06:29');
INSERT INTO `products` VALUES (100, '', 'too-faced-born-this-way-loose-setting-powder', 'Too Faced Born This Way Loose Setting Powder', 'Too Faced Born This Way Loose Setting Powder', 'Our silky, lightunit powder sets makeup for longer wear while providing a veil of perfecting luminosity and a finish so natural they’ll think you were Born This Way.', 0, 20, 16, 20, 0, '1 pc(s)', 0, '2020-09-28 14:06:47', '2020-09-28 14:06:47');
INSERT INTO `products` VALUES (101, '', 'nivea-makeup-remover-double-effect', 'Nivea Make Up Remover Double Effect', 'Nivea Make Up Remover Double Effect', 'NIVEA Daily essentials Double Effective Eye Make-up Remover with a two-phase extra strength formula: The oil phase effectively removes even waterproof mascara and eye-make-up. Specially formulated and tested for the sensitive eye area. The aqueous phase protects and cares for the eye lashes with it\'s caring formula, without leaving an oily residue.', 0, 5, 4, 20, 0, '1 pc(s)', 0, '2020-09-28 14:07:01', '2020-09-28 14:07:01');
INSERT INTO `products` VALUES (102, '', 'lancome-definicilis-mascara', 'Lancome Definicils Mascara', 'Lancome Definicils Mascara', 'For lavishly long, perfectly defined lashes, this iconic award-winning mascara provides the ultimate in separation and has been the number 1 mascara for 16+ years! Carefully selected polymers coat each lash from root to tip, to help lengthen and outline each lash for unmatched definition. This best-selling mascara\'s unique brush applicator has specially grooved bristles that hold the perfect amount of product for gradual, even application every time.', 0, 18, 18, 0, 0, '1 pc(s)', 0, '2020-09-28 14:07:19', '2020-09-28 14:07:19');
INSERT INTO `products` VALUES (103, '', 'private-doctor-define-minus-serum', 'Private Doctor Define Minus Serum', 'Private Doctor Define Minus Serum', 'This formula is infused with ID.SCULPT Technology—a blend of Micro-Tingling Spicules and a patented Sodium Deoxycholate Complex—that work together to help define and firm the appearance of skin over time. Experience the exclusive skin secrets from Dr. Sanghoon Park, founder of Korea\'s premier dermatology clinic ID ', 0, 5, 4, 20, 0, '1 pc(s)', 0, '2020-09-28 14:07:30', '2020-09-28 14:07:30');
INSERT INTO `products` VALUES (104, '', 'belmont-custard-cream', 'Belmont Custard Cream', 'Belmont Custard Cream', 'A biscuit is a flour-based baked food product. This article covers the type of biscuit found in Africa, Asia, and Europe, which is typically hard, flat, and unleavened. ', 0, 5, 5, 0, 0, '.50 lb', 0, '2020-09-28 14:08:34', '2020-09-28 14:08:34');
INSERT INTO `products` VALUES (105, '', 'crawford-digestives', 'Crawford Digestives', 'Crawford Digestives', 'A biscuit is a flour-based baked food product. This article covers the type of biscuit found in Africa, Asia, and Europe, which is typically hard, flat, and unleavened. ', 0, 8, 6, 25, 0, '.80 lb', 0, '2020-09-28 14:08:59', '2020-09-28 14:08:59');
INSERT INTO `products` VALUES (106, '', 'crawford-shortie', 'Crawford Shortie', 'Crawford Shortie', 'A biscuit is a flour-based baked food product. This article covers the type of biscuit found in Africa, Asia, and Europe, which is typically hard, flat, and unleavened. ', 0, 5, 5, 0, 0, '.60 lb', 0, '2020-09-28 14:09:23', '2020-09-28 14:09:23');
INSERT INTO `products` VALUES (107, '', 'hill-mini-pack-mix', 'Hill Mini Pack Mix', 'Hill Mini Pack Mix', 'A biscuit is a flour-based baked food product. This article covers the type of biscuit found in Africa, Asia, and Europe, which is typically hard, flat, and unleavened. ', 0, 10, 10, 0, 0, '1 pc(s)', 0, '2020-09-28 14:10:10', '2020-09-28 14:10:10');
INSERT INTO `products` VALUES (108, '', 'jammie-dodgers-raspberry', 'Jammie Dodgers Raspberry', 'Jammie Dodgers Raspberry', 'A biscuit is a flour-based baked food product. This article covers the type of biscuit found in Africa, Asia, and Europe, which is typically hard, flat, and unleavened. ', 0, 8, 7, 13, 0, ' .6 lb', 0, '2020-09-28 14:10:37', '2020-09-28 14:10:37');
INSERT INTO `products` VALUES (110, '', 'juli-cheese-crackers', 'Juli S Cheese Crackers', 'Juli S Cheese Crackers', 'A biscuit is a flour-based baked food product. This article covers the type of biscuit found in Africa, Asia, and Europe, which is typically hard, flat, and unleavened. ', 0, 8, 8, 0, 0, ' .6 lb', 0, '2020-09-28 14:11:08', '2020-09-28 14:11:08');
INSERT INTO `products` VALUES (111, '', 'khong-guan-orange-cream', 'Khong Guan Orange Cream', 'Khong Guan Orange Cream', 'A biscuit is a flour-based baked food product. This article covers the type of biscuit found in Africa, Asia, and Europe, which is typically hard, flat, and unleavened. ', 0, 10, 10, 0, 0, ' 0.5 lb', 0, '2020-09-28 14:11:35', '2020-09-28 14:11:35');
INSERT INTO `products` VALUES (112, '', 'khong-guan-premium-marie', 'Khong Guan Premium Marie', 'Khong Guan Premium Marie', 'A biscuit is a flour-based baked food product. This article covers the type of biscuit found in Africa, Asia, and Europe, which is typically hard, flat, and unleavened. ', 0, 9, 9, 0, 0, ' 1 pc(s)', 0, '2020-09-28 14:12:17', '2020-09-28 14:12:17');
INSERT INTO `products` VALUES (113, '', 'lotus-biscoff', 'Lotus Biscoff', 'Lotus Biscoff', 'A biscuit is a flour-based baked food product. This article covers the type of biscuit found in Africa, Asia, and Europe, which is typically hard, flat, and unleavened. ', 0, 10, 10, 0, 0, ' 0.5 lb', 0, '2020-09-28 14:12:58', '2020-09-28 14:12:58');
INSERT INTO `products` VALUES (114, '', 'aritiach-filipino', 'Filipinos', 'Filipinos', 'Chocolate is a usually sweet, brown food preparation of roasted and ground cacao seeds that is made in the form of a liquid, paste, or in a block, or used as a flavoring ingredient in other foods.', 0, 4, 4, 0, 0, ' 0.5 lb', 0, '2020-09-28 14:13:19', '2020-09-28 14:13:19');
INSERT INTO `products` VALUES (115, '', 'cadbury_dairy_milk_crispello', 'Dairy Milk Crispello', 'Dairy Milk Crispello', 'Chocolate is a usually sweet, brown food preparation of roasted and ground cacao seeds that is made in the form of a liquid, paste, or in a block, or used as a flavoring ingredient in other foods. ', 0, 3, 3, 0, 0, ' 0.2 lb', 0, '2020-09-28 14:13:42', '2020-09-28 14:13:42');
INSERT INTO `products` VALUES (116, '', 'cadbury_zip', 'Cadbury Zip', 'Cadbury Zip', 'Chocolate is a usually sweet, brown food preparation of roasted and ground cacao seeds that is made in the form of a liquid, paste, or in a block, or used as a flavoring ingredient in other foods. ', 0, 3, 3, 0, 0, ' 0.1 lb', 0, '2020-09-28 14:14:15', '2020-09-28 14:14:15');
INSERT INTO `products` VALUES (117, '', 'cadbury-dairy-milk-reclose', 'Dairy Milk Reclose', 'Dairy Milk Reclose', 'Chocolate is a usually sweet, brown food preparation of roasted and ground cacao seeds that is made in the form of a liquid, paste, or in a block, or used as a flavoring ingredient in other foods.', 0, 4, 4, 0, 0, ' 0.2 lb', 0, '2020-09-28 14:14:42', '2020-09-28 14:14:42');
INSERT INTO `products` VALUES (118, '', 'cloetta_chocowoffle', 'Cloetta Chocowoffle Crispy', 'Cloetta Chocowoffle Crispy', 'Chocolate is a usually sweet, brown food preparation of roasted and ground cacao seeds that is made in the form of a liquid, paste, or in a block, or used as a flavoring ingredient in other foods. ', 0, 3, 3, 0, 0, ' 0.2 lb', 0, '2020-09-28 14:15:22', '2020-09-28 14:15:22');
INSERT INTO `products` VALUES (119, '', 'cloetta_sprinkle', 'Cloetta Sprinkle', 'Cloetta Sprinkle', 'Chocolate is a usually sweet, brown food preparation of roasted and ground cacao seeds that is made in the form of a liquid, paste, or in a block, or used as a flavoring ingredient in other foods. ', 0, 3, 3, 0, 0, ' 0.1 lb', 0, '2020-09-28 14:15:46', '2020-09-28 14:15:46');
INSERT INTO `products` VALUES (120, '', 'hershey_symphony', 'Hershey Symphony', 'Hershey Symphony', 'Chocolate is a usually sweet, brown food preparation of roasted and ground cacao seeds that is made in the form of a liquid, paste, or in a block, or used as a flavoring ingredient in other foods. ', 0, 4, 3, 25, 0, ' 0.1 lb', 0, '2020-09-28 14:16:04', '2020-09-28 14:16:04');
INSERT INTO `products` VALUES (121, '', 'hersheys_kisses', 'Hersheys Kisses', 'Hersheys Kisses', 'Chocolate is a usually sweet, brown food preparation of roasted and ground cacao seeds that is made in the form of a liquid, paste, or in a block, or used as a flavoring ingredient in other foods. ', 0, 5, 5, 0, 0, '0.1 lb', 0, '2020-09-28 14:16:28', '2020-09-28 14:16:28');
INSERT INTO `products` VALUES (122, '', 'm&m_funsize', 'M M Funsize', 'M M Funsize', 'Chocolate is a usually sweet, brown food preparation of roasted and ground cacao seeds that is made in the form of a liquid, paste, or in a block, or used as a flavoring ingredient in other foods. ', 0, 2, 2, 0, 0, ' 0.1 lb', 0, '2020-09-28 14:17:00', '2020-09-28 14:17:00');
INSERT INTO `products` VALUES (123, '', 'nestle_butterfinger', 'Nestle Butterfinger', 'Nestle Butterfinger', 'Chocolate is a usually sweet, brown food preparation of roasted and ground cacao seeds that is made in the form of a liquid, paste, or in a block, or used as a flavoring ingredient in other foods. ', 0, 3, 3, 0, 0, ' 0.1 lb', 0, '2020-09-28 14:17:36', '2020-09-28 14:17:36');
INSERT INTO `products` VALUES (124, '', 'nestle_kitkat', 'Nestle Kitkat', 'Nestle Kitkat', 'Chocolate is a usually sweet, brown food preparation of roasted and ground cacao seeds that is made in the form of a liquid, paste, or in a block, or used as a flavoring ingredient in other foods. ', 0, 3, 3, 0, 0, ' 0.1 lb', 0, '2020-09-28 14:17:57', '2020-09-28 14:17:57');
INSERT INTO `products` VALUES (125, '', 'snikers_slice', 'Snikers Slice', 'Snikers Slice', 'Chocolate is a usually sweet, brown food preparation of roasted and ground cacao seeds that is made in the form of a liquid, paste, or in a block, or used as a flavoring ingredient in other foods. ', 0, 3, 2, 33, 0, ' 0.1 lb', 0, '2020-09-28 14:18:21', '2020-09-28 14:18:21');
INSERT INTO `products` VALUES (126, '', 'snikers_snacksize', 'Snikers Snack Size', 'Snikers Snack Size', 'Chocolate is a usually sweet, brown food preparation of roasted and ground cacao seeds that is made in the form of a liquid, paste, or in a block, or used as a flavoring ingredient in other foods. ', 0, 3, 2, 33, 0, ' 0.1 lb', 0, '2020-09-28 14:18:45', '2020-09-28 14:18:45');
INSERT INTO `products` VALUES (127, '', 'cottage_bbq', 'Wise Cottage Fires Bbq', 'Wise Cottage Fires Bbq', 'Potato chips (often just chips), or crisps, are thin slices of potato that have been deep fried or baked until crunchy. They are commonly served as a snack, side dish, or appetizer. The basic chips are cooked and salted; additional varieties are manufactured using various flavorings and ingredients including herbs, spices, cheeses, other natural flavors, artificial flavors, and additives.', 0, 1, 1, 0, 0, ' 1 pc(s)', 0, '2020-09-28 14:19:13', '2020-09-28 14:19:13');
INSERT INTO `products` VALUES (128, '', 'crisps-puzzle', 'Puzzles Crips Ready Salted', 'Puzzles Crips Ready Salted', 'Potato chips (often just chips), or crisps, are thin slices of potato that have been deep fried or baked until crunchy. They are commonly served as a snack, side dish, or appetizer. The basic chips are cooked and salted; additional varieties are manufactured using various flavorings and ingredients including herbs, spices, cheeses, other natural flavors, artificial flavors, and additives.', 0, 1, 1, 0, 0, ' 1 pc(s)', 0, '2020-09-28 14:19:47', '2020-09-28 14:19:47');
INSERT INTO `products` VALUES (129, '', 'doritos', 'Doritos Tangy Cheese', 'Doritos Tangy Cheese', 'Potato chips (often just chips), or crisps, are thin slices of potato that have been deep fried or baked until crunchy. They are commonly served as a snack, side dish, or appetizer. The basic chips are cooked and salted; additional varieties are manufactured using various flavorings and ingredients including herbs, spices, cheeses, other natural flavors, artificial flavors, and additives.', 0, 1, 1, 0, 0, ' 1 pc(s)', 0, '2020-09-28 14:20:08', '2020-09-28 14:20:08');
INSERT INTO `products` VALUES (130, '', 'lays_baked', 'Lays Baked', 'Lays Baked', 'Potato chips (often just chips), or crisps, are thin slices of potato that have been deep fried or baked until crunchy. They are commonly served as a snack, side dish, or appetizer. The basic chips are cooked and salted; additional varieties are manufactured using various flavorings and ingredients including herbs, spices, cheeses, other natural flavors, artificial flavors, and additives.', 0, 2, 2, 0, 0, ' 1 pc(s)', 0, '2020-09-28 14:20:43', '2020-09-28 14:20:43');
INSERT INTO `products` VALUES (131, '', 'lays_sea_salted', 'Lays Sea Salted', 'Lays Sea Salted', 'Potato chips (often just chips), or crisps, are thin slices of potato that have been deep fried or baked until crunchy. They are commonly served as a snack, side dish, or appetizer. The basic chips are cooked and salted; additional varieties are manufactured using various flavorings and ingredients including herbs, spices, cheeses, other natural flavors, artificial flavors, and additives.', 0, 1, 1, 0, 0, ' 1 pc(s)', 0, '2020-09-28 14:21:20', '2020-09-28 14:21:20');
INSERT INTO `products` VALUES (132, '', 'lays-kettle-cooked', 'Lays Kettle Cooked', 'Lays Kettle Cooked', 'Potato chips (often just chips), or crisps, are thin slices of potato that have been deep fried or baked until crunchy. They are commonly served as a snack, side dish, or appetizer. The basic chips are cooked and salted; additional varieties are manufactured using various flavorings and ingredients including herbs, spices, cheeses, other natural flavors, artificial flavors, and additives.', 0, 2, 2, 0, 0, ' 1 pc(s)', 0, '2020-09-28 14:22:05', '2020-09-28 14:22:05');
INSERT INTO `products` VALUES (133, '', 'lays-sour-cream', 'Lays Sour Cream', 'Lays Sour Cream', 'Potato chips (often just chips), or crisps, are thin slices of potato that have been deep fried or baked until crunchy. They are commonly served as a snack, side dish, or appetizer. The basic chips are cooked and salted; additional varieties are manufactured using various flavorings and ingredients including herbs, spices, cheeses, other natural flavors, artificial flavors, and additives.', 0, 1, 1, 0, 0, ' 1 pc(s)', 0, '2020-09-28 14:22:25', '2020-09-28 14:22:25');
INSERT INTO `products` VALUES (134, '', 'nims_apple_fruit', 'Nims Apple Crisp', 'Nims Apple Crisp', 'Potato chips (often just chips), or crisps, are thin slices of potato that have been deep fried or baked until crunchy. They are commonly served as a snack, side dish, or appetizer. The basic chips are cooked and salted; additional varieties are manufactured using various flavorings and ingredients including herbs, spices, cheeses, other natural flavors, artificial flavors, and additives.', 0, 1, 85, -8400, 0, ' 1 pc(s)', 0, '2020-09-28 14:22:42', '2020-09-28 14:22:42');
INSERT INTO `products` VALUES (135, '', 'Ready-Salted-Crisps', 'Snack Rite Ready Saled', 'Snack Rite Ready Saled', 'Potato chips (often just chips), or crisps, are thin slices of potato that have been deep fried or baked until crunchy. They are commonly served as a snack, side dish, or appetizer. The basic chips are cooked and salted; additional varieties are manufactured using various flavorings and ingredients including herbs, spices, cheeses, other natural flavors, artificial flavors, and additives.', 0, 5, 4, 20, 0, ' 1 pc(s)', 0, '2020-09-28 14:23:24', '2020-09-28 14:23:24');
INSERT INTO `products` VALUES (136, '', 'Roysters_6pk', 'Roysters Bubbled Crips', 'Roysters Bubbled Crips', 'Potato chips (often just chips), or crisps, are thin slices of potato that have been deep fried or baked until crunchy. They are commonly served as a snack, side dish, or appetizer. The basic chips are cooked and salted; additional varieties are manufactured using various flavorings and ingredients including herbs, spices, cheeses, other natural flavors, artificial flavors, and additives.', 0, 5, 5, 0, 0, '1 pc(s)', 0, '2020-09-28 14:23:59', '2020-09-28 14:23:59');
INSERT INTO `products` VALUES (137, '', 'snackrite_bags', 'Snackrite Cheese Onion', 'Snackrite Cheese Onion', 'Potato chips (often just chips), or crisps, are thin slices of potato that have been deep fried or baked until crunchy. They are commonly served as a snack, side dish, or appetizer. The basic chips are cooked and salted; additional varieties are manufactured using various flavorings and ingredients including herbs, spices, cheeses, other natural flavors, artificial flavors, and additives.', 0, 5, 5, 0, 0, ' 1 pc(s)', 0, '2020-09-28 14:24:40', '2020-09-28 14:24:40');
INSERT INTO `products` VALUES (138, '', 'tayto_cheese_onion', 'Tayto Cheese Onion', 'Tayto Cheese Onion', 'Potato chips (often just chips), or crisps, are thin slices of potato that have been deep fried or baked until crunchy. They are commonly served as a snack, side dish, or appetizer. The basic chips are cooked and salted; additional varieties are manufactured using various flavorings and ingredients including herbs, spices, cheeses, other natural flavors, artificial flavors, and additives.', 0, 1, 1, 0, 0, ' 1 pc(s)', 0, '2020-09-28 14:25:11', '2020-09-28 14:25:11');
INSERT INTO `products` VALUES (139, '', 'tayto_pickled_onion', 'Tayto Pickled Onion', 'Tayto Pickled Onion', 'Potato chips (often just chips), or crisps, are thin slices of potato that have been deep fried or baked until crunchy. They are commonly served as a snack, side dish, or appetizer. The basic chips are cooked and salted; additional varieties are manufactured using various flavorings and ingredients including herbs, spices, cheeses, other natural flavors, artificial flavors, and additives.', 0, 1, 1, 0, 0, ' 1 pc(s)', 0, '2020-09-28 14:26:07', '2020-09-28 14:26:07');
INSERT INTO `products` VALUES (140, '', 'walkers_cheese_onion', 'Walkers Cheese Onion', 'Walkers Cheese Onion', 'Potato chips (often just chips), or crisps, are thin slices of potato that have been deep fried or baked until crunchy. They are commonly served as a snack, side dish, or appetizer. The basic chips are cooked and salted; additional varieties are manufactured using various flavorings and ingredients including herbs, spices, cheeses, other natural flavors, artificial flavors, and additives.', 0, 1, 1, 0, 0, ' 1 pc(s)', 0, '2020-09-28 14:26:30', '2020-09-28 14:26:30');
INSERT INTO `products` VALUES (141, '', 'cintan_chicken', 'Cintan Chicken Noodles', 'Cintan Chicken Noodles', 'Noodles are a type of food made from unleavened dough which is rolled flat and cut, or extruded, into long strips or strings. Noodles can be refrigerated for short-term storage or dried and stored for future use.', 0, 5, 5, 0, 0, ' .5 lb', 0, '2020-09-28 14:26:54', '2020-09-28 14:26:54');
INSERT INTO `products` VALUES (142, '', 'indomie_special_chicken', 'Indomie Chicken Noodles', 'Indomie Chicken Noodles', 'Noodles are a type of food made from unleavened dough which is rolled flat and cut, or extruded, into long strips or strings. Noodles can be refrigerated for short-term storage or dried and stored for future use.', 0, 5, 5, 0, 0, ' .5 lb', 0, '2020-09-28 14:27:10', '2020-09-28 14:27:10');
INSERT INTO `products` VALUES (143, '', 'kame_stir_fry', 'Kame H Okkein Stir Fry Noodles', 'Kame H Okkein Stir Fry Noodles', 'Noodles are a type of food made from unleavened dough which is rolled flat and cut, or extruded, into long strips or strings. Noodles can be refrigerated for short-term storage or dried and stored for future use.', 0, 4, 4, 0, 0, ' .5 lb', 0, '2020-09-28 14:27:34', '2020-09-28 14:27:34');
INSERT INTO `products` VALUES (144, '', 'koka_curry', 'Koka Curry Noodles', 'Koka Curry Noodles', 'Noodles are a type of food made from unleavened dough which is rolled flat and cut, or extruded, into long strips or strings. Noodles can be refrigerated for short-term storage or dried and stored for future use..', 0, 6, 6, 0, 0, ' .5 lb', 0, '2020-09-28 14:28:20', '2020-09-28 14:28:20');
INSERT INTO `products` VALUES (145, '', 'maggi_bbq', 'Maggi Bbq Noodles', 'Maggi Bbq Noodles', 'Noodles are a type of food made from unleavened dough which is rolled flat and cut, or extruded, into long strips or strings. Noodles can be refrigerated for short-term storage or dried and stored for future use..', 0, 3, 3, 0, 0, ' .5 lb', 0, '2020-09-28 14:29:04', '2020-09-28 14:29:04');
INSERT INTO `products` VALUES (146, '', 'maggi_beef', 'Maggi Beef Noodles', 'Maggi Beef Noodles', 'Noodles are a type of food made from unleavened dough which is rolled flat and cut, or extruded, into long strips or strings. Noodles can be refrigerated for short-term storage or dried and stored for future use..', 0, 3, 3, 0, 0, ' .5 lb', 0, '2020-09-28 14:29:52', '2020-09-28 14:29:52');
INSERT INTO `products` VALUES (147, '', 'maggi_biriyani', 'Maggi Biriyani Noodles', 'Maggi Biriyani Noodles', 'Noodles are a type of food made from unleavened dough which is rolled flat and cut, or extruded, into long strips or strings. Noodles can be refrigerated for short-term storage or dried and stored for future use..', 0, 3, 3, 0, 0, ' ..5 lb', 0, '2020-09-28 14:30:34', '2020-09-28 14:30:34');
INSERT INTO `products` VALUES (148, '', 'maggi_chicken', 'Maggi Chicken Noodles', 'Maggi Chicken Noodles', 'Noodles are a type of food made from unleavened dough which is rolled flat and cut, or extruded, into long strips or strings. Noodles can be refrigerated for short-term storage or dried and stored for future use..', 0, 3, 3, 0, 0, ' .20 lb', 0, '2020-09-28 14:31:14', '2020-09-28 14:31:14');
INSERT INTO `products` VALUES (150, '', 'badia_pinenuts', 'Badia Pine Nuts', 'Badia Pine Nuts', 'A nut is a fruit composed of an inedible hard shell and a seed, which is generally edible. In general usage, a wide variety of dried seeds are called nuts, but in a botanical context nut implies that the shell does not open to release the seed.', 0, 10, 10, 0, 0, ' .30 lb', 0, '2020-09-28 14:31:42', '2020-09-28 14:31:42');
INSERT INTO `products` VALUES (151, '', 'cacao_cashew', 'Cacao Cashew Nuts', 'Cacao Cashew Nuts', 'A nut is a fruit composed of an inedible hard shell and a seed, which is generally edible. In general usage, a wide variety of dried seeds are called nuts, but in a botanical context nut implies that the shell does not open to release the seed.', 0, 8, 8, 0, 0, ' .20 lb', 0, '2020-09-28 14:32:07', '2020-09-28 14:32:07');
INSERT INTO `products` VALUES (152, '', 'fisher_peanut', 'Fisher Peanuts Ready Salted', 'Fisher Peanuts Ready Salted', 'A nut is a fruit composed of an inedible hard shell and a seed, which is generally edible. In general usage, a wide variety of dried seeds are called nuts, but in a botanical context nut implies that the shell does not open to release the seed.', 0, 15, 12, 20, 0, ' 2 lb', 0, '2020-09-28 14:32:45', '2020-09-28 14:32:45');
INSERT INTO `products` VALUES (153, '', 'Fruits-And-Nuts-Full-Meal-Bottle-Front', 'Simply Natural Fruits And Nuts', 'Simply Natural Fruits And Nuts', 'A nut is a fruit composed of an inedible hard shell and a seed, which is generally edible. In general usage, a wide variety of dried seeds are called nuts, but in a botanical context nut implies that the shell does not open to release the seed.', 0, 15, 12, 20, 0, ' .5 lb', 0, '2020-09-28 14:33:20', '2020-09-28 14:33:20');
INSERT INTO `products` VALUES (154, '', 'Fruits-And-Nuts-Full-Meal-Packet', 'Simply Natural Fruits And Nuts Meal Pack', 'Simply Natural Fruits And Nuts Meal Pack', 'A nut is a fruit composed of an inedible hard shell and a seed, which is generally edible. In general usage, a wide variety of dried seeds are called nuts, but in a botanical context nut implies that the shell does not open to release the seed.', 0, 7, 7, 0, 0, ' .5 lb', 0, '2020-09-28 14:33:49', '2020-09-28 14:33:49');
INSERT INTO `products` VALUES (155, '', 'ivory_cashewnut', 'Ivory Cashew Nuts', 'Ivory Cashew Nuts', 'A nut is a fruit composed of an inedible hard shell and a seed, which is generally edible. In general usage, a wide variety of dried seeds are called nuts, but in a botanical context nut implies that the shell does not open to release the seed.', 0, 7, 7, 0, 0, ' .5 lb', 0, '2020-09-28 14:34:09', '2020-09-28 14:34:09');
INSERT INTO `products` VALUES (156, '', 'jaybee_whole_cashewnut', 'Jaybees Whole Cashew Nuts', 'Jaybees Whole Cashew Nuts', 'A nut is a fruit composed of an inedible hard shell and a seed, which is generally edible. In general usage, a wide variety of dried seeds are called nuts, but in a botanical context nut implies that the shell does not open to release the seed.', 0, 7, 7, 0, 0, ' .5 lb', 0, '2020-09-28 14:34:35', '2020-09-28 14:34:35');
INSERT INTO `products` VALUES (157, '', 'kirkland_mixed_nuts', 'Kirkland Mixed Nuts', 'Kirkland Mixed Nuts', 'A nut is a fruit composed of an inedible hard shell and a seed, which is generally edible. In general usage, a wide variety of dried seeds are called nuts, but in a botanical context nut implies that the shell does not open to release the seed.', 0, 20, 17, 15, 0, ' 1 pc(s)', 0, '2020-09-28 14:34:55', '2020-09-28 14:34:55');
INSERT INTO `products` VALUES (158, '', 'natural_cashewnut', 'Natural Nuts', 'Natural Nuts', 'A nut is a fruit composed of an inedible hard shell and a seed, which is generally edible. In general usage, a wide variety of dried seeds are called nuts, but in a botanical context nut implies that the shell does not open to release the seed.', 0, 10, 8, 20, 0, ' 5 lb', 0, '2020-09-28 14:35:46', '2020-09-28 14:35:46');
INSERT INTO `products` VALUES (159, '', 'planter_cashewnut', 'Planter Cashewnut', 'Planter Cashewnut', 'A nut is a fruit composed of an inedible hard shell and a seed, which is generally edible. In general usage, a wide variety of dried seeds are called nuts, but in a botanical context nut implies that the shell does not open to release the seed.', 0, 10, 10, 0, 0, ' 5 lb', 0, '2020-09-28 14:36:22', '2020-09-28 14:36:22');
INSERT INTO `products` VALUES (160, '', 'planter_dryroasted', 'Planter Dry Roasted', 'Planter Dry Roasted', 'A nut is a fruit composed of an inedible hard shell and a seed, which is generally edible. In general usage, a wide variety of dried seeds are called nuts, but in a botanical context nut implies that the shell does not open to release the seed.', 0, 10, 8, 20, 0, ' 5 lb', 0, '2020-09-28 14:37:26', '2020-09-28 14:37:26');
INSERT INTO `products` VALUES (161, '', 'planters_honey_roasted', 'Planter Honey Roasted', 'Planter Honey Roasted', 'A nut is a fruit composed of an inedible hard shell and a seed, which is generally edible. In general usage, a wide variety of dried seeds are called nuts, but in a botanical context nut implies that the shell does not open to release the seed.', 0, 10, 10, 0, 0, ' 5 lb', 0, '2020-09-28 14:37:57', '2020-09-28 14:37:57');
INSERT INTO `products` VALUES (162, '', 'bambino_macaroni', 'Bambino Macaroni', 'Bambino Macaroni', 'Pasta is a type of food typically made from an unleavened dough of durum wheat flour mixed with water or eggs, and formed into sheets or various shapes, then cooked by boiling or baking', 0, 15, 15, 0, 0, ' 8 lb', 0, '2020-09-28 14:38:33', '2020-09-28 14:38:33');
INSERT INTO `products` VALUES (163, '', 'bambino_premium_pasta', 'Bambino Premium Pasta', 'Bambino Premium Pasta', 'Pasta is a type of food typically made from an unleavened dough of durum wheat flour mixed with water or eggs, and formed into sheets or various shapes, then cooked by boiling or baking', 0, 18, 18, 0, 0, ' 6 lb', 0, '2020-09-28 14:39:18', '2020-09-28 14:39:18');
INSERT INTO `products` VALUES (164, '', 'batchelors_pasta_sauce', 'Batchelors Pasta N Sauce Cheese And Broccoli', 'Batchelors Pasta N Sauce Cheese And Broccoli', 'Pasta is a type of food typically made from an unleavened dough of durum wheat flour mixed with water or eggs, and formed into sheets or various shapes, then cooked by boiling or baking', 0, 8, 8, 0, 0, ' 2 lb', 0, '2020-09-28 14:40:11', '2020-09-28 14:40:11');
INSERT INTO `products` VALUES (165, '', 'borges-pasta', 'Borges Pasta', 'Borges Pasta', 'Pasta is a type of food typically made from an unleavened dough of durum wheat flour mixed with water or eggs, and formed into sheets or various shapes, then cooked by boiling or baking', 0, 12, 12, 0, 0, ' 6 lb', 0, '2020-09-28 14:40:43', '2020-09-28 14:40:43');
INSERT INTO `products` VALUES (166, '', 'Cheese-&-Broccoli-Pasta-&-Sauce', 'Pasta Sauce', 'Pasta Sauce', 'Pasta is a type of food typically made from an unleavened dough of durum wheat flour mixed with water or eggs, and formed into sheets or various shapes, then cooked by boiling or baking', 0, 15, 12, 20, 0, ' 3 lb', 0, '2020-09-28 14:41:48', '2020-09-28 14:41:48');
INSERT INTO `products` VALUES (167, '', 'sunremo_chicken_curry_pasta', 'Sun Remo Chiken Flavour Pasta', 'Sun Remo Chiken Flavour Pasta', 'Pasta is a type of food typically made from an unleavened dough of durum wheat flour mixed with water or eggs, and formed into sheets or various shapes, then cooked by boiling or baking', 0, 15, 12, 20, 0, ' 3 lb', 0, '2020-09-28 14:42:02', '2020-09-28 14:42:02');
INSERT INTO `products` VALUES (168, '', 'knorr_pastaria', 'Knorr Pastaria', 'Knorr Pastaria', 'Pasta is a type of food typically made from an unleavened dough of durum wheat flour mixed with water or eggs, and formed into sheets or various shapes, then cooked by boiling or baking', 0, 15, 15, 0, 0, ' 3 lb', 0, '2020-09-28 14:42:29', '2020-09-28 14:42:29');
INSERT INTO `products` VALUES (169, '', 'allegro_bbq_sauce', 'Allegro Bbq Sauce', 'Allegro Bbq Sauce', 'In cooking, a sauce is a liquid, cream, or semi-solid food, served on or used in preparing other foods. Most sauces are not normally consumed by themselves; they add flavor, moisture, and visual appeal to a dish.', 0, 10, 10, 0, 0, ' 6 lb', 0, '2020-09-28 14:42:58', '2020-09-28 14:42:58');
INSERT INTO `products` VALUES (170, '', 'asain_zing_chili', 'Asin Zing Chili Sauce', 'Asin Zing Chili Sauce', 'In cooking, a sauce is a liquid, cream, or semi-solid food, served on or used in preparing other foods. Most sauces are not normally consumed by themselves; they add flavor, moisture, and visual appeal to a dish.', 0, 8, 8, 0, 0, ' 6 lb', 0, '2020-09-28 14:43:10', '2020-09-28 14:43:10');
INSERT INTO `products` VALUES (171, '', 'crunch_hot_chili_sauce', 'Crunch Hot Chili Sauce', 'Crunch Hot Chili Sauce', 'In cooking, a sauce is a liquid, cream, or semi-solid food, served on or used in preparing other foods. Most sauces are not normally consumed by themselves; they add flavor, moisture, and visual appeal to a dish.', 0, 6, 6, 0, 0, ' 6 lb', 0, '2020-09-28 14:43:36', '2020-09-28 14:43:36');
INSERT INTO `products` VALUES (172, '', 'felix_chili_sauce', 'Felix Chili Sauce', 'Felix Chili Sauce', 'In cooking, a sauce is a liquid, cream, or semi-solid food, served on or used in preparing other foods. Most sauces are not normally consumed by themselves; they add flavor, moisture, and visual appeal to a dish.', 0, 6, 6, 0, 0, ' 6 lb', 0, '2020-09-28 14:44:00', '2020-09-28 14:44:00');
INSERT INTO `products` VALUES (173, '', 'heinz_chili_sauce', 'Heinz Chili Sauce', 'Heinz Chili Sauce', 'In cooking, a sauce is a liquid, cream, or semi-solid food, served on or used in preparing other foods. Most sauces are not normally consumed by themselves; they add flavor, moisture, and visual appeal to a dish.', 0, 8, 7, 13, 0, ' 7 lb', 0, '2020-09-28 14:44:27', '2020-09-28 14:44:27');
INSERT INTO `products` VALUES (174, '', 'kosmos_bbq', 'Kosmos Bbq Sauce', 'Kosmos Bbq Sauce', 'In cooking, a sauce is a liquid, cream, or semi-solid food, served on or used in preparing other foods. Most sauces are not normally consumed by themselves; they add flavor, moisture, and visual appeal to a dish.', 0, 8, 7, 13, 0, ' 7 lb', 0, '2020-09-28 14:45:15', '2020-09-28 14:45:15');
INSERT INTO `products` VALUES (175, '', 'taco_bell_diablo_sauce', 'Taco Bell Diablo Sauce', 'Taco Bell Diablo Sauce', 'In cooking, a sauce is a liquid, cream, or semi-solid food, served on or used in preparing other foods. Most sauces are not normally consumed by themselves; they add flavor, moisture, and visual appeal to a dish.', 0, 8, 8, 0, 0, ' 7 lb', 0, '2020-09-28 14:45:39', '2020-09-28 14:45:39');
INSERT INTO `products` VALUES (176, '', 'taco_bell_fire_sauce', 'Taco Bell Fire Sauce', 'Taco Bell Fire Sauce', 'In cooking, a sauce is a liquid, cream, or semi-solid food, served on or used in preparing other foods. Most sauces are not normally consumed by themselves; they add flavor, moisture, and visual appeal to a dish.', 0, 8, 8, 0, 0, ' 7 lb', 0, '2020-09-28 14:46:01', '2020-09-28 14:46:01');
INSERT INTO `products` VALUES (177, '', 'bak_kuh_teh', 'Traditional Bak Kut Teh Soup', 'Traditional Bak Kut Teh Soup', 'Soup is a primarily liquid food, generally served warm or hot (but may be cool or cold), that is made by combining ingredients of meat or vegetables with stock, or water. Hot soups are additionally characterized by boiling solid ingredients in liquids in a pot until the flavors are extracted, forming a broth.', 0, 3, 3, 0, 0, ' 2 lb', 0, '2020-09-28 14:46:35', '2020-09-28 14:46:35');
INSERT INTO `products` VALUES (178, '', 'chings_mixvegsoup', 'Chings Mix Vegetable Soup', 'Chings Mix Vegetable Soup', 'Soup is a primarily liquid food, generally served warm or hot (but may be cool or cold), that is made by combining ingredients of meat or vegetables with stock, or water. Hot soups are additionally characterized by boiling solid ingredients in liquids in a pot until the flavors are extracted, forming a broth.', 0, 5, 5, 0, 0, ' 2 lb', 0, '2020-09-28 14:47:43', '2020-09-28 14:47:43');
INSERT INTO `products` VALUES (179, '', 'dashi_chicken_corn', 'Dashi Chicken Corn Soup', 'Dashi Chicken Corn Soup', 'Soup is a primarily liquid food, generally served warm or hot (but may be cool or cold), that is made by combining ingredients of meat or vegetables with stock, or water. Hot soups are additionally characterized by boiling solid ingredients in liquids in a pot until the flavors are extracted, forming a broth.', 0, 1, 1, 0, 0, ' 2 lb', 0, '2020-09-28 14:48:10', '2020-09-28 14:48:10');
INSERT INTO `products` VALUES (180, '', 'knorr_thai_vegetable', 'Knorr Thai Vegetable Soup', 'Knorr Thai Vegetable Soup', 'Soup is a primarily liquid food, generally served warm or hot (but may be cool or cold), that is made by combining ingredients of meat or vegetables with stock, or water. Hot soups are additionally characterized by boiling solid ingredients in liquids in a pot until the flavors are extracted, forming a broth.', 0, 2, 2, 0, 0, ' 2 lb', 0, '2020-09-28 14:48:26', '2020-09-28 14:48:26');
INSERT INTO `products` VALUES (181, '', 'rempah_sup', 'Rempah Sup Soup Mix', 'Rempah Sup Soup Mix', 'Soup is a primarily liquid food, generally served warm or hot (but may be cool or cold), that is made by combining ingredients of meat or vegetables with stock, or water. Hot soups are additionally characterized by boiling solid ingredients in liquids in a pot until the flavors are extracted, forming a broth.', 0, 3, 3, 0, 0, ' 2 lb', 0, '2020-09-28 14:48:49', '2020-09-28 14:48:49');
INSERT INTO `products` VALUES (182, '', 'grain_free', 'Avo Derm Grain Free', 'Avo Derm Grain Free', 'Cat food is food specifically formulated and intended for consumption by cats and other related canines. Like all carnivores, cats have sharp, pointed teeth, and have short gastrointestinal tracts better suited for the consumption of meat than of vegetable substances.', 0, 30, 27, 10, 0, ' 5 lb', 0, '2020-09-28 14:49:36', '2020-09-28 14:49:36');
INSERT INTO `products` VALUES (183, '', 'hills_science_diet', 'Hills Science Diet', 'Hills Science Diet', 'Cat food is food specifically formulated and intended for consumption by cats and other related canines. Like all carnivores, cats have sharp, pointed teeth, and have short gastrointestinal tracts better suited for the consumption of meat than of vegetable substances.', 0, 25, 25, 0, 0, ' 5 lb', 0, '2020-09-28 14:50:31', '2020-09-28 14:50:31');
INSERT INTO `products` VALUES (184, '', 'instinct_the_raw', 'Instinct Ultimate Protien', 'Instinct Ultimate Protien', 'Cat food is food specifically formulated and intended for consumption by cats and other related canines. Like all carnivores, cats have sharp, pointed teeth, and have short gastrointestinal tracts better suited for the consumption of meat than of vegetable substances.', 0, 20, 16, 20, 0, ' 4 lb', 0, '2020-09-28 14:50:54', '2020-09-28 14:50:54');
INSERT INTO `products` VALUES (185, '', 'natural_balance', 'Natural Balance L I D', 'Natural Balance L I D', 'Cat food is food specifically formulated and intended for consumption by cats and other related canines. Like all carnivores, cats have sharp, pointed teeth, and have short gastrointestinal tracts better suited for the consumption of meat than of vegetable substances.', 0, 20, 20, 0, 0, ' 4 lb', 0, '2020-09-28 14:51:46', '2020-09-28 14:51:46');
INSERT INTO `products` VALUES (186, '', 'prescription_diet', 'Hills Urinary Care', 'Hills Urinary Care', 'Cat food is food specifically formulated and intended for consumption by cats and other related canines. Like all carnivores, cats have sharp, pointed teeth, and have short gastrointestinal tracts better suited for the consumption of meat than of vegetable substances.', 0, 20, 15, 25, 0, ' 4 lb', 0, '2020-09-28 14:52:09', '2020-09-28 14:52:09');
INSERT INTO `products` VALUES (187, '', 'pro_diet', 'Pro Diet Complete Balance', 'Pro Diet Complete Balance', 'Cat food is food specifically formulated and intended for consumption by cats and other related canines. Like all carnivores, cats have sharp, pointed teeth, and have short gastrointestinal tracts better suited for the consumption of meat than of vegetable substances.', 0, 25, 25, 0, 0, ' 6 lb', 0, '2020-09-28 14:52:41', '2020-09-28 14:52:41');
INSERT INTO `products` VALUES (188, '', 'purina_pro_plan', 'Purina Pro Plan Veterinary Diets', 'Purina Pro Plan Veterinary Diets', 'Cat food is food specifically formulated and intended for consumption by cats and other related canines. Like all carnivores, cats have sharp, pointed teeth, and have short gastrointestinal tracts better suited for the consumption of meat than of vegetable substances.', 0, 25, 23, 8, 0, ' 6 lb', 0, '2020-09-28 14:53:16', '2020-09-28 14:53:16');
INSERT INTO `products` VALUES (189, '', 'special_kitty', 'Special Kitty Gourmet', 'Special Kitty Gourmet', 'Cat food is food specifically formulated and intended for consumption by cats and other related canines. Like all carnivores, cats have sharp, pointed teeth, and have short gastrointestinal tracts better suited for the consumption of meat than of vegetable substances.', 0, 30, 24, 20, 0, ' 5 lb', 0, '2020-09-28 14:53:44', '2020-09-28 14:53:44');
INSERT INTO `products` VALUES (190, '', 'dog_food_black_hawk_adult_all_breeds_lamb&rice', 'Black Hawk Adult Lamb Rice', 'Black Hawk Adult Lamb Rice', 'Dog food is food specifically formulated and intended for consumption by dogs and other related canines. Like all carnivores, dogs have sharp, pointed teeth, and have short gastrointestinal tracts better suited for the consumption of meat than of vegetable substances.', 0, 30, 30, 0, 0, ' 5 lb', 0, '2020-09-28 14:54:27', '2020-09-28 14:54:27');
INSERT INTO `products` VALUES (191, '', 'dog_food_black_hawk_puppy_all_breeds_lamb&rice', 'Black Hawk Puppy Lamb Rice', 'Black Hawk Puppy Lamb Rice', 'Dog food is food specifically formulated and intended for consumption by dogs and other related canines. Like all carnivores, dogs have sharp, pointed teeth, and have short gastrointestinal tracts better suited for the consumption of meat than of vegetable substances.', 0, 30, 27, 10, 0, ' 5 lb', 0, '2020-09-28 14:55:08', '2020-09-28 14:55:08');
INSERT INTO `products` VALUES (192, '', 'dog_food_black_hawk_puppy_large_breedchicken&rice', 'Black Hawk Puppy Chicken Rice', 'Black Hawk Puppy Chicken Rice', 'Dog food is food specifically formulated and intended for consumption by dogs and other related canines. Like all carnivores, dogs have sharp, pointed teeth, and have short gastrointestinal tracts better suited for the consumption of meat than of vegetable substances.', 0, 30, 27, 10, 0, ' 5 lb', 0, '2020-09-28 14:55:55', '2020-09-28 14:55:55');
INSERT INTO `products` VALUES (193, '', 'dog_food_blain\'s_farm&fleet', 'Blain S Farm Fleet', 'Blain S Farm Fleet', 'Dog food is food specifically formulated and intended for consumption by dogs and other related canines. Like all carnivores, dogs have sharp, pointed teeth, and have short gastrointestinal tracts better suited for the consumption of meat than of vegetable substances.', 0, 25, 25, 0, 0, ' 5 lb', 0, '2020-09-28 14:56:09', '2020-09-28 14:56:09');
INSERT INTO `products` VALUES (194, '', 'dog_food_blue_wilderness', 'Blue Wilderness Chicken Recepie', 'Blue Wilderness Chicken Recepie', 'Dog food is food specifically formulated and intended for consumption by dogs and other related canines. Like all carnivores, dogs have sharp, pointed teeth, and have short gastrointestinal tracts better suited for the consumption of meat than of vegetable substances.', 0, 25, 25, 0, 0, ' 5 lb', 0, '2020-09-28 14:57:02', '2020-09-28 14:57:02');
INSERT INTO `products` VALUES (195, '', 'dog_food_whole_hearted_beef&pea', 'Whole Hearted Beef Pea Recepie', 'Whole Hearted Beef Pea Recepie', 'Dog food is food specifically formulated and intended for consumption by dogs and other related canines. Like all carnivores, dogs have sharp, pointed teeth, and have short gastrointestinal tracts better suited for the consumption of meat than of vegetable substances.', 0, 40, 32, 20, 0, ' 8 lb', 0, '2020-09-28 14:57:45', '2020-09-28 14:57:45');
INSERT INTO `products` VALUES (196, '', 'dog_food_whole_hearted_salmon&pea', 'Whole Hearted Salmon Pea Recepie', 'Whole Hearted Salmon Pea Recepie', 'Dog food is food specifically formulated and intended for consumption by dogs and other related canines. Like all carnivores, dogs have sharp, pointed teeth, and have short gastrointestinal tracts better suited for the consumption of meat than of vegetable substances.', 0, 40, 40, 0, 0, ' 8 lb', 0, '2020-09-28 14:58:24', '2020-09-28 14:58:24');
INSERT INTO `products` VALUES (197, '', 'dog_food_zenith', 'Zenith Lamb Brown Rice', 'Zenith Lamb Brown Rice', 'Dog food is food specifically formulated and intended for consumption by dogs and other related canines. Like all carnivores, dogs have sharp, pointed teeth, and have short gastrointestinal tracts better suited for the consumption of meat than of vegetable substances.', 0, 40, 40, 0, 0, ' 8 lb', 0, '2020-09-28 14:58:59', '2020-09-28 14:58:59');
INSERT INTO `products` VALUES (198, '', 'kitten_food_applaws_adult_cat_chicken', 'Applaws Grain Free', 'Applaws Grain Free', 'Kitten food is food for consumption by kitten. Kittens have specific requirements for their dietary nutrients. Certain nutrients, including many vitamins and amino acids, are degraded by the temperatures, pressures and chemical treatments used during manufacture, and hence must be added after manufacture to avoid nutritional deficiency.', 0, 40, 40, 0, 0, ' 8 lb', 0, '2020-09-28 14:59:17', '2020-09-28 14:59:17');
INSERT INTO `products` VALUES (199, '', 'kitten_food_authority_real_chicken', 'Authority Chicken Rice Formula', 'Authority Chicken Rice Formula', 'Kitten food is food for consumption by kitten. Kittens have specific requirements for their dietary nutrients. Certain nutrients, including many vitamins and amino acids, are degraded by the temperatures, pressures and chemical treatments used during manufacture, and hence must be added after manufacture to avoid nutritional deficiency.', 0, 30, 27, 10, 0, ' 5 lb', 0, '2020-09-28 14:59:53', '2020-09-28 14:59:53');
INSERT INTO `products` VALUES (200, '', 'kitten_food_hill\'s_ideal_balance_over1year_kitten', 'Hills Ideal Balance', 'Hills Ideal Balance', 'Kitten food is food for consumption by kitten. Kittens have specific requirements for their dietary nutrients. Certain nutrients, including many vitamins and amino acids, are degraded by the temperatures, pressures and chemical treatments used during manufacture, and hence must be added after manufacture to avoid nutritional deficiency.', 0, 30, 30, 0, 0, ' 5 lb', 0, '2020-09-28 15:00:11', '2020-09-28 15:00:11');
INSERT INTO `products` VALUES (201, '', 'kitten_food_hill\'s_science_diet_upto1year_kitten', 'Hills Science Diet', 'Hills Science Diet', 'Kitten food is food for consumption by kitten. Kittens have specific requirements for their dietary nutrients. Certain nutrients, including many vitamins and amino acids, are degraded by the temperatures, pressures and chemical treatments used during manufacture, and hence must be added after manufacture to avoid nutritional deficiency.', 0, 30, 30, 0, 0, ' 5 lb', 0, '2020-09-28 15:00:28', '2020-09-28 15:00:28');
INSERT INTO `products` VALUES (202, '', 'kitten_food_iamso_upto1year', 'Iams Proactive Health', 'Iams Proactive Health', 'Kitten food is food for consumption by kitten. Kittens have specific requirements for their dietary nutrients. Certain nutrients, including many vitamins and amino acids, are degraded by the temperatures, pressures and chemical treatments used during manufacture, and hence must be added after manufacture to avoid nutritional deficiency.', 0, 20, 16, 20, 0, ' 5 lb', 0, '2020-09-28 15:00:56', '2020-09-28 15:00:56');
INSERT INTO `products` VALUES (203, '', 'kitten_food_instinct_chicken', 'Instinct Original Grain Free', 'Instinct Original Grain Free', 'Kitten food is food for consumption by kitten. Kittens have specific requirements for their dietary nutrients. Certain nutrients, including many vitamins and amino acids, are degraded by the temperatures, pressures and chemical treatments used during manufacture, and hence must be added after manufacture to avoid nutritional deficiency.', 0, 20, 20, 0, 0, ' 5 lb', 0, '2020-09-28 15:01:30', '2020-09-28 15:01:30');
INSERT INTO `products` VALUES (204, '', 'kitten_food_merrick', 'Merrick Purrfect Bistro Grain Free', 'Merrick Purrfect Bistro Grain Free', 'Kitten food is food for consumption by kitten. Kittens have specific requirements for their dietary nutrients. Certain nutrients, including many vitamins and amino acids, are degraded by the temperatures, pressures and chemical treatments used during manufacture, and hence must be added after manufacture to avoid nutritional deficiency.', 0, 25, 25, 0, 0, ' 5 lb', 0, '2020-09-28 15:02:20', '2020-09-28 15:02:20');
INSERT INTO `products` VALUES (205, '', 'kitten_food_purina_one', 'Purina Healthy Kitten Formula', 'Purina Healthy Kitten Formula', 'Kitten food is food for consumption by kitten. Kittens have specific requirements for their dietary nutrients. Certain nutrients, including many vitamins and amino acids, are degraded by the temperatures, pressures and chemical treatments used during manufacture, and hence must be added after manufacture to avoid nutritional deficiency.', 0, 25, 23, 8, 0, ' 5 lb', 0, '2020-09-28 15:03:02', '2020-09-28 15:03:02');
INSERT INTO `products` VALUES (206, '', 'kitten_food_purina_proplan', 'Purina Pro Plan', 'Purina Pro Plan', 'Kitten food is food for consumption by kitten. Kittens have specific requirements for their dietary nutrients. Certain nutrients, including many vitamins and amino acids, are degraded by the temperatures, pressures and chemical treatments used during manufacture, and hence must be added after manufacture to avoid nutritional deficiency.', 0, 35, 35, 0, 0, ' 4 lb', 0, '2020-09-28 15:03:53', '2020-09-28 15:03:53');
INSERT INTO `products` VALUES (207, '', 'kitten_food_wellness', 'Wellness Complete Health', 'Wellness Complete Health', 'Kitten food is food for consumption by kitten. Kittens have specific requirements for their dietary nutrients. Certain nutrients, including many vitamins and amino acids, are degraded by the temperatures, pressures and chemical treatments used during manufacture, and hence must be added after manufacture to avoid nutritional deficiency.', 0, 35, 35, 0, 0, ' 6 lb', 0, '2020-09-28 15:04:30', '2020-09-28 15:04:30');
INSERT INTO `products` VALUES (208, '', 'kitten_food_whiskas_real_chicken', 'Whiskas', 'Whiskas', 'Kitten food is food for consumption by kitten. Kittens have specific requirements for their dietary nutrients. Certain nutrients, including many vitamins and amino acids, are degraded by the temperatures, pressures and chemical treatments used during manufacture, and hence must be added after manufacture to avoid nutritional deficiency.', 0, 35, 35, 0, 0, ' 4 lb', 0, '2020-09-28 15:04:58', '2020-09-28 15:04:58');
INSERT INTO `products` VALUES (209, '', 'pet_accessories_black_winter_cap', 'Black Winter Cap', 'Black Winter Cap', 'A variety of animal supplies and pet accessories are also sold in pet shops. The products sold include: food, treats, toys, collars, leashes, cat litter, cages and aquariums.', 0, 5, 5, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:05:37', '2020-09-28 15:05:37');
INSERT INTO `products` VALUES (210, '', 'pet_accessories_brown&white_winter_cap', 'Brown White Winter Cap', 'Brown White Winter Cap', 'A variety of animal supplies and pet accessories are also sold in pet shops. The products sold include: food, treats, toys, collars, leashes, cat litter, cages and aquariums.', 0, 3, 3, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:06:18', '2020-09-28 15:06:18');
INSERT INTO `products` VALUES (211, '', 'pet_accessories_brown&white_winter_cap', 'Brown White Winter Cap', 'Brown White Winter Cap', 'A variety of animal supplies and pet accessories are also sold in pet shops. The products sold include: food, treats, toys, collars, leashes, cat litter, cages and aquariums.', 0, 3, 3, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:07:00', '2020-09-28 15:07:00');
INSERT INTO `products` VALUES (212, '', 'pet_accessories_costume1', 'Batman Cap', 'Batman Cap', 'A variety of animal supplies and pet accessories are also sold in pet shops. The products sold include: food, treats, toys, collars, leashes, cat litter, cages and aquariums.', 0, 3, 3, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:07:27', '2020-09-28 15:07:27');
INSERT INTO `products` VALUES (213, '', 'pet_accessories_costume2', 'Skeleton Cap', 'Skeleton Cap', 'A variety of animal supplies and pet accessories are also sold in pet shops. The products sold include: food, treats, toys, collars, leashes, cat litter, cages and aquariums.', 0, 3, 3, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:07:40', '2020-09-28 15:07:40');
INSERT INTO `products` VALUES (214, '', 'pet_accessories_jacket_ash', 'Ash Jacket', 'Ash Jacket', 'A variety of animal supplies and pet accessories are also sold in pet shops. The products sold include: food, treats, toys, collars, leashes, cat litter, cages and aquariums.', 0, 5, 4, 20, 0, ' 1 pc(s)', 0, '2020-09-28 15:08:13', '2020-09-28 15:08:13');
INSERT INTO `products` VALUES (215, '', 'pet_accessories_jacket_red', 'Red Jacket', 'Red Jacket', 'A variety of animal supplies and pet accessories are also sold in pet shops. The products sold include: food, treats, toys, collars, leashes, cat litter, cages and aquariums.', 0, 5, 5, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:08:39', '2020-09-28 15:08:39');
INSERT INTO `products` VALUES (216, '', 'pet_accessories_pet_bed1', 'Cat Bed Brown', 'Cat Bed Brown', 'A variety of animal supplies and pet accessories are also sold in pet shops. The products sold include: food, treats, toys, collars, leashes, cat litter, cages and aquariums.', 0, 15, 12, 20, 0, ' 1 pc(s)', 0, '2020-09-28 15:09:18', '2020-09-28 15:09:18');
INSERT INTO `products` VALUES (217, '', 'pet_accessories_pet_bed2', 'Cat Bed Grey', 'Cat Bed Grey', 'A variety of animal supplies and pet accessories are also sold in pet shops. The products sold include: food, treats, toys, collars, leashes, cat litter, cages and aquariums.', 0, 15, 15, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:10:02', '2020-09-28 15:10:02');
INSERT INTO `products` VALUES (219, '', 'pet_accessories_pet_bed4', 'Dog Bed Brown Red', 'Dog Bed Brown Red', 'A variety of animal supplies and pet accessories are also sold in pet shops. The products sold include: food, treats, toys, collars, leashes, cat litter, cages and aquariums.', 0, 15, 15, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:10:30', '2020-09-28 15:10:30');
INSERT INTO `products` VALUES (220, '', 'pet_accessories_red&white_christmas_sweater', 'Red White Christmas Sweater', 'Red White Christmas Sweater', 'A variety of animal supplies and pet accessories are also sold in pet shops. The products sold include: food, treats, toys, collars, leashes, cat litter, cages and aquariums.', 0, 10, 10, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:10:51', '2020-09-28 15:10:51');
INSERT INTO `products` VALUES (221, '', 'pet_accessories_red&white_jumper1', 'Red White Jumper', 'Red White Jumper', 'A variety of animal supplies and pet accessories are also sold in pet shops. The products sold include: food, treats, toys, collars, leashes, cat litter, cages and aquariums.', 0, 10, 10, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:11:15', '2020-09-28 15:11:15');
INSERT INTO `products` VALUES (224, '', 'pet_accessories_red_crhistmas_winter_cap', 'Red Christmas Winter Cap', 'Red Christmas Winter Cap', 'A variety of animal supplies and pet accessories are also sold in pet shops. The products sold include: food, treats, toys, collars, leashes, cat litter, cages and aquariums.', 0, 10, 10, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:11:44', '2020-09-28 15:11:44');
INSERT INTO `products` VALUES (225, '', 'pet_accessories_tie', 'Rainbow Tie', 'Rainbow Tie', 'A variety of animal supplies and pet accessories are also sold in pet shops. The products sold include: food, treats, toys, collars, leashes, cat litter, cages and aquariums.', 0, 2, 2, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:12:14', '2020-09-28 15:12:14');
INSERT INTO `products` VALUES (226, '', 'air_freshner_acana_ozmo', 'Ozmo Air Fabric Freshner', 'Ozmo Air Fabric Freshner', 'Air fresheners are consumer products that typically emit fragrance and are used in homes or commercial interiors such as restrooms, foyers, hallways, vestibules and other smaller indoor areas, as well as larger areas such as hotel lobbies, auto dealerships, medical facilities, public arenas and other large interior spaces. ', 0, 20, 15, 25, 0, ' 1 pc(s)', 0, '2020-09-28 15:12:29', '2020-09-28 15:12:29');
INSERT INTO `products` VALUES (227, '', 'air_freshner_air_wick_essential_oils', 'Air Wick Essential Oils', 'Air Wick Essential Oils', 'Air fresheners are consumer products that typically emit fragrance and are used in homes or commercial interiors such as restrooms, foyers, hallways, vestibules and other smaller indoor areas, as well as larger areas such as hotel lobbies, auto dealerships, medical facilities, public arenas and other large interior spaces. ', 0, 20, 20, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:12:56', '2020-09-28 15:12:56');
INSERT INTO `products` VALUES (228, '', 'air_freshner_ambipur_air_sweet_citrus&zest', 'Ambi Pur Air', 'Ambi Pur Air', 'Air fresheners are consumer products that typically emit fragrance and are used in homes or commercial interiors such as restrooms, foyers, hallways, vestibules and other smaller indoor areas, as well as larger areas such as hotel lobbies, auto dealerships, medical facilities, public arenas and other large interior spaces. ', 0, 15, 15, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:13:08', '2020-09-28 15:13:08');
INSERT INTO `products` VALUES (229, '', 'air_freshner_boardwalk_mango', 'Broadwalk Air Freshner', 'Broadwalk Air Freshner', 'Air fresheners are consumer products that typically emit fragrance and are used in homes or commercial interiors such as restrooms, foyers, hallways, vestibules and other smaller indoor areas, as well as larger areas such as hotel lobbies, auto dealerships, medical facilities, public arenas and other large interior spaces. ', 0, 15, 15, 0, 0, ' .5 lb', 0, '2020-09-28 15:13:27', '2020-09-28 15:13:27');
INSERT INTO `products` VALUES (230, '', 'air_freshner_febreze_air_bora_bora', 'Febreze Air Bora Bora Waters', 'Febreze Air Bora Bora Waters', 'Air fresheners are consumer products that typically emit fragrance and are used in homes or commercial interiors such as restrooms, foyers, hallways, vestibules and other smaller indoor areas, as well as larger areas such as hotel lobbies, auto dealerships, medical facilities, public arenas and other large interior spaces. ', 0, 15, 15, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:13:44', '2020-09-28 15:13:44');
INSERT INTO `products` VALUES (231, '', 'air_freshner_febreze_air_effects', 'Febreze Air Effects', 'Febreze Air Effects', 'Air fresheners are consumer products that typically emit fragrance and are used in homes or commercial interiors such as restrooms, foyers, hallways, vestibules and other smaller indoor areas, as well as larger areas such as hotel lobbies, auto dealerships, medical facilities, public arenas and other large interior spaces. ', 0, 15, 15, 0, 0, '  1 pc(s)', 0, '2020-09-28 15:13:57', '2020-09-28 15:13:57');
INSERT INTO `products` VALUES (232, '', 'air_freshner_febreze_air_hawaiian', 'Febreze Air Hawaiian', 'Febreze Air Hawaiian', 'Air fresheners are consumer products that typically emit fragrance and are used in homes or commercial interiors such as restrooms, foyers, hallways, vestibules and other smaller indoor areas, as well as larger areas such as hotel lobbies, auto dealerships, medical facilities, public arenas and other large interior spaces. ', 0, 15, 15, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:14:14', '2020-09-28 15:14:14');
INSERT INTO `products` VALUES (233, '', 'air_freshner_sc_johnson_glade_blue_odyssey', 'Glade Blue Odssey', 'Glade Blue Odssey', 'Air fresheners are consumer products that typically emit fragrance and are used in homes or commercial interiors such as restrooms, foyers, hallways, vestibules and other smaller indoor areas, as well as larger areas such as hotel lobbies, auto dealerships, medical facilities, public arenas and other large interior spaces. ', 0, 18, 18, 0, 0, '1 pc(s)', 0, '2020-09-28 15:14:34', '2020-09-28 15:14:34');
INSERT INTO `products` VALUES (234, '', 'air_freshner_sc_johnson_glade_clean_linen', 'Glade Clean Linen', 'Glade Clean Linen', 'Air fresheners are consumer products that typically emit fragrance and are used in homes or commercial interiors such as restrooms, foyers, hallways, vestibules and other smaller indoor areas, as well as larger areas such as hotel lobbies, auto dealerships, medical facilities, public arenas and other large interior spaces. ', 0, 20, 18, 10, 0, ' 1 pc(s)', 0, '2020-09-28 15:14:51', '2020-09-28 15:14:51');
INSERT INTO `products` VALUES (235, '', 'air_freshner_vibrant_linen', 'Vibrant Air Freshner', 'Vibrant Air Freshner', 'Air fresheners are consumer products that typically emit fragrance and are used in homes or commercial interiors such as restrooms, foyers, hallways, vestibules and other smaller indoor areas, as well as larger areas such as hotel lobbies, auto dealerships, medical facilities, public arenas and other large interior spaces. ', 0, 20, 18, 10, 0, ' 1 pc(s)', 0, '2020-09-28 15:15:23', '2020-09-28 15:15:23');
INSERT INTO `products` VALUES (236, '', 'cleaning_supply_ajax', 'Ajax Floor Cleaner', 'Ajax Floor Cleaner', 'Cleaning liquid (BrE: washing-up liquid), known as cleaning soap, cleaning detergent and dish soap, is a detergent or liquid used to assist in cleaning. It is usually a highly-foaming mixture of surfactants with low skin irritation ', 0, 20, 18, 10, 0, ' 1 pc(s)', 0, '2020-09-28 15:15:57', '2020-09-28 15:15:57');
INSERT INTO `products` VALUES (237, '', 'cleaning_supply_astonish', 'Astonish Oven Power Spray', 'Astonish Oven Power Spray', 'Cleaning liquid (BrE: washing-up liquid), known as cleaning soap, cleaning detergent and dish soap, is a detergent or liquid used to assist in cleaning. It is usually a highly-foaming mixture of surfactants with low skin irritation ', 0, 15, 15, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:16:22', '2020-09-28 15:16:22');
INSERT INTO `products` VALUES (238, '', 'cleaning_supply_bio', 'Bio Toilet Cleaner', 'Bio Toilet Cleaner', 'Cleaning liquid (BrE: washing-up liquid), known as cleaning soap, cleaning detergent and dish soap, is a detergent or liquid used to assist in cleaning. It is usually a highly-foaming mixture of surfactants with low skin irritation ', 0, 10, 8, 20, 0, ' 1 pc(s)', 0, '2020-09-28 15:16:49', '2020-09-28 15:16:49');
INSERT INTO `products` VALUES (239, '', 'cleaning_supply_bona', 'Bona Hardwood Floor Cleaner', 'Bona Hardwood Floor Cleaner', 'Cleaning liquid (BrE: washing-up liquid), known as cleaning soap, cleaning detergent and dish soap, is a detergent or liquid used to assist in cleaning. It is usually a highly-foaming mixture of surfactants with low skin irritation ', 0, 10, 10, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:17:04', '2020-09-28 15:17:04');
INSERT INTO `products` VALUES (240, '', 'cleaning_supply_ever_spring', 'Ever Spring Glass Cleaner', 'Ever Spring Glass Cleaner', 'Cleaning liquid (BrE: washing-up liquid), known as cleaning soap, cleaning detergent and dish soap, is a detergent or liquid used to assist in cleaning. It is usually a highly-foaming mixture of surfactants with low skin irritation ', 0, 10, 10, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:17:19', '2020-09-28 15:17:19');
INSERT INTO `products` VALUES (241, '', 'cleaning_supply_glitz_glass_cleaner', 'Glitz Outdoor Glass Cleaner', 'Glitz Outdoor Glass Cleaner', 'Cleaning liquid (BrE: washing-up liquid), known as cleaning soap, cleaning detergent and dish soap, is a detergent or liquid used to assist in cleaning. It is usually a highly-foaming mixture of surfactants with low skin irritation ', 0, 40, 36, 10, 0, ' 1 pc(s)', 0, '2020-09-28 15:18:03', '2020-09-28 15:18:03');
INSERT INTO `products` VALUES (242, '', 'cleaning_supply_glitz_steel_cleaner', 'Glitz Bbq Stainless Steel Cleaner', 'Glitz Bbq Stainless Steel Cleaner', 'Cleaning liquid (BrE: washing-up liquid), known as cleaning soap, cleaning detergent and dish soap, is a detergent or liquid used to assist in cleaning. It is usually a highly-foaming mixture of surfactants with low skin irritation ', 0, 20, 16, 20, 0, ' 1 pc(s)', 0, '2020-09-28 15:18:34', '2020-09-28 15:18:34');
INSERT INTO `products` VALUES (243, '', 'cleaning_supply_method', 'Method All Purpose Cleaner', 'Method All Purpose Cleaner', 'Cleaning liquid (BrE: washing-up liquid), known as cleaning soap, cleaning detergent and dish soap, is a detergent or liquid used to assist in cleaning. It is usually a highly-foaming mixture of surfactants with low skin irritation ', 0, 20, 20, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:18:51', '2020-09-28 15:18:51');
INSERT INTO `products` VALUES (244, '', 'dishwasher_dawn_la_faune', 'Dawn', 'Dawn', 'Cleaning liquid (BrE: washing-up liquid), known as cleaning soap, cleaning detergent and dish soap, is a detergent or liquid used to assist in cleaning. It is usually a highly-foaming mixture of surfactants with low skin irritation ', 0, 5, 5, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:19:08', '2020-09-28 15:19:08');
INSERT INTO `products` VALUES (245, '', 'dishwasher_dawn_new_zealand_spring_scent', 'Dawn Escapes', 'Dawn Escapes', 'Cleaning liquid (BrE: washing-up liquid), known as cleaning soap, cleaning detergent and dish soap, is a detergent or liquid used to assist in cleaning. It is usually a highly-foaming mixture of surfactants with low skin irritation ', 0, 5, 5, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:19:46', '2020-09-28 15:19:46');
INSERT INTO `products` VALUES (246, '', 'dishwasher_fairy_lemon', 'Fairy Lemon', 'Fairy Lemon', 'Cleaning liquid (BrE: washing-up liquid), known as cleaning soap, cleaning detergent and dish soap, is a detergent or liquid used to assist in cleaning. It is usually a highly-foaming mixture of surfactants with low skin irritation ', 0, 5, 5, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:20:04', '2020-09-28 15:20:04');
INSERT INTO `products` VALUES (247, '', 'dishwasher_finish', 'Finish All In One', 'Finish All In One', 'Cleaning liquid (BrE: washing-up liquid), known as cleaning soap, cleaning detergent and dish soap, is a detergent or liquid used to assist in cleaning. It is usually a highly-foaming mixture of surfactants with low skin irritation ', 0, 5, 4, 20, 0, ' 1 pc(s)', 0, '2020-09-28 15:20:28', '2020-09-28 15:20:28');
INSERT INTO `products` VALUES (248, '', 'dishwasher_lemi_shine', 'Lemi Shine', 'Lemi Shine', 'Cleaning liquid (BrE: washing-up liquid), known as cleaning soap, cleaning detergent and dish soap, is a detergent or liquid used to assist in cleaning. It is usually a highly-foaming mixture of surfactants with low skin irritation ', 0, 5, 5, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:20:43', '2020-09-28 15:20:43');
INSERT INTO `products` VALUES (249, '', 'dishwasher_seventh_generation_free&clear', 'Seventh Generation', 'Seventh Generation', 'Cleaning liquid (BrE: washing-up liquid), known as cleaning soap, cleaning detergent and dish soap, is a detergent or liquid used to assist in cleaning. It is usually a highly-foaming mixture of surfactants with low skin irritation ', 0, 4, 4, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:20:57', '2020-09-28 15:20:57');
INSERT INTO `products` VALUES (251, '', 'dishwasher_winni\'s_fiori_bianchi', 'Winni S Ammorbidente', 'Winni S Ammorbidente', 'Cleaning liquid (BrE: washing-up liquid), known as cleaning soap, cleaning detergent and dish soap, is a detergent or liquid used to assist in cleaning. It is usually a highly-foaming mixture of surfactants with low skin irritation ', 0, 7, 7, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:21:34', '2020-09-28 15:21:34');
INSERT INTO `products` VALUES (252, '', 'kitchen_accessories_camp_cutlery', 'Camp Cutlery', 'Camp Cutlery', 'Kitchen accessories are the tools, utensils, appliances, dishes, and cookware used in food preparation, or the serving of food.Kitchen accessories can also be used to hold or store food before or after preparation.', 0, 10, 8, 20, 0, ' 1 pc(s)', 0, '2020-09-28 15:22:00', '2020-09-28 15:22:00');
INSERT INTO `products` VALUES (253, '', 'kitchen_accessories_dinner_spoons', 'Dinner Spoon', 'Dinner Spoon', 'Kitchen accessories are the tools, utensils, appliances, dishes, and cookware used in food preparation, or the serving of food.Kitchen accessories can also be used to hold or store food before or after preparation.', 0, 10, 8, 20, 0, ' 1 pc(s)', 0, '2020-09-28 15:22:49', '2020-09-28 15:22:49');
INSERT INTO `products` VALUES (254, '', 'kitchen_accessories_ice_cream_scoop', 'Ice Cream Scoop', 'Ice Cream Scoop', 'Kitchen accessories are the tools, utensils, appliances, dishes, and cookware used in food preparation, or the serving of food.Kitchen accessories can also be used to hold or store food before or after preparation.', 0, 5, 5, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:23:23', '2020-09-28 15:23:23');
INSERT INTO `products` VALUES (255, '', 'kitchen_accessories_kitchen_tools', 'Kitchen Tools', 'Kitchen Tools', 'Kitchen accessories are the tools, utensils, appliances, dishes, and cookware used in food preparation, or the serving of food.Kitchen accessories can also be used to hold or store food before or after preparation.', 0, 15, 15, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:24:24', '2020-09-28 15:24:24');
INSERT INTO `products` VALUES (256, '', 'kitchen_accessories_mash_strainers', 'Mesh Strainers', 'Mesh Strainers', 'Kitchen accessories are the tools, utensils, appliances, dishes, and cookware used in food preparation, or the serving of food.Kitchen accessories can also be used to hold or store food before or after preparation.', 0, 5, 5, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:25:26', '2020-09-28 15:25:26');
INSERT INTO `products` VALUES (257, '', 'kitchen_accessories_skimmer', 'Skimmers', 'Skimmers', 'Kitchen accessories are the tools, utensils, appliances, dishes, and cookware used in food preparation, or the serving of food.Kitchen accessories can also be used to hold or store food before or after preparation.', 0, 3, 3, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:26:05', '2020-09-28 15:26:05');
INSERT INTO `products` VALUES (258, '', 'kitchen_accessories_solid_turner', 'Solid Turner', 'Solid Turner', 'Kitchen accessories are the tools, utensils, appliances, dishes, and cookware used in food preparation, or the serving of food.Kitchen accessories can also be used to hold or store food before or after preparation.', 0, 3, 3, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:26:39', '2020-09-28 15:26:39');
INSERT INTO `products` VALUES (259, '', 'laundry_products_woolite', 'Woolite Gentle Cycle', 'Woolite Gentle Cycle', 'Laundry detergent, or washing powder, is a type of detergent (cleaning agent) that is added for cleaning laundry. While detergent is still sold in powdered form, liquid detergents have been taking major market shares in many countries since their introduction in the 1950s.', 0, 30, 30, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:27:01', '2020-09-28 15:27:01');
INSERT INTO `products` VALUES (260, '', 'laundry_products_tide', 'Tide Downy', 'Tide Downy', 'Laundry detergent, or washing powder, is a type of detergent (cleaning agent) that is added for cleaning laundry. While detergent is still sold in powdered form, liquid detergents have been taking major market shares in many countries since their introduction in the 1950s.', 0, 30, 21, 30, 0, ' 4 lb', 0, '2020-09-28 15:27:20', '2020-09-28 15:27:20');
INSERT INTO `products` VALUES (261, '', 'laundry_products_seventh_generation', 'Seventh Generation Sensative Skin', 'Seventh Generation Sensative Skin', 'Laundry detergent, or washing powder, is a type of detergent (cleaning agent) that is added for cleaning laundry. While detergent is still sold in powdered form, liquid detergents have been taking major market shares in many countries since their introduction in the 1950s.', 0, 30, 24, 20, 0, ' 4 lb', 0, '2020-09-28 15:27:40', '2020-09-28 15:27:40');
INSERT INTO `products` VALUES (262, '', 'laundry_products_safe_wash', 'Safe Wash', 'Safe Wash', 'Laundry detergent, or washing powder, is a type of detergent (cleaning agent) that is added for cleaning laundry. While detergent is still sold in powdered form, liquid detergents have been taking major market shares in many countries since their introduction in the 1950s.', 0, 30, 30, 0, 0, ' 4 lb', 0, '2020-09-28 15:27:53', '2020-09-28 15:27:53');
INSERT INTO `products` VALUES (263, '', 'laundry_products_purex', 'Purex Oxi', 'Purex Oxi', 'Laundry detergent, or washing powder, is a type of detergent (cleaning agent) that is added for cleaning laundry. While detergent is still sold in powdered form, liquid detergents have been taking major market shares in many countries since their introduction in the 1950s.', 0, 25, 25, 0, 0, ' 4 lb', 0, '2020-09-28 15:28:23', '2020-09-28 15:28:23');
INSERT INTO `products` VALUES (264, '', 'laundry_products_persil', 'Persil Power Gel', 'Persil Power Gel', 'Laundry detergent, or washing powder, is a type of detergent (cleaning agent) that is added for cleaning laundry. While detergent is still sold in powdered form, liquid detergents have been taking major market shares in many countries since their introduction in the 1950s.', 0, 35, 35, 0, 0, ' 4 lb', 0, '2020-09-28 15:28:35', '2020-09-28 15:28:35');
INSERT INTO `products` VALUES (265, '', 'laundry_products_home_made_simple', 'Home Made Simple', 'Home Made Simple', 'Laundry detergent, or washing powder, is a type of detergent (cleaning agent) that is added for cleaning laundry. While detergent is still sold in powdered form, liquid detergents have been taking major market shares in many countries since their introduction in the 1950s.', 0, 18, 18, 0, 0, ' 4 lb', 0, '2020-09-28 15:28:56', '2020-09-28 15:28:56');
INSERT INTO `products` VALUES (266, '', 'laundry_products_ecos', 'Ecos', 'Ecos', 'Laundry detergent, or washing powder, is a type of detergent (cleaning agent) that is added for cleaning laundry. While detergent is still sold in powdered form, liquid detergents have been taking major market shares in many countries since their introduction in the 1950s.', 0, 28, 28, 0, 0, ' 4 lb', 0, '2020-09-28 15:29:15', '2020-09-28 15:29:15');
INSERT INTO `products` VALUES (267, '', 'laundry_products_daz', 'Daz', 'Daz', 'Laundry detergent, or washing powder, is a type of detergent (cleaning agent) that is added for cleaning laundry. While detergent is still sold in powdered form, liquid detergents have been taking major market shares in many countries since their introduction in the 1950s.', 0, 32, 32, 0, 0, ' 6 lb', 0, '2020-09-28 15:29:42', '2020-09-28 15:29:42');
INSERT INTO `products` VALUES (268, '', 'laundry_products_chomel', 'Chomel Baby Laundry Detergent', 'Chomel Baby Laundry Detergent', 'Laundry detergent, or washing powder, is a type of detergent (cleaning agent) that is added for cleaning laundry. While detergent is still sold in powdered form, liquid detergents have been taking major market shares in many countries since their introduction in the 1950s.', 0, 50, 50, 0, 0, ' 6 lb', 0, '2020-09-28 15:29:57', '2020-09-28 15:29:57');
INSERT INTO `products` VALUES (269, '', 'laundry_products_chicco', 'Chicco Baby Laundry Detergent', 'Chicco Baby Laundry Detergent', 'Laundry detergent, or washing powder, is a type of detergent (cleaning agent) that is added for cleaning laundry. While detergent is still sold in powdered form, liquid detergents have been taking major market shares in many countries since their introduction in the 1950s.', 0, 48, 48, 0, 0, ' 6 lb', 0, '2020-09-28 15:30:12', '2020-09-28 15:30:12');
INSERT INTO `products` VALUES (270, '', 'laundry_products_babyhug', 'Babyhug Baby Laundry Detergent', 'Babyhug Baby Laundry Detergent', 'Laundry detergent, or washing powder, is a type of detergent (cleaning agent) that is added for cleaning laundry. While detergent is still sold in powdered form, liquid detergents have been taking major market shares in many countries since their introduction in the 1950s.', 0, 40, 36, 10, 0, ' 6 lb', 0, '2020-09-28 15:30:35', '2020-09-28 15:30:35');
INSERT INTO `products` VALUES (271, '', 'pest_control_doff', 'Doff Insect Killer', 'Doff Insect Killer', 'Pest control is the regulation or management of a species defined as a pest, a member of the animal kingdom that impacts adversely on human activities. The human response depends on the importance of the damage done, and will range from tolerance, through deterrence and management, to attempts to completely eradicate the pest.', 0, 10, 10, 0, 0, ' 2 lb', 0, '2020-09-28 15:30:53', '2020-09-28 15:30:53');
INSERT INTO `products` VALUES (272, '', 'pest_control_eco_deffence_home_pest_control', 'Homepest Control', 'Homepest Control', 'Pest control is the regulation or management of a species defined as a pest, a member of the animal kingdom that impacts adversely on human activities. The human response depends on the importance of the damage done, and will range from tolerance, through deterrence and management, to attempts to completely eradicate the pest.', 0, 15, 12, 20, 0, ' 2 lb', 0, '2020-09-28 15:31:11', '2020-09-28 15:31:11');
INSERT INTO `products` VALUES (274, '', 'pest_control_kritterkill', 'Professional Moth Killer', 'Professional Moth Killer', 'Pest control is the regulation or management of a species defined as a pest, a member of the animal kingdom that impacts adversely on human activities. The human response depends on the importance of the damage done, and will range from tolerance, through deterrence and management, to attempts to completely eradicate the pest.', 0, 12, 12, 0, 0, ' 2 lb', 0, '2020-09-28 15:31:42', '2020-09-28 15:31:42');
INSERT INTO `products` VALUES (275, '', 'pest_control_naturally_green', 'Naturally Green No More Bugs', 'Naturally Green No More Bugs', 'Pest control is the regulation or management of a species defined as a pest, a member of the animal kingdom that impacts adversely on human activities. The human response depends on the importance of the damage done, and will range from tolerance, through deterrence and management, to attempts to completely eradicate the pest.', 0, 18, 18, 0, 0, ' 2 lb', 0, '2020-09-28 15:31:59', '2020-09-28 15:31:59');
INSERT INTO `products` VALUES (276, '', 'pest_control_sc_johnson_raid', 'Raid Ant Roach Barrier', 'Raid Ant Roach Barrier', 'Pest control is the regulation or management of a species defined as a pest, a member of the animal kingdom that impacts adversely on human activities. The human response depends on the importance of the damage done, and will range from tolerance, through deterrence and management, to attempts to completely eradicate the pest.', 0, 18, 18, 0, 0, ' 2 lb', 0, '2020-09-28 15:32:23', '2020-09-28 15:32:23');
INSERT INTO `products` VALUES (277, '', 'pest_control_wondercide_indoor_pest_control', 'Wondercide Indoor Pest Control', 'Wondercide Indoor Pest Control', 'Pest control is the regulation or management of a species defined as a pest, a member of the animal kingdom that impacts adversely on human activities. The human response depends on the importance of the damage done, and will range from tolerance, through deterrence and management, to attempts to completely eradicate the pest.', 0, 20, 20, 0, 0, ' 2 lb', 0, '2020-09-28 15:32:50', '2020-09-28 15:32:50');
INSERT INTO `products` VALUES (278, '', 'butter_barney', 'Barney Butter', 'Barney Butter', 'Butter is a dairy product with high butterfat content which is solid when chilled and at room temperature in some regions, and liquid when warmed. It is made by churning fresh or fermented cream or milk to separate the butterfat from the buttermilk.', 0, 8, 8, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:33:12', '2020-09-28 15:33:12');
INSERT INTO `products` VALUES (280, '', 'butter_kirkland', 'Kirkland Signature', 'Kirkland Signature', 'Butter is a dairy product with high butterfat content which is solid when chilled and at room temperature in some regions, and liquid when warmed. It is made by churning fresh or fermented cream or milk to separate the butterfat from the buttermilk.', 0, 9, 8, 11, 0, ' 1 pc(s)', 0, '2020-09-28 15:33:26', '2020-09-28 15:33:26');
INSERT INTO `products` VALUES (281, '', 'butter_nature\'s_tattva', 'Nature S Tattva Shea Butter', 'Nature S Tattva Shea Butter', 'Butter is a dairy product with high butterfat content which is solid when chilled and at room temperature in some regions, and liquid when warmed. It is made by churning fresh or fermented cream or milk to separate the butterfat from the buttermilk.', 0, 9, 9, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:33:57', '2020-09-28 15:33:57');
INSERT INTO `products` VALUES (282, '', 'butter_nikki\'s', 'Nikki S Coconut Butter', 'Nikki S Coconut Butter', 'Butter is a dairy product with high butterfat content which is solid when chilled and at room temperature in some regions, and liquid when warmed. It is made by churning fresh or fermented cream or milk to separate the butterfat from the buttermilk.', 0, 10, 7, 30, 0, ' 1 pc(s)', 0, '2020-09-28 15:34:14', '2020-09-28 15:34:14');
INSERT INTO `products` VALUES (284, '', 'butter_tnuva', 'Tnuva Salted Butter', 'Tnuva Salted Butter', 'Butter is a dairy product with high butterfat content which is solid when chilled and at room temperature in some regions, and liquid when warmed. It is made by churning fresh or fermented cream or milk to separate the butterfat from the buttermilk.', 0, 10, 10, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:34:30', '2020-09-28 15:34:30');
INSERT INTO `products` VALUES (285, '', 'butter_tru_nut', 'Tru Nut Powdered Peanut Butter', 'Tru Nut Powdered Peanut Butter', 'Butter is a dairy product with high butterfat content which is solid when chilled and at room temperature in some regions, and liquid when warmed. It is made by churning fresh or fermented cream or milk to separate the butterfat from the buttermilk.', 0, 10, 10, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:35:05', '2020-09-28 15:35:05');
INSERT INTO `products` VALUES (286, '', 'butter_whole_earth', 'Whole Earth Crunchy Peanut Butter', 'Whole Earth Crunchy Peanut Butter', 'Butter is a dairy product with high butterfat content which is solid when chilled and at room temperature in some regions, and liquid when warmed. It is made by churning fresh or fermented cream or milk to separate the butterfat from the buttermilk.', 0, 10, 10, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:35:24', '2020-09-28 15:35:24');
INSERT INTO `products` VALUES (287, '', 'egg_cavanagh', 'Cavanagh Free Range Eggs', 'Cavanagh Free Range Eggs', 'The egg is the organic vessel containing the zygote in which an embryo develops until it can survive on its own, at which point the animal hatches. An egg results from fertilization of an egg cell. Most arthropods, vertebrates (excluding mammals), and mollusks lay eggs, although some, such as scorpions, do not.', 0, 2, 2, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:35:41', '2020-09-28 15:35:41');
INSERT INTO `products` VALUES (288, '', 'egg_clarenece_court', 'Clarence Court 6 Free Range Eggs', 'Clarence Court 6 Free Range Eggs', 'The egg is the organic vessel containing the zygote in which an embryo develops until it can survive on its own, at which point the animal hatches. An egg results from fertilization of an egg cell. Most arthropods, vertebrates (excluding mammals), and mollusks lay eggs, although some, such as scorpions, do not.', 0, 2, 2, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:35:56', '2020-09-28 15:35:56');
INSERT INTO `products` VALUES (289, '', 'egg_cp', 'Cp Omega', 'Cp Omega', 'The egg is the organic vessel containing the zygote in which an embryo develops until it can survive on its own, at which point the animal hatches. An egg results from fertilization of an egg cell. Most arthropods, vertebrates (excluding mammals), and mollusks lay eggs, although some, such as scorpions, do not.', 0, 2, 2, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:36:11', '2020-09-28 15:36:11');
INSERT INTO `products` VALUES (290, '', 'egg_freshlay_golden_yolks', 'Freshlay Golden Yolks', 'Freshlay Golden Yolks', 'The egg is the organic vessel containing the zygote in which an embryo develops until it can survive on its own, at which point the animal hatches. An egg results from fertilization of an egg cell. Most arthropods, vertebrates (excluding mammals), and mollusks lay eggs, although some, such as scorpions, do not.', 0, 3, 3, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:36:35', '2020-09-28 15:36:35');
INSERT INTO `products` VALUES (291, '', 'egg_gold_hen', 'Golden Cage Free', 'Golden Cage Free', 'The egg is the organic vessel containing the zygote in which an embryo develops until it can survive on its own, at which point the animal hatches. An egg results from fertilization of an egg cell. Most arthropods, vertebrates (excluding mammals), and mollusks lay eggs, although some, such as scorpions, do not.', 0, 3, 3, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:36:49', '2020-09-28 15:36:49');
INSERT INTO `products` VALUES (292, '', 'egg_happy_egg_organic', 'Happy Egg Organic', 'Happy Egg Organic', 'The egg is the organic vessel containing the zygote in which an embryo develops until it can survive on its own, at which point the animal hatches. An egg results from fertilization of an egg cell. Most arthropods, vertebrates (excluding mammals), and mollusks lay eggs, although some, such as scorpions, do not.', 0, 4, 4, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:37:00', '2020-09-28 15:37:00');
INSERT INTO `products` VALUES (293, '', 'egg_morrisons', 'Morrisons 6 Medium Free Range Golden Yolk Eggs', 'Morrisons 6 Medium Free Range Golden Yolk Eggs', 'The egg is the organic vessel containing the zygote in which an embryo develops until it can survive on its own, at which point the animal hatches. An egg results from fertilization of an egg cell. Most arthropods, vertebrates (excluding mammals), and mollusks lay eggs, although some, such as scorpions, do not.', 0, 4, 4, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:37:18', '2020-09-28 15:37:18');
INSERT INTO `products` VALUES (294, '', 'egg_nutri_plus_telur_kampang_omega3', 'Nutri Plus Telur Omega3', 'Nutri Plus Telur Omega3', 'The egg is the organic vessel containing the zygote in which an embryo develops until it can survive on its own, at which point the animal hatches. An egg results from fertilization of an egg cell. Most arthropods, vertebrates (excluding mammals), and mollusks lay eggs, although some, such as scorpions, do not.', 0, 4, 4, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:37:32', '2020-09-28 15:37:32');
INSERT INTO `products` VALUES (295, '', 'milk_arla_lacto_free', 'Arla Lacto Free Semi Skimmed Milk', 'Arla Lacto Free Semi Skimmed Milk', 'Milk is a nutrient-rich, white liquid food produced by the mammary glands of mammals. It is the primary source of nutrition for infant mammals (including humans who are breastfed) before they are able to digest other types of food.', 0, 4, 4, 0, 0, ' 2 lb', 0, '2020-09-28 15:37:50', '2020-09-28 15:37:50');
INSERT INTO `products` VALUES (296, '', 'milk_arla_low_fat1.5', 'Arla All Natural Milk Goodness Low Fat', 'Arla All Natural Milk Goodness Low Fat', 'Milk is a nutrient-rich, white liquid food produced by the mammary glands of mammals. It is the primary source of nutrition for infant mammals (including humans who are breastfed) before they are able to digest other types of food.', 0, 4, 4, 0, 0, ' 2 lb', 0, '2020-09-28 15:38:13', '2020-09-28 15:38:13');
INSERT INTO `products` VALUES (297, '', 'milk_f&n_magnolia.5', 'Magnolia Fresh Milk', 'Magnolia Fresh Milk', 'Milk is a nutrient-rich, white liquid food produced by the mammary glands of mammals. It is the primary source of nutrition for infant mammals (including humans who are breastfed) before they are able to digest other types of food.', 0, 4, 4, 0, 0, ' 2 lb', 0, '2020-09-28 15:38:28', '2020-09-28 15:38:28');
INSERT INTO `products` VALUES (298, '', 'milk_greenfields_choco_malt_flavoured', 'Greenfields Chocolate Malt', 'Greenfields Chocolate Malt', 'Milk is a nutrient-rich, white liquid food produced by the mammary glands of mammals. It is the primary source of nutrition for infant mammals (including humans who are breastfed) before they are able to digest other types of food.', 0, 5, 5, 0, 0, ' 2 lb', 0, '2020-09-28 15:38:58', '2020-09-28 15:38:58');
INSERT INTO `products` VALUES (299, '', 'milk_heritage', 'Heritage Special Long Life Milk', 'Heritage Special Long Life Milk', 'Milk is a nutrient-rich, white liquid food produced by the mammary glands of mammals. It is the primary source of nutrition for infant mammals (including humans who are breastfed) before they are able to digest other types of food.', 0, 5, 5, 0, 0, ' 2 lb', 0, '2020-09-28 15:39:12', '2020-09-28 15:39:12');
INSERT INTO `products` VALUES (300, '', 'milk_lactaid', 'Lactaid', 'Lactaid', 'Milk is a nutrient-rich, white liquid food produced by the mammary glands of mammals. It is the primary source of nutrition for infant mammals (including humans who are breastfed) before they are able to digest other types of food.', 0, 5, 5, 0, 0, ' 2 lb', 0, '2020-09-28 15:39:42', '2020-09-28 15:39:42');
INSERT INTO `products` VALUES (301, '', 'milk_living_planet', 'Living Planet Organic Dairy Milk', 'Living Planet Organic Dairy Milk', 'Milk is a nutrient-rich, white liquid food produced by the mammary glands of mammals. It is the primary source of nutrition for infant mammals (including humans who are breastfed) before they are able to digest other types of food.', 0, 5, 5, 0, 0, ' 2 lb', 0, '2020-09-28 15:39:58', '2020-09-28 15:39:58');
INSERT INTO `products` VALUES (302, '', 'milk_cream_califia_farms', 'Betterhalf Original', 'Betterhalf Original', 'Cream is a dairy product composed of the higher-fat layer skimmed from the top of milk before homogenization. In un-homogenized milk, the fat, which is less dense, eventually rises to the top.', 0, 5, 5, 0, 0, ' 2 lb', 0, '2020-09-28 15:40:36', '2020-09-28 15:40:36');
INSERT INTO `products` VALUES (303, '', 'milk_cream_clover', 'Clover Original Cream', 'Clover Original Cream', 'Cream is a dairy product composed of the higher-fat layer skimmed from the top of milk before homogenization. In un-homogenized milk, the fat, which is less dense, eventually rises to the top.', 0, 5, 4, 20, 0, ' 2 lb', 0, '2020-09-28 15:41:05', '2020-09-28 15:41:05');
INSERT INTO `products` VALUES (304, '', 'milk_cream_fernleaf', 'Fernleaf Full Cream', 'Fernleaf Full Cream', 'Cream is a dairy product composed of the higher-fat layer skimmed from the top of milk before homogenization. In un-homogenized milk, the fat, which is less dense, eventually rises to the top.', 0, 5, 4, 20, 0, ' 2 lb', 0, '2020-09-28 15:41:26', '2020-09-28 15:41:26');
INSERT INTO `products` VALUES (305, '', 'powder_milk_scape', 'Scape Milk Powder', 'Scape Milk Powder', 'Powdered milk or dried milk is a manufactured dairy product made by evaporating milk to dryness. One purpose of drying milk is to preserve it; milk powder has a far longer shelf life than liquid milk and does not need to be refrigerated, due to its low moisture content. Another purpose is to reduce its bulk for economy of transportation.', 0, 5, 5, 0, 0, ' 2 lb', 0, '2020-09-28 15:41:54', '2020-09-28 15:41:54');
INSERT INTO `products` VALUES (306, '', 'powder_milk_z_natural_foods', 'Natural Foods Organic Coconut Milk Powder', 'Natural Foods Organic Coconut Milk Powder', 'Powdered milk or dried milk is a manufactured dairy product made by evaporating milk to dryness. One purpose of drying milk is to preserve it; milk powder has a far longer shelf life than liquid milk and does not need to be refrigerated, due to its low moisture content. Another purpose is to reduce its bulk for economy of transportation.', 0, 5, 4, 20, 0, ' 2 lb', 0, '2020-09-28 15:42:19', '2020-09-28 15:42:19');
INSERT INTO `products` VALUES (307, '', 'powder_milk_param', 'Param Premium Milk Powder', 'Param Premium Milk Powder', 'Powdered milk or dried milk is a manufactured dairy product made by evaporating milk to dryness. One purpose of drying milk is to preserve it; milk powder has a far longer shelf life than liquid milk and does not need to be refrigerated, due to its low moisture content. Another purpose is to reduce its bulk for economy of transportation.', 0, 5, 5, 0, 0, ' 2 lb', 0, '2020-09-28 15:42:41', '2020-09-28 15:42:41');
INSERT INTO `products` VALUES (308, '', 'powder_milk_nestle_nido_900gram', 'Nestle Nido', 'Nestle Nido', 'Powdered milk or dried milk is a manufactured dairy product made by evaporating milk to dryness. One purpose of drying milk is to preserve it; milk powder has a far longer shelf life than liquid milk and does not need to be refrigerated, due to its low moisture content. Another purpose is to reduce its bulk for economy of transportation.', 0, 5, 5, 0, 0, ' 2 lb', 0, '2020-09-28 15:43:15', '2020-09-28 15:43:15');
INSERT INTO `products` VALUES (309, '', 'powder_milk_milgro', 'Milgro', 'Milgro', 'Powdered milk or dried milk is a manufactured dairy product made by evaporating milk to dryness. One purpose of drying milk is to preserve it; milk powder has a far longer shelf life than liquid milk and does not need to be refrigerated, due to its low moisture content. Another purpose is to reduce its bulk for economy of transportation.', 0, 5, 5, 0, 0, ' 2 lb', 0, '2020-09-28 15:43:32', '2020-09-28 15:43:32');
INSERT INTO `products` VALUES (310, '', 'powder_milk_lifestyle_food', 'Lifestyle Soya Milk Powder', 'Lifestyle Soya Milk Powder', 'Powdered milk or dried milk is a manufactured dairy product made by evaporating milk to dryness. One purpose of drying milk is to preserve it; milk powder has a far longer shelf life than liquid milk and does not need to be refrigerated, due to its low moisture content. Another purpose is to reduce its bulk for economy of transportation.', 0, 5, 5, 0, 0, ' 2 lb', 0, '2020-09-28 15:43:50', '2020-09-28 15:43:50');
INSERT INTO `products` VALUES (311, '', 'powder_milk_goldmilys', 'Goldmilys Instant Milk Powder', 'Goldmilys Instant Milk Powder', 'Powdered milk or dried milk is a manufactured dairy product made by evaporating milk to dryness. One purpose of drying milk is to preserve it; milk powder has a far longer shelf life than liquid milk and does not need to be refrigerated, due to its low moisture content. Another purpose is to reduce its bulk for economy of transportation.', 0, 4, 4, 0, 0, ' 2 lb', 0, '2020-09-28 15:44:14', '2020-09-28 15:44:14');
INSERT INTO `products` VALUES (312, '', 'milk_cream_nammilk', 'Nammilk Greek Style', 'Nammilk Greek Style', 'yoghurt, yogourt or yoghourt, is a food produced by bacterial fermentation of milk.[1] The bacteria used to make yogurt are known as yogurt cultures.', 0, 4, 4, 0, 0, ' 2 lb', 0, '2020-09-28 15:44:36', '2020-09-28 15:44:36');
INSERT INTO `products` VALUES (313, '', 'yogourt_astro_balkan', 'Astro Original', 'Astro Original', 'yoghurt, yogourt or yoghourt, is a food produced by bacterial fermentation of milk.[1] The bacteria used to make yogurt are known as yogurt cultures.', 0, 4, 3, 25, 0, ' 2 lb', 0, '2020-09-28 15:44:55', '2020-09-28 15:44:55');
INSERT INTO `products` VALUES (314, '', 'yogourt_astro_bio_best', 'Astro Bio Best', 'Astro Bio Best', 'yoghurt, yogourt or yoghourt, is a food produced by bacterial fermentation of milk.[1] The bacteria used to make yogurt are known as yogurt cultures.', 0, 4, 4, 0, 0, ' 2 lb', 0, '2020-09-28 15:45:19', '2020-09-28 15:45:19');
INSERT INTO `products` VALUES (315, '', 'yogourt_chobani_plain_non_fat', 'Chonani', 'Chonani', 'yoghurt, yogourt or yoghourt, is a food produced by bacterial fermentation of milk.[1] The bacteria used to make yogurt are known as yogurt cultures.', 0, 4, 4, 0, 0, ' 2 lb', 0, '2020-09-28 15:45:46', '2020-09-28 15:45:46');
INSERT INTO `products` VALUES (316, '', 'yogourt_chobani_playogourt_chobani_vanillain_non_fat', 'Chonani Vanilla Blended', 'Chonani Vanilla Blended', 'yoghurt, yogourt or yoghourt, is a food produced by bacterial fermentation of milk.[1] The bacteria used to make yogurt are known as yogurt cultures.', 0, 4, 4, 0, 0, ' 2 lb', 0, '2020-09-28 15:46:12', '2020-09-28 15:46:12');
INSERT INTO `products` VALUES (317, '', 'yogourt_dannon_strawberry', 'Dannon Strawberry', 'Dannon Strawberry', 'yoghurt, yogourt or yoghourt, is a food produced by bacterial fermentation of milk.[1] The bacteria used to make yogurt are known as yogurt cultures.', 0, 4, 4, 0, 0, ' 2 lb', 0, '2020-09-28 15:46:43', '2020-09-28 15:46:43');
INSERT INTO `products` VALUES (318, '', 'yogourt_dannon_vanilla', 'Dannon Vanilla', 'Dannon Vanilla', 'yoghurt, yogourt or yoghourt, is a food produced by bacterial fermentation of milk.[1] The bacteria used to make yogurt are known as yogurt cultures.', 0, 4, 4, 0, 0, '2 lb', 0, '2020-09-28 15:47:05', '2020-09-28 15:47:05');
INSERT INTO `products` VALUES (319, '', 'yogourt_marigold', 'Marigold Yogourt', 'Marigold Yogourt', 'yoghurt, yogourt or yoghourt, is a food produced by bacterial fermentation of milk.[1] The bacteria used to make yogurt are known as yogurt cultures.', 0, 5, 5, 0, 0, '2 lb', 0, '2020-09-28 15:47:21', '2020-09-28 15:47:21');
INSERT INTO `products` VALUES (320, '', 'yogourt_stony_field_vanilla_fudge_swirl', 'Stony Field Vanilla', 'Stony Field Vanilla', 'yoghurt, yogourt or yoghourt, is a food produced by bacterial fermentation of milk.[1] The bacteria used to make yogurt are known as yogurt cultures.', 0, 5, 5, 0, 0, ' 2 lb', 0, '2020-09-28 15:47:39', '2020-09-28 15:47:39');
INSERT INTO `products` VALUES (321, '', 'oil_1_2_3_vegitable', '1 2 3 Vegetable Oil', '1 2 3 Vegetable Oil', 'An oil is any nonpolar chemical substance that is a viscous liquid at ambient temperatures and is both hydrophobic (does not mix with water, literally water fearing) and lipophilic (mixes with other oils, literally fat loving). Oils have a high carbon and hydrogen content and are usually flammable and surface active.', 0, 5, 4, 20, 0, ' 2 lb', 0, '2020-09-28 15:47:54', '2020-09-28 15:47:54');
INSERT INTO `products` VALUES (322, '', 'oil_clover_valley', 'Clover Valley Vegetable Oil', 'Clover Valley Vegetable Oil', 'An oil is any nonpolar chemical substance that is a viscous liquid at ambient temperatures and is both hydrophobic (does not mix with water, literally water fearing) and lipophilic (mixes with other oils, literally fat loving). Oils have a high carbon and hydrogen content and are usually flammable and surface active.', 0, 8, 6, 25, 0, ' 4 lb', 0, '2020-09-28 15:48:17', '2020-09-28 15:48:17');
INSERT INTO `products` VALUES (323, '', 'oil_daisy', 'Daisy Corn Oil', 'Daisy Corn Oil', 'An oil is any nonpolar chemical substance that is a viscous liquid at ambient temperatures and is both hydrophobic (does not mix with water, literally water fearing) and lipophilic (mixes with other oils, literally fat loving). Oils have a high carbon and hydrogen content and are usually flammable and surface active.', 0, 8, 8, 0, 0, ' 3 lb', 0, '2020-09-28 15:48:33', '2020-09-28 15:48:33');
INSERT INTO `products` VALUES (324, '', 'oil_eva', 'Eva Corn Oil', 'Eva Corn Oil', 'An oil is any nonpolar chemical substance that is a viscous liquid at ambient temperatures and is both hydrophobic (does not mix with water, literally water fearing) and lipophilic (mixes with other oils, literally fat loving). Oils have a high carbon and hydrogen content and are usually flammable and surface active.', 0, 8, 8, 0, 0, ' 3 lb', 0, '2020-09-28 15:48:49', '2020-09-28 15:48:49');
INSERT INTO `products` VALUES (325, '', 'oil_goya', 'Goya Extra Virgin Olive Oil', 'Goya Extra Virgin Olive Oil', 'An oil is any nonpolar chemical substance that is a viscous liquid at ambient temperatures and is both hydrophobic (does not mix with water, literally water fearing) and lipophilic (mixes with other oils, literally fat loving). Oils have a high carbon and hydrogen content and are usually flammable and surface active.', 0, 10, 10, 0, 0, ' 2 lb', 0, '2020-09-28 15:49:03', '2020-09-28 15:49:03');
INSERT INTO `products` VALUES (326, '', 'oil_natural', 'Naturel Premium Sunflower Oil', 'Naturel Premium Sunflower Oil', 'An oil is any nonpolar chemical substance that is a viscous liquid at ambient temperatures and is both hydrophobic (does not mix with water, literally water fearing) and lipophilic (mixes with other oils, literally fat loving). Oils have a high carbon and hydrogen content and are usually flammable and surface active.', 0, 8, 8, 0, 0, ' 2 lb', 0, '2020-09-28 15:49:27', '2020-09-28 15:49:27');
INSERT INTO `products` VALUES (327, '', 'oil_san_lucas', 'San Lucas Corn Oil', 'San Lucas Corn Oil', 'An oil is any nonpolar chemical substance that is a viscous liquid at ambient temperatures and is both hydrophobic (does not mix with water, literally water fearing) and lipophilic (mixes with other oils, literally fat loving). Oils have a high carbon and hydrogen content and are usually flammable and surface active.', 0, 7, 7, 0, 0, ' 2 lb', 0, '2020-09-28 15:49:52', '2020-09-28 15:49:52');
INSERT INTO `products` VALUES (328, '', 'oil_sunfoil', 'Sunfoil Sunflower Oil', 'Sunfoil Sunflower Oil', 'An oil is any nonpolar chemical substance that is a viscous liquid at ambient temperatures and is both hydrophobic (does not mix with water, literally water fearing) and lipophilic (mixes with other oils, literally fat loving). Oils have a high carbon and hydrogen content and are usually flammable and surface active.', 0, 9, 9, 0, 0, ' 2 lb', 0, '2020-09-28 15:50:07', '2020-09-28 15:50:07');
INSERT INTO `products` VALUES (329, '', 'chefa_choice_bamboo_rice', 'Chef Choice Bamboo Rice', 'Chef Choice Bamboo Rice', 'Rice is the seed of the grass species Oryza sativa (Asian rice) or Oryza glaberrima (African rice). As a cereal grain, it is the most widely consumed staple food for a large part of the world\'s human population, especially in Asia.', 0, 9, 9, 0, 0, ' 2 lb', 0, '2020-09-28 15:50:35', '2020-09-28 15:50:35');
INSERT INTO `products` VALUES (330, '', 'everyday_essentials_Golden_Vegetable_Savoury_Rice', 'Everyday Essentials Golden Vegetable Savoury Rice', 'Everyday Essentials Golden Vegetable Savoury Rice', 'Rice is the seed of the grass species Oryza sativa (Asian rice) or Oryza glaberrima (African rice). As a cereal grain, it is the most widely consumed staple food for a large part of the world\'s human population, especially in Asia.', 0, 5, 5, 0, 0, ' 2 lb', 0, '2020-09-28 15:51:07', '2020-09-28 15:51:07');
INSERT INTO `products` VALUES (331, '', 'hulas_premium_basmati_rice', 'Hulas Premium Basmati Rice', 'Hulas Premium Basmati Rice', 'Rice is the seed of the grass species Oryza sativa (Asian rice) or Oryza glaberrima (African rice). As a cereal grain, it is the most widely consumed staple food for a large part of the world\'s human population, especially in Asia.', 0, 5, 4, 20, 0, ' 2 lb', 0, '2020-09-28 15:51:41', '2020-09-28 15:51:41');
INSERT INTO `products` VALUES (332, '', 'Iberia_Long_Grain_Enriched_Fragrant_Rice_18_lbs', 'Jasmine Long Grain Fragrant Rice', 'Jasmine Long Grain Fragrant Rice', 'Rice is the seed of the grass species Oryza sativa (Asian rice) or Oryza glaberrima (African rice). As a cereal grain, it is the most widely consumed staple food for a large part of the world\'s human population, especially in Asia.', 0, 40, 36, 10, 0, ' 20 lb', 0, '2020-09-28 15:52:17', '2020-09-28 15:52:17');
INSERT INTO `products` VALUES (333, '', 'india_gate_basmati_rice', 'India Gate Basmati Rice', 'India Gate Basmati Rice', 'Rice is the seed of the grass species Oryza sativa (Asian rice) or Oryza glaberrima (African rice). As a cereal grain, it is the most widely consumed staple food for a large part of the world\'s human population, especially in Asia.', 0, 40, 40, 0, 0, ' 20 lb', 0, '2020-09-28 15:52:42', '2020-09-28 15:52:42');
INSERT INTO `products` VALUES (334, '', 'nature\'s_gift_basmati_rice', 'Natures Gift Basmati Rice', 'Natures Gift Basmati Rice', 'Rice is the seed of the grass species Oryza sativa (Asian rice) or Oryza glaberrima (African rice). As a cereal grain, it is the most widely consumed staple food for a large part of the world\'s human population, especially in Asia.', 0, 20, 16, 20, 0, ' 10 lb', 0, '2020-09-28 15:53:10', '2020-09-28 15:53:10');
INSERT INTO `products` VALUES (335, '', 'seeds_of_change_brown_basmati_rice', 'Seeds Of Change Brown Basmati Rice', 'Seeds Of Change Brown Basmati Rice', 'Rice is the seed of the grass species Oryza sativa (Asian rice) or Oryza glaberrima (African rice). As a cereal grain, it is the most widely consumed staple food for a large part of the world\'s human population, especially in Asia.', 0, 5, 5, 0, 0, ' 2 lb', 0, '2020-09-28 15:53:39', '2020-09-28 15:53:39');
INSERT INTO `products` VALUES (336, '', 'tai_ping_Sushi_Rice_1kg', 'Tai Ping Sushi Rice', 'Tai Ping Sushi Rice', 'Rice is the seed of the grass species Oryza sativa (Asian rice) or Oryza glaberrima (African rice). As a cereal grain, it is the most widely consumed staple food for a large part of the world\'s human population, especially in Asia.', 0, 5, 5, 0, 0, ' 2 lb', 0, '2020-09-28 15:54:11', '2020-09-28 15:54:11');
INSERT INTO `products` VALUES (337, '', 'clover_valley_sea_salt_grinder', 'Clover Valley Sea Salt', 'Clover Valley Sea Salt', 'Salt is a mineral composed primarily of sodium chloride (NaCl), a chemical compound belonging to the larger class of salts; salt in its natural form as a crystalline mineral is known as rock salt .', 0, 3, 3, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:54:26', '2020-09-28 15:54:26');
INSERT INTO `products` VALUES (338, '', 'gathering_place_sea_salt_100g_grinder', 'Gathering Place Sea Salt', 'Gathering Place Sea Salt', 'Salt is a mineral composed primarily of sodium chloride (NaCl), a chemical compound belonging to the larger class of salts; salt in its natural form as a crystalline mineral is known as rock salt .', 0, 2, 2, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:54:42', '2020-09-28 15:54:42');
INSERT INTO `products` VALUES (339, '', 'herbivore_Calm_deadsea_soaking_salt', 'Herbivore Calm Dead Sea Soaking Salt', 'Herbivore Calm Dead Sea Soaking Salt', 'Salt is a mineral composed primarily of sodium chloride (NaCl), a chemical compound belonging to the larger class of salts; salt in its natural form as a crystalline mineral is known as rock salt .', 0, 4, 4, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:55:14', '2020-09-28 15:55:14');
INSERT INTO `products` VALUES (340, '', 'nomu_atlantic_Sea_Salt_Grinder', 'Nomu Sea Salt', 'Nomu Sea Salt', 'Salt is a mineral composed primarily of sodium chloride (NaCl), a chemical compound belonging to the larger class of salts; salt in its natural form as a crystalline mineral is known as rock salt .', 0, 4, 4, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:55:33', '2020-09-28 15:55:33');
INSERT INTO `products` VALUES (341, '', 'tasteology_chili_salt', 'Tasteology Chili Salt', 'Tasteology Chili Salt', 'Salt is a mineral composed primarily of sodium chloride (NaCl), a chemical compound belonging to the larger class of salts; salt in its natural form as a crystalline mineral is known as rock salt .', 0, 4, 4, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:55:49', '2020-09-28 15:55:49');
INSERT INTO `products` VALUES (342, '', 'the_spice_house_white_Truffle_Salt', 'The Spice House White Truffle Salt', 'The Spice House White Truffle Salt', 'Salt is a mineral composed primarily of sodium chloride (NaCl), a chemical compound belonging to the larger class of salts; salt in its natural form as a crystalline mineral is known as rock salt .', 0, 5, 5, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:56:03', '2020-09-28 15:56:03');
INSERT INTO `products` VALUES (343, '', 'gula_aromatic_brown_sugar', 'Gula Aromatic Brown Sugar', 'Gula Aromatic Brown Sugar', 'Sugar is the generic name for sweet-tasting, soluble carbohydrates, many of which are used in food. Simple sugars, also called monosaccharides, include glucose, fructose, and galactose.', 0, 5, 5, 0, 0, ' 2 lb', 0, '2020-09-28 15:56:19', '2020-09-28 15:56:19');
INSERT INTO `products` VALUES (344, '', 'sis_white_sugar', 'Sis White Sugar', 'Sis White Sugar', 'Sugar is the generic name for sweet-tasting, soluble carbohydrates, many of which are used in food. Simple sugars, also called monosaccharides, include glucose, fructose, and galactose.', 0, 5, 5, 0, 0, ' 2 lb', 0, '2020-09-28 15:56:59', '2020-09-28 15:56:59');
INSERT INTO `products` VALUES (345, '', 'tate_sugar', 'Tate Lyle White Sugar', 'Tate Lyle White Sugar', 'Sugar is the generic name for sweet-tasting, soluble carbohydrates, many of which are used in food. Simple sugars, also called monosaccharides, include glucose, fructose, and galactose.', 0, 5, 4, 20, 0, ' 2 lb', 0, '2020-09-28 15:57:13', '2020-09-28 15:57:13');
INSERT INTO `products` VALUES (346, '', 'the_pantry_icing_Sugar', 'The Pantry Icing Sugar', 'The Pantry Icing Sugar', 'Sugar is the generic name for sweet-tasting, soluble carbohydrates, many of which are used in food. Simple sugars, also called monosaccharides, include glucose, fructose, and galactose.', 0, 8, 8, 0, 0, ' 2 lb', 0, '2020-09-28 15:58:11', '2020-09-28 15:58:11');
INSERT INTO `products` VALUES (347, '', 'whitworths_sugar', 'Whitworths White Sugar', 'Whitworths White Sugar', 'Sugar is the generic name for sweet-tasting, soluble carbohydrates, many of which are used in food. Simple sugars, also called monosaccharides, include glucose, fructose, and galactose.', 0, 4, 4, 0, 0, ' 2 lb', 0, '2020-09-28 15:58:32', '2020-09-28 15:58:32');
INSERT INTO `products` VALUES (348, '', 'Wholesome_Organic_Cane_Sugar_2LB', 'Wholesome Organic Cane Sugar', 'Wholesome Organic Cane Sugar', 'Sugar is the generic name for sweet-tasting, soluble carbohydrates, many of which are used in food. Simple sugars, also called monosaccharides, include glucose, fructose, and galactose.', 0, 6, 6, 0, 0, ' 2 lb', 0, '2020-09-28 15:58:58', '2020-09-28 15:58:58');
INSERT INTO `products` VALUES (349, '', 'club_house_la_grille_smouldering_smoked_applewood_seasoning', 'Club House La Grille Seasoning', 'Club House La Grille Seasoning', 'A spice is a seed, fruit, root, bark, or other plant substance primarily used for flavoring, coloring or preserving food. Spices are distinguished from herbs, which are the leaves, flowers, or stems of plants used for flavoring or as a garnish.', 0, 2, 2, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:59:14', '2020-09-28 15:59:14');
INSERT INTO `products` VALUES (350, '', 'crispy_chill_flakes', 'Crispy Chili Flakes', 'Crispy Chili Flakes', 'A spice is a seed, fruit, root, bark, or other plant substance primarily used for flavoring, coloring or preserving food. Spices are distinguished from herbs, which are the leaves, flowers, or stems of plants used for flavoring or as a garnish.', 0, 4, 4, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:59:30', '2020-09-28 15:59:30');
INSERT INTO `products` VALUES (351, '', 'Dell_Cove_Spices_Spicy_Chipotle_Seasoning', 'Dell Clove Spicy Chipotle Seasoning', 'Dell Clove Spicy Chipotle Seasoning', 'A spice is a seed, fruit, root, bark, or other plant substance primarily used for flavoring, coloring or preserving food. Spices are distinguished from herbs, which are the leaves, flowers, or stems of plants used for flavoring or as a garnish.', 0, 4, 4, 0, 0, ' 1 pc(s)', 0, '2020-09-28 15:59:52', '2020-09-28 15:59:52');
INSERT INTO `products` VALUES (352, '', 'Frontier_Curry_Powder', 'Frontier Curry Powder', 'Frontier Curry Powder', 'A spice is a seed, fruit, root, bark, or other plant substance primarily used for flavoring, coloring or preserving food. Spices are distinguished from herbs, which are the leaves, flowers, or stems of plants used for flavoring or as a garnish.', 0, 4, 4, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:00:19', '2020-09-28 16:00:19');
INSERT INTO `products` VALUES (353, '', 'mccormic_chilli_flakes', 'Mc Cormic Chilli Flakes', 'Mc Cormic Chilli Flakes', 'A spice is a seed, fruit, root, bark, or other plant substance primarily used for flavoring, coloring or preserving food. Spices are distinguished from herbs, which are the leaves, flowers, or stems of plants used for flavoring or as a garnish.', 0, 4, 4, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:00:31', '2020-09-28 16:00:31');
INSERT INTO `products` VALUES (354, '', 'redman_red_chilli_powder', 'Redman Red Chilli Powder', 'Redman Red Chilli Powder', 'A spice is a seed, fruit, root, bark, or other plant substance primarily used for flavoring, coloring or preserving food. Spices are distinguished from herbs, which are the leaves, flowers, or stems of plants used for flavoring or as a garnish.', 0, 3, 3, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:00:48', '2020-09-28 16:00:48');
INSERT INTO `products` VALUES (355, '', 'tajin_clasico_seasoning', 'Tajin Clasico Seasoning', 'Tajin Clasico Seasoning', 'A spice is a seed, fruit, root, bark, or other plant substance primarily used for flavoring, coloring or preserving food. Spices are distinguished from herbs, which are the leaves, flowers, or stems of plants used for flavoring or as a garnish.', 0, 3, 3, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:01:03', '2020-09-28 16:01:03');
INSERT INTO `products` VALUES (356, '', 'weber_all_natural', 'Weber Bold N Smoky Chipotle Seasoning', 'Weber Bold N Smoky Chipotle Seasoning', 'A spice is a seed, fruit, root, bark, or other plant substance primarily used for flavoring, coloring or preserving food. Spices are distinguished from herbs, which are the leaves, flowers, or stems of plants used for flavoring or as a garnish.', 0, 3, 3, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:01:17', '2020-09-28 16:01:17');
INSERT INTO `products` VALUES (357, '', 'best_taste_Bread_garry', 'Garry Best Taste Bread', 'Garry Best Taste Bread', 'Bread is a staple food prepared from a dough of flour and water, usually by baking. Throughout recorded history it has been a prominent food in large parts of the world and is one of the oldest man-made foods, having been of significant importance since the dawn of agriculture.', 0, 3, 3, 0, 0, ' 1 lb', 0, '2020-09-28 16:01:39', '2020-09-28 16:01:39');
INSERT INTO `products` VALUES (358, '', 'Everyday_Essentials_Wholemeal_Bread', 'Everyday Essentials Wholemeal Bread', 'Everyday Essentials Wholemeal Bread', 'Bread is a staple food prepared from a dough of flour and water, usually by baking. Throughout recorded history it has been a prominent food in large parts of the world and is one of the oldest man-made foods, having been of significant importance since the dawn of agriculture.', 0, 3, 3, 0, 0, '1 lb', 0, '2020-09-28 16:02:06', '2020-09-28 16:02:06');
INSERT INTO `products` VALUES (359, '', 'Farmhouse_Multigrain_Batch_loaf_purple_pack', 'Farmhouse Multigrain Batch Loaf', 'Farmhouse Multigrain Batch Loaf', 'Bread is a staple food prepared from a dough of flour and water, usually by baking. Throughout recorded history it has been a prominent food in large parts of the world and is one of the oldest man-made foods, having been of significant importance since the dawn of agriculture.', 0, 3, 3, 0, 0, ' 1 lb', 0, '2020-09-28 16:02:26', '2020-09-28 16:02:26');
INSERT INTO `products` VALUES (360, '', 'roberts_Seriously_Seeded_Bloomer', 'Roberts Seeded Bloomer', 'Roberts Seeded Bloomer', 'Bread is a staple food prepared from a dough of flour and water, usually by baking. Throughout recorded history it has been a prominent food in large parts of the world and is one of the oldest man-made foods, having been of significant importance since the dawn of agriculture.', 0, 4, 4, 0, 0, ' 1 lb', 0, '2020-09-28 16:02:55', '2020-09-28 16:02:55');
INSERT INTO `products` VALUES (361, '', 'the_village_bakery_danish_low_fat', 'The Village Bakery Low Fat Bread', 'The Village Bakery Low Fat Bread', 'Bread is a staple food prepared from a dough of flour and water, usually by baking. Throughout recorded history it has been a prominent food in large parts of the world and is one of the oldest man-made foods, having been of significant importance since the dawn of agriculture.', 0, 4, 4, 0, 0, ' 1 lb', 0, '2020-09-28 16:03:10', '2020-09-28 16:03:10');
INSERT INTO `products` VALUES (362, '', 'the_village_bakery_danish_Soft_White_Toastie', 'The Village Bakery Soft White Bread', 'The Village Bakery Soft White Bread', 'Bread is a staple food prepared from a dough of flour and water, usually by baking. Throughout recorded history it has been a prominent food in large parts of the world and is one of the oldest man-made foods, having been of significant importance since the dawn of agriculture.', 0, 4, 4, 0, 0, ' 1 lb', 0, '2020-09-28 16:03:46', '2020-09-28 16:03:46');
INSERT INTO `products` VALUES (363, '', 'the_village_bakery_Soft_Wholemeal_Bread', 'The Village Bakery Soft Wholemeal Bread', 'The Village Bakery Soft Wholemeal Bread', 'Bread is a staple food prepared from a dough of flour and water, usually by baking. Throughout recorded history it has been a prominent food in large parts of the world and is one of the oldest man-made foods, having been of significant importance since the dawn of agriculture.', 0, 4, 4, 0, 0, ' 1 lb', 0, '2020-09-28 16:04:22', '2020-09-28 16:04:22');
INSERT INTO `products` VALUES (364, '', 'Warburtons_Wholemeal_mild_soft', 'Warburtons Wholemeal Bread', 'Warburtons Wholemeal Bread', 'Bread is a staple food prepared from a dough of flour and water, usually by baking. Throughout recorded history it has been a prominent food in large parts of the world and is one of the oldest man-made foods, having been of significant importance since the dawn of agriculture.', 0, 4, 4, 0, 0, ' 1 lb', 0, '2020-09-28 16:04:55', '2020-09-28 16:04:55');
INSERT INTO `products` VALUES (365, '', 'fibre1_crunchy_original', 'Fibre 1 Crunchy Original', 'Fibre 1 Crunchy Original', 'A cereal is any grass cultivated for the edible components of its grain, composed of the endosperm, germ, and bran. The term may also refer to the resulting grain itself.', 0, 4, 4, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:05:28', '2020-09-28 16:05:28');
INSERT INTO `products` VALUES (366, '', 'general_mills_with_whole_grain_first_ingredient_trix_wildberry_red_swirls', 'Trix', 'Trix', 'A cereal is any grass cultivated for the edible components of its grain, composed of the endosperm, germ, and bran. The term may also refer to the resulting grain itself.', 0, 4, 4, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:05:52', '2020-09-28 16:05:52');
INSERT INTO `products` VALUES (367, '', 'general_mills_with_whole_grain_guaranted_fiber_one_honey_clusters', 'Fiber One', 'Fiber One', 'A cereal is any grass cultivated for the edible components of its grain, composed of the endosperm, germ, and bran. The term may also refer to the resulting grain itself.', 0, 4, 4, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:06:22', '2020-09-28 16:06:22');
INSERT INTO `products` VALUES (368, '', 'nestle_made_with_whole_grain_corn_flakes', 'Nestle Corn Flakes', 'Nestle Corn Flakes', 'A cereal is any grass cultivated for the edible components of its grain, composed of the endosperm, germ, and bran. The term may also refer to the resulting grain itself.', 0, 4, 4, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:06:41', '2020-09-28 16:06:41');
INSERT INTO `products` VALUES (369, '', 'post_honey_comb_cereal_12.5oz', 'Post Honey Comb', 'Post Honey Comb', 'A cereal is any grass cultivated for the edible components of its grain, composed of the endosperm, germ, and bran. The term may also refer to the resulting grain itself.', 0, 4, 4, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:07:05', '2020-09-28 16:07:05');
INSERT INTO `products` VALUES (370, '', 'beechworth_honey_bee_creamy_creamy_honey', 'Beechworty Creamy Honey', 'Beechworty Creamy Honey', 'Honey is a sweet, viscous food substance made by bees and some related insects. Bees produce honey from the sugary secretions of plants (floral nectar) or from secretions of other insects (such as honeydew), by regurgitation, enzymatic activity, and water evaporation', 0, 10, 10, 0, 0, ' 2 lb', 0, '2020-09-28 16:07:20', '2020-09-28 16:07:20');
INSERT INTO `products` VALUES (371, '', 'beekeeper\'s_naturals_wildflower_raw_honey', 'Beekeeper S Raw Honey', 'Beekeeper S Raw Honey', 'Honey is a sweet, viscous food substance made by bees and some related insects. Bees produce honey from the sugary secretions of plants (floral nectar) or from secretions of other insects (such as honeydew), by regurgitation, enzymatic activity, and water evaporation', 0, 12, 12, 0, 0, ' 2 lb', 0, '2020-09-28 16:07:39', '2020-09-28 16:07:39');
INSERT INTO `products` VALUES (372, '', 'Urban_Bee_Honey_fireweed', 'Urban Bee Honey', 'Urban Bee Honey', 'Honey is a sweet, viscous food substance made by bees and some related insects. Bees produce honey from the sugary secretions of plants (floral nectar) or from secretions of other insects (such as honeydew), by regurgitation, enzymatic activity, and water evaporation', 0, 8, 8, 0, 0, ' 2 lb', 0, '2020-09-28 16:08:31', '2020-09-28 16:08:31');
INSERT INTO `products` VALUES (373, '', 'chivers_mixed_fruit_jam', 'Chivers Mixed Fruit Jam', 'Chivers Mixed Fruit Jam', 'Jam typically contains both the juice and flesh of a fruit or vegetable, although one cookbook defines it as a cooked and jelled puree. The term jam refers to a product made of whole fruit cut into pieces or crushed, then heated with water and sugar to activate its pectin before being put into containers:', 0, 6, 5, 17, 0, ' 2 lb', 0, '2020-09-28 16:08:50', '2020-09-28 16:08:50');
INSERT INTO `products` VALUES (374, '', 'red_jacket_raspberry_jam', 'Red Jacket Raspberry Jam', 'Red Jacket Raspberry Jam', 'Jam typically contains both the juice and flesh of a fruit or vegetable, although one cookbook defines it as a cooked and jelled puree. The term jam refers to a product made of whole fruit cut into pieces or crushed, then heated with water and sugar to activate its pectin before being put into containers:', 0, 6, 5, 17, 0, ' 2 lb', 0, '2020-09-28 16:09:21', '2020-09-28 16:09:21');
INSERT INTO `products` VALUES (375, '', 'Gin_Jam', 'Gin Jam', 'Gin Jam', 'Jam typically contains both the juice and flesh of a fruit or vegetable, although one cookbook defines it as a cooked and jelled puree. The term jam refers to a product made of whole fruit cut into pieces or crushed, then heated with water and sugar to activate its pectin before being put into containers:', 0, 6, 6, 0, 0, ' 2 lb', 0, '2020-09-28 16:09:53', '2020-09-28 16:09:53');
INSERT INTO `products` VALUES (376, '', 'Ballymaloe_Mayonnaise_240g', 'Ballymaloe Mayonnaise', 'Ballymaloe Mayonnaise', 'Mayonnaise , informally mayo  is a thick cold condiment or dressing commonly used in sandwiches and composed salads or on chips (French fries)', 0, 6, 6, 0, 0, ' 2 lb', 0, '2020-09-28 16:10:39', '2020-09-28 16:10:39');
INSERT INTO `products` VALUES (377, '', 'Heinz_Mayonnaise', 'Heinz Mayonnaise', 'Heinz Mayonnaise', 'Mayonnaise , informally mayo  is a thick cold condiment or dressing commonly used in sandwiches and composed salads or on chips (French fries)', 0, 8, 8, 0, 0, ' 2 lb', 0, '2020-09-28 16:11:17', '2020-09-28 16:11:17');
INSERT INTO `products` VALUES (378, '', 'kraft_mayonnaise1', 'Kraft Mayonnaise', 'Kraft Mayonnaise', 'Mayonnaise , informally mayo  is a thick cold condiment or dressing commonly used in sandwiches and composed salads or on chips (French fries)', 0, 7, 7, 0, 0, ' 2 lb', 0, '2020-09-28 16:11:52', '2020-09-28 16:11:52');
INSERT INTO `products` VALUES (379, '', 'FITWELL_OAT_ENRICH', 'Fitwell Oat', 'Fitwell Oat', 'Oats are any grass cultivated for the edible components of its grain, composed of the endosperm, germ, and bran. The term may also refer to the resulting grain itself.', 0, 7, 7, 0, 0, ' 2 lb', 0, '2020-09-28 16:12:17', '2020-09-28 16:12:17');
INSERT INTO `products` VALUES (380, '', 'quaker_large_flake_oats', 'Quaker Large Flake Oat', 'Quaker Large Flake Oat', 'Oats are any grass cultivated for the edible components of its grain, composed of the endosperm, germ, and bran. The term may also refer to the resulting grain itself.', 0, 7, 7, 0, 0, ' 2 lb', 0, '2020-09-28 16:12:36', '2020-09-28 16:12:36');
INSERT INTO `products` VALUES (381, '', 'mornflake_jumbo_oats', 'Mornflake Jumbo Oat', 'Mornflake Jumbo Oat', 'Oats are any grass cultivated for the edible components of its grain, composed of the endosperm, germ, and bran. The term may also refer to the resulting grain itself.', 0, 8, 7, 13, 0, ' 2 lb', 0, '2020-09-28 16:13:04', '2020-09-28 16:13:04');
INSERT INTO `products` VALUES (382, '', 'javarama_classic', 'Javarama Cafe Coffee', 'Javarama Cafe Coffee', 'Coffee is a brewed drink prepared from roasted coffee beans, the seeds of berries from certain Coffea species. The genus Coffea is native to tropical Africa (specifically having its origin in Ethiopia and Sudan) and Madagascar, the Comoros, Mauritius, and Réunion in the Indian Ocean.', 0, 4, 4, 0, 0, ' 2 lb', 0, '2020-09-28 16:13:37', '2020-09-28 16:13:37');
INSERT INTO `products` VALUES (383, '', 'starbucks_house_blend', 'Starbucks House Blend', 'Starbucks House Blend', 'Coffee is a brewed drink prepared from roasted coffee beans, the seeds of berries from certain Coffea species. The genus Coffea is native to tropical Africa (specifically having its origin in Ethiopia and Sudan) and Madagascar, the Comoros, Mauritius, and Réunion in the Indian Ocean.', 0, 4, 4, 0, 0, ' 2 lb', 0, '2020-09-28 16:14:01', '2020-09-28 16:14:01');
INSERT INTO `products` VALUES (384, '', 'starbucks_vanilla_latte', 'Starbucks Vanilla Latte', 'Starbucks Vanilla Latte', 'Coffee is a brewed drink prepared from roasted coffee beans, the seeds of berries from certain Coffea species. The genus Coffea is native to tropical Africa (specifically having its origin in Ethiopia and Sudan) and Madagascar, the Comoros, Mauritius, and Réunion in the Indian Ocean.', 0, 4, 4, 0, 0, ' 2 lb', 0, '2020-09-28 16:14:26', '2020-09-28 16:14:26');
INSERT INTO `products` VALUES (385, '', 'teeccino_herbal_coffee_alternative_almond_amaretto', 'Teeccino Herbal Coffee Alternative', 'Teeccino Herbal Coffee Alternative', 'Coffee is a brewed drink prepared from roasted coffee beans, the seeds of berries from certain Coffea species. The genus Coffea is native to tropical Africa (specifically having its origin in Ethiopia and Sudan) and Madagascar, the Comoros, Mauritius, and Réunion in the Indian Ocean.', 0, 5, 5, 0, 0, ' 1 lb', 0, '2020-09-28 16:15:00', '2020-09-28 16:15:00');
INSERT INTO `products` VALUES (386, '', 'dragon', 'Dragon Energy', 'Dragon Energy', 'An energy drink is a type of drink containing sugar and stimulant compounds, usually caffeine, which is marketed as providing mental and physical stimulation (marketed as energy, but distinct from food energy).', 0, 2, 2, 0, 0, ' 200 ml', 0, '2020-09-28 16:15:28', '2020-09-28 16:15:28');
INSERT INTO `products` VALUES (387, '', 'Monster', 'Monster Energy', 'Monster Energy', 'An energy drink is a type of drink containing sugar and stimulant compounds, usually caffeine, which is marketed as providing mental and physical stimulation (marketed as energy, but distinct from food energy).', 0, 2, 2, 0, 0, ' 500 ml', 0, '2020-09-28 16:15:53', '2020-09-28 16:15:53');
INSERT INTO `products` VALUES (388, '', 'Quake', 'Quake Energy', 'Quake Energy', 'An energy drink is a type of drink containing sugar and stimulant compounds, usually caffeine, which is marketed as providing mental and physical stimulation (marketed as energy, but distinct from food energy).', 0, 2, 2, 0, 0, ' 250 ml', 0, '2020-09-28 16:16:29', '2020-09-28 16:16:29');
INSERT INTO `products` VALUES (389, '', 'red_bull', 'Red Bull Energy Drink', 'Red Bull Energy Drink', 'An energy drink is a type of drink containing sugar and stimulant compounds, usually caffeine, which is marketed as providing mental and physical stimulation (marketed as energy, but distinct from food energy).', 0, 2, 2, 0, 0, ' 200 ml', 0, '2020-09-28 16:16:49', '2020-09-28 16:16:49');
INSERT INTO `products` VALUES (390, '', 'iceland_tropical_juice_drink', 'Iceland Tropical Juice Drink', 'Iceland Tropical Juice Drink', 'Juice is a drink made from the extraction or pressing of the natural liquid contained in fruit and vegetables. It can also refer to liquids that are flavored with concentrate or other biological food sources, such as meat or seafood, such as clam juice. ', 0, 2, 2, 0, 0, ' 1 ltr', 0, '2020-09-28 16:17:05', '2020-09-28 16:17:05');
INSERT INTO `products` VALUES (391, '', 'minute_maid_orange', 'Minute Maid Orange', 'Minute Maid Orange', 'Juice is a drink made from the extraction or pressing of the natural liquid contained in fruit and vegetables. It can also refer to liquids that are flavored with concentrate or other biological food sources, such as meat or seafood, such as clam juice. ', 0, 3, 3, 0, 0, ' 500 ml', 0, '2020-09-28 16:17:52', '2020-09-28 16:17:52');
INSERT INTO `products` VALUES (392, '', 'nongmo_simply_apple', 'Nongmo Simple Apple', 'Nongmo Simple Apple', 'Juice is a drink made from the extraction or pressing of the natural liquid contained in fruit and vegetables. It can also refer to liquids that are flavored with concentrate or other biological food sources, such as meat or seafood, such as clam juice. ', 0, 3, 3, 0, 0, ' 1 ltr', 0, '2020-09-28 16:18:23', '2020-09-28 16:18:23');
INSERT INTO `products` VALUES (393, '', 'tropicana_apple', 'Tropicana Apple', 'Tropicana Apple', 'Juice is a drink made from the extraction or pressing of the natural liquid contained in fruit and vegetables. It can also refer to liquids that are flavored with concentrate or other biological food sources, such as meat or seafood, such as clam juice. ', 0, 2, 2, 0, 0, ' 1 ltr', 0, '2020-09-28 16:18:53', '2020-09-28 16:18:53');
INSERT INTO `products` VALUES (394, '', 'tropicana_orange_no_pulp', 'Tropicana Orange', 'Tropicana Orange', 'Juice is a drink made from the extraction or pressing of the natural liquid contained in fruit and vegetables. It can also refer to liquids that are flavored with concentrate or other biological food sources, such as meat or seafood, such as clam juice. ', 0, 3, 2, 33, 0, ' 1.5 ltr', 0, '2020-09-28 16:19:19', '2020-09-28 16:19:19');
INSERT INTO `products` VALUES (395, '', '7up_lemon_lime_355ml', '7 Up Can', '7 Up Can', 'A soft drink is a drink that usually contains carbonated water, a sweetener, and a natural or artificial flavoring. The sweetener may be a sugar, high-fructose corn syrup, fruit juice, a sugar substitute, or some combination of these.', 0, 1, 1, 0, 0, ' 250 ml', 0, '2020-09-28 16:19:49', '2020-09-28 16:19:49');
INSERT INTO `products` VALUES (396, '', 'Coca_Cola_200ml_Bottle', 'Coca Cola Botle', 'Coca Cola Botle', 'A soft drink is a drink that usually contains carbonated water, a sweetener, and a natural or artificial flavoring. The sweetener may be a sugar, high-fructose corn syrup, fruit juice, a sugar substitute, or some combination of these.', 0, 1, 1, 0, 0, ' 200 ml', 0, '2020-09-28 16:20:16', '2020-09-28 16:20:16');
INSERT INTO `products` VALUES (397, '', 'coca_cola_zero', 'Coca Cola Zero', 'Coca Cola Zero', 'A soft drink is a drink that usually contains carbonated water, a sweetener, and a natural or artificial flavoring. The sweetener may be a sugar, high-fructose corn syrup, fruit juice, a sugar substitute, or some combination of these.', 0, 1, 1, 0, 0, ' .300 ml', 0, '2020-09-28 16:20:31', '2020-09-28 16:20:31');
INSERT INTO `products` VALUES (398, '', 'coke_diet_355ml', 'Diet Coke', 'Diet Coke', 'A soft drink is a drink that usually contains carbonated water, a sweetener, and a natural or artificial flavoring. The sweetener may be a sugar, high-fructose corn syrup, fruit juice, a sugar substitute, or some combination of these.', 0, 1, 1, 0, 0, ' 330 ml', 0, '2020-09-28 16:21:06', '2020-09-28 16:21:06');
INSERT INTO `products` VALUES (399, '', 'dr_pepper_diet', 'Dr Pepper Diet', 'Dr Pepper Diet', 'A soft drink is a drink that usually contains carbonated water, a sweetener, and a natural or artificial flavoring. The sweetener may be a sugar, high-fructose corn syrup, fruit juice, a sugar substitute, or some combination of these.', 0, 1, 1, 0, 0, ' 330 ml', 0, '2020-09-28 16:21:24', '2020-09-28 16:21:24');
INSERT INTO `products` VALUES (400, '', 'Fanta_orange_can_250ml', 'Fanta', 'Fanta', 'A soft drink is a drink that usually contains carbonated water, a sweetener, and a natural or artificial flavoring. The sweetener may be a sugar, high-fructose corn syrup, fruit juice, a sugar substitute, or some combination of these.', 0, 1, 1, 0, 0, ' 500 ml', 0, '2020-09-28 16:21:35', '2020-09-28 16:21:35');
INSERT INTO `products` VALUES (401, '', 'mountain_dew_diet', 'Diet Mountain Dew', 'Diet Mountain Dew', 'A soft drink is a drink that usually contains carbonated water, a sweetener, and a natural or artificial flavoring. The sweetener may be a sugar, high-fructose corn syrup, fruit juice, a sugar substitute, or some combination of these.', 0, 2, 2, 0, 0, ' 330 ml', 0, '2020-09-28 16:22:08', '2020-09-28 16:22:08');
INSERT INTO `products` VALUES (402, '', 'aunt_jemima_original_syrup', 'Aunt Jemina Original Syrup', 'Aunt Jemina Original Syrup', 'A soft drink is a drink that usually contains carbonated water, a sweetener, and a natural or artificial flavoring. The sweetener may be a sugar, high-fructose corn syrup, fruit juice, a sugar substitute, or some combination of these.', 0, 5, 5, 0, 0, ' 500 ml', 0, '2020-09-28 16:22:29', '2020-09-28 16:22:29');
INSERT INTO `products` VALUES (403, '', 'canadian_maple_syrup', 'Canadian Maple Syrup', 'Canadian Maple Syrup', 'A soft drink is a drink that usually contains carbonated water, a sweetener, and a natural or artificial flavoring. The sweetener may be a sugar, high-fructose corn syrup, fruit juice, a sugar substitute, or some combination of these.', 0, 5, 4, 20, 0, ' 500 ml', 0, '2020-09-28 16:22:48', '2020-09-28 16:22:48');
INSERT INTO `products` VALUES (404, '', 'gatorade_thirst_quencher_powder_packs_orange', 'Gatorate Thirst Quencher Powder Drink', 'Gatorate Thirst Quencher Powder Drink', 'A soft drink is a drink that usually contains carbonated water, a sweetener, and a natural or artificial flavoring. The sweetener may be a sugar, high-fructose corn syrup, fruit juice, a sugar substitute, or some combination of these.', 0, 5, 5, 0, 0, ' 250 ml', 0, '2020-09-28 16:23:16', '2020-09-28 16:23:16');
INSERT INTO `products` VALUES (405, '', 'horlicks_classic_malt', 'Horlicks', 'Horlicks', 'A soft drink is a drink that usually contains carbonated water, a sweetener, and a natural or artificial flavoring. The sweetener may be a sugar, high-fructose corn syrup, fruit juice, a sugar substitute, or some combination of these.', 0, 5, 4, 20, 0, ' .5 lb', 0, '2020-09-28 16:23:41', '2020-09-28 16:23:41');
INSERT INTO `products` VALUES (406, '', 'servivita_chocolate_syrup', 'Servivita Chocolate Syrup', 'Servivita Chocolate Syrup', 'A soft drink is a drink that usually contains carbonated water, a sweetener, and a natural or artificial flavoring. The sweetener may be a sugar, high-fructose corn syrup, fruit juice, a sugar substitute, or some combination of these.', 0, 5, 5, 0, 0, '500 ml', 0, '2020-09-28 16:24:13', '2020-09-28 16:24:13');
INSERT INTO `products` VALUES (407, '', 'ava_juice_Detox_Matcha', 'Ava Juice Macha Tea', 'Ava Juice Macha Tea', 'Tea is an aromatic beverage commonly prepared by pouring hot or boiling water over cured leaves of the Camellia sinensis, an evergreen shrub native to East Asia. After water, it is the most widely consumed drink in the world.', 0, 5, 4, 20, 0, ' .5 lb', 0, '2020-09-28 16:25:00', '2020-09-28 16:25:00');
INSERT INTO `products` VALUES (408, '', 'boh_3in1_instant_tea_mix', 'Boh Instant Tea Mix', 'Boh Instant Tea Mix', 'Tea is an aromatic beverage commonly prepared by pouring hot or boiling water over cured leaves of the Camellia sinensis, an evergreen shrub native to East Asia. After water, it is the most widely consumed drink in the world.', 0, 5, 4, 20, 0, ' .5 lb', 0, '2020-09-28 16:25:30', '2020-09-28 16:25:30');
INSERT INTO `products` VALUES (409, '', 'crystal_light_lemon_iced_tea', 'Crystal Light Lemon Iced Tea', 'Crystal Light Lemon Iced Tea', 'Tea is an aromatic beverage commonly prepared by pouring hot or boiling water over cured leaves of the Camellia sinensis, an evergreen shrub native to East Asia. After water, it is the most widely consumed drink in the world.', 0, 5, 5, 0, 0, ' .5 lb', 0, '2020-09-28 16:25:55', '2020-09-28 16:25:55');
INSERT INTO `products` VALUES (410, '', 'imperial_tea_longjing_tea', 'Imperial Long Jing Tea', 'Imperial Long Jing Tea', 'Tea is an aromatic beverage commonly prepared by pouring hot or boiling water over cured leaves of the Camellia sinensis, an evergreen shrub native to East Asia. After water, it is the most widely consumed drink in the world.', 0, 5, 5, 0, 0, ' .5 lb', 0, '2020-09-28 16:26:28', '2020-09-28 16:26:28');
INSERT INTO `products` VALUES (411, '', 'luzianne_iced_tea', 'Luzianne Iced Tea', 'Luzianne Iced Tea', 'Tea is an aromatic beverage commonly prepared by pouring hot or boiling water over cured leaves of the Camellia sinensis, an evergreen shrub native to East Asia. After water, it is the most widely consumed drink in the world.', 0, 5, 5, 0, 0, ' .5 lb', 0, '2020-09-28 16:26:51', '2020-09-28 16:26:51');
INSERT INTO `products` VALUES (412, '', 'Elkali_natural_alkaline_spring_water', 'Elkali Natural Alkalike Srping Water', 'Elkali Natural Alkalike Srping Water', 'Water is a transparent, tasteless, odorless, and nearly colorless chemical substance, which is the main constituent of Earth\'s streams, lakes, and oceans, and the fluids of most living organisms. It is vital for all known forms of life, even though it provides no calories or organic nutrients.', 0, 2, 2, 0, 0, ' 5 ltr', 0, '2020-09-28 16:27:15', '2020-09-28 16:27:15');
INSERT INTO `products` VALUES (413, '', 'glaceau_smart_water', 'Glaceau Smart Water', 'Glaceau Smart Water', 'Water is a transparent, tasteless, odorless, and nearly colorless chemical substance, which is the main constituent of Earth\'s streams, lakes, and oceans, and the fluids of most living organisms. It is vital for all known forms of life, even though it provides no calories or organic nutrients.', 0, 3, 3, 0, 0, ' 2 ltr', 0, '2020-09-28 16:27:33', '2020-09-28 16:27:33');
INSERT INTO `products` VALUES (414, '', 'glastonbury_still_spring_water', 'Glastonbury Still Spring Water', 'Glastonbury Still Spring Water', 'Water is a transparent, tasteless, odorless, and nearly colorless chemical substance, which is the main constituent of Earth\'s streams, lakes, and oceans, and the fluids of most living organisms. It is vital for all known forms of life, even though it provides no calories or organic nutrients.', 0, 3, 3, 0, 0, ' 2 ltr', 0, '2020-09-28 16:27:47', '2020-09-28 16:27:47');
INSERT INTO `products` VALUES (415, '', 'poland_spring_natural_spring_water', 'Poland Spring Water', 'Poland Spring Water', 'Water is a transparent, tasteless, odorless, and nearly colorless chemical substance, which is the main constituent of Earth\'s streams, lakes, and oceans, and the fluids of most living organisms. It is vital for all known forms of life, even though it provides no calories or organic nutrients.', 0, 2, 2, 0, 0, ' 2 ltr', 0, '2020-09-28 16:28:21', '2020-09-28 16:28:21');
INSERT INTO `products` VALUES (416, '', 'westfield_pure_spring_water_300ml', 'Westfield Pure Spring Water', 'Westfield Pure Spring Water', 'Water is a transparent, tasteless, odorless, and nearly colorless chemical substance, which is the main constituent of Earth\'s streams, lakes, and oceans, and the fluids of most living organisms. It is vital for all known forms of life, even though it provides no calories or organic nutrients.', 0, 2, 2, 0, 0, ' 2 ltr', 0, '2020-09-28 16:28:38', '2020-09-28 16:28:38');
INSERT INTO `products` VALUES (417, '', 'attitude_night_bubble_bath', 'Attitude Bubble Bath', 'Attitude Bubble Bath', 'Bath gel is a specialized liquid product used for cleaning the body during baths. Not to be confused with liquid soaps, bath gels, in fact, do not contain saponified oil. Instead, it uses synthetic detergents derived from either petroleum or plant sources.', 0, 20, 20, 0, 0, ' 200 ml', 0, '2020-09-28 16:28:55', '2020-09-28 16:28:55');
INSERT INTO `products` VALUES (418, '', 'aveeno_baby_shampoo', 'Aveeno Baby Shampoo', 'Aveeno Baby Shampoo', 'Bath gel is a specialized liquid product used for cleaning the body during baths. Not to be confused with liquid soaps, bath gels, in fact, do not contain saponified oil. Instead, it uses synthetic detergents derived from either petroleum or plant sources.', 0, 20, 10, 50, 0, ' 200 ml', 0, '2020-09-28 16:29:11', '2020-09-28 16:29:11');
INSERT INTO `products` VALUES (419, '', 'moisturizing_hair_bath_g', 'Way Moisturizing Hair Bath', 'Way Moisturizing Hair Bath', 'Bath gel is a specialized liquid product used for cleaning the body during baths. Not to be confused with liquid soaps, bath gels, in fact, do not contain saponified oil. Instead, it uses synthetic detergents derived from either petroleum or plant sources.', 0, 20, 16, 20, 0, ' 200 ml', 0, '2020-09-28 16:29:30', '2020-09-28 16:29:30');
INSERT INTO `products` VALUES (420, '', 'neutrogena_Body_Oil', 'Neutrogena Body Oil', 'Neutrogena Body Oil', 'Bath gel is a specialized liquid product used for cleaning the body during baths. Not to be confused with liquid soaps, bath gels, in fact, do not contain saponified oil. Instead, it uses synthetic detergents derived from either petroleum or plant sources.', 0, 20, 20, 0, 0, '200 ml', 0, '2020-09-28 16:29:46', '2020-09-28 16:29:46');
INSERT INTO `products` VALUES (421, '', 'eo_body_lotion', 'Eo Body Lotion', 'Eo Body Lotion', 'Bath gel is a specialized liquid product used for cleaning the body during baths. Not to be confused with liquid soaps, bath gels, in fact, do not contain saponified oil. Instead, it uses synthetic detergents derived from either petroleum or plant sources.', 0, 20, 16, 20, 0, ' 200 ml', 0, '2020-09-28 16:30:07', '2020-09-28 16:30:07');
INSERT INTO `products` VALUES (422, '', 'gnc_aloe_vera_moisturizing_cream', 'Gnc Aloe Vera Cream', 'Gnc Aloe Vera Cream', 'Bath gel is a specialized liquid product used for cleaning the body during baths. Not to be confused with liquid soaps, bath gels, in fact, do not contain saponified oil. Instead, it uses synthetic detergents derived from either petroleum or plant sources.', 0, 20, 20, 0, 0, ' 2 lb', 0, '2020-09-28 16:30:27', '2020-09-28 16:30:27');
INSERT INTO `products` VALUES (423, '', 'loreal_paris_age_perfect', 'Loreal Age Perfect Cream', 'Loreal Age Perfect Cream', 'Bath gel is a specialized liquid product used for cleaning the body during baths. Not to be confused with liquid soaps, bath gels, in fact, do not contain saponified oil. Instead, it uses synthetic detergents derived from either petroleum or plant sources.', 0, 20, 15, 25, 0, ' 2 lb', 0, '2020-09-28 16:30:41', '2020-09-28 16:30:41');
INSERT INTO `products` VALUES (424, '', 'waso_shiseido_mega_hydrating_cream', 'Wasp Shiseido Cream', 'Wasp Shiseido Cream', 'Bath gel is a specialized liquid product used for cleaning the body during baths. Not to be confused with liquid soaps, bath gels, in fact, do not contain saponified oil. Instead, it uses synthetic detergents derived from either petroleum or plant sources.', 0, 20, 20, 0, 0, ' 2 lb', 0, '2020-09-28 16:31:06', '2020-09-28 16:31:06');
INSERT INTO `products` VALUES (425, '', 'gnc_women\'s_progesterone_cream', 'Gnc Women S Progesterone Cream', 'Gnc Women S Progesterone Cream', 'Bath gel is a specialized liquid product used for cleaning the body during baths. Not to be confused with liquid soaps, bath gels, in fact, do not contain saponified oil. Instead, it uses synthetic detergents derived from either petroleum or plant sources.', 0, 20, 20, 0, 0, ' 2 lb', 0, '2020-09-28 16:31:26', '2020-09-28 16:31:26');
INSERT INTO `products` VALUES (426, '', 'bionsen_DEO_ROLL_ON', 'Bionsen Deo Roll On', 'Bionsen Deo Roll On', 'A deodorant is a substance applied to the body to prevent or mask (hide) body odor due to bacterial breakdown of perspiration in the armpits, groin, and feet, and in some cases vaginal secretions. A subclass of deodorants, called antiperspirants,', 0, 2, 2, 0, 0, ' 2 lb', 0, '2020-09-28 16:31:53', '2020-09-28 16:31:53');
INSERT INTO `products` VALUES (427, '', 'vichy_deodorant', 'Vichy Deodorant', 'Vichy Deodorant', 'A deodorant is a substance applied to the body to prevent or mask (hide) body odor due to bacterial breakdown of perspiration in the armpits, groin, and feet, and in some cases vaginal secretions. A subclass of deodorants, called antiperspirants,', 0, 2, 2, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:32:10', '2020-09-28 16:32:10');
INSERT INTO `products` VALUES (428, '', 'type_A_ashley_graham_deodorant', 'Type A Deodorant', 'Type A Deodorant', 'A deodorant is a substance applied to the body to prevent or mask (hide) body odor due to bacterial breakdown of perspiration in the armpits, groin, and feet, and in some cases vaginal secretions. A subclass of deodorants, called antiperspirants,', 0, 2, 2, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:32:34', '2020-09-28 16:32:34');
INSERT INTO `products` VALUES (429, '', 'the_post_deodorant', 'The Post Deodorant', 'The Post Deodorant', 'A deodorant is a substance applied to the body to prevent or mask (hide) body odor due to bacterial breakdown of perspiration in the armpits, groin, and feet, and in some cases vaginal secretions. A subclass of deodorants, called antiperspirants,', 0, 2, 2, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:32:57', '2020-09-28 16:32:57');
INSERT INTO `products` VALUES (430, '', 'taoasis_baldini_bio_deo_sauge_et_orange', 'Baldini Deo', 'Baldini Deo', 'A deodorant is a substance applied to the body to prevent or mask (hide) body odor due to bacterial breakdown of perspiration in the armpits, groin, and feet, and in some cases vaginal secretions. A subclass of deodorants, called antiperspirants,', 0, 2, 2, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:33:11', '2020-09-28 16:33:11');
INSERT INTO `products` VALUES (431, '', 'spadet_Deodorant', 'Spadet Deodorant', 'Spadet Deodorant', 'A deodorant is a substance applied to the body to prevent or mask (hide) body odor due to bacterial breakdown of perspiration in the armpits, groin, and feet, and in some cases vaginal secretions. A subclass of deodorants, called antiperspirants,', 0, 2, 2, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:33:37', '2020-09-28 16:33:37');
INSERT INTO `products` VALUES (432, '', 'face_republic_Sun_gel', 'Face Replublic Sun Gel', 'Face Replublic Sun Gel', 'The term cleanser refers to a product that cleans or removes dirt or other substances. A cleanser could be a detergent, and there are many types of cleansers that are produced with a specific objective or focus.', 0, 2, 2, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:33:57', '2020-09-28 16:33:57');
INSERT INTO `products` VALUES (433, '', 'frei_ol_urea2in1', 'Frei Ol', 'Frei Ol', 'The term cleanser refers to a product that cleans or removes dirt or other substances. A cleanser could be a detergent, and there are many types of cleansers that are produced with a specific objective or focus.', 0, 2, 2, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:34:39', '2020-09-28 16:34:39');
INSERT INTO `products` VALUES (434, '', 'garnier_pure_active', 'Garnier Pure Active', 'Garnier Pure Active', 'The term cleanser refers to a product that cleans or removes dirt or other substances. A cleanser could be a detergent, and there are many types of cleansers that are produced with a specific objective or focus.', 0, 2, 2, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:34:57', '2020-09-28 16:34:57');
INSERT INTO `products` VALUES (435, '', 'nuage_men_facial_wash', 'Nuace Men Facial Wash', 'Nuace Men Facial Wash', 'The term cleanser refers to a product that cleans or removes dirt or other substances. A cleanser could be a detergent, and there are many types of cleansers that are produced with a specific objective or focus.', 0, 3, 3, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:35:38', '2020-09-28 16:35:38');
INSERT INTO `products` VALUES (436, '', 'absolute_plus_Meat_Dental_Set_', 'Absolute Plus Meat Dental Set', 'Absolute Plus Meat Dental Set', 'Oral hygiene is the practice of keeping one\'s mouth clean and free of disease and other problems (e.g. bad breath) by regular brushing of the teeth (dental hygiene) and cleaning between the teeth. It is important that oral hygiene be carried out on a regular basis to enable prevention of dental disease and bad breath. ', 0, 10, 10, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:36:03', '2020-09-28 16:36:03');
INSERT INTO `products` VALUES (437, '', 'dentek_professional_oral_care_kit1', 'Dentek Oral Care Kit', 'Dentek Oral Care Kit', 'Oral hygiene is the practice of keeping one\'s mouth clean and free of disease and other problems (e.g. bad breath) by regular brushing of the teeth (dental hygiene) and cleaning between the teeth. It is important that oral hygiene be carried out on a regular basis to enable prevention of dental disease and bad breath. ', 0, 10, 10, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:36:25', '2020-09-28 16:36:25');
INSERT INTO `products` VALUES (438, '', 'gum_oral_care_cleaning_kit', 'Gum Oral Care Cleaning Kit', 'Gum Oral Care Cleaning Kit', 'Oral hygiene is the practice of keeping one\'s mouth clean and free of disease and other problems (e.g. bad breath) by regular brushing of the teeth (dental hygiene) and cleaning between the teeth. It is important that oral hygiene be carried out on a regular basis to enable prevention of dental disease and bad breath. ', 0, 15, 15, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:36:42', '2020-09-28 16:36:42');
INSERT INTO `products` VALUES (439, '', 'Duke_Cannon_SHAVE_CREAM', 'Duke Cannon Shaving Cream', 'Duke Cannon Shaving Cream', 'Shaving is the removal of hair, by using a razor or any other kind of bladed implement, to slice it down—to the level of the skin or otherwise. Shaving is most commonly practiced by men to remove their facial hair and by women to remove their leg and underarm hair. ', 0, 5, 5, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:37:00', '2020-09-28 16:37:00');
INSERT INTO `products` VALUES (440, '', 'nair_hair_remover', 'Nair Hair Removal Cream', 'Nair Hair Removal Cream', 'Shaving is the removal of hair, by using a razor or any other kind of bladed implement, to slice it down—to the level of the skin or otherwise. Shaving is most commonly practiced by men to remove their facial hair and by women to remove their leg and underarm hair. ', 0, 8, 8, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:37:13', '2020-09-28 16:37:13');
INSERT INTO `products` VALUES (441, '', 'Longmarket_Barber_Aftershave_Balm', 'Longmarket Barber Aftershave Balm', 'Longmarket Barber Aftershave Balm', 'Shaving is the removal of hair, by using a razor or any other kind of bladed implement, to slice it down—to the level of the skin or otherwise. Shaving is most commonly practiced by men to remove their facial hair and by women to remove their leg and underarm hair. ', 0, 6, 6, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:37:28', '2020-09-28 16:37:28');
INSERT INTO `products` VALUES (442, '', 'espa_men_dual_action_shave_mud', 'Espa Men Dual Action', 'Espa Men Dual Action', 'Shaving is the removal of hair, by using a razor or any other kind of bladed implement, to slice it down—to the level of the skin or otherwise. Shaving is most commonly practiced by men to remove their facial hair and by women to remove their leg and underarm hair. ', 0, 6, 6, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:37:45', '2020-09-28 16:37:45');
INSERT INTO `products` VALUES (443, '', 'human_nature_shaving_cream', 'Human Nature Shaving Cream', 'Human Nature Shaving Cream', 'Shaving is the removal of hair, by using a razor or any other kind of bladed implement, to slice it down—to the level of the skin or otherwise. Shaving is most commonly practiced by men to remove their facial hair and by women to remove their leg and underarm hair. ', 0, 6, 6, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:38:06', '2020-09-28 16:38:06');
INSERT INTO `products` VALUES (444, '', 'harry\'pacific_shaving_co._natural_shaving_cream', 'Pacific Natural Shaving Cream', 'Pacific Natural Shaving Cream', 'Shaving is the removal of hair, by using a razor or any other kind of bladed implement, to slice it down—to the level of the skin or otherwise. Shaving is most commonly practiced by men to remove their facial hair and by women to remove their leg and underarm hair. ', 0, 6, 6, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:38:49', '2020-09-28 16:38:49');
INSERT INTO `products` VALUES (445, '', 'Duke_Cannon_SHAVE_CREAM', 'Duke Cannon Shaving Cream', 'Duke Cannon Shaving Cream', 'Shaving is the removal of hair, by using a razor or any other kind of bladed implement, to slice it down—to the level of the skin or otherwise. Shaving is most commonly practiced by men to remove their facial hair and by women to remove their leg and underarm hair. ', 0, 5, 5, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:39:16', '2020-09-28 16:39:16');
INSERT INTO `products` VALUES (446, '', 'nair_hair_remover', 'Nair Hair Removal Cream', 'Nair Hair Removal Cream', 'Shaving is the removal of hair, by using a razor or any other kind of bladed implement, to slice it down—to the level of the skin or otherwise. Shaving is most commonly practiced by men to remove their facial hair and by women to remove their leg and underarm hair. ', 0, 8, 8, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:39:31', '2020-09-28 16:39:31');
INSERT INTO `products` VALUES (447, '', 'Longmarket_Barber_Aftershave_Balm', 'Longmarket Barber Aftershave Balm', 'Longmarket Barber Aftershave Balm', 'Shaving is the removal of hair, by using a razor or any other kind of bladed implement, to slice it down—to the level of the skin or otherwise. Shaving is most commonly practiced by men to remove their facial hair and by women to remove their leg and underarm hair. ', 0, 6, 6, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:39:51', '2020-09-28 16:39:51');
INSERT INTO `products` VALUES (448, '', 'espa_men_dual_action_shave_mud', 'Espa Men Dual Action', 'Espa Men Dual Action', 'Shaving is the removal of hair, by using a razor or any other kind of bladed implement, to slice it down—to the level of the skin or otherwise. Shaving is most commonly practiced by men to remove their facial hair and by women to remove their leg and underarm hair. ', 0, 6, 6, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:40:12', '2020-09-28 16:40:12');
INSERT INTO `products` VALUES (449, '', 'human_nature_shaving_cream', 'Human Nature Shaving Cream', 'Human Nature Shaving Cream', 'Shaving is the removal of hair, by using a razor or any other kind of bladed implement, to slice it down—to the level of the skin or otherwise. Shaving is most commonly practiced by men to remove their facial hair and by women to remove their leg and underarm hair. ', 0, 6, 6, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:40:26', '2020-09-28 16:40:26');
INSERT INTO `products` VALUES (450, '', 'harry\'pacific_shaving_co._natural_shaving_cream', 'Pacific Natural Shaving Cream', 'Pacific Natural Shaving Cream', 'Shaving is the removal of hair, by using a razor or any other kind of bladed implement, to slice it down—to the level of the skin or otherwise. Shaving is most commonly practiced by men to remove their facial hair and by women to remove their leg and underarm hair. ', 0, 6, 6, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:40:55', '2020-09-28 16:40:55');
INSERT INTO `products` VALUES (451, '', 'absolute_plus_Meat_Dental_Set_', 'Absolute Plus Meat Dental Set', 'Absolute Plus Meat Dental Set', 'Oral hygiene is the practice of keeping one\'s mouth clean and free of disease and other problems (e.g. bad breath) by regular brushing of the teeth (dental hygiene) and cleaning between the teeth. It is important that oral hygiene be carried out on a regular basis to enable prevention of dental disease and bad breath. ', 0, 10, 10, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:41:23', '2020-09-28 16:41:23');
INSERT INTO `products` VALUES (452, '', 'dentek_professional_Oral_care_kit1', 'Dentek Oral Care Kit', 'Dentek Oral Care Kit', 'Oral hygiene is the practice of keeping one\'s mouth clean and free of disease and other problems (e.g. bad breath) by regular brushing of the teeth (dental hygiene) and cleaning between the teeth. It is important that oral hygiene be carried out on a regular basis to enable prevention of dental disease and bad breath. ', 0, 10, 10, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:41:32', '2020-09-28 16:41:32');
INSERT INTO `products` VALUES (453, '', 'gum_Oral_care_cleaning_kit', 'Gum Oral Care Cleaning Kit', 'Gum Oral Care Cleaning Kit', 'Oral hygiene is the practice of keeping one\'s mouth clean and free of disease and other problems (e.g. bad breath) by regular brushing of the teeth (dental hygiene) and cleaning between the teeth. It is important that oral hygiene be carried out on a regular basis to enable prevention of dental disease and bad breath. ', 0, 15, 15, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:41:41', '2020-09-28 16:41:41');
INSERT INTO `products` VALUES (454, '', 'face_republic_Sun_gel', 'Face Republic Sun Gel', 'Face Republic Sun Gel', 'The term cleanser refers to a product that cleans or removes dirt or other substances. A cleanser could be a detergent, and there are many types of cleansers that are produced with a specific objective or focus.', 0, 2, 2, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:41:55', '2020-09-28 16:41:55');
INSERT INTO `products` VALUES (455, '', 'frei_ol_urea2in1', 'Frei Ol', 'Frei Ol', 'The term cleanser refers to a product that cleans or removes dirt or other substances. A cleanser could be a detergent, and there are many types of cleansers that are produced with a specific objective or focus.', 0, 2, 2, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:42:19', '2020-09-28 16:42:19');
INSERT INTO `products` VALUES (456, '', 'garnier_pure_active', 'Garnier Pure Active', 'Garnier Pure Active', 'The term cleanser refers to a product that cleans or removes dirt or other substances. A cleanser could be a detergent, and there are many types of cleansers that are produced with a specific objective or focus.', 0, 2, 2, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:42:40', '2020-09-28 16:42:40');
INSERT INTO `products` VALUES (457, '', 'nuage_men_facial_wash', 'Nuace Men Facial Wash', 'Nuace Men Facial Wash', 'The term cleanser refers to a product that cleans or removes dirt or other substances. A cleanser could be a detergent, and there are many types of cleansers that are produced with a specific objective or focus.', 0, 3, 3, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:43:23', '2020-09-28 16:43:23');
INSERT INTO `products` VALUES (458, '', 'bionsen_DEO_ROLL_ON', 'Bionsen Deo Roll On', 'Bionsen Deo Roll On', 'A deodorant is a substance applied to the body to prevent or mask (hide) body odor due to bacterial breakdown of perspiration in the armpits, groin, and feet, and in some cases vaginal secretions. A subclass of deodorants, called antiperspirants,', 0, 2, 2, 0, 0, ' 2 lb', 0, '2020-09-28 16:43:44', '2020-09-28 16:43:44');
INSERT INTO `products` VALUES (459, '', 'vichy_deodorant', 'Vichy Deodorant', 'Vichy Deodorant', 'A deodorant is a substance applied to the body to prevent or mask (hide) body odor due to bacterial breakdown of perspiration in the armpits, groin, and feet, and in some cases vaginal secretions. A subclass of deodorants, called antiperspirants,', 0, 2, 2, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:44:02', '2020-09-28 16:44:02');
INSERT INTO `products` VALUES (460, '', 'type_A_ashley_graham_deodorant', 'Type A Deodorant', 'Type A Deodorant', 'A deodorant is a substance applied to the body to prevent or mask (hide) body odor due to bacterial breakdown of perspiration in the armpits, groin, and feet, and in some cases vaginal secretions. A subclass of deodorants, called antiperspirants,', 0, 2, 2, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:44:27', '2020-09-28 16:44:27');
INSERT INTO `products` VALUES (461, '', 'the_post_deodorant', 'The Post Deodorant', 'The Post Deodorant', 'A deodorant is a substance applied to the body to prevent or mask (hide) body odor due to bacterial breakdown of perspiration in the armpits, groin, and feet, and in some cases vaginal secretions. A subclass of deodorants, called antiperspirants,', 0, 2, 2, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:44:59', '2020-09-28 16:44:59');
INSERT INTO `products` VALUES (462, '', 'taoasis_baldini_bio_deo_sauge_et_orange', 'Baldini Deo', 'Baldini Deo', 'A deodorant is a substance applied to the body to prevent or mask (hide) body odor due to bacterial breakdown of perspiration in the armpits, groin, and feet, and in some cases vaginal secretions. A subclass of deodorants, called antiperspirants,', 0, 2, 2, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:45:11', '2020-09-28 16:45:11');
INSERT INTO `products` VALUES (463, '', 'spadet_Deodorant', 'Spadet Deodorant', 'Spadet Deodorant', 'A deodorant is a substance applied to the body to prevent or mask (hide) body odor due to bacterial breakdown of perspiration in the armpits, groin, and feet, and in some cases vaginal secretions. A subclass of deodorants, called antiperspirants,', 0, 2, 2, 0, 0, ' 1 pc(s)', 0, '2020-09-28 16:45:49', '2020-09-28 16:45:49');
INSERT INTO `products` VALUES (464, '', 'attitude_night_bubble_bath', 'Attitude Bubble Bath', 'Attitude Bubble Bath', 'Bath gel is a specialized liquid product used for cleaning the body during baths. Not to be confused with liquid soaps, bath gels, in fact, do not contain saponified oil. Instead, it uses synthetic detergents derived from either petroleum or plant sources.', 0, 20, 20, 0, 0, ' 2 lb', 0, '2020-09-28 16:46:27', '2020-09-28 16:46:27');
INSERT INTO `products` VALUES (465, '', 'aveeno_baby_shampoo', 'Aveeno Baby Shampoo', 'Aveeno Baby Shampoo', 'Bath gel is a specialized liquid product used for cleaning the body during baths. Not to be confused with liquid soaps, bath gels, in fact, do not contain saponified oil. Instead, it uses synthetic detergents derived from either petroleum or plant sources.', 0, 20, 10, 50, 0, ' 2 lb', 0, '2020-09-28 16:47:15', '2020-09-28 16:47:15');
INSERT INTO `products` VALUES (466, '', 'neutrogena_Body_Oil', 'Neutrogena Body Oil', 'Neutrogena Body Oil', 'Bath gel is a specialized liquid product used for cleaning the body during baths. Not to be confused with liquid soaps, bath gels, in fact, do not contain saponified oil. Instead, it uses synthetic detergents derived from either petroleum or plant sources.', 0, 20, 20, 0, 0, ' 2 lb', 0, '2020-09-28 16:47:34', '2020-09-28 16:47:34');
INSERT INTO `products` VALUES (467, '', 'eo_body_lotion', 'Eo Body Lotion', 'Eo Body Lotion', 'Bath gel is a specialized liquid product used for cleaning the body during baths. Not to be confused with liquid soaps, bath gels, in fact, do not contain saponified oil. Instead, it uses synthetic detergents derived from either petroleum or plant sources.', 0, 20, 16, 20, 0, ' 2 lb', 0, '2020-09-28 16:47:57', '2020-09-28 16:47:57');
INSERT INTO `products` VALUES (468, '', 'EXPERT_WEAR_EYE_SHADOW', 'Expert Wear Eye Shadow', 'Expert Wear Eye Shadow', 'Pigment packed formula for bold colour looks! Max Factor Wild Shadow Eye Shadow Pots bring a highly pigmented shadow to sweep across your lids, providing a fierce shot of intense colour. The formula is micro-fine and can be used wet for a more intense look, is easily blendable and buildable colour for endless versatility.', 0, 15, 15, 0, 0, '1 pc(s)', 0, '2020-09-28 16:48:27', '2020-09-28 16:48:27');
INSERT INTO `products` VALUES (469, '', 'Matte_Bar_Eyeshadow', 'Matte Bar Eyeshadow', 'Matte Bar Eyeshadow', 'Pigment packed formula for bold colour looks! Max Factor Wild Shadow Eye Shadow Pots bring a highly pigmented shadow to sweep across your lids, providing a fierce shot of intense colour. The formula is micro-fine and can be used wet for a more intense look, is easily blendable and buildable colour for endless versatility.', 0, 25, 25, 0, 0, '1 pc(s)', 0, '2020-09-28 16:48:52', '2020-09-28 16:48:52');
INSERT INTO `products` VALUES (470, '', 'SODA_POP_EYESHADOW', 'Soda Pop Eyeshadow', 'Soda Pop Eyeshadow', 'Pigment packed formula for bold colour looks! Max Factor Wild Shadow Eye Shadow Pots bring a highly pigmented shadow to sweep across your lids, providing a fierce shot of intense colour. The formula is micro-fine and can be used wet for a more intense look, is easily blendable and buildable colour for endless versatility.', 0, 22, 22, 0, 0, '1 pc(s)', 0, '2020-09-28 16:49:12', '2020-09-28 16:49:12');
INSERT INTO `products` VALUES (471, '', 'THE CITY_MINI_PALETTE', 'The City Mini Palette', 'The City Mini Palette', 'Pigment packed formula for bold colour looks! Max Factor Wild Shadow Eye Shadow Pots bring a highly pigmented shadow to sweep across your lids, providing a fierce shot of intense colour. The formula is micro-fine and can be used wet for a more intense look, is easily blendable and buildable colour for endless versatility.', 0, 18, 18, 0, 0, '1 pc(s)', 0, '2020-09-28 16:49:50', '2020-09-28 16:49:50');
INSERT INTO `products` VALUES (472, '', 'THE_BURGUNDY_BAR_EYESHADOW', 'The Burgundy Bar Eyeshadow', 'The Burgundy Bar Eyeshadow', 'Pigment packed formula for bold colour looks! Max Factor Wild Shadow Eye Shadow Pots bring a highly pigmented shadow to sweep across your lids, providing a fierce shot of intense colour. The formula is micro-fine and can be used wet for a more intense look, is easily blendable and buildable colour for endless versatility.', 0, 18, 18, 0, 0, '1 pc(s)', 0, '2020-09-28 16:50:11', '2020-09-28 16:50:11');
INSERT INTO `products` VALUES (473, '', 'THE_ROCK_NUDES_EYE_SHADOW', 'The Rock Nudes Eye Shadow', 'The Rock Nudes Eye Shadow', 'Pigment packed formula for bold colour looks! Max Factor Wild Shadow Eye Shadow Pots bring a highly pigmented shadow to sweep across your lids, providing a fierce shot of intense colour. The formula is micro-fine and can be used wet for a more intense look, is easily blendable and buildable colour for endless versatility.', 0, 20, 18, 10, 0, '1 pc(s)', 0, '2020-09-28 16:50:32', '2020-09-28 16:50:32');
INSERT INTO `products` VALUES (474, '', 'too-faced-chocolate-bon-bons-eyeshadow-palette-too-faced-chocolate-bon-bons-eyeshadow-palette', 'Too Faced Chocolate Bon Bons Eyeshadow', 'Too Faced Chocolate Bon Bons Eyeshadow', 'Pigment packed formula for bold colour looks! Max Factor Wild Shadow Eye Shadow Pots bring a highly pigmented shadow to sweep across your lids, providing a fierce shot of intense colour. The formula is micro-fine and can be used wet for a more intense look, is easily blendable and buildable colour for endless versatility.', 0, 20, 16, 20, 0, '1 pc(s)', 0, '2020-09-28 16:50:47', '2020-09-28 16:50:47');
INSERT INTO `products` VALUES (475, '', 'TOTAL_TEMPTATION_EYESHADOW', 'Total Temptation Eyeshadow', 'Total Temptation Eyeshadow', 'Pigment packed formula for bold colour looks! Max Factor Wild Shadow Eye Shadow Pots bring a highly pigmented shadow to sweep across your lids, providing a fierce shot of intense colour. The formula is micro-fine and can be used wet for a more intense look, is easily blendable and buildable colour for endless versatility.', 0, 20, 20, 0, 0, '1 pc(s)', 0, '2020-09-28 16:51:23', '2020-09-28 16:51:23');
INSERT INTO `products` VALUES (476, '', 'roadster', 'Roadster', 'Roadster', 'Indigo blue cotton mid rise denim shorts from Levi\'s featuring a waistband with belt loops, a button and zip fly, an unfinished hem and a five pocket design.', 0, 45, 36, 20, 0, '1 pc(s)', 0, '2020-09-28 16:52:23', '2020-09-28 16:52:23');
INSERT INTO `products` VALUES (477, '', 'RICHTAN_hero', 'Richtan Hero', 'Richtan Hero', 'Indigo blue cotton mid rise denim shorts from Levi\'s featuring a waistband with belt loops, a button and zip fly, an unfinished hem and a five pocket design.', 0, 45, 41, 9, 0, '1 pc(s)', 0, '2020-09-28 16:52:45', '2020-09-28 16:52:45');
INSERT INTO `products` VALUES (478, '', 'invictus', 'Invictus', 'Invictus', 'Indigo blue cotton mid rise denim shorts from Levi\'s featuring a waistband with belt loops, a button and zip fly, an unfinished hem and a five pocket design.', 0, 45, 45, 0, 0, '1 pc(s)', 0, '2020-09-28 16:53:26', '2020-09-28 16:53:26');
INSERT INTO `products` VALUES (479, '', 'High_Lander_Light_Khaki', 'High Lander Light Khaki', 'High Lander Light Khaki', 'Indigo blue cotton mid rise denim shorts from Levi\'s featuring a waistband with belt loops, a button and zip fly, an unfinished hem and a five pocket design.', 0, 30, 30, 0, 0, '1 pc(s)', 0, '2020-09-28 16:54:06', '2020-09-28 16:54:06');
INSERT INTO `products` VALUES (480, '', 'High_Lander_Deep_Khaki', 'High Lander Deep Khaki', 'High Lander Deep Khaki', 'Indigo blue cotton mid rise denim shorts from Levi\'s featuring a waistband with belt loops, a button and zip fly, an unfinished hem and a five pocket design.', 0, 30, 30, 0, 0, '1 pc(s)', 0, '2020-09-28 16:54:52', '2020-09-28 16:54:52');
INSERT INTO `products` VALUES (481, '', 'A.P.C._classic_chinos', 'High Lander Deep Khaki', 'High Lander Deep Khaki', 'Indigo blue cotton mid rise denim shorts from Levi\'s featuring a waistband with belt loops, a button and zip fly, an unfinished hem and a five pocket design.', 0, 35, 35, 0, 0, '1 pc(s)', 0, '2020-09-28 16:55:07', '2020-09-28 16:55:07');
INSERT INTO `products` VALUES (482, '', 'David_Jones', 'David Jones', 'David Jones', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 105, 84, 20, 0, '1 pc(s)', 0, '2020-09-28 16:55:24', '2020-09-28 16:55:24');
INSERT INTO `products` VALUES (483, '', 'gOLDERS', 'Golders', 'Golders', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 200, 200, 0, 0, '1 pc(s)', 0, '2020-09-28 16:55:40', '2020-09-28 16:55:40');
INSERT INTO `products` VALUES (484, '', 'Mos_Mosh', 'Mos Mosh', 'Mos Mosh', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 150, 150, 0, 0, '1 pc(s)', 0, '2020-09-28 16:55:55', '2020-09-28 16:55:55');
INSERT INTO `products` VALUES (485, '', 'raymond', 'Raymond', 'Raymond', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 80, 80, 0, 0, '1 pc(s)', 0, '2020-09-28 16:56:16', '2020-09-28 16:56:16');
INSERT INTO `products` VALUES (486, '', 'ricki\'s', 'Ricki S', 'Ricki S', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 145, 145, 0, 0, '1 pc(s)', 0, '2020-09-28 16:56:43', '2020-09-28 16:56:43');
INSERT INTO `products` VALUES (488, '', 'Bluebird_M_AlpineStartJacket', 'Fred Perry Taped Sports Jacket In Wine', 'Fred Perry Taped Sports Jacket In Wine', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 100, 85, 15, 0, '1 pc(s)', 0, '2020-09-28 16:57:16', '2020-09-28 16:57:16');
INSERT INTO `products` VALUES (489, '', 'Fred_perry_taped_sports_jacket_in_wine', 'Fred Perry Taped Sports Jacket', 'Fred Perry Taped Sports Jacket', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 100, 100, 0, 0, '1 pc(s)', 0, '2020-09-28 16:57:33', '2020-09-28 16:57:33');
INSERT INTO `products` VALUES (490, '', 'Loap_infery_kids_winter_jacket_blue_gray', 'Loap Infery Kids Winter Jacket', 'Loap Infery Kids Winter Jacket', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 60, 60, 0, 0, '1 pc(s)', 0, '2020-09-28 16:57:50', '2020-09-28 16:57:50');
INSERT INTO `products` VALUES (491, '', 'Fred_perry_tipped_brentham_jacket_in_navy', 'Fred Perry Taped Sports Jacket Navy', 'Fred Perry Taped Sports Jacket Navy', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 100, 85, 15, 0, '1 pc(s)', 0, '2020-09-28 16:58:09', '2020-09-28 16:58:09');
INSERT INTO `products` VALUES (492, '', 'Loap_infery_kids_winter_jacket_blue_gray', 'Loap Infery Kids Winter Jacket', 'Loap Infery Kids Winter Jacket', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 60, 60, 0, 0, '1 pc(s)', 0, '2020-09-28 16:58:34', '2020-09-28 16:58:34');
INSERT INTO `products` VALUES (493, '', 'Loap_jerryk_mens_winter_city_jacket_blue', 'Loap Jerryk Mens Winter City Jacket Blue', 'Loap Jerryk Mens Winter City Jacket Blue', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 100, 85, 15, 0, '1 pc(s)', 0, '2020-09-28 16:58:51', '2020-09-28 16:58:51');
INSERT INTO `products` VALUES (494, '', 'Loap_jerryk_mens_winter_city_jacket_red', 'Loap Jerryk Mens Winter City Jacket Red', 'Loap Jerryk Mens Winter City Jacket Red', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 100, 100, 0, 0, '1 pc(s)', 0, '2020-09-28 16:59:12', '2020-09-28 16:59:12');
INSERT INTO `products` VALUES (495, '', 'Roadster_Polar_fleece_jacket', 'Roadster Polar Fleece Jacket', 'Roadster Polar Fleece Jacket', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 50, 50, 0, 0, '1 pc(s)', 0, '2020-09-28 16:59:42', '2020-09-28 16:59:42');
INSERT INTO `products` VALUES (496, '', 'Montane_womens_phoenix_jacket', 'Roadster Polar Fleece Jacket', 'Roadster Polar Fleece Jacket', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 95, 95, 0, 0, '1 pc(s)', 0, '2020-09-28 17:00:01', '2020-09-28 17:00:01');
INSERT INTO `products` VALUES (497, '', 'Score_lazio_red', 'Score Lazio Red', 'Score Lazio Red', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 70, 70, 0, 0, '1 pc(s)', 0, '2020-09-28 17:00:32', '2020-09-28 17:00:32');
INSERT INTO `products` VALUES (498, '', 'Brook_Taverner', 'Brook Taverner Coat', 'Brook Taverner Coat', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 160, 144, 10, 0, '1 pc(s)', 0, '2020-09-28 17:00:55', '2020-09-28 17:00:55');
INSERT INTO `products` VALUES (499, '', 'Brook_taverner_scapoli_ladies_waistcoat', 'Brook Taverner Scapoli Ladies Waist Coat', 'Brook Taverner Scapoli Ladies Waist Coat', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 150, 135, 10, 0, '1 pc(s)', 0, '2020-09-28 17:01:15', '2020-09-28 17:01:15');
INSERT INTO `products` VALUES (500, '', 'Chill_Winston', 'Chill Winston Waist Coat', 'Chill Winston Waist Coat', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 130, 130, 0, 0, '1 pc(s)', 0, '2020-09-28 17:01:38', '2020-09-28 17:01:38');
INSERT INTO `products` VALUES (501, '', 'Deyann', 'Deyann Waist Coat', 'Deyann Waist Coat', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 130, 130, 0, 0, '1 pc(s)', 0, '2020-09-28 17:02:14', '2020-09-28 17:02:14');
INSERT INTO `products` VALUES (502, '', 'Hypernation_render_Gilet', 'Hypernation Render Gilet Waist Coat', 'Hypernation Render Gilet Waist Coat', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 120, 120, 0, 0, '1 pc(s)', 0, '2020-09-28 17:02:30', '2020-09-28 17:02:30');
INSERT INTO `products` VALUES (503, '', 'Jack&Jones', 'Jack Jones Waist Coat', 'Jack Jones Waist Coat', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 100, 100, 0, 0, '1 pc(s)', 0, '2020-09-28 17:02:53', '2020-09-28 17:02:53');
INSERT INTO `products` VALUES (504, '', 'Raas', 'Raas Waist Coat', 'Raas Waist Coat', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 100, 100, 0, 0, '1 pc(s)', 0, '2020-09-28 17:03:38', '2020-09-28 17:03:38');
INSERT INTO `products` VALUES (505, '', 'Rhino-_Waistcoat_Navy', 'Rhino Navy Waist Coat', 'Rhino Navy Waist Coat', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 120, 120, 0, 0, '1 pc(s)', 0, '2020-09-28 17:04:13', '2020-09-28 17:04:13');
INSERT INTO `products` VALUES (506, '', 'Scott_washable_performance_waistcoat', 'Sco Tt Washable Performance Waist Coat', 'Sco Tt Washable Performance Waist Coat', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 120, 120, 0, 0, '1 pc(s)', 0, '2020-09-28 17:04:36', '2020-09-28 17:04:36');
INSERT INTO `products` VALUES (508, '', 'High_Lander', 'High Lander Fade Jeans', 'High Lander Fade Jeans', 'Indigo blue cotton mid rise denim shorts from Levi\'s featuring a waistband with belt loops, a button and zip fly, an unfinished hem and a five pocket design.', 0, 60, 54, 10, 0, '1 pc(s)', 0, '2020-09-28 17:05:05', '2020-09-28 17:05:05');
INSERT INTO `products` VALUES (509, '', 'Roadsterr', 'Roadster Fade Jeans', 'Roadster Fade Jeans', 'Indigo blue cotton mid rise denim shorts from Levi\'s featuring a waistband with belt loops, a button and zip fly, an unfinished hem and a five pocket design.', 0, 80, 80, 0, 0, '1 pc(s)', 0, '2020-09-28 17:05:33', '2020-09-28 17:05:33');
INSERT INTO `products` VALUES (510, '', 'Scotch_soda_ralston_stone_and_sand', 'Scotch Soda Ralson Stone And Sand Jeans', 'Scotch Soda Ralson Stone And Sand Jeans', 'Indigo blue cotton mid rise denim shorts from Levi\'s featuring a waistband with belt loops, a button and zip fly, an unfinished hem and a five pocket design.', 0, 50, 50, 0, 0, '1 pc(s)', 0, '2020-09-28 17:05:51', '2020-09-28 17:05:51');
INSERT INTO `products` VALUES (511, '', 'Scotch_soda_skim', 'Scotch Soda Skim Jeans', 'Scotch Soda Skim Jeans', 'Indigo blue cotton mid rise denim shorts from Levi\'s featuring a waistband with belt loops, a button and zip fly, an unfinished hem and a five pocket design.', 0, 50, 50, 0, 0, '1 pc(s)', 0, '2020-09-28 17:06:06', '2020-09-28 17:06:06');
INSERT INTO `products` VALUES (512, '', 'Wrogn.jpg', 'Wrogn Jeans', 'Wrogn Jeans', 'Indigo blue cotton mid rise denim shorts from Levi\'s featuring a waistband with belt loops, a button and zip fly, an unfinished hem and a five pocket design.', 0, 70, 70, 0, 0, '1 pc', 0, '2020-09-28 17:06:19', '2020-09-28 17:06:19');
INSERT INTO `products` VALUES (513, '', '2Go', '2Go Jog Pant', '2Go Jog Pant', 'Brown Yogi High Rise 7/8 tights from Nimble Activewear featuring a high waist, a fitted silhouette, a lightunit construction and a cropped length.', 0, 30, 21, 30, 0, '1 pc', 0, '2020-09-28 17:06:39', '2020-09-28 17:06:39');
INSERT INTO `products` VALUES (514, '', 'Addidas', 'Addidas Trouser', 'Addidas Trouser', 'Brown Yogi High Rise 7/8 tights from Nimble Activewear featuring a high waist, a fitted silhouette, a lightunit construction and a cropped length.', 0, 30, 27, 10, 0, '1 pc(s)', 0, '2020-09-28 17:06:52', '2020-09-28 17:06:52');
INSERT INTO `products` VALUES (515, '', 'Champion', 'Champion Trouser', 'Champion Trouser', 'Brown Yogi High Rise 7/8 tights from Nimble Activewear featuring a high waist, a fitted silhouette, a lightunit construction and a cropped length.', 0, 25, 25, 0, 0, '1 pc', 0, '2020-09-28 17:07:21', '2020-09-28 17:07:21');
INSERT INTO `products` VALUES (516, '', 'Ellesse_candreva_joggers_dress_blue', 'Ellesse Candreva Joggers Pant', 'Ellesse Candreva Joggers Pant', 'Brown Yogi High Rise 7/8 tights from Nimble Activewear featuring a high waist, a fitted silhouette, a lightunit construction and a cropped length.', 0, 20, 20, 0, 0, '1 pc', 0, '2020-09-28 17:07:43', '2020-09-28 17:07:43');
INSERT INTO `products` VALUES (517, '', 'Hubberholme', 'Hubberholme Trouser', 'Hubberholme Trouser', 'Brown Yogi High Rise 7/8 tights from Nimble Activewear featuring a high waist, a fitted silhouette, a lightunit construction and a cropped length.', 0, 20, 20, 0, 0, '1 pc', 0, '2020-09-28 17:08:07', '2020-09-28 17:08:07');
INSERT INTO `products` VALUES (520, '', '13361', 'Make Up Factory Glitter', 'Make Up Factory Glitter', 'This brilliantly long-wearing sparkle eye shadow combines the perfect mix of pearl and glitter to lavish eyes with incredible luster and shimmer.  With its uniquely lightunit, water-infused texture, Glitter & Glow glides on effortlessly, then dries down smoothly, locking in maximum sparkle with minimal fallout, for eyes with a real wow! factor.', 0, 25, 20, 20, 0, '1 pc', 0, '2020-09-28 17:08:22', '2020-09-28 17:08:22');
INSERT INTO `products` VALUES (521, '', 'dee5eb09-4cd1-4f14-8407-6c9c5e17485a1553259228027-1', 'ABC Glitter', 'ABC Glitter', 'This brilliantly long-wearing sparkle eye shadow combines the perfect mix of pearl and glitter to lavish eyes with incredible luster and shimmer.  With its uniquely lightunit, water-infused texture, Glitter & Glow glides on effortlessly, then dries down smoothly, locking in maximum sparkle with minimal fallout, for eyes with a real wow! factor.', 0, 25, 20, 20, 0, '1 pc', 0, '2020-09-28 17:08:52', '2020-09-28 17:08:52');
INSERT INTO `products` VALUES (522, '', 'HTB1eUwkzwKTBuNkSne1q6yJoXXaY', 'Kiss My Dear Shiny Glitter', 'Kiss My Dear Shiny Glitter', 'This brilliantly long-wearing sparkle eye shadow combines the perfect mix of pearl and glitter to lavish eyes with incredible luster and shimmer.  With its uniquely lightunit, water-infused texture, Glitter & Glow glides on effortlessly, then dries down smoothly, locking in maximum sparkle with minimal fallout, for eyes with a real wow! factor.', 0, 28, 28, 0, 0, '1 pc', 0, '2020-09-28 17:09:31', '2020-09-28 17:09:31');
INSERT INTO `products` VALUES (523, '', 'ILU003', 'ILU Glitter', 'ILU Glitter', 'This brilliantly long-wearing sparkle eye shadow combines the perfect mix of pearl and glitter to lavish eyes with incredible luster and shimmer.  With its uniquely lightunit, water-infused texture, Glitter & Glow glides on effortlessly, then dries down smoothly, locking in maximum sparkle with minimal fallout, for eyes with a real wow! factor.', 0, 28, 28, 0, 0, '1 pc', 0, '2020-09-28 17:09:52', '2020-09-28 17:09:52');
INSERT INTO `products` VALUES (524, '', 'Marc-Jacobs-Beauty-See-quins-Glam-Glitter-Eyeshadow', 'Marc Jacobs Glam Glitter', 'Marc Jacobs Glam Glitter', 'This brilliantly long-wearing sparkle eye shadow combines the perfect mix of pearl and glitter to lavish eyes with incredible luster and shimmer.  With its uniquely lightunit, water-infused texture, Glitter & Glow glides on effortlessly, then dries down smoothly, locking in maximum sparkle with minimal fallout, for eyes with a real wow! factor.', 0, 28, 28, 0, 0, '1 pc', 0, '2020-09-28 17:10:13', '2020-09-28 17:10:13');
INSERT INTO `products` VALUES (525, '', 'PMG_EYEDOLS_CLOSED_CORRUPTCOPPER', 'Pat McGrath Glitter', 'Pat McGrath Glitter', 'This brilliantly long-wearing sparkle eye shadow combines the perfect mix of pearl and glitter to lavish eyes with incredible luster and shimmer.  With its uniquely lightunit, water-infused texture, Glitter & Glow glides on effortlessly, then dries down smoothly, locking in maximum sparkle with minimal fallout, for eyes with a real wow! factor.', 0, 28, 28, 0, 0, '1 pc', 0, '2020-09-28 17:10:33', '2020-09-28 17:10:33');
INSERT INTO `products` VALUES (526, '', '2_3_6412600840186_Lumene_true_mystic_volume_mascara_black', 'Lumene True Mystic Volume Mascara', 'Lumene True Mystic Volume Mascara', 'For lavishly long, perfectly defined lashes, this iconic award-winning mascara provides the ultimate in separation and has been the number 1 mascara for 16+ years! Carefully selected polymers coat each lash from root to tip, to help lengthen and outline each lash for unmatched definition. This best-selling mascara\'s unique brush applicator has specially grooved bristles that hold the perfect amount of product for gradual, even application every time.', 0, 20, 10, 50, 0, '1 pc', 0, '2020-09-28 17:10:50', '2020-09-28 17:10:50');
INSERT INTO `products` VALUES (527, '', '10725812', ' Mon Sieur Big Marker Mascara', ' Mon Sieur Big Marker Mascara', 'For lavishly long, perfectly defined lashes, this iconic award-winning mascara provides the ultimate in separation and has been the number 1 mascara for 16+ years! Carefully selected polymers coat each lash from root to tip, to help lengthen and outline each lash for unmatched definition. This best-selling mascara\'s unique brush applicator has specially grooved bristles that hold the perfect amount of product for gradual, even application every time.', 0, 20, 15, 25, 0, '1 pc', 0, '2020-09-28 17:11:09', '2020-09-28 17:11:09');
INSERT INTO `products` VALUES (528, '', '1539805842-lancome-big-monsieur-1500313391', ' Mon Sieur Big Lancome Mascara', ' Mon Sieur Big Lancome Mascara', 'For lavishly long, perfectly defined lashes, this iconic award-winning mascara provides the ultimate in separation and has been the number 1 mascara for 16+ years! Carefully selected polymers coat each lash from root to tip, to help lengthen and outline each lash for unmatched definition. This best-selling mascara\'s unique brush applicator has specially grooved bristles that hold the perfect amount of product for gradual, even application every time.', 0, 20, 15, 25, 0, '1 pc', 0, '2020-09-28 17:11:20', '2020-09-28 17:11:20');
INSERT INTO `products` VALUES (529, '', '1553526549-dior-1553526540', ' Dior Mascara', ' Dior Mascara', 'For lavishly long, perfectly defined lashes, this iconic award-winning mascara provides the ultimate in separation and has been the number 1 mascara for 16+ years! Carefully selected polymers coat each lash from root to tip, to help lengthen and outline each lash for unmatched definition. This best-selling mascara\'s unique brush applicator has specially grooved bristles that hold the perfect amount of product for gradual, even application every time.', 0, 18, 18, 0, 0, '1 pc', 0, '2020-09-28 17:11:36', '2020-09-28 17:11:36');
INSERT INTO `products` VALUES (530, '', 'big-look-mascara-cap-on-appl-to-side', ' Big Look Mascara', ' Big Look Mascara', 'For lavishly long, perfectly defined lashes, this iconic award-winning mascara provides the ultimate in separation and has been the number 1 mascara for 16+ years! Carefully selected polymers coat each lash from root to tip, to help lengthen and outline each lash for unmatched definition. This best-selling mascara\'s unique brush applicator has specially grooved bristles that hold the perfect amount of product for gradual, even application every time.', 0, 15, 15, 0, 0, '1 pc', 0, '2020-09-28 17:11:55', '2020-09-28 17:11:55');
INSERT INTO `products` VALUES (531, '', 'mascara_cap_off-black-web_ready_1', 'W3LL People Mascara', 'W3LL People Mascara', 'For lavishly long, perfectly defined lashes, this iconic award-winning mascara provides the ultimate in separation and has been the number 1 mascara for 16+ years! Carefully selected polymers coat each lash from root to tip, to help lengthen and outline each lash for unmatched definition. This best-selling mascara\'s unique brush applicator has specially grooved bristles that hold the perfect amount of product for gradual, even application every time.', 0, 12, 12, 0, 0, '1 pc', 0, '2020-09-28 17:12:13', '2020-09-28 17:12:13');
INSERT INTO `products` VALUES (532, '', 'Stellar-Lash-Mascara-CapOff-web', 'Steller Lash Mascara', 'Steller Lash Mascara', 'For lavishly long, perfectly defined lashes, this iconic award-winning mascara provides the ultimate in separation and has been the number 1 mascara for 16+ years! Carefully selected polymers coat each lash from root to tip, to help lengthen and outline each lash for unmatched definition. This best-selling mascara\'s unique brush applicator has specially grooved bristles that hold the perfect amount of product for gradual, even application every time.', 0, 17, 17, 0, 0, '1 pc', 0, '2020-09-28 17:12:33', '2020-09-28 17:12:33');
INSERT INTO `products` VALUES (533, '', 'beauty', 'Beauty Pressed Finishing Powder', 'Beauty Pressed Finishing Powder', 'Our silky, lightunit powder sets makeup for longer wear while providing a veil of perfecting luminosity and a finish so natural they’ll think you were Born This Way.', 0, 20, 20, 0, 0, '1 pc(s)', 0, '2020-09-28 17:13:03', '2020-09-28 17:13:03');
INSERT INTO `products` VALUES (534, '', 'DrHauschka_CompactPowder', 'Dr. Hauschka Compact Powder', 'Dr. Hauschka Compact Powder', 'Our silky, lightunit powder sets makeup for longer wear while providing a veil of perfecting luminosity and a finish so natural they’ll think you were Born This Way.', 0, 18, 18, 0, 0, '1 pc(s)', 0, '2020-09-28 17:13:26', '2020-09-28 17:13:26');
INSERT INTO `products` VALUES (535, '', 'g9', 'G9 Face Powder', 'G9 Face Powder', 'Our silky, lightunit powder sets makeup for longer wear while providing a veil of perfecting luminosity and a finish so natural they’ll think you were Born This Way.', 0, 15, 12, 20, 0, '1 pc(s)', 0, '2020-09-28 17:13:56', '2020-09-28 17:13:56');
INSERT INTO `products` VALUES (536, '', 'Iman', 'Iman Face Powder', 'Iman Face Powder', 'Our silky, lightunit powder sets makeup for longer wear while providing a veil of perfecting luminosity and a finish so natural they’ll think you were Born This Way.', 0, 15, 12, 20, 0, '1 pc(s)', 0, '2020-09-28 17:14:15', '2020-09-28 17:14:15');
INSERT INTO `products` VALUES (537, '', 'lorac', 'Lorac Face Powder', 'Lorac Face Powder', 'Our silky, lightunit powder sets makeup for longer wear while providing a veil of perfecting luminosity and a finish so natural they’ll think you were Born This Way.', 0, 15, 15, 0, 0, '1 pc(s)', 0, '2020-09-28 17:14:40', '2020-09-28 17:14:40');
INSERT INTO `products` VALUES (538, '', 'pupa', 'Pupa Natural Side Compact Powder', 'Pupa Natural Side Compact Powder', 'Our silky, lightunit powder sets makeup for longer wear while providing a veil of perfecting luminosity and a finish so natural they’ll think you were Born This Way.', 0, 18, 18, 0, 0, '1 pc(s)', 0, '2020-09-28 17:15:38', '2020-09-28 17:15:38');
INSERT INTO `products` VALUES (539, '', 'revlon_colorstay', 'Revlon Colorstay Powder', 'Revlon Colorstay Powder', 'Our silky, lightunit powder sets makeup for longer wear while providing a veil of perfecting luminosity and a finish so natural they’ll think you were Born This Way.', 0, 25, 25, 0, 0, '1 pc(s)', 0, '2020-09-28 17:16:07', '2020-09-28 17:16:07');
INSERT INTO `products` VALUES (540, '', 'wet_wild.png', 'Revlon Colorstay Powder', 'Revlon Colorstay Powder', 'Our silky, lightunit powder sets makeup for longer wear while providing a veil of perfecting luminosity and a finish so natural they’ll think you were Born This Way.', 0, 25, 25, 0, 0, '1 pc(s)', 0, '2020-09-28 17:16:52', '2020-09-28 17:16:52');
INSERT INTO `products` VALUES (541, '', 'elf', 'e.l.f. Foundation', 'e.l.f. Foundation', 'A 15-hour matte finish your skin will feel good about! Clarins\' long-wearing compact foundation evens out skin tone and minimizes the look of imperfections in seconds, delivering a shine-free, matte finish and hours of comfortable wear. Ultra-fine texture resists heat, humidity and perspiration for flawless coverage that lasts throughout the day.', 0, 55, 44, 20, 0, '1 pc(s)', 0, '2020-09-28 17:17:06', '2020-09-28 17:17:06');
INSERT INTO `products` VALUES (542, '', 'loreal_24hr', 'Loreal Infallible Pro-Glow Foundation', 'Loreal Infallible Pro-Glow Foundation', 'A 15-hour matte finish your skin will feel good about! Clarins\' long-wearing compact foundation evens out skin tone and minimizes the look of imperfections in seconds, delivering a shine-free, matte finish and hours of comfortable wear. Ultra-fine texture resists heat, humidity and perspiration for flawless coverage that lasts throughout the day.', 0, 60, 48, 20, 0, '1 pc(s)', 0, '2020-09-28 17:17:18', '2020-09-28 17:17:18');
INSERT INTO `products` VALUES (543, '', 'loreal_infallable', 'Loreal Infallible 24H Fresh Wear Foundation', 'Loreal Infallible 24H Fresh Wear Foundation', 'A 15-hour matte finish your skin will feel good about! Clarins\' long-wearing compact foundation evens out skin tone and minimizes the look of imperfections in seconds, delivering a shine-free, matte finish and hours of comfortable wear. Ultra-fine texture resists heat, humidity and perspiration for flawless coverage that lasts throughout the day.', 0, 60, 60, 0, 0, '1 pc(s)', 0, '2020-09-28 17:17:37', '2020-09-28 17:17:37');
INSERT INTO `products` VALUES (544, '', 'loreal_true_match.jpg', 'Loreal True Match Foundation', 'Loreal True Match Foundation', 'A 15-hour matte finish your skin will feel good about! Clarins\' long-wearing compact foundation evens out skin tone and minimizes the look of imperfections in seconds, delivering a shine-free, matte finish and hours of comfortable wear. Ultra-fine texture resists heat, humidity and perspiration for flawless coverage that lasts throughout the day.', 0, 60, 48, 20, 0, '1 pc(s)', 0, '2020-09-28 17:17:51', '2020-09-28 17:17:51');
INSERT INTO `products` VALUES (545, '', 'lucy_minerals.png', 'Lucy Minerals Foundation', 'Lucy Minerals Foundation', 'A 15-hour matte finish your skin will feel good about! Clarins\' long-wearing compact foundation evens out skin tone and minimizes the look of imperfections in seconds, delivering a shine-free, matte finish and hours of comfortable wear. Ultra-fine texture resists heat, humidity and perspiration for flawless coverage that lasts throughout the day.', 0, 40, 40, 0, 0, '1 pc(s)', 0, '2020-09-28 17:18:45', '2020-09-28 17:18:45');
INSERT INTO `products` VALUES (546, '', 'mac.jpg', 'Mac Foundation', 'Mac Foundation', 'A 15-hour matte finish your skin will feel good about! Clarins\' long-wearing compact foundation evens out skin tone and minimizes the look of imperfections in seconds, delivering a shine-free, matte finish and hours of comfortable wear. Ultra-fine texture resists heat, humidity and perspiration for flawless coverage that lasts throughout the day.', 0, 40, 40, 0, 0, '1 pc(s)', 0, '2020-09-28 17:18:57', '2020-09-28 17:18:57');
INSERT INTO `products` VALUES (547, '', 'pur.jpg', 'Pur Foundation', 'Pur Foundation', 'A 15-hour matte finish your skin will feel good about! Clarins\' long-wearing compact foundation evens out skin tone and minimizes the look of imperfections in seconds, delivering a shine-free, matte finish and hours of comfortable wear. Ultra-fine texture resists heat, humidity and perspiration for flawless coverage that lasts throughout the day.', 0, 60, 60, 0, 0, '1 pc(s)', 0, '2020-09-28 17:19:18', '2020-09-28 17:19:18');
INSERT INTO `products` VALUES (548, '', 'barrym', 'Barry M Lip Liner', 'Barry M Lip Liner', 'Reach pout perfection with the Matte Me Up Liquid Lip Paint and Liner. Its non-drying, ultra-long wearing formula is easy to apply and will leave lips with a gorgeously bold finish. Each kit comes with a matte liquid Lip Paint and Lip Liner. ', 0, 12, 6, 50, 0, '1 pc(s)', 0, '2020-09-28 17:19:30', '2020-09-28 17:19:30');
INSERT INTO `products` VALUES (549, '', 'CT.jpeg', 'CT Lip Kit', 'CT Lip Kit', 'Reach pout perfection with the Matte Me Up Liquid Lip Paint and Liner. Its non-drying, ultra-long wearing formula is easy to apply and will leave lips with a gorgeously bold finish. Each kit comes with a matte liquid Lip Paint and Lip Liner. ', 0, 40, 40, 0, 0, '1 pc(s)', 0, '2020-09-28 17:19:49', '2020-09-28 17:19:49');
INSERT INTO `products` VALUES (550, '', 'dsl.jpg', 'D$L Lip Kit', 'D$L Lip Kit', 'Reach pout perfection with the Matte Me Up Liquid Lip Paint and Liner. Its non-drying, ultra-long wearing formula is easy to apply and will leave lips with a gorgeously bold finish. Each kit comes with a matte liquid Lip Paint and Lip Liner. ', 0, 40, 32, 20, 0, '1 pc(s)', 0, '2020-09-28 17:20:16', '2020-09-28 17:20:16');
INSERT INTO `products` VALUES (551, '', 'find', 'Find. Lip Kit', 'Find. Lip Kit', 'Reach pout perfection with the Matte Me Up Liquid Lip Paint and Liner. Its non-drying, ultra-long wearing formula is easy to apply and will leave lips with a gorgeously bold finish. Each kit comes with a matte liquid Lip Paint and Lip Liner. ', 0, 40, 40, 0, 0, '1 pc(s)', 0, '2020-09-28 17:20:35', '2020-09-28 17:20:35');
INSERT INTO `products` VALUES (552, '', 'NYX2', 'NYX. Lip Kit', 'NYX. Lip Kit', 'Reach pout perfection with the Matte Me Up Liquid Lip Paint and Liner. Its non-drying, ultra-long wearing formula is easy to apply and will leave lips with a gorgeously bold finish. Each kit comes with a matte liquid Lip Paint and Lip Liner. ', 0, 35, 35, 0, 0, '1 pc(s)', 0, '2020-09-28 17:21:22', '2020-09-28 17:21:22');
INSERT INTO `products` VALUES (553, '', 'Srar_struck', 'Star Struck Lip Kit', 'Star Struck Lip Kit', 'Reach pout perfection with the Matte Me Up Liquid Lip Paint and Liner. Its non-drying, ultra-long wearing formula is easy to apply and will leave lips with a gorgeously bold finish. Each kit comes with a matte liquid Lip Paint and Lip Liner. ', 0, 50, 50, 0, 0, '1 pc(s)', 0, '2020-09-28 17:21:35', '2020-09-28 17:21:35');
INSERT INTO `products` VALUES (554, '', 'technic', 'Technic Lip Kit', 'Technic Lip Kit', 'Reach pout perfection with the Matte Me Up Liquid Lip Paint and Liner. Its non-drying, ultra-long wearing formula is easy to apply and will leave lips with a gorgeously bold finish. Each kit comes with a matte liquid Lip Paint and Lip Liner. ', 0, 50, 50, 0, 0, '1 pc(s)', 0, '2020-09-28 17:21:53', '2020-09-28 17:21:53');
INSERT INTO `products` VALUES (555, '', 'believe', 'Believe Beauty Lip Gloss', 'Believe Beauty Lip Gloss', 'M·A·C Lipstick – the iconic product that made M·A·C famous. This long-wearing formula features an intense colour payoff and a completely matte finish.', 0, 20, 15, 25, 0, '1 pc(s)', 0, '2020-09-28 17:22:09', '2020-09-28 17:22:09');
INSERT INTO `products` VALUES (556, '', 'charlottetilbury', 'CT Lip Gloss', 'CT Lip Gloss', 'M·A·C Lipstick – the iconic product that made M·A·C famous. This long-wearing formula features an intense colour payoff and a completely matte finish.', 0, 20, 20, 0, 0, '1 pc(s)', 0, '2020-09-28 17:22:20', '2020-09-28 17:22:20');
INSERT INTO `products` VALUES (557, '', 'covergirl-melting-pout-vinyl-wow', 'Covergirl Melting Pout Vinyl Wow', 'Covergirl Melting Pout Vinyl Wow', 'M·A·C Lipstick – the iconic product that made M·A·C famous. This long-wearing formula features an intense colour payoff and a completely matte finish.', 0, 20, 15, 25, 0, '1 pc(s)', 0, '2020-09-28 17:22:35', '2020-09-28 17:22:35');
INSERT INTO `products` VALUES (558, '', 'gosh_lip_gloss', 'Gosh Lip Gloss', 'Gosh Lip Gloss', 'M·A·C Lipstick – the iconic product that made M·A·C famous. This long-wearing formula features an intense colour payoff and a completely matte finish.', 0, 20, 20, 0, 0, '1 pc(s)', 0, '2020-09-28 17:22:49', '2020-09-28 17:22:49');
INSERT INTO `products` VALUES (559, '', 'lucy', 'Lucy Prickly Pear Lip Gloss', 'Lucy Prickly Pear Lip Gloss', 'M·A·C Lipstick – the iconic product that made M·A·C famous. This long-wearing formula features an intense colour payoff and a completely matte finish.', 0, 25, 25, 0, 0, '1 pc(s)', 0, '2020-09-28 17:23:08', '2020-09-28 17:23:08');
INSERT INTO `products` VALUES (560, '', 'revlon_the_gloss', 'Revlon The Gloss', 'Revlon The Gloss', 'M·A·C Lipstick – the iconic product that made M·A·C famous. This long-wearing formula features an intense colour payoff and a completely matte finish.', 0, 20, 20, 0, 0, '1 pc(s)', 0, '2020-09-28 17:23:26', '2020-09-28 17:23:26');
INSERT INTO `products` VALUES (561, '', 'tarteist-glossy', 'Tarteist Glossy Gloss', 'Tarteist Glossy Gloss', 'M·A·C Lipstick – the iconic product that made M·A·C famous. This long-wearing formula features an intense colour payoff and a completely matte finish.', 0, 20, 20, 0, 0, '1 pc(s)', 0, '2020-09-28 17:23:47', '2020-09-28 17:23:47');
INSERT INTO `products` VALUES (562, '', 'w7-kiss-me', 'W7 Kiss Me Pumping Gloss', 'W7 Kiss Me Pumping Gloss', 'M·A·C Lipstick – the iconic product that made M·A·C famous. This long-wearing formula features an intense colour payoff and a completely matte finish.', 0, 25, 25, 0, 0, '1 pc(s)', 0, '2020-09-28 17:23:59', '2020-09-28 17:23:59');
INSERT INTO `products` VALUES (563, '', 'badass-icon', 'Badass Uoma Lipstick', 'Badass Uoma Lipstick', 'M·A·C Lipstick – the iconic product that made M·A·C famous. This long-wearing formula features an intense colour payoff and a completely matte finish.', 0, 20, 16, 20, 0, '1 pc(s)', 0, '2020-09-28 17:24:14', '2020-09-28 17:24:14');
INSERT INTO `products` VALUES (564, '', 'Gel-Semi-Matte', 'Mary Kay Lipstick', 'Mary Kay Lipstick', 'M·A·C Lipstick – the iconic product that made M·A·C famous. This long-wearing formula features an intense colour payoff and a completely matte finish.', 0, 20, 16, 20, 0, '1 pc(s)', 0, '2020-09-28 17:24:29', '2020-09-28 17:24:29');
INSERT INTO `products` VALUES (565, '', 'maybelline-new-york', 'Maybelline 510 Lipstick', 'Maybelline 510 Lipstick', 'M·A·C Lipstick – the iconic product that made M·A·C famous. This long-wearing formula features an intense colour payoff and a completely matte finish.', 0, 20, 20, 0, 0, '1 pc(s)', 0, '2020-09-28 17:24:43', '2020-09-28 17:24:43');
INSERT INTO `products` VALUES (566, '', 'nars-lipstick-dressed-to-kill', 'Nars Red Lipstick', 'Nars Red Lipstick', 'M·A·C Lipstick – the iconic product that made M·A·C famous. This long-wearing formula features an intense colour payoff and a completely matte finish.', 0, 18, 18, 0, 0, '1 pc(s)', 0, '2020-09-28 17:24:56', '2020-09-28 17:24:56');
INSERT INTO `products` VALUES (568, '', 'youngblood-casablanca', 'Young Blood Lipstick', 'Young Blood Lipstick', 'M·A·C Lipstick – the iconic product that made M·A·C famous. This long-wearing formula features an intense colour payoff and a completely matte finish.', 0, 20, 20, 0, 0, '1 pc(s)', 0, '2020-09-28 17:25:22', '2020-09-28 17:25:22');
INSERT INTO `products` VALUES (571, '', 'ash_bed', 'Ash Double Bed', 'Ash Double Bed', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 250, 250, 0, 0, '1 pc(s)', 0, '2020-09-28 17:25:31', '2020-09-28 17:25:31');
INSERT INTO `products` VALUES (572, '', 'Hardwoods', 'Brown Hardwood Double Bed', 'Brown Hardwood Double Bed', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 250, 250, 0, 0, '1 pc(s)', 0, '2020-09-28 17:25:42', '2020-09-28 17:25:42');
INSERT INTO `products` VALUES (573, '', 'Mahogany', 'Deluxe Mahagony Double Bed', 'Deluxe Mahagony Double Bed', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 300, 300, 0, 0, '1 pc(s)', 0, '2020-09-28 17:25:53', '2020-09-28 17:25:53');
INSERT INTO `products` VALUES (574, '', 'Oak', 'Supreme Oak Double Bed', 'Supreme Oak Double Bed', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 300, 270, 10, 0, '1 pc(s)', 0, '2020-09-28 17:26:05', '2020-09-28 17:26:05');
INSERT INTO `products` VALUES (575, '', 'Partex', 'Partex Coushoned Double Bed', 'Partex Coushoned Double Bed', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 300, 270, 10, 0, '1 pc(s)', 0, '2020-09-28 17:26:17', '2020-09-28 17:26:17');
INSERT INTO `products` VALUES (576, '', 'VInce', 'Vince Ottoman Double Bed', 'Vince Ottoman Double Bed', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 300, 300, 0, 0, '1 pc(s)', 0, '2020-09-28 17:26:30', '2020-09-28 17:26:30');
INSERT INTO `products` VALUES (577, '', 'Cedar', 'Cedar Double Bed', 'Cedar Double Bed', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 400, 400, 0, 0, '1 pc(s)', 0, '2020-09-28 17:26:42', '2020-09-28 17:26:42');
INSERT INTO `products` VALUES (578, '', 'Elm', 'Green Elm wood Double Bed', 'Green Elm wood Double Bed', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 300, 300, 0, 0, '1 pc(s)', 0, '2020-09-28 17:26:52', '2020-09-28 17:26:52');
INSERT INTO `products` VALUES (579, '', 'fir', 'Grey Fir Double Bed', 'Grey Fir Double Bed', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 480, 480, 0, 0, '1 pc(s)', 0, '2020-09-28 17:27:03', '2020-09-28 17:27:03');
INSERT INTO `products` VALUES (580, '', 'reuby', 'Ruby Semi Double Bed', 'Ruby Semi Double Bed', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 480, 480, 0, 0, '1 pc(s)', 0, '2020-09-28 17:27:13', '2020-09-28 17:27:13');
INSERT INTO `products` VALUES (581, '', 'andes_deco', 'Andes Deco Semi Double Bed', 'Andes Deco Semi Double Bed', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 320, 320, 0, 0, '1 pc(s)', 0, '2020-09-28 17:27:25', '2020-09-28 17:27:25');
INSERT INTO `products` VALUES (582, '', 'andes_weco', 'Andes Wide Semi Double Bed', 'Andes Wide Semi Double Bed', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 340, 340, 0, 0, '1 pc(s)', 0, '2020-09-28 17:27:34', '2020-09-28 17:27:34');
INSERT INTO `products` VALUES (583, '', 'walnut', 'Walnut Semi Double Bed', 'Walnut Semi Double Bed', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 300, 270, 10, 0, '1 pc(s)', 0, '2020-09-28 17:27:45', '2020-09-28 17:27:45');
INSERT INTO `products` VALUES (585, '', 'haven_storage', 'Haven Storage Semi Double Bed', 'Haven Storage Semi Double Bed', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 400, 340, 15, 0, '1 pc(s)', 0, '2020-09-28 17:28:03', '2020-09-28 17:28:03');
INSERT INTO `products` VALUES (586, '', 'elm2', 'Elm Single Bed', 'Elm Single Bed', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 400, 340, 15, 0, '1 pc(s)', 0, '2020-09-28 17:28:21', '2020-09-28 17:28:21');
INSERT INTO `products` VALUES (587, '', 'Elmy2', 'Elmy Sinlge Bed', 'Elmy Sinlge Bed', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 400, 340, 15, 0, '1 pc(s)', 0, '2020-09-28 17:28:38', '2020-09-28 17:28:38');
INSERT INTO `products` VALUES (588, '', 'Fredd2', 'Fredd Single Bed', 'Fredd Single Bed', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 300, 300, 0, 0, '1 pc(s)', 0, '2020-09-28 17:28:52', '2020-09-28 17:28:52');
INSERT INTO `products` VALUES (589, '', 'hattie2', 'Hattie Single Bed', 'Hattie Single Bed', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 280, 280, 0, 0, '1 pc(s)', 0, '2020-09-28 17:29:06', '2020-09-28 17:29:06');
INSERT INTO `products` VALUES (590, '', 'alana2', 'Alana Single Bed', 'Alana Single Bed', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 290, 290, 0, 0, '1 pc(s)', 0, '2020-09-28 17:29:25', '2020-09-28 17:29:25');
INSERT INTO `products` VALUES (591, '', 'atlanta2', 'Atlanta Single Bed', 'Atlanta Single Bed', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 300, 270, 10, 0, '1 pc(s)', 0, '2020-09-28 17:29:41', '2020-09-28 17:29:41');
INSERT INTO `products` VALUES (592, '', 'sabine', 'Sabine Bed', 'Sabine Bed', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 320, 320, 0, 0, '1 pc(s)', 0, '2020-09-28 17:30:01', '2020-09-28 17:30:01');
INSERT INTO `products` VALUES (593, '', 'teak', 'Teak Single Bed', 'Teak Single Bed', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 310, 310, 0, 0, '1 pc(s)', 0, '2020-09-28 17:30:14', '2020-09-28 17:30:14');
INSERT INTO `products` VALUES (594, '', 'burcot2', 'Burcot Single Bed', 'Burcot Single Bed', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 380, 380, 0, 0, '1 pc(s)', 0, '2020-09-28 17:30:30', '2020-09-28 17:30:30');
INSERT INTO `products` VALUES (595, '', 'driosinglechari', 'Drio Single Bed', 'Drio Single Bed', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 300, 300, 0, 0, '1 pc(s)', 0, '2020-09-28 17:30:47', '2020-09-28 17:30:47');
INSERT INTO `products` VALUES (596, '', 'white2', 'White Cozy Chair', 'White Cozy Chair', 'One of the basic pieces of furniture, a chair is a type of seat. ', 0, 160, 160, 0, 0, '1 pc(s)', 0, '2020-09-28 17:31:05', '2020-09-28 17:31:05');
INSERT INTO `products` VALUES (597, '', 'ashchair', 'Ash Cozy Chair', 'Ash Cozy Chair', 'One of the basic pieces of furniture, a chair is a type of seat. ', 0, 200, 200, 0, 0, '1 pc(s)', 0, '2020-09-28 17:31:25', '2020-09-28 17:31:25');
INSERT INTO `products` VALUES (598, '', 'blackcozy', 'Black Cozy Chair', 'Black Cozy Chair', 'One of the basic pieces of furniture, a chair is a type of seat. ', 0, 170, 170, 0, 0, '1 pc(s)', 0, '2020-09-28 17:31:39', '2020-09-28 17:31:39');
INSERT INTO `products` VALUES (599, '', 'relax', 'Relax White Cozy Chair', 'Relax White Cozy Chair', 'One of the basic pieces of furniture, a chair is a type of seat. ', 0, 200, 180, 10, 0, '1 pc(s)', 0, '2020-09-28 17:31:51', '2020-09-28 17:31:51');
INSERT INTO `products` VALUES (600, '', 'blackbrown', 'Black & Brown Cozy Chair', 'Black & Brown Cozy Chair', 'One of the basic pieces of furniture, a chair is a type of seat. ', 0, 200, 170, 15, 0, '1 pc(s)', 0, '2020-09-28 17:32:04', '2020-09-28 17:32:04');
INSERT INTO `products` VALUES (601, '', 'oaktimber', 'Oak Timber Rocking Chair', 'Oak Timber Rocking Chair', 'One of the basic pieces of furniture, a chair is a type of seat. ', 0, 200, 170, 15, 0, '1 pc(s)', 0, '2020-09-28 17:32:14', '2020-09-28 17:32:14');
INSERT INTO `products` VALUES (602, '', 'whitesemiwooden', 'White Semi Wooden Rocking Chair', 'White Semi Wooden Rocking Chair', 'One of the basic pieces of furniture, a chair is a type of seat. ', 0, 180, 180, 0, 0, '1 pc(s)', 0, '2020-09-28 17:32:25', '2020-09-28 17:32:25');
INSERT INTO `products` VALUES (603, '', 'skybluewooden', 'Sky Blue Semi Wooden Rocking Chair', 'Sky Blue Semi Wooden Rocking Chair', 'One of the basic pieces of furniture, a chair is a type of seat. ', 0, 200, 200, 0, 0, '1 pc(s)', 0, '2020-09-28 17:32:37', '2020-09-28 17:32:37');
INSERT INTO `products` VALUES (604, '', 'pinetimber', 'Pine Timber Rocking Chair', 'Pine Timber Rocking Chair', 'One of the basic pieces of furniture, a chair is a type of seat. ', 0, 160, 160, 0, 0, '1 pc(s)', 0, '2020-09-28 17:32:49', '2020-09-28 17:32:49');
INSERT INTO `products` VALUES (605, '', 'whitechair', 'White Wooden Rocking Chair', 'White Wooden Rocking Chair', 'One of the basic pieces of furniture, a chair is a type of seat. ', 0, 150, 150, 0, 0, '1 pc(s)', 0, '2020-09-28 17:32:58', '2020-09-28 17:32:58');
INSERT INTO `products` VALUES (606, '', 'cidersleek', 'Cider Sleek Rocking Chair', 'Cider Sleek Rocking Chair', 'One of the basic pieces of furniture, a chair is a type of seat. ', 0, 180, 180, 0, 0, '1 pc(s)', 0, '2020-09-28 17:33:09', '2020-09-28 17:33:09');
INSERT INTO `products` VALUES (607, '', 'plastic', 'Blue Plastic Chair', 'Blue Plastic Chair', 'One of the basic pieces of furniture, a chair is a type of seat. ', 0, 60, 60, 0, 0, '1 pc(s)', 0, '2020-09-28 17:33:19', '2020-09-28 17:33:19');
INSERT INTO `products` VALUES (608, '', 'simplebeech', 'Simple Beech Chair', 'Simple Beech Chair', 'One of the basic pieces of furniture, a chair is a type of seat. ', 0, 90, 90, 0, 0, '1 pc(s)', 0, '2020-09-28 17:33:30', '2020-09-28 17:33:30');
INSERT INTO `products` VALUES (609, '', 'cidersleek', 'Cider Sleek Rocking Chair', 'Cider Sleek Rocking Chair', 'One of the basic pieces of furniture, a chair is a type of seat. ', 0, 100, 80, 20, 0, '1 pc(s)', 0, '2020-09-28 17:33:39', '2020-09-28 17:33:39');
INSERT INTO `products` VALUES (610, '', 'shagunchair', 'Shagun  Chair', 'Shagun  Chair', 'One of the basic pieces of furniture, a chair is a type of seat. ', 0, 650, 650, 0, 0, '1 pc(s)', 0, '2020-09-28 17:33:51', '2020-09-28 17:33:51');
INSERT INTO `products` VALUES (611, '', 'cidersleek', 'Cider Sleek Rocking Chair', 'Cider Sleek Rocking Chair', 'One of the basic pieces of furniture, a chair is a type of seat. ', 0, 180, 180, 0, 0, '1 pc(s)', 0, '2020-09-28 17:34:04', '2020-09-28 17:34:04');
INSERT INTO `products` VALUES (612, '', 'whitecup', 'White Cup Chair', 'White Cup Chair', 'One of the basic pieces of furniture, a chair is a type of seat. ', 0, 120, 120, 0, 0, '1 pc(s)', 0, '2020-09-28 17:34:21', '2020-09-28 17:34:21');
INSERT INTO `products` VALUES (613, '', 'woodengodfather', 'Wooden Godfather Chair', 'Wooden Godfather Chair', 'One of the basic pieces of furniture, a chair is a type of seat. ', 0, 50, 45, 10, 0, '1 pc(s)', 0, '2020-09-28 17:34:35', '2020-09-28 17:34:35');
INSERT INTO `products` VALUES (614, '', 'oakwhitechair', ' Oak White Chair', ' Oak White Chair', 'One of the basic pieces of furniture, a chair is a type of seat. ', 0, 70, 70, 0, 0, '1 pc(s)', 0, '2020-09-28 17:34:52', '2020-09-28 17:34:52');
INSERT INTO `products` VALUES (615, '', 'kingchair', 'King Chair', 'King Chair', 'One of the basic pieces of furniture, a chair is a type of seat. ', 0, 90, 90, 0, 0, '1 pc(s)', 0, '2020-09-28 17:35:03', '2020-09-28 17:35:03');
INSERT INTO `products` VALUES (616, '', 'chesterfielddouble', 'Chesterfield Double Sofa', 'Chesterfield Double Sofa', 'a piece of furniture, also called a couch ', 0, 560, 560, 0, 0, '1 pc(s)', 0, '2020-09-28 17:35:23', '2020-09-28 17:35:23');
INSERT INTO `products` VALUES (617, '', 'garnetdouble', 'Garnet Double Sofa', 'Garnet Double Sofa', 'a piece of furniture, also called a couch', 0, 800, 720, 10, 0, '1 pc(s)', 0, '2020-09-28 17:35:39', '2020-09-28 17:35:39');
INSERT INTO `products` VALUES (618, '', 'landskrona', 'Lands Krona Double SOfa', 'Lands Krona Double SOfa', 'a piece of furniture, also called a couch', 0, 600, 600, 0, 0, '1 pc(s)', 0, '2020-09-28 17:35:53', '2020-09-28 17:35:53');
INSERT INTO `products` VALUES (619, '', 'pebbleforest', 'Pebble Forest Green Sofa', 'Pebble Forest Green Sofa', 'a piece of furniture, also called a couch ', 0, 850, 850, 0, 0, '1 pc(s)', 0, '2020-09-28 17:36:04', '2020-09-28 17:36:04');
INSERT INTO `products` VALUES (620, '', 'purcelldouble', 'Purcell Double Sofa', 'Purcell Double Sofa', 'a piece of furniture, also called a couch. ', 0, 550, 550, 0, 0, '1 pc(s)', 0, '2020-09-28 17:36:13', '2020-09-28 17:36:13');
INSERT INTO `products` VALUES (621, '', 'supersoft', 'Super Soft Grey Double Sofa', 'Super Soft Grey Double Sofa', 'a piece of furniture, also called a couch ', 0, 700, 700, 0, 0, '1 pc(s)', 0, '2020-09-28 17:36:28', '2020-09-28 17:36:28');
INSERT INTO `products` VALUES (622, '', 'swyftdouble', 'Swyft Double Sofa', 'Swyft Double Sofa', 'a piece of furniture, also called a couch', 0, 600, 570, 5, 0, '1 pc(s)', 0, '2020-09-28 17:36:42', '2020-09-28 17:36:42');
INSERT INTO `products` VALUES (623, '', 'acedouble', 'Ace Double Sofa', 'Ace Double Sofa', 'a piece of furniture, also called a couch', 0, 750, 750, 0, 0, '1 pc(s)', 0, '2020-09-28 17:37:01', '2020-09-28 17:37:01');
INSERT INTO `products` VALUES (624, '', 'alliedouble', 'Allie Double Sofa', 'Allie Double Sofa', 'a piece of furniture, also called a couch ', 0, 700, 700, 0, 0, '1 pc(s)', 0, '2020-09-28 17:37:12', '2020-09-28 17:37:12');
INSERT INTO `products` VALUES (625, '', 'antero', 'Antero Black Double Sofa', 'Antero Black Double Sofa', 'a piece of furniture, also called a couch ', 0, 950, 950, 0, 0, '1 pc(s)', 0, '2020-09-28 17:37:23', '2020-09-28 17:37:23');
INSERT INTO `products` VALUES (626, '', 'castlerydouble', 'Castlery Double Sofa', 'Castlery Double Sofa', 'a piece of furniture, also called a couch ', 0, 680, 680, 0, 0, '1 pc(s)', 0, '2020-09-28 17:37:39', '2020-09-28 17:37:39');
INSERT INTO `products` VALUES (627, '', 'tarasingle', 'Tara Brown Single Sofa', 'Tara Brown Single Sofa', 'a piece of furniture, also called a couch ', 0, 350, 350, 0, 0, '1 pc(s)', 0, '2020-09-28 17:37:51', '2020-09-28 17:37:51');
INSERT INTO `products` VALUES (628, '', 'aaryasingle', 'Aarya Yellow Single Sofa', 'Aarya Yellow Single Sofa', 'a piece of furniture, also called a couch ', 0, 320, 320, 0, 0, '1 pc(s)', 0, '2020-09-28 17:38:03', '2020-09-28 17:38:03');
INSERT INTO `products` VALUES (629, '', 'safarisingle', 'Safari Ash Single Sofa', 'Safari Ash Single Sofa', 'a piece of furniture, also called a couch ', 0, 280, 280, 0, 0, '1 pc(s)', 0, '2020-09-28 17:38:14', '2020-09-28 17:38:14');
INSERT INTO `products` VALUES (630, '', 'vesterbrosingle', 'Vester Bro Single Sofa', 'Vester Bro Single Sofa', 'a piece of furniture, also called a couch ', 0, 310, 310, 0, 0, '1 pc(s)', 0, '2020-09-28 17:38:31', '2020-09-28 17:38:31');
INSERT INTO `products` VALUES (631, '', 'aerosingle', 'Aero Stylish Single Sofa', 'Aero Stylish Single Sofa', 'a piece of furniture, also called a couch ', 0, 300, 270, 10, 0, '1 pc(s)', 0, '2020-09-28 17:38:42', '2020-09-28 17:38:42');
INSERT INTO `products` VALUES (632, '', 'drapedsingle', 'Draped Single Sofa', 'Draped Single Sofa', 'a piece of furniture, also called a couch ', 0, 360, 360, 0, 0, '1 pc(s)', 0, '2020-09-28 17:38:53', '2020-09-28 17:38:53');
INSERT INTO `products` VALUES (633, '', 'elliesingle', 'Ellie Black Sinlge Sofa', 'Ellie Black Sinlge Sofa', 'a piece of furniture, also called a couch ', 0, 250, 200, 20, 0, '1 pc(s)', 0, '2020-09-28 17:39:06', '2020-09-28 17:39:06');
INSERT INTO `products` VALUES (634, '', 'pompeiisingle', 'Pompeii Deluxe Sinlge Sofa', 'Pompeii Deluxe Sinlge Sofa', 'a piece of furniture, also called a couch ', 0, 400, 360, 10, 0, '1 pc(s)', 0, '2020-09-28 17:39:23', '2020-09-28 17:39:23');
INSERT INTO `products` VALUES (635, '', 'reclinersingle', 'Recliner Brown Single Sofa', 'Recliner Brown Single Sofa', 'a piece of furniture, also called a couch ', 0, 300, 300, 0, 0, '1 pc(s)', 0, '2020-09-28 17:39:33', '2020-09-28 17:39:33');
INSERT INTO `products` VALUES (636, '', 'mgmluxarysofa', 'MGM Luxary Sofa', 'MGM Luxary Sofa', 'a piece of furniture, also called a couch ', 0, 800, 720, 10, 0, '1 pc(s)', 0, '2020-09-28 17:39:41', '2020-09-28 17:39:41');
INSERT INTO `products` VALUES (637, '', 'rstluxarysofa', 'RST Luxary Sofa', 'RST Luxary Sofa', 'a piece of furniture, also called a couch ', 0, 800, 800, 0, 0, '1 pc(s)', 0, '2020-09-28 17:39:53', '2020-09-28 17:39:53');
INSERT INTO `products` VALUES (638, '', 'minottisofaset', 'Minotti Sofa Set', 'Minotti Sofa Set', 'a piece of furniture, also called a couch ', 0, 900, 900, 0, 0, '1 pc(s)', 0, '2020-09-28 17:40:07', '2020-09-28 17:40:07');
INSERT INTO `products` VALUES (639, '', 'sibeilicanesofa', 'Sibeili Cane Sofa Set', 'Sibeili Cane Sofa Set', 'a piece of furniture, also called a couch ', 0, 700, 700, 0, 0, '1 pc(s)', 0, '2020-09-28 17:40:18', '2020-09-28 17:40:18');
INSERT INTO `products` VALUES (640, '', 'sinkukusofa', 'Sinkuku Sofa With Cushion', 'Sinkuku Sofa With Cushion', 'a piece of furniture, also called a couch ', 0, 750, 750, 0, 0, '1 pc(s)', 0, '2020-09-28 17:40:34', '2020-09-28 17:40:34');
INSERT INTO `products` VALUES (641, '', 'yuxinsofaset', 'Yuxin Sofa Set', 'Yuxin Sofa Set', 'a piece of furniture, also called a couch ', 0, 1400, 1400, 0, 0, '1 pc(s)', 0, '2020-09-28 17:40:44', '2020-09-28 17:40:44');
INSERT INTO `products` VALUES (642, '', 'blissdarkgrey', 'Bliss Dark Grey Sofa', 'Bliss Dark Grey Sofa', 'a piece of furniture, also called a couch ', 0, 80, 80, 0, 0, '1 pc(s)', 0, '2020-09-28 17:40:58', '2020-09-28 17:40:58');
INSERT INTO `products` VALUES (643, '', 'giantex', 'Giantex Sofa', 'Giantex Sofa', 'a piece of furniture, also called a couch ', 0, 800, 760, 5, 0, '1 pc(s)', 0, '2020-09-28 17:41:11', '2020-09-28 17:41:11');
INSERT INTO `products` VALUES (644, '', 'longhisofaset', 'Longhi Sofa Set', 'Longhi Sofa Set', 'a piece of furniture, also called a couch ', 0, 900, 810, 10, 0, '1 pc(s)', 0, '2020-09-28 17:41:20', '2020-09-28 17:41:20');
INSERT INTO `products` VALUES (645, '', 'makasofaset', 'Maka Designer Sofa Set', 'Maka Designer Sofa Set', 'a piece of furniture, also called a couch ', 0, 1250, 1250, 0, 0, '1 pc(s)', 0, '2020-09-28 17:41:31', '2020-09-28 17:41:31');
INSERT INTO `products` VALUES (646, '', 'malabarsofaset', 'Malabar Leather Sofa Set', 'Malabar Leather Sofa Set', 'a piece of furniture, also called a couch ', 0, 1200, 1200, 0, 0, '1 pc(s)', 0, '2020-09-28 17:41:46', '2020-09-28 17:41:46');
INSERT INTO `products` VALUES (647, '', 'hudsonbedsidetable', 'Hudson Bedside Table', 'Hudson Bedside Table', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 80, 80, 0, 0, '1 pc(s)', 0, '2020-09-28 17:42:00', '2020-09-28 17:42:00');
INSERT INTO `products` VALUES (648, '', 'oliverbedsidetable', 'Oliver Bedside Table', 'Oliver Bedside Table', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 50, 50, 0, 0, '1 pc(s)', 0, '2020-09-28 17:42:08', '2020-09-28 17:42:08');
INSERT INTO `products` VALUES (649, '', 'arlobedsidetable', 'Arlo Bedside Table', 'Arlo Bedside Table', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 50, 45, 10, 0, '1 pc(s)', 0, '2020-09-28 17:42:24', '2020-09-28 17:42:24');
INSERT INTO `products` VALUES (650, '', 'avabedside', 'Ava Bedside Table', 'Ava Bedside Table', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 75, 75, 0, 0, '1 pc(s)', 0, '2020-09-28 17:42:36', '2020-09-28 17:42:36');
INSERT INTO `products` VALUES (651, '', 'bjornbedsidetable', 'Bjorn Bedside Table', 'Bjorn Bedside Table', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 60, 60, 0, 0, '1 pc(s)', 0, '2020-09-28 17:42:48', '2020-09-28 17:42:48');
INSERT INTO `products` VALUES (652, '', 'mayfairbedsidetable', 'Mayfair Bedside Table', 'Mayfair Bedside Table', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 100, 80, 20, 0, '1 pc(s)', 0, '2020-09-28 17:42:58', '2020-09-28 17:42:58');
INSERT INTO `products` VALUES (653, '', 'clovellybedsidetable', 'Clovelly Bedside Table', 'Clovelly Bedside Table', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 80, 80, 0, 0, '1 pc(s)', 0, '2020-09-28 17:43:08', '2020-09-28 17:43:08');
INSERT INTO `products` VALUES (654, '', 'hanabedside', 'Hana Bedside Table', 'Hana Bedside Table', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 120, 120, 0, 0, '1 pc(s)', 0, '2020-09-28 17:43:18', '2020-09-28 17:43:18');
INSERT INTO `products` VALUES (655, '', 'hanabedside', 'Hana Bedside Table', 'Hana Bedside Table', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 120, 120, 0, 0, '1 pc(s)', 0, '2020-09-28 17:43:29', '2020-09-28 17:43:29');
INSERT INTO `products` VALUES (656, '', 'hanabedside', 'Hana Bedside Table', 'Hana Bedside Table', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 120, 120, 0, 0, '1 pc(s)', 0, '2020-09-28 17:43:38', '2020-09-28 17:43:38');
INSERT INTO `products` VALUES (657, '', 'hanabedside', 'Hana Bedside Table', 'Hana Bedside Table', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 120, 120, 0, 0, '1 pc(s)', 0, '2020-09-28 17:43:48', '2020-09-28 17:43:48');
INSERT INTO `products` VALUES (658, '', 'hanabedside', 'Hana Bedside Table', 'Hana Bedside Table', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 120, 120, 0, 0, '1 pc(s)', 0, '2020-09-28 17:43:58', '2020-09-28 17:43:58');
INSERT INTO `products` VALUES (659, '', 'hanabedside', 'Hana Bedside Table', 'Hana Bedside Table', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 120, 120, 0, 0, '1 pc(s)', 0, '2020-09-28 17:44:08', '2020-09-28 17:44:08');
INSERT INTO `products` VALUES (660, '', 'hanabedside', 'Hana Bedside Table', 'Hana Bedside Table', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 120, 120, 0, 0, '1 pc(s)', 0, '2020-09-28 17:44:19', '2020-09-28 17:44:19');
INSERT INTO `products` VALUES (661, '', 'hanabedside', 'Hana Bedside Table', 'Hana Bedside Table', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 120, 120, 0, 0, '1 pc(s)', 0, '2020-09-28 17:44:28', '2020-09-28 17:44:28');
INSERT INTO `products` VALUES (662, '', 'hanabedside', 'Hana Bedside Table', 'Hana Bedside Table', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 120, 120, 0, 0, '1 pc(s)', 0, '2020-09-28 17:44:37', '2020-09-28 17:44:37');
INSERT INTO `products` VALUES (663, '', 'aftabtable', 'Aidan 6 Seater Dinning Table', 'Aidan 6 Seater Dinning Table', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 800, 800, 0, 0, '1 pc(s)', 0, '2020-09-28 17:44:49', '2020-09-28 17:44:49');
INSERT INTO `products` VALUES (664, '', 'diamondtable', 'Diamond 8 Seater Dinning Table', 'Diamond 8 Seater Dinning Table', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 900, 810, 10, 0, '1 pc(s)', 0, '2020-09-28 17:45:07', '2020-09-28 17:45:07');
INSERT INTO `products` VALUES (665, '', 'greysontable', 'Greyson Dinning Table', 'Greyson Dinning Table', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 750, 750, 0, 0, '1 pc(s)', 0, '2020-09-28 17:45:20', '2020-09-28 17:45:20');
INSERT INTO `products` VALUES (666, '', 'lotustable', 'Lotus 6 Seater Dinning Table', 'Lotus 6 Seater Dinning Table', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 820, 820, 0, 0, '1 pc(s)', 0, '2020-09-28 17:45:37', '2020-09-28 17:45:37');
INSERT INTO `products` VALUES (667, '', 'brotherstable', 'Brothers Stylish Dinning Table', 'Brothers Stylish Dinning Table', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 800, 720, 10, 0, '1 pc(s)', 0, '2020-09-28 17:45:49', '2020-09-28 17:45:49');
INSERT INTO `products` VALUES (668, '', 'cameliatable', 'Camelia Round Dinning Table', 'Camelia Round Dinning Table', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 1000, 900, 10, 0, '1 pc(s)', 0, '2020-09-28 17:46:07', '2020-09-28 17:46:07');
INSERT INTO `products` VALUES (669, '', 'canyontable', 'Canyon Deluxe Dinning Table', 'Canyon Deluxe Dinning Table', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 950, 950, 0, 0, '1 pc(s)', 0, '2020-09-28 17:46:18', '2020-09-28 17:46:18');
INSERT INTO `products` VALUES (670, '', 'princeton', 'The Princeton Childrens Book', 'The Princeton Childrens Book', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 25, 25, 0, 0, '8 pc(s)', 0, '2020-09-28 18:34:32', '2020-09-28 18:34:32');
INSERT INTO `products` VALUES (671, '', 'golden_trasury', 'The Golden Treasury of Children Literature', 'The Golden Treasury of Children Literature', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 60, 60, 0, 0, '6 pc(s)', 0, '2020-09-28 18:34:51', '2020-09-28 18:34:51');
INSERT INTO `products` VALUES (672, '', 'charlie_chocolate', 'Charlie and the Chocolate Factory', 'Charlie and the Chocolate Factory', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 80, 80, 0, 0, '6 pc(s)', 0, '2020-09-28 18:35:10', '2020-09-28 18:35:10');
INSERT INTO `products` VALUES (673, '', 'the_grimstones', 'The Grimstones', 'The Grimstones', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 50, 40, 20, 0, '5 pc(s)', 0, '2020-09-28 18:35:28', '2020-09-28 18:35:28');
INSERT INTO `products` VALUES (674, '', 'international', 'International Childrens Book Day', 'International Childrens Book Day', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 60, 48, 20, 0, '5 pc(s)', 0, '2020-09-28 18:35:41', '2020-09-28 18:35:41');
INSERT INTO `products` VALUES (675, '', 'creative_writing', 'Creative Writing with Charlie and the Chocolate Factory', 'Creative Writing with Charlie and the Chocolate Factory', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 60, 48, 20, 0, '6 pc(s)', 0, '2020-09-28 18:35:54', '2020-09-28 18:35:54');
INSERT INTO `products` VALUES (676, '', 'usborne', 'Illustrated Stories for Children', 'Illustrated Stories for Children', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 60, 60, 0, 0, ' 10 pc(s)', 0, '2020-09-28 18:36:11', '2020-09-28 18:36:11');
INSERT INTO `products` VALUES (677, '', 'Through_the', 'Through The Yiddish Looking Glass', 'Through The Yiddish Looking Glass', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 70, 70, 0, 0, ' 10 pc(s)', 0, '2020-09-28 18:36:30', '2020-09-28 18:36:30');
INSERT INTO `products` VALUES (678, '', 'the_big_book', 'Big Book of Dinosaurs', 'Big Book of Dinosaurs', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 80, 80, 0, 0, ' 10 pc(s)', 0, '2020-09-28 18:36:43', '2020-09-28 18:36:43');
INSERT INTO `products` VALUES (679, '', 'felix_the_cat', 'Felix The Cat', 'Felix The Cat', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 20, 20, 0, 0, ' 10 pc(s)', 0, '2020-09-28 18:36:59', '2020-09-28 18:36:59');
INSERT INTO `products` VALUES (680, '', 'the_comc_book', 'The Comic Book Of History Comics', 'The Comic Book Of History Comics', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 20, 20, 0, 0, ' 10 pc(s)', 0, '2020-09-28 18:37:25', '2020-09-28 18:37:25');
INSERT INTO `products` VALUES (681, '', 'brightburn', 'Brightburn', 'Brightburn', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 30, 30, 0, 0, ' 10 pc(s)', 0, '2020-09-28 18:37:39', '2020-09-28 18:37:39');
INSERT INTO `products` VALUES (682, '', 'black_mirror', 'Black Mirror', 'Black Mirror', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 30, 27, 10, 0, ' 10 pc(s)', 0, '2020-09-28 18:37:54', '2020-09-28 18:37:54');
INSERT INTO `products` VALUES (683, '', 'under_preassure', 'Under Preassure', 'Under Preassure', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 30, 27, 10, 0, ' 10 pc(s)', 0, '2020-09-28 18:38:13', '2020-09-28 18:38:13');
INSERT INTO `products` VALUES (684, '', 'superherocomics', 'Superhero Comics', 'Superhero Comics', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 25, 25, 0, 0, ' 10 pc(s)', 0, '2020-09-28 18:38:31', '2020-09-28 18:38:31');
INSERT INTO `products` VALUES (685, '', 'space_oditty', 'Space Oditty', 'Space Oditty', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 40, 40, 0, 0, ' 10 pc(s)', 0, '2020-09-28 18:38:49', '2020-09-28 18:38:49');
INSERT INTO `products` VALUES (686, '', 'preacher', 'Preacher', 'Preacher', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 40, 40, 0, 0, ' 10 pc(s)', 0, '2020-09-28 18:39:09', '2020-09-28 18:39:09');
INSERT INTO `products` VALUES (687, '', 'outer_darkness', 'Outer Darkness', 'Outer Darkness', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 40, 40, 0, 0, ' 10 pc(s)', 0, '2020-09-28 18:39:26', '2020-09-28 18:39:26');
INSERT INTO `products` VALUES (688, '', 'realm_of_ruins', 'Realm Of Ruins', 'Realm Of Ruins', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 120, 120, 0, 0, ' 10 pc(s)', 0, '2020-09-28 18:39:51', '2020-09-28 18:39:51');
INSERT INTO `products` VALUES (689, '', 'princess_of_winds', 'Princess of Winds & Sea', 'Princess of Winds & Sea', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 120, 120, 0, 0, ' 10 pc(s)', 0, '2020-09-28 18:40:19', '2020-09-28 18:40:19');
INSERT INTO `products` VALUES (690, '', 'keepers', 'Keepers The Bounds Book', 'Keepers The Bounds Book', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 150, 150, 0, 0, ' 10 pc(s)', 0, '2020-09-28 18:40:38', '2020-09-28 18:40:38');
INSERT INTO `products` VALUES (691, '', 'julia', 'Julia Vanishes', 'Julia Vanishes', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 100, 80, 20, 0, ' 10 pc(s)', 0, '2020-09-28 18:40:59', '2020-09-28 18:40:59');
INSERT INTO `products` VALUES (692, '', 'carnival', 'Carnival', 'Carnival', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 100, 80, 20, 0, ' 10 pc(s)', 0, '2020-09-28 18:41:16', '2020-09-28 18:41:16');
INSERT INTO `products` VALUES (693, '', 'truthwithc', 'Truth Witch', 'Truth Witch', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 100, 100, 0, 0, ' 10 pc(s)', 0, '2020-09-28 18:41:35', '2020-09-28 18:41:35');
INSERT INTO `products` VALUES (694, '', 'the_true_queen', 'The True Queen', 'The True Queen', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 100, 100, 0, 0, ' 10 pc(s)', 0, '2020-09-28 18:41:56', '2020-09-28 18:41:56');
INSERT INTO `products` VALUES (695, '', 'tbethany', 'Bethany', 'Bethany', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 100, 100, 0, 0, ' 10 pc(s)', 0, '2020-09-28 18:42:14', '2020-09-28 18:42:14');
INSERT INTO `products` VALUES (696, '', 'little_black_spots', 'Little Black Spots', 'Little Black Spots', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 150, 120, 20, 0, ' 10 pc(s)', 0, '2020-09-28 18:42:31', '2020-09-28 18:42:31');
INSERT INTO `products` VALUES (697, '', 'the_namartielle', 'The Namartielle', 'The Namartielle', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 100, 100, 0, 0, ' 10 pc(s)', 0, '2020-09-28 18:42:52', '2020-09-28 18:42:52');
INSERT INTO `products` VALUES (698, '', 'mayhem', 'Mayhem', 'Mayhem', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 100, 100, 0, 0, ' 10 pc(s)', 0, '2020-09-28 18:43:09', '2020-09-28 18:43:09');
INSERT INTO `products` VALUES (699, '', 'ghosts_of_graylock', 'The Ghost of Graylock', 'The Ghost of Graylock', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 100, 70, 30, 0, ' 10 pc(s)', 0, '2020-09-28 18:43:40', '2020-09-28 18:43:40');
INSERT INTO `products` VALUES (700, '', 'girl_from_the_well', 'The Girl From The Well', 'The Girl From The Well', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 140, 140, 0, 0, ' 10 pc(s)', 0, '2020-09-28 18:43:58', '2020-09-28 18:43:58');
INSERT INTO `products` VALUES (701, '', 'the_amityville', 'The Amityville Horror', 'The Amityville Horror', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 80, 80, 0, 0, ' 10 pc(s)', 0, '2020-09-28 18:44:20', '2020-09-28 18:44:20');
INSERT INTO `products` VALUES (702, '', 'it', 'IT', 'IT', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 100, 100, 0, 0, ' 10 pc(s)', 0, '2020-09-28 18:44:35', '2020-09-28 18:44:35');
INSERT INTO `products` VALUES (703, '', 'the_lost_country', 'The Lost Country', 'The Lost Country', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 100, 100, 0, 0, ' 10 pc(s)', 0, '2020-09-28 18:44:54', '2020-09-28 18:44:54');
INSERT INTO `products` VALUES (704, '', 'orphan_war', 'An Orphans War', 'An Orphans War', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 200, 140, 30, 0, ' 10 pc(s)', 0, '2020-09-28 18:45:16', '2020-09-28 18:45:16');
INSERT INTO `products` VALUES (705, '', 'warlight', 'Warlight', 'Warlight', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 100, 100, 0, 0, ' 10 pc(s)', 0, '2020-09-28 18:45:32', '2020-09-28 18:45:32');
INSERT INTO `products` VALUES (706, '', 'you', 'You', 'You', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 120, 120, 0, 0, ' 10 pc(s)', 0, '2020-09-28 18:45:46', '2020-09-28 18:45:46');
INSERT INTO `products` VALUES (707, '', 'significance', 'Significance', 'Significance', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 100, 100, 0, 0, ' 10 pc(s)', 0, '2020-09-28 18:46:07', '2020-09-28 18:46:07');
INSERT INTO `products` VALUES (708, '', 'the_japanese_lover', 'The Japanese Lover', 'The Japanese Lover', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 100, 85, 15, 0, ' 10 pc(s)', 0, '2020-09-28 18:46:21', '2020-09-28 18:46:21');
INSERT INTO `products` VALUES (709, '', 'all_the_rage', 'All The Rage', 'All The Rage', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 130, 130, 0, 0, ' 10 pc(s)', 0, '2020-09-28 18:46:40', '2020-09-28 18:46:40');
INSERT INTO `products` VALUES (710, '', 'the_lost_book', 'The Lost Book Of The Grail', 'The Lost Book Of The Grail', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 160, 160, 0, 0, ' 10 pc(s)', 0, '2020-09-28 18:47:00', '2020-09-28 18:47:00');
INSERT INTO `products` VALUES (711, '', 'strawberry_summber', 'Strawberry Summer', 'Strawberry Summer', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 130, 130, 0, 0, ' 10 pc(s)', 0, '2020-09-28 18:47:25', '2020-09-28 18:47:25');
INSERT INTO `products` VALUES (712, '', 'on_the_way', 'On The Way To You', 'On The Way To You', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 200, 160, 20, 0, ' 10 pc(s)', 0, '2020-09-28 18:47:48', '2020-09-28 18:47:48');
INSERT INTO `products` VALUES (713, '', 'the_bride', 'The Bride Takes A Groom', 'The Bride Takes A Groom', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 160, 160, 0, 0, ' 10 pc(s)', 0, '2020-09-28 18:48:04', '2020-09-28 18:48:04');
INSERT INTO `products` VALUES (714, '', 'whiskey', 'Whiskey', 'Whiskey', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 145, 145, 0, 0, ' 10 pc(s)', 0, '2020-09-28 18:48:23', '2020-09-28 18:48:23');
INSERT INTO `products` VALUES (715, '', 'the_deamon', 'The Deamon Lover', 'The Deamon Lover', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 160, 160, 0, 0, ' 10 pc(s)', 0, '2020-09-28 18:48:37', '2020-09-28 18:48:37');
INSERT INTO `products` VALUES (716, '', 'heart_of_fire', 'Heart Of Fire', 'Heart Of Fire', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 180, 180, 0, 0, ' 10 pc(s)', 0, '2020-09-28 18:48:58', '2020-09-28 18:48:58');
INSERT INTO `products` VALUES (717, '', 'embracing_heart', 'Embracing Her Heart', 'Embracing Her Heart', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 150, 120, 20, 0, ' 10 pc(s)', 0, '2020-09-28 18:49:19', '2020-09-28 18:49:19');
INSERT INTO `products` VALUES (718, '', 'hearts_and_bruises', 'Hearts And Bruises', 'Hearts And Bruises', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 160, 160, 0, 0, ' 10 pc(s)', 0, '2020-09-28 18:49:38', '2020-09-28 18:49:38');
INSERT INTO `products` VALUES (719, '', 'on_the_rocks', 'On The Rocks', 'On The Rocks', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 160, 160, 0, 0, ' 10 pc(s)', 0, '2020-09-28 18:49:54', '2020-09-28 18:49:54');
INSERT INTO `products` VALUES (720, '', 'space_force', 'Space Force', 'Space Force', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 160, 160, 0, 0, ' 10 pc(s)', 0, '2020-09-28 18:50:11', '2020-09-28 18:50:11');
INSERT INTO `products` VALUES (721, '', 'the_stars_Are', 'The Stars Are Legion', 'The Stars Are Legion', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 160, 160, 0, 0, ' 10 pc(s)', 0, '2020-09-28 18:50:26', '2020-09-28 18:50:26');
INSERT INTO `products` VALUES (722, '', 'teh_emerald_tablet', 'The Emerald Tablet ', 'The Emerald Tablet ', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 100, 90, 10, 0, ' 10 pc(s)', 0, '2020-09-28 18:50:41', '2020-09-28 18:50:41');
INSERT INTO `products` VALUES (723, '', 'war_for', 'War For Alcyon V', 'War For Alcyon V', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 100, 90, 10, 0, ' 10 pc(s)', 0, '2020-09-28 18:50:55', '2020-09-28 18:50:55');
INSERT INTO `products` VALUES (724, '', 'hammer_of_doom', 'Hammer Of Doom', 'Hammer Of Doom', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 160, 160, 0, 0, ' 10 pc(s)', 0, '2020-09-28 18:51:11', '2020-09-28 18:51:11');
INSERT INTO `products` VALUES (726, '', 'shadows_cast', 'Shadows Cast By Stars', 'Shadows Cast By Stars', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 150, 150, 0, 0, ' 10 pc(s)', 0, '2020-09-28 18:51:39', '2020-09-28 18:51:39');
INSERT INTO `products` VALUES (730, '', 'stasi_child', 'Stasi Child', 'Stasi Child', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 200, 180, 10, 0, ' 10 pc(s)', 0, '2020-09-28 18:51:54', '2020-09-28 18:51:54');
INSERT INTO `products` VALUES (731, '', 'the_stolen_girls', 'The Stolen Girls', 'The Stolen Girls', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 130, 130, 0, 0, ' 10 pc(s)', 0, '2020-09-28 18:52:10', '2020-09-28 18:52:10');
INSERT INTO `products` VALUES (732, '', 'sudden_death', 'Sudden Death', 'Sudden Death', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 150, 150, 0, 0, ' 10 pc(s)', 0, '2020-09-28 18:52:22', '2020-09-28 18:52:22');
INSERT INTO `products` VALUES (733, '', 'say_her_name', 'Say Her Name', 'Say Her Name', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 180, 180, 0, 0, ' 10 pc(s)', 0, '2020-09-28 18:52:36', '2020-09-28 18:52:36');
INSERT INTO `products` VALUES (734, '', 'snake_skin', 'Snake Skin', 'Snake Skin', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 150, 135, 10, 0, ' 10 pc(s)', 0, '2020-09-28 18:52:47', '2020-09-28 18:52:47');
INSERT INTO `products` VALUES (735, '', 'time_of_Death', 'Time Of Death', 'Time Of Death', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 100, 70, 30, 0, ' 10 pc(s)', 0, '2020-09-28 18:52:58', '2020-09-28 18:52:58');
INSERT INTO `products` VALUES (737, '', 'baby_dream', 'K Mom Natural Pureness Premium Baby Wipes 100pcs', 'K Mom Natural Pureness Premium Baby Wipes 100pcs', '', 0, 3, 3, 0, 0, ' 1 Box', 0, '2020-09-28 18:53:02', '2020-09-28 18:53:02');
INSERT INTO `products` VALUES (740, '', 'beaucare_wet_wipes', ' GU Eco Organic Baby Wipes 72pcs', ' GU Eco Organic Baby Wipes 72pcs', '', 0, 4, 4, 0, 0, ' 1 Box', 0, '2020-09-28 18:53:05', '2020-09-28 18:53:05');
INSERT INTO `products` VALUES (741, '', 'Cottonelle_Flushable_Wipes', ' Cottonelle Flushable Baby Wipes 60pcs', ' Cottonelle Flushable Baby Wipes 60pcs', '', 0, 4, 4, 0, 0, ' 1 Box', 0, '2020-09-28 18:53:10', '2020-09-28 18:53:10');
INSERT INTO `products` VALUES (742, '', 'Carell_Bedbath_Wipes_Pack', ' Carell Bedbath Wipes 8pcs', ' Carell Bedbath Wipes 8pcs', '', 0, 2, 2, 0, 0, '1 Box', 0, '2020-09-28 18:53:13', '2020-09-28 18:53:13');
INSERT INTO `products` VALUES (743, '', 'Waterwipes_Baby_Wipes', ' Waterwipes Baby Wipes 50pcs', ' Waterwipes Baby Wipes 50pcs', '', 0, 3, 3, 0, 0, '1 Box', 0, '2020-09-28 18:53:17', '2020-09-28 18:53:17');
INSERT INTO `products` VALUES (744, '', 'Gompels_Gentle_Skin_Wipes_60_Pack', ' Gompels Skin Wipes 60pcs', ' Gompels Skin Wipes 60pcs', '', 0, 4, 4, 0, 0, '1 Box', 0, '2020-09-28 18:53:20', '2020-09-28 18:53:20');
INSERT INTO `products` VALUES (745, '', 'Pampers_Pure_Protection', ' Pampers Pure Protection ', ' Pampers Pure Protection ', '', 0, 12, 12, 0, 0, '1 Box', 0, '2020-09-28 18:53:23', '2020-09-28 18:53:23');
INSERT INTO `products` VALUES (746, '', 'Safilo_Champs', 'Safilo Champs Absorbent Pants ', 'Safilo Champs Absorbent Pants ', '', 0, 9, 9, 0, 0, '1 Box', 0, '2020-09-28 18:53:26', '2020-09-28 18:53:26');
INSERT INTO `products` VALUES (747, '', 'Seventh_Generation', 'Seventh Generation Baby Diapers', 'Seventh Generation Baby Diapers', '', 0, 7, 7, 0, 0, ' 1 Box', 0, '2020-09-28 18:53:29', '2020-09-28 18:53:29');
INSERT INTO `products` VALUES (748, '', '365_Diapers_Size3', ' 365 Chlorine Free Diapers', ' 365 Chlorine Free Diapers', '', 0, 10, 10, 0, 0, '1 Box', 0, '2020-09-28 18:53:33', '2020-09-28 18:53:33');
INSERT INTO `products` VALUES (749, '', 'Pampers_Preemie', 'Pampers Preemie Diapers', 'Pampers Preemie Diapers', '', 0, 11, 11, 0, 0, '1 Box', 0, '2020-09-28 18:53:38', '2020-09-28 18:53:38');
INSERT INTO `products` VALUES (750, '', 'Lulu_Baby', 'Lulu Baby Diapers', 'Lulu Baby Diapers', '', 0, 9, 9, 0, 0, '1 Box', 0, '2020-09-28 18:53:40', '2020-09-28 18:53:40');
INSERT INTO `products` VALUES (751, '', 'Protein_World_Multi_Vitamin_Capsules', 'Protien World Multi Vitamin Capsules', 'Protien World Multi Vitamin Capsules', '', 0, 13, 13, 0, 0, '1 Bottle', 0, '2020-09-28 18:53:44', '2020-09-28 18:53:44');
INSERT INTO `products` VALUES (752, '', 'Jarrow_Formulas', 'Jarrow Formulas Baby Jarro-Dophilus', 'Jarrow Formulas Baby Jarro-Dophilus', '', 0, 13, 13, 0, 0, '1 Bottle', 0, '2020-09-28 18:53:48', '2020-09-28 18:53:48');
INSERT INTO `products` VALUES (753, '', 'Upspring_Milkflow', 'Upspring Milkflow', 'Upspring Milkflow', '', 0, 10, 10, 0, 0, '1 Bottle', 0, '2020-09-28 18:53:51', '2020-09-28 18:53:51');
INSERT INTO `products` VALUES (754, '', 'Now_Sunflower_Lecithin', 'Now Sunflower Lecithin', 'Now Sunflower Lecithin', '', 0, 11, 11, 0, 0, '1 Bottle', 0, '2020-09-28 18:53:54', '2020-09-28 18:53:54');
INSERT INTO `products` VALUES (755, '', 'Cetaphil_Baby_Eczema_Calming_Moisturizer', 'Cetaphil Baby Eczema Calming Moisturizer', 'Cetaphil Baby Eczema Calming Moisturizer', '', 0, 2, 2, 0, 0, '1 Bottle', 0, '2020-09-28 18:53:58', '2020-09-28 18:53:58');
INSERT INTO `products` VALUES (756, '', 'Acure_Bare_Baby_4in1', 'Acure Bare Baby 4 in 1', 'Acure Bare Baby 4 in 1', '', 0, 2, 2, 0, 0, '1 Bottle', 0, '2020-09-28 18:54:02', '2020-09-28 18:54:02');
INSERT INTO `products` VALUES (757, '', 'Baby_Bubble_Bath', 'Johnson Baby Bubble Bath', 'Johnson Baby Bubble Bath', '', 0, 3, 3, 0, 0, '1 Bottle', 0, '2020-09-28 18:54:07', '2020-09-28 18:54:07');
INSERT INTO `products` VALUES (758, '', 'Aveeno_Baby_Daily_Moisture_Lotion', 'Aveeno Baby Daily Moisture Lotion', 'Aveeno Baby Daily Moisture Lotion', '', 0, 2, 2, 0, 0, '1 Bottle', 0, '2020-09-28 18:54:10', '2020-09-28 18:54:10');
INSERT INTO `products` VALUES (759, '', 'Babo_Calming_baby_Lotion', 'Babo Calming baby Lotion', 'Babo Calming baby Lotion', '', 0, 5, 5, 0, 0, '1 Bottle', 0, '2020-09-28 18:54:14', '2020-09-28 18:54:14');
INSERT INTO `products` VALUES (760, '', 'Banyan_Tulsi_Powder', 'Banyan Tulsi Powder', 'Banyan Tulsi Powder', '', 0, 1, 1, 0, 0, '1 Box', 0, '2020-09-28 18:54:18', '2020-09-28 18:54:18');
INSERT INTO `products` VALUES (761, '', 'Acp_World_Lemon_Tea', 'Acp World Lemon Tea', 'Acp World Lemon Tea', '', 0, 7, 7, 0, 0, '1 Bottle', 0, '2020-09-28 18:54:21', '2020-09-28 18:54:21');
INSERT INTO `products` VALUES (762, '', 'GNC_Tribulus', 'GNC Herbal Plus Tribulusn', 'GNC Herbal Plus Tribulusn', '', 0, 4, 4, 0, 0, '1 Bottle', 0, '2020-09-28 18:54:23', '2020-09-28 18:54:23');
INSERT INTO `products` VALUES (763, '', 'K_Pax_Dhea', 'K Pax Dhea Dietary Suppliment', 'K Pax Dhea Dietary Suppliment', '', 0, 10, 10, 0, 0, '1 Bottle', 0, '2020-09-28 18:54:27', '2020-09-28 18:54:27');
INSERT INTO `products` VALUES (764, '', 'Aavaaram_Moringa_Tablet', 'Aavaaram Moringa Tablet', 'Aavaaram Moringa Tablet', '', 0, 4, 4, 0, 0, '1 Bottle', 0, '2020-09-28 18:54:29', '2020-09-28 18:54:29');
INSERT INTO `products` VALUES (765, '', 'Krishkare_Aloe_Vera_Face_Wash', 'Krishkare Aloe Vera Face Wash', 'Krishkare Aloe Vera Face Wash', '', 0, 3, 3, 0, 0, '1 Bottle', 0, '2020-09-28 18:54:44', '2020-09-28 18:54:44');
INSERT INTO `products` VALUES (766, '', 'Medico_Herbs_Sutherlandia_Cancer_Bush_Capsules', 'Medico Herbs Sutherlandia Cancer Bush Capsules', 'Medico Herbs Sutherlandia Cancer Bush Capsules', '', 0, 15, 15, 0, 0, '1 Bottle', 0, '2020-09-28 18:54:47', '2020-09-28 18:54:47');
INSERT INTO `products` VALUES (767, '', 'Hairmax_Dietary_Supplement_For_Hair_Skin_And_Nails_60_Capsules', 'Hairmax Dietary Supplement For Hair Skin And Nails 60 Capsules', 'Hairmax Dietary Supplement For Hair Skin And Nails 60 Capsules', '', 0, 7, 7, 0, 0, '1 Bottle', 0, '2020-09-28 18:54:51', '2020-09-28 18:54:51');
INSERT INTO `products` VALUES (768, '', 'Houston_Enzymes_Biomuve_120_Capsules', 'Houston Enzymes Biomuve 120 Capsules', 'Houston Enzymes Biomuve 120 Capsules', '', 0, 8, 8, 0, 0, '1 Bottle', 0, '2020-09-28 18:54:53', '2020-09-28 18:54:53');
INSERT INTO `products` VALUES (769, '', 'Jou_Digestive_health_Dietary_supplement_270_capsules', 'Jou Digestive health Dietary supplement 270 capsules', 'Jou Digestive health Dietary supplement 270 capsules', '', 0, 8, 8, 0, 0, '1 Bottle', 0, '2020-09-28 18:54:56', '2020-09-28 18:54:56');
INSERT INTO `products` VALUES (770, '', 'Natrol_Vitamin_D3_Bone', 'Natrol Vitamin D3 Bone & Joint Health', 'Natrol Vitamin D3 Bone & Joint Health', '', 0, 6, 6, 0, 0, '1 Bottle', 0, '2020-09-28 18:54:58', '2020-09-28 18:54:58');
INSERT INTO `products` VALUES (771, '', 'Nature%27s_Bounty_Vitamin_C_500mg_250_ablets', 'Natue Bounty Vitamin c 500mg 250 Tablets', 'Natue Bounty Vitamin c 500mg 250 Tablets', '', 0, 4, 4, 0, 0, '1 Bottle', 0, '2020-09-28 18:55:01', '2020-09-28 18:55:01');
INSERT INTO `products` VALUES (772, '', 'Amandean_Wild_Caught_Fish_Marine_Collagen_Dietary_Supplement_500g', 'Amandean Wild Caught Fish Marine Collagen Dietary Supplement', 'Amandean Wild Caught Fish Marine Collagen Dietary Supplement', '', 0, 7, 7, 0, 0, '1 Bottle', 0, '2020-09-28 18:55:04', '2020-09-28 18:55:04');
INSERT INTO `products` VALUES (773, '', 'Severe_Cold_', 'Severe Cold & Flu 24 Caplets', 'Severe Cold & Flu 24 Caplets', '', 0, 1, 1, 0, 0, '1 Box', 0, '2020-09-28 18:55:08', '2020-09-28 18:55:08');
INSERT INTO `products` VALUES (774, '', 'Contac', 'Contac Cold + Flu', 'Contac Cold + Flu', '', 0, 2, 2, 0, 0, '1 BOx', 0, '2020-09-28 18:55:11', '2020-09-28 18:55:11');
INSERT INTO `products` VALUES (775, '', 'H-E-B_Daytime', 'H-E-B Daytime 16 Softgels', 'H-E-B Daytime 16 Softgels', '', 0, 1, 1, 0, 0, '1 Box', 0, '2020-09-28 18:55:15', '2020-09-28 18:55:15');
INSERT INTO `products` VALUES (776, '', 'Nurofen_Cold', 'Nurofen Cold & Flu PE', 'Nurofen Cold & Flu PE', '', 0, 2, 2, 0, 0, '1 Box', 0, '2020-09-28 18:55:17', '2020-09-28 18:55:17');
INSERT INTO `products` VALUES (777, '', 'Panadol', 'Panadol Cough & Cold', 'Panadol Cough & Cold', '', 0, 1, 1, 0, 0, '1 Box', 0, '2020-09-28 18:55:22', '2020-09-28 18:55:22');
INSERT INTO `products` VALUES (778, '', 'Lifesystems_Waterproof_First_Aid', 'Lifesystems Waterproof First Aid', 'Lifesystems Waterproof First Aid', '', 0, 20, 20, 0, 0, '1 Box', 0, '2020-09-28 18:55:25', '2020-09-28 18:55:25');
INSERT INTO `products` VALUES (779, '', 'Johnson_', 'Johnson & Johnson First Aid Kit', 'Johnson & Johnson First Aid Kit', '', 0, 24, 24, 0, 0, '1 Box', 0, '2020-09-28 18:55:29', '2020-09-28 18:55:29');
INSERT INTO `products` VALUES (780, '', 'Remote_', 'Remote Worker First Aid Kit', 'Remote Worker First Aid Kit', '', 0, 22, 22, 0, 0, '1 Box', 0, '2020-09-28 18:55:32', '2020-09-28 18:55:32');
INSERT INTO `products` VALUES (781, '', 'Red_Cross_First_Aid_Kit', 'Red Cross First Aid Kit', 'Red Cross First Aid Kit', '', 0, 18, 18, 0, 0, '1 Box', 0, '2020-09-28 18:55:34', '2020-09-28 18:55:34');
INSERT INTO `products` VALUES (782, '', 'John_First_Aid_Kit', 'St. John First Aid Kit', 'St. John First Aid Kit', '', 0, 21, 21, 0, 0, '1 Box', 0, '2020-09-28 18:55:41', '2020-09-28 18:55:41');
INSERT INTO `products` VALUES (783, '', 'DGHL_8_hour_pain_relief', 'DGHL 8 hour pain relief 50 Caplets', 'DGHL 8 hour pain relief 50 Caplets', '', 0, 5, 5, 0, 0, '1 Box', 0, '2020-09-28 18:55:43', '2020-09-28 18:55:43');
INSERT INTO `products` VALUES (784, '', 'Nurofen_Zavance', 'Nurofen Zavance 96 Tablets', 'Nurofen Zavance 96 Tablets', '', 0, 6, 6, 0, 0, '1 Box', 0, '2020-09-28 18:55:47', '2020-09-28 18:55:47');
INSERT INTO `products` VALUES (785, '', 'Bengay', 'Bengay Twin Pack', 'Bengay Twin Pack', '', 0, 2, 2, 0, 0, '1 Box', 0, '2020-09-28 18:55:51', '2020-09-28 18:55:51');
INSERT INTO `products` VALUES (786, '', 'Advil', 'Advil Liqui Gels', 'Advil Liqui Gels', '', 0, 3, 3, 0, 0, '1 Box', 0, '2020-09-28 18:55:54', '2020-09-28 18:55:54');
INSERT INTO `products` VALUES (787, '', 'Tylenol', 'Tylenol Light + Heat Therapy', 'Tylenol Light + Heat Therapy', '', 0, 3, 3, 0, 0, '1 Box', 0, '2020-09-28 18:55:58', '2020-09-28 18:55:58');
INSERT INTO `products` VALUES (788, '', 'Nicorette', 'Nicorette 2mg Gum', 'Nicorette 2mg Gum', '', 0, 7, 7, 0, 0, '1 Box', 0, '2020-09-28 18:56:01', '2020-09-28 18:56:01');
INSERT INTO `products` VALUES (789, '', 'H-E-B_Nicotine_Lozenge', 'H-E-B Mint Nicotine Lozenge', 'H-E-B Mint Nicotine Lozenge', '', 0, 8, 8, 0, 0, '1 Box', 0, '2020-09-28 18:56:05', '2020-09-28 18:56:05');
INSERT INTO `products` VALUES (790, '', 'Equate_Mini_Nicotine_Lozenges', 'Equate Mini Nicotine Lozenges', 'Equate Mini Nicotine Lozenges', '', 0, 8, 8, 0, 0, '1 Box', 0, '2020-09-28 18:56:07', '2020-09-28 18:56:07');
INSERT INTO `products` VALUES (791, '', 'Nicotinell', 'Nicotinell Mint 1mg Compressed Tablets', 'Nicotinell Mint 1mg Compressed Tablets', '', 0, 6, 6, 0, 0, '1 Box', 0, '2020-09-28 18:56:09', '2020-09-28 18:56:09');
INSERT INTO `products` VALUES (792, '', 'Nicofi', 'Nicofi Nicotine 1mg Tablets', 'Nicofi Nicotine 1mg Tablets', '', 0, 6, 6, 0, 0, '1 Box', 0, '2020-09-28 18:56:12', '2020-09-28 18:56:12');
INSERT INTO `products` VALUES (3371, '', 'coffee_blossom_honey', 'Coffee Blossom Honey', 'Coffee Blossom Honey', 'Honey is a sweet, viscous food substance made by bees and some related insects. Bees produce honey from the sugary secretions of plants (floral nectar) or from secretions of other insects (such as honeydew), by regurgitation, enzymatic activity, and water evaporation', 0, 8, 8, 0, 0, ' 2 lb', 0, '2020-09-28 16:07:54', '2020-09-28 16:07:54');
INSERT INTO `products` VALUES (3372, '', 'Alex', 'Alex', 'savename', 'sadfasdf', 0, 2, 1, 1, 0, 'asdf', 0, '2020-09-29 16:08:10', '2020-09-29 16:08:10');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `inserted_at` timestamp(0) NOT NULL,
  `updated_at` timestamp(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'admin', '2020-09-22 09:14:21', '2020-09-22 09:14:23');
INSERT INTO `roles` VALUES (2, 'staff', '2020-09-22 09:14:37', '2020-09-22 09:14:39');
INSERT INTO `roles` VALUES (3, 'customer', '2020-09-22 09:14:49', '2020-09-22 09:14:52');

-- ----------------------------
-- Table structure for sales_orders
-- ----------------------------
DROP TABLE IF EXISTS `sales_orders`;
CREATE TABLE `sales_orders`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `order_date` date NOT NULL,
  `coupon_id` int(0) NULL DEFAULT NULL,
  `session_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `customer_id` int(0) NOT NULL,
  `card_id` int(0) NULL DEFAULT NULL,
  `payment_id` int(0) NULL DEFAULT NULL,
  `delivery_time` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `delivery_address` int(0) NULL DEFAULT NULL,
  `contact_number` int(0) NULL DEFAULT NULL,
  `quantity` int(0) NULL DEFAULT NULL,
  `total` double(10, 2) NULL DEFAULT NULL,
  `discount` double(10, 2) NULL DEFAULT NULL,
  `subtotal` double(10, 2) NULL DEFAULT NULL,
  `delivery_fee` double(10, 2) NULL DEFAULT NULL,
  `inserted_at` timestamp(0) NOT NULL,
  `updated_at` timestamp(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `fk_session_sales_order`(`session_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sales_orders
-- ----------------------------
INSERT INTO `sales_orders` VALUES (1, '2020-09-29', 2, NULL, 1, 1, 1, '90 min express delivery', 6, 1, 3, 19.20, 4.80, 24.00, 0.00, '2020-09-29 12:01:59', '2020-09-29 12:01:59');

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions`  (
  `id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `data` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `inserted_at` timestamp(0) NOT NULL,
  `updated_at` timestamp(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sessions
-- ----------------------------

-- ----------------------------
-- Table structure for social
-- ----------------------------
DROP TABLE IF EXISTS `social`;
CREATE TABLE `social`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `media` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `profile_link` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `author_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of social
-- ----------------------------
INSERT INTO `social` VALUES (1, 'facebook', '', 1);
INSERT INTO `social` VALUES (2, 'facebook', '', 2);
INSERT INTO `social` VALUES (3, 'facebook', '', 3);
INSERT INTO `social` VALUES (4, 'facebook', '', 4);
INSERT INTO `social` VALUES (5, 'facebook', '', 5);
INSERT INTO `social` VALUES (6, 'facebook', '', 6);
INSERT INTO `social` VALUES (7, 'facebook', '', 7);
INSERT INTO `social` VALUES (8, 'facebook', '', 8);
INSERT INTO `social` VALUES (9, 'facebook', '', 9);
INSERT INTO `social` VALUES (10, 'facebook', '', 10);
INSERT INTO `social` VALUES (11, 'facebook', '', 11);
INSERT INTO `social` VALUES (12, 'facebook', '', 12);
INSERT INTO `social` VALUES (13, 'facebook', '', 13);
INSERT INTO `social` VALUES (14, 'facebook', '', 14);
INSERT INTO `social` VALUES (15, 'facebook', '', 15);
INSERT INTO `social` VALUES (16, 'facebook', '', 16);
INSERT INTO `social` VALUES (17, 'facebook', '', 17);
INSERT INTO `social` VALUES (18, 'facebook', '', 18);
INSERT INTO `social` VALUES (19, 'facebook', '', 19);
INSERT INTO `social` VALUES (20, 'facebook', '', 20);
INSERT INTO `social` VALUES (21, 'facebook', '', 21);
INSERT INTO `social` VALUES (22, 'facebook', '', 22);
INSERT INTO `social` VALUES (23, 'facebook', '', 23);
INSERT INTO `social` VALUES (24, 'facebook', '', 24);
INSERT INTO `social` VALUES (25, 'facebook', '', 25);
INSERT INTO `social` VALUES (26, 'facebook', '', 26);
INSERT INTO `social` VALUES (27, 'facebook', '', 27);
INSERT INTO `social` VALUES (28, 'facebook', '', 28);
INSERT INTO `social` VALUES (29, 'facebook', '', 29);
INSERT INTO `social` VALUES (30, 'facebook', '', 30);
INSERT INTO `social` VALUES (31, 'facebook', '', 31);
INSERT INTO `social` VALUES (32, 'facebook', '', 32);
INSERT INTO `social` VALUES (33, 'facebook', '', 33);
INSERT INTO `social` VALUES (34, 'facebook', '', 34);
INSERT INTO `social` VALUES (35, 'facebook', '', 35);
INSERT INTO `social` VALUES (36, 'facebook', '', 36);
INSERT INTO `social` VALUES (37, 'facebook', '', 37);
INSERT INTO `social` VALUES (38, 'facebook', '', 38);
INSERT INTO `social` VALUES (39, 'facebook', '', 39);
INSERT INTO `social` VALUES (40, 'facebook', '', 40);
INSERT INTO `social` VALUES (41, 'facebook', '', 41);
INSERT INTO `social` VALUES (42, 'facebook', '', 42);
INSERT INTO `social` VALUES (43, 'facebook', '', 43);
INSERT INTO `social` VALUES (44, 'facebook', '', 44);
INSERT INTO `social` VALUES (45, 'facebook', '', 45);
INSERT INTO `social` VALUES (46, 'facebook', '', 46);
INSERT INTO `social` VALUES (47, 'facebook', '', 47);
INSERT INTO `social` VALUES (48, 'facebook', '', 48);
INSERT INTO `social` VALUES (49, 'facebook', '', 49);
INSERT INTO `social` VALUES (50, 'facebook', '', 50);
INSERT INTO `social` VALUES (51, 'facebook', '', 51);
INSERT INTO `social` VALUES (52, 'facebook', '', 52);
INSERT INTO `social` VALUES (53, 'facebook', '', 53);
INSERT INTO `social` VALUES (54, 'facebook', '', 54);
INSERT INTO `social` VALUES (55, 'facebook', '', 55);
INSERT INTO `social` VALUES (56, 'facebook', '', 56);
INSERT INTO `social` VALUES (57, 'facebook', '', 57);
INSERT INTO `social` VALUES (58, 'facebook', '', 58);
INSERT INTO `social` VALUES (59, 'facebook', '', 59);
INSERT INTO `social` VALUES (60, 'facebook', '', 60);
INSERT INTO `social` VALUES (61, 'facebook', '', 61);
INSERT INTO `social` VALUES (62, 'facebook', '', 62);

-- ----------------------------
-- Table structure for staff
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contact_number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role_id` int(0) NULL DEFAULT NULL,
  `inserted_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of staff
-- ----------------------------

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `inserted_at` timestamp(0) NOT NULL,
  `updated_at` timestamp(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tags
-- ----------------------------
INSERT INTO `tags` VALUES (1, 'Grocery', 'grocery', 'FruitsVegetable', '2020-09-18 18:08:31', '2020-09-18 18:08:31');
INSERT INTO `tags` VALUES (2, 'Bags', 'bags', 'Handbag', '2020-09-18 18:08:31', '2020-09-18 18:08:31');
INSERT INTO `tags` VALUES (3, 'Clothing', 'clothing', 'DressIcon', '2020-09-18 18:08:32', '2020-09-18 18:08:32');
INSERT INTO `tags` VALUES (4, 'Makeup', 'makeup', 'FacialCare', '2020-09-18 18:08:33', '2020-09-18 18:08:33');
INSERT INTO `tags` VALUES (5, 'Book', 'book', 'Book', '2020-09-22 14:41:04', '2020-09-18 18:08:33');
INSERT INTO `tags` VALUES (6, 'Furniture', 'furniture', 'FurnitureIcon', '2020-09-22 14:41:42', '2020-09-18 18:08:33');
INSERT INTO `tags` VALUES (7, 'Medicine', 'medicine', 'BookIcon', '2020-09-22 14:41:45', '2020-09-18 18:08:33');
INSERT INTO `tags` VALUES (8, 'Restaurant', 'restaurant', 'Restaurant', '2020-09-22 16:41:09', '2020-09-22 16:41:12');

-- ----------------------------
-- Table structure for user_profile
-- ----------------------------
DROP TABLE IF EXISTS `user_profile`;
CREATE TABLE `user_profile`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NOT NULL,
  `primary_address` int(0) NOT NULL,
  `primary_contact` int(0) NOT NULL,
  `primary_card` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_profile
-- ----------------------------
INSERT INTO `user_profile` VALUES (1, 1, 6, 1, 1);
INSERT INTO `user_profile` VALUES (2, 2, 3, 3, 5);

-- ----------------------------
-- Table structure for user_roles
-- ----------------------------
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles`  (
  `user_id` int(0) NOT NULL,
  `role_id` int(0) NOT NULL,
  `inserted_at` timestamp(0) NOT NULL,
  `updated_at` timestamp(0) NOT NULL,
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_roles
-- ----------------------------
INSERT INTO `user_roles` VALUES (1, 1, '2020-09-22 09:15:16', '2020-09-22 09:15:18');
INSERT INTO `user_roles` VALUES (2, 3, '2020-09-22 11:23:10', '2020-09-22 11:23:13');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `active` tinyint(1) NULL DEFAULT 1,
  `inserted_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'jhondDoe@demo.com', '', 'Jhon Doe Smith', NULL, 1, '2020-09-23 11:31:07', '2020-09-23 11:31:07');
INSERT INTO `users` VALUES (2, 'jhondDoe@demo.com', '', 'Jhon Doe Smith', NULL, 1, '2020-09-23 11:31:09', '2020-09-23 11:31:09');
INSERT INTO `users` VALUES (3, 'hello', 'd58e3582afa99040e27b92b13c8f2280', 'Hello test', NULL, 1, '2020-10-02 20:30:35', '2020-10-02 20:30:41');
INSERT INTO `users` VALUES (5, 'viktor.tt65@outlook.com', '200f9319fc232a9254b275f0dcaad797', 'Viktor Titov', 'user.jpg', 1, '2020-10-02 12:45:07', '2020-10-02 12:45:10');

-- ----------------------------
-- View structure for get_categories
-- ----------------------------
DROP VIEW IF EXISTS `get_categories`;
CREATE VIEW `get_categories` AS select `t`.`id` AS `id`,`t`.`name` AS `name`,`t`.`slug` AS `slug`,`t`.`tag_id` AS `tag_id`,`t`.`icon` AS `icon`,`t`.`inserted_at` AS `inserted_at`,`t`.`child_ids` AS `child_ids`,`t`.`child_names` AS `child_names`,`t`.`child_slugs` AS `child_slugs`,`t`.`child_icons` AS `child_icons`,`t`.`child_inserted_ats` AS `child_inserted_ats`,`tags`.`slug` AS `type` from ((select `ca`.`id` AS `id`,`ca`.`name` AS `name`,`ca`.`slug` AS `slug`,`ca`.`tag_id` AS `tag_id`,`ca`.`icon` AS `icon`,`ca`.`inserted_at` AS `inserted_at`,group_concat(`cc`.`id` separator '^^^') AS `child_ids`,group_concat(`cc`.`name` separator '^^^') AS `child_names`,group_concat(`cc`.`slug` separator '^^^') AS `child_slugs`,group_concat(ifnull(`cc`.`icon`,'NULL') separator '^^^') AS `child_icons`,group_concat(`cc`.`inserted_at` separator '^^^') AS `child_inserted_ats` from (`categories` `ca` left join `categories` `cc` on((`ca`.`id` = `cc`.`parent_id`))) where (`ca`.`parent_id` is null) group by `ca`.`id`) `t` join `tags`) where (`t`.`tag_id` = `tags`.`id`);

-- ----------------------------
-- View structure for get_customers
-- ----------------------------
DROP VIEW IF EXISTS `get_customers`;
CREATE VIEW `get_customers` AS select `u`.`id` AS `id`,`u`.`email` AS `email`,`u`.`name` AS `name`,`u`.`password` AS `PASSWORD`,`u`.`avatar` AS `avatar`,`a`.`address_ids` AS `address_ids`,`a`.`titles` AS `titles`,`a`.`addresses` AS `addresses`,`p`.`contact_ids` AS `contact_ids`,`p`.`numbers` AS `numbers`,`c`.`card_ids` AS `card_ids`,`c`.`card_types` AS `card_types`,`c`.`cards` AS `cards`,`up`.`primary_address` AS `primary_address`,`up`.`primary_card` AS `primary_card`,`up`.`primary_contact` AS `primary_contact`,`o`.`order_amount` AS `order_amount`,`o`.`order_number` AS `order_number`,`u`.`inserted_at` AS `inserted_at` from (((((`users` `u` left join (select `address`.`user_id` AS `user_id`,group_concat(`address`.`id` separator '^^^') AS `address_ids`,group_concat(`address`.`title` separator '^^^') AS `titles`,group_concat(`address`.`address` separator '^^^') AS `addresses` from `address` group by `address`.`user_id`) `a` on((`u`.`id` = `a`.`user_id`))) left join (select `contact`.`user_id` AS `user_id`,group_concat(`contact`.`id` separator '^^^') AS `contact_ids`,group_concat(`contact`.`contact_number` separator '^^^') AS `numbers` from `contact` group by `contact`.`user_id`) `p` on((`u`.`id` = `p`.`user_id`))) left join (select `card`.`user_id` AS `user_id`,group_concat(`card`.`id` separator '^^^') AS `card_ids`,group_concat(`card`.`type` separator '^^^') AS `card_types`,group_concat(`card`.`card` separator '^^^') AS `cards` from `card` group by `card`.`user_id`) `c` on((`u`.`id` = `c`.`user_id`))) left join `user_profile` `up` on((`u`.`id` = `up`.`user_id`))) left join (select `get_orders`.`customer_id` AS `customer_id`,count(0) AS `order_number`,sum(`get_orders`.`total`) AS `order_amount` from `get_orders` group by `get_orders`.`customer_id`) `o` on((`u`.`id` = `o`.`customer_id`)));

-- ----------------------------
-- View structure for get_orders
-- ----------------------------
DROP VIEW IF EXISTS `get_orders`;
CREATE VIEW `get_orders` AS select `s`.`id` AS `id`,`s`.`customer_id` AS `customer_id`,`c`.`card` AS `card`,`co`.`code` AS `code`,`a`.`address` AS `deliveryAddress`,`t`.`contact_number` AS `deliveryContact`,`s`.`delivery_time` AS `deliveryTime`,`s`.`delivery_fee` AS `deliveryFee`,`s`.`total` AS `total`,`s`.`discount` AS `discount`,`s`.`subtotal` AS `subtotal`,`s`.`quantity` AS `quantity`,`pm`.`name` AS `payment_method`,`tr`.`status` AS `status`,`s`.`order_date` AS `date`,`op`.`product_ids` AS `product_ids`,`op`.`product_images` AS `product_images`,`op`.`product_prices` AS `product_prices`,`op`.`product_titles` AS `product_titles`,`op`.`product_units` AS `product_units`,`op`.`product_quantities` AS `product_quantities`,`op`.`product_types` AS `product_types` from ((((((((`sales_orders` `s` join `order_products` `p`) join `address` `a`) join `contact` `t`) join `card` `c`) join `cc_transactions` `tr`) join `coupons` `co`) join `payment_mothod` `pm`) join (select `order_products`.`order_id` AS `order_id`,group_concat(`order_products`.`product_id` separator '^^^') AS `product_ids`,group_concat(`order_products`.`name` separator '^^^') AS `product_titles`,group_concat(`order_products`.`image` separator '^^^') AS `product_images`,group_concat(`order_products`.`price` separator '^^^') AS `product_prices`,group_concat(`order_products`.`unit` separator '^^^') AS `product_units`,group_concat(`order_products`.`quantity` separator '^^^') AS `product_quantities`,group_concat(`tags`.`name` separator '^^^') AS `product_types` from (`order_products` join `tags`) where (`order_products`.`tag_id` = `tags`.`id`) group by `order_products`.`order_id`) `op`) where ((`s`.`id` = `p`.`order_id`) and (`s`.`delivery_address` = `a`.`id`) and (`s`.`contact_number` = `t`.`id`) and (`s`.`card_id` = `c`.`id`) and (`s`.`id` = `tr`.`order_id`) and (`s`.`id` = `op`.`order_id`) and (`s`.`payment_id` = `pm`.`id`) and (`s`.`coupon_id` = `co`.`id`)) group by `s`.`id` order by `s`.`id` desc;

-- ----------------------------
-- View structure for get_user_profiles
-- ----------------------------
DROP VIEW IF EXISTS `get_user_profiles`;
CREATE VIEW `get_user_profiles` AS select `u`.`id` AS `id`,`u`.`email` AS `email`,`u`.`name` AS `name`,`u`.`password` AS `password`,`u`.`avatar` AS `avatar`,`a`.`address_ids` AS `address_ids`,`a`.`titles` AS `titles`,`a`.`addresses` AS `addresses`,`p`.`contact_ids` AS `contact_ids`,`p`.`numbers` AS `numbers`,`c`.`card_ids` AS `card_ids`,`c`.`card_types` AS `card_types`,`c`.`cards` AS `cards`,`up`.`primary_address` AS `primary_address`,`up`.`primary_card` AS `primary_card`,`up`.`primary_contact` AS `primary_contact` from ((((`users` `u` left join (select `address`.`user_id` AS `user_id`,group_concat(`address`.`id` separator '^^^') AS `address_ids`,group_concat(`address`.`title` separator '^^^') AS `titles`,group_concat(`address`.`address` separator '^^^') AS `addresses` from `address` group by `address`.`user_id`) `a` on((`u`.`id` = `a`.`user_id`))) left join (select `contact`.`user_id` AS `user_id`,group_concat(`contact`.`id` separator '^^^') AS `contact_ids`,group_concat(`contact`.`contact_number` separator '^^^') AS `numbers` from `contact` group by `contact`.`user_id`) `p` on((`u`.`id` = `p`.`user_id`))) left join (select `card`.`user_id` AS `user_id`,group_concat(`card`.`id` separator '^^^') AS `card_ids`,group_concat(`card`.`type` separator '^^^') AS `card_types`,group_concat(`card`.`card` separator '^^^') AS `cards` from `card` group by `card`.`user_id`) `c` on((`u`.`id` = `c`.`user_id`))) left join `user_profile` `up` on((`u`.`id` = `up`.`user_id`)));

-- ----------------------------
-- View structure for view_products
-- ----------------------------
DROP VIEW IF EXISTS `view_products`;
CREATE VIEW `view_products` AS select `ap`.`id` AS `id`,`ap`.`slug` AS `slug`,`ap`.`title` AS `title`,`ap`.`image` AS `image`,`ap`.`description` AS `description`,`ap`.`product_status_id` AS `product_status_id`,`ap`.`regular_price` AS `regular_price`,`ap`.`discount_price` AS `discount_price`,`ap`.`discount_percent` AS `discount_percent`,`ap`.`quantity` AS `quantity`,`ap`.`unit` AS `unit`,`ap`.`taxable` AS `taxable`,`ap`.`inserted_at` AS `inserted_at`,`ap`.`updated_at` AS `updated_at`,`ap`.`category_ids` AS `category_ids`,`ap`.`category_names` AS `category_names`,`ap`.`category_slugs` AS `category_slugs`,`ap`.`tag_slug` AS `tag_slug`,`tc`.`id` AS `author_id`,`tc`.`NAME` AS `author_name`,`tc`.`avatar` AS `avatar`,`tc`.`bio` AS `bio`,`tc`.`email` AS `email`,`tc`.`website` AS `website`,`tc`.`profile_links` AS `profile_links`,`tc`.`medias` AS `medias`,`tc`.`social_ids` AS `social_ids`,`tc`.`meta_id` AS `meta_id`,`tc`.`country` AS `country`,`tc`.`edition` AS `edition`,`tc`.`isbn` AS `isbn`,`tc`.`languages` AS `languages`,`tc`.`numberOfPage` AS `numberOfPage`,`tc`.`numberOfReader` AS `numberOfReader`,`tc`.`publisher` AS `publisher`,`tc`.`samplePDF` AS `samplePDF` from ((select `p`.`id` AS `id`,`p`.`slug` AS `slug`,`p`.`name` AS `title`,`p`.`image` AS `image`,`p`.`description` AS `description`,`p`.`product_status_id` AS `product_status_id`,`p`.`regular_price` AS `regular_price`,`p`.`discount_price` AS `discount_price`,`p`.`discount_percent` AS `discount_percent`,`p`.`quantity` AS `quantity`,`p`.`unit` AS `unit`,`p`.`taxable` AS `taxable`,`p`.`inserted_at` AS `inserted_at`,`p`.`updated_at` AS `updated_at`,group_concat(`pc`.`category_id` separator '^^^') AS `category_ids`,group_concat(`c`.`name` separator '^^^') AS `category_names`,group_concat(`c`.`slug` separator '^^^') AS `category_slugs`,`t`.`slug` AS `tag_slug` from ((((`products` `p` join `product_categories` `pc`) join `categories` `c`) join `product_tags` `pt`) join `tags` `t`) where ((`p`.`id` = `pc`.`product_id`) and (`c`.`id` = `pc`.`category_id`) and (`p`.`id` = `pt`.`product_id`) and (`pt`.`tag_id` = `t`.`id`)) group by `p`.`id`) `ap` left join (select `a`.`id` AS `id`,`a`.`product_id` AS `product_id`,`a`.`name` AS `NAME`,`a`.`avatar` AS `avatar`,`a`.`bio` AS `bio`,`a`.`email` AS `email`,`a`.`website` AS `website`,group_concat(`sc`.`profile_link` separator '^^^') AS `profile_links`,group_concat(`sc`.`media` separator '^^^') AS `medias`,group_concat(`sc`.`id` separator '^^^') AS `social_ids`,`mt`.`id` AS `meta_id`,`mt`.`country` AS `country`,`mt`.`edition` AS `edition`,`mt`.`isbn` AS `isbn`,`mt`.`languages` AS `languages`,`mt`.`numberOfPage` AS `numberOfPage`,`mt`.`numberOfReader` AS `numberOfReader`,`mt`.`publisher` AS `publisher`,`mt`.`samplePDF` AS `samplePDF` from ((`author` `a` join `social` `sc`) join `meta` `mt`) where ((`a`.`id` = `sc`.`author_id`) and (`a`.`product_id` = `mt`.`product_id`)) group by `a`.`product_id`) `tc` on((`ap`.`id` = `tc`.`product_id`)));

SET FOREIGN_KEY_CHECKS = 1;
