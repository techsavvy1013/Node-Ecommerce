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

 Date: 17/09/2020 19:44:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `parent_id` int(0) NULL DEFAULT NULL,
  `inserted_at` timestamp(0) NOT NULL,
  `updated_at` timestamp(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------

-- ----------------------------
-- Table structure for cc_transactions
-- ----------------------------
DROP TABLE IF EXISTS `cc_transactions`;
CREATE TABLE `cc_transactions`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `order_id` int(0) NOT NULL,
  `transdate` timestamp(0) NULL DEFAULT NULL,
  `processor` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `processor_trans_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `amount` decimal(10, 0) NOT NULL,
  `cc_num` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `cc_type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `response` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `inserted_at` timestamp(0) NOT NULL,
  `updated_at` timestamp(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cc_transactions
-- ----------------------------
INSERT INTO `cc_transactions` VALUES (1, NULL, 0, NULL, '', '', 0, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for coupons
-- ----------------------------
DROP TABLE IF EXISTS `coupons`;
CREATE TABLE `coupons`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `active` tinyint(1) NULL DEFAULT 1,
  `value` decimal(10, 0) NULL DEFAULT NULL,
  `multiple` tinyint(1) NULL DEFAULT 0,
  `start_date` timestamp(0) NULL DEFAULT NULL,
  `end_date` timestamp(0) NULL DEFAULT NULL,
  `inserted_at` timestamp(0) NOT NULL,
  `updated_at` timestamp(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of coupons
-- ----------------------------

-- ----------------------------
-- Table structure for order_products
-- ----------------------------
DROP TABLE IF EXISTS `order_products`;
CREATE TABLE `order_products`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` int(0) NULL DEFAULT NULL,
  `sku` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `price` decimal(10, 0) NOT NULL,
  `quantity` int(0) NOT NULL,
  `subtotal` decimal(10, 0) NOT NULL,
  `inserted_at` timestamp(0) NOT NULL,
  `updated_at` timestamp(0) NOT NULL,
  `unit` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_products
-- ----------------------------

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
  `tag_id` int(0) NOT NULL,
  `inserted_at` timestamp(0) NOT NULL,
  `updated_at` timestamp(0) NOT NULL,
  PRIMARY KEY (`product_id`, `tag_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_tags
-- ----------------------------

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
  `quantity` int(0) NULL DEFAULT 0,
  `unit` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `taxable` tinyint(1) NULL DEFAULT 0,
  `inserted_at` timestamp(0) NOT NULL,
  `updated_at` timestamp(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, '', 'banana', 'Banana', 'https://s3.amazonaws.com/redqteam.com/pickbazar/banana.jpg', 'A banana is an edible fruit – botanically a berry – produced by several kinds of large herbaceous flowering plants in the genus Musa. In some countries, bananas used for cooking may be called plantains distinguishing them from dessert bananas.', 0, 10, 9, 0, '8 pc(s)', 0, '2020-09-10 10:45:35', '2020-09-10 10:45:35');
INSERT INTO `products` VALUES (2, '', 'onions', 'Onions', 'https://s3.amazonaws.com/redqteam.com/pickbazar/onions.jpg', 'The onion, also known as the bulb onion or common onion, is a vegetable that is the most widely cultivated species of the genus Allium. Its close relatives include the garlic, shallot, leek, chive, and Chinese onion.', 0, 8, 7, 0, '10 lb', 0, '2020-09-10 10:45:35', '2020-09-10 10:45:35');
INSERT INTO `products` VALUES (3, '', 'blue-grapes', 'Blue Grapes', 'https://s3.amazonaws.com/redqteam.com/pickbazar/blue_grapes.jpg', 'he Concord grape is a cultivar derived from the grape species Vitis labrusca (also called fox grape) that are used as table grapes, wine grapes and juice grapes. ... The skin of a Concord grape is typically dark blue or purple, and often is covered with a lighter-coloured epicuticular wax bloom that can be rubbed off.', 0, 12, 11, 0, '10 lb', 0, '2020-09-10 10:45:35', '2020-09-10 10:45:35');
INSERT INTO `products` VALUES (4, '', 'coconut', 'Coconut', 'https://s3.amazonaws.com/redqteam.com/pickbazar/cocnut.jpg', 'The coconut tree is a member of the palm tree family and the only known living species of the genus Cocos. The term coconut can refer to the whole coconut palm, the seed, or the fruit, which botanically is a drupe, not a nut.', 0, 8, 7, 0, '1 pc(s)', 0, '2020-09-10 10:45:36', '2020-09-10 10:45:36');
INSERT INTO `products` VALUES (5, '', 'garlic', 'Garlic', 'https://s3.amazonaws.com/redqteam.com/pickbazar/garlic.jpg', 'Garlic is a species in the onion genus, Allium. Its close relatives include the onion, shallot, leek, chive, and Chinese onion. Garlic is native to Central Asia and northeastern Iran, and has long been a common seasoning worldwide, with a history of several thousand years of human consumption and use.', 0, 5, 4, 0, '15 lb', 0, '2020-09-10 10:45:36', '2020-09-10 10:45:36');
INSERT INTO `products` VALUES (6, '', 'green-apple', 'Green Apple', 'https://s3.amazonaws.com/redqteam.com/pickbazar/Green_Apple.jpg', 'An apple is a sweet, edible fruit produced by an apple tree (Malus domestica). Apple trees are ... The skin of ripe apples is generally red, yellow, green, pink, or russetted, though many bi- or tri-colored cultivars may be found. ', 0, 11, 9, 0, '20 lb', 0, '2020-09-10 10:45:36', '2020-09-10 10:45:36');
INSERT INTO `products` VALUES (7, '', 'guava', 'Guava', 'https://s3.amazonaws.com/redqteam.com/pickbazar/guava.jpg', 'Guava is a common tropical fruit cultivated in many tropical and subtropical regions. Psidium guajava is a small tree in the myrtle family, native to Mexico, Central America, the Caribbean and northern South America. ', 0, 18, 16, 0, '20 lb', 0, '2020-09-10 10:45:37', '2020-09-10 10:45:37');
INSERT INTO `products` VALUES (8, '', 'lemon', 'Lemon', 'https://s3.amazonaws.com/redqteam.com/pickbazar/lemon.jpg', 'The lemon, Citrus limon Osbeck, is a species of small evergreen tree in the flowering plant family Rutaceae, native to South Asia, primarily North eastern India.', 0, 15, 12, 0, '4 pc(s)', 0, '2020-09-10 10:45:37', '2020-09-10 10:45:37');
INSERT INTO `products` VALUES (9, '', 'oranges', 'Oranges', 'https://s3.amazonaws.com/redqteam.com/pickbazar/oranges.jpg', 'The orange is the fruit of the citrus species Citrus × sinensis in the family Rutaceae. It is also called sweet orange, to distinguish it from the related Citrus × aurantium, referred to as bitter orange. The sweet orange reproduces asexually; varieties of sweet orange arise through mutations.', 0, 20, 17, 0, '20 lb', 0, '2020-09-10 10:45:37', '2020-09-10 10:45:37');
INSERT INTO `products` VALUES (10, '', 'pepper', 'Pepper', 'https://s3.amazonaws.com/redqteam.com/pickbazar/pepper.jpg', 'Black pepper is a flowering vine in the family Piperaceae, cultivated for its fruit, known as a peppercorn, which is usually dried and used as a spice and seasoning. When fresh and fully mature, it is about 5 mm in diameter and dark red, and contains a single seed, like all drupes', 0, 10, 8, 0, '15 lb', 0, '2020-09-10 10:45:37', '2020-09-10 10:45:37');
INSERT INTO `products` VALUES (11, '', 'pineapple', 'Pineapple', 'https://s3.amazonaws.com/redqteam.com/pickbazar/pineapple.jpg', 'The pineapple is a tropical plant with an edible fruit, also called pineapples, and the most economically significant plant in the family Bromeliaceae. Pineapples may be cultivated from the offset produced at the top of the fruit, possibly flowering in five to ten months and fruiting in the following six months', 0, 25, 20, 0, '1 pc(s)', 0, '2020-09-10 10:45:38', '2020-09-10 10:45:38');
INSERT INTO `products` VALUES (12, '', 'pomegranate', 'Pomegranate', 'https://s3.amazonaws.com/redqteam.com/pickbazar/pomegranate.jpg', 'The pomegranate is a fruit-bearing deciduous shrub in the family Lythraceae, subfamily Punicoideae, that grows between 5 and 10 m tall. The fruit is typically in season in the Northern Hemisphere from September to February, and in the Southern Hemisphere from March to May.', 0, 30, 21, 0, '20 lb', 0, '2020-09-10 10:45:38', '2020-09-10 10:45:38');
INSERT INTO `products` VALUES (13, '', 'red-apple', 'Red Apple', 'https://s3.amazonaws.com/redqteam.com/pickbazar/red_apple.jpg', 'An apple is a sweet, edible fruit produced by an apple tree. Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today. ', 0, 30, 21, 0, '10 lb', 0, '2020-09-10 10:45:38', '2020-09-10 10:45:38');
INSERT INTO `products` VALUES (14, '', 'red-grapes', 'Red Grapes', 'https://s3.amazonaws.com/redqteam.com/pickbazar/red_grapes.jpg', 'A grape is a fruit, botanically a berry, of the deciduous woody vines of the flowering plant genus Vitis. Grapes can be eaten fresh as table grapes or they can be used for making wine, jam, juice, jelly, grape seed extract, raisins, vinegar, and grape seed oil.', 0, 10, 8, 0, '10 lb', 0, '2020-09-10 10:45:39', '2020-09-10 10:45:39');
INSERT INTO `products` VALUES (15, '', 'strawbery', 'Strawberry', 'https://s3.amazonaws.com/redqteam.com/pickbazar/strawberry.jpg', 'The garden strawberry is a widely grown hybrid species of the genus Fragaria, collectively known as the strawberries, which are cultivated worldwide for their fruit. The fruit is widely appreciated for its characteristic aroma, bright red color, juicy texture, and sweetness.', 0, 40, 20, 0, '10 lb', 0, '2020-09-10 10:45:39', '2020-09-10 10:45:39');
INSERT INTO `products` VALUES (16, '', 'tomatoes', 'Tomatoes', 'https://s3.amazonaws.com/redqteam.com/pickbazar/tomatoes.jpg', 'The tomato is the edible, often red, berry of the plant Solanum lycopersicum, commonly known as a tomato plant. The species originated in western South America. The Nahuatl word tomatl gave rise to the Spanish word tomate, from which the English word tomato derived.', 0, 5, 4, 0, '10 lb', 0, '2020-09-10 10:45:39', '2020-09-10 10:45:39');
INSERT INTO `products` VALUES (17, '', 'watermelon', 'Watermelon', 'https://s3.amazonaws.com/redqteam.com/pickbazar/watermelon.jpg', 'Citrullus lanatus is a plant species in the family Cucurbitaceae, a vine-like flowering plant originating in West Africa. It is cultivated for its fruit.', 0, 30, 24, 0, '10 lb', 0, '2020-09-10 10:45:40', '2020-09-10 10:45:40');
INSERT INTO `products` VALUES (18, '', 'sardine', 'Sardine', 'https://s3.amazonaws.com/redqteam.com/pickbazar/sardine.jpg', 'Sardine and pilchard are common names used to refer to various small, oily fish in the herring family Clupeidae. The term sardine was first used in English during the early 15th century and may come from the Mediterranean island of Sardinia, around which sardines were once abundant', 0, 25, 23, 0, '1 pc(s)', 0, '2020-09-10 10:45:40', '2020-09-10 10:45:40');
INSERT INTO `products` VALUES (19, '', 'salmon', 'Salmon', 'https://s3.amazonaws.com/redqteam.com/pickbazar/snapper.jpg', 'Salmon is the common name for several species of ray-finned fish in the family Salmonidae. Other fish in the same family include trout, char, grayling and whitefish. Salmon are native to tributaries of the North Atlantic and Pacific Ocean', 0, 35, 28, 0, '1 pc(s)', 0, '2020-09-10 10:45:40', '2020-09-10 10:45:40');
INSERT INTO `products` VALUES (20, '', 'tuna', 'Tuna', 'https://s3.amazonaws.com/redqteam.com/pickbazar/tuna.jpg', 'A tuna is a saltwater fish that belongs to the tribe Thunnini, a subgrouping of the Scombridae family. The Thunnini comprise 15 species across five genera, the sizes of which vary greatly, ranging from the bullet tuna up to the Atlantic bluefin tuna. The bluefin averages 2 m, and is believed to live up to 50 years.', 0, 15, 12, 0, '1 pc(s)', 0, '2020-09-10 10:45:40', '2020-09-10 10:45:40');
INSERT INTO `products` VALUES (21, '', 'cod', 'Cod', 'https://s3.amazonaws.com/redqteam.com/pickbazar/cod.jpg', 'Cod is the common name for the demersal fish genus Gadus, belonging to the family Gadidae. Cod is also used as part of the common name for a number of other fish species, and some species suggested to belong to genus Gadus are not called cod.', 0, 20, 12, 0, '1 pc(s)', 0, '2020-09-10 10:45:41', '2020-09-10 10:45:41');
INSERT INTO `products` VALUES (22, '', 'trout', 'Trout', 'https://s3.amazonaws.com/redqteam.com/pickbazar/trout.jpg', 'Trout is the common name for a number of species of freshwater fish belonging to the genera Oncorhynchus, Salmo and Salvelinus, all of the subfamily Salmoninae of the family Salmonidae.', 0, 30, 15, 0, '1 pc(s)', 0, '2020-09-10 10:45:41', '2020-09-10 10:45:41');
INSERT INTO `products` VALUES (23, '', 'snapper', 'Snapper', 'https://s3.amazonaws.com/redqteam.com/pickbazar/snapper.jpg', 'The northern red snapper is a species of snapper native to the western Atlantic Ocean including the Gulf of Mexico, where it inhabits environments associated with reefs. This species is commercially important and is also sought-after as a game fish.', 0, 40, 32, 0, '1 pc(s)', 0, '2020-09-10 10:45:41', '2020-09-10 10:45:41');
INSERT INTO `products` VALUES (24, '', 'tilapia', 'Tilapia', 'https://s3.amazonaws.com/redqteam.com/pickbazar/talapia.jpg', 'Tilapia is the common name for nearly a hundred species of cichlid fish from the tilapiine cichlid tribe. Tilapia are mainly freshwater fish inhabiting shallow streams, ponds, rivers, and lakes, and less commonly found living in brackish water.', 0, 45, 36, 0, '1 pc(s)', 0, '2020-09-10 10:45:42', '2020-09-10 10:45:42');
INSERT INTO `products` VALUES (25, '', 'perch', 'Perch', 'https://s3.amazonaws.com/redqteam.com/pickbazar/perch.jpg', 'Perch is a common name for fish of the genus Perca, freshwater gamefish belonging to the family Percidae.', 0, 40, 36, 0, '1 pc(s)', 0, '2020-09-10 10:45:42', '2020-09-10 10:45:42');
INSERT INTO `products` VALUES (26, '', 'haddock', 'Haddock', 'https://s3.amazonaws.com/redqteam.com/pickbazar/haddock.jpg', 'The haddock is a saltwater fish from the family Gadidae, the true cods, it is the only species in the monotypic genus Melanogrammus. It is found in the North Atlantic Ocean and associated seas where it is an important species for fisheries, especially in northern Europe.', 0, 40, 36, 0, '1 pc(s)', 0, '2020-09-10 10:45:42', '2020-09-10 10:45:42');
INSERT INTO `products` VALUES (27, '', 'carp', 'Carp', 'https://s3.amazonaws.com/redqteam.com/pickbazar/carp.jpg', 'Carp are various species of oily freshwater fish from the family Cyprinidae, a very large group of fish native to Europe and Asia.', 0, 20, 18, 0, '1 pc(s)', 0, '2020-09-10 10:45:42', '2020-09-10 10:45:42');
INSERT INTO `products` VALUES (28, '', 'mackerel', 'Mackerel', 'https://s3.amazonaws.com/redqteam.com/pickbazar/Mackerel.jpg', 'Mackerel is a common name applied to a number of different species of pelagic fish, mostly from the family Scombridae. They are found in both temperate and tropical seas, mostly living along the coast or offshore in the oceanic environment.', 0, 35, 28, 0, '1 pc(s)', 0, '2020-09-10 10:45:43', '2020-09-10 10:45:43');
INSERT INTO `products` VALUES (29, '', 'chicken-brest', 'Chicken Brest', 'https://s3.amazonaws.com/redqteam.com/pickbazar/Chicken_Brest.jpg', 'Chicken is the most common type of poultry in the world. Owing to the relative ease and low cost of raising them in comparison to animals such as cattle or hogs, chickens have become prevalent throughout the cuisine of cultures around the world, and their meat has been variously adapted to regional tastes', 0, 5, 4, 0, '10 lb', 0, '2020-09-10 10:45:43', '2020-09-10 10:45:43');
INSERT INTO `products` VALUES (30, '', 'boneless-beef', 'Boneless Beef', 'https://s3.amazonaws.com/redqteam.com/pickbazar/boneless_beef.jpg', 'Cuts of beef are first divided into primal cuts, pieces of meat initially separated from the carcass ... The trimmings and some whole boneless chucks are ground for ground beef.', 0, 10, 9, 0, '10 lb', 0, '2020-09-10 10:45:43', '2020-09-10 10:45:43');
INSERT INTO `products` VALUES (31, '', 'beef', 'Beef', 'https://s3.amazonaws.com/redqteam.com/pickbazar/beef.jpg', 'Beef is the culinary name for meat from cattle, particularly skeletal muscle. Humans have been eating beef since prehistoric times. Beef is a source of high-quality protein and nutrients.', 0, 8, 7, 0, '10 lb', 0, '2020-09-10 10:45:44', '2020-09-10 10:45:44');
INSERT INTO `products` VALUES (32, '', 'shoulder-beef', 'Shoulder Beef', 'https://s3.amazonaws.com/redqteam.com/pickbazar/shoulder_beef.jpg', 'The beef clod or shoulder clod is one of the least expensive cuts of beef and is taken from the shoulder region of the animal. Beef clod is a large muscle system, with some fat that covers the muscles.', 0, 12, 11, 0, '10 lb', 0, '2020-09-10 10:45:44', '2020-09-10 10:45:44');
INSERT INTO `products` VALUES (33, '', 'boneless-lamb', 'Boneless Lamb', 'https://s3.amazonaws.com/redqteam.com/pickbazar/bonelss_lamb.jpg', 'A meat chop is a cut of meat cut perpendicular to the spine, and usually containing a rib or riblet part of a vertebra and served as an individual portion. The most common kinds of meat chops are pork and lamb. A thin boneless chop, or one with only the rib bone, may be called a cutlet, ', 0, 15, 12, 0, '10 lb', 0, '2020-09-10 10:45:44', '2020-09-10 10:45:44');
INSERT INTO `products` VALUES (34, '', 'lamb-chops', 'Lamb Chops', 'https://s3.amazonaws.com/redqteam.com/pickbazar/lamb_chops.jpg', 'Lamb chop or Lambchop may refer to: Meat chop of lamb. Lamb meat · Lamb Chop (puppet), a sock puppet sheep created by Shari Lewis and now played by .', 0, 20, 12, 0, '10 lb', 0, '2020-09-10 10:45:45', '2020-09-10 10:45:45');
INSERT INTO `products` VALUES (35, '', 'advent-laptop-bag', 'Advent Laptop Bag', 'https://s3.amazonaws.com/redqteam.com/pickbazar/Advent_laptop_bags.jpg', 'Material: Laptop Shoulder Bag is made of quality canvas, protecting your laptop from dust, scratches and water', 0, 200, 160, 0, '1 pc(s)', 0, '2020-09-10 10:45:45', '2020-09-10 10:45:45');
INSERT INTO `products` VALUES (36, '', 'alex-maqueen-shoulder-bag', 'Alex Maqueeen Shoulder Bag', 'https://s3.amazonaws.com/redqteam.com/pickbazar/Alex_maquine_shoulder.jpg', 'Luxury British fashion house Alexander McQueen is famed for its exquisitely designed handbags and accessories, as showcased through this stunning black Box bag. Expertly crafted in Italy from supple calf leather, the bag is an ideal accessory choice which suits a variety of styles and occasions.', 0, 250, 200, 0, '1 pc(s)', 0, '2020-09-10 10:45:45', '2020-09-10 10:45:45');
INSERT INTO `products` VALUES (37, '', 'armani-black-wallet', 'Armani Black Wallet', 'https://s3.amazonaws.com/redqteam.com/pickbazar/Armani_black_wallet.jpg', 'Brand New Emporio Armani Leather Wallet. Shipped with USPS First Class Package.', 0, 150, 135, 0, '1 pc(s)', 0, '2020-09-10 10:45:46', '2020-09-10 10:45:46');
INSERT INTO `products` VALUES (38, '', 'armani-handbag', 'Armani Handbag', 'https://s3.amazonaws.com/redqteam.com/pickbazar/Armani_Handbag.jpg', 'Black logo embossed messenger bag from Giorgio Armani featuring an adjustable shoulder strap, a top zip fastening and a front zip pocket.', 0, 350, 315, 0, '1 pc(s)', 0, '2020-09-10 10:45:46', '2020-09-10 10:45:46');
INSERT INTO `products` VALUES (39, '', 'armani-leather-purse', 'Armani Leather Purse', 'https://s3.amazonaws.com/redqteam.com/pickbazar/Armani_leather_purse.jpg', 'The name Giorgio Armani has become synonymous with clean lines and Italian style. One of the most recognisable fashion houses in the world, the label has dressed some of the world’s most beautiful women.', 0, 50, 40, 0, '1 pc(s)', 0, '2020-09-10 10:45:46', '2020-09-10 10:45:46');
INSERT INTO `products` VALUES (40, '', 'armani-purse', 'Armani Purse', 'https://s3.amazonaws.com/redqteam.com/pickbazar/Armani_purse.jpg', 'Black logo embossed messenger bag from Giorgio Armani featuring an adjustable shoulder strap, a top zip fastening and a front zip pocket.', 0, 80, 72, 0, '1 pc(s)', 0, '2020-09-10 10:45:46', '2020-09-10 10:45:46');
INSERT INTO `products` VALUES (41, '', 'armani-wallet', 'Armani Wallet', 'https://s3.amazonaws.com/redqteam.com/pickbazar/Armani_wallet.jpg', 'Brand New Emporio Armani Leather Wallet. Shipped with USPS First Class Package.', 0, 60, 54, 0, '1 pc(s)', 0, '2020-09-10 10:45:47', '2020-09-10 10:45:47');
INSERT INTO `products` VALUES (42, '', 'chanel-shoulder-bag', 'Chanel Shoulder Bag', 'https://s3.amazonaws.com/redqteam.com/pickbazar/chanel_shoulder_bag.jpg', '00% Authenticity Guaranteed Chanel Classic Jumbo Single Flap Black Caviar Shoulder Bag', 0, 190, 171, 0, '1 pc(s)', 0, '2020-09-10 10:45:47', '2020-09-10 10:45:47');

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
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------

-- ----------------------------
-- Table structure for sales_orders
-- ----------------------------
DROP TABLE IF EXISTS `sales_orders`;
CREATE TABLE `sales_orders`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_date` date NOT NULL,
  `total` decimal(10, 0) NOT NULL,
  `coupon_id` int(0) NULL DEFAULT NULL,
  `session_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_id` int(0) NOT NULL,
  `inserted_at` timestamp(0) NOT NULL,
  `updated_at` timestamp(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `fk_session_sales_order`(`session_id`) USING BTREE,
  CONSTRAINT `fk_session_sales_order` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sales_orders
-- ----------------------------

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
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tags
-- ----------------------------
INSERT INTO `tags` VALUES (1, 'Grocery', 'grocery', 'wallpaper.jpg', '2020-09-17 14:05:22', '2020-09-17 14:05:22');

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

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `first_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `active` tinyint(1) NULL DEFAULT 1,
  `inserted_at` timestamp(0) NOT NULL,
  `updated_at` timestamp(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'Alex', 'Hrabryh', 1, '2020-09-01 17:46:57', '2020-09-01 17:47:18');

SET FOREIGN_KEY_CHECKS = 1;
