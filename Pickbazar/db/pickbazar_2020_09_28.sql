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

 Date: 28/09/2020 12:04:59
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
-- Table structure for auther
-- ----------------------------
DROP TABLE IF EXISTS `auther`;
CREATE TABLE `auther`  (
  `id` bigint(0) NOT NULL,
  `product_id` int(0) NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bio` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `website` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auther
-- ----------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cc_transactions
-- ----------------------------
INSERT INTO `cc_transactions` VALUES (1, '2', 1, '', NULL, NULL, 6, 1, 26, 0, 6, 32, NULL, NULL, NULL, 2, '2020-09-25 08:11:53', '2020-09-25 08:11:53');
INSERT INTO `cc_transactions` VALUES (2, '2', 2, '', NULL, NULL, 6, 1, 26, 0, 6, 32, NULL, NULL, NULL, 2, '2020-09-25 11:52:19', '2020-09-25 11:52:19');
INSERT INTO `cc_transactions` VALUES (3, '2', 3, '', NULL, NULL, 6, 1, 10, 0, 3, 13, NULL, NULL, NULL, 0, '2020-09-25 12:01:25', '2020-09-25 12:01:25');
INSERT INTO `cc_transactions` VALUES (4, '2', 4, '', NULL, NULL, 10, 5, 20, 0, 5, 25, NULL, NULL, NULL, 0, '2020-09-25 12:11:15', '2020-09-25 12:11:15');
INSERT INTO `cc_transactions` VALUES (5, '2', 5, '', NULL, NULL, 6, 1, 15, 0, 4, 19, NULL, NULL, NULL, 0, '2020-09-25 14:45:20', '2020-09-25 14:45:20');
INSERT INTO `cc_transactions` VALUES (6, '2', 6, '', NULL, NULL, 6, 1, 12, 0, 3, 15, NULL, NULL, NULL, 0, '2020-09-25 14:47:51', '2020-09-25 14:47:51');
INSERT INTO `cc_transactions` VALUES (7, '2', 7, '', NULL, NULL, 6, 1, 10, 0, 3, 13, NULL, NULL, NULL, 0, '2020-09-25 14:48:46', '2020-09-25 14:48:46');
INSERT INTO `cc_transactions` VALUES (8, '2', 8, '', NULL, NULL, 6, 1, 14, 0, 4, 18, NULL, NULL, NULL, 0, '2020-09-25 14:50:54', '2020-09-25 14:50:54');
INSERT INTO `cc_transactions` VALUES (9, '2', 9, '', NULL, NULL, 6, 1, 14, 0, 3, 17, NULL, NULL, NULL, 0, '2020-09-25 14:56:41', '2020-09-25 14:56:41');
INSERT INTO `cc_transactions` VALUES (10, '2', 10, '', NULL, NULL, 6, 1, 14, 0, 3, 17, NULL, NULL, NULL, 0, '2020-09-25 14:58:36', '2020-09-25 14:58:36');
INSERT INTO `cc_transactions` VALUES (11, '2', 12, '', NULL, NULL, 6, 1, 10, 0, 3, 13, NULL, NULL, NULL, 0, '2020-09-25 15:02:46', '2020-09-25 15:02:46');
INSERT INTO `cc_transactions` VALUES (12, '2', 13, '', NULL, NULL, 6, 1, 12, 0, 3, 15, NULL, NULL, NULL, 2, '2020-09-25 15:10:50', '2020-09-25 15:10:50');

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
INSERT INTO `coupons` VALUES (1, 'RAMADAN15', 'Free Delivery', 'Free_Delivery', 1, 20, 0, 10, 15, '2020-09-23 08:48:14', '2020-09-23 08:48:14', '2020-09-23 08:48:14', '2020-09-23 08:48:14');
INSERT INTO `coupons` VALUES (2, 'RAMADAN20', 'Free Delivery', 'Free_Delivery', 1, 20, 0, 10, 20, '2020-09-23 08:48:14', '2020-09-23 08:48:14', '2020-09-23 08:48:14', '2020-09-23 08:48:14');
INSERT INTO `coupons` VALUES (3, 'CYBERMONDAY10', 'cyber Monday Sale', 'cyber_Monday Sale', 1, 20, 0, 10, 10, '2020-09-23 08:48:15', '2020-09-23 08:48:15', '2020-09-23 08:48:15', '2020-09-23 08:48:15');
INSERT INTO `coupons` VALUES (4, 'DISCOUNT10', 'Boxing Day Sale', 'Boxing_Day Sale', 1, 10, 0, 5, 10, '2020-09-23 08:48:15', '2020-09-23 08:48:15', '2020-09-23 08:48:15', '2020-09-23 08:48:15');
INSERT INTO `coupons` VALUES (5, 'SUMMER10', 'Summer Discount', 'Summer_Discount', 1, 10, 0, 5, 10, '2020-09-23 08:48:15', '2020-09-23 08:48:15', '2020-09-23 08:48:15', '2020-09-23 08:48:15');
INSERT INTO `coupons` VALUES (6, 'WINTER10', 'Winter Discount', 'Winter_Discount', 1, 10, 0, 15, 10, '2020-09-23 08:48:15', '2020-09-23 08:48:15', '2020-09-23 08:48:15', '2020-09-23 08:48:15');
INSERT INTO `coupons` VALUES (7, '1AUTUMN10', 'Autumn Discount', 'Autumn_Discount', 1, 10, 0, 15, 10, '2020-09-23 08:48:15', '2020-09-23 08:48:15', '2020-09-23 08:48:15', '2020-09-23 08:48:15');
INSERT INTO `coupons` VALUES (8, 'WINTER10', 'Winter Discount', 'Winter_Discount', 1, 10, 0, 15, 10, '2020-09-23 08:48:15', '2020-09-23 08:48:15', '2020-09-23 08:48:15', '2020-09-23 08:48:15');
INSERT INTO `coupons` VALUES (9, 'WINTER15', 'Winter Sale', 'Winter_Sale', 1, 10, 0, 15, 15, '2020-09-23 08:48:15', '2020-09-23 08:48:15', '2020-09-23 08:48:15', '2020-09-23 08:48:15');
INSERT INTO `coupons` VALUES (10, 'HALLOWEEN20', 'Halloween Sale', 'Halloween_Sale', 1, 10, 0, 15, 20, '2020-09-23 08:48:16', '2020-09-23 08:48:16', '2020-09-23 08:48:16', '2020-09-23 08:48:16');

-- ----------------------------
-- Table structure for meta
-- ----------------------------
DROP TABLE IF EXISTS `meta`;
CREATE TABLE `meta`  (
  `product_id` int(0) NOT NULL,
  `publisher` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isbn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `edition` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `country` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `languages` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `numberOfReader` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `numberOfPage` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `samplePDF` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`product_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of meta
-- ----------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_products
-- ----------------------------
INSERT INTO `order_products` VALUES (1, 8, 1, 'lime', 'e2c0cba7-5269-4501-925e-d5d9c9cee668.png', 2, 2, '12 pc(s)', 1, '2020-09-25 08:11:52', '2020-09-25 08:11:52');
INSERT INTO `order_products` VALUES (2, 7, 1, 'Dates', 'ce99342b-9a74-4feb-9ac9-4077b1eaf4dd.png', 15, 2, '2 lb', 1, '2020-09-25 08:11:52', '2020-09-25 08:11:52');
INSERT INTO `order_products` VALUES (3, 9, 1, 'Lemon', '041ecfa0-b283-49fd-b6d4-03cf32eef6ad.png', 2, 1, '12 pc(s)', 1, '2020-09-25 08:11:52', '2020-09-25 08:11:52');
INSERT INTO `order_products` VALUES (4, 10, 1, 'Cherry', '707503db-0fcf-4f86-9112-76a27d4eec2d.png', 2, 1, '0.5 lb', 1, '2020-09-25 08:11:53', '2020-09-25 08:11:53');
INSERT INTO `order_products` VALUES (5, 8, 2, 'lime', 'e2c0cba7-5269-4501-925e-d5d9c9cee668.png', 2, 2, '12 pc(s)', 1, '2020-09-25 11:52:19', '2020-09-25 11:52:19');
INSERT INTO `order_products` VALUES (6, 7, 2, 'Dates', 'ce99342b-9a74-4feb-9ac9-4077b1eaf4dd.png', 15, 2, '2 lb', 1, '2020-09-25 11:52:19', '2020-09-25 11:52:19');
INSERT INTO `order_products` VALUES (7, 9, 2, 'Lemon', '041ecfa0-b283-49fd-b6d4-03cf32eef6ad.png', 2, 1, '12 pc(s)', 1, '2020-09-25 11:52:19', '2020-09-25 11:52:19');
INSERT INTO `order_products` VALUES (8, 10, 2, 'Cherry', '707503db-0fcf-4f86-9112-76a27d4eec2d.png', 2, 1, '0.5 lb', 1, '2020-09-25 11:52:19', '2020-09-25 11:52:19');
INSERT INTO `order_products` VALUES (9, 3, 3, 'Clementines', '26ea283e-e783-4730-a889-877a39a0ab8c.png', 3, 1, '2 lb', 1, '2020-09-25 12:01:24', '2020-09-25 12:01:24');
INSERT INTO `order_products` VALUES (10, 2, 3, 'Blueberries', 'b4666448-6bed-4728-b8df-692e05a9fcf3.png', 8, 1, '1 lb', 1, '2020-09-25 12:01:25', '2020-09-25 12:01:25');
INSERT INTO `order_products` VALUES (11, 1, 3, 'Strawberry', '520d14da-d450-4c9e-bc61-ab7d627484a3.png', 5, 1, '1 lb', 1, '2020-09-25 12:01:25', '2020-09-25 12:01:25');
INSERT INTO `order_products` VALUES (12, 7, 4, 'Dates', 'ce99342b-9a74-4feb-9ac9-4077b1eaf4dd.png', 15, 1, '2 lb', 1, '2020-09-25 12:11:14', '2020-09-25 12:11:14');
INSERT INTO `order_products` VALUES (13, 9, 4, 'Lemon', '041ecfa0-b283-49fd-b6d4-03cf32eef6ad.png', 2, 1, '12 pc(s)', 1, '2020-09-25 12:11:14', '2020-09-25 12:11:14');
INSERT INTO `order_products` VALUES (14, 13, 4, 'Mix Vegetable Platter', '89f5b13f-cad3-4f8e-96bc-584a2135c1f3.png', 2, 1, '0.4 lb', 1, '2020-09-25 12:11:14', '2020-09-25 12:11:14');
INSERT INTO `order_products` VALUES (15, 11, 4, 'Celery Stick', '51e5b056-b879-424a-93b0-52d386b969f9.png', 1, 1, '1 lb', 1, '2020-09-25 12:11:14', '2020-09-25 12:11:14');
INSERT INTO `order_products` VALUES (16, 17, 4, 'Pepper', '6fa8802e-ecaa-49f2-92ad-b9d1fe3c23d2.png', 10, 1, '1.5 lb', 1, '2020-09-25 12:11:15', '2020-09-25 12:11:15');
INSERT INTO `order_products` VALUES (17, 8, 5, 'lime', 'e2c0cba7-5269-4501-925e-d5d9c9cee668.png', 2, 1, '12 pc(s)', 1, '2020-09-25 14:45:20', '2020-09-25 14:45:20');
INSERT INTO `order_products` VALUES (18, 9, 5, 'Lemon', '041ecfa0-b283-49fd-b6d4-03cf32eef6ad.png', 2, 1, '12 pc(s)', 1, '2020-09-25 14:45:20', '2020-09-25 14:45:20');
INSERT INTO `order_products` VALUES (19, 7, 5, 'Dates', 'ce99342b-9a74-4feb-9ac9-4077b1eaf4dd.png', 15, 1, '2 lb', 1, '2020-09-25 14:45:20', '2020-09-25 14:45:20');
INSERT INTO `order_products` VALUES (20, 6, 5, 'Mango', 'fb697588-673f-4171-93d8-b2d0ca682633.png', 3, 1, '2 lb', 1, '2020-09-25 14:45:20', '2020-09-25 14:45:20');
INSERT INTO `order_products` VALUES (21, 11, 6, 'Celery Stick', '51e5b056-b879-424a-93b0-52d386b969f9.png', 1, 1, '1 lb', 1, '2020-09-25 14:47:50', '2020-09-25 14:47:50');
INSERT INTO `order_products` VALUES (22, 12, 6, 'Baby Spinach', 'c5f59434-aac7-4d28-9cc4-2ddd84bbd547.png', 1, 1, '0.2 lb', 1, '2020-09-25 14:47:50', '2020-09-25 14:47:50');
INSERT INTO `order_products` VALUES (23, 13, 6, 'Mix Vegetable Platter', '89f5b13f-cad3-4f8e-96bc-584a2135c1f3.png', 2, 1, '0.4 lb', 1, '2020-09-25 14:47:50', '2020-09-25 14:47:50');
INSERT INTO `order_products` VALUES (24, 18, 6, ' Green Beans', '143e662e-35b8-4446-85d5-2e63b087e060.png', 2, 1, '.6 lb', 1, '2020-09-25 14:47:50', '2020-09-25 14:47:50');
INSERT INTO `order_products` VALUES (25, 17, 6, 'Pepper', '6fa8802e-ecaa-49f2-92ad-b9d1fe3c23d2.png', 10, 1, '1.5 lb', 1, '2020-09-25 14:47:51', '2020-09-25 14:47:51');
INSERT INTO `order_products` VALUES (26, 16, 6, 'Cucumber', '95c25d5d-ea1d-47ac-bb26-7765218a2eab.png', 2, 1, '4 lb', 1, '2020-09-25 14:47:51', '2020-09-25 14:47:51');
INSERT INTO `order_products` VALUES (27, 17, 7, 'Pepper', '6fa8802e-ecaa-49f2-92ad-b9d1fe3c23d2.png', 10, 1, '1.5 lb', 1, '2020-09-25 14:48:45', '2020-09-25 14:48:45');
INSERT INTO `order_products` VALUES (28, 18, 7, ' Green Beans', '143e662e-35b8-4446-85d5-2e63b087e060.png', 2, 1, '.6 lb', 1, '2020-09-25 14:48:45', '2020-09-25 14:48:45');
INSERT INTO `order_products` VALUES (29, 19, 7, ' Brussels Sprout', 'b0ce446c-3353-4c7a-9635-cd37b113b487.png', 4, 1, '1 lb', 1, '2020-09-25 14:48:46', '2020-09-25 14:48:46');
INSERT INTO `order_products` VALUES (30, 1, 8, 'Strawberry', '520d14da-d450-4c9e-bc61-ab7d627484a3.png', 5, 2, '1 lb', 1, '2020-09-25 14:50:53', '2020-09-25 14:50:53');
INSERT INTO `order_products` VALUES (31, 2, 8, 'Blueberries', 'b4666448-6bed-4728-b8df-692e05a9fcf3.png', 8, 1, '1 lb', 1, '2020-09-25 14:50:53', '2020-09-25 14:50:53');
INSERT INTO `order_products` VALUES (32, 3, 8, 'Clementines', '26ea283e-e783-4730-a889-877a39a0ab8c.png', 3, 1, '2 lb', 1, '2020-09-25 14:50:53', '2020-09-25 14:50:53');
INSERT INTO `order_products` VALUES (33, 4, 8, 'Apples', '0653b0a8-6c56-4cbe-a80c-f940d4eb319d.png', 2, 1, '2 lb', 1, '2020-09-25 14:50:53', '2020-09-25 14:50:53');
INSERT INTO `order_products` VALUES (34, 1, 9, 'Strawberry', '520d14da-d450-4c9e-bc61-ab7d627484a3.png', 5, 1, '1 lb', 1, '2020-09-25 14:56:40', '2020-09-25 14:56:40');
INSERT INTO `order_products` VALUES (35, 8, 9, 'lime', 'e2c0cba7-5269-4501-925e-d5d9c9cee668.png', 2, 1, '12 pc(s)', 1, '2020-09-25 14:56:40', '2020-09-25 14:56:40');
INSERT INTO `order_products` VALUES (36, 7, 9, 'Dates', 'ce99342b-9a74-4feb-9ac9-4077b1eaf4dd.png', 15, 1, '2 lb', 1, '2020-09-25 14:56:41', '2020-09-25 14:56:41');
INSERT INTO `order_products` VALUES (37, 6, 10, 'Mango', 'fb697588-673f-4171-93d8-b2d0ca682633.png', 3, 1, '2 lb', 1, '2020-09-25 14:58:35', '2020-09-25 14:58:35');
INSERT INTO `order_products` VALUES (38, 7, 10, 'Dates', 'ce99342b-9a74-4feb-9ac9-4077b1eaf4dd.png', 15, 1, '2 lb', 1, '2020-09-25 14:58:35', '2020-09-25 14:58:35');
INSERT INTO `order_products` VALUES (39, 8, 10, 'lime', 'e2c0cba7-5269-4501-925e-d5d9c9cee668.png', 2, 1, '12 pc(s)', 1, '2020-09-25 14:58:36', '2020-09-25 14:58:36');
INSERT INTO `order_products` VALUES (40, 1, 12, 'Strawberry', '520d14da-d450-4c9e-bc61-ab7d627484a3.png', 5, 1, '1 lb', 1, '2020-09-25 15:02:45', '2020-09-25 15:02:45');
INSERT INTO `order_products` VALUES (41, 2, 12, 'Blueberries', 'b4666448-6bed-4728-b8df-692e05a9fcf3.png', 8, 1, '1 lb', 1, '2020-09-25 15:02:45', '2020-09-25 15:02:45');
INSERT INTO `order_products` VALUES (42, 3, 12, 'Clementines', '26ea283e-e783-4730-a889-877a39a0ab8c.png', 3, 1, '2 lb', 1, '2020-09-25 15:02:45', '2020-09-25 15:02:45');
INSERT INTO `order_products` VALUES (43, 1, 13, 'Strawberry', '520d14da-d450-4c9e-bc61-ab7d627484a3.png', 3, 1, '1 lb', 1, '2020-09-25 15:10:49', '2020-09-25 15:10:49');
INSERT INTO `order_products` VALUES (44, 2, 13, 'Blueberries', 'b4666448-6bed-4728-b8df-692e05a9fcf3.png', 7, 1, '1 lb', 1, '2020-09-25 15:10:50', '2020-09-25 15:10:50');
INSERT INTO `order_products` VALUES (45, 3, 13, 'Clementines', '26ea283e-e783-4730-a889-877a39a0ab8c.png', 0, 1, '2 lb', 1, '2020-09-25 15:10:50', '2020-09-25 15:10:50');
INSERT INTO `order_products` VALUES (46, 4, 13, 'Apples', '0653b0a8-6c56-4cbe-a80c-f940d4eb319d.png', 2, 1, '2 lb', 1, '2020-09-25 15:10:50', '2020-09-25 15:10:50');

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
INSERT INTO `product_categories` VALUES (1, 1, '2020-09-22 17:08:27', '2020-09-22 17:08:27');
INSERT INTO `product_categories` VALUES (1, 2, '2020-09-22 17:08:28', '2020-09-22 17:08:28');
INSERT INTO `product_categories` VALUES (1, 3, '2020-09-22 17:08:29', '2020-09-22 17:08:29');
INSERT INTO `product_categories` VALUES (1, 4, '2020-09-22 17:08:29', '2020-09-22 17:08:29');
INSERT INTO `product_categories` VALUES (1, 5, '2020-09-22 17:08:30', '2020-09-22 17:08:30');
INSERT INTO `product_categories` VALUES (1, 6, '2020-09-22 17:08:31', '2020-09-22 17:08:31');
INSERT INTO `product_categories` VALUES (1, 7, '2020-09-22 17:08:31', '2020-09-22 17:08:31');
INSERT INTO `product_categories` VALUES (1, 8, '2020-09-22 17:08:18', '2020-09-22 17:08:18');
INSERT INTO `product_categories` VALUES (1, 9, '2020-09-22 17:08:19', '2020-09-22 17:08:19');
INSERT INTO `product_categories` VALUES (1, 10, '2020-09-22 17:08:20', '2020-09-22 17:08:20');
INSERT INTO `product_categories` VALUES (1, 11, '2020-09-22 17:08:20', '2020-09-22 17:08:20');
INSERT INTO `product_categories` VALUES (1, 12, '2020-09-22 17:08:21', '2020-09-22 17:08:21');
INSERT INTO `product_categories` VALUES (1, 13, '2020-09-22 17:08:22', '2020-09-22 17:08:22');
INSERT INTO `product_categories` VALUES (1, 14, '2020-09-22 17:08:22', '2020-09-22 17:08:22');
INSERT INTO `product_categories` VALUES (1, 15, '2020-09-22 17:08:23', '2020-09-22 17:08:23');
INSERT INTO `product_categories` VALUES (1, 16, '2020-09-22 17:08:24', '2020-09-22 17:08:24');
INSERT INTO `product_categories` VALUES (1, 17, '2020-09-22 17:08:24', '2020-09-22 17:08:24');
INSERT INTO `product_categories` VALUES (1, 18, '2020-09-22 17:08:25', '2020-09-22 17:08:25');
INSERT INTO `product_categories` VALUES (1, 19, '2020-09-22 17:08:26', '2020-09-22 17:08:26');
INSERT INTO `product_categories` VALUES (1, 20, '2020-09-22 17:08:26', '2020-09-22 17:08:26');
INSERT INTO `product_categories` VALUES (2, 1, '2020-09-22 17:08:27', '2020-09-22 17:08:27');
INSERT INTO `product_categories` VALUES (2, 2, '2020-09-22 17:08:28', '2020-09-22 17:08:28');
INSERT INTO `product_categories` VALUES (2, 3, '2020-09-22 17:08:29', '2020-09-22 17:08:29');
INSERT INTO `product_categories` VALUES (2, 4, '2020-09-22 17:08:30', '2020-09-22 17:08:30');
INSERT INTO `product_categories` VALUES (2, 5, '2020-09-22 17:08:30', '2020-09-22 17:08:30');
INSERT INTO `product_categories` VALUES (2, 6, '2020-09-22 17:08:31', '2020-09-22 17:08:31');
INSERT INTO `product_categories` VALUES (2, 7, '2020-09-22 17:08:32', '2020-09-22 17:08:32');
INSERT INTO `product_categories` VALUES (2, 10, '2020-09-22 17:08:20', '2020-09-22 17:08:20');
INSERT INTO `product_categories` VALUES (3, 8, '2020-09-22 17:08:18', '2020-09-22 17:08:18');
INSERT INTO `product_categories` VALUES (3, 9, '2020-09-22 17:08:19', '2020-09-22 17:08:19');
INSERT INTO `product_categories` VALUES (3, 11, '2020-09-22 17:08:20', '2020-09-22 17:08:20');
INSERT INTO `product_categories` VALUES (3, 12, '2020-09-22 17:08:21', '2020-09-22 17:08:21');
INSERT INTO `product_categories` VALUES (3, 13, '2020-09-22 17:08:22', '2020-09-22 17:08:22');
INSERT INTO `product_categories` VALUES (3, 14, '2020-09-22 17:08:22', '2020-09-22 17:08:22');
INSERT INTO `product_categories` VALUES (3, 15, '2020-09-22 17:08:23', '2020-09-22 17:08:23');
INSERT INTO `product_categories` VALUES (3, 16, '2020-09-22 17:08:24', '2020-09-22 17:08:24');
INSERT INTO `product_categories` VALUES (3, 17, '2020-09-22 17:08:24', '2020-09-22 17:08:24');
INSERT INTO `product_categories` VALUES (3, 18, '2020-09-22 17:08:25', '2020-09-22 17:08:25');
INSERT INTO `product_categories` VALUES (3, 19, '2020-09-22 17:08:26', '2020-09-22 17:08:26');
INSERT INTO `product_categories` VALUES (3, 20, '2020-09-22 17:08:27', '2020-09-22 17:08:27');
INSERT INTO `product_categories` VALUES (9, 21, '2020-09-22 17:08:32', '2020-09-22 17:08:32');
INSERT INTO `product_categories` VALUES (9, 22, '2020-09-22 17:08:33', '2020-09-22 17:08:33');
INSERT INTO `product_categories` VALUES (9, 23, '2020-09-22 17:08:34', '2020-09-22 17:08:34');
INSERT INTO `product_categories` VALUES (9, 24, '2020-09-22 17:08:34', '2020-09-22 17:08:34');
INSERT INTO `product_categories` VALUES (9, 25, '2020-09-22 17:08:35', '2020-09-22 17:08:35');
INSERT INTO `product_categories` VALUES (9, 26, '2020-09-22 17:08:36', '2020-09-22 17:08:36');
INSERT INTO `product_categories` VALUES (9, 27, '2020-09-22 17:08:36', '2020-09-22 17:08:36');
INSERT INTO `product_categories` VALUES (9, 28, '2020-09-22 17:08:37', '2020-09-22 17:08:37');
INSERT INTO `product_categories` VALUES (9, 29, '2020-09-22 17:08:38', '2020-09-22 17:08:38');
INSERT INTO `product_categories` VALUES (9, 30, '2020-09-22 17:08:39', '2020-09-22 17:08:39');
INSERT INTO `product_categories` VALUES (12, 21, '2020-09-22 17:08:32', '2020-09-22 17:08:32');
INSERT INTO `product_categories` VALUES (12, 22, '2020-09-22 17:08:33', '2020-09-22 17:08:33');
INSERT INTO `product_categories` VALUES (12, 23, '2020-09-22 17:08:34', '2020-09-22 17:08:34');
INSERT INTO `product_categories` VALUES (12, 24, '2020-09-22 17:08:34', '2020-09-22 17:08:34');
INSERT INTO `product_categories` VALUES (12, 25, '2020-09-22 17:08:35', '2020-09-22 17:08:35');
INSERT INTO `product_categories` VALUES (13, 26, '2020-09-22 17:08:36', '2020-09-22 17:08:36');
INSERT INTO `product_categories` VALUES (13, 27, '2020-09-22 17:08:36', '2020-09-22 17:08:36');
INSERT INTO `product_categories` VALUES (13, 28, '2020-09-22 17:08:37', '2020-09-22 17:08:37');
INSERT INTO `product_categories` VALUES (13, 29, '2020-09-22 17:08:38', '2020-09-22 17:08:38');
INSERT INTO `product_categories` VALUES (13, 30, '2020-09-22 17:08:39', '2020-09-22 17:08:39');
INSERT INTO `product_categories` VALUES (14, 39, '2020-09-22 17:08:42', '2020-09-22 17:08:42');
INSERT INTO `product_categories` VALUES (14, 40, '2020-09-22 17:08:42', '2020-09-22 17:08:42');
INSERT INTO `product_categories` VALUES (14, 46, '2020-09-22 18:52:47', '2020-09-22 18:52:47');
INSERT INTO `product_categories` VALUES (14, 48, '2020-09-22 18:52:48', '2020-09-22 18:52:48');
INSERT INTO `product_categories` VALUES (14, 49, '2020-09-22 18:52:49', '2020-09-22 18:52:49');
INSERT INTO `product_categories` VALUES (15, 38, '2020-09-22 17:08:41', '2020-09-22 17:08:41');
INSERT INTO `product_categories` VALUES (15, 47, '2020-09-22 18:52:48', '2020-09-22 18:52:48');
INSERT INTO `product_categories` VALUES (16, 36, '2020-09-22 17:08:40', '2020-09-22 17:08:40');
INSERT INTO `product_categories` VALUES (16, 42, '2020-09-22 17:08:43', '2020-09-22 17:08:43');
INSERT INTO `product_categories` VALUES (16, 45, '2020-09-22 18:52:47', '2020-09-22 18:52:47');
INSERT INTO `product_categories` VALUES (16, 53, '2020-09-22 18:52:51', '2020-09-22 18:52:51');
INSERT INTO `product_categories` VALUES (16, 54, '2020-09-22 18:52:52', '2020-09-22 18:52:52');
INSERT INTO `product_categories` VALUES (16, 55, '2020-09-22 18:52:52', '2020-09-22 18:52:52');
INSERT INTO `product_categories` VALUES (17, 37, '2020-09-22 17:08:41', '2020-09-22 17:08:41');
INSERT INTO `product_categories` VALUES (17, 41, '2020-09-22 17:08:43', '2020-09-22 17:08:43');
INSERT INTO `product_categories` VALUES (17, 43, '2020-09-22 17:08:44', '2020-09-22 17:08:44');
INSERT INTO `product_categories` VALUES (17, 44, '2020-09-22 17:08:44', '2020-09-22 17:08:44');
INSERT INTO `product_categories` VALUES (17, 52, '2020-09-22 18:52:51', '2020-09-22 18:52:51');
INSERT INTO `product_categories` VALUES (18, 35, '2020-09-22 17:08:40', '2020-09-22 17:08:40');
INSERT INTO `product_categories` VALUES (18, 50, '2020-09-22 18:52:49', '2020-09-22 18:52:49');
INSERT INTO `product_categories` VALUES (18, 51, '2020-09-22 18:52:50', '2020-09-22 18:52:50');
INSERT INTO `product_categories` VALUES (19, 57, '2020-09-22 18:52:53', '2020-09-22 18:52:53');
INSERT INTO `product_categories` VALUES (19, 58, '2020-09-22 18:52:54', '2020-09-22 18:52:54');
INSERT INTO `product_categories` VALUES (19, 59, '2020-09-22 18:52:54', '2020-09-22 18:52:54');
INSERT INTO `product_categories` VALUES (19, 60, '2020-09-22 18:52:55', '2020-09-22 18:52:55');
INSERT INTO `product_categories` VALUES (20, 57, '2020-09-22 18:52:53', '2020-09-22 18:52:53');
INSERT INTO `product_categories` VALUES (21, 59, '2020-09-22 18:52:55', '2020-09-22 18:52:55');
INSERT INTO `product_categories` VALUES (22, 58, '2020-09-22 18:52:54', '2020-09-22 18:52:54');
INSERT INTO `product_categories` VALUES (22, 60, '2020-09-22 18:52:55', '2020-09-22 18:52:55');
INSERT INTO `product_categories` VALUES (23, 65, '2020-09-22 18:52:58', '2020-09-22 18:52:58');
INSERT INTO `product_categories` VALUES (23, 66, '2020-09-22 18:52:59', '2020-09-22 18:52:59');
INSERT INTO `product_categories` VALUES (23, 67, '2020-09-22 18:53:00', '2020-09-22 18:53:00');
INSERT INTO `product_categories` VALUES (23, 68, '2020-09-22 18:53:00', '2020-09-22 18:53:00');
INSERT INTO `product_categories` VALUES (23, 69, '2020-09-22 18:53:01', '2020-09-22 18:53:01');
INSERT INTO `product_categories` VALUES (23, 70, '2020-09-22 18:53:02', '2020-09-22 18:53:02');
INSERT INTO `product_categories` VALUES (23, 71, '2020-09-22 18:53:03', '2020-09-22 18:53:03');
INSERT INTO `product_categories` VALUES (23, 72, '2020-09-22 18:53:04', '2020-09-22 18:53:04');
INSERT INTO `product_categories` VALUES (23, 73, '2020-09-22 18:53:04', '2020-09-22 18:53:04');
INSERT INTO `product_categories` VALUES (23, 74, '2020-09-22 18:53:05', '2020-09-22 18:53:05');
INSERT INTO `product_categories` VALUES (23, 75, '2020-09-22 18:53:06', '2020-09-22 18:53:06');
INSERT INTO `product_categories` VALUES (23, 482, '2020-09-22 19:16:45', '2020-09-22 19:16:45');
INSERT INTO `product_categories` VALUES (23, 483, '2020-09-22 19:16:45', '2020-09-22 19:16:45');
INSERT INTO `product_categories` VALUES (23, 484, '2020-09-22 19:16:46', '2020-09-22 19:16:46');
INSERT INTO `product_categories` VALUES (23, 485, '2020-09-22 19:16:47', '2020-09-22 19:16:47');
INSERT INTO `product_categories` VALUES (23, 486, '2020-09-22 19:16:48', '2020-09-22 19:16:48');
INSERT INTO `product_categories` VALUES (23, 488, '2020-09-22 19:16:49', '2020-09-22 19:16:49');
INSERT INTO `product_categories` VALUES (23, 489, '2020-09-22 19:16:49', '2020-09-22 19:16:49');
INSERT INTO `product_categories` VALUES (23, 490, '2020-09-22 19:16:50', '2020-09-22 19:16:50');
INSERT INTO `product_categories` VALUES (23, 491, '2020-09-22 19:16:51', '2020-09-22 19:16:51');
INSERT INTO `product_categories` VALUES (23, 492, '2020-09-22 19:16:52', '2020-09-22 19:16:52');
INSERT INTO `product_categories` VALUES (23, 493, '2020-09-22 19:16:53', '2020-09-22 19:16:53');
INSERT INTO `product_categories` VALUES (23, 494, '2020-09-22 19:16:53', '2020-09-22 19:16:53');
INSERT INTO `product_categories` VALUES (23, 495, '2020-09-22 19:16:54', '2020-09-22 19:16:54');
INSERT INTO `product_categories` VALUES (23, 496, '2020-09-22 19:16:55', '2020-09-22 19:16:55');
INSERT INTO `product_categories` VALUES (23, 497, '2020-09-22 19:16:56', '2020-09-22 19:16:56');
INSERT INTO `product_categories` VALUES (23, 498, '2020-09-22 19:16:56', '2020-09-22 19:16:56');
INSERT INTO `product_categories` VALUES (23, 499, '2020-09-22 19:16:57', '2020-09-22 19:16:57');
INSERT INTO `product_categories` VALUES (23, 500, '2020-09-22 19:16:58', '2020-09-22 19:16:58');
INSERT INTO `product_categories` VALUES (23, 501, '2020-09-22 19:16:59', '2020-09-22 19:16:59');
INSERT INTO `product_categories` VALUES (23, 502, '2020-09-22 19:16:59', '2020-09-22 19:16:59');
INSERT INTO `product_categories` VALUES (23, 503, '2020-09-22 19:17:00', '2020-09-22 19:17:00');
INSERT INTO `product_categories` VALUES (23, 504, '2020-09-22 19:17:01', '2020-09-22 19:17:01');
INSERT INTO `product_categories` VALUES (23, 505, '2020-09-22 19:17:02', '2020-09-22 19:17:02');
INSERT INTO `product_categories` VALUES (23, 506, '2020-09-22 19:17:03', '2020-09-22 19:17:03');
INSERT INTO `product_categories` VALUES (24, 71, '2020-09-22 18:53:03', '2020-09-22 18:53:03');
INSERT INTO `product_categories` VALUES (24, 72, '2020-09-22 18:53:04', '2020-09-22 18:53:04');
INSERT INTO `product_categories` VALUES (25, 73, '2020-09-22 18:53:05', '2020-09-22 18:53:05');
INSERT INTO `product_categories` VALUES (25, 74, '2020-09-22 18:53:05', '2020-09-22 18:53:05');
INSERT INTO `product_categories` VALUES (25, 75, '2020-09-22 18:53:06', '2020-09-22 18:53:06');
INSERT INTO `product_categories` VALUES (25, 488, '2020-09-22 19:16:49', '2020-09-22 19:16:49');
INSERT INTO `product_categories` VALUES (25, 489, '2020-09-22 19:16:50', '2020-09-22 19:16:50');
INSERT INTO `product_categories` VALUES (25, 490, '2020-09-22 19:16:50', '2020-09-22 19:16:50');
INSERT INTO `product_categories` VALUES (25, 491, '2020-09-22 19:16:51', '2020-09-22 19:16:51');
INSERT INTO `product_categories` VALUES (25, 492, '2020-09-22 19:16:52', '2020-09-22 19:16:52');
INSERT INTO `product_categories` VALUES (25, 493, '2020-09-22 19:16:53', '2020-09-22 19:16:53');
INSERT INTO `product_categories` VALUES (25, 494, '2020-09-22 19:16:54', '2020-09-22 19:16:54');
INSERT INTO `product_categories` VALUES (25, 495, '2020-09-22 19:16:54', '2020-09-22 19:16:54');
INSERT INTO `product_categories` VALUES (25, 496, '2020-09-22 19:16:55', '2020-09-22 19:16:55');
INSERT INTO `product_categories` VALUES (25, 497, '2020-09-22 19:16:56', '2020-09-22 19:16:56');
INSERT INTO `product_categories` VALUES (26, 65, '2020-09-22 18:52:58', '2020-09-22 18:52:58');
INSERT INTO `product_categories` VALUES (26, 66, '2020-09-22 18:52:59', '2020-09-22 18:52:59');
INSERT INTO `product_categories` VALUES (26, 67, '2020-09-22 18:53:00', '2020-09-22 18:53:00');
INSERT INTO `product_categories` VALUES (26, 482, '2020-09-22 19:16:45', '2020-09-22 19:16:45');
INSERT INTO `product_categories` VALUES (26, 483, '2020-09-22 19:16:46', '2020-09-22 19:16:46');
INSERT INTO `product_categories` VALUES (26, 484, '2020-09-22 19:16:46', '2020-09-22 19:16:46');
INSERT INTO `product_categories` VALUES (26, 485, '2020-09-22 19:16:47', '2020-09-22 19:16:47');
INSERT INTO `product_categories` VALUES (26, 486, '2020-09-22 19:16:48', '2020-09-22 19:16:48');
INSERT INTO `product_categories` VALUES (27, 68, '2020-09-22 18:53:01', '2020-09-22 18:53:01');
INSERT INTO `product_categories` VALUES (27, 69, '2020-09-22 18:53:02', '2020-09-22 18:53:02');
INSERT INTO `product_categories` VALUES (27, 70, '2020-09-22 18:53:02', '2020-09-22 18:53:02');
INSERT INTO `product_categories` VALUES (27, 498, '2020-09-22 19:16:57', '2020-09-22 19:16:57');
INSERT INTO `product_categories` VALUES (27, 499, '2020-09-22 19:16:57', '2020-09-22 19:16:57');
INSERT INTO `product_categories` VALUES (27, 500, '2020-09-22 19:16:58', '2020-09-22 19:16:58');
INSERT INTO `product_categories` VALUES (27, 501, '2020-09-22 19:16:59', '2020-09-22 19:16:59');
INSERT INTO `product_categories` VALUES (27, 502, '2020-09-22 19:17:00', '2020-09-22 19:17:00');
INSERT INTO `product_categories` VALUES (27, 503, '2020-09-22 19:17:01', '2020-09-22 19:17:01');
INSERT INTO `product_categories` VALUES (27, 504, '2020-09-22 19:17:01', '2020-09-22 19:17:01');
INSERT INTO `product_categories` VALUES (27, 505, '2020-09-22 19:17:02', '2020-09-22 19:17:02');
INSERT INTO `product_categories` VALUES (27, 506, '2020-09-22 19:17:03', '2020-09-22 19:17:03');
INSERT INTO `product_categories` VALUES (28, 78, '2020-09-22 18:59:52', '2020-09-22 18:59:52');
INSERT INTO `product_categories` VALUES (28, 79, '2020-09-22 18:59:53', '2020-09-22 18:59:53');
INSERT INTO `product_categories` VALUES (28, 80, '2020-09-22 18:59:54', '2020-09-22 18:59:54');
INSERT INTO `product_categories` VALUES (28, 81, '2020-09-22 18:59:54', '2020-09-22 18:59:54');
INSERT INTO `product_categories` VALUES (28, 82, '2020-09-22 18:59:55', '2020-09-22 18:59:55');
INSERT INTO `product_categories` VALUES (28, 476, '2020-09-22 19:16:40', '2020-09-22 19:16:40');
INSERT INTO `product_categories` VALUES (28, 477, '2020-09-22 19:16:41', '2020-09-22 19:16:41');
INSERT INTO `product_categories` VALUES (28, 478, '2020-09-22 19:16:42', '2020-09-22 19:16:42');
INSERT INTO `product_categories` VALUES (28, 479, '2020-09-22 19:16:42', '2020-09-22 19:16:42');
INSERT INTO `product_categories` VALUES (28, 480, '2020-09-22 19:16:43', '2020-09-22 19:16:43');
INSERT INTO `product_categories` VALUES (28, 481, '2020-09-22 19:16:44', '2020-09-22 19:16:44');
INSERT INTO `product_categories` VALUES (28, 508, '2020-09-22 19:17:03', '2020-09-22 19:17:03');
INSERT INTO `product_categories` VALUES (28, 509, '2020-09-22 19:17:04', '2020-09-22 19:17:04');
INSERT INTO `product_categories` VALUES (28, 510, '2020-09-22 19:17:05', '2020-09-22 19:17:05');
INSERT INTO `product_categories` VALUES (28, 511, '2020-09-22 19:17:06', '2020-09-22 19:17:06');
INSERT INTO `product_categories` VALUES (28, 512, '2020-09-22 19:17:07', '2020-09-22 19:17:07');
INSERT INTO `product_categories` VALUES (28, 513, '2020-09-22 19:17:07', '2020-09-22 19:17:07');
INSERT INTO `product_categories` VALUES (28, 514, '2020-09-22 19:17:08', '2020-09-22 19:17:08');
INSERT INTO `product_categories` VALUES (28, 515, '2020-09-22 19:17:09', '2020-09-22 19:17:09');
INSERT INTO `product_categories` VALUES (28, 516, '2020-09-22 19:17:10', '2020-09-22 19:17:10');
INSERT INTO `product_categories` VALUES (28, 517, '2020-09-22 19:17:11', '2020-09-22 19:17:11');
INSERT INTO `product_categories` VALUES (29, 81, '2020-09-22 18:59:55', '2020-09-22 18:59:55');
INSERT INTO `product_categories` VALUES (29, 82, '2020-09-22 18:59:56', '2020-09-22 18:59:56');
INSERT INTO `product_categories` VALUES (29, 508, '2020-09-22 19:17:04', '2020-09-22 19:17:04');
INSERT INTO `product_categories` VALUES (29, 509, '2020-09-22 19:17:04', '2020-09-22 19:17:04');
INSERT INTO `product_categories` VALUES (29, 510, '2020-09-22 19:17:05', '2020-09-22 19:17:05');
INSERT INTO `product_categories` VALUES (29, 511, '2020-09-22 19:17:06', '2020-09-22 19:17:06');
INSERT INTO `product_categories` VALUES (29, 512, '2020-09-22 19:17:07', '2020-09-22 19:17:07');
INSERT INTO `product_categories` VALUES (30, 78, '2020-09-22 18:59:52', '2020-09-22 18:59:52');
INSERT INTO `product_categories` VALUES (30, 476, '2020-09-22 19:16:40', '2020-09-22 19:16:40');
INSERT INTO `product_categories` VALUES (30, 477, '2020-09-22 19:16:41', '2020-09-22 19:16:41');
INSERT INTO `product_categories` VALUES (30, 478, '2020-09-22 19:16:42', '2020-09-22 19:16:42');
INSERT INTO `product_categories` VALUES (30, 479, '2020-09-22 19:16:43', '2020-09-22 19:16:43');
INSERT INTO `product_categories` VALUES (30, 480, '2020-09-22 19:16:43', '2020-09-22 19:16:43');
INSERT INTO `product_categories` VALUES (30, 481, '2020-09-22 19:16:44', '2020-09-22 19:16:44');
INSERT INTO `product_categories` VALUES (31, 79, '2020-09-22 18:59:53', '2020-09-22 18:59:53');
INSERT INTO `product_categories` VALUES (31, 80, '2020-09-22 18:59:54', '2020-09-22 18:59:54');
INSERT INTO `product_categories` VALUES (31, 513, '2020-09-22 19:17:08', '2020-09-22 19:17:08');
INSERT INTO `product_categories` VALUES (31, 514, '2020-09-22 19:17:09', '2020-09-22 19:17:09');
INSERT INTO `product_categories` VALUES (31, 515, '2020-09-22 19:17:09', '2020-09-22 19:17:09');
INSERT INTO `product_categories` VALUES (31, 516, '2020-09-22 19:17:10', '2020-09-22 19:17:10');
INSERT INTO `product_categories` VALUES (31, 517, '2020-09-22 19:17:11', '2020-09-22 19:17:11');
INSERT INTO `product_categories` VALUES (32, 56, '2020-09-22 18:52:53', '2020-09-22 18:52:53');
INSERT INTO `product_categories` VALUES (33, 61, '2020-09-22 18:52:56', '2020-09-22 18:52:56');
INSERT INTO `product_categories` VALUES (33, 62, '2020-09-22 18:52:57', '2020-09-22 18:52:57');
INSERT INTO `product_categories` VALUES (33, 63, '2020-09-22 18:52:57', '2020-09-22 18:52:57');
INSERT INTO `product_categories` VALUES (33, 64, '2020-09-22 18:52:58', '2020-09-22 18:52:58');
INSERT INTO `product_categories` VALUES (34, 76, '2020-09-22 18:59:51', '2020-09-22 18:59:51');
INSERT INTO `product_categories` VALUES (34, 77, '2020-09-22 18:59:52', '2020-09-22 18:59:52');
INSERT INTO `product_categories` VALUES (35, 83, '2020-09-22 18:59:56', '2020-09-22 18:59:56');
INSERT INTO `product_categories` VALUES (35, 84, '2020-09-22 18:59:57', '2020-09-22 18:59:57');
INSERT INTO `product_categories` VALUES (35, 85, '2020-09-22 18:59:57', '2020-09-22 18:59:57');
INSERT INTO `product_categories` VALUES (35, 86, '2020-09-22 18:59:58', '2020-09-22 18:59:58');
INSERT INTO `product_categories` VALUES (35, 90, '2020-09-22 19:00:01', '2020-09-22 19:00:01');
INSERT INTO `product_categories` VALUES (35, 94, '2020-09-22 19:00:03', '2020-09-22 19:00:03');
INSERT INTO `product_categories` VALUES (35, 100, '2020-09-22 19:00:08', '2020-09-22 19:00:08');
INSERT INTO `product_categories` VALUES (35, 533, '2020-09-22 19:17:22', '2020-09-22 19:17:22');
INSERT INTO `product_categories` VALUES (35, 534, '2020-09-22 19:17:23', '2020-09-22 19:17:23');
INSERT INTO `product_categories` VALUES (35, 535, '2020-09-22 19:17:24', '2020-09-22 19:17:24');
INSERT INTO `product_categories` VALUES (35, 536, '2020-09-22 19:17:24', '2020-09-22 19:17:24');
INSERT INTO `product_categories` VALUES (35, 537, '2020-09-22 19:17:25', '2020-09-22 19:17:25');
INSERT INTO `product_categories` VALUES (35, 538, '2020-09-22 19:17:26', '2020-09-22 19:17:26');
INSERT INTO `product_categories` VALUES (35, 539, '2020-09-22 19:17:27', '2020-09-22 19:17:27');
INSERT INTO `product_categories` VALUES (35, 540, '2020-09-22 19:17:28', '2020-09-22 19:17:28');
INSERT INTO `product_categories` VALUES (35, 541, '2020-09-22 19:17:29', '2020-09-22 19:17:29');
INSERT INTO `product_categories` VALUES (35, 542, '2020-09-22 19:17:29', '2020-09-22 19:17:29');
INSERT INTO `product_categories` VALUES (35, 543, '2020-09-22 19:17:30', '2020-09-22 19:17:30');
INSERT INTO `product_categories` VALUES (35, 544, '2020-09-22 19:17:31', '2020-09-22 19:17:31');
INSERT INTO `product_categories` VALUES (35, 545, '2020-09-22 19:17:32', '2020-09-22 19:17:32');
INSERT INTO `product_categories` VALUES (35, 546, '2020-09-22 19:17:32', '2020-09-22 19:17:32');
INSERT INTO `product_categories` VALUES (35, 547, '2020-09-22 19:17:33', '2020-09-22 19:17:33');
INSERT INTO `product_categories` VALUES (36, 83, '2020-09-22 18:59:56', '2020-09-22 18:59:56');
INSERT INTO `product_categories` VALUES (36, 84, '2020-09-22 18:59:57', '2020-09-22 18:59:57');
INSERT INTO `product_categories` VALUES (36, 85, '2020-09-22 18:59:58', '2020-09-22 18:59:58');
INSERT INTO `product_categories` VALUES (36, 86, '2020-09-22 18:59:58', '2020-09-22 18:59:58');
INSERT INTO `product_categories` VALUES (37, 90, '2020-09-22 19:00:01', '2020-09-22 19:00:01');
INSERT INTO `product_categories` VALUES (37, 94, '2020-09-22 19:00:04', '2020-09-22 19:00:04');
INSERT INTO `product_categories` VALUES (37, 541, '2020-09-22 19:17:29', '2020-09-22 19:17:29');
INSERT INTO `product_categories` VALUES (37, 542, '2020-09-22 19:17:30', '2020-09-22 19:17:30');
INSERT INTO `product_categories` VALUES (37, 543, '2020-09-22 19:17:30', '2020-09-22 19:17:30');
INSERT INTO `product_categories` VALUES (37, 544, '2020-09-22 19:17:31', '2020-09-22 19:17:31');
INSERT INTO `product_categories` VALUES (37, 545, '2020-09-22 19:17:32', '2020-09-22 19:17:32');
INSERT INTO `product_categories` VALUES (37, 546, '2020-09-22 19:17:33', '2020-09-22 19:17:33');
INSERT INTO `product_categories` VALUES (37, 547, '2020-09-22 19:17:33', '2020-09-22 19:17:33');
INSERT INTO `product_categories` VALUES (38, 100, '2020-09-22 19:00:08', '2020-09-22 19:00:08');
INSERT INTO `product_categories` VALUES (38, 533, '2020-09-22 19:17:22', '2020-09-22 19:17:22');
INSERT INTO `product_categories` VALUES (38, 534, '2020-09-22 19:17:23', '2020-09-22 19:17:23');
INSERT INTO `product_categories` VALUES (38, 535, '2020-09-22 19:17:24', '2020-09-22 19:17:24');
INSERT INTO `product_categories` VALUES (38, 536, '2020-09-22 19:17:25', '2020-09-22 19:17:25');
INSERT INTO `product_categories` VALUES (38, 537, '2020-09-22 19:17:25', '2020-09-22 19:17:25');
INSERT INTO `product_categories` VALUES (38, 538, '2020-09-22 19:17:26', '2020-09-22 19:17:26');
INSERT INTO `product_categories` VALUES (38, 539, '2020-09-22 19:17:27', '2020-09-22 19:17:27');
INSERT INTO `product_categories` VALUES (38, 540, '2020-09-22 19:17:28', '2020-09-22 19:17:28');
INSERT INTO `product_categories` VALUES (39, 88, '2020-09-22 18:59:59', '2020-09-22 18:59:59');
INSERT INTO `product_categories` VALUES (39, 89, '2020-09-22 19:00:00', '2020-09-22 19:00:00');
INSERT INTO `product_categories` VALUES (39, 91, '2020-09-22 19:00:02', '2020-09-22 19:00:02');
INSERT INTO `product_categories` VALUES (39, 92, '2020-09-22 19:00:02', '2020-09-22 19:00:02');
INSERT INTO `product_categories` VALUES (39, 102, '2020-09-22 19:00:09', '2020-09-22 19:00:09');
INSERT INTO `product_categories` VALUES (39, 468, '2020-09-22 19:16:34', '2020-09-22 19:16:34');
INSERT INTO `product_categories` VALUES (39, 469, '2020-09-22 19:16:34', '2020-09-22 19:16:34');
INSERT INTO `product_categories` VALUES (39, 470, '2020-09-22 19:16:35', '2020-09-22 19:16:35');
INSERT INTO `product_categories` VALUES (39, 471, '2020-09-22 19:16:36', '2020-09-22 19:16:36');
INSERT INTO `product_categories` VALUES (39, 472, '2020-09-22 19:16:37', '2020-09-22 19:16:37');
INSERT INTO `product_categories` VALUES (39, 473, '2020-09-22 19:16:38', '2020-09-22 19:16:38');
INSERT INTO `product_categories` VALUES (39, 474, '2020-09-22 19:16:38', '2020-09-22 19:16:38');
INSERT INTO `product_categories` VALUES (39, 475, '2020-09-22 19:16:39', '2020-09-22 19:16:39');
INSERT INTO `product_categories` VALUES (39, 520, '2020-09-22 19:17:12', '2020-09-22 19:17:12');
INSERT INTO `product_categories` VALUES (39, 521, '2020-09-22 19:17:12', '2020-09-22 19:17:12');
INSERT INTO `product_categories` VALUES (39, 522, '2020-09-22 19:17:13', '2020-09-22 19:17:13');
INSERT INTO `product_categories` VALUES (39, 523, '2020-09-22 19:17:14', '2020-09-22 19:17:14');
INSERT INTO `product_categories` VALUES (39, 524, '2020-09-22 19:17:15', '2020-09-22 19:17:15');
INSERT INTO `product_categories` VALUES (39, 525, '2020-09-22 19:17:15', '2020-09-22 19:17:15');
INSERT INTO `product_categories` VALUES (39, 526, '2020-09-22 19:17:16', '2020-09-22 19:17:16');
INSERT INTO `product_categories` VALUES (39, 527, '2020-09-22 19:17:17', '2020-09-22 19:17:17');
INSERT INTO `product_categories` VALUES (39, 528, '2020-09-22 19:17:18', '2020-09-22 19:17:18');
INSERT INTO `product_categories` VALUES (39, 529, '2020-09-22 19:17:19', '2020-09-22 19:17:19');
INSERT INTO `product_categories` VALUES (39, 530, '2020-09-22 19:17:19', '2020-09-22 19:17:19');
INSERT INTO `product_categories` VALUES (39, 531, '2020-09-22 19:17:20', '2020-09-22 19:17:20');
INSERT INTO `product_categories` VALUES (39, 532, '2020-09-22 19:17:21', '2020-09-22 19:17:21');
INSERT INTO `product_categories` VALUES (40, 88, '2020-09-22 18:59:59', '2020-09-22 18:59:59');
INSERT INTO `product_categories` VALUES (40, 89, '2020-09-22 19:00:00', '2020-09-22 19:00:00');
INSERT INTO `product_categories` VALUES (40, 468, '2020-09-22 19:16:34', '2020-09-22 19:16:34');
INSERT INTO `product_categories` VALUES (40, 469, '2020-09-22 19:16:35', '2020-09-22 19:16:35');
INSERT INTO `product_categories` VALUES (40, 470, '2020-09-22 19:16:35', '2020-09-22 19:16:35');
INSERT INTO `product_categories` VALUES (40, 471, '2020-09-22 19:16:36', '2020-09-22 19:16:36');
INSERT INTO `product_categories` VALUES (40, 472, '2020-09-22 19:16:37', '2020-09-22 19:16:37');
INSERT INTO `product_categories` VALUES (40, 473, '2020-09-22 19:16:38', '2020-09-22 19:16:38');
INSERT INTO `product_categories` VALUES (40, 474, '2020-09-22 19:16:39', '2020-09-22 19:16:39');
INSERT INTO `product_categories` VALUES (40, 475, '2020-09-22 19:16:39', '2020-09-22 19:16:39');
INSERT INTO `product_categories` VALUES (41, 91, '2020-09-22 19:00:02', '2020-09-22 19:00:02');
INSERT INTO `product_categories` VALUES (41, 92, '2020-09-22 19:00:02', '2020-09-22 19:00:02');
INSERT INTO `product_categories` VALUES (41, 520, '2020-09-22 19:17:12', '2020-09-22 19:17:12');
INSERT INTO `product_categories` VALUES (41, 521, '2020-09-22 19:17:13', '2020-09-22 19:17:13');
INSERT INTO `product_categories` VALUES (41, 522, '2020-09-22 19:17:13', '2020-09-22 19:17:13');
INSERT INTO `product_categories` VALUES (41, 523, '2020-09-22 19:17:14', '2020-09-22 19:17:14');
INSERT INTO `product_categories` VALUES (41, 524, '2020-09-22 19:17:15', '2020-09-22 19:17:15');
INSERT INTO `product_categories` VALUES (41, 525, '2020-09-22 19:17:16', '2020-09-22 19:17:16');
INSERT INTO `product_categories` VALUES (42, 102, '2020-09-22 19:00:09', '2020-09-22 19:00:09');
INSERT INTO `product_categories` VALUES (42, 526, '2020-09-22 19:17:16', '2020-09-22 19:17:16');
INSERT INTO `product_categories` VALUES (42, 527, '2020-09-22 19:17:17', '2020-09-22 19:17:17');
INSERT INTO `product_categories` VALUES (42, 528, '2020-09-22 19:17:18', '2020-09-22 19:17:18');
INSERT INTO `product_categories` VALUES (42, 529, '2020-09-22 19:17:19', '2020-09-22 19:17:19');
INSERT INTO `product_categories` VALUES (42, 530, '2020-09-22 19:17:20', '2020-09-22 19:17:20');
INSERT INTO `product_categories` VALUES (42, 531, '2020-09-22 19:17:21', '2020-09-22 19:17:21');
INSERT INTO `product_categories` VALUES (42, 532, '2020-09-22 19:17:21', '2020-09-22 19:17:21');
INSERT INTO `product_categories` VALUES (43, 95, '2020-09-22 19:00:04', '2020-09-22 19:00:04');
INSERT INTO `product_categories` VALUES (43, 96, '2020-09-22 19:00:05', '2020-09-22 19:00:05');
INSERT INTO `product_categories` VALUES (43, 97, '2020-09-22 19:00:06', '2020-09-22 19:00:06');
INSERT INTO `product_categories` VALUES (43, 98, '2020-09-22 19:00:06', '2020-09-22 19:00:06');
INSERT INTO `product_categories` VALUES (43, 99, '2020-09-22 19:00:07', '2020-09-22 19:00:07');
INSERT INTO `product_categories` VALUES (43, 548, '2020-09-22 19:17:34', '2020-09-22 19:17:34');
INSERT INTO `product_categories` VALUES (43, 549, '2020-09-22 19:17:35', '2020-09-22 19:17:35');
INSERT INTO `product_categories` VALUES (43, 550, '2020-09-22 19:17:36', '2020-09-22 19:17:36');
INSERT INTO `product_categories` VALUES (43, 551, '2020-09-22 19:17:36', '2020-09-22 19:17:36');
INSERT INTO `product_categories` VALUES (43, 552, '2020-09-22 19:17:37', '2020-09-22 19:17:37');
INSERT INTO `product_categories` VALUES (43, 553, '2020-09-22 19:17:38', '2020-09-22 19:17:38');
INSERT INTO `product_categories` VALUES (43, 554, '2020-09-22 19:17:39', '2020-09-22 19:17:39');
INSERT INTO `product_categories` VALUES (43, 555, '2020-09-22 19:17:40', '2020-09-22 19:17:40');
INSERT INTO `product_categories` VALUES (43, 556, '2020-09-22 19:17:40', '2020-09-22 19:17:40');
INSERT INTO `product_categories` VALUES (43, 557, '2020-09-22 19:17:41', '2020-09-22 19:17:41');
INSERT INTO `product_categories` VALUES (43, 558, '2020-09-22 19:17:42', '2020-09-22 19:17:42');
INSERT INTO `product_categories` VALUES (43, 559, '2020-09-22 19:17:43', '2020-09-22 19:17:43');
INSERT INTO `product_categories` VALUES (43, 560, '2020-09-22 19:17:43', '2020-09-22 19:17:43');
INSERT INTO `product_categories` VALUES (43, 561, '2020-09-22 19:17:44', '2020-09-22 19:17:44');
INSERT INTO `product_categories` VALUES (43, 562, '2020-09-22 19:17:45', '2020-09-22 19:17:45');
INSERT INTO `product_categories` VALUES (43, 563, '2020-09-22 19:17:46', '2020-09-22 19:17:46');
INSERT INTO `product_categories` VALUES (43, 564, '2020-09-22 19:17:47', '2020-09-22 19:17:47');
INSERT INTO `product_categories` VALUES (43, 565, '2020-09-22 19:17:47', '2020-09-22 19:17:47');
INSERT INTO `product_categories` VALUES (43, 566, '2020-09-22 19:17:48', '2020-09-22 19:17:48');
INSERT INTO `product_categories` VALUES (43, 568, '2020-09-22 19:17:49', '2020-09-22 19:17:49');
INSERT INTO `product_categories` VALUES (44, 98, '2020-09-22 19:00:07', '2020-09-22 19:00:07');
INSERT INTO `product_categories` VALUES (44, 555, '2020-09-22 19:17:40', '2020-09-22 19:17:40');
INSERT INTO `product_categories` VALUES (44, 556, '2020-09-22 19:17:41', '2020-09-22 19:17:41');
INSERT INTO `product_categories` VALUES (44, 557, '2020-09-22 19:17:41', '2020-09-22 19:17:41');
INSERT INTO `product_categories` VALUES (44, 558, '2020-09-22 19:17:42', '2020-09-22 19:17:42');
INSERT INTO `product_categories` VALUES (44, 559, '2020-09-22 19:17:43', '2020-09-22 19:17:43');
INSERT INTO `product_categories` VALUES (44, 560, '2020-09-22 19:17:44', '2020-09-22 19:17:44');
INSERT INTO `product_categories` VALUES (44, 561, '2020-09-22 19:17:44', '2020-09-22 19:17:44');
INSERT INTO `product_categories` VALUES (44, 562, '2020-09-22 19:17:45', '2020-09-22 19:17:45');
INSERT INTO `product_categories` VALUES (45, 96, '2020-09-22 19:00:05', '2020-09-22 19:00:05');
INSERT INTO `product_categories` VALUES (45, 97, '2020-09-22 19:00:06', '2020-09-22 19:00:06');
INSERT INTO `product_categories` VALUES (45, 99, '2020-09-22 19:00:07', '2020-09-22 19:00:07');
INSERT INTO `product_categories` VALUES (45, 563, '2020-09-22 19:17:46', '2020-09-22 19:17:46');
INSERT INTO `product_categories` VALUES (45, 564, '2020-09-22 19:17:47', '2020-09-22 19:17:47');
INSERT INTO `product_categories` VALUES (45, 565, '2020-09-22 19:17:48', '2020-09-22 19:17:48');
INSERT INTO `product_categories` VALUES (45, 566, '2020-09-22 19:17:48', '2020-09-22 19:17:48');
INSERT INTO `product_categories` VALUES (45, 568, '2020-09-22 19:17:49', '2020-09-22 19:17:49');
INSERT INTO `product_categories` VALUES (46, 95, '2020-09-22 19:00:04', '2020-09-22 19:00:04');
INSERT INTO `product_categories` VALUES (46, 548, '2020-09-22 19:17:34', '2020-09-22 19:17:34');
INSERT INTO `product_categories` VALUES (46, 549, '2020-09-22 19:17:35', '2020-09-22 19:17:35');
INSERT INTO `product_categories` VALUES (46, 550, '2020-09-22 19:17:36', '2020-09-22 19:17:36');
INSERT INTO `product_categories` VALUES (46, 551, '2020-09-22 19:17:37', '2020-09-22 19:17:37');
INSERT INTO `product_categories` VALUES (46, 552, '2020-09-22 19:17:37', '2020-09-22 19:17:37');
INSERT INTO `product_categories` VALUES (46, 553, '2020-09-22 19:17:38', '2020-09-22 19:17:38');
INSERT INTO `product_categories` VALUES (46, 554, '2020-09-22 19:17:39', '2020-09-22 19:17:39');
INSERT INTO `product_categories` VALUES (47, 87, '2020-09-22 18:59:59', '2020-09-22 18:59:59');
INSERT INTO `product_categories` VALUES (47, 93, '2020-09-22 19:00:03', '2020-09-22 19:00:03');
INSERT INTO `product_categories` VALUES (47, 101, '2020-09-22 19:00:09', '2020-09-22 19:00:09');
INSERT INTO `product_categories` VALUES (47, 103, '2020-09-22 19:00:10', '2020-09-22 19:00:10');
INSERT INTO `product_categories` VALUES (48, 104, '2020-09-22 19:00:10', '2020-09-22 19:00:10');
INSERT INTO `product_categories` VALUES (48, 105, '2020-09-22 19:00:11', '2020-09-22 19:00:11');
INSERT INTO `product_categories` VALUES (48, 106, '2020-09-22 19:00:12', '2020-09-22 19:00:12');
INSERT INTO `product_categories` VALUES (48, 107, '2020-09-22 19:00:13', '2020-09-22 19:00:13');
INSERT INTO `product_categories` VALUES (48, 108, '2020-09-22 19:00:13', '2020-09-22 19:00:13');
INSERT INTO `product_categories` VALUES (48, 110, '2020-09-22 19:00:14', '2020-09-22 19:00:14');
INSERT INTO `product_categories` VALUES (48, 111, '2020-09-22 19:00:15', '2020-09-22 19:00:15');
INSERT INTO `product_categories` VALUES (48, 112, '2020-09-22 19:00:16', '2020-09-22 19:00:16');
INSERT INTO `product_categories` VALUES (48, 113, '2020-09-22 19:00:16', '2020-09-22 19:00:16');
INSERT INTO `product_categories` VALUES (48, 114, '2020-09-22 19:00:17', '2020-09-22 19:00:17');
INSERT INTO `product_categories` VALUES (48, 115, '2020-09-22 19:00:18', '2020-09-22 19:00:18');
INSERT INTO `product_categories` VALUES (48, 116, '2020-09-22 19:00:19', '2020-09-22 19:00:19');
INSERT INTO `product_categories` VALUES (48, 117, '2020-09-22 19:00:19', '2020-09-22 19:00:19');
INSERT INTO `product_categories` VALUES (48, 118, '2020-09-22 19:00:20', '2020-09-22 19:00:20');
INSERT INTO `product_categories` VALUES (48, 119, '2020-09-22 19:00:21', '2020-09-22 19:00:21');
INSERT INTO `product_categories` VALUES (48, 120, '2020-09-22 19:00:21', '2020-09-22 19:00:21');
INSERT INTO `product_categories` VALUES (48, 121, '2020-09-22 19:00:22', '2020-09-22 19:00:22');
INSERT INTO `product_categories` VALUES (48, 122, '2020-09-22 19:00:23', '2020-09-22 19:00:23');
INSERT INTO `product_categories` VALUES (48, 123, '2020-09-22 19:00:24', '2020-09-22 19:00:24');
INSERT INTO `product_categories` VALUES (48, 124, '2020-09-22 19:00:24', '2020-09-22 19:00:24');
INSERT INTO `product_categories` VALUES (48, 125, '2020-09-22 19:00:25', '2020-09-22 19:00:25');
INSERT INTO `product_categories` VALUES (48, 126, '2020-09-22 19:00:26', '2020-09-22 19:00:26');
INSERT INTO `product_categories` VALUES (48, 127, '2020-09-22 19:00:26', '2020-09-22 19:00:26');
INSERT INTO `product_categories` VALUES (48, 128, '2020-09-22 19:00:27', '2020-09-22 19:00:27');
INSERT INTO `product_categories` VALUES (48, 129, '2020-09-22 19:00:28', '2020-09-22 19:00:28');
INSERT INTO `product_categories` VALUES (48, 130, '2020-09-22 19:00:29', '2020-09-22 19:00:29');
INSERT INTO `product_categories` VALUES (48, 131, '2020-09-22 19:00:30', '2020-09-22 19:00:30');
INSERT INTO `product_categories` VALUES (48, 132, '2020-09-22 19:00:30', '2020-09-22 19:00:30');
INSERT INTO `product_categories` VALUES (48, 133, '2020-09-22 19:00:31', '2020-09-22 19:00:31');
INSERT INTO `product_categories` VALUES (48, 134, '2020-09-22 19:00:32', '2020-09-22 19:00:32');
INSERT INTO `product_categories` VALUES (48, 135, '2020-09-22 19:00:33', '2020-09-22 19:00:33');
INSERT INTO `product_categories` VALUES (48, 136, '2020-09-22 19:00:33', '2020-09-22 19:00:33');
INSERT INTO `product_categories` VALUES (48, 137, '2020-09-22 19:00:34', '2020-09-22 19:00:34');
INSERT INTO `product_categories` VALUES (48, 138, '2020-09-22 19:00:35', '2020-09-22 19:00:35');
INSERT INTO `product_categories` VALUES (48, 139, '2020-09-22 19:00:35', '2020-09-22 19:00:35');
INSERT INTO `product_categories` VALUES (48, 140, '2020-09-22 19:00:36', '2020-09-22 19:00:36');
INSERT INTO `product_categories` VALUES (48, 141, '2020-09-22 19:00:37', '2020-09-22 19:00:37');
INSERT INTO `product_categories` VALUES (48, 142, '2020-09-22 19:00:38', '2020-09-22 19:00:38');
INSERT INTO `product_categories` VALUES (48, 143, '2020-09-22 19:00:38', '2020-09-22 19:00:38');
INSERT INTO `product_categories` VALUES (48, 144, '2020-09-22 19:00:39', '2020-09-22 19:00:39');
INSERT INTO `product_categories` VALUES (48, 145, '2020-09-22 19:00:40', '2020-09-22 19:00:40');
INSERT INTO `product_categories` VALUES (48, 146, '2020-09-22 19:00:40', '2020-09-22 19:00:40');
INSERT INTO `product_categories` VALUES (48, 147, '2020-09-22 19:00:41', '2020-09-22 19:00:41');
INSERT INTO `product_categories` VALUES (48, 148, '2020-09-22 19:00:42', '2020-09-22 19:00:42');
INSERT INTO `product_categories` VALUES (48, 150, '2020-09-22 19:00:42', '2020-09-22 19:00:42');
INSERT INTO `product_categories` VALUES (48, 151, '2020-09-22 19:00:43', '2020-09-22 19:00:43');
INSERT INTO `product_categories` VALUES (48, 152, '2020-09-22 19:00:44', '2020-09-22 19:00:44');
INSERT INTO `product_categories` VALUES (48, 153, '2020-09-22 19:00:45', '2020-09-22 19:00:45');
INSERT INTO `product_categories` VALUES (48, 154, '2020-09-22 19:00:45', '2020-09-22 19:00:45');
INSERT INTO `product_categories` VALUES (48, 155, '2020-09-22 19:00:46', '2020-09-22 19:00:46');
INSERT INTO `product_categories` VALUES (48, 156, '2020-09-22 19:00:47', '2020-09-22 19:00:47');
INSERT INTO `product_categories` VALUES (48, 157, '2020-09-22 19:00:47', '2020-09-22 19:00:47');
INSERT INTO `product_categories` VALUES (48, 158, '2020-09-22 19:00:48', '2020-09-22 19:00:48');
INSERT INTO `product_categories` VALUES (48, 159, '2020-09-22 19:00:49', '2020-09-22 19:00:49');
INSERT INTO `product_categories` VALUES (48, 160, '2020-09-22 19:00:50', '2020-09-22 19:00:50');
INSERT INTO `product_categories` VALUES (48, 161, '2020-09-22 19:00:51', '2020-09-22 19:00:51');
INSERT INTO `product_categories` VALUES (48, 162, '2020-09-22 19:00:51', '2020-09-22 19:00:51');
INSERT INTO `product_categories` VALUES (48, 163, '2020-09-22 19:00:52', '2020-09-22 19:00:52');
INSERT INTO `product_categories` VALUES (48, 164, '2020-09-22 19:00:53', '2020-09-22 19:00:53');
INSERT INTO `product_categories` VALUES (48, 165, '2020-09-22 19:00:53', '2020-09-22 19:00:53');
INSERT INTO `product_categories` VALUES (48, 166, '2020-09-22 19:00:54', '2020-09-22 19:00:54');
INSERT INTO `product_categories` VALUES (48, 167, '2020-09-22 19:00:55', '2020-09-22 19:00:55');
INSERT INTO `product_categories` VALUES (48, 168, '2020-09-22 19:00:56', '2020-09-22 19:00:56');
INSERT INTO `product_categories` VALUES (48, 169, '2020-09-22 19:00:56', '2020-09-22 19:00:56');
INSERT INTO `product_categories` VALUES (48, 170, '2020-09-22 19:00:57', '2020-09-22 19:00:57');
INSERT INTO `product_categories` VALUES (48, 171, '2020-09-22 19:00:58', '2020-09-22 19:00:58');
INSERT INTO `product_categories` VALUES (48, 172, '2020-09-22 19:00:58', '2020-09-22 19:00:58');
INSERT INTO `product_categories` VALUES (48, 173, '2020-09-22 19:00:59', '2020-09-22 19:00:59');
INSERT INTO `product_categories` VALUES (48, 174, '2020-09-22 19:01:00', '2020-09-22 19:01:00');
INSERT INTO `product_categories` VALUES (48, 175, '2020-09-22 19:01:01', '2020-09-22 19:01:01');
INSERT INTO `product_categories` VALUES (48, 176, '2020-09-22 19:01:01', '2020-09-22 19:01:01');
INSERT INTO `product_categories` VALUES (48, 177, '2020-09-22 19:01:02', '2020-09-22 19:01:02');
INSERT INTO `product_categories` VALUES (48, 178, '2020-09-22 19:01:03', '2020-09-22 19:01:03');
INSERT INTO `product_categories` VALUES (48, 179, '2020-09-22 19:01:04', '2020-09-22 19:01:04');
INSERT INTO `product_categories` VALUES (48, 180, '2020-09-22 19:01:04', '2020-09-22 19:01:04');
INSERT INTO `product_categories` VALUES (48, 181, '2020-09-22 19:01:05', '2020-09-22 19:01:05');
INSERT INTO `product_categories` VALUES (49, 104, '2020-09-22 19:00:11', '2020-09-22 19:00:11');
INSERT INTO `product_categories` VALUES (49, 105, '2020-09-22 19:00:11', '2020-09-22 19:00:11');
INSERT INTO `product_categories` VALUES (49, 106, '2020-09-22 19:00:12', '2020-09-22 19:00:12');
INSERT INTO `product_categories` VALUES (49, 107, '2020-09-22 19:00:13', '2020-09-22 19:00:13');
INSERT INTO `product_categories` VALUES (49, 108, '2020-09-22 19:00:14', '2020-09-22 19:00:14');
INSERT INTO `product_categories` VALUES (49, 110, '2020-09-22 19:00:14', '2020-09-22 19:00:14');
INSERT INTO `product_categories` VALUES (49, 111, '2020-09-22 19:00:15', '2020-09-22 19:00:15');
INSERT INTO `product_categories` VALUES (49, 112, '2020-09-22 19:00:16', '2020-09-22 19:00:16');
INSERT INTO `product_categories` VALUES (49, 113, '2020-09-22 19:00:17', '2020-09-22 19:00:17');
INSERT INTO `product_categories` VALUES (50, 114, '2020-09-22 19:00:17', '2020-09-22 19:00:17');
INSERT INTO `product_categories` VALUES (50, 115, '2020-09-22 19:00:18', '2020-09-22 19:00:18');
INSERT INTO `product_categories` VALUES (50, 116, '2020-09-22 19:00:19', '2020-09-22 19:00:19');
INSERT INTO `product_categories` VALUES (50, 117, '2020-09-22 19:00:19', '2020-09-22 19:00:19');
INSERT INTO `product_categories` VALUES (50, 118, '2020-09-22 19:00:20', '2020-09-22 19:00:20');
INSERT INTO `product_categories` VALUES (50, 119, '2020-09-22 19:00:21', '2020-09-22 19:00:21');
INSERT INTO `product_categories` VALUES (50, 120, '2020-09-22 19:00:21', '2020-09-22 19:00:21');
INSERT INTO `product_categories` VALUES (50, 121, '2020-09-22 19:00:22', '2020-09-22 19:00:22');
INSERT INTO `product_categories` VALUES (50, 122, '2020-09-22 19:00:23', '2020-09-22 19:00:23');
INSERT INTO `product_categories` VALUES (50, 123, '2020-09-22 19:00:24', '2020-09-22 19:00:24');
INSERT INTO `product_categories` VALUES (50, 124, '2020-09-22 19:00:25', '2020-09-22 19:00:25');
INSERT INTO `product_categories` VALUES (50, 125, '2020-09-22 19:00:25', '2020-09-22 19:00:25');
INSERT INTO `product_categories` VALUES (50, 126, '2020-09-22 19:00:26', '2020-09-22 19:00:26');
INSERT INTO `product_categories` VALUES (51, 127, '2020-09-22 19:00:27', '2020-09-22 19:00:27');
INSERT INTO `product_categories` VALUES (51, 128, '2020-09-22 19:00:27', '2020-09-22 19:00:27');
INSERT INTO `product_categories` VALUES (51, 129, '2020-09-22 19:00:28', '2020-09-22 19:00:28');
INSERT INTO `product_categories` VALUES (51, 130, '2020-09-22 19:00:29', '2020-09-22 19:00:29');
INSERT INTO `product_categories` VALUES (51, 131, '2020-09-22 19:00:30', '2020-09-22 19:00:30');
INSERT INTO `product_categories` VALUES (51, 132, '2020-09-22 19:00:31', '2020-09-22 19:00:31');
INSERT INTO `product_categories` VALUES (51, 133, '2020-09-22 19:00:31', '2020-09-22 19:00:31');
INSERT INTO `product_categories` VALUES (51, 134, '2020-09-22 19:00:32', '2020-09-22 19:00:32');
INSERT INTO `product_categories` VALUES (51, 135, '2020-09-22 19:00:33', '2020-09-22 19:00:33');
INSERT INTO `product_categories` VALUES (51, 136, '2020-09-22 19:00:33', '2020-09-22 19:00:33');
INSERT INTO `product_categories` VALUES (51, 137, '2020-09-22 19:00:34', '2020-09-22 19:00:34');
INSERT INTO `product_categories` VALUES (51, 138, '2020-09-22 19:00:35', '2020-09-22 19:00:35');
INSERT INTO `product_categories` VALUES (51, 139, '2020-09-22 19:00:36', '2020-09-22 19:00:36');
INSERT INTO `product_categories` VALUES (51, 140, '2020-09-22 19:00:36', '2020-09-22 19:00:36');
INSERT INTO `product_categories` VALUES (52, 141, '2020-09-22 19:00:37', '2020-09-22 19:00:37');
INSERT INTO `product_categories` VALUES (52, 142, '2020-09-22 19:00:38', '2020-09-22 19:00:38');
INSERT INTO `product_categories` VALUES (52, 143, '2020-09-22 19:00:38', '2020-09-22 19:00:38');
INSERT INTO `product_categories` VALUES (52, 144, '2020-09-22 19:00:39', '2020-09-22 19:00:39');
INSERT INTO `product_categories` VALUES (52, 145, '2020-09-22 19:00:40', '2020-09-22 19:00:40');
INSERT INTO `product_categories` VALUES (52, 146, '2020-09-22 19:00:41', '2020-09-22 19:00:41');
INSERT INTO `product_categories` VALUES (52, 147, '2020-09-22 19:00:41', '2020-09-22 19:00:41');
INSERT INTO `product_categories` VALUES (52, 148, '2020-09-22 19:00:42', '2020-09-22 19:00:42');
INSERT INTO `product_categories` VALUES (53, 150, '2020-09-22 19:00:43', '2020-09-22 19:00:43');
INSERT INTO `product_categories` VALUES (53, 151, '2020-09-22 19:00:43', '2020-09-22 19:00:43');
INSERT INTO `product_categories` VALUES (53, 152, '2020-09-22 19:00:44', '2020-09-22 19:00:44');
INSERT INTO `product_categories` VALUES (53, 153, '2020-09-22 19:00:45', '2020-09-22 19:00:45');
INSERT INTO `product_categories` VALUES (53, 154, '2020-09-22 19:00:46', '2020-09-22 19:00:46');
INSERT INTO `product_categories` VALUES (53, 155, '2020-09-22 19:00:46', '2020-09-22 19:00:46');
INSERT INTO `product_categories` VALUES (53, 156, '2020-09-22 19:00:47', '2020-09-22 19:00:47');
INSERT INTO `product_categories` VALUES (53, 157, '2020-09-22 19:00:48', '2020-09-22 19:00:48');
INSERT INTO `product_categories` VALUES (53, 158, '2020-09-22 19:00:48', '2020-09-22 19:00:48');
INSERT INTO `product_categories` VALUES (53, 159, '2020-09-22 19:00:49', '2020-09-22 19:00:49');
INSERT INTO `product_categories` VALUES (53, 160, '2020-09-22 19:00:50', '2020-09-22 19:00:50');
INSERT INTO `product_categories` VALUES (53, 161, '2020-09-22 19:00:51', '2020-09-22 19:00:51');
INSERT INTO `product_categories` VALUES (54, 162, '2020-09-22 19:00:51', '2020-09-22 19:00:51');
INSERT INTO `product_categories` VALUES (54, 163, '2020-09-22 19:00:52', '2020-09-22 19:00:52');
INSERT INTO `product_categories` VALUES (54, 164, '2020-09-22 19:00:53', '2020-09-22 19:00:53');
INSERT INTO `product_categories` VALUES (54, 165, '2020-09-22 19:00:54', '2020-09-22 19:00:54');
INSERT INTO `product_categories` VALUES (54, 166, '2020-09-22 19:00:54', '2020-09-22 19:00:54');
INSERT INTO `product_categories` VALUES (54, 167, '2020-09-22 19:00:55', '2020-09-22 19:00:55');
INSERT INTO `product_categories` VALUES (54, 168, '2020-09-22 19:00:56', '2020-09-22 19:00:56');
INSERT INTO `product_categories` VALUES (55, 169, '2020-09-22 19:00:56', '2020-09-22 19:00:56');
INSERT INTO `product_categories` VALUES (55, 170, '2020-09-22 19:00:57', '2020-09-22 19:00:57');
INSERT INTO `product_categories` VALUES (55, 171, '2020-09-22 19:00:58', '2020-09-22 19:00:58');
INSERT INTO `product_categories` VALUES (55, 172, '2020-09-22 19:00:59', '2020-09-22 19:00:59');
INSERT INTO `product_categories` VALUES (55, 173, '2020-09-22 19:00:59', '2020-09-22 19:00:59');
INSERT INTO `product_categories` VALUES (55, 174, '2020-09-22 19:01:00', '2020-09-22 19:01:00');
INSERT INTO `product_categories` VALUES (55, 175, '2020-09-22 19:01:01', '2020-09-22 19:01:01');
INSERT INTO `product_categories` VALUES (55, 176, '2020-09-22 19:01:01', '2020-09-22 19:01:01');
INSERT INTO `product_categories` VALUES (56, 177, '2020-09-22 19:01:02', '2020-09-22 19:01:02');
INSERT INTO `product_categories` VALUES (56, 178, '2020-09-22 19:01:03', '2020-09-22 19:01:03');
INSERT INTO `product_categories` VALUES (56, 179, '2020-09-22 19:01:04', '2020-09-22 19:01:04');
INSERT INTO `product_categories` VALUES (56, 180, '2020-09-22 19:01:04', '2020-09-22 19:01:04');
INSERT INTO `product_categories` VALUES (56, 181, '2020-09-22 19:01:05', '2020-09-22 19:01:05');
INSERT INTO `product_categories` VALUES (57, 182, '2020-09-22 19:01:06', '2020-09-22 19:01:06');
INSERT INTO `product_categories` VALUES (57, 183, '2020-09-22 19:01:07', '2020-09-22 19:01:07');
INSERT INTO `product_categories` VALUES (57, 184, '2020-09-22 19:01:08', '2020-09-22 19:01:08');
INSERT INTO `product_categories` VALUES (57, 185, '2020-09-22 19:01:09', '2020-09-22 19:01:09');
INSERT INTO `product_categories` VALUES (57, 186, '2020-09-22 19:01:09', '2020-09-22 19:01:09');
INSERT INTO `product_categories` VALUES (57, 187, '2020-09-22 19:01:10', '2020-09-22 19:01:10');
INSERT INTO `product_categories` VALUES (57, 188, '2020-09-22 19:01:11', '2020-09-22 19:01:11');
INSERT INTO `product_categories` VALUES (57, 189, '2020-09-22 19:01:11', '2020-09-22 19:01:11');
INSERT INTO `product_categories` VALUES (57, 190, '2020-09-22 19:01:12', '2020-09-22 19:01:12');
INSERT INTO `product_categories` VALUES (57, 191, '2020-09-22 19:01:13', '2020-09-22 19:01:13');
INSERT INTO `product_categories` VALUES (57, 192, '2020-09-22 19:01:14', '2020-09-22 19:01:14');
INSERT INTO `product_categories` VALUES (57, 193, '2020-09-22 19:01:15', '2020-09-22 19:01:15');
INSERT INTO `product_categories` VALUES (57, 194, '2020-09-22 19:01:15', '2020-09-22 19:01:15');
INSERT INTO `product_categories` VALUES (57, 195, '2020-09-22 19:01:16', '2020-09-22 19:01:16');
INSERT INTO `product_categories` VALUES (57, 196, '2020-09-22 19:01:17', '2020-09-22 19:01:17');
INSERT INTO `product_categories` VALUES (57, 197, '2020-09-22 19:01:17', '2020-09-22 19:01:17');
INSERT INTO `product_categories` VALUES (57, 198, '2020-09-22 19:01:18', '2020-09-22 19:01:18');
INSERT INTO `product_categories` VALUES (57, 199, '2020-09-22 19:01:19', '2020-09-22 19:01:19');
INSERT INTO `product_categories` VALUES (57, 200, '2020-09-22 19:02:28', '2020-09-22 19:02:28');
INSERT INTO `product_categories` VALUES (57, 201, '2020-09-22 19:02:29', '2020-09-22 19:02:29');
INSERT INTO `product_categories` VALUES (57, 202, '2020-09-22 19:02:30', '2020-09-22 19:02:30');
INSERT INTO `product_categories` VALUES (57, 203, '2020-09-22 19:02:31', '2020-09-22 19:02:31');
INSERT INTO `product_categories` VALUES (57, 204, '2020-09-22 19:02:32', '2020-09-22 19:02:32');
INSERT INTO `product_categories` VALUES (57, 205, '2020-09-22 19:04:59', '2020-09-22 19:04:59');
INSERT INTO `product_categories` VALUES (57, 206, '2020-09-22 19:05:00', '2020-09-22 19:05:00');
INSERT INTO `product_categories` VALUES (57, 207, '2020-09-22 19:05:01', '2020-09-22 19:05:01');
INSERT INTO `product_categories` VALUES (57, 208, '2020-09-22 19:05:02', '2020-09-22 19:05:02');
INSERT INTO `product_categories` VALUES (57, 209, '2020-09-22 19:05:03', '2020-09-22 19:05:03');
INSERT INTO `product_categories` VALUES (57, 210, '2020-09-22 19:05:03', '2020-09-22 19:05:03');
INSERT INTO `product_categories` VALUES (57, 211, '2020-09-22 19:05:04', '2020-09-22 19:05:04');
INSERT INTO `product_categories` VALUES (57, 212, '2020-09-22 19:05:05', '2020-09-22 19:05:05');
INSERT INTO `product_categories` VALUES (57, 213, '2020-09-22 19:05:06', '2020-09-22 19:05:06');
INSERT INTO `product_categories` VALUES (57, 214, '2020-09-22 19:05:07', '2020-09-22 19:05:07');
INSERT INTO `product_categories` VALUES (57, 215, '2020-09-22 19:05:07', '2020-09-22 19:05:07');
INSERT INTO `product_categories` VALUES (57, 216, '2020-09-22 19:05:08', '2020-09-22 19:05:08');
INSERT INTO `product_categories` VALUES (57, 217, '2020-09-22 19:05:09', '2020-09-22 19:05:09');
INSERT INTO `product_categories` VALUES (57, 219, '2020-09-22 19:05:10', '2020-09-22 19:05:10');
INSERT INTO `product_categories` VALUES (57, 220, '2020-09-22 19:05:11', '2020-09-22 19:05:11');
INSERT INTO `product_categories` VALUES (57, 221, '2020-09-22 19:05:11', '2020-09-22 19:05:11');
INSERT INTO `product_categories` VALUES (57, 224, '2020-09-22 19:05:12', '2020-09-22 19:05:12');
INSERT INTO `product_categories` VALUES (57, 225, '2020-09-22 19:05:13', '2020-09-22 19:05:13');
INSERT INTO `product_categories` VALUES (58, 182, '2020-09-22 19:01:06', '2020-09-22 19:01:06');
INSERT INTO `product_categories` VALUES (58, 183, '2020-09-22 19:01:07', '2020-09-22 19:01:07');
INSERT INTO `product_categories` VALUES (58, 184, '2020-09-22 19:01:08', '2020-09-22 19:01:08');
INSERT INTO `product_categories` VALUES (58, 185, '2020-09-22 19:01:09', '2020-09-22 19:01:09');
INSERT INTO `product_categories` VALUES (58, 186, '2020-09-22 19:01:09', '2020-09-22 19:01:09');
INSERT INTO `product_categories` VALUES (58, 187, '2020-09-22 19:01:10', '2020-09-22 19:01:10');
INSERT INTO `product_categories` VALUES (58, 188, '2020-09-22 19:01:11', '2020-09-22 19:01:11');
INSERT INTO `product_categories` VALUES (58, 189, '2020-09-22 19:01:12', '2020-09-22 19:01:12');
INSERT INTO `product_categories` VALUES (59, 190, '2020-09-22 19:01:13', '2020-09-22 19:01:13');
INSERT INTO `product_categories` VALUES (59, 191, '2020-09-22 19:01:13', '2020-09-22 19:01:13');
INSERT INTO `product_categories` VALUES (59, 192, '2020-09-22 19:01:14', '2020-09-22 19:01:14');
INSERT INTO `product_categories` VALUES (59, 193, '2020-09-22 19:01:15', '2020-09-22 19:01:15');
INSERT INTO `product_categories` VALUES (59, 194, '2020-09-22 19:01:15', '2020-09-22 19:01:15');
INSERT INTO `product_categories` VALUES (59, 195, '2020-09-22 19:01:16', '2020-09-22 19:01:16');
INSERT INTO `product_categories` VALUES (59, 196, '2020-09-22 19:01:17', '2020-09-22 19:01:17');
INSERT INTO `product_categories` VALUES (59, 197, '2020-09-22 19:01:18', '2020-09-22 19:01:18');
INSERT INTO `product_categories` VALUES (60, 198, '2020-09-22 19:01:18', '2020-09-22 19:01:18');
INSERT INTO `product_categories` VALUES (60, 199, '2020-09-22 19:01:19', '2020-09-22 19:01:19');
INSERT INTO `product_categories` VALUES (60, 200, '2020-09-22 19:02:28', '2020-09-22 19:02:28');
INSERT INTO `product_categories` VALUES (60, 201, '2020-09-22 19:02:29', '2020-09-22 19:02:29');
INSERT INTO `product_categories` VALUES (60, 202, '2020-09-22 19:02:30', '2020-09-22 19:02:30');
INSERT INTO `product_categories` VALUES (60, 203, '2020-09-22 19:02:32', '2020-09-22 19:02:32');
INSERT INTO `product_categories` VALUES (60, 204, '2020-09-22 19:02:32', '2020-09-22 19:02:32');
INSERT INTO `product_categories` VALUES (60, 205, '2020-09-22 19:05:00', '2020-09-22 19:05:00');
INSERT INTO `product_categories` VALUES (60, 206, '2020-09-22 19:05:00', '2020-09-22 19:05:00');
INSERT INTO `product_categories` VALUES (60, 207, '2020-09-22 19:05:01', '2020-09-22 19:05:01');
INSERT INTO `product_categories` VALUES (60, 208, '2020-09-22 19:05:02', '2020-09-22 19:05:02');
INSERT INTO `product_categories` VALUES (61, 209, '2020-09-22 19:05:03', '2020-09-22 19:05:03');
INSERT INTO `product_categories` VALUES (61, 210, '2020-09-22 19:05:04', '2020-09-22 19:05:04');
INSERT INTO `product_categories` VALUES (61, 211, '2020-09-22 19:05:04', '2020-09-22 19:05:04');
INSERT INTO `product_categories` VALUES (61, 212, '2020-09-22 19:05:05', '2020-09-22 19:05:05');
INSERT INTO `product_categories` VALUES (61, 213, '2020-09-22 19:05:06', '2020-09-22 19:05:06');
INSERT INTO `product_categories` VALUES (61, 214, '2020-09-22 19:05:07', '2020-09-22 19:05:07');
INSERT INTO `product_categories` VALUES (61, 215, '2020-09-22 19:05:08', '2020-09-22 19:05:08');
INSERT INTO `product_categories` VALUES (61, 216, '2020-09-22 19:05:08', '2020-09-22 19:05:08');
INSERT INTO `product_categories` VALUES (61, 217, '2020-09-22 19:05:09', '2020-09-22 19:05:09');
INSERT INTO `product_categories` VALUES (61, 219, '2020-09-22 19:05:10', '2020-09-22 19:05:10');
INSERT INTO `product_categories` VALUES (61, 220, '2020-09-22 19:05:11', '2020-09-22 19:05:11');
INSERT INTO `product_categories` VALUES (61, 221, '2020-09-22 19:05:12', '2020-09-22 19:05:12');
INSERT INTO `product_categories` VALUES (61, 224, '2020-09-22 19:05:12', '2020-09-22 19:05:12');
INSERT INTO `product_categories` VALUES (61, 225, '2020-09-22 19:05:13', '2020-09-22 19:05:13');
INSERT INTO `product_categories` VALUES (63, 231, '2020-09-22 19:13:39', '2020-09-22 19:13:39');
INSERT INTO `product_categories` VALUES (63, 232, '2020-09-22 19:13:40', '2020-09-22 19:13:40');
INSERT INTO `product_categories` VALUES (63, 233, '2020-09-22 19:13:41', '2020-09-22 19:13:41');
INSERT INTO `product_categories` VALUES (63, 234, '2020-09-22 19:13:41', '2020-09-22 19:13:41');
INSERT INTO `product_categories` VALUES (63, 235, '2020-09-22 19:13:42', '2020-09-22 19:13:42');
INSERT INTO `product_categories` VALUES (64, 236, '2020-09-22 19:13:43', '2020-09-22 19:13:43');
INSERT INTO `product_categories` VALUES (64, 237, '2020-09-22 19:13:43', '2020-09-22 19:13:43');
INSERT INTO `product_categories` VALUES (64, 238, '2020-09-22 19:13:44', '2020-09-22 19:13:44');
INSERT INTO `product_categories` VALUES (64, 239, '2020-09-22 19:13:44', '2020-09-22 19:13:44');
INSERT INTO `product_categories` VALUES (64, 240, '2020-09-22 19:13:45', '2020-09-22 19:13:45');
INSERT INTO `product_categories` VALUES (64, 241, '2020-09-22 19:13:46', '2020-09-22 19:13:46');
INSERT INTO `product_categories` VALUES (64, 242, '2020-09-22 19:13:47', '2020-09-22 19:13:47');
INSERT INTO `product_categories` VALUES (64, 243, '2020-09-22 19:13:47', '2020-09-22 19:13:47');
INSERT INTO `product_categories` VALUES (65, 244, '2020-09-22 19:13:48', '2020-09-22 19:13:48');
INSERT INTO `product_categories` VALUES (65, 245, '2020-09-22 19:13:49', '2020-09-22 19:13:49');
INSERT INTO `product_categories` VALUES (65, 246, '2020-09-22 19:13:49', '2020-09-22 19:13:49');
INSERT INTO `product_categories` VALUES (65, 247, '2020-09-22 19:13:50', '2020-09-22 19:13:50');
INSERT INTO `product_categories` VALUES (65, 248, '2020-09-22 19:13:51', '2020-09-22 19:13:51');
INSERT INTO `product_categories` VALUES (65, 249, '2020-09-22 19:13:51', '2020-09-22 19:13:51');
INSERT INTO `product_categories` VALUES (65, 251, '2020-09-22 19:13:52', '2020-09-22 19:13:52');
INSERT INTO `product_categories` VALUES (66, 252, '2020-09-22 19:13:53', '2020-09-22 19:13:53');
INSERT INTO `product_categories` VALUES (66, 253, '2020-09-22 19:13:53', '2020-09-22 19:13:53');
INSERT INTO `product_categories` VALUES (66, 254, '2020-09-22 19:13:54', '2020-09-22 19:13:54');
INSERT INTO `product_categories` VALUES (66, 255, '2020-09-22 19:13:55', '2020-09-22 19:13:55');
INSERT INTO `product_categories` VALUES (66, 256, '2020-09-22 19:13:55', '2020-09-22 19:13:55');
INSERT INTO `product_categories` VALUES (66, 257, '2020-09-22 19:13:56', '2020-09-22 19:13:56');
INSERT INTO `product_categories` VALUES (66, 258, '2020-09-22 19:13:57', '2020-09-22 19:13:57');
INSERT INTO `product_categories` VALUES (67, 259, '2020-09-22 19:13:57', '2020-09-22 19:13:57');
INSERT INTO `product_categories` VALUES (67, 260, '2020-09-22 19:13:58', '2020-09-22 19:13:58');
INSERT INTO `product_categories` VALUES (67, 261, '2020-09-22 19:13:59', '2020-09-22 19:13:59');
INSERT INTO `product_categories` VALUES (67, 262, '2020-09-22 19:13:59', '2020-09-22 19:13:59');
INSERT INTO `product_categories` VALUES (67, 263, '2020-09-22 19:14:00', '2020-09-22 19:14:00');
INSERT INTO `product_categories` VALUES (67, 264, '2020-09-22 19:14:01', '2020-09-22 19:14:01');
INSERT INTO `product_categories` VALUES (67, 265, '2020-09-22 19:14:02', '2020-09-22 19:14:02');
INSERT INTO `product_categories` VALUES (67, 266, '2020-09-22 19:14:02', '2020-09-22 19:14:02');
INSERT INTO `product_categories` VALUES (67, 267, '2020-09-22 19:14:03', '2020-09-22 19:14:03');
INSERT INTO `product_categories` VALUES (67, 268, '2020-09-22 19:14:04', '2020-09-22 19:14:04');
INSERT INTO `product_categories` VALUES (67, 269, '2020-09-22 19:14:04', '2020-09-22 19:14:04');
INSERT INTO `product_categories` VALUES (67, 270, '2020-09-22 19:14:05', '2020-09-22 19:14:05');
INSERT INTO `product_categories` VALUES (68, 271, '2020-09-22 19:14:06', '2020-09-22 19:14:06');
INSERT INTO `product_categories` VALUES (68, 272, '2020-09-22 19:14:06', '2020-09-22 19:14:06');
INSERT INTO `product_categories` VALUES (68, 274, '2020-09-22 19:14:07', '2020-09-22 19:14:07');
INSERT INTO `product_categories` VALUES (68, 275, '2020-09-22 19:14:08', '2020-09-22 19:14:08');
INSERT INTO `product_categories` VALUES (68, 276, '2020-09-22 19:14:08', '2020-09-22 19:14:08');
INSERT INTO `product_categories` VALUES (68, 277, '2020-09-22 19:14:09', '2020-09-22 19:14:09');
INSERT INTO `product_categories` VALUES (69, 278, '2020-09-22 19:14:10', '2020-09-22 19:14:10');
INSERT INTO `product_categories` VALUES (69, 280, '2020-09-22 19:14:10', '2020-09-22 19:14:10');
INSERT INTO `product_categories` VALUES (69, 281, '2020-09-22 19:14:11', '2020-09-22 19:14:11');
INSERT INTO `product_categories` VALUES (69, 282, '2020-09-22 19:14:12', '2020-09-22 19:14:12');
INSERT INTO `product_categories` VALUES (69, 284, '2020-09-22 19:14:13', '2020-09-22 19:14:13');
INSERT INTO `product_categories` VALUES (69, 285, '2020-09-22 19:14:14', '2020-09-22 19:14:14');
INSERT INTO `product_categories` VALUES (69, 286, '2020-09-22 19:14:15', '2020-09-22 19:14:15');
INSERT INTO `product_categories` VALUES (69, 287, '2020-09-22 19:14:16', '2020-09-22 19:14:16');
INSERT INTO `product_categories` VALUES (69, 288, '2020-09-22 19:14:17', '2020-09-22 19:14:17');
INSERT INTO `product_categories` VALUES (69, 289, '2020-09-22 19:14:17', '2020-09-22 19:14:17');
INSERT INTO `product_categories` VALUES (69, 290, '2020-09-22 19:14:18', '2020-09-22 19:14:18');
INSERT INTO `product_categories` VALUES (69, 291, '2020-09-22 19:14:19', '2020-09-22 19:14:19');
INSERT INTO `product_categories` VALUES (69, 292, '2020-09-22 19:14:20', '2020-09-22 19:14:20');
INSERT INTO `product_categories` VALUES (69, 293, '2020-09-22 19:14:21', '2020-09-22 19:14:21');
INSERT INTO `product_categories` VALUES (69, 294, '2020-09-22 19:14:21', '2020-09-22 19:14:21');
INSERT INTO `product_categories` VALUES (69, 295, '2020-09-22 19:14:22', '2020-09-22 19:14:22');
INSERT INTO `product_categories` VALUES (69, 296, '2020-09-22 19:14:23', '2020-09-22 19:14:23');
INSERT INTO `product_categories` VALUES (69, 297, '2020-09-22 19:14:24', '2020-09-22 19:14:24');
INSERT INTO `product_categories` VALUES (69, 298, '2020-09-22 19:14:25', '2020-09-22 19:14:25');
INSERT INTO `product_categories` VALUES (69, 299, '2020-09-22 19:14:25', '2020-09-22 19:14:25');
INSERT INTO `product_categories` VALUES (69, 300, '2020-09-22 19:14:26', '2020-09-22 19:14:26');
INSERT INTO `product_categories` VALUES (69, 301, '2020-09-22 19:14:27', '2020-09-22 19:14:27');
INSERT INTO `product_categories` VALUES (69, 302, '2020-09-22 19:14:28', '2020-09-22 19:14:28');
INSERT INTO `product_categories` VALUES (69, 303, '2020-09-22 19:14:29', '2020-09-22 19:14:29');
INSERT INTO `product_categories` VALUES (69, 304, '2020-09-22 19:14:30', '2020-09-22 19:14:30');
INSERT INTO `product_categories` VALUES (69, 305, '2020-09-22 19:14:30', '2020-09-22 19:14:30');
INSERT INTO `product_categories` VALUES (69, 306, '2020-09-22 19:14:31', '2020-09-22 19:14:31');
INSERT INTO `product_categories` VALUES (69, 307, '2020-09-22 19:14:32', '2020-09-22 19:14:32');
INSERT INTO `product_categories` VALUES (69, 308, '2020-09-22 19:14:33', '2020-09-22 19:14:33');
INSERT INTO `product_categories` VALUES (69, 309, '2020-09-22 19:14:33', '2020-09-22 19:14:33');
INSERT INTO `product_categories` VALUES (69, 310, '2020-09-22 19:14:34', '2020-09-22 19:14:34');
INSERT INTO `product_categories` VALUES (69, 311, '2020-09-22 19:14:35', '2020-09-22 19:14:35');
INSERT INTO `product_categories` VALUES (69, 312, '2020-09-22 19:14:36', '2020-09-22 19:14:36');
INSERT INTO `product_categories` VALUES (69, 313, '2020-09-22 19:14:37', '2020-09-22 19:14:37');
INSERT INTO `product_categories` VALUES (69, 314, '2020-09-22 19:14:38', '2020-09-22 19:14:38');
INSERT INTO `product_categories` VALUES (69, 315, '2020-09-22 19:14:39', '2020-09-22 19:14:39');
INSERT INTO `product_categories` VALUES (69, 316, '2020-09-22 19:14:40', '2020-09-22 19:14:40');
INSERT INTO `product_categories` VALUES (69, 317, '2020-09-22 19:14:41', '2020-09-22 19:14:41');
INSERT INTO `product_categories` VALUES (69, 318, '2020-09-22 19:14:41', '2020-09-22 19:14:41');
INSERT INTO `product_categories` VALUES (69, 319, '2020-09-22 19:14:42', '2020-09-22 19:14:42');
INSERT INTO `product_categories` VALUES (69, 320, '2020-09-22 19:14:43', '2020-09-22 19:14:43');
INSERT INTO `product_categories` VALUES (70, 278, '2020-09-22 19:14:10', '2020-09-22 19:14:10');
INSERT INTO `product_categories` VALUES (70, 280, '2020-09-22 19:14:11', '2020-09-22 19:14:11');
INSERT INTO `product_categories` VALUES (70, 281, '2020-09-22 19:14:11', '2020-09-22 19:14:11');
INSERT INTO `product_categories` VALUES (70, 282, '2020-09-22 19:14:12', '2020-09-22 19:14:12');
INSERT INTO `product_categories` VALUES (70, 284, '2020-09-22 19:14:13', '2020-09-22 19:14:13');
INSERT INTO `product_categories` VALUES (70, 285, '2020-09-22 19:14:14', '2020-09-22 19:14:14');
INSERT INTO `product_categories` VALUES (70, 286, '2020-09-22 19:14:15', '2020-09-22 19:14:15');
INSERT INTO `product_categories` VALUES (71, 287, '2020-09-22 19:14:16', '2020-09-22 19:14:16');
INSERT INTO `product_categories` VALUES (71, 288, '2020-09-22 19:14:17', '2020-09-22 19:14:17');
INSERT INTO `product_categories` VALUES (71, 289, '2020-09-22 19:14:18', '2020-09-22 19:14:18');
INSERT INTO `product_categories` VALUES (71, 290, '2020-09-22 19:14:18', '2020-09-22 19:14:18');
INSERT INTO `product_categories` VALUES (71, 291, '2020-09-22 19:14:19', '2020-09-22 19:14:19');
INSERT INTO `product_categories` VALUES (71, 292, '2020-09-22 19:14:20', '2020-09-22 19:14:20');
INSERT INTO `product_categories` VALUES (71, 293, '2020-09-22 19:14:21', '2020-09-22 19:14:21');
INSERT INTO `product_categories` VALUES (71, 294, '2020-09-22 19:14:22', '2020-09-22 19:14:22');
INSERT INTO `product_categories` VALUES (72, 295, '2020-09-22 19:14:22', '2020-09-22 19:14:22');
INSERT INTO `product_categories` VALUES (72, 296, '2020-09-22 19:14:23', '2020-09-22 19:14:23');
INSERT INTO `product_categories` VALUES (72, 297, '2020-09-22 19:14:24', '2020-09-22 19:14:24');
INSERT INTO `product_categories` VALUES (72, 298, '2020-09-22 19:14:25', '2020-09-22 19:14:25');
INSERT INTO `product_categories` VALUES (72, 299, '2020-09-22 19:14:26', '2020-09-22 19:14:26');
INSERT INTO `product_categories` VALUES (72, 300, '2020-09-22 19:14:27', '2020-09-22 19:14:27');
INSERT INTO `product_categories` VALUES (72, 301, '2020-09-22 19:14:27', '2020-09-22 19:14:27');
INSERT INTO `product_categories` VALUES (73, 302, '2020-09-22 19:14:28', '2020-09-22 19:14:28');
INSERT INTO `product_categories` VALUES (73, 303, '2020-09-22 19:14:29', '2020-09-22 19:14:29');
INSERT INTO `product_categories` VALUES (73, 304, '2020-09-22 19:14:30', '2020-09-22 19:14:30');
INSERT INTO `product_categories` VALUES (74, 305, '2020-09-22 19:14:30', '2020-09-22 19:14:30');
INSERT INTO `product_categories` VALUES (74, 306, '2020-09-22 19:14:31', '2020-09-22 19:14:31');
INSERT INTO `product_categories` VALUES (74, 307, '2020-09-22 19:14:32', '2020-09-22 19:14:32');
INSERT INTO `product_categories` VALUES (74, 308, '2020-09-22 19:14:33', '2020-09-22 19:14:33');
INSERT INTO `product_categories` VALUES (74, 309, '2020-09-22 19:14:34', '2020-09-22 19:14:34');
INSERT INTO `product_categories` VALUES (74, 310, '2020-09-22 19:14:35', '2020-09-22 19:14:35');
INSERT INTO `product_categories` VALUES (74, 311, '2020-09-22 19:14:35', '2020-09-22 19:14:35');
INSERT INTO `product_categories` VALUES (75, 312, '2020-09-22 19:14:36', '2020-09-22 19:14:36');
INSERT INTO `product_categories` VALUES (75, 313, '2020-09-22 19:14:37', '2020-09-22 19:14:37');
INSERT INTO `product_categories` VALUES (75, 314, '2020-09-22 19:14:38', '2020-09-22 19:14:38');
INSERT INTO `product_categories` VALUES (75, 315, '2020-09-22 19:14:39', '2020-09-22 19:14:39');
INSERT INTO `product_categories` VALUES (75, 316, '2020-09-22 19:14:40', '2020-09-22 19:14:40');
INSERT INTO `product_categories` VALUES (75, 317, '2020-09-22 19:14:41', '2020-09-22 19:14:41');
INSERT INTO `product_categories` VALUES (75, 318, '2020-09-22 19:14:42', '2020-09-22 19:14:42');
INSERT INTO `product_categories` VALUES (75, 319, '2020-09-22 19:14:42', '2020-09-22 19:14:42');
INSERT INTO `product_categories` VALUES (75, 320, '2020-09-22 19:14:43', '2020-09-22 19:14:43');
INSERT INTO `product_categories` VALUES (76, 321, '2020-09-22 19:14:44', '2020-09-22 19:14:44');
INSERT INTO `product_categories` VALUES (76, 322, '2020-09-22 19:14:45', '2020-09-22 19:14:45');
INSERT INTO `product_categories` VALUES (76, 323, '2020-09-22 19:14:45', '2020-09-22 19:14:45');
INSERT INTO `product_categories` VALUES (76, 324, '2020-09-22 19:14:46', '2020-09-22 19:14:46');
INSERT INTO `product_categories` VALUES (76, 325, '2020-09-22 19:14:47', '2020-09-22 19:14:47');
INSERT INTO `product_categories` VALUES (76, 326, '2020-09-22 19:14:48', '2020-09-22 19:14:48');
INSERT INTO `product_categories` VALUES (76, 327, '2020-09-22 19:14:49', '2020-09-22 19:14:49');
INSERT INTO `product_categories` VALUES (76, 328, '2020-09-22 19:14:49', '2020-09-22 19:14:49');
INSERT INTO `product_categories` VALUES (76, 329, '2020-09-22 19:14:50', '2020-09-22 19:14:50');
INSERT INTO `product_categories` VALUES (76, 330, '2020-09-22 19:14:51', '2020-09-22 19:14:51');
INSERT INTO `product_categories` VALUES (76, 331, '2020-09-22 19:14:52', '2020-09-22 19:14:52');
INSERT INTO `product_categories` VALUES (76, 332, '2020-09-22 19:14:53', '2020-09-22 19:14:53');
INSERT INTO `product_categories` VALUES (76, 333, '2020-09-22 19:14:54', '2020-09-22 19:14:54');
INSERT INTO `product_categories` VALUES (76, 334, '2020-09-22 19:14:54', '2020-09-22 19:14:54');
INSERT INTO `product_categories` VALUES (76, 335, '2020-09-22 19:14:55', '2020-09-22 19:14:55');
INSERT INTO `product_categories` VALUES (76, 336, '2020-09-22 19:14:56', '2020-09-22 19:14:56');
INSERT INTO `product_categories` VALUES (76, 337, '2020-09-22 19:14:57', '2020-09-22 19:14:57');
INSERT INTO `product_categories` VALUES (76, 338, '2020-09-22 19:14:57', '2020-09-22 19:14:57');
INSERT INTO `product_categories` VALUES (76, 339, '2020-09-22 19:14:58', '2020-09-22 19:14:58');
INSERT INTO `product_categories` VALUES (76, 340, '2020-09-22 19:14:59', '2020-09-22 19:14:59');
INSERT INTO `product_categories` VALUES (76, 341, '2020-09-22 19:14:59', '2020-09-22 19:14:59');
INSERT INTO `product_categories` VALUES (76, 342, '2020-09-22 19:15:00', '2020-09-22 19:15:00');
INSERT INTO `product_categories` VALUES (76, 343, '2020-09-22 19:15:01', '2020-09-22 19:15:01');
INSERT INTO `product_categories` VALUES (76, 344, '2020-09-22 19:15:02', '2020-09-22 19:15:02');
INSERT INTO `product_categories` VALUES (76, 345, '2020-09-22 19:15:02', '2020-09-22 19:15:02');
INSERT INTO `product_categories` VALUES (76, 346, '2020-09-22 19:15:03', '2020-09-22 19:15:03');
INSERT INTO `product_categories` VALUES (76, 347, '2020-09-22 19:15:04', '2020-09-22 19:15:04');
INSERT INTO `product_categories` VALUES (76, 348, '2020-09-22 19:15:04', '2020-09-22 19:15:04');
INSERT INTO `product_categories` VALUES (76, 349, '2020-09-22 19:15:05', '2020-09-22 19:15:05');
INSERT INTO `product_categories` VALUES (76, 350, '2020-09-22 19:15:06', '2020-09-22 19:15:06');
INSERT INTO `product_categories` VALUES (76, 351, '2020-09-22 19:15:07', '2020-09-22 19:15:07');
INSERT INTO `product_categories` VALUES (76, 352, '2020-09-22 19:15:07', '2020-09-22 19:15:07');
INSERT INTO `product_categories` VALUES (76, 353, '2020-09-22 19:15:08', '2020-09-22 19:15:08');
INSERT INTO `product_categories` VALUES (76, 354, '2020-09-22 19:15:09', '2020-09-22 19:15:09');
INSERT INTO `product_categories` VALUES (76, 355, '2020-09-22 19:15:10', '2020-09-22 19:15:10');
INSERT INTO `product_categories` VALUES (76, 356, '2020-09-22 19:15:11', '2020-09-22 19:15:11');
INSERT INTO `product_categories` VALUES (77, 321, '2020-09-22 19:14:44', '2020-09-22 19:14:44');
INSERT INTO `product_categories` VALUES (77, 322, '2020-09-22 19:14:45', '2020-09-22 19:14:45');
INSERT INTO `product_categories` VALUES (77, 323, '2020-09-22 19:14:46', '2020-09-22 19:14:46');
INSERT INTO `product_categories` VALUES (77, 324, '2020-09-22 19:14:46', '2020-09-22 19:14:46');
INSERT INTO `product_categories` VALUES (77, 325, '2020-09-22 19:14:47', '2020-09-22 19:14:47');
INSERT INTO `product_categories` VALUES (77, 326, '2020-09-22 19:14:48', '2020-09-22 19:14:48');
INSERT INTO `product_categories` VALUES (77, 327, '2020-09-22 19:14:49', '2020-09-22 19:14:49');
INSERT INTO `product_categories` VALUES (77, 328, '2020-09-22 19:14:50', '2020-09-22 19:14:50');
INSERT INTO `product_categories` VALUES (78, 329, '2020-09-22 19:14:50', '2020-09-22 19:14:50');
INSERT INTO `product_categories` VALUES (78, 330, '2020-09-22 19:14:51', '2020-09-22 19:14:51');
INSERT INTO `product_categories` VALUES (78, 331, '2020-09-22 19:14:52', '2020-09-22 19:14:52');
INSERT INTO `product_categories` VALUES (78, 332, '2020-09-22 19:14:53', '2020-09-22 19:14:53');
INSERT INTO `product_categories` VALUES (78, 333, '2020-09-22 19:14:54', '2020-09-22 19:14:54');
INSERT INTO `product_categories` VALUES (78, 334, '2020-09-22 19:14:54', '2020-09-22 19:14:54');
INSERT INTO `product_categories` VALUES (78, 335, '2020-09-22 19:14:55', '2020-09-22 19:14:55');
INSERT INTO `product_categories` VALUES (78, 336, '2020-09-22 19:14:56', '2020-09-22 19:14:56');
INSERT INTO `product_categories` VALUES (80, 349, '2020-09-22 19:15:05', '2020-09-22 19:15:05');
INSERT INTO `product_categories` VALUES (80, 350, '2020-09-22 19:15:06', '2020-09-22 19:15:06');
INSERT INTO `product_categories` VALUES (80, 351, '2020-09-22 19:15:07', '2020-09-22 19:15:07');
INSERT INTO `product_categories` VALUES (80, 352, '2020-09-22 19:15:08', '2020-09-22 19:15:08');
INSERT INTO `product_categories` VALUES (80, 353, '2020-09-22 19:15:08', '2020-09-22 19:15:08');
INSERT INTO `product_categories` VALUES (80, 354, '2020-09-22 19:15:09', '2020-09-22 19:15:09');
INSERT INTO `product_categories` VALUES (80, 355, '2020-09-22 19:15:10', '2020-09-22 19:15:10');
INSERT INTO `product_categories` VALUES (80, 356, '2020-09-22 19:15:11', '2020-09-22 19:15:11');
INSERT INTO `product_categories` VALUES (82, 357, '2020-09-22 19:15:12', '2020-09-22 19:15:12');
INSERT INTO `product_categories` VALUES (82, 358, '2020-09-22 19:15:12', '2020-09-22 19:15:12');
INSERT INTO `product_categories` VALUES (82, 359, '2020-09-22 19:15:13', '2020-09-22 19:15:13');
INSERT INTO `product_categories` VALUES (82, 360, '2020-09-22 19:15:14', '2020-09-22 19:15:14');
INSERT INTO `product_categories` VALUES (82, 361, '2020-09-22 19:15:15', '2020-09-22 19:15:15');
INSERT INTO `product_categories` VALUES (82, 362, '2020-09-22 19:15:16', '2020-09-22 19:15:16');
INSERT INTO `product_categories` VALUES (82, 363, '2020-09-22 19:15:16', '2020-09-22 19:15:16');
INSERT INTO `product_categories` VALUES (82, 364, '2020-09-22 19:15:17', '2020-09-22 19:15:17');
INSERT INTO `product_categories` VALUES (82, 365, '2020-09-22 19:15:18', '2020-09-22 19:15:18');
INSERT INTO `product_categories` VALUES (82, 366, '2020-09-22 19:15:19', '2020-09-22 19:15:19');
INSERT INTO `product_categories` VALUES (82, 367, '2020-09-22 19:15:20', '2020-09-22 19:15:20');
INSERT INTO `product_categories` VALUES (82, 368, '2020-09-22 19:15:20', '2020-09-22 19:15:20');
INSERT INTO `product_categories` VALUES (82, 369, '2020-09-22 19:15:21', '2020-09-22 19:15:21');
INSERT INTO `product_categories` VALUES (82, 370, '2020-09-22 19:15:22', '2020-09-22 19:15:22');
INSERT INTO `product_categories` VALUES (82, 371, '2020-09-22 19:15:23', '2020-09-22 19:15:23');
INSERT INTO `product_categories` VALUES (82, 372, '2020-09-22 19:15:24', '2020-09-22 19:15:24');
INSERT INTO `product_categories` VALUES (82, 373, '2020-09-22 19:15:25', '2020-09-22 19:15:25');
INSERT INTO `product_categories` VALUES (82, 374, '2020-09-22 19:15:26', '2020-09-22 19:15:26');
INSERT INTO `product_categories` VALUES (82, 375, '2020-09-22 19:15:27', '2020-09-22 19:15:27');
INSERT INTO `product_categories` VALUES (82, 376, '2020-09-22 19:15:28', '2020-09-22 19:15:28');
INSERT INTO `product_categories` VALUES (82, 377, '2020-09-22 19:15:28', '2020-09-22 19:15:28');
INSERT INTO `product_categories` VALUES (82, 378, '2020-09-22 19:15:29', '2020-09-22 19:15:29');
INSERT INTO `product_categories` VALUES (82, 379, '2020-09-22 19:15:30', '2020-09-22 19:15:30');
INSERT INTO `product_categories` VALUES (82, 380, '2020-09-22 19:15:31', '2020-09-22 19:15:31');
INSERT INTO `product_categories` VALUES (82, 381, '2020-09-22 19:15:32', '2020-09-22 19:15:32');
INSERT INTO `product_categories` VALUES (82, 3371, '2020-09-22 19:15:23', '2020-09-22 19:15:23');
INSERT INTO `product_categories` VALUES (83, 357, '2020-09-22 19:15:12', '2020-09-22 19:15:12');
INSERT INTO `product_categories` VALUES (83, 358, '2020-09-22 19:15:12', '2020-09-22 19:15:12');
INSERT INTO `product_categories` VALUES (83, 359, '2020-09-22 19:15:13', '2020-09-22 19:15:13');
INSERT INTO `product_categories` VALUES (83, 360, '2020-09-22 19:15:14', '2020-09-22 19:15:14');
INSERT INTO `product_categories` VALUES (83, 361, '2020-09-22 19:15:15', '2020-09-22 19:15:15');
INSERT INTO `product_categories` VALUES (83, 362, '2020-09-22 19:15:16', '2020-09-22 19:15:16');
INSERT INTO `product_categories` VALUES (83, 363, '2020-09-22 19:15:17', '2020-09-22 19:15:17');
INSERT INTO `product_categories` VALUES (83, 364, '2020-09-22 19:15:17', '2020-09-22 19:15:17');
INSERT INTO `product_categories` VALUES (84, 365, '2020-09-22 19:15:18', '2020-09-22 19:15:18');
INSERT INTO `product_categories` VALUES (84, 366, '2020-09-22 19:15:19', '2020-09-22 19:15:19');
INSERT INTO `product_categories` VALUES (84, 367, '2020-09-22 19:15:20', '2020-09-22 19:15:20');
INSERT INTO `product_categories` VALUES (84, 368, '2020-09-22 19:15:20', '2020-09-22 19:15:20');
INSERT INTO `product_categories` VALUES (84, 369, '2020-09-22 19:15:21', '2020-09-22 19:15:21');
INSERT INTO `product_categories` VALUES (85, 370, '2020-09-22 19:15:22', '2020-09-22 19:15:22');
INSERT INTO `product_categories` VALUES (85, 371, '2020-09-22 19:15:23', '2020-09-22 19:15:23');
INSERT INTO `product_categories` VALUES (85, 372, '2020-09-22 19:15:24', '2020-09-22 19:15:24');
INSERT INTO `product_categories` VALUES (85, 3371, '2020-09-22 19:15:24', '2020-09-22 19:15:24');
INSERT INTO `product_categories` VALUES (86, 373, '2020-09-22 19:15:25', '2020-09-22 19:15:25');
INSERT INTO `product_categories` VALUES (86, 374, '2020-09-22 19:15:26', '2020-09-22 19:15:26');
INSERT INTO `product_categories` VALUES (86, 375, '2020-09-22 19:15:27', '2020-09-22 19:15:27');
INSERT INTO `product_categories` VALUES (87, 376, '2020-09-22 19:15:28', '2020-09-22 19:15:28');
INSERT INTO `product_categories` VALUES (87, 377, '2020-09-22 19:15:29', '2020-09-22 19:15:29');
INSERT INTO `product_categories` VALUES (87, 378, '2020-09-22 19:15:29', '2020-09-22 19:15:29');
INSERT INTO `product_categories` VALUES (88, 379, '2020-09-22 19:15:30', '2020-09-22 19:15:30');
INSERT INTO `product_categories` VALUES (88, 380, '2020-09-22 19:15:31', '2020-09-22 19:15:31');
INSERT INTO `product_categories` VALUES (88, 381, '2020-09-22 19:15:32', '2020-09-22 19:15:32');
INSERT INTO `product_categories` VALUES (90, 382, '2020-09-22 19:15:32', '2020-09-22 19:15:32');
INSERT INTO `product_categories` VALUES (90, 383, '2020-09-22 19:15:33', '2020-09-22 19:15:33');
INSERT INTO `product_categories` VALUES (90, 384, '2020-09-22 19:15:34', '2020-09-22 19:15:34');
INSERT INTO `product_categories` VALUES (90, 385, '2020-09-22 19:15:35', '2020-09-22 19:15:35');
INSERT INTO `product_categories` VALUES (90, 386, '2020-09-22 19:15:36', '2020-09-22 19:15:36');
INSERT INTO `product_categories` VALUES (90, 387, '2020-09-22 19:15:37', '2020-09-22 19:15:37');
INSERT INTO `product_categories` VALUES (90, 388, '2020-09-22 19:15:37', '2020-09-22 19:15:37');
INSERT INTO `product_categories` VALUES (90, 389, '2020-09-22 19:15:38', '2020-09-22 19:15:38');
INSERT INTO `product_categories` VALUES (90, 390, '2020-09-22 19:15:39', '2020-09-22 19:15:39');
INSERT INTO `product_categories` VALUES (90, 391, '2020-09-22 19:15:40', '2020-09-22 19:15:40');
INSERT INTO `product_categories` VALUES (90, 392, '2020-09-22 19:15:41', '2020-09-22 19:15:41');
INSERT INTO `product_categories` VALUES (90, 393, '2020-09-22 19:15:42', '2020-09-22 19:15:42');
INSERT INTO `product_categories` VALUES (90, 394, '2020-09-22 19:15:43', '2020-09-22 19:15:43');
INSERT INTO `product_categories` VALUES (90, 395, '2020-09-22 19:15:43', '2020-09-22 19:15:43');
INSERT INTO `product_categories` VALUES (90, 396, '2020-09-22 19:15:44', '2020-09-22 19:15:44');
INSERT INTO `product_categories` VALUES (90, 397, '2020-09-22 19:15:45', '2020-09-22 19:15:45');
INSERT INTO `product_categories` VALUES (90, 398, '2020-09-22 19:15:46', '2020-09-22 19:15:46');
INSERT INTO `product_categories` VALUES (90, 399, '2020-09-22 19:15:47', '2020-09-22 19:15:47');
INSERT INTO `product_categories` VALUES (90, 400, '2020-09-22 19:15:47', '2020-09-22 19:15:47');
INSERT INTO `product_categories` VALUES (90, 401, '2020-09-22 19:15:48', '2020-09-22 19:15:48');
INSERT INTO `product_categories` VALUES (90, 402, '2020-09-22 19:15:49', '2020-09-22 19:15:49');
INSERT INTO `product_categories` VALUES (90, 403, '2020-09-22 19:15:50', '2020-09-22 19:15:50');
INSERT INTO `product_categories` VALUES (90, 404, '2020-09-22 19:15:51', '2020-09-22 19:15:51');
INSERT INTO `product_categories` VALUES (90, 405, '2020-09-22 19:15:51', '2020-09-22 19:15:51');
INSERT INTO `product_categories` VALUES (90, 406, '2020-09-22 19:15:52', '2020-09-22 19:15:52');
INSERT INTO `product_categories` VALUES (90, 407, '2020-09-22 19:15:53', '2020-09-22 19:15:53');
INSERT INTO `product_categories` VALUES (90, 408, '2020-09-22 19:15:53', '2020-09-22 19:15:53');
INSERT INTO `product_categories` VALUES (90, 409, '2020-09-22 19:15:54', '2020-09-22 19:15:54');
INSERT INTO `product_categories` VALUES (90, 410, '2020-09-22 19:15:55', '2020-09-22 19:15:55');
INSERT INTO `product_categories` VALUES (90, 411, '2020-09-22 19:15:56', '2020-09-22 19:15:56');
INSERT INTO `product_categories` VALUES (90, 412, '2020-09-22 19:15:57', '2020-09-22 19:15:57');
INSERT INTO `product_categories` VALUES (90, 413, '2020-09-22 19:15:57', '2020-09-22 19:15:57');
INSERT INTO `product_categories` VALUES (90, 414, '2020-09-22 19:15:58', '2020-09-22 19:15:58');
INSERT INTO `product_categories` VALUES (90, 415, '2020-09-22 19:15:59', '2020-09-22 19:15:59');
INSERT INTO `product_categories` VALUES (90, 416, '2020-09-22 19:16:00', '2020-09-22 19:16:00');
INSERT INTO `product_categories` VALUES (91, 382, '2020-09-22 19:15:33', '2020-09-22 19:15:33');
INSERT INTO `product_categories` VALUES (91, 383, '2020-09-22 19:15:33', '2020-09-22 19:15:33');
INSERT INTO `product_categories` VALUES (91, 384, '2020-09-22 19:15:34', '2020-09-22 19:15:34');
INSERT INTO `product_categories` VALUES (91, 385, '2020-09-22 19:15:35', '2020-09-22 19:15:35');
INSERT INTO `product_categories` VALUES (92, 386, '2020-09-22 19:15:36', '2020-09-22 19:15:36');
INSERT INTO `product_categories` VALUES (92, 387, '2020-09-22 19:15:37', '2020-09-22 19:15:37');
INSERT INTO `product_categories` VALUES (92, 388, '2020-09-22 19:15:38', '2020-09-22 19:15:38');
INSERT INTO `product_categories` VALUES (92, 389, '2020-09-22 19:15:38', '2020-09-22 19:15:38');
INSERT INTO `product_categories` VALUES (93, 390, '2020-09-22 19:15:39', '2020-09-22 19:15:39');
INSERT INTO `product_categories` VALUES (93, 391, '2020-09-22 19:15:40', '2020-09-22 19:15:40');
INSERT INTO `product_categories` VALUES (93, 392, '2020-09-22 19:15:41', '2020-09-22 19:15:41');
INSERT INTO `product_categories` VALUES (93, 393, '2020-09-22 19:15:42', '2020-09-22 19:15:42');
INSERT INTO `product_categories` VALUES (93, 394, '2020-09-22 19:15:43', '2020-09-22 19:15:43');
INSERT INTO `product_categories` VALUES (94, 395, '2020-09-22 19:15:44', '2020-09-22 19:15:44');
INSERT INTO `product_categories` VALUES (94, 396, '2020-09-22 19:15:44', '2020-09-22 19:15:44');
INSERT INTO `product_categories` VALUES (94, 397, '2020-09-22 19:15:45', '2020-09-22 19:15:45');
INSERT INTO `product_categories` VALUES (94, 398, '2020-09-22 19:15:46', '2020-09-22 19:15:46');
INSERT INTO `product_categories` VALUES (94, 399, '2020-09-22 19:15:47', '2020-09-22 19:15:47');
INSERT INTO `product_categories` VALUES (94, 400, '2020-09-22 19:15:48', '2020-09-22 19:15:48');
INSERT INTO `product_categories` VALUES (94, 401, '2020-09-22 19:15:48', '2020-09-22 19:15:48');
INSERT INTO `product_categories` VALUES (96, 407, '2020-09-22 19:15:53', '2020-09-22 19:15:53');
INSERT INTO `product_categories` VALUES (96, 408, '2020-09-22 19:15:54', '2020-09-22 19:15:54');
INSERT INTO `product_categories` VALUES (96, 409, '2020-09-22 19:15:54', '2020-09-22 19:15:54');
INSERT INTO `product_categories` VALUES (96, 410, '2020-09-22 19:15:55', '2020-09-22 19:15:55');
INSERT INTO `product_categories` VALUES (96, 411, '2020-09-22 19:15:56', '2020-09-22 19:15:56');
INSERT INTO `product_categories` VALUES (97, 412, '2020-09-22 19:15:57', '2020-09-22 19:15:57');
INSERT INTO `product_categories` VALUES (97, 413, '2020-09-22 19:15:58', '2020-09-22 19:15:58');
INSERT INTO `product_categories` VALUES (97, 414, '2020-09-22 19:15:58', '2020-09-22 19:15:58');
INSERT INTO `product_categories` VALUES (97, 415, '2020-09-22 19:15:59', '2020-09-22 19:15:59');
INSERT INTO `product_categories` VALUES (97, 416, '2020-09-22 19:16:00', '2020-09-22 19:16:00');
INSERT INTO `product_categories` VALUES (99, 417, '2020-09-22 19:16:01', '2020-09-22 19:16:01');
INSERT INTO `product_categories` VALUES (99, 418, '2020-09-22 19:16:01', '2020-09-22 19:16:01');
INSERT INTO `product_categories` VALUES (99, 419, '2020-09-22 19:16:02', '2020-09-22 19:16:02');
INSERT INTO `product_categories` VALUES (99, 420, '2020-09-22 19:16:03', '2020-09-22 19:16:03');
INSERT INTO `product_categories` VALUES (99, 421, '2020-09-22 19:16:04', '2020-09-22 19:16:04');
INSERT INTO `product_categories` VALUES (100, 422, '2020-09-22 19:16:04', '2020-09-22 19:16:04');
INSERT INTO `product_categories` VALUES (100, 423, '2020-09-22 19:16:05', '2020-09-22 19:16:05');
INSERT INTO `product_categories` VALUES (100, 424, '2020-09-22 19:16:06', '2020-09-22 19:16:06');
INSERT INTO `product_categories` VALUES (100, 425, '2020-09-22 19:16:06', '2020-09-22 19:16:06');
INSERT INTO `product_categories` VALUES (101, 426, '2020-09-22 19:16:07', '2020-09-22 19:16:07');
INSERT INTO `product_categories` VALUES (101, 427, '2020-09-22 19:16:08', '2020-09-22 19:16:08');
INSERT INTO `product_categories` VALUES (101, 428, '2020-09-22 19:16:09', '2020-09-22 19:16:09');
INSERT INTO `product_categories` VALUES (101, 429, '2020-09-22 19:16:09', '2020-09-22 19:16:09');
INSERT INTO `product_categories` VALUES (101, 430, '2020-09-22 19:16:10', '2020-09-22 19:16:10');
INSERT INTO `product_categories` VALUES (101, 431, '2020-09-22 19:16:11', '2020-09-22 19:16:11');
INSERT INTO `product_categories` VALUES (101, 458, '2020-09-22 19:16:28', '2020-09-22 19:16:28');
INSERT INTO `product_categories` VALUES (101, 459, '2020-09-22 19:16:28', '2020-09-22 19:16:28');
INSERT INTO `product_categories` VALUES (101, 460, '2020-09-22 19:16:29', '2020-09-22 19:16:29');
INSERT INTO `product_categories` VALUES (101, 461, '2020-09-22 19:16:30', '2020-09-22 19:16:30');
INSERT INTO `product_categories` VALUES (101, 462, '2020-09-22 19:16:30', '2020-09-22 19:16:30');
INSERT INTO `product_categories` VALUES (101, 463, '2020-09-22 19:16:31', '2020-09-22 19:16:31');
INSERT INTO `product_categories` VALUES (102, 432, '2020-09-22 19:16:11', '2020-09-22 19:16:11');
INSERT INTO `product_categories` VALUES (102, 433, '2020-09-22 19:16:12', '2020-09-22 19:16:12');
INSERT INTO `product_categories` VALUES (102, 434, '2020-09-22 19:16:13', '2020-09-22 19:16:13');
INSERT INTO `product_categories` VALUES (102, 435, '2020-09-22 19:16:13', '2020-09-22 19:16:13');
INSERT INTO `product_categories` VALUES (105, 436, '2020-09-22 19:16:14', '2020-09-22 19:16:14');
INSERT INTO `product_categories` VALUES (105, 437, '2020-09-22 19:16:15', '2020-09-22 19:16:15');
INSERT INTO `product_categories` VALUES (105, 438, '2020-09-22 19:16:15', '2020-09-22 19:16:15');
INSERT INTO `product_categories` VALUES (105, 451, '2020-09-22 19:16:24', '2020-09-22 19:16:24');
INSERT INTO `product_categories` VALUES (105, 452, '2020-09-22 19:16:24', '2020-09-22 19:16:24');
INSERT INTO `product_categories` VALUES (105, 453, '2020-09-22 19:16:25', '2020-09-22 19:16:25');
INSERT INTO `product_categories` VALUES (106, 439, '2020-09-22 19:16:16', '2020-09-22 19:16:16');
INSERT INTO `product_categories` VALUES (106, 440, '2020-09-22 19:16:17', '2020-09-22 19:16:17');
INSERT INTO `product_categories` VALUES (106, 441, '2020-09-22 19:16:18', '2020-09-22 19:16:18');
INSERT INTO `product_categories` VALUES (106, 442, '2020-09-22 19:16:18', '2020-09-22 19:16:18');
INSERT INTO `product_categories` VALUES (106, 443, '2020-09-22 19:16:19', '2020-09-22 19:16:19');
INSERT INTO `product_categories` VALUES (106, 444, '2020-09-22 19:16:20', '2020-09-22 19:16:20');
INSERT INTO `product_categories` VALUES (106, 445, '2020-09-22 19:16:20', '2020-09-22 19:16:20');
INSERT INTO `product_categories` VALUES (106, 446, '2020-09-22 19:16:21', '2020-09-22 19:16:21');
INSERT INTO `product_categories` VALUES (106, 447, '2020-09-22 19:16:21', '2020-09-22 19:16:21');
INSERT INTO `product_categories` VALUES (106, 448, '2020-09-22 19:16:22', '2020-09-22 19:16:22');
INSERT INTO `product_categories` VALUES (106, 449, '2020-09-22 19:16:23', '2020-09-22 19:16:23');
INSERT INTO `product_categories` VALUES (106, 450, '2020-09-22 19:16:23', '2020-09-22 19:16:23');
INSERT INTO `product_categories` VALUES (109, 454, '2020-09-22 19:16:25', '2020-09-22 19:16:25');
INSERT INTO `product_categories` VALUES (109, 455, '2020-09-22 19:16:26', '2020-09-22 19:16:26');
INSERT INTO `product_categories` VALUES (109, 456, '2020-09-22 19:16:27', '2020-09-22 19:16:27');
INSERT INTO `product_categories` VALUES (109, 457, '2020-09-22 19:16:27', '2020-09-22 19:16:27');
INSERT INTO `product_categories` VALUES (112, 670, '2020-09-22 19:19:10', '2020-09-22 19:19:10');
INSERT INTO `product_categories` VALUES (112, 671, '2020-09-22 19:19:11', '2020-09-22 19:19:11');
INSERT INTO `product_categories` VALUES (112, 672, '2020-09-22 19:19:11', '2020-09-22 19:19:11');
INSERT INTO `product_categories` VALUES (112, 673, '2020-09-22 19:19:12', '2020-09-22 19:19:12');
INSERT INTO `product_categories` VALUES (112, 674, '2020-09-22 19:19:12', '2020-09-22 19:19:12');
INSERT INTO `product_categories` VALUES (112, 675, '2020-09-22 19:19:13', '2020-09-22 19:19:13');
INSERT INTO `product_categories` VALUES (112, 676, '2020-09-22 19:19:14', '2020-09-22 19:19:14');
INSERT INTO `product_categories` VALUES (112, 677, '2020-09-22 19:19:14', '2020-09-22 19:19:14');
INSERT INTO `product_categories` VALUES (112, 678, '2020-09-22 19:19:15', '2020-09-22 19:19:15');
INSERT INTO `product_categories` VALUES (113, 679, '2020-09-22 19:19:16', '2020-09-22 19:19:16');
INSERT INTO `product_categories` VALUES (113, 680, '2020-09-22 19:19:16', '2020-09-22 19:19:16');
INSERT INTO `product_categories` VALUES (113, 681, '2020-09-22 19:19:17', '2020-09-22 19:19:17');
INSERT INTO `product_categories` VALUES (113, 682, '2020-09-22 19:19:17', '2020-09-22 19:19:17');
INSERT INTO `product_categories` VALUES (113, 683, '2020-09-22 19:19:18', '2020-09-22 19:19:18');
INSERT INTO `product_categories` VALUES (113, 684, '2020-09-22 19:19:19', '2020-09-22 19:19:19');
INSERT INTO `product_categories` VALUES (113, 685, '2020-09-22 19:19:19', '2020-09-22 19:19:19');
INSERT INTO `product_categories` VALUES (113, 686, '2020-09-22 19:19:20', '2020-09-22 19:19:20');
INSERT INTO `product_categories` VALUES (113, 687, '2020-09-22 19:19:20', '2020-09-22 19:19:20');
INSERT INTO `product_categories` VALUES (114, 688, '2020-09-22 19:19:21', '2020-09-22 19:19:21');
INSERT INTO `product_categories` VALUES (114, 689, '2020-09-22 19:19:22', '2020-09-22 19:19:22');
INSERT INTO `product_categories` VALUES (114, 690, '2020-09-22 19:19:22', '2020-09-22 19:19:22');
INSERT INTO `product_categories` VALUES (114, 691, '2020-09-22 19:19:23', '2020-09-22 19:19:23');
INSERT INTO `product_categories` VALUES (114, 692, '2020-09-22 19:19:23', '2020-09-22 19:19:23');
INSERT INTO `product_categories` VALUES (114, 693, '2020-09-22 19:19:24', '2020-09-22 19:19:24');
INSERT INTO `product_categories` VALUES (114, 694, '2020-09-22 19:19:25', '2020-09-22 19:19:25');
INSERT INTO `product_categories` VALUES (114, 695, '2020-09-22 19:19:25', '2020-09-22 19:19:25');
INSERT INTO `product_categories` VALUES (115, 696, '2020-09-22 19:19:26', '2020-09-22 19:19:26');
INSERT INTO `product_categories` VALUES (115, 697, '2020-09-22 19:19:26', '2020-09-22 19:19:26');
INSERT INTO `product_categories` VALUES (115, 698, '2020-09-22 19:19:27', '2020-09-22 19:19:27');
INSERT INTO `product_categories` VALUES (115, 699, '2020-09-22 19:19:28', '2020-09-22 19:19:28');
INSERT INTO `product_categories` VALUES (115, 700, '2020-09-22 19:19:28', '2020-09-22 19:19:28');
INSERT INTO `product_categories` VALUES (115, 701, '2020-09-22 19:19:29', '2020-09-22 19:19:29');
INSERT INTO `product_categories` VALUES (115, 702, '2020-09-22 19:19:30', '2020-09-22 19:19:30');
INSERT INTO `product_categories` VALUES (116, 703, '2020-09-22 19:19:30', '2020-09-22 19:19:30');
INSERT INTO `product_categories` VALUES (116, 704, '2020-09-22 19:19:31', '2020-09-22 19:19:31');
INSERT INTO `product_categories` VALUES (116, 705, '2020-09-22 19:19:32', '2020-09-22 19:19:32');
INSERT INTO `product_categories` VALUES (116, 706, '2020-09-22 19:19:32', '2020-09-22 19:19:32');
INSERT INTO `product_categories` VALUES (116, 707, '2020-09-22 19:19:33', '2020-09-22 19:19:33');
INSERT INTO `product_categories` VALUES (116, 708, '2020-09-22 19:19:33', '2020-09-22 19:19:33');
INSERT INTO `product_categories` VALUES (116, 709, '2020-09-22 19:19:34', '2020-09-22 19:19:34');
INSERT INTO `product_categories` VALUES (116, 710, '2020-09-22 19:19:35', '2020-09-22 19:19:35');
INSERT INTO `product_categories` VALUES (117, 711, '2020-09-22 19:19:35', '2020-09-22 19:19:35');
INSERT INTO `product_categories` VALUES (117, 712, '2020-09-22 19:19:36', '2020-09-22 19:19:36');
INSERT INTO `product_categories` VALUES (117, 713, '2020-09-22 19:19:36', '2020-09-22 19:19:36');
INSERT INTO `product_categories` VALUES (117, 714, '2020-09-22 19:19:37', '2020-09-22 19:19:37');
INSERT INTO `product_categories` VALUES (117, 715, '2020-09-22 19:19:38', '2020-09-22 19:19:38');
INSERT INTO `product_categories` VALUES (117, 716, '2020-09-22 19:19:38', '2020-09-22 19:19:38');
INSERT INTO `product_categories` VALUES (117, 717, '2020-09-22 19:19:39', '2020-09-22 19:19:39');
INSERT INTO `product_categories` VALUES (117, 718, '2020-09-22 19:19:40', '2020-09-22 19:19:40');
INSERT INTO `product_categories` VALUES (117, 719, '2020-09-22 19:19:40', '2020-09-22 19:19:40');
INSERT INTO `product_categories` VALUES (118, 720, '2020-09-22 19:19:41', '2020-09-22 19:19:41');
INSERT INTO `product_categories` VALUES (118, 721, '2020-09-22 19:19:41', '2020-09-22 19:19:41');
INSERT INTO `product_categories` VALUES (118, 722, '2020-09-22 19:19:42', '2020-09-22 19:19:42');
INSERT INTO `product_categories` VALUES (118, 723, '2020-09-22 19:19:43', '2020-09-22 19:19:43');
INSERT INTO `product_categories` VALUES (118, 724, '2020-09-22 19:19:43', '2020-09-22 19:19:43');
INSERT INTO `product_categories` VALUES (118, 726, '2020-09-22 19:19:44', '2020-09-22 19:19:44');
INSERT INTO `product_categories` VALUES (119, 730, '2020-09-22 19:19:44', '2020-09-22 19:19:44');
INSERT INTO `product_categories` VALUES (119, 731, '2020-09-22 19:19:45', '2020-09-22 19:19:45');
INSERT INTO `product_categories` VALUES (119, 732, '2020-09-22 19:19:46', '2020-09-22 19:19:46');
INSERT INTO `product_categories` VALUES (119, 733, '2020-09-22 19:19:46', '2020-09-22 19:19:46');
INSERT INTO `product_categories` VALUES (119, 734, '2020-09-22 19:19:47', '2020-09-22 19:19:47');
INSERT INTO `product_categories` VALUES (119, 735, '2020-09-22 19:19:47', '2020-09-22 19:19:47');
INSERT INTO `product_categories` VALUES (120, 571, '2020-09-22 19:17:50', '2020-09-22 19:17:50');
INSERT INTO `product_categories` VALUES (120, 572, '2020-09-22 19:17:51', '2020-09-22 19:17:51');
INSERT INTO `product_categories` VALUES (120, 573, '2020-09-22 19:17:52', '2020-09-22 19:17:52');
INSERT INTO `product_categories` VALUES (120, 574, '2020-09-22 19:17:52', '2020-09-22 19:17:52');
INSERT INTO `product_categories` VALUES (120, 575, '2020-09-22 19:17:53', '2020-09-22 19:17:53');
INSERT INTO `product_categories` VALUES (120, 576, '2020-09-22 19:17:54', '2020-09-22 19:17:54');
INSERT INTO `product_categories` VALUES (120, 577, '2020-09-22 19:17:55', '2020-09-22 19:17:55');
INSERT INTO `product_categories` VALUES (120, 578, '2020-09-22 19:17:56', '2020-09-22 19:17:56');
INSERT INTO `product_categories` VALUES (120, 579, '2020-09-22 19:17:56', '2020-09-22 19:17:56');
INSERT INTO `product_categories` VALUES (120, 580, '2020-09-22 19:17:57', '2020-09-22 19:17:57');
INSERT INTO `product_categories` VALUES (120, 581, '2020-09-22 19:17:58', '2020-09-22 19:17:58');
INSERT INTO `product_categories` VALUES (120, 582, '2020-09-22 19:17:59', '2020-09-22 19:17:59');
INSERT INTO `product_categories` VALUES (120, 583, '2020-09-22 19:17:59', '2020-09-22 19:17:59');
INSERT INTO `product_categories` VALUES (120, 585, '2020-09-22 19:18:00', '2020-09-22 19:18:00');
INSERT INTO `product_categories` VALUES (120, 586, '2020-09-22 19:18:01', '2020-09-22 19:18:01');
INSERT INTO `product_categories` VALUES (120, 587, '2020-09-22 19:18:02', '2020-09-22 19:18:02');
INSERT INTO `product_categories` VALUES (120, 588, '2020-09-22 19:18:03', '2020-09-22 19:18:03');
INSERT INTO `product_categories` VALUES (120, 589, '2020-09-22 19:18:03', '2020-09-22 19:18:03');
INSERT INTO `product_categories` VALUES (120, 590, '2020-09-22 19:18:04', '2020-09-22 19:18:04');
INSERT INTO `product_categories` VALUES (120, 591, '2020-09-22 19:18:05', '2020-09-22 19:18:05');
INSERT INTO `product_categories` VALUES (120, 592, '2020-09-22 19:18:06', '2020-09-22 19:18:06');
INSERT INTO `product_categories` VALUES (120, 593, '2020-09-22 19:18:07', '2020-09-22 19:18:07');
INSERT INTO `product_categories` VALUES (120, 594, '2020-09-22 19:18:08', '2020-09-22 19:18:08');
INSERT INTO `product_categories` VALUES (120, 595, '2020-09-22 19:18:08', '2020-09-22 19:18:08');
INSERT INTO `product_categories` VALUES (121, 571, '2020-09-22 19:17:50', '2020-09-22 19:17:50');
INSERT INTO `product_categories` VALUES (121, 572, '2020-09-22 19:17:51', '2020-09-22 19:17:51');
INSERT INTO `product_categories` VALUES (121, 573, '2020-09-22 19:17:52', '2020-09-22 19:17:52');
INSERT INTO `product_categories` VALUES (121, 574, '2020-09-22 19:17:53', '2020-09-22 19:17:53');
INSERT INTO `product_categories` VALUES (121, 575, '2020-09-22 19:17:53', '2020-09-22 19:17:53');
INSERT INTO `product_categories` VALUES (121, 576, '2020-09-22 19:17:54', '2020-09-22 19:17:54');
INSERT INTO `product_categories` VALUES (121, 577, '2020-09-22 19:17:55', '2020-09-22 19:17:55');
INSERT INTO `product_categories` VALUES (121, 578, '2020-09-22 19:17:56', '2020-09-22 19:17:56');
INSERT INTO `product_categories` VALUES (121, 579, '2020-09-22 19:17:57', '2020-09-22 19:17:57');
INSERT INTO `product_categories` VALUES (122, 586, '2020-09-22 19:18:01', '2020-09-22 19:18:01');
INSERT INTO `product_categories` VALUES (122, 587, '2020-09-22 19:18:02', '2020-09-22 19:18:02');
INSERT INTO `product_categories` VALUES (122, 588, '2020-09-22 19:18:03', '2020-09-22 19:18:03');
INSERT INTO `product_categories` VALUES (122, 589, '2020-09-22 19:18:04', '2020-09-22 19:18:04');
INSERT INTO `product_categories` VALUES (122, 590, '2020-09-22 19:18:04', '2020-09-22 19:18:04');
INSERT INTO `product_categories` VALUES (122, 591, '2020-09-22 19:18:05', '2020-09-22 19:18:05');
INSERT INTO `product_categories` VALUES (122, 592, '2020-09-22 19:18:06', '2020-09-22 19:18:06');
INSERT INTO `product_categories` VALUES (122, 593, '2020-09-22 19:18:07', '2020-09-22 19:18:07');
INSERT INTO `product_categories` VALUES (122, 594, '2020-09-22 19:18:08', '2020-09-22 19:18:08');
INSERT INTO `product_categories` VALUES (122, 595, '2020-09-22 19:18:09', '2020-09-22 19:18:09');
INSERT INTO `product_categories` VALUES (123, 580, '2020-09-22 19:17:57', '2020-09-22 19:17:57');
INSERT INTO `product_categories` VALUES (123, 581, '2020-09-22 19:17:58', '2020-09-22 19:17:58');
INSERT INTO `product_categories` VALUES (123, 582, '2020-09-22 19:17:59', '2020-09-22 19:17:59');
INSERT INTO `product_categories` VALUES (123, 583, '2020-09-22 19:18:00', '2020-09-22 19:18:00');
INSERT INTO `product_categories` VALUES (123, 585, '2020-09-22 19:18:01', '2020-09-22 19:18:01');
INSERT INTO `product_categories` VALUES (124, 596, '2020-09-22 19:18:09', '2020-09-22 19:18:09');
INSERT INTO `product_categories` VALUES (124, 597, '2020-09-22 19:18:10', '2020-09-22 19:18:10');
INSERT INTO `product_categories` VALUES (124, 598, '2020-09-22 19:18:11', '2020-09-22 19:18:11');
INSERT INTO `product_categories` VALUES (124, 599, '2020-09-22 19:18:12', '2020-09-22 19:18:12');
INSERT INTO `product_categories` VALUES (124, 600, '2020-09-22 19:18:12', '2020-09-22 19:18:12');
INSERT INTO `product_categories` VALUES (124, 601, '2020-09-22 19:18:13', '2020-09-22 19:18:13');
INSERT INTO `product_categories` VALUES (124, 602, '2020-09-22 19:18:14', '2020-09-22 19:18:14');
INSERT INTO `product_categories` VALUES (124, 603, '2020-09-22 19:18:15', '2020-09-22 19:18:15');
INSERT INTO `product_categories` VALUES (124, 604, '2020-09-22 19:18:15', '2020-09-22 19:18:15');
INSERT INTO `product_categories` VALUES (124, 605, '2020-09-22 19:18:16', '2020-09-22 19:18:16');
INSERT INTO `product_categories` VALUES (124, 606, '2020-09-22 19:18:17', '2020-09-22 19:18:17');
INSERT INTO `product_categories` VALUES (124, 607, '2020-09-22 19:18:18', '2020-09-22 19:18:18');
INSERT INTO `product_categories` VALUES (124, 608, '2020-09-22 19:18:19', '2020-09-22 19:18:19');
INSERT INTO `product_categories` VALUES (124, 609, '2020-09-22 19:18:20', '2020-09-22 19:18:20');
INSERT INTO `product_categories` VALUES (124, 610, '2020-09-22 19:18:20', '2020-09-22 19:18:20');
INSERT INTO `product_categories` VALUES (124, 611, '2020-09-22 19:18:21', '2020-09-22 19:18:21');
INSERT INTO `product_categories` VALUES (124, 612, '2020-09-22 19:18:22', '2020-09-22 19:18:22');
INSERT INTO `product_categories` VALUES (124, 613, '2020-09-22 19:18:23', '2020-09-22 19:18:23');
INSERT INTO `product_categories` VALUES (124, 614, '2020-09-22 19:18:24', '2020-09-22 19:18:24');
INSERT INTO `product_categories` VALUES (124, 615, '2020-09-22 19:18:25', '2020-09-22 19:18:25');
INSERT INTO `product_categories` VALUES (125, 596, '2020-09-22 19:18:09', '2020-09-22 19:18:09');
INSERT INTO `product_categories` VALUES (125, 597, '2020-09-22 19:18:10', '2020-09-22 19:18:10');
INSERT INTO `product_categories` VALUES (125, 598, '2020-09-22 19:18:11', '2020-09-22 19:18:11');
INSERT INTO `product_categories` VALUES (125, 599, '2020-09-22 19:18:12', '2020-09-22 19:18:12');
INSERT INTO `product_categories` VALUES (125, 600, '2020-09-22 19:18:13', '2020-09-22 19:18:13');
INSERT INTO `product_categories` VALUES (126, 601, '2020-09-22 19:18:13', '2020-09-22 19:18:13');
INSERT INTO `product_categories` VALUES (126, 602, '2020-09-22 19:18:14', '2020-09-22 19:18:14');
INSERT INTO `product_categories` VALUES (126, 603, '2020-09-22 19:18:15', '2020-09-22 19:18:15');
INSERT INTO `product_categories` VALUES (126, 604, '2020-09-22 19:18:16', '2020-09-22 19:18:16');
INSERT INTO `product_categories` VALUES (126, 605, '2020-09-22 19:18:16', '2020-09-22 19:18:16');
INSERT INTO `product_categories` VALUES (126, 606, '2020-09-22 19:18:17', '2020-09-22 19:18:17');
INSERT INTO `product_categories` VALUES (127, 607, '2020-09-22 19:18:18', '2020-09-22 19:18:18');
INSERT INTO `product_categories` VALUES (127, 608, '2020-09-22 19:18:19', '2020-09-22 19:18:19');
INSERT INTO `product_categories` VALUES (127, 609, '2020-09-22 19:18:20', '2020-09-22 19:18:20');
INSERT INTO `product_categories` VALUES (127, 610, '2020-09-22 19:18:21', '2020-09-22 19:18:21');
INSERT INTO `product_categories` VALUES (127, 611, '2020-09-22 19:18:21', '2020-09-22 19:18:21');
INSERT INTO `product_categories` VALUES (127, 612, '2020-09-22 19:18:22', '2020-09-22 19:18:22');
INSERT INTO `product_categories` VALUES (127, 613, '2020-09-22 19:18:23', '2020-09-22 19:18:23');
INSERT INTO `product_categories` VALUES (127, 614, '2020-09-22 19:18:24', '2020-09-22 19:18:24');
INSERT INTO `product_categories` VALUES (127, 615, '2020-09-22 19:18:25', '2020-09-22 19:18:25');
INSERT INTO `product_categories` VALUES (128, 616, '2020-09-22 19:18:25', '2020-09-22 19:18:25');
INSERT INTO `product_categories` VALUES (128, 617, '2020-09-22 19:18:26', '2020-09-22 19:18:26');
INSERT INTO `product_categories` VALUES (128, 618, '2020-09-22 19:18:27', '2020-09-22 19:18:27');
INSERT INTO `product_categories` VALUES (128, 619, '2020-09-22 19:18:28', '2020-09-22 19:18:28');
INSERT INTO `product_categories` VALUES (128, 620, '2020-09-22 19:18:29', '2020-09-22 19:18:29');
INSERT INTO `product_categories` VALUES (128, 621, '2020-09-22 19:18:30', '2020-09-22 19:18:30');
INSERT INTO `product_categories` VALUES (128, 622, '2020-09-22 19:18:31', '2020-09-22 19:18:31');
INSERT INTO `product_categories` VALUES (128, 623, '2020-09-22 19:18:31', '2020-09-22 19:18:31');
INSERT INTO `product_categories` VALUES (128, 624, '2020-09-22 19:18:32', '2020-09-22 19:18:32');
INSERT INTO `product_categories` VALUES (128, 625, '2020-09-22 19:18:33', '2020-09-22 19:18:33');
INSERT INTO `product_categories` VALUES (128, 626, '2020-09-22 19:18:34', '2020-09-22 19:18:34');
INSERT INTO `product_categories` VALUES (128, 627, '2020-09-22 19:18:35', '2020-09-22 19:18:35');
INSERT INTO `product_categories` VALUES (128, 628, '2020-09-22 19:18:35', '2020-09-22 19:18:35');
INSERT INTO `product_categories` VALUES (128, 629, '2020-09-22 19:18:36', '2020-09-22 19:18:36');
INSERT INTO `product_categories` VALUES (128, 630, '2020-09-22 19:18:37', '2020-09-22 19:18:37');
INSERT INTO `product_categories` VALUES (128, 631, '2020-09-22 19:18:38', '2020-09-22 19:18:38');
INSERT INTO `product_categories` VALUES (128, 632, '2020-09-22 19:18:39', '2020-09-22 19:18:39');
INSERT INTO `product_categories` VALUES (128, 633, '2020-09-22 19:18:40', '2020-09-22 19:18:40');
INSERT INTO `product_categories` VALUES (128, 634, '2020-09-22 19:18:41', '2020-09-22 19:18:41');
INSERT INTO `product_categories` VALUES (128, 635, '2020-09-22 19:18:41', '2020-09-22 19:18:41');
INSERT INTO `product_categories` VALUES (128, 636, '2020-09-22 19:18:42', '2020-09-22 19:18:42');
INSERT INTO `product_categories` VALUES (128, 637, '2020-09-22 19:18:43', '2020-09-22 19:18:43');
INSERT INTO `product_categories` VALUES (128, 638, '2020-09-22 19:18:44', '2020-09-22 19:18:44');
INSERT INTO `product_categories` VALUES (128, 639, '2020-09-22 19:18:45', '2020-09-22 19:18:45');
INSERT INTO `product_categories` VALUES (128, 640, '2020-09-22 19:18:45', '2020-09-22 19:18:45');
INSERT INTO `product_categories` VALUES (128, 641, '2020-09-22 19:18:46', '2020-09-22 19:18:46');
INSERT INTO `product_categories` VALUES (128, 642, '2020-09-22 19:18:47', '2020-09-22 19:18:47');
INSERT INTO `product_categories` VALUES (128, 643, '2020-09-22 19:18:48', '2020-09-22 19:18:48');
INSERT INTO `product_categories` VALUES (128, 644, '2020-09-22 19:18:49', '2020-09-22 19:18:49');
INSERT INTO `product_categories` VALUES (128, 645, '2020-09-22 19:18:49', '2020-09-22 19:18:49');
INSERT INTO `product_categories` VALUES (128, 646, '2020-09-22 19:18:50', '2020-09-22 19:18:50');
INSERT INTO `product_categories` VALUES (129, 616, '2020-09-22 19:18:26', '2020-09-22 19:18:26');
INSERT INTO `product_categories` VALUES (129, 617, '2020-09-22 19:18:27', '2020-09-22 19:18:27');
INSERT INTO `product_categories` VALUES (129, 618, '2020-09-22 19:18:27', '2020-09-22 19:18:27');
INSERT INTO `product_categories` VALUES (129, 619, '2020-09-22 19:18:28', '2020-09-22 19:18:28');
INSERT INTO `product_categories` VALUES (129, 620, '2020-09-22 19:18:29', '2020-09-22 19:18:29');
INSERT INTO `product_categories` VALUES (129, 621, '2020-09-22 19:18:30', '2020-09-22 19:18:30');
INSERT INTO `product_categories` VALUES (129, 622, '2020-09-22 19:18:31', '2020-09-22 19:18:31');
INSERT INTO `product_categories` VALUES (129, 623, '2020-09-22 19:18:32', '2020-09-22 19:18:32');
INSERT INTO `product_categories` VALUES (129, 624, '2020-09-22 19:18:32', '2020-09-22 19:18:32');
INSERT INTO `product_categories` VALUES (129, 625, '2020-09-22 19:18:33', '2020-09-22 19:18:33');
INSERT INTO `product_categories` VALUES (129, 626, '2020-09-22 19:18:34', '2020-09-22 19:18:34');
INSERT INTO `product_categories` VALUES (130, 627, '2020-09-22 19:18:35', '2020-09-22 19:18:35');
INSERT INTO `product_categories` VALUES (130, 628, '2020-09-22 19:18:36', '2020-09-22 19:18:36');
INSERT INTO `product_categories` VALUES (130, 629, '2020-09-22 19:18:37', '2020-09-22 19:18:37');
INSERT INTO `product_categories` VALUES (130, 630, '2020-09-22 19:18:38', '2020-09-22 19:18:38');
INSERT INTO `product_categories` VALUES (130, 631, '2020-09-22 19:18:38', '2020-09-22 19:18:38');
INSERT INTO `product_categories` VALUES (130, 632, '2020-09-22 19:18:39', '2020-09-22 19:18:39');
INSERT INTO `product_categories` VALUES (130, 633, '2020-09-22 19:18:40', '2020-09-22 19:18:40');
INSERT INTO `product_categories` VALUES (130, 634, '2020-09-22 19:18:41', '2020-09-22 19:18:41');
INSERT INTO `product_categories` VALUES (130, 635, '2020-09-22 19:18:42', '2020-09-22 19:18:42');
INSERT INTO `product_categories` VALUES (130, 637, '2020-09-22 19:18:43', '2020-09-22 19:18:43');
INSERT INTO `product_categories` VALUES (131, 636, '2020-09-22 19:18:42', '2020-09-22 19:18:42');
INSERT INTO `product_categories` VALUES (131, 638, '2020-09-22 19:18:44', '2020-09-22 19:18:44');
INSERT INTO `product_categories` VALUES (131, 639, '2020-09-22 19:18:45', '2020-09-22 19:18:45');
INSERT INTO `product_categories` VALUES (131, 640, '2020-09-22 19:18:46', '2020-09-22 19:18:46');
INSERT INTO `product_categories` VALUES (131, 641, '2020-09-22 19:18:47', '2020-09-22 19:18:47');
INSERT INTO `product_categories` VALUES (131, 642, '2020-09-22 19:18:47', '2020-09-22 19:18:47');
INSERT INTO `product_categories` VALUES (131, 643, '2020-09-22 19:18:48', '2020-09-22 19:18:48');
INSERT INTO `product_categories` VALUES (131, 644, '2020-09-22 19:18:49', '2020-09-22 19:18:49');
INSERT INTO `product_categories` VALUES (131, 645, '2020-09-22 19:18:50', '2020-09-22 19:18:50');
INSERT INTO `product_categories` VALUES (131, 646, '2020-09-22 19:18:51', '2020-09-22 19:18:51');
INSERT INTO `product_categories` VALUES (132, 647, '2020-09-22 19:18:51', '2020-09-22 19:18:51');
INSERT INTO `product_categories` VALUES (132, 648, '2020-09-22 19:18:52', '2020-09-22 19:18:52');
INSERT INTO `product_categories` VALUES (132, 649, '2020-09-22 19:18:53', '2020-09-22 19:18:53');
INSERT INTO `product_categories` VALUES (132, 650, '2020-09-22 19:18:54', '2020-09-22 19:18:54');
INSERT INTO `product_categories` VALUES (132, 651, '2020-09-22 19:18:54', '2020-09-22 19:18:54');
INSERT INTO `product_categories` VALUES (132, 652, '2020-09-22 19:18:55', '2020-09-22 19:18:55');
INSERT INTO `product_categories` VALUES (132, 653, '2020-09-22 19:18:56', '2020-09-22 19:18:56');
INSERT INTO `product_categories` VALUES (132, 654, '2020-09-22 19:18:57', '2020-09-22 19:18:57');
INSERT INTO `product_categories` VALUES (132, 655, '2020-09-22 19:18:58', '2020-09-22 19:18:58');
INSERT INTO `product_categories` VALUES (132, 656, '2020-09-22 19:18:58', '2020-09-22 19:18:58');
INSERT INTO `product_categories` VALUES (132, 657, '2020-09-22 19:18:59', '2020-09-22 19:18:59');
INSERT INTO `product_categories` VALUES (132, 658, '2020-09-22 19:19:00', '2020-09-22 19:19:00');
INSERT INTO `product_categories` VALUES (132, 659, '2020-09-22 19:19:01', '2020-09-22 19:19:01');
INSERT INTO `product_categories` VALUES (132, 660, '2020-09-22 19:19:02', '2020-09-22 19:19:02');
INSERT INTO `product_categories` VALUES (132, 661, '2020-09-22 19:19:03', '2020-09-22 19:19:03');
INSERT INTO `product_categories` VALUES (132, 662, '2020-09-22 19:19:04', '2020-09-22 19:19:04');
INSERT INTO `product_categories` VALUES (132, 663, '2020-09-22 19:19:04', '2020-09-22 19:19:04');
INSERT INTO `product_categories` VALUES (132, 664, '2020-09-22 19:19:05', '2020-09-22 19:19:05');
INSERT INTO `product_categories` VALUES (132, 665, '2020-09-22 19:19:06', '2020-09-22 19:19:06');
INSERT INTO `product_categories` VALUES (132, 666, '2020-09-22 19:19:07', '2020-09-22 19:19:07');
INSERT INTO `product_categories` VALUES (132, 667, '2020-09-22 19:19:08', '2020-09-22 19:19:08');
INSERT INTO `product_categories` VALUES (132, 668, '2020-09-22 19:19:08', '2020-09-22 19:19:08');
INSERT INTO `product_categories` VALUES (132, 669, '2020-09-22 19:19:09', '2020-09-22 19:19:09');
INSERT INTO `product_categories` VALUES (133, 647, '2020-09-22 19:18:51', '2020-09-22 19:18:51');
INSERT INTO `product_categories` VALUES (133, 648, '2020-09-22 19:18:52', '2020-09-22 19:18:52');
INSERT INTO `product_categories` VALUES (133, 649, '2020-09-22 19:18:53', '2020-09-22 19:18:53');
INSERT INTO `product_categories` VALUES (133, 650, '2020-09-22 19:18:54', '2020-09-22 19:18:54');
INSERT INTO `product_categories` VALUES (133, 651, '2020-09-22 19:18:55', '2020-09-22 19:18:55');
INSERT INTO `product_categories` VALUES (133, 652, '2020-09-22 19:18:55', '2020-09-22 19:18:55');
INSERT INTO `product_categories` VALUES (133, 653, '2020-09-22 19:18:56', '2020-09-22 19:18:56');
INSERT INTO `product_categories` VALUES (133, 654, '2020-09-22 19:18:57', '2020-09-22 19:18:57');
INSERT INTO `product_categories` VALUES (134, 655, '2020-09-22 19:18:58', '2020-09-22 19:18:58');
INSERT INTO `product_categories` VALUES (134, 656, '2020-09-22 19:18:59', '2020-09-22 19:18:59');
INSERT INTO `product_categories` VALUES (134, 657, '2020-09-22 19:18:59', '2020-09-22 19:18:59');
INSERT INTO `product_categories` VALUES (134, 658, '2020-09-22 19:19:00', '2020-09-22 19:19:00');
INSERT INTO `product_categories` VALUES (134, 659, '2020-09-22 19:19:01', '2020-09-22 19:19:01');
INSERT INTO `product_categories` VALUES (134, 660, '2020-09-22 19:19:02', '2020-09-22 19:19:02');
INSERT INTO `product_categories` VALUES (134, 661, '2020-09-22 19:19:03', '2020-09-22 19:19:03');
INSERT INTO `product_categories` VALUES (134, 662, '2020-09-22 19:19:04', '2020-09-22 19:19:04');
INSERT INTO `product_categories` VALUES (135, 663, '2020-09-22 19:19:05', '2020-09-22 19:19:05');
INSERT INTO `product_categories` VALUES (135, 664, '2020-09-22 19:19:05', '2020-09-22 19:19:05');
INSERT INTO `product_categories` VALUES (135, 665, '2020-09-22 19:19:06', '2020-09-22 19:19:06');
INSERT INTO `product_categories` VALUES (135, 666, '2020-09-22 19:19:07', '2020-09-22 19:19:07');
INSERT INTO `product_categories` VALUES (135, 667, '2020-09-22 19:19:08', '2020-09-22 19:19:08');
INSERT INTO `product_categories` VALUES (135, 668, '2020-09-22 19:19:09', '2020-09-22 19:19:09');
INSERT INTO `product_categories` VALUES (135, 669, '2020-09-22 19:19:09', '2020-09-22 19:19:09');
INSERT INTO `product_categories` VALUES (1001, 773, '2020-09-22 19:20:12', '2020-09-22 19:20:12');
INSERT INTO `product_categories` VALUES (1001, 774, '2020-09-22 19:20:12', '2020-09-22 19:20:12');
INSERT INTO `product_categories` VALUES (1001, 775, '2020-09-22 19:20:13', '2020-09-22 19:20:13');
INSERT INTO `product_categories` VALUES (1001, 776, '2020-09-22 19:20:14', '2020-09-22 19:20:14');
INSERT INTO `product_categories` VALUES (1001, 777, '2020-09-22 19:20:14', '2020-09-22 19:20:14');
INSERT INTO `product_categories` VALUES (1002, 778, '2020-09-22 19:20:15', '2020-09-22 19:20:15');
INSERT INTO `product_categories` VALUES (1002, 779, '2020-09-22 19:20:16', '2020-09-22 19:20:16');
INSERT INTO `product_categories` VALUES (1002, 780, '2020-09-22 19:20:16', '2020-09-22 19:20:16');
INSERT INTO `product_categories` VALUES (1002, 781, '2020-09-22 19:20:17', '2020-09-22 19:20:17');
INSERT INTO `product_categories` VALUES (1002, 782, '2020-09-22 19:20:17', '2020-09-22 19:20:17');
INSERT INTO `product_categories` VALUES (1003, 783, '2020-09-22 19:20:18', '2020-09-22 19:20:18');
INSERT INTO `product_categories` VALUES (1003, 784, '2020-09-22 19:20:19', '2020-09-22 19:20:19');
INSERT INTO `product_categories` VALUES (1003, 785, '2020-09-22 19:20:19', '2020-09-22 19:20:19');
INSERT INTO `product_categories` VALUES (1003, 786, '2020-09-22 19:20:20', '2020-09-22 19:20:20');
INSERT INTO `product_categories` VALUES (1003, 787, '2020-09-22 19:20:20', '2020-09-22 19:20:20');
INSERT INTO `product_categories` VALUES (1004, 788, '2020-09-22 19:20:21', '2020-09-22 19:20:21');
INSERT INTO `product_categories` VALUES (1004, 789, '2020-09-22 19:20:21', '2020-09-22 19:20:21');
INSERT INTO `product_categories` VALUES (1004, 790, '2020-09-22 19:20:22', '2020-09-22 19:20:22');
INSERT INTO `product_categories` VALUES (1004, 791, '2020-09-22 19:20:23', '2020-09-22 19:20:23');
INSERT INTO `product_categories` VALUES (1004, 792, '2020-09-22 19:20:23', '2020-09-22 19:20:23');
INSERT INTO `product_categories` VALUES (1005, 760, '2020-09-22 19:20:04', '2020-09-22 19:20:04');
INSERT INTO `product_categories` VALUES (1005, 761, '2020-09-22 19:20:05', '2020-09-22 19:20:05');
INSERT INTO `product_categories` VALUES (1005, 762, '2020-09-22 19:20:06', '2020-09-22 19:20:06');
INSERT INTO `product_categories` VALUES (1005, 763, '2020-09-22 19:20:06', '2020-09-22 19:20:06');
INSERT INTO `product_categories` VALUES (1005, 764, '2020-09-22 19:20:07', '2020-09-22 19:20:07');
INSERT INTO `product_categories` VALUES (1005, 765, '2020-09-22 19:20:07', '2020-09-22 19:20:07');
INSERT INTO `product_categories` VALUES (1005, 766, '2020-09-22 19:20:08', '2020-09-22 19:20:08');
INSERT INTO `product_categories` VALUES (1007, 737, '2020-09-22 19:19:48', '2020-09-22 19:19:48');
INSERT INTO `product_categories` VALUES (1007, 740, '2020-09-22 19:19:49', '2020-09-22 19:19:49');
INSERT INTO `product_categories` VALUES (1007, 741, '2020-09-22 19:19:50', '2020-09-22 19:19:50');
INSERT INTO `product_categories` VALUES (1007, 742, '2020-09-22 19:19:50', '2020-09-22 19:19:50');
INSERT INTO `product_categories` VALUES (1007, 743, '2020-09-22 19:19:51', '2020-09-22 19:19:51');
INSERT INTO `product_categories` VALUES (1007, 744, '2020-09-22 19:19:52', '2020-09-22 19:19:52');
INSERT INTO `product_categories` VALUES (1007, 745, '2020-09-22 19:19:53', '2020-09-22 19:19:53');
INSERT INTO `product_categories` VALUES (1007, 746, '2020-09-22 19:19:54', '2020-09-22 19:19:54');
INSERT INTO `product_categories` VALUES (1007, 747, '2020-09-22 19:19:54', '2020-09-22 19:19:54');
INSERT INTO `product_categories` VALUES (1007, 748, '2020-09-22 19:19:55', '2020-09-22 19:19:55');
INSERT INTO `product_categories` VALUES (1007, 749, '2020-09-22 19:19:56', '2020-09-22 19:19:56');
INSERT INTO `product_categories` VALUES (1007, 750, '2020-09-22 19:19:57', '2020-09-22 19:19:57');
INSERT INTO `product_categories` VALUES (1007, 751, '2020-09-22 19:19:58', '2020-09-22 19:19:58');
INSERT INTO `product_categories` VALUES (1007, 752, '2020-09-22 19:19:58', '2020-09-22 19:19:58');
INSERT INTO `product_categories` VALUES (1007, 753, '2020-09-22 19:19:59', '2020-09-22 19:19:59');
INSERT INTO `product_categories` VALUES (1007, 754, '2020-09-22 19:20:00', '2020-09-22 19:20:00');
INSERT INTO `product_categories` VALUES (1007, 755, '2020-09-22 19:20:00', '2020-09-22 19:20:00');
INSERT INTO `product_categories` VALUES (1007, 756, '2020-09-22 19:20:01', '2020-09-22 19:20:01');
INSERT INTO `product_categories` VALUES (1007, 757, '2020-09-22 19:20:02', '2020-09-22 19:20:02');
INSERT INTO `product_categories` VALUES (1007, 758, '2020-09-22 19:20:03', '2020-09-22 19:20:03');
INSERT INTO `product_categories` VALUES (1007, 759, '2020-09-22 19:20:04', '2020-09-22 19:20:04');
INSERT INTO `product_categories` VALUES (1008, 745, '2020-09-22 19:19:53', '2020-09-22 19:19:53');
INSERT INTO `product_categories` VALUES (1008, 746, '2020-09-22 19:19:54', '2020-09-22 19:19:54');
INSERT INTO `product_categories` VALUES (1008, 747, '2020-09-22 19:19:55', '2020-09-22 19:19:55');
INSERT INTO `product_categories` VALUES (1008, 748, '2020-09-22 19:19:55', '2020-09-22 19:19:55');
INSERT INTO `product_categories` VALUES (1008, 749, '2020-09-22 19:19:56', '2020-09-22 19:19:56');
INSERT INTO `product_categories` VALUES (1008, 750, '2020-09-22 19:19:57', '2020-09-22 19:19:57');
INSERT INTO `product_categories` VALUES (1009, 737, '2020-09-22 19:19:48', '2020-09-22 19:19:48');
INSERT INTO `product_categories` VALUES (1009, 740, '2020-09-22 19:19:49', '2020-09-22 19:19:49');
INSERT INTO `product_categories` VALUES (1009, 741, '2020-09-22 19:19:50', '2020-09-22 19:19:50');
INSERT INTO `product_categories` VALUES (1009, 742, '2020-09-22 19:19:51', '2020-09-22 19:19:51');
INSERT INTO `product_categories` VALUES (1009, 743, '2020-09-22 19:19:51', '2020-09-22 19:19:51');
INSERT INTO `product_categories` VALUES (1009, 744, '2020-09-22 19:19:52', '2020-09-22 19:19:52');
INSERT INTO `product_categories` VALUES (1011, 755, '2020-09-22 19:20:01', '2020-09-22 19:20:01');
INSERT INTO `product_categories` VALUES (1011, 756, '2020-09-22 19:20:01', '2020-09-22 19:20:01');
INSERT INTO `product_categories` VALUES (1011, 757, '2020-09-22 19:20:02', '2020-09-22 19:20:02');
INSERT INTO `product_categories` VALUES (1011, 758, '2020-09-22 19:20:03', '2020-09-22 19:20:03');
INSERT INTO `product_categories` VALUES (1011, 759, '2020-09-22 19:20:04', '2020-09-22 19:20:04');

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
INSERT INTO `product_tags` VALUES (8, 1, '2020-09-22 17:08:18', '2020-09-22 17:08:18');
INSERT INTO `product_tags` VALUES (9, 1, '2020-09-22 17:08:19', '2020-09-22 17:08:19');
INSERT INTO `product_tags` VALUES (10, 1, '2020-09-22 17:08:19', '2020-09-22 17:08:19');
INSERT INTO `product_tags` VALUES (11, 1, '2020-09-22 17:08:20', '2020-09-22 17:08:20');
INSERT INTO `product_tags` VALUES (12, 1, '2020-09-22 17:08:21', '2020-09-22 17:08:21');
INSERT INTO `product_tags` VALUES (13, 1, '2020-09-22 17:08:21', '2020-09-22 17:08:21');
INSERT INTO `product_tags` VALUES (14, 1, '2020-09-22 17:08:22', '2020-09-22 17:08:22');
INSERT INTO `product_tags` VALUES (15, 1, '2020-09-22 17:08:23', '2020-09-22 17:08:23');
INSERT INTO `product_tags` VALUES (16, 1, '2020-09-22 17:08:23', '2020-09-22 17:08:23');
INSERT INTO `product_tags` VALUES (17, 1, '2020-09-22 17:08:24', '2020-09-22 17:08:24');
INSERT INTO `product_tags` VALUES (18, 1, '2020-09-22 17:08:25', '2020-09-22 17:08:25');
INSERT INTO `product_tags` VALUES (19, 1, '2020-09-22 17:08:25', '2020-09-22 17:08:25');
INSERT INTO `product_tags` VALUES (20, 1, '2020-09-22 17:08:26', '2020-09-22 17:08:26');
INSERT INTO `product_tags` VALUES (1, 1, '2020-09-22 17:08:27', '2020-09-22 17:08:27');
INSERT INTO `product_tags` VALUES (2, 1, '2020-09-22 17:08:28', '2020-09-22 17:08:28');
INSERT INTO `product_tags` VALUES (3, 1, '2020-09-22 17:08:29', '2020-09-22 17:08:29');
INSERT INTO `product_tags` VALUES (4, 1, '2020-09-22 17:08:29', '2020-09-22 17:08:29');
INSERT INTO `product_tags` VALUES (5, 1, '2020-09-22 17:08:30', '2020-09-22 17:08:30');
INSERT INTO `product_tags` VALUES (6, 1, '2020-09-22 17:08:31', '2020-09-22 17:08:31');
INSERT INTO `product_tags` VALUES (7, 1, '2020-09-22 17:08:31', '2020-09-22 17:08:31');
INSERT INTO `product_tags` VALUES (21, 1, '2020-09-22 17:08:32', '2020-09-22 17:08:32');
INSERT INTO `product_tags` VALUES (22, 1, '2020-09-22 17:08:33', '2020-09-22 17:08:33');
INSERT INTO `product_tags` VALUES (23, 1, '2020-09-22 17:08:33', '2020-09-22 17:08:33');
INSERT INTO `product_tags` VALUES (24, 1, '2020-09-22 17:08:34', '2020-09-22 17:08:34');
INSERT INTO `product_tags` VALUES (25, 1, '2020-09-22 17:08:35', '2020-09-22 17:08:35');
INSERT INTO `product_tags` VALUES (26, 1, '2020-09-22 17:08:35', '2020-09-22 17:08:35');
INSERT INTO `product_tags` VALUES (27, 1, '2020-09-22 17:08:36', '2020-09-22 17:08:36');
INSERT INTO `product_tags` VALUES (28, 1, '2020-09-22 17:08:37', '2020-09-22 17:08:37');
INSERT INTO `product_tags` VALUES (29, 1, '2020-09-22 17:08:38', '2020-09-22 17:08:38');
INSERT INTO `product_tags` VALUES (30, 1, '2020-09-22 17:08:38', '2020-09-22 17:08:38');
INSERT INTO `product_tags` VALUES (35, 2, '2020-09-22 17:08:39', '2020-09-22 17:08:39');
INSERT INTO `product_tags` VALUES (36, 2, '2020-09-22 17:08:40', '2020-09-22 17:08:40');
INSERT INTO `product_tags` VALUES (37, 2, '2020-09-22 17:08:41', '2020-09-22 17:08:41');
INSERT INTO `product_tags` VALUES (38, 2, '2020-09-22 17:08:41', '2020-09-22 17:08:41');
INSERT INTO `product_tags` VALUES (39, 2, '2020-09-22 17:08:42', '2020-09-22 17:08:42');
INSERT INTO `product_tags` VALUES (40, 2, '2020-09-22 17:08:42', '2020-09-22 17:08:42');
INSERT INTO `product_tags` VALUES (41, 2, '2020-09-22 17:08:43', '2020-09-22 17:08:43');
INSERT INTO `product_tags` VALUES (42, 2, '2020-09-22 17:08:43', '2020-09-22 17:08:43');
INSERT INTO `product_tags` VALUES (43, 2, '2020-09-22 17:08:44', '2020-09-22 17:08:44');
INSERT INTO `product_tags` VALUES (44, 2, '2020-09-22 17:08:44', '2020-09-22 17:08:44');
INSERT INTO `product_tags` VALUES (45, 2, '2020-09-22 18:52:46', '2020-09-22 18:52:46');
INSERT INTO `product_tags` VALUES (46, 2, '2020-09-22 18:52:47', '2020-09-22 18:52:47');
INSERT INTO `product_tags` VALUES (47, 2, '2020-09-22 18:52:48', '2020-09-22 18:52:48');
INSERT INTO `product_tags` VALUES (48, 2, '2020-09-22 18:52:48', '2020-09-22 18:52:48');
INSERT INTO `product_tags` VALUES (49, 2, '2020-09-22 18:52:49', '2020-09-22 18:52:49');
INSERT INTO `product_tags` VALUES (50, 2, '2020-09-22 18:52:49', '2020-09-22 18:52:49');
INSERT INTO `product_tags` VALUES (51, 2, '2020-09-22 18:52:50', '2020-09-22 18:52:50');
INSERT INTO `product_tags` VALUES (52, 2, '2020-09-22 18:52:50', '2020-09-22 18:52:50');
INSERT INTO `product_tags` VALUES (53, 2, '2020-09-22 18:52:51', '2020-09-22 18:52:51');
INSERT INTO `product_tags` VALUES (54, 2, '2020-09-22 18:52:51', '2020-09-22 18:52:51');
INSERT INTO `product_tags` VALUES (55, 2, '2020-09-22 18:52:52', '2020-09-22 18:52:52');
INSERT INTO `product_tags` VALUES (56, 3, '2020-09-22 18:52:52', '2020-09-22 18:52:52');
INSERT INTO `product_tags` VALUES (57, 3, '2020-09-22 18:52:53', '2020-09-22 18:52:53');
INSERT INTO `product_tags` VALUES (58, 3, '2020-09-22 18:52:54', '2020-09-22 18:52:54');
INSERT INTO `product_tags` VALUES (59, 3, '2020-09-22 18:52:54', '2020-09-22 18:52:54');
INSERT INTO `product_tags` VALUES (60, 3, '2020-09-22 18:52:55', '2020-09-22 18:52:55');
INSERT INTO `product_tags` VALUES (61, 3, '2020-09-22 18:52:56', '2020-09-22 18:52:56');
INSERT INTO `product_tags` VALUES (62, 3, '2020-09-22 18:52:56', '2020-09-22 18:52:56');
INSERT INTO `product_tags` VALUES (63, 3, '2020-09-22 18:52:57', '2020-09-22 18:52:57');
INSERT INTO `product_tags` VALUES (64, 3, '2020-09-22 18:52:57', '2020-09-22 18:52:57');
INSERT INTO `product_tags` VALUES (65, 3, '2020-09-22 18:52:58', '2020-09-22 18:52:58');
INSERT INTO `product_tags` VALUES (66, 3, '2020-09-22 18:52:59', '2020-09-22 18:52:59');
INSERT INTO `product_tags` VALUES (67, 3, '2020-09-22 18:52:59', '2020-09-22 18:52:59');
INSERT INTO `product_tags` VALUES (68, 3, '2020-09-22 18:53:00', '2020-09-22 18:53:00');
INSERT INTO `product_tags` VALUES (69, 3, '2020-09-22 18:53:01', '2020-09-22 18:53:01');
INSERT INTO `product_tags` VALUES (70, 3, '2020-09-22 18:53:02', '2020-09-22 18:53:02');
INSERT INTO `product_tags` VALUES (71, 3, '2020-09-22 18:53:03', '2020-09-22 18:53:03');
INSERT INTO `product_tags` VALUES (72, 3, '2020-09-22 18:53:03', '2020-09-22 18:53:03');
INSERT INTO `product_tags` VALUES (73, 3, '2020-09-22 18:53:04', '2020-09-22 18:53:04');
INSERT INTO `product_tags` VALUES (74, 3, '2020-09-22 18:53:05', '2020-09-22 18:53:05');
INSERT INTO `product_tags` VALUES (75, 3, '2020-09-22 18:53:06', '2020-09-22 18:53:06');
INSERT INTO `product_tags` VALUES (76, 3, '2020-09-22 18:59:51', '2020-09-22 18:59:51');
INSERT INTO `product_tags` VALUES (77, 3, '2020-09-22 18:59:52', '2020-09-22 18:59:52');
INSERT INTO `product_tags` VALUES (78, 3, '2020-09-22 18:59:52', '2020-09-22 18:59:52');
INSERT INTO `product_tags` VALUES (79, 3, '2020-09-22 18:59:53', '2020-09-22 18:59:53');
INSERT INTO `product_tags` VALUES (80, 3, '2020-09-22 18:59:53', '2020-09-22 18:59:53');
INSERT INTO `product_tags` VALUES (81, 3, '2020-09-22 18:59:54', '2020-09-22 18:59:54');
INSERT INTO `product_tags` VALUES (82, 3, '2020-09-22 18:59:55', '2020-09-22 18:59:55');
INSERT INTO `product_tags` VALUES (83, 4, '2020-09-22 18:59:56', '2020-09-22 18:59:56');
INSERT INTO `product_tags` VALUES (84, 4, '2020-09-22 18:59:57', '2020-09-22 18:59:57');
INSERT INTO `product_tags` VALUES (85, 4, '2020-09-22 18:59:57', '2020-09-22 18:59:57');
INSERT INTO `product_tags` VALUES (86, 4, '2020-09-22 18:59:58', '2020-09-22 18:59:58');
INSERT INTO `product_tags` VALUES (87, 4, '2020-09-22 18:59:59', '2020-09-22 18:59:59');
INSERT INTO `product_tags` VALUES (88, 4, '2020-09-22 18:59:59', '2020-09-22 18:59:59');
INSERT INTO `product_tags` VALUES (89, 4, '2020-09-22 19:00:00', '2020-09-22 19:00:00');
INSERT INTO `product_tags` VALUES (90, 4, '2020-09-22 19:00:01', '2020-09-22 19:00:01');
INSERT INTO `product_tags` VALUES (91, 4, '2020-09-22 19:00:01', '2020-09-22 19:00:01');
INSERT INTO `product_tags` VALUES (92, 4, '2020-09-22 19:00:02', '2020-09-22 19:00:02');
INSERT INTO `product_tags` VALUES (93, 4, '2020-09-22 19:00:03', '2020-09-22 19:00:03');
INSERT INTO `product_tags` VALUES (94, 4, '2020-09-22 19:00:03', '2020-09-22 19:00:03');
INSERT INTO `product_tags` VALUES (95, 4, '2020-09-22 19:00:04', '2020-09-22 19:00:04');
INSERT INTO `product_tags` VALUES (96, 4, '2020-09-22 19:00:05', '2020-09-22 19:00:05');
INSERT INTO `product_tags` VALUES (97, 4, '2020-09-22 19:00:05', '2020-09-22 19:00:05');
INSERT INTO `product_tags` VALUES (98, 4, '2020-09-22 19:00:06', '2020-09-22 19:00:06');
INSERT INTO `product_tags` VALUES (99, 4, '2020-09-22 19:00:07', '2020-09-22 19:00:07');
INSERT INTO `product_tags` VALUES (100, 4, '2020-09-22 19:00:08', '2020-09-22 19:00:08');
INSERT INTO `product_tags` VALUES (101, 4, '2020-09-22 19:00:08', '2020-09-22 19:00:08');
INSERT INTO `product_tags` VALUES (102, 4, '2020-09-22 19:00:09', '2020-09-22 19:00:09');
INSERT INTO `product_tags` VALUES (103, 4, '2020-09-22 19:00:10', '2020-09-22 19:00:10');
INSERT INTO `product_tags` VALUES (104, 1, '2020-09-22 19:00:10', '2020-09-22 19:00:10');
INSERT INTO `product_tags` VALUES (105, 1, '2020-09-22 19:00:11', '2020-09-22 19:00:11');
INSERT INTO `product_tags` VALUES (106, 1, '2020-09-22 19:00:12', '2020-09-22 19:00:12');
INSERT INTO `product_tags` VALUES (107, 1, '2020-09-22 19:00:13', '2020-09-22 19:00:13');
INSERT INTO `product_tags` VALUES (108, 1, '2020-09-22 19:00:13', '2020-09-22 19:00:13');
INSERT INTO `product_tags` VALUES (110, 1, '2020-09-22 19:00:14', '2020-09-22 19:00:14');
INSERT INTO `product_tags` VALUES (111, 1, '2020-09-22 19:00:15', '2020-09-22 19:00:15');
INSERT INTO `product_tags` VALUES (112, 1, '2020-09-22 19:00:15', '2020-09-22 19:00:15');
INSERT INTO `product_tags` VALUES (113, 1, '2020-09-22 19:00:16', '2020-09-22 19:00:16');
INSERT INTO `product_tags` VALUES (114, 1, '2020-09-22 19:00:17', '2020-09-22 19:00:17');
INSERT INTO `product_tags` VALUES (115, 1, '2020-09-22 19:00:18', '2020-09-22 19:00:18');
INSERT INTO `product_tags` VALUES (116, 1, '2020-09-22 19:00:18', '2020-09-22 19:00:18');
INSERT INTO `product_tags` VALUES (117, 1, '2020-09-22 19:00:19', '2020-09-22 19:00:19');
INSERT INTO `product_tags` VALUES (118, 1, '2020-09-22 19:00:20', '2020-09-22 19:00:20');
INSERT INTO `product_tags` VALUES (119, 1, '2020-09-22 19:00:20', '2020-09-22 19:00:20');
INSERT INTO `product_tags` VALUES (120, 1, '2020-09-22 19:00:21', '2020-09-22 19:00:21');
INSERT INTO `product_tags` VALUES (121, 1, '2020-09-22 19:00:22', '2020-09-22 19:00:22');
INSERT INTO `product_tags` VALUES (122, 1, '2020-09-22 19:00:23', '2020-09-22 19:00:23');
INSERT INTO `product_tags` VALUES (123, 1, '2020-09-22 19:00:23', '2020-09-22 19:00:23');
INSERT INTO `product_tags` VALUES (124, 1, '2020-09-22 19:00:24', '2020-09-22 19:00:24');
INSERT INTO `product_tags` VALUES (125, 1, '2020-09-22 19:00:25', '2020-09-22 19:00:25');
INSERT INTO `product_tags` VALUES (126, 1, '2020-09-22 19:00:25', '2020-09-22 19:00:25');
INSERT INTO `product_tags` VALUES (127, 1, '2020-09-22 19:00:26', '2020-09-22 19:00:26');
INSERT INTO `product_tags` VALUES (128, 1, '2020-09-22 19:00:27', '2020-09-22 19:00:27');
INSERT INTO `product_tags` VALUES (129, 1, '2020-09-22 19:00:28', '2020-09-22 19:00:28');
INSERT INTO `product_tags` VALUES (130, 1, '2020-09-22 19:00:29', '2020-09-22 19:00:29');
INSERT INTO `product_tags` VALUES (131, 1, '2020-09-22 19:00:29', '2020-09-22 19:00:29');
INSERT INTO `product_tags` VALUES (132, 1, '2020-09-22 19:00:30', '2020-09-22 19:00:30');
INSERT INTO `product_tags` VALUES (133, 1, '2020-09-22 19:00:31', '2020-09-22 19:00:31');
INSERT INTO `product_tags` VALUES (134, 1, '2020-09-22 19:00:32', '2020-09-22 19:00:32');
INSERT INTO `product_tags` VALUES (135, 1, '2020-09-22 19:00:32', '2020-09-22 19:00:32');
INSERT INTO `product_tags` VALUES (136, 1, '2020-09-22 19:00:33', '2020-09-22 19:00:33');
INSERT INTO `product_tags` VALUES (137, 1, '2020-09-22 19:00:34', '2020-09-22 19:00:34');
INSERT INTO `product_tags` VALUES (138, 1, '2020-09-22 19:00:34', '2020-09-22 19:00:34');
INSERT INTO `product_tags` VALUES (139, 1, '2020-09-22 19:00:35', '2020-09-22 19:00:35');
INSERT INTO `product_tags` VALUES (140, 1, '2020-09-22 19:00:36', '2020-09-22 19:00:36');
INSERT INTO `product_tags` VALUES (141, 1, '2020-09-22 19:00:37', '2020-09-22 19:00:37');
INSERT INTO `product_tags` VALUES (142, 1, '2020-09-22 19:00:37', '2020-09-22 19:00:37');
INSERT INTO `product_tags` VALUES (143, 1, '2020-09-22 19:00:38', '2020-09-22 19:00:38');
INSERT INTO `product_tags` VALUES (144, 1, '2020-09-22 19:00:39', '2020-09-22 19:00:39');
INSERT INTO `product_tags` VALUES (145, 1, '2020-09-22 19:00:39', '2020-09-22 19:00:39');
INSERT INTO `product_tags` VALUES (146, 1, '2020-09-22 19:00:40', '2020-09-22 19:00:40');
INSERT INTO `product_tags` VALUES (147, 1, '2020-09-22 19:00:41', '2020-09-22 19:00:41');
INSERT INTO `product_tags` VALUES (148, 1, '2020-09-22 19:00:41', '2020-09-22 19:00:41');
INSERT INTO `product_tags` VALUES (150, 1, '2020-09-22 19:00:42', '2020-09-22 19:00:42');
INSERT INTO `product_tags` VALUES (151, 1, '2020-09-22 19:00:43', '2020-09-22 19:00:43');
INSERT INTO `product_tags` VALUES (152, 1, '2020-09-22 19:00:44', '2020-09-22 19:00:44');
INSERT INTO `product_tags` VALUES (153, 1, '2020-09-22 19:00:44', '2020-09-22 19:00:44');
INSERT INTO `product_tags` VALUES (154, 1, '2020-09-22 19:00:45', '2020-09-22 19:00:45');
INSERT INTO `product_tags` VALUES (155, 1, '2020-09-22 19:00:46', '2020-09-22 19:00:46');
INSERT INTO `product_tags` VALUES (156, 1, '2020-09-22 19:00:47', '2020-09-22 19:00:47');
INSERT INTO `product_tags` VALUES (157, 1, '2020-09-22 19:00:47', '2020-09-22 19:00:47');
INSERT INTO `product_tags` VALUES (158, 1, '2020-09-22 19:00:48', '2020-09-22 19:00:48');
INSERT INTO `product_tags` VALUES (159, 1, '2020-09-22 19:00:49', '2020-09-22 19:00:49');
INSERT INTO `product_tags` VALUES (160, 1, '2020-09-22 19:00:50', '2020-09-22 19:00:50');
INSERT INTO `product_tags` VALUES (161, 1, '2020-09-22 19:00:50', '2020-09-22 19:00:50');
INSERT INTO `product_tags` VALUES (162, 1, '2020-09-22 19:00:51', '2020-09-22 19:00:51');
INSERT INTO `product_tags` VALUES (163, 1, '2020-09-22 19:00:52', '2020-09-22 19:00:52');
INSERT INTO `product_tags` VALUES (164, 1, '2020-09-22 19:00:52', '2020-09-22 19:00:52');
INSERT INTO `product_tags` VALUES (165, 1, '2020-09-22 19:00:53', '2020-09-22 19:00:53');
INSERT INTO `product_tags` VALUES (166, 1, '2020-09-22 19:00:54', '2020-09-22 19:00:54');
INSERT INTO `product_tags` VALUES (167, 1, '2020-09-22 19:00:55', '2020-09-22 19:00:55');
INSERT INTO `product_tags` VALUES (168, 1, '2020-09-22 19:00:55', '2020-09-22 19:00:55');
INSERT INTO `product_tags` VALUES (169, 1, '2020-09-22 19:00:56', '2020-09-22 19:00:56');
INSERT INTO `product_tags` VALUES (170, 1, '2020-09-22 19:00:57', '2020-09-22 19:00:57');
INSERT INTO `product_tags` VALUES (171, 1, '2020-09-22 19:00:57', '2020-09-22 19:00:57');
INSERT INTO `product_tags` VALUES (172, 1, '2020-09-22 19:00:58', '2020-09-22 19:00:58');
INSERT INTO `product_tags` VALUES (173, 1, '2020-09-22 19:00:59', '2020-09-22 19:00:59');
INSERT INTO `product_tags` VALUES (174, 1, '2020-09-22 19:01:00', '2020-09-22 19:01:00');
INSERT INTO `product_tags` VALUES (175, 1, '2020-09-22 19:01:00', '2020-09-22 19:01:00');
INSERT INTO `product_tags` VALUES (176, 1, '2020-09-22 19:01:01', '2020-09-22 19:01:01');
INSERT INTO `product_tags` VALUES (177, 1, '2020-09-22 19:01:02', '2020-09-22 19:01:02');
INSERT INTO `product_tags` VALUES (178, 1, '2020-09-22 19:01:02', '2020-09-22 19:01:02');
INSERT INTO `product_tags` VALUES (179, 1, '2020-09-22 19:01:03', '2020-09-22 19:01:03');
INSERT INTO `product_tags` VALUES (180, 1, '2020-09-22 19:01:04', '2020-09-22 19:01:04');
INSERT INTO `product_tags` VALUES (181, 1, '2020-09-22 19:01:05', '2020-09-22 19:01:05');
INSERT INTO `product_tags` VALUES (182, 1, '2020-09-22 19:01:06', '2020-09-22 19:01:06');
INSERT INTO `product_tags` VALUES (183, 1, '2020-09-22 19:01:07', '2020-09-22 19:01:07');
INSERT INTO `product_tags` VALUES (184, 1, '2020-09-22 19:01:07', '2020-09-22 19:01:07');
INSERT INTO `product_tags` VALUES (185, 1, '2020-09-22 19:01:08', '2020-09-22 19:01:08');
INSERT INTO `product_tags` VALUES (186, 1, '2020-09-22 19:01:09', '2020-09-22 19:01:09');
INSERT INTO `product_tags` VALUES (187, 1, '2020-09-22 19:01:10', '2020-09-22 19:01:10');
INSERT INTO `product_tags` VALUES (188, 1, '2020-09-22 19:01:10', '2020-09-22 19:01:10');
INSERT INTO `product_tags` VALUES (189, 1, '2020-09-22 19:01:11', '2020-09-22 19:01:11');
INSERT INTO `product_tags` VALUES (190, 1, '2020-09-22 19:01:12', '2020-09-22 19:01:12');
INSERT INTO `product_tags` VALUES (191, 1, '2020-09-22 19:01:13', '2020-09-22 19:01:13');
INSERT INTO `product_tags` VALUES (192, 1, '2020-09-22 19:01:14', '2020-09-22 19:01:14');
INSERT INTO `product_tags` VALUES (193, 1, '2020-09-22 19:01:14', '2020-09-22 19:01:14');
INSERT INTO `product_tags` VALUES (194, 1, '2020-09-22 19:01:15', '2020-09-22 19:01:15');
INSERT INTO `product_tags` VALUES (195, 1, '2020-09-22 19:01:16', '2020-09-22 19:01:16');
INSERT INTO `product_tags` VALUES (196, 1, '2020-09-22 19:01:17', '2020-09-22 19:01:17');
INSERT INTO `product_tags` VALUES (197, 1, '2020-09-22 19:01:17', '2020-09-22 19:01:17');
INSERT INTO `product_tags` VALUES (198, 1, '2020-09-22 19:01:18', '2020-09-22 19:01:18');
INSERT INTO `product_tags` VALUES (199, 1, '2020-09-22 19:01:19', '2020-09-22 19:01:19');
INSERT INTO `product_tags` VALUES (200, 1, '2020-09-22 19:02:28', '2020-09-22 19:02:28');
INSERT INTO `product_tags` VALUES (201, 1, '2020-09-22 19:02:28', '2020-09-22 19:02:28');
INSERT INTO `product_tags` VALUES (202, 1, '2020-09-22 19:02:30', '2020-09-22 19:02:30');
INSERT INTO `product_tags` VALUES (203, 1, '2020-09-22 19:02:31', '2020-09-22 19:02:31');
INSERT INTO `product_tags` VALUES (204, 1, '2020-09-22 19:02:32', '2020-09-22 19:02:32');
INSERT INTO `product_tags` VALUES (205, 1, '2020-09-22 19:04:59', '2020-09-22 19:04:59');
INSERT INTO `product_tags` VALUES (206, 1, '2020-09-22 19:05:00', '2020-09-22 19:05:00');
INSERT INTO `product_tags` VALUES (207, 1, '2020-09-22 19:05:01', '2020-09-22 19:05:01');
INSERT INTO `product_tags` VALUES (208, 1, '2020-09-22 19:05:02', '2020-09-22 19:05:02');
INSERT INTO `product_tags` VALUES (209, 1, '2020-09-22 19:05:02', '2020-09-22 19:05:02');
INSERT INTO `product_tags` VALUES (210, 1, '2020-09-22 19:05:03', '2020-09-22 19:05:03');
INSERT INTO `product_tags` VALUES (211, 1, '2020-09-22 19:05:04', '2020-09-22 19:05:04');
INSERT INTO `product_tags` VALUES (212, 1, '2020-09-22 19:05:05', '2020-09-22 19:05:05');
INSERT INTO `product_tags` VALUES (213, 1, '2020-09-22 19:05:06', '2020-09-22 19:05:06');
INSERT INTO `product_tags` VALUES (214, 1, '2020-09-22 19:05:06', '2020-09-22 19:05:06');
INSERT INTO `product_tags` VALUES (215, 1, '2020-09-22 19:05:07', '2020-09-22 19:05:07');
INSERT INTO `product_tags` VALUES (216, 1, '2020-09-22 19:05:08', '2020-09-22 19:05:08');
INSERT INTO `product_tags` VALUES (217, 1, '2020-09-22 19:05:09', '2020-09-22 19:05:09');
INSERT INTO `product_tags` VALUES (219, 1, '2020-09-22 19:05:10', '2020-09-22 19:05:10');
INSERT INTO `product_tags` VALUES (220, 1, '2020-09-22 19:05:10', '2020-09-22 19:05:10');
INSERT INTO `product_tags` VALUES (221, 1, '2020-09-22 19:05:11', '2020-09-22 19:05:11');
INSERT INTO `product_tags` VALUES (224, 1, '2020-09-22 19:05:12', '2020-09-22 19:05:12');
INSERT INTO `product_tags` VALUES (225, 1, '2020-09-22 19:05:13', '2020-09-22 19:05:13');
INSERT INTO `product_tags` VALUES (226, 1, '2020-09-22 19:05:14', '2020-09-22 19:05:14');
INSERT INTO `product_tags` VALUES (227, 1, '2020-09-22 19:06:46', '2020-09-22 19:06:46');
INSERT INTO `product_tags` VALUES (229, 1, '2020-09-22 19:09:47', '2020-09-22 19:09:47');
INSERT INTO `product_tags` VALUES (230, 1, '2020-09-22 19:12:02', '2020-09-22 19:12:02');
INSERT INTO `product_tags` VALUES (231, 1, '2020-09-22 19:13:39', '2020-09-22 19:13:39');
INSERT INTO `product_tags` VALUES (232, 1, '2020-09-22 19:13:39', '2020-09-22 19:13:39');
INSERT INTO `product_tags` VALUES (233, 1, '2020-09-22 19:13:40', '2020-09-22 19:13:40');
INSERT INTO `product_tags` VALUES (234, 1, '2020-09-22 19:13:41', '2020-09-22 19:13:41');
INSERT INTO `product_tags` VALUES (235, 1, '2020-09-22 19:13:42', '2020-09-22 19:13:42');
INSERT INTO `product_tags` VALUES (236, 1, '2020-09-22 19:13:42', '2020-09-22 19:13:42');
INSERT INTO `product_tags` VALUES (237, 1, '2020-09-22 19:13:43', '2020-09-22 19:13:43');
INSERT INTO `product_tags` VALUES (238, 1, '2020-09-22 19:13:44', '2020-09-22 19:13:44');
INSERT INTO `product_tags` VALUES (239, 1, '2020-09-22 19:13:44', '2020-09-22 19:13:44');
INSERT INTO `product_tags` VALUES (240, 1, '2020-09-22 19:13:45', '2020-09-22 19:13:45');
INSERT INTO `product_tags` VALUES (241, 1, '2020-09-22 19:13:46', '2020-09-22 19:13:46');
INSERT INTO `product_tags` VALUES (242, 1, '2020-09-22 19:13:46', '2020-09-22 19:13:46');
INSERT INTO `product_tags` VALUES (243, 1, '2020-09-22 19:13:47', '2020-09-22 19:13:47');
INSERT INTO `product_tags` VALUES (244, 1, '2020-09-22 19:13:48', '2020-09-22 19:13:48');
INSERT INTO `product_tags` VALUES (245, 1, '2020-09-22 19:13:48', '2020-09-22 19:13:48');
INSERT INTO `product_tags` VALUES (246, 1, '2020-09-22 19:13:49', '2020-09-22 19:13:49');
INSERT INTO `product_tags` VALUES (247, 1, '2020-09-22 19:13:50', '2020-09-22 19:13:50');
INSERT INTO `product_tags` VALUES (248, 1, '2020-09-22 19:13:50', '2020-09-22 19:13:50');
INSERT INTO `product_tags` VALUES (249, 1, '2020-09-22 19:13:51', '2020-09-22 19:13:51');
INSERT INTO `product_tags` VALUES (251, 1, '2020-09-22 19:13:52', '2020-09-22 19:13:52');
INSERT INTO `product_tags` VALUES (252, 1, '2020-09-22 19:13:52', '2020-09-22 19:13:52');
INSERT INTO `product_tags` VALUES (253, 1, '2020-09-22 19:13:53', '2020-09-22 19:13:53');
INSERT INTO `product_tags` VALUES (254, 1, '2020-09-22 19:13:54', '2020-09-22 19:13:54');
INSERT INTO `product_tags` VALUES (255, 1, '2020-09-22 19:13:54', '2020-09-22 19:13:54');
INSERT INTO `product_tags` VALUES (256, 1, '2020-09-22 19:13:55', '2020-09-22 19:13:55');
INSERT INTO `product_tags` VALUES (257, 1, '2020-09-22 19:13:56', '2020-09-22 19:13:56');
INSERT INTO `product_tags` VALUES (258, 1, '2020-09-22 19:13:57', '2020-09-22 19:13:57');
INSERT INTO `product_tags` VALUES (259, 1, '2020-09-22 19:13:57', '2020-09-22 19:13:57');
INSERT INTO `product_tags` VALUES (260, 1, '2020-09-22 19:13:58', '2020-09-22 19:13:58');
INSERT INTO `product_tags` VALUES (261, 1, '2020-09-22 19:13:58', '2020-09-22 19:13:58');
INSERT INTO `product_tags` VALUES (262, 1, '2020-09-22 19:13:59', '2020-09-22 19:13:59');
INSERT INTO `product_tags` VALUES (263, 1, '2020-09-22 19:14:00', '2020-09-22 19:14:00');
INSERT INTO `product_tags` VALUES (264, 1, '2020-09-22 19:14:01', '2020-09-22 19:14:01');
INSERT INTO `product_tags` VALUES (265, 1, '2020-09-22 19:14:01', '2020-09-22 19:14:01');
INSERT INTO `product_tags` VALUES (266, 1, '2020-09-22 19:14:02', '2020-09-22 19:14:02');
INSERT INTO `product_tags` VALUES (267, 1, '2020-09-22 19:14:03', '2020-09-22 19:14:03');
INSERT INTO `product_tags` VALUES (268, 1, '2020-09-22 19:14:03', '2020-09-22 19:14:03');
INSERT INTO `product_tags` VALUES (269, 1, '2020-09-22 19:14:04', '2020-09-22 19:14:04');
INSERT INTO `product_tags` VALUES (270, 1, '2020-09-22 19:14:05', '2020-09-22 19:14:05');
INSERT INTO `product_tags` VALUES (271, 1, '2020-09-22 19:14:05', '2020-09-22 19:14:05');
INSERT INTO `product_tags` VALUES (272, 1, '2020-09-22 19:14:06', '2020-09-22 19:14:06');
INSERT INTO `product_tags` VALUES (274, 1, '2020-09-22 19:14:07', '2020-09-22 19:14:07');
INSERT INTO `product_tags` VALUES (275, 1, '2020-09-22 19:14:07', '2020-09-22 19:14:07');
INSERT INTO `product_tags` VALUES (276, 1, '2020-09-22 19:14:08', '2020-09-22 19:14:08');
INSERT INTO `product_tags` VALUES (277, 1, '2020-09-22 19:14:09', '2020-09-22 19:14:09');
INSERT INTO `product_tags` VALUES (278, 1, '2020-09-22 19:14:09', '2020-09-22 19:14:09');
INSERT INTO `product_tags` VALUES (280, 1, '2020-09-22 19:14:10', '2020-09-22 19:14:10');
INSERT INTO `product_tags` VALUES (281, 1, '2020-09-22 19:14:11', '2020-09-22 19:14:11');
INSERT INTO `product_tags` VALUES (282, 1, '2020-09-22 19:14:12', '2020-09-22 19:14:12');
INSERT INTO `product_tags` VALUES (284, 1, '2020-09-22 19:14:13', '2020-09-22 19:14:13');
INSERT INTO `product_tags` VALUES (285, 1, '2020-09-22 19:14:13', '2020-09-22 19:14:13');
INSERT INTO `product_tags` VALUES (286, 1, '2020-09-22 19:14:14', '2020-09-22 19:14:14');
INSERT INTO `product_tags` VALUES (287, 1, '2020-09-22 19:14:15', '2020-09-22 19:14:15');
INSERT INTO `product_tags` VALUES (288, 1, '2020-09-22 19:14:16', '2020-09-22 19:14:16');
INSERT INTO `product_tags` VALUES (289, 1, '2020-09-22 19:14:17', '2020-09-22 19:14:17');
INSERT INTO `product_tags` VALUES (290, 1, '2020-09-22 19:14:18', '2020-09-22 19:14:18');
INSERT INTO `product_tags` VALUES (291, 1, '2020-09-22 19:14:19', '2020-09-22 19:14:19');
INSERT INTO `product_tags` VALUES (292, 1, '2020-09-22 19:14:20', '2020-09-22 19:14:20');
INSERT INTO `product_tags` VALUES (293, 1, '2020-09-22 19:14:21', '2020-09-22 19:14:21');
INSERT INTO `product_tags` VALUES (294, 1, '2020-09-22 19:14:21', '2020-09-22 19:14:21');
INSERT INTO `product_tags` VALUES (295, 1, '2020-09-22 19:14:22', '2020-09-22 19:14:22');
INSERT INTO `product_tags` VALUES (296, 1, '2020-09-22 19:14:23', '2020-09-22 19:14:23');
INSERT INTO `product_tags` VALUES (297, 1, '2020-09-22 19:14:24', '2020-09-22 19:14:24');
INSERT INTO `product_tags` VALUES (298, 1, '2020-09-22 19:14:24', '2020-09-22 19:14:24');
INSERT INTO `product_tags` VALUES (299, 1, '2020-09-22 19:14:25', '2020-09-22 19:14:25');
INSERT INTO `product_tags` VALUES (300, 1, '2020-09-22 19:14:26', '2020-09-22 19:14:26');
INSERT INTO `product_tags` VALUES (301, 1, '2020-09-22 19:14:27', '2020-09-22 19:14:27');
INSERT INTO `product_tags` VALUES (302, 1, '2020-09-22 19:14:28', '2020-09-22 19:14:28');
INSERT INTO `product_tags` VALUES (303, 1, '2020-09-22 19:14:29', '2020-09-22 19:14:29');
INSERT INTO `product_tags` VALUES (304, 1, '2020-09-22 19:14:29', '2020-09-22 19:14:29');
INSERT INTO `product_tags` VALUES (305, 1, '2020-09-22 19:14:30', '2020-09-22 19:14:30');
INSERT INTO `product_tags` VALUES (306, 1, '2020-09-22 19:14:31', '2020-09-22 19:14:31');
INSERT INTO `product_tags` VALUES (307, 1, '2020-09-22 19:14:32', '2020-09-22 19:14:32');
INSERT INTO `product_tags` VALUES (308, 1, '2020-09-22 19:14:32', '2020-09-22 19:14:32');
INSERT INTO `product_tags` VALUES (309, 1, '2020-09-22 19:14:33', '2020-09-22 19:14:33');
INSERT INTO `product_tags` VALUES (310, 1, '2020-09-22 19:14:34', '2020-09-22 19:14:34');
INSERT INTO `product_tags` VALUES (311, 1, '2020-09-22 19:14:35', '2020-09-22 19:14:35');
INSERT INTO `product_tags` VALUES (312, 1, '2020-09-22 19:14:36', '2020-09-22 19:14:36');
INSERT INTO `product_tags` VALUES (313, 1, '2020-09-22 19:14:37', '2020-09-22 19:14:37');
INSERT INTO `product_tags` VALUES (314, 1, '2020-09-22 19:14:37', '2020-09-22 19:14:37');
INSERT INTO `product_tags` VALUES (315, 1, '2020-09-22 19:14:38', '2020-09-22 19:14:38');
INSERT INTO `product_tags` VALUES (316, 1, '2020-09-22 19:14:39', '2020-09-22 19:14:39');
INSERT INTO `product_tags` VALUES (317, 1, '2020-09-22 19:14:40', '2020-09-22 19:14:40');
INSERT INTO `product_tags` VALUES (318, 1, '2020-09-22 19:14:41', '2020-09-22 19:14:41');
INSERT INTO `product_tags` VALUES (319, 1, '2020-09-22 19:14:42', '2020-09-22 19:14:42');
INSERT INTO `product_tags` VALUES (320, 1, '2020-09-22 19:14:43', '2020-09-22 19:14:43');
INSERT INTO `product_tags` VALUES (321, 1, '2020-09-22 19:14:44', '2020-09-22 19:14:44');
INSERT INTO `product_tags` VALUES (322, 1, '2020-09-22 19:14:44', '2020-09-22 19:14:44');
INSERT INTO `product_tags` VALUES (323, 1, '2020-09-22 19:14:45', '2020-09-22 19:14:45');
INSERT INTO `product_tags` VALUES (324, 1, '2020-09-22 19:14:46', '2020-09-22 19:14:46');
INSERT INTO `product_tags` VALUES (325, 1, '2020-09-22 19:14:47', '2020-09-22 19:14:47');
INSERT INTO `product_tags` VALUES (326, 1, '2020-09-22 19:14:48', '2020-09-22 19:14:48');
INSERT INTO `product_tags` VALUES (327, 1, '2020-09-22 19:14:48', '2020-09-22 19:14:48');
INSERT INTO `product_tags` VALUES (328, 1, '2020-09-22 19:14:49', '2020-09-22 19:14:49');
INSERT INTO `product_tags` VALUES (329, 1, '2020-09-22 19:14:50', '2020-09-22 19:14:50');
INSERT INTO `product_tags` VALUES (330, 1, '2020-09-22 19:14:51', '2020-09-22 19:14:51');
INSERT INTO `product_tags` VALUES (331, 1, '2020-09-22 19:14:52', '2020-09-22 19:14:52');
INSERT INTO `product_tags` VALUES (332, 1, '2020-09-22 19:14:52', '2020-09-22 19:14:52');
INSERT INTO `product_tags` VALUES (333, 1, '2020-09-22 19:14:53', '2020-09-22 19:14:53');
INSERT INTO `product_tags` VALUES (334, 1, '2020-09-22 19:14:54', '2020-09-22 19:14:54');
INSERT INTO `product_tags` VALUES (335, 1, '2020-09-22 19:14:55', '2020-09-22 19:14:55');
INSERT INTO `product_tags` VALUES (336, 1, '2020-09-22 19:14:56', '2020-09-22 19:14:56');
INSERT INTO `product_tags` VALUES (337, 1, '2020-09-22 19:14:56', '2020-09-22 19:14:56');
INSERT INTO `product_tags` VALUES (338, 1, '2020-09-22 19:14:57', '2020-09-22 19:14:57');
INSERT INTO `product_tags` VALUES (339, 1, '2020-09-22 19:14:58', '2020-09-22 19:14:58');
INSERT INTO `product_tags` VALUES (340, 1, '2020-09-22 19:14:58', '2020-09-22 19:14:58');
INSERT INTO `product_tags` VALUES (341, 1, '2020-09-22 19:14:59', '2020-09-22 19:14:59');
INSERT INTO `product_tags` VALUES (342, 1, '2020-09-22 19:15:00', '2020-09-22 19:15:00');
INSERT INTO `product_tags` VALUES (343, 1, '2020-09-22 19:15:01', '2020-09-22 19:15:01');
INSERT INTO `product_tags` VALUES (344, 1, '2020-09-22 19:15:01', '2020-09-22 19:15:01');
INSERT INTO `product_tags` VALUES (345, 1, '2020-09-22 19:15:02', '2020-09-22 19:15:02');
INSERT INTO `product_tags` VALUES (346, 1, '2020-09-22 19:15:03', '2020-09-22 19:15:03');
INSERT INTO `product_tags` VALUES (347, 1, '2020-09-22 19:15:03', '2020-09-22 19:15:03');
INSERT INTO `product_tags` VALUES (348, 1, '2020-09-22 19:15:04', '2020-09-22 19:15:04');
INSERT INTO `product_tags` VALUES (349, 1, '2020-09-22 19:15:05', '2020-09-22 19:15:05');
INSERT INTO `product_tags` VALUES (350, 1, '2020-09-22 19:15:06', '2020-09-22 19:15:06');
INSERT INTO `product_tags` VALUES (351, 1, '2020-09-22 19:15:06', '2020-09-22 19:15:06');
INSERT INTO `product_tags` VALUES (352, 1, '2020-09-22 19:15:07', '2020-09-22 19:15:07');
INSERT INTO `product_tags` VALUES (353, 1, '2020-09-22 19:15:08', '2020-09-22 19:15:08');
INSERT INTO `product_tags` VALUES (354, 1, '2020-09-22 19:15:09', '2020-09-22 19:15:09');
INSERT INTO `product_tags` VALUES (355, 1, '2020-09-22 19:15:10', '2020-09-22 19:15:10');
INSERT INTO `product_tags` VALUES (356, 1, '2020-09-22 19:15:10', '2020-09-22 19:15:10');
INSERT INTO `product_tags` VALUES (357, 1, '2020-09-22 19:15:11', '2020-09-22 19:15:11');
INSERT INTO `product_tags` VALUES (358, 1, '2020-09-22 19:15:12', '2020-09-22 19:15:12');
INSERT INTO `product_tags` VALUES (359, 1, '2020-09-22 19:15:13', '2020-09-22 19:15:13');
INSERT INTO `product_tags` VALUES (360, 1, '2020-09-22 19:15:14', '2020-09-22 19:15:14');
INSERT INTO `product_tags` VALUES (361, 1, '2020-09-22 19:15:15', '2020-09-22 19:15:15');
INSERT INTO `product_tags` VALUES (362, 1, '2020-09-22 19:15:15', '2020-09-22 19:15:15');
INSERT INTO `product_tags` VALUES (363, 1, '2020-09-22 19:15:16', '2020-09-22 19:15:16');
INSERT INTO `product_tags` VALUES (364, 1, '2020-09-22 19:15:17', '2020-09-22 19:15:17');
INSERT INTO `product_tags` VALUES (365, 1, '2020-09-22 19:15:18', '2020-09-22 19:15:18');
INSERT INTO `product_tags` VALUES (366, 1, '2020-09-22 19:15:18', '2020-09-22 19:15:18');
INSERT INTO `product_tags` VALUES (367, 1, '2020-09-22 19:15:19', '2020-09-22 19:15:19');
INSERT INTO `product_tags` VALUES (368, 1, '2020-09-22 19:15:20', '2020-09-22 19:15:20');
INSERT INTO `product_tags` VALUES (369, 1, '2020-09-22 19:15:21', '2020-09-22 19:15:21');
INSERT INTO `product_tags` VALUES (370, 1, '2020-09-22 19:15:22', '2020-09-22 19:15:22');
INSERT INTO `product_tags` VALUES (371, 1, '2020-09-22 19:15:22', '2020-09-22 19:15:22');
INSERT INTO `product_tags` VALUES (3371, 1, '2020-09-22 19:15:23', '2020-09-22 19:15:23');
INSERT INTO `product_tags` VALUES (372, 1, '2020-09-22 19:15:24', '2020-09-22 19:15:24');
INSERT INTO `product_tags` VALUES (373, 1, '2020-09-22 19:15:25', '2020-09-22 19:15:25');
INSERT INTO `product_tags` VALUES (374, 1, '2020-09-22 19:15:26', '2020-09-22 19:15:26');
INSERT INTO `product_tags` VALUES (375, 1, '2020-09-22 19:15:26', '2020-09-22 19:15:26');
INSERT INTO `product_tags` VALUES (376, 1, '2020-09-22 19:15:27', '2020-09-22 19:15:27');
INSERT INTO `product_tags` VALUES (377, 1, '2020-09-22 19:15:28', '2020-09-22 19:15:28');
INSERT INTO `product_tags` VALUES (378, 1, '2020-09-22 19:15:29', '2020-09-22 19:15:29');
INSERT INTO `product_tags` VALUES (379, 1, '2020-09-22 19:15:30', '2020-09-22 19:15:30');
INSERT INTO `product_tags` VALUES (380, 1, '2020-09-22 19:15:31', '2020-09-22 19:15:31');
INSERT INTO `product_tags` VALUES (381, 1, '2020-09-22 19:15:32', '2020-09-22 19:15:32');
INSERT INTO `product_tags` VALUES (382, 1, '2020-09-22 19:15:32', '2020-09-22 19:15:32');
INSERT INTO `product_tags` VALUES (383, 1, '2020-09-22 19:15:33', '2020-09-22 19:15:33');
INSERT INTO `product_tags` VALUES (384, 1, '2020-09-22 19:15:34', '2020-09-22 19:15:34');
INSERT INTO `product_tags` VALUES (385, 1, '2020-09-22 19:15:35', '2020-09-22 19:15:35');
INSERT INTO `product_tags` VALUES (386, 1, '2020-09-22 19:15:36', '2020-09-22 19:15:36');
INSERT INTO `product_tags` VALUES (387, 1, '2020-09-22 19:15:36', '2020-09-22 19:15:36');
INSERT INTO `product_tags` VALUES (388, 1, '2020-09-22 19:15:37', '2020-09-22 19:15:37');
INSERT INTO `product_tags` VALUES (389, 1, '2020-09-22 19:15:38', '2020-09-22 19:15:38');
INSERT INTO `product_tags` VALUES (390, 1, '2020-09-22 19:15:39', '2020-09-22 19:15:39');
INSERT INTO `product_tags` VALUES (391, 1, '2020-09-22 19:15:40', '2020-09-22 19:15:40');
INSERT INTO `product_tags` VALUES (392, 1, '2020-09-22 19:15:41', '2020-09-22 19:15:41');
INSERT INTO `product_tags` VALUES (393, 1, '2020-09-22 19:15:41', '2020-09-22 19:15:41');
INSERT INTO `product_tags` VALUES (394, 1, '2020-09-22 19:15:42', '2020-09-22 19:15:42');
INSERT INTO `product_tags` VALUES (395, 1, '2020-09-22 19:15:43', '2020-09-22 19:15:43');
INSERT INTO `product_tags` VALUES (396, 1, '2020-09-22 19:15:44', '2020-09-22 19:15:44');
INSERT INTO `product_tags` VALUES (397, 1, '2020-09-22 19:15:45', '2020-09-22 19:15:45');
INSERT INTO `product_tags` VALUES (398, 1, '2020-09-22 19:15:46', '2020-09-22 19:15:46');
INSERT INTO `product_tags` VALUES (399, 1, '2020-09-22 19:15:46', '2020-09-22 19:15:46');
INSERT INTO `product_tags` VALUES (400, 1, '2020-09-22 19:15:47', '2020-09-22 19:15:47');
INSERT INTO `product_tags` VALUES (401, 1, '2020-09-22 19:15:48', '2020-09-22 19:15:48');
INSERT INTO `product_tags` VALUES (402, 1, '2020-09-22 19:15:49', '2020-09-22 19:15:49');
INSERT INTO `product_tags` VALUES (403, 1, '2020-09-22 19:15:50', '2020-09-22 19:15:50');
INSERT INTO `product_tags` VALUES (404, 1, '2020-09-22 19:15:50', '2020-09-22 19:15:50');
INSERT INTO `product_tags` VALUES (405, 1, '2020-09-22 19:15:51', '2020-09-22 19:15:51');
INSERT INTO `product_tags` VALUES (406, 1, '2020-09-22 19:15:52', '2020-09-22 19:15:52');
INSERT INTO `product_tags` VALUES (407, 1, '2020-09-22 19:15:52', '2020-09-22 19:15:52');
INSERT INTO `product_tags` VALUES (408, 1, '2020-09-22 19:15:53', '2020-09-22 19:15:53');
INSERT INTO `product_tags` VALUES (409, 1, '2020-09-22 19:15:54', '2020-09-22 19:15:54');
INSERT INTO `product_tags` VALUES (410, 1, '2020-09-22 19:15:55', '2020-09-22 19:15:55');
INSERT INTO `product_tags` VALUES (411, 1, '2020-09-22 19:15:56', '2020-09-22 19:15:56');
INSERT INTO `product_tags` VALUES (412, 1, '2020-09-22 19:15:56', '2020-09-22 19:15:56');
INSERT INTO `product_tags` VALUES (413, 1, '2020-09-22 19:15:57', '2020-09-22 19:15:57');
INSERT INTO `product_tags` VALUES (414, 1, '2020-09-22 19:15:58', '2020-09-22 19:15:58');
INSERT INTO `product_tags` VALUES (415, 1, '2020-09-22 19:15:59', '2020-09-22 19:15:59');
INSERT INTO `product_tags` VALUES (416, 1, '2020-09-22 19:16:00', '2020-09-22 19:16:00');
INSERT INTO `product_tags` VALUES (417, 1, '2020-09-22 19:16:00', '2020-09-22 19:16:00');
INSERT INTO `product_tags` VALUES (418, 1, '2020-09-22 19:16:01', '2020-09-22 19:16:01');
INSERT INTO `product_tags` VALUES (419, 1, '2020-09-22 19:16:02', '2020-09-22 19:16:02');
INSERT INTO `product_tags` VALUES (420, 1, '2020-09-22 19:16:03', '2020-09-22 19:16:03');
INSERT INTO `product_tags` VALUES (421, 1, '2020-09-22 19:16:03', '2020-09-22 19:16:03');
INSERT INTO `product_tags` VALUES (422, 1, '2020-09-22 19:16:04', '2020-09-22 19:16:04');
INSERT INTO `product_tags` VALUES (423, 1, '2020-09-22 19:16:05', '2020-09-22 19:16:05');
INSERT INTO `product_tags` VALUES (424, 1, '2020-09-22 19:16:06', '2020-09-22 19:16:06');
INSERT INTO `product_tags` VALUES (425, 1, '2020-09-22 19:16:06', '2020-09-22 19:16:06');
INSERT INTO `product_tags` VALUES (426, 1, '2020-09-22 19:16:07', '2020-09-22 19:16:07');
INSERT INTO `product_tags` VALUES (427, 1, '2020-09-22 19:16:08', '2020-09-22 19:16:08');
INSERT INTO `product_tags` VALUES (428, 1, '2020-09-22 19:16:08', '2020-09-22 19:16:08');
INSERT INTO `product_tags` VALUES (429, 1, '2020-09-22 19:16:09', '2020-09-22 19:16:09');
INSERT INTO `product_tags` VALUES (430, 1, '2020-09-22 19:16:10', '2020-09-22 19:16:10');
INSERT INTO `product_tags` VALUES (431, 1, '2020-09-22 19:16:10', '2020-09-22 19:16:10');
INSERT INTO `product_tags` VALUES (432, 1, '2020-09-22 19:16:11', '2020-09-22 19:16:11');
INSERT INTO `product_tags` VALUES (433, 1, '2020-09-22 19:16:12', '2020-09-22 19:16:12');
INSERT INTO `product_tags` VALUES (434, 1, '2020-09-22 19:16:12', '2020-09-22 19:16:12');
INSERT INTO `product_tags` VALUES (435, 1, '2020-09-22 19:16:13', '2020-09-22 19:16:13');
INSERT INTO `product_tags` VALUES (436, 1, '2020-09-22 19:16:14', '2020-09-22 19:16:14');
INSERT INTO `product_tags` VALUES (437, 1, '2020-09-22 19:16:14', '2020-09-22 19:16:14');
INSERT INTO `product_tags` VALUES (438, 1, '2020-09-22 19:16:15', '2020-09-22 19:16:15');
INSERT INTO `product_tags` VALUES (439, 1, '2020-09-22 19:16:16', '2020-09-22 19:16:16');
INSERT INTO `product_tags` VALUES (440, 1, '2020-09-22 19:16:17', '2020-09-22 19:16:17');
INSERT INTO `product_tags` VALUES (441, 1, '2020-09-22 19:16:17', '2020-09-22 19:16:17');
INSERT INTO `product_tags` VALUES (442, 1, '2020-09-22 19:16:18', '2020-09-22 19:16:18');
INSERT INTO `product_tags` VALUES (443, 1, '2020-09-22 19:16:19', '2020-09-22 19:16:19');
INSERT INTO `product_tags` VALUES (444, 1, '2020-09-22 19:16:19', '2020-09-22 19:16:19');
INSERT INTO `product_tags` VALUES (445, 4, '2020-09-22 19:16:20', '2020-09-22 19:16:20');
INSERT INTO `product_tags` VALUES (446, 4, '2020-09-22 19:16:21', '2020-09-22 19:16:21');
INSERT INTO `product_tags` VALUES (447, 4, '2020-09-22 19:16:21', '2020-09-22 19:16:21');
INSERT INTO `product_tags` VALUES (448, 4, '2020-09-22 19:16:22', '2020-09-22 19:16:22');
INSERT INTO `product_tags` VALUES (449, 4, '2020-09-22 19:16:22', '2020-09-22 19:16:22');
INSERT INTO `product_tags` VALUES (450, 4, '2020-09-22 19:16:23', '2020-09-22 19:16:23');
INSERT INTO `product_tags` VALUES (451, 4, '2020-09-22 19:16:24', '2020-09-22 19:16:24');
INSERT INTO `product_tags` VALUES (452, 4, '2020-09-22 19:16:24', '2020-09-22 19:16:24');
INSERT INTO `product_tags` VALUES (453, 4, '2020-09-22 19:16:25', '2020-09-22 19:16:25');
INSERT INTO `product_tags` VALUES (454, 4, '2020-09-22 19:16:25', '2020-09-22 19:16:25');
INSERT INTO `product_tags` VALUES (455, 4, '2020-09-22 19:16:26', '2020-09-22 19:16:26');
INSERT INTO `product_tags` VALUES (456, 4, '2020-09-22 19:16:26', '2020-09-22 19:16:26');
INSERT INTO `product_tags` VALUES (457, 4, '2020-09-22 19:16:27', '2020-09-22 19:16:27');
INSERT INTO `product_tags` VALUES (458, 4, '2020-09-22 19:16:28', '2020-09-22 19:16:28');
INSERT INTO `product_tags` VALUES (459, 4, '2020-09-22 19:16:28', '2020-09-22 19:16:28');
INSERT INTO `product_tags` VALUES (460, 4, '2020-09-22 19:16:29', '2020-09-22 19:16:29');
INSERT INTO `product_tags` VALUES (461, 4, '2020-09-22 19:16:29', '2020-09-22 19:16:29');
INSERT INTO `product_tags` VALUES (462, 4, '2020-09-22 19:16:30', '2020-09-22 19:16:30');
INSERT INTO `product_tags` VALUES (463, 4, '2020-09-22 19:16:31', '2020-09-22 19:16:31');
INSERT INTO `product_tags` VALUES (464, 4, '2020-09-22 19:16:31', '2020-09-22 19:16:31');
INSERT INTO `product_tags` VALUES (465, 4, '2020-09-22 19:16:32', '2020-09-22 19:16:32');
INSERT INTO `product_tags` VALUES (466, 4, '2020-09-22 19:16:32', '2020-09-22 19:16:32');
INSERT INTO `product_tags` VALUES (467, 4, '2020-09-22 19:16:33', '2020-09-22 19:16:33');
INSERT INTO `product_tags` VALUES (468, 4, '2020-09-22 19:16:33', '2020-09-22 19:16:33');
INSERT INTO `product_tags` VALUES (469, 4, '2020-09-22 19:16:34', '2020-09-22 19:16:34');
INSERT INTO `product_tags` VALUES (470, 4, '2020-09-22 19:16:35', '2020-09-22 19:16:35');
INSERT INTO `product_tags` VALUES (471, 4, '2020-09-22 19:16:36', '2020-09-22 19:16:36');
INSERT INTO `product_tags` VALUES (472, 4, '2020-09-22 19:16:37', '2020-09-22 19:16:37');
INSERT INTO `product_tags` VALUES (473, 4, '2020-09-22 19:16:37', '2020-09-22 19:16:37');
INSERT INTO `product_tags` VALUES (474, 4, '2020-09-22 19:16:38', '2020-09-22 19:16:38');
INSERT INTO `product_tags` VALUES (475, 4, '2020-09-22 19:16:39', '2020-09-22 19:16:39');
INSERT INTO `product_tags` VALUES (476, 3, '2020-09-22 19:16:40', '2020-09-22 19:16:40');
INSERT INTO `product_tags` VALUES (477, 3, '2020-09-22 19:16:41', '2020-09-22 19:16:41');
INSERT INTO `product_tags` VALUES (478, 3, '2020-09-22 19:16:41', '2020-09-22 19:16:41');
INSERT INTO `product_tags` VALUES (479, 3, '2020-09-22 19:16:42', '2020-09-22 19:16:42');
INSERT INTO `product_tags` VALUES (480, 3, '2020-09-22 19:16:43', '2020-09-22 19:16:43');
INSERT INTO `product_tags` VALUES (481, 3, '2020-09-22 19:16:44', '2020-09-22 19:16:44');
INSERT INTO `product_tags` VALUES (482, 3, '2020-09-22 19:16:45', '2020-09-22 19:16:45');
INSERT INTO `product_tags` VALUES (483, 3, '2020-09-22 19:16:45', '2020-09-22 19:16:45');
INSERT INTO `product_tags` VALUES (484, 3, '2020-09-22 19:16:46', '2020-09-22 19:16:46');
INSERT INTO `product_tags` VALUES (485, 3, '2020-09-22 19:16:47', '2020-09-22 19:16:47');
INSERT INTO `product_tags` VALUES (486, 3, '2020-09-22 19:16:48', '2020-09-22 19:16:48');
INSERT INTO `product_tags` VALUES (488, 3, '2020-09-22 19:16:48', '2020-09-22 19:16:48');
INSERT INTO `product_tags` VALUES (489, 3, '2020-09-22 19:16:49', '2020-09-22 19:16:49');
INSERT INTO `product_tags` VALUES (490, 3, '2020-09-22 19:16:50', '2020-09-22 19:16:50');
INSERT INTO `product_tags` VALUES (491, 3, '2020-09-22 19:16:51', '2020-09-22 19:16:51');
INSERT INTO `product_tags` VALUES (492, 3, '2020-09-22 19:16:51', '2020-09-22 19:16:51');
INSERT INTO `product_tags` VALUES (493, 3, '2020-09-22 19:16:52', '2020-09-22 19:16:52');
INSERT INTO `product_tags` VALUES (494, 3, '2020-09-22 19:16:53', '2020-09-22 19:16:53');
INSERT INTO `product_tags` VALUES (495, 3, '2020-09-22 19:16:54', '2020-09-22 19:16:54');
INSERT INTO `product_tags` VALUES (496, 3, '2020-09-22 19:16:55', '2020-09-22 19:16:55');
INSERT INTO `product_tags` VALUES (497, 3, '2020-09-22 19:16:55', '2020-09-22 19:16:55');
INSERT INTO `product_tags` VALUES (498, 3, '2020-09-22 19:16:56', '2020-09-22 19:16:56');
INSERT INTO `product_tags` VALUES (499, 3, '2020-09-22 19:16:57', '2020-09-22 19:16:57');
INSERT INTO `product_tags` VALUES (500, 3, '2020-09-22 19:16:58', '2020-09-22 19:16:58');
INSERT INTO `product_tags` VALUES (501, 3, '2020-09-22 19:16:58', '2020-09-22 19:16:58');
INSERT INTO `product_tags` VALUES (502, 3, '2020-09-22 19:16:59', '2020-09-22 19:16:59');
INSERT INTO `product_tags` VALUES (503, 3, '2020-09-22 19:17:00', '2020-09-22 19:17:00');
INSERT INTO `product_tags` VALUES (504, 3, '2020-09-22 19:17:01', '2020-09-22 19:17:01');
INSERT INTO `product_tags` VALUES (505, 3, '2020-09-22 19:17:02', '2020-09-22 19:17:02');
INSERT INTO `product_tags` VALUES (506, 3, '2020-09-22 19:17:02', '2020-09-22 19:17:02');
INSERT INTO `product_tags` VALUES (508, 3, '2020-09-22 19:17:03', '2020-09-22 19:17:03');
INSERT INTO `product_tags` VALUES (509, 3, '2020-09-22 19:17:04', '2020-09-22 19:17:04');
INSERT INTO `product_tags` VALUES (510, 3, '2020-09-22 19:17:05', '2020-09-22 19:17:05');
INSERT INTO `product_tags` VALUES (511, 3, '2020-09-22 19:17:06', '2020-09-22 19:17:06');
INSERT INTO `product_tags` VALUES (512, 3, '2020-09-22 19:17:06', '2020-09-22 19:17:06');
INSERT INTO `product_tags` VALUES (513, 3, '2020-09-22 19:17:07', '2020-09-22 19:17:07');
INSERT INTO `product_tags` VALUES (514, 3, '2020-09-22 19:17:08', '2020-09-22 19:17:08');
INSERT INTO `product_tags` VALUES (515, 3, '2020-09-22 19:17:09', '2020-09-22 19:17:09');
INSERT INTO `product_tags` VALUES (516, 3, '2020-09-22 19:17:10', '2020-09-22 19:17:10');
INSERT INTO `product_tags` VALUES (517, 3, '2020-09-22 19:17:11', '2020-09-22 19:17:11');
INSERT INTO `product_tags` VALUES (520, 4, '2020-09-22 19:17:11', '2020-09-22 19:17:11');
INSERT INTO `product_tags` VALUES (521, 4, '2020-09-22 19:17:12', '2020-09-22 19:17:12');
INSERT INTO `product_tags` VALUES (522, 4, '2020-09-22 19:17:13', '2020-09-22 19:17:13');
INSERT INTO `product_tags` VALUES (523, 4, '2020-09-22 19:17:14', '2020-09-22 19:17:14');
INSERT INTO `product_tags` VALUES (524, 4, '2020-09-22 19:17:14', '2020-09-22 19:17:14');
INSERT INTO `product_tags` VALUES (525, 4, '2020-09-22 19:17:15', '2020-09-22 19:17:15');
INSERT INTO `product_tags` VALUES (526, 4, '2020-09-22 19:17:16', '2020-09-22 19:17:16');
INSERT INTO `product_tags` VALUES (527, 4, '2020-09-22 19:17:17', '2020-09-22 19:17:17');
INSERT INTO `product_tags` VALUES (528, 4, '2020-09-22 19:17:18', '2020-09-22 19:17:18');
INSERT INTO `product_tags` VALUES (529, 4, '2020-09-22 19:17:19', '2020-09-22 19:17:19');
INSERT INTO `product_tags` VALUES (530, 4, '2020-09-22 19:17:19', '2020-09-22 19:17:19');
INSERT INTO `product_tags` VALUES (531, 4, '2020-09-22 19:17:20', '2020-09-22 19:17:20');
INSERT INTO `product_tags` VALUES (532, 4, '2020-09-22 19:17:21', '2020-09-22 19:17:21');
INSERT INTO `product_tags` VALUES (533, 4, '2020-09-22 19:17:22', '2020-09-22 19:17:22');
INSERT INTO `product_tags` VALUES (534, 4, '2020-09-22 19:17:23', '2020-09-22 19:17:23');
INSERT INTO `product_tags` VALUES (535, 4, '2020-09-22 19:17:23', '2020-09-22 19:17:23');
INSERT INTO `product_tags` VALUES (536, 4, '2020-09-22 19:17:24', '2020-09-22 19:17:24');
INSERT INTO `product_tags` VALUES (537, 4, '2020-09-22 19:17:25', '2020-09-22 19:17:25');
INSERT INTO `product_tags` VALUES (538, 4, '2020-09-22 19:17:26', '2020-09-22 19:17:26');
INSERT INTO `product_tags` VALUES (539, 4, '2020-09-22 19:17:27', '2020-09-22 19:17:27');
INSERT INTO `product_tags` VALUES (540, 4, '2020-09-22 19:17:28', '2020-09-22 19:17:28');
INSERT INTO `product_tags` VALUES (541, 4, '2020-09-22 19:17:28', '2020-09-22 19:17:28');
INSERT INTO `product_tags` VALUES (542, 4, '2020-09-22 19:17:29', '2020-09-22 19:17:29');
INSERT INTO `product_tags` VALUES (543, 4, '2020-09-22 19:17:30', '2020-09-22 19:17:30');
INSERT INTO `product_tags` VALUES (544, 4, '2020-09-22 19:17:31', '2020-09-22 19:17:31');
INSERT INTO `product_tags` VALUES (545, 4, '2020-09-22 19:17:31', '2020-09-22 19:17:31');
INSERT INTO `product_tags` VALUES (546, 4, '2020-09-22 19:17:32', '2020-09-22 19:17:32');
INSERT INTO `product_tags` VALUES (547, 4, '2020-09-22 19:17:33', '2020-09-22 19:17:33');
INSERT INTO `product_tags` VALUES (548, 4, '2020-09-22 19:17:34', '2020-09-22 19:17:34');
INSERT INTO `product_tags` VALUES (549, 4, '2020-09-22 19:17:35', '2020-09-22 19:17:35');
INSERT INTO `product_tags` VALUES (550, 4, '2020-09-22 19:17:35', '2020-09-22 19:17:35');
INSERT INTO `product_tags` VALUES (551, 4, '2020-09-22 19:17:36', '2020-09-22 19:17:36');
INSERT INTO `product_tags` VALUES (552, 4, '2020-09-22 19:17:37', '2020-09-22 19:17:37');
INSERT INTO `product_tags` VALUES (553, 4, '2020-09-22 19:17:38', '2020-09-22 19:17:38');
INSERT INTO `product_tags` VALUES (554, 4, '2020-09-22 19:17:39', '2020-09-22 19:17:39');
INSERT INTO `product_tags` VALUES (555, 4, '2020-09-22 19:17:39', '2020-09-22 19:17:39');
INSERT INTO `product_tags` VALUES (556, 4, '2020-09-22 19:17:40', '2020-09-22 19:17:40');
INSERT INTO `product_tags` VALUES (557, 4, '2020-09-22 19:17:41', '2020-09-22 19:17:41');
INSERT INTO `product_tags` VALUES (558, 4, '2020-09-22 19:17:42', '2020-09-22 19:17:42');
INSERT INTO `product_tags` VALUES (559, 4, '2020-09-22 19:17:42', '2020-09-22 19:17:42');
INSERT INTO `product_tags` VALUES (560, 4, '2020-09-22 19:17:43', '2020-09-22 19:17:43');
INSERT INTO `product_tags` VALUES (561, 4, '2020-09-22 19:17:44', '2020-09-22 19:17:44');
INSERT INTO `product_tags` VALUES (562, 4, '2020-09-22 19:17:45', '2020-09-22 19:17:45');
INSERT INTO `product_tags` VALUES (563, 4, '2020-09-22 19:17:46', '2020-09-22 19:17:46');
INSERT INTO `product_tags` VALUES (564, 4, '2020-09-22 19:17:46', '2020-09-22 19:17:46');
INSERT INTO `product_tags` VALUES (565, 4, '2020-09-22 19:17:47', '2020-09-22 19:17:47');
INSERT INTO `product_tags` VALUES (566, 4, '2020-09-22 19:17:48', '2020-09-22 19:17:48');
INSERT INTO `product_tags` VALUES (568, 4, '2020-09-22 19:17:49', '2020-09-22 19:17:49');
INSERT INTO `product_tags` VALUES (571, 6, '2020-09-22 19:17:50', '2020-09-22 19:17:50');
INSERT INTO `product_tags` VALUES (572, 6, '2020-09-22 19:17:51', '2020-09-22 19:17:51');
INSERT INTO `product_tags` VALUES (573, 6, '2020-09-22 19:17:51', '2020-09-22 19:17:51');
INSERT INTO `product_tags` VALUES (574, 6, '2020-09-22 19:17:52', '2020-09-22 19:17:52');
INSERT INTO `product_tags` VALUES (575, 6, '2020-09-22 19:17:53', '2020-09-22 19:17:53');
INSERT INTO `product_tags` VALUES (576, 6, '2020-09-22 19:17:54', '2020-09-22 19:17:54');
INSERT INTO `product_tags` VALUES (577, 6, '2020-09-22 19:17:55', '2020-09-22 19:17:55');
INSERT INTO `product_tags` VALUES (578, 6, '2020-09-22 19:17:55', '2020-09-22 19:17:55');
INSERT INTO `product_tags` VALUES (579, 6, '2020-09-22 19:17:56', '2020-09-22 19:17:56');
INSERT INTO `product_tags` VALUES (580, 6, '2020-09-22 19:17:57', '2020-09-22 19:17:57');
INSERT INTO `product_tags` VALUES (581, 6, '2020-09-22 19:17:58', '2020-09-22 19:17:58');
INSERT INTO `product_tags` VALUES (582, 6, '2020-09-22 19:17:59', '2020-09-22 19:17:59');
INSERT INTO `product_tags` VALUES (583, 6, '2020-09-22 19:17:59', '2020-09-22 19:17:59');
INSERT INTO `product_tags` VALUES (585, 6, '2020-09-22 19:18:00', '2020-09-22 19:18:00');
INSERT INTO `product_tags` VALUES (586, 6, '2020-09-22 19:18:01', '2020-09-22 19:18:01');
INSERT INTO `product_tags` VALUES (587, 6, '2020-09-22 19:18:02', '2020-09-22 19:18:02');
INSERT INTO `product_tags` VALUES (588, 6, '2020-09-22 19:18:02', '2020-09-22 19:18:02');
INSERT INTO `product_tags` VALUES (589, 6, '2020-09-22 19:18:03', '2020-09-22 19:18:03');
INSERT INTO `product_tags` VALUES (590, 6, '2020-09-22 19:18:04', '2020-09-22 19:18:04');
INSERT INTO `product_tags` VALUES (591, 6, '2020-09-22 19:18:05', '2020-09-22 19:18:05');
INSERT INTO `product_tags` VALUES (592, 6, '2020-09-22 19:18:06', '2020-09-22 19:18:06');
INSERT INTO `product_tags` VALUES (593, 6, '2020-09-22 19:18:07', '2020-09-22 19:18:07');
INSERT INTO `product_tags` VALUES (594, 6, '2020-09-22 19:18:07', '2020-09-22 19:18:07');
INSERT INTO `product_tags` VALUES (595, 6, '2020-09-22 19:18:08', '2020-09-22 19:18:08');
INSERT INTO `product_tags` VALUES (596, 6, '2020-09-22 19:18:09', '2020-09-22 19:18:09');
INSERT INTO `product_tags` VALUES (597, 6, '2020-09-22 19:18:10', '2020-09-22 19:18:10');
INSERT INTO `product_tags` VALUES (598, 6, '2020-09-22 19:18:11', '2020-09-22 19:18:11');
INSERT INTO `product_tags` VALUES (599, 6, '2020-09-22 19:18:11', '2020-09-22 19:18:11');
INSERT INTO `product_tags` VALUES (600, 6, '2020-09-22 19:18:12', '2020-09-22 19:18:12');
INSERT INTO `product_tags` VALUES (601, 6, '2020-09-22 19:18:13', '2020-09-22 19:18:13');
INSERT INTO `product_tags` VALUES (602, 6, '2020-09-22 19:18:14', '2020-09-22 19:18:14');
INSERT INTO `product_tags` VALUES (603, 6, '2020-09-22 19:18:15', '2020-09-22 19:18:15');
INSERT INTO `product_tags` VALUES (604, 6, '2020-09-22 19:18:15', '2020-09-22 19:18:15');
INSERT INTO `product_tags` VALUES (605, 6, '2020-09-22 19:18:16', '2020-09-22 19:18:16');
INSERT INTO `product_tags` VALUES (606, 6, '2020-09-22 19:18:17', '2020-09-22 19:18:17');
INSERT INTO `product_tags` VALUES (607, 6, '2020-09-22 19:18:18', '2020-09-22 19:18:18');
INSERT INTO `product_tags` VALUES (608, 6, '2020-09-22 19:18:18', '2020-09-22 19:18:18');
INSERT INTO `product_tags` VALUES (609, 6, '2020-09-22 19:18:19', '2020-09-22 19:18:19');
INSERT INTO `product_tags` VALUES (610, 6, '2020-09-22 19:18:20', '2020-09-22 19:18:20');
INSERT INTO `product_tags` VALUES (611, 6, '2020-09-22 19:18:21', '2020-09-22 19:18:21');
INSERT INTO `product_tags` VALUES (612, 6, '2020-09-22 19:18:22', '2020-09-22 19:18:22');
INSERT INTO `product_tags` VALUES (613, 6, '2020-09-22 19:18:23', '2020-09-22 19:18:23');
INSERT INTO `product_tags` VALUES (614, 6, '2020-09-22 19:18:23', '2020-09-22 19:18:23');
INSERT INTO `product_tags` VALUES (615, 6, '2020-09-22 19:18:24', '2020-09-22 19:18:24');
INSERT INTO `product_tags` VALUES (616, 6, '2020-09-22 19:18:25', '2020-09-22 19:18:25');
INSERT INTO `product_tags` VALUES (617, 6, '2020-09-22 19:18:26', '2020-09-22 19:18:26');
INSERT INTO `product_tags` VALUES (618, 6, '2020-09-22 19:18:27', '2020-09-22 19:18:27');
INSERT INTO `product_tags` VALUES (619, 6, '2020-09-22 19:18:28', '2020-09-22 19:18:28');
INSERT INTO `product_tags` VALUES (620, 6, '2020-09-22 19:18:29', '2020-09-22 19:18:29');
INSERT INTO `product_tags` VALUES (621, 6, '2020-09-22 19:18:29', '2020-09-22 19:18:29');
INSERT INTO `product_tags` VALUES (622, 6, '2020-09-22 19:18:30', '2020-09-22 19:18:30');
INSERT INTO `product_tags` VALUES (623, 6, '2020-09-22 19:18:31', '2020-09-22 19:18:31');
INSERT INTO `product_tags` VALUES (624, 6, '2020-09-22 19:18:32', '2020-09-22 19:18:32');
INSERT INTO `product_tags` VALUES (625, 6, '2020-09-22 19:18:33', '2020-09-22 19:18:33');
INSERT INTO `product_tags` VALUES (626, 6, '2020-09-22 19:18:34', '2020-09-22 19:18:34');
INSERT INTO `product_tags` VALUES (627, 6, '2020-09-22 19:18:34', '2020-09-22 19:18:34');
INSERT INTO `product_tags` VALUES (628, 6, '2020-09-22 19:18:35', '2020-09-22 19:18:35');
INSERT INTO `product_tags` VALUES (629, 6, '2020-09-22 19:18:36', '2020-09-22 19:18:36');
INSERT INTO `product_tags` VALUES (630, 6, '2020-09-22 19:18:37', '2020-09-22 19:18:37');
INSERT INTO `product_tags` VALUES (631, 6, '2020-09-22 19:18:38', '2020-09-22 19:18:38');
INSERT INTO `product_tags` VALUES (632, 6, '2020-09-22 19:18:39', '2020-09-22 19:18:39');
INSERT INTO `product_tags` VALUES (633, 6, '2020-09-22 19:18:40', '2020-09-22 19:18:40');
INSERT INTO `product_tags` VALUES (634, 6, '2020-09-22 19:18:40', '2020-09-22 19:18:40');
INSERT INTO `product_tags` VALUES (635, 6, '2020-09-22 19:18:41', '2020-09-22 19:18:41');
INSERT INTO `product_tags` VALUES (636, 6, '2020-09-22 19:18:42', '2020-09-22 19:18:42');
INSERT INTO `product_tags` VALUES (637, 6, '2020-09-22 19:18:43', '2020-09-22 19:18:43');
INSERT INTO `product_tags` VALUES (638, 6, '2020-09-22 19:18:44', '2020-09-22 19:18:44');
INSERT INTO `product_tags` VALUES (639, 6, '2020-09-22 19:18:44', '2020-09-22 19:18:44');
INSERT INTO `product_tags` VALUES (640, 6, '2020-09-22 19:18:45', '2020-09-22 19:18:45');
INSERT INTO `product_tags` VALUES (641, 6, '2020-09-22 19:18:46', '2020-09-22 19:18:46');
INSERT INTO `product_tags` VALUES (642, 6, '2020-09-22 19:18:47', '2020-09-22 19:18:47');
INSERT INTO `product_tags` VALUES (643, 6, '2020-09-22 19:18:48', '2020-09-22 19:18:48');
INSERT INTO `product_tags` VALUES (644, 6, '2020-09-22 19:18:48', '2020-09-22 19:18:48');
INSERT INTO `product_tags` VALUES (645, 6, '2020-09-22 19:18:49', '2020-09-22 19:18:49');
INSERT INTO `product_tags` VALUES (646, 6, '2020-09-22 19:18:50', '2020-09-22 19:18:50');
INSERT INTO `product_tags` VALUES (647, 6, '2020-09-22 19:18:51', '2020-09-22 19:18:51');
INSERT INTO `product_tags` VALUES (648, 6, '2020-09-22 19:18:52', '2020-09-22 19:18:52');
INSERT INTO `product_tags` VALUES (649, 6, '2020-09-22 19:18:53', '2020-09-22 19:18:53');
INSERT INTO `product_tags` VALUES (650, 6, '2020-09-22 19:18:53', '2020-09-22 19:18:53');
INSERT INTO `product_tags` VALUES (651, 6, '2020-09-22 19:18:54', '2020-09-22 19:18:54');
INSERT INTO `product_tags` VALUES (652, 6, '2020-09-22 19:18:55', '2020-09-22 19:18:55');
INSERT INTO `product_tags` VALUES (653, 6, '2020-09-22 19:18:56', '2020-09-22 19:18:56');
INSERT INTO `product_tags` VALUES (654, 6, '2020-09-22 19:18:57', '2020-09-22 19:18:57');
INSERT INTO `product_tags` VALUES (655, 6, '2020-09-22 19:18:57', '2020-09-22 19:18:57');
INSERT INTO `product_tags` VALUES (656, 6, '2020-09-22 19:18:58', '2020-09-22 19:18:58');
INSERT INTO `product_tags` VALUES (657, 6, '2020-09-22 19:18:59', '2020-09-22 19:18:59');
INSERT INTO `product_tags` VALUES (658, 6, '2020-09-22 19:19:00', '2020-09-22 19:19:00');
INSERT INTO `product_tags` VALUES (659, 6, '2020-09-22 19:19:01', '2020-09-22 19:19:01');
INSERT INTO `product_tags` VALUES (660, 6, '2020-09-22 19:19:02', '2020-09-22 19:19:02');
INSERT INTO `product_tags` VALUES (661, 6, '2020-09-22 19:19:02', '2020-09-22 19:19:02');
INSERT INTO `product_tags` VALUES (662, 6, '2020-09-22 19:19:03', '2020-09-22 19:19:03');
INSERT INTO `product_tags` VALUES (663, 6, '2020-09-22 19:19:04', '2020-09-22 19:19:04');
INSERT INTO `product_tags` VALUES (664, 6, '2020-09-22 19:19:05', '2020-09-22 19:19:05');
INSERT INTO `product_tags` VALUES (665, 6, '2020-09-22 19:19:06', '2020-09-22 19:19:06');
INSERT INTO `product_tags` VALUES (666, 6, '2020-09-22 19:19:07', '2020-09-22 19:19:07');
INSERT INTO `product_tags` VALUES (667, 6, '2020-09-22 19:19:07', '2020-09-22 19:19:07');
INSERT INTO `product_tags` VALUES (668, 6, '2020-09-22 19:19:08', '2020-09-22 19:19:08');
INSERT INTO `product_tags` VALUES (669, 6, '2020-09-22 19:19:09', '2020-09-22 19:19:09');
INSERT INTO `product_tags` VALUES (670, 5, '2020-09-22 19:19:10', '2020-09-22 19:19:10');
INSERT INTO `product_tags` VALUES (671, 5, '2020-09-22 19:19:10', '2020-09-22 19:19:10');
INSERT INTO `product_tags` VALUES (672, 5, '2020-09-22 19:19:11', '2020-09-22 19:19:11');
INSERT INTO `product_tags` VALUES (673, 5, '2020-09-22 19:19:12', '2020-09-22 19:19:12');
INSERT INTO `product_tags` VALUES (674, 5, '2020-09-22 19:19:12', '2020-09-22 19:19:12');
INSERT INTO `product_tags` VALUES (675, 5, '2020-09-22 19:19:13', '2020-09-22 19:19:13');
INSERT INTO `product_tags` VALUES (676, 5, '2020-09-22 19:19:14', '2020-09-22 19:19:14');
INSERT INTO `product_tags` VALUES (677, 5, '2020-09-22 19:19:14', '2020-09-22 19:19:14');
INSERT INTO `product_tags` VALUES (678, 5, '2020-09-22 19:19:15', '2020-09-22 19:19:15');
INSERT INTO `product_tags` VALUES (679, 5, '2020-09-22 19:19:16', '2020-09-22 19:19:16');
INSERT INTO `product_tags` VALUES (680, 5, '2020-09-22 19:19:16', '2020-09-22 19:19:16');
INSERT INTO `product_tags` VALUES (681, 5, '2020-09-22 19:19:17', '2020-09-22 19:19:17');
INSERT INTO `product_tags` VALUES (682, 5, '2020-09-22 19:19:17', '2020-09-22 19:19:17');
INSERT INTO `product_tags` VALUES (683, 5, '2020-09-22 19:19:18', '2020-09-22 19:19:18');
INSERT INTO `product_tags` VALUES (684, 5, '2020-09-22 19:19:18', '2020-09-22 19:19:18');
INSERT INTO `product_tags` VALUES (685, 5, '2020-09-22 19:19:19', '2020-09-22 19:19:19');
INSERT INTO `product_tags` VALUES (686, 5, '2020-09-22 19:19:20', '2020-09-22 19:19:20');
INSERT INTO `product_tags` VALUES (687, 5, '2020-09-22 19:19:20', '2020-09-22 19:19:20');
INSERT INTO `product_tags` VALUES (688, 5, '2020-09-22 19:19:21', '2020-09-22 19:19:21');
INSERT INTO `product_tags` VALUES (689, 5, '2020-09-22 19:19:21', '2020-09-22 19:19:21');
INSERT INTO `product_tags` VALUES (690, 5, '2020-09-22 19:19:22', '2020-09-22 19:19:22');
INSERT INTO `product_tags` VALUES (691, 5, '2020-09-22 19:19:23', '2020-09-22 19:19:23');
INSERT INTO `product_tags` VALUES (692, 5, '2020-09-22 19:19:23', '2020-09-22 19:19:23');
INSERT INTO `product_tags` VALUES (693, 5, '2020-09-22 19:19:24', '2020-09-22 19:19:24');
INSERT INTO `product_tags` VALUES (694, 5, '2020-09-22 19:19:24', '2020-09-22 19:19:24');
INSERT INTO `product_tags` VALUES (695, 5, '2020-09-22 19:19:25', '2020-09-22 19:19:25');
INSERT INTO `product_tags` VALUES (696, 5, '2020-09-22 19:19:26', '2020-09-22 19:19:26');
INSERT INTO `product_tags` VALUES (697, 5, '2020-09-22 19:19:26', '2020-09-22 19:19:26');
INSERT INTO `product_tags` VALUES (698, 5, '2020-09-22 19:19:27', '2020-09-22 19:19:27');
INSERT INTO `product_tags` VALUES (699, 5, '2020-09-22 19:19:27', '2020-09-22 19:19:27');
INSERT INTO `product_tags` VALUES (700, 5, '2020-09-22 19:19:28', '2020-09-22 19:19:28');
INSERT INTO `product_tags` VALUES (701, 5, '2020-09-22 19:19:29', '2020-09-22 19:19:29');
INSERT INTO `product_tags` VALUES (702, 5, '2020-09-22 19:19:30', '2020-09-22 19:19:30');
INSERT INTO `product_tags` VALUES (703, 5, '2020-09-22 19:19:30', '2020-09-22 19:19:30');
INSERT INTO `product_tags` VALUES (704, 5, '2020-09-22 19:19:31', '2020-09-22 19:19:31');
INSERT INTO `product_tags` VALUES (705, 5, '2020-09-22 19:19:31', '2020-09-22 19:19:31');
INSERT INTO `product_tags` VALUES (706, 5, '2020-09-22 19:19:32', '2020-09-22 19:19:32');
INSERT INTO `product_tags` VALUES (707, 5, '2020-09-22 19:19:33', '2020-09-22 19:19:33');
INSERT INTO `product_tags` VALUES (708, 5, '2020-09-22 19:19:33', '2020-09-22 19:19:33');
INSERT INTO `product_tags` VALUES (709, 5, '2020-09-22 19:19:34', '2020-09-22 19:19:34');
INSERT INTO `product_tags` VALUES (710, 5, '2020-09-22 19:19:34', '2020-09-22 19:19:34');
INSERT INTO `product_tags` VALUES (711, 5, '2020-09-22 19:19:35', '2020-09-22 19:19:35');
INSERT INTO `product_tags` VALUES (712, 5, '2020-09-22 19:19:36', '2020-09-22 19:19:36');
INSERT INTO `product_tags` VALUES (713, 5, '2020-09-22 19:19:36', '2020-09-22 19:19:36');
INSERT INTO `product_tags` VALUES (714, 5, '2020-09-22 19:19:37', '2020-09-22 19:19:37');
INSERT INTO `product_tags` VALUES (715, 5, '2020-09-22 19:19:37', '2020-09-22 19:19:37');
INSERT INTO `product_tags` VALUES (716, 5, '2020-09-22 19:19:38', '2020-09-22 19:19:38');
INSERT INTO `product_tags` VALUES (717, 5, '2020-09-22 19:19:39', '2020-09-22 19:19:39');
INSERT INTO `product_tags` VALUES (718, 5, '2020-09-22 19:19:39', '2020-09-22 19:19:39');
INSERT INTO `product_tags` VALUES (719, 5, '2020-09-22 19:19:40', '2020-09-22 19:19:40');
INSERT INTO `product_tags` VALUES (720, 5, '2020-09-22 19:19:41', '2020-09-22 19:19:41');
INSERT INTO `product_tags` VALUES (721, 5, '2020-09-22 19:19:41', '2020-09-22 19:19:41');
INSERT INTO `product_tags` VALUES (722, 5, '2020-09-22 19:19:42', '2020-09-22 19:19:42');
INSERT INTO `product_tags` VALUES (723, 5, '2020-09-22 19:19:42', '2020-09-22 19:19:42');
INSERT INTO `product_tags` VALUES (724, 5, '2020-09-22 19:19:43', '2020-09-22 19:19:43');
INSERT INTO `product_tags` VALUES (726, 5, '2020-09-22 19:19:44', '2020-09-22 19:19:44');
INSERT INTO `product_tags` VALUES (730, 5, '2020-09-22 19:19:44', '2020-09-22 19:19:44');
INSERT INTO `product_tags` VALUES (731, 5, '2020-09-22 19:19:45', '2020-09-22 19:19:45');
INSERT INTO `product_tags` VALUES (732, 5, '2020-09-22 19:19:45', '2020-09-22 19:19:45');
INSERT INTO `product_tags` VALUES (733, 5, '2020-09-22 19:19:46', '2020-09-22 19:19:46');
INSERT INTO `product_tags` VALUES (734, 5, '2020-09-22 19:19:47', '2020-09-22 19:19:47');
INSERT INTO `product_tags` VALUES (735, 5, '2020-09-22 19:19:47', '2020-09-22 19:19:47');
INSERT INTO `product_tags` VALUES (737, 7, '2020-09-22 19:19:48', '2020-09-22 19:19:48');
INSERT INTO `product_tags` VALUES (740, 7, '2020-09-22 19:19:49', '2020-09-22 19:19:49');
INSERT INTO `product_tags` VALUES (741, 7, '2020-09-22 19:19:49', '2020-09-22 19:19:49');
INSERT INTO `product_tags` VALUES (742, 7, '2020-09-22 19:19:50', '2020-09-22 19:19:50');
INSERT INTO `product_tags` VALUES (743, 7, '2020-09-22 19:19:51', '2020-09-22 19:19:51');
INSERT INTO `product_tags` VALUES (744, 7, '2020-09-22 19:19:52', '2020-09-22 19:19:52');
INSERT INTO `product_tags` VALUES (745, 7, '2020-09-22 19:19:53', '2020-09-22 19:19:53');
INSERT INTO `product_tags` VALUES (746, 7, '2020-09-22 19:19:53', '2020-09-22 19:19:53');
INSERT INTO `product_tags` VALUES (747, 7, '2020-09-22 19:19:54', '2020-09-22 19:19:54');
INSERT INTO `product_tags` VALUES (748, 7, '2020-09-22 19:19:55', '2020-09-22 19:19:55');
INSERT INTO `product_tags` VALUES (749, 7, '2020-09-22 19:19:56', '2020-09-22 19:19:56');
INSERT INTO `product_tags` VALUES (750, 7, '2020-09-22 19:19:57', '2020-09-22 19:19:57');
INSERT INTO `product_tags` VALUES (751, 7, '2020-09-22 19:19:57', '2020-09-22 19:19:57');
INSERT INTO `product_tags` VALUES (752, 7, '2020-09-22 19:19:58', '2020-09-22 19:19:58');
INSERT INTO `product_tags` VALUES (753, 7, '2020-09-22 19:19:59', '2020-09-22 19:19:59');
INSERT INTO `product_tags` VALUES (754, 7, '2020-09-22 19:19:59', '2020-09-22 19:19:59');
INSERT INTO `product_tags` VALUES (755, 7, '2020-09-22 19:20:00', '2020-09-22 19:20:00');
INSERT INTO `product_tags` VALUES (756, 7, '2020-09-22 19:20:01', '2020-09-22 19:20:01');
INSERT INTO `product_tags` VALUES (757, 7, '2020-09-22 19:20:02', '2020-09-22 19:20:02');
INSERT INTO `product_tags` VALUES (758, 7, '2020-09-22 19:20:03', '2020-09-22 19:20:03');
INSERT INTO `product_tags` VALUES (759, 7, '2020-09-22 19:20:03', '2020-09-22 19:20:03');
INSERT INTO `product_tags` VALUES (760, 7, '2020-09-22 19:20:04', '2020-09-22 19:20:04');
INSERT INTO `product_tags` VALUES (761, 7, '2020-09-22 19:20:05', '2020-09-22 19:20:05');
INSERT INTO `product_tags` VALUES (762, 7, '2020-09-22 19:20:05', '2020-09-22 19:20:05');
INSERT INTO `product_tags` VALUES (763, 7, '2020-09-22 19:20:06', '2020-09-22 19:20:06');
INSERT INTO `product_tags` VALUES (764, 7, '2020-09-22 19:20:07', '2020-09-22 19:20:07');
INSERT INTO `product_tags` VALUES (765, 7, '2020-09-22 19:20:07', '2020-09-22 19:20:07');
INSERT INTO `product_tags` VALUES (766, 7, '2020-09-22 19:20:08', '2020-09-22 19:20:08');
INSERT INTO `product_tags` VALUES (767, 7, '2020-09-22 19:20:09', '2020-09-22 19:20:09');
INSERT INTO `product_tags` VALUES (768, 7, '2020-09-22 19:20:09', '2020-09-22 19:20:09');
INSERT INTO `product_tags` VALUES (769, 7, '2020-09-22 19:20:10', '2020-09-22 19:20:10');
INSERT INTO `product_tags` VALUES (770, 7, '2020-09-22 19:20:10', '2020-09-22 19:20:10');
INSERT INTO `product_tags` VALUES (771, 7, '2020-09-22 19:20:11', '2020-09-22 19:20:11');
INSERT INTO `product_tags` VALUES (772, 7, '2020-09-22 19:20:11', '2020-09-22 19:20:11');
INSERT INTO `product_tags` VALUES (773, 7, '2020-09-22 19:20:12', '2020-09-22 19:20:12');
INSERT INTO `product_tags` VALUES (774, 7, '2020-09-22 19:20:12', '2020-09-22 19:20:12');
INSERT INTO `product_tags` VALUES (775, 7, '2020-09-22 19:20:13', '2020-09-22 19:20:13');
INSERT INTO `product_tags` VALUES (776, 7, '2020-09-22 19:20:13', '2020-09-22 19:20:13');
INSERT INTO `product_tags` VALUES (777, 7, '2020-09-22 19:20:14', '2020-09-22 19:20:14');
INSERT INTO `product_tags` VALUES (778, 7, '2020-09-22 19:20:15', '2020-09-22 19:20:15');
INSERT INTO `product_tags` VALUES (779, 7, '2020-09-22 19:20:15', '2020-09-22 19:20:15');
INSERT INTO `product_tags` VALUES (780, 7, '2020-09-22 19:20:16', '2020-09-22 19:20:16');
INSERT INTO `product_tags` VALUES (781, 7, '2020-09-22 19:20:17', '2020-09-22 19:20:17');
INSERT INTO `product_tags` VALUES (782, 7, '2020-09-22 19:20:17', '2020-09-22 19:20:17');
INSERT INTO `product_tags` VALUES (783, 7, '2020-09-22 19:20:18', '2020-09-22 19:20:18');
INSERT INTO `product_tags` VALUES (784, 7, '2020-09-22 19:20:18', '2020-09-22 19:20:18');
INSERT INTO `product_tags` VALUES (785, 7, '2020-09-22 19:20:19', '2020-09-22 19:20:19');
INSERT INTO `product_tags` VALUES (786, 7, '2020-09-22 19:20:20', '2020-09-22 19:20:20');
INSERT INTO `product_tags` VALUES (787, 7, '2020-09-22 19:20:20', '2020-09-22 19:20:20');
INSERT INTO `product_tags` VALUES (788, 7, '2020-09-22 19:20:21', '2020-09-22 19:20:21');
INSERT INTO `product_tags` VALUES (789, 7, '2020-09-22 19:20:21', '2020-09-22 19:20:21');
INSERT INTO `product_tags` VALUES (790, 7, '2020-09-22 19:20:22', '2020-09-22 19:20:22');
INSERT INTO `product_tags` VALUES (791, 7, '2020-09-22 19:20:22', '2020-09-22 19:20:22');
INSERT INTO `product_tags` VALUES (792, 7, '2020-09-22 19:20:23', '2020-09-22 19:20:23');

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
  `discount_percent` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `quantity` int(0) NULL DEFAULT 0,
  `unit` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `taxable` tinyint(1) NULL DEFAULT 0,
  `inserted_at` timestamp(0) NOT NULL,
  `updated_at` timestamp(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3372 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, '', 'strawbery', 'Strawberry', '520d14da-d450-4c9e-bc61-ab7d627484a3', 'The garden strawberry is a widely grown hybrid species of the genus Fragaria, collectively known as the strawberries, which are cultivated worldwide for their fruit. The fruit is widely appreciated for its characteristic aroma, bright red color, juicy texture, and sweetness.', 0, 5, 3, '40', 0, '1 lb', 0, '2020-09-22 17:08:27', '2020-09-22 17:08:27');
INSERT INTO `products` VALUES (2, '', 'blueberry', 'Blueberries', 'b4666448-6bed-4728-b8df-692e05a9fcf3', 'Blueberries are perennial flowering plants with blue or purple berries. They are classified in the section Cyanococcus within the genus Vaccinium. Vaccinium also includes cranberries, bilberries, huckleberries and Madeira blueberries. Commercial blueberries—both wild and cultivated —are all native to North America.', 0, 8, 7, '12.5', 0, '1 lb', 0, '2020-09-22 17:08:27', '2020-09-22 17:08:27');
INSERT INTO `products` VALUES (3, '', 'clementines', 'Clementines', '26ea283e-e783-4730-a889-877a39a0ab8c', ' clementine is a tangor, a citrus fruit hybrid between a willowleaf mandarin orange and a sweet orange, named for its late 19th-century discoverer. The exterior is a deep orange colour with a smooth, glossy appearance. ', 0, 3, 0, '100', 0, '2 lb', 0, '2020-09-22 17:08:28', '2020-09-22 17:08:28');
INSERT INTO `products` VALUES (4, '', 'apples', 'Apples', '0653b0a8-6c56-4cbe-a80c-f940d4eb319d', 'An apple is a sweet, edible fruit produced by an apple tree (Malus domestica). Apple trees are ... The skin of ripe apples is generally red, yellow, green, pink, or russetted, though many bi- or tri-colored cultivars may be found. ', 0, 2, 2, '0', 0, '2 lb', 0, '2020-09-22 17:08:29', '2020-09-22 17:08:29');
INSERT INTO `products` VALUES (5, '', 'pear', 'Pears', 'c28071f6-b902-4bdb-b909-8a48c57d8145', 'The pear tree and shrub are a species of genus Pyrus, in the family Rosaceae, bearing the pomaceous fruit of the same name. Several species of pear are valued for their edible fruit and juices while others are cultivated as trees.', 0, 2, 0, '100', 0, '1 lb', 0, '2020-09-22 17:08:30', '2020-09-22 17:08:30');
INSERT INTO `products` VALUES (6, '', 'mango', 'Mango', 'fb697588-673f-4171-93d8-b2d0ca682633', 'A mango is a juicy stone fruit produced from numerous species of tropical trees belonging to the flowering plant genus Mangifera, cultivated mostly for their edible fruit. Most of these species are found in nature as wild mangoes. The genus belongs to the cashew family Anacardiaceae.', 0, 3, 0, '100', 0, '2 lb', 0, '2020-09-22 17:08:30', '2020-09-22 17:08:30');
INSERT INTO `products` VALUES (7, '', 'dates', 'Dates', 'ce99342b-9a74-4feb-9ac9-4077b1eaf4dd', 'Phoenix dactylifera, commonly known as date or date palm, is a flowering plant species in the palm family, Arecaceae, cultivated for its edible sweet fruit.', 0, 15, 12, '20', 0, '2 lb', 0, '2020-09-22 17:08:31', '2020-09-22 17:08:31');
INSERT INTO `products` VALUES (8, '', 'lime', 'lime', 'e2c0cba7-5269-4501-925e-d5d9c9cee668', 'The lemon/lime, Citrus limon Osbeck, is a species of small evergreen tree in the flowering plant family Rutaceae, native to South Asia, primarily North eastern India.', 0, 2, 0, '100', 0, '12 pc(s)', 0, '2020-09-22 17:08:18', '2020-09-22 17:08:18');
INSERT INTO `products` VALUES (9, '', 'lemon', 'Lemon', '041ecfa0-b283-49fd-b6d4-03cf32eef6ad', 'The lemon/lime, Citrus limon Osbeck, is a species of small evergreen tree in the flowering plant family Rutaceae, native to South Asia, primarily North eastern India.', 0, 2, 0, '100', 0, '12 pc(s)', 0, '2020-09-22 17:08:18', '2020-09-22 17:08:18');
INSERT INTO `products` VALUES (10, '', 'cherry', 'Cherry', '707503db-0fcf-4f86-9112-76a27d4eec2d', 'A cherry is the fruit of many plants of the genus Prunus, and is a fleshy drupe. Commercial cherries are obtained from cultivars of several species, such as the sweet Prunus avium and the sour Prunus cerasus', 0, 2, 0, '100', 0, '0.5 lb', 0, '2020-09-22 17:08:19', '2020-09-22 17:08:19');
INSERT INTO `products` VALUES (11, '', 'celerystick', 'Celery Stick', '51e5b056-b879-424a-93b0-52d386b969f9', 'celery stick - celery stalks cut into small sticks. crudites - raw vegetables cut into bite-sized strips and served with a dip. celery - stalks eaten raw or cooked or used as seasoning.', 0, 1, 0, '100', 0, '1 lb', 0, '2020-09-22 17:08:20', '2020-09-22 17:08:20');
INSERT INTO `products` VALUES (12, '', 'babyspinach', 'Baby Spinach', 'c5f59434-aac7-4d28-9cc4-2ddd84bbd547', 'Spinach (Spinacia oleracea) is a leafy green flowering plant native to central and western Asia. It is of the order Caryophyllales, family Amaranthaceae, subfamily Chenopodioideae. Its leaves are a common edible vegetable consumed either fresh.', 0, 1, 0, '100', 0, '0.2 lb', 0, '2020-09-22 17:08:20', '2020-09-22 17:08:20');
INSERT INTO `products` VALUES (13, '', 'mixveggieplatter', 'Mix Vegetable Platter', '89f5b13f-cad3-4f8e-96bc-584a2135c1f3', 'Spinach (Spinacia oleracea) is a leafy green flowering plant native to central and western Asia. It is of the order Caryophyllales, family Amaranthaceae, subfamily Chenopodioideae. Its leaves are a common edible vegetable consumed either fresh.', 0, 2, 0, '100', 0, '0.4 lb', 0, '2020-09-22 17:08:21', '2020-09-22 17:08:21');
INSERT INTO `products` VALUES (14, '', 'frenchgreenbeans', 'French Green Beans', '980fb785-2145-411f-8a6d-4c7fcf9f37b9', 'Green beans are the unripe, young fruit and protective pods of various cultivars of the common bean. Immature or young pods of the runner bean, yardlong bean, and hyacinth bean are used in a similar way.', 0, 2, 2, '0', 0, '.6 lb', 0, '2020-09-22 17:08:22', '2020-09-22 17:08:22');
INSERT INTO `products` VALUES (15, '', 'sweetcorn', 'Sweet Corn', 'eaca4aa5-133b-4e05-b05e-9e37801ca318', 'Maize, also known as corn, is a cereal grain first domesticated by indigenous peoples in southern Mexico about 10,000 years ago. The leafy stalk of the plant produces pollen inflorescences and separate ovuliferous inflorescences called ears that yield kernels or seeds, which are fruits.', 0, 3, 0, '100', 0, '2.5 lb', 0, '2020-09-22 17:08:23', '2020-09-22 17:08:23');
INSERT INTO `products` VALUES (16, '', 'cucumber', 'Cucumber', '95c25d5d-ea1d-47ac-bb26-7765218a2eab', 'Cucumber is a widely cultivated plant in the gourd family, Cucurbitaceae. It is a creeping vine that bears cucumiform fruits that are used as vegetables. There are three main varieties of cucumber: slicing, pickling, and seedless. Within these varieties, several cultivars have been created.', 0, 2, 0, '100', 0, '4 lb', 0, '2020-09-22 17:08:23', '2020-09-22 17:08:23');
INSERT INTO `products` VALUES (17, '', 'pepper', 'Pepper', '6fa8802e-ecaa-49f2-92ad-b9d1fe3c23d2', 'Black pepper is a flowering vine in the family Piperaceae, cultivated for its fruit, known as a peppercorn, which is usually dried and used as a spice and seasoning. When fresh and fully mature, it is about 5 mm in diameter and dark red, and contains a single seed, like all drupes', 0, 10, 8, '20', 0, '1.5 lb', 0, '2020-09-22 17:08:24', '2020-09-22 17:08:24');
INSERT INTO `products` VALUES (18, '', 'greenbeans', ' Green Beans', '143e662e-35b8-4446-85d5-2e63b087e060', 'Green beans are the unripe, young fruit and protective pods of various cultivars of the common bean. Immature or young pods of the runner bean, yardlong bean, and hyacinth bean are used in a similar way.', 0, 2, 1, '50', 0, '.6 lb', 0, '2020-09-22 17:08:25', '2020-09-22 17:08:25');
INSERT INTO `products` VALUES (19, '', 'brusselssprouts', ' Brussels Sprout', 'b0ce446c-3353-4c7a-9635-cd37b113b487', 'The Brussels sprout is a member of the Gemmifera Group of cabbages, grown for its edible buds. The leaf vegetables are typically 1.5–4.0 cm in diameter and look like miniature cabbages. The Brussels sprout has long been popular in Brussels, Belgium, and may have gained its name there.', 0, 4, 0, '100', 0, '1 lb', 0, '2020-09-22 17:08:25', '2020-09-22 17:08:25');
INSERT INTO `products` VALUES (20, '', 'babycarrot', 'Peeled Baby Carrot', '3e9b2289-99ad-439c-a53b-253c84690c52', 'The carrot is a root vegetable, usually orange in colour, though purple, black, red, white, and yellow cultivars exist. They are a domesticated form of the wild carrot, Daucus carota, native to Europe and Southwestern Asia. The plant probably originated in Persia and was originally cultivated for its leaves and seeds.', 0, 3, 0, '100', 0, '2 lb', 0, '2020-09-22 17:08:26', '2020-09-22 17:08:26');
INSERT INTO `products` VALUES (21, '', 'signaturesalmon', 'Signature Salmon', '3ee1253b-17ac-4bb4-89f5-e6e83cfadc94', 'Salmon is a common food classified as an oily fish with a rich content of protein and omega-3 fatty acids', 0, 5, 0, '100', 0, '1 lb', 0, '2020-09-22 17:08:32', '2020-09-22 17:08:32');
INSERT INTO `products` VALUES (22, '', 'codfillet', 'Cod Fillet', '3c06922f-a029-4d16-8f2d-2957f7aba1a9', 'Cod is the common name for the demersal fish genus Gadus, belonging to the family Gadidae. Cod is also used as part of the common name for a number of other fish species, and some species suggested to belong to genus Gadus are not called cod.', 0, 10, 8, '20', 0, '1 lb', 0, '2020-09-22 17:08:32', '2020-09-22 17:08:32');
INSERT INTO `products` VALUES (23, '', 'swordfish', 'Swordfish Fillet', '29f541a9-d264-4e2f-8aea-eb94ed8ec3f3', 'The swordfish meat has a very delicate flavour, meaty and mild. Swordfish, also known as broadbills, is an oily fish similar to tuna, chunky meat without bones.', 0, 10, 9, '10', 0, '1.5 lb', 0, '2020-09-22 17:08:33', '2020-09-22 17:08:33');
INSERT INTO `products` VALUES (24, '', 'halibut', 'Halibut Fillet', '5a8263e5-c729-4c38-bb51-f623ede78e8a', 'Hippoglossus stenolepis, the Pacific halibut, is a species of righteye flounder. This very large species of flatfish is native to the North Pacific and is fished by commercial fisheries, sport fishers, and subsistence fishers.', 0, 15, 0, '100', 0, '2 lb', 0, '2020-09-22 17:08:34', '2020-09-22 17:08:34');
INSERT INTO `products` VALUES (25, '', 'tilapia', 'Tilapia Fillet', 'd62c19a3-c1aa-4fe8-98a1-d2fde983ffaa', 'Tilapia is the common name for nearly a hundred species of cichlid fish from the coelotilapine, coptodonine, heterotilapine, oreochromine, pelmatolapiine and tilapiine tribes, with the economically most important species placed in Coptodonini and Oreochromini.', 0, 8, 0, '100', 0, '1 lb', 0, '2020-09-22 17:08:34', '2020-09-22 17:08:34');
INSERT INTO `products` VALUES (26, '', 'beef', 'Fresh Beef', 'd5224337-912a-44ce-a746-3ba2f9ed625c', 'Meat is animal flesh that is eaten as food. Humans have hunted and killed animals for meat since prehistoric times. The advent of civilization allowed the domestication of animals such as chickens, sheep, rabbits, pigs and cattle.', 0, 6, 0, '100', 0, '1 lb', 0, '2020-09-22 17:08:35', '2020-09-22 17:08:35');
INSERT INTO `products` VALUES (27, '', 'turkeybreast', 'Sliced Turkey Breast', '77189e18-86ed-4c50-807c-8fd3c9ebc16b', 'Meat is animal flesh that is eaten as food. Humans have hunted and killed animals for meat since prehistoric times. The advent of civilization allowed the domestication of animals such as chickens, sheep, rabbits, pigs and cattle.', 0, 8, 7, '12.5', 0, '2 lb ', 0, '2020-09-22 17:08:36', '2020-09-22 17:08:36');
INSERT INTO `products` VALUES (28, '', 'chickenthigh', 'Chicken Thighs', 'ef236c41-5813-4ae3-99da-a0400e75e727', 'Meat is animal flesh that is eaten as food. Humans have hunted and killed animals for meat since prehistoric times. The advent of civilization allowed the domestication of animals such as chickens, sheep, rabbits, pigs and cattle.', 0, 10, 7, '30', 0, '5 lb ', 0, '2020-09-22 17:08:37', '2020-09-22 17:08:37');
INSERT INTO `products` VALUES (29, '', 'chickenbreast', 'Chicken Breast', 'af340f5c-3973-4647-a019-73014553c782', 'Meat is animal flesh that is eaten as food. Humans have hunted and killed animals for meat since prehistoric times. The advent of civilization allowed the domestication of animals such as chickens, sheep, rabbits, pigs and cattle.', 0, 10, 0, '100', 0, '5 lb ', 0, '2020-09-22 17:08:37', '2020-09-22 17:08:37');
INSERT INTO `products` VALUES (30, '', 'beefsteak', 'Beef Steak', '8526df96-8da1-400b-921c-abf7fc6879d3', 'Meat is animal flesh that is eaten as food. Humans have hunted and killed animals for meat since prehistoric times. The advent of civilization allowed the domestication of animals such as chickens, sheep, rabbits, pigs and cattle.', 0, 15, 0, '100', 0, '3 lb ', 0, '2020-09-22 17:08:38', '2020-09-22 17:08:38');
INSERT INTO `products` VALUES (35, '', 'advent-laptop-bag', 'Advent Laptop Bag', '089e02b1-9710-423f-9009-1b1ea4c3e7a0', 'Material: Laptop Shoulder Bag is made of quality canvas, protecting your laptop from dust, scratches and water', 0, 200, 160, '20', 0, '1 pc(s)', 0, '2020-09-22 17:08:39', '2020-09-22 17:08:39');
INSERT INTO `products` VALUES (36, '', 'alex-maqueen-shoulder-bag', 'Alex Maqueeen Shoulder Bag', 'fc05f432-41d7-4cab-883c-4d3585fefd2c', 'Luxury British fashion house Alexander McQueen is famed for its exquisitely designed handbags and accessories, as showcased through this stunning black Box bag. Expertly crafted in Italy from supple calf leather, the bag is an ideal accessory choice which suits a variety of styles and occasions.', 0, 250, 200, '20', 0, '1 pc(s)', 0, '2020-09-22 17:08:40', '2020-09-22 17:08:40');
INSERT INTO `products` VALUES (37, '', 'armani-black-wallet', 'Armani Black Wallet', '052a8b36-d328-40b8-bdba-448f93cc4208', 'Brand New Emporio Armani Leather Wallet. Shipped with USPS First Class Package.', 0, 150, 135, '10', 0, '1 pc(s)', 0, '2020-09-22 17:08:40', '2020-09-22 17:08:40');
INSERT INTO `products` VALUES (38, '', 'armani-handbag', 'Armani Handbag', 'f667aac0-91b4-44a8-b603-ff74fff19cd7', 'Black logo embossed messenger bag from Giorgio Armani featuring an adjustable shoulder strap, a top zip fastening and a front zip pocket.', 0, 350, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 17:08:41', '2020-09-22 17:08:41');
INSERT INTO `products` VALUES (39, '', 'armani-leather-purse', 'Armani Leather Purse', 'dc1bdb6f-5724-4ae9-bc4b-c2b23688ee1d', 'The name Giorgio Armani has become synonymous with clean lines and Italian style. One of the most recognisable fashion houses in the world, the label has dressed some of the world’s most beautiful women.', 0, 50, 40, '20', 0, '1 pc(s)', 0, '2020-09-22 17:08:42', '2020-09-22 17:08:42');
INSERT INTO `products` VALUES (40, '', 'armani-purse', 'Armani Purse', '695ef7db-e27d-4787-8274-db32a8ed32f1', 'Black logo embossed messenger bag from Giorgio Armani featuring an adjustable shoulder strap, a top zip fastening and a front zip pocket.', 0, 80, 72, '10', 0, '1 pc(s)', 0, '2020-09-22 17:08:42', '2020-09-22 17:08:42');
INSERT INTO `products` VALUES (41, '', 'armani-wallet', 'Armani Wallet', '931b16da-40c7-4320-9e0d-a241536cb608', 'Brand New Emporio Armani Leather Wallet. Shipped with USPS First Class Package.', 0, 60, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 17:08:43', '2020-09-22 17:08:43');
INSERT INTO `products` VALUES (42, '', 'chanel-shoulder-bag', 'Chanel Shoulder Bag', 'db5c33f8-42f1-429c-9cde-75ecc09c8974', '00% Authenticity Guaranteed Chanel Classic Jumbo Single Flap Black Caviar Shoulder Bag', 0, 190, 171, '10', 0, '1 pc(s)', 0, '2020-09-22 17:08:43', '2020-09-22 17:08:43');
INSERT INTO `products` VALUES (43, '', 'chanel-wallet-brown', 'Chanel Wallet Brown', 'b5dc4528-ea25-4dc5-bad8-501d5d377b9d', 'Beautiful new Chanel fingerless wallet. Tweed with leather CC on top and leather on the backside of the wallet.', 0, 90, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 17:08:44', '2020-09-22 17:08:44');
INSERT INTO `products` VALUES (44, '', 'chanel-wallet', 'Chanel Wallet', '0400eb75-6101-4b57-8f8e-05a68a31b4f0', 'Beautiful new Chanel fingerless wallet. Tweed with leather CC on top and leather on the backside of the wallet.', 0, 60, 48, '20', 0, '1 pc(s)', 0, '2020-09-22 17:08:44', '2020-09-22 17:08:44');
INSERT INTO `products` VALUES (45, '', 'givenchy-shoulder-bag', 'Givenchy Shoulder Bag', '1ec0c963-c01b-4a02-9671-073962b011b1', 'Established in 1952, Givenchy\'s stance on contemporary elegance is perfectly captured through the brand’s premium accessory collections. Crafted from calf leather, this grey GV3 croc-effect shoulder bag from Givenchy features a chain top handle with logo charm, a detachable shoulder strap, a front flap closure, a metal logo plaque to the front, gold-tone hardware and suede panels.', 0, 210, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 18:52:46', '2020-09-22 18:52:46');
INSERT INTO `products` VALUES (46, '', 'givenchy-purse', 'Givenchy Purse', '0c3547d1-496c-43c6-b7d5-5e653621b927', 'Established in 1952, Givenchy\'s stance on contemporary elegance is perfectly captured through the brand’s premium accessory collections. Crafted from calf leather, this grey GV3 croc-effect shoulder bag from Givenchy features a chain top handle with logo charm, a detachable shoulder strap, a front flap closure, a metal logo plaque to the front, gold-tone hardware and suede panels.', 0, 75, 60, '20', 0, '1 pc(s)', 0, '2020-09-22 18:52:47', '2020-09-22 18:52:47');
INSERT INTO `products` VALUES (47, '', 'gucci-handbag', 'Gucci Handbag', '78d01d22-ef1a-4d91-86e8-95914057a759', 'Luxury Italian fashion house Gucci is renowned for its instantly recognisable bags and accessories, infusing its unique sense of quality and exquisite design into each piece. This pink logo print leather backpack from Gucci features top handles, a drawstring fastening, a pebbled leather texture, a removable zipped pouch and a vintage Gucci logo.', 0, 380, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 18:52:47', '2020-09-22 18:52:47');
INSERT INTO `products` VALUES (48, '', 'givenchy-mini-purse', 'Givenchy Mini Purse', '9e4dfc5d-c47e-4092-9b6c-7317ad2ebf8f', 'Luxury Italian fashion house Gucci is renowned for its instantly recognisable bags and accessories, infusing its unique sense of quality and exquisite design into each piece. This pink logo print leather backpack from Gucci features top handles, a drawstring fastening, a pebbled leather texture, a removable zipped pouch and a vintage Gucci logo.', 0, 65, 52, '20', 0, '1 pc(s)', 0, '2020-09-22 18:52:48', '2020-09-22 18:52:48');
INSERT INTO `products` VALUES (49, '', 'gucci-purse', 'Gucci Purse', '78f58e2c-e92c-4f9b-85cb-8f51c89db2ad', 'Luxury Italian fashion house Gucci is renowned for its instantly recognisable bags and accessories, infusing its unique sense of quality and exquisite design into each piece. This pink logo print leather backpack from Gucci features top handles, a drawstring fastening, a pebbled leather texture, a removable zipped pouch and a vintage Gucci logo.', 0, 95, 76, '20', 0, '1 pc(s)', 0, '2020-09-22 18:52:48', '2020-09-22 18:52:48');
INSERT INTO `products` VALUES (50, '', 'hp-laptop-bag', 'Hp Laptop Bag', '0e44fba9-0983-42ed-a598-5b1bac27f5a0', 'Bewitching black, plush padding and faux-fur lining surround and cradle your 15.6 Ultrabook in trendsetting luxury. It is the perfect accessory for every season and all occasions. Dress it up; dress it down. Take it with you everywhere you go.', 0, 295, 236, '20', 0, '1 pc(s)', 0, '2020-09-22 18:52:49', '2020-09-22 18:52:49');
INSERT INTO `products` VALUES (51, '', 'mac-laptop-bag', 'Mac Laptop Bag', '08de5111-a5dc-48ac-b490-d8fc9e5b88a3', 'Bewitching black, plush padding and faux-fur lining surround and cradle your 15.6 macbook™ in trendsetting luxury. It is the perfect accessory for every season and all occasions. Dress it up; dress it down. Take it with you everywhere you go.', 0, 325, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 18:52:50', '2020-09-22 18:52:50');
INSERT INTO `products` VALUES (52, '', 'muse-wallet', 'Muse Wallet', '9fe620cc-977c-49d6-837d-3f9c544cfa26', 'Muse Medium Zip Around Wallet has been crafted from a beautiful clotted cream saffiano leather. The leather has been thoughtfully paired with brass hardware throughout and a discrete foil logo. The interior is lined with cotton twill and is fitted with 2 main compartments with a zip coin pocket, 2 note pockets and 12 credit card slots, all in soft nappa leather.', 0, 80, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 18:52:50', '2020-09-22 18:52:50');
INSERT INTO `products` VALUES (53, '', 'philip-lim-shoulder-bag', 'Philip Lim Shoulder Bag', '0b760952-fefc-45af-9191-bfe9fae644c6', 'Structured buffed nappa leather top handle bag in \'scarlet\' red. Carry handle at top. Detachable and adjustable shoulder strap with lanyard clasp fastening. Foldover flap with signature logo-engraved \'paper clip\' fastening. Patch pocket and gold-tone logo stamp at two-compartment interior. ', 0, 250, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 18:52:51', '2020-09-22 18:52:51');
INSERT INTO `products` VALUES (54, '', 'sports-shoulder-bag', 'Sports Shoulder Bag', 'eb77a7de-e2f8-4f71-af46-832bfdf5a787', 'Structured buffed nappa leather top handle bag in \'scarlet\' red. Carry handle at top. Detachable and adjustable shoulder strap with lanyard clasp fastening. Foldover flap with signature logo-engraved \'paper clip\' fastening. Patch pocket and gold-tone logo stamp at two-compartment interior. ', 0, 150, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 18:52:51', '2020-09-22 18:52:51');
INSERT INTO `products` VALUES (55, '', 'supreme-shoulder-bag', 'Supreme Shoulder Bag', '0ce57d7a-68b7-410f-9c91-6c014ec2f55d', 'Structured buffed nappa leather top handle bag in \'scarlet\' red. Carry handle at top. Detachable and adjustable shoulder strap with lanyard clasp fastening. Foldover flap with signature logo-engraved \'paper clip\' fastening. Patch pocket and gold-tone logo stamp at two-compartment interior. ', 0, 190, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 18:52:52', '2020-09-22 18:52:52');
INSERT INTO `products` VALUES (56, '', 'roadster-women-solid-top', 'Roadster Women Solid Top', '749f24df-71aa-4e39-8354-fb0c57045475', 'Fendi began life in 1925 as a fur and leather speciality store in Rome. Despite growing into one of the world’s most renowned luxury labels, the business has retained its family feel, with a focus on fine detail, Italian craftsmanship and the support of local artisans.', 0, 15, 12, '20', 0, '1 pc(s)', 0, '2020-09-22 18:52:52', '2020-09-22 18:52:52');
INSERT INTO `products` VALUES (57, '', 'magnetic-designs-women-printed-fit-and-flare-dress', 'Magnetic Designs Women Printed Fit And Flare Dress', '01e91580-bba8-45a4-be64-423c639ab34e', 'Mauve printed knitted fit and flare dress, has a round neck, three-quarter sleeves, concealed zip closure,, flared hem', 0, 35, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 18:52:53', '2020-09-22 18:52:53');
INSERT INTO `products` VALUES (58, '', 'mango-self-striped-a-line-dress', 'Mango Self Striped A Line Dress', '2f55893c-76bf-437a-a740-3592b8f3e720', 'Off-White self-striped knitted midi A-line dress, has a scoop neck, sleeveless, straight hem', 0, 85, 68, '20', 0, '1 pc(s)', 0, '2020-09-22 18:52:53', '2020-09-22 18:52:53');
INSERT INTO `products` VALUES (59, '', ' forever-21-solid-bodycon-midi-dress', 'Forever 21 Solid Bodycon Midi Dress', 'd7397a12-8934-4774-8134-582f932a9830', 'Grey solid woven bodycon dress, has a round neck, sleeveless, straight hem', 0, 185, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 18:52:54', '2020-09-22 18:52:54');
INSERT INTO `products` VALUES (60, '', 'dorothy-perkins-self-striped-a-line-dress', 'Dorothy Perkins Self Striped A Line Dress', '787b4ed1-dc57-49cc-9956-4ed0bd869a93', 'Rust red self-striped knitted A-line dress, has a V-neck with button detailing, three-quarter sleeves, flared hem', 0, 125, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 18:52:55', '2020-09-22 18:52:55');
INSERT INTO `products` VALUES (61, '', 'flounce-high-low-plain-midi-skirt', 'Flounce High Low Plain Midi Skirt', 'd4547b8a-be8d-45d8-8fc2-f563604cae9d', 'Blue washed mini A-line denim pencil skirt, has a waistband with nabelt loops, button closures', 0, 25, 20, '20', 0, '1 pc(s)', 0, '2020-09-22 18:52:56', '2020-09-22 18:52:56');
INSERT INTO `products` VALUES (62, '', 'basic-hollow-out-flared-midi-skirt', 'Basic Hollow Out Flared Midi Skirt', '738ac6ba-2701-4622-b728-5bbf4a58d3f1', 'Blue washed pencil denim distressed skirt with ruffle detail, has a waistband with belt loops, 2 pockets, straight hem with back slit Comes with a fabric belt.', 0, 25, 20, '20', 0, '1 pc(s)', 0, '2020-09-22 18:52:56', '2020-09-22 18:52:56');
INSERT INTO `products` VALUES (63, '', 'charming-red-flared-midi-skirt', 'Charming Red Flared Midi Skirt', '0623dac8-b060-4854-9a4f-aedaab12c5b4', 'Red and gold-coloured printed flared maxi skirt with satin lining, has an elasticated waistband with side hook closure, flared hem', 0, 35, 28, '20', 0, '1 pc(s)', 0, '2020-09-22 18:52:57', '2020-09-22 18:52:57');
INSERT INTO `products` VALUES (64, '', 'plain-midi-flared-skirts', 'Plain Midi Flared Skirts', '390d42b9-f0cd-498f-974b-cf82c4a97eb5', 'Red and gold-coloured printed flared maxi skirt with satin lining, has an elasticated waistband with side hook closure, flared hem', 0, 40, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 18:52:57', '2020-09-22 18:52:57');
INSERT INTO `products` VALUES (65, '', 'fold-over-collar-plain-blazers', 'Fold Over Collar Plain Blazers', '6dffd822-bb4e-47b6-a58a-6de976f0bdfb', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 105, 84, '20', 0, '1 pc(s)', 0, '2020-09-22 18:52:58', '2020-09-22 18:52:58');
INSERT INTO `products` VALUES (66, '', 'solid-notch-lapel-single-button-long-sleeve-blazer', 'Solid Notch Lapel Single Button Long Sleeve Blazer', '443d6277-c1d4-4f13-9442-2060f34d9080', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 150, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 18:52:59', '2020-09-22 18:52:59');
INSERT INTO `products` VALUES (67, '', 'notch-lapel-single-button-color-black-blazer', 'Notch Lapel Single Button Color Block Blazer', '642bef92-2b88-4a19-876f-c00ab81031f8', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 120, 108, '10', 0, '1 pc(s)', 0, '2020-09-22 18:52:59', '2020-09-22 18:52:59');
INSERT INTO `products` VALUES (68, '', 'narrow-notch-lapel-slit-pocket-plain-blazers', 'Narrow Notch Lapel Slit Pocket Plain Blazers', 'dbd73790-e4a3-43e8-a06b-0a8f78757eac', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 110, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 18:53:00', '2020-09-22 18:53:00');
INSERT INTO `products` VALUES (69, '', 'notch-lapel-elastic-waist-plain-trench-coat', 'Notch Lapel Elastic Waist Plain Trench Coat', 'e67c3cb8-c632-4e5d-a4b9-303571d72785', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 160, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 18:53:01', '2020-09-22 18:53:01');
INSERT INTO `products` VALUES (70, '', 'turn-down-collar-elascit-waist-plain-trench-coat', 'Turn Down Collar Elastic Waist Plain Trench Coat', '4bc1cd19-765f-4e8d-bd98-21de196da4e0', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 160, 144, '10', 0, '1 pc(s)', 0, '2020-09-22 18:53:02', '2020-09-22 18:53:02');
INSERT INTO `products` VALUES (71, '', 'cowl-neck-kangaroo-pocket', 'Cowl Neck Kangaroo Pocket Color Block Hoodie', '5eaf9fef-d2f9-4b15-9046-982709e02045', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 100, 85, '15', 0, '1 pc(s)', 0, '2020-09-22 18:53:02', '2020-09-22 18:53:02');
INSERT INTO `products` VALUES (72, '', 'hooded-zips-plain-long-sleeve-hoodies', 'Hooded Zips Plain Long Sleeve Hoodies', 'e291032e-367d-4e01-9efd-a7b3d79ace4f', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 120, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 18:53:03', '2020-09-22 18:53:03');
INSERT INTO `products` VALUES (73, '', 'lapel-zips-plain-long-sleeve-jackets', 'Lapel Zips Plain Long Sleeve Jackets', '1ac546ed-70a1-44bf-9a7c-2cdba9909d85', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 180, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 18:53:04', '2020-09-22 18:53:04');
INSERT INTO `products` VALUES (74, '', 'boxy-cardigan', 'Boxy Cardigan', '334502d6-e435-40fb-85c2-df9414d38b0a', 'Blue and navy cotton Decima zipped cardigan from ANGLOZINE featuring a classic collar, a front zip fastening, a chest pocket, long sleeves, contrasting panels and a slim fit. This item is unisex.', 0, 80, 72, '10', 0, '1 pc(s)', 0, '2020-09-22 18:53:05', '2020-09-22 18:53:05');
INSERT INTO `products` VALUES (75, '', 'stretch=cotton-utility-jacket-with-adjustable-wiast', 'Stretch Cotton Utility Jacket With Adjustable Waist', '5158b38a-a727-49ff-9c6b-0ab7b3a9af48', 'Blue and navy cotton Decima zipped cardigan from ANGLOZINE featuring a classic collar, a front zip fastening, a chest pocket, long sleeves, contrasting panels and a slim fit. This item is unisex.', 0, 95, 76, '20', 0, '1 pc(s)', 0, '2020-09-22 18:53:06', '2020-09-22 18:53:06');
INSERT INTO `products` VALUES (76, '', 'levis-western-denim-shirt', 'Levi\'S Western Denim Shirt', '87338e13-965c-4144-9108-879e51e5c7aa', 'Black cotton shearling denim jacket from Levi\'s featuring long sleeves, a front button fastening, two chest pockets, side slit pockets, a shearling lining and a logo tag.', 0, 55, 44, '20', 0, '1 pc(s)', 0, '2020-09-22 18:59:51', '2020-09-22 18:59:51');
INSERT INTO `products` VALUES (77, '', 'ivory-check-longline-tunic-shirt', 'Ivory Check Longline Tunic Shirt', '0c56ad0e-daad-49f6-9d4d-02abb791e127', 'Black cotton shearling denim jacket from Levi\'s featuring long sleeves, a front button fastening, two chest pockets, side slit pockets, a shearling lining and a logo tag.', 0, 40, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 18:59:51', '2020-09-22 18:59:51');
INSERT INTO `products` VALUES (78, '', 'vero-moda-coco-wide-pant', 'Vero Moda Coco Wide Pant', '6fd40de1-ad65-4c75-9478-624e0dcadd0c', 'Indigo blue cotton mid rise denim shorts from Levi\'s featuring a waistband with belt loops, a button and zip fly, an unfinished hem and a five pocket design.', 0, 45, 36, '20', 0, '1 pc(s)', 0, '2020-09-22 18:59:52', '2020-09-22 18:59:52');
INSERT INTO `products` VALUES (79, '', 'skechers-kallen-fleece-jog-pant', 'Skechers Kallen Fleece Jog Pant', '52230ad3-d34d-472d-828a-8d383078e6af', 'Brown Yogi High Rise 7/8 tights from Nimble Activewear featuring a high waist, a fitted silhouette, a lightunit construction and a cropped length.', 0, 30, 21, '30', 0, '1 pc(s)', 0, '2020-09-22 18:59:53', '2020-09-22 18:59:53');
INSERT INTO `products` VALUES (80, '', 'reebok-french-terry-jog-pants', 'Reebok French Terry Jog Pants', '1fd413f8-8c4f-443c-9337-a78ef89028ca', 'Brown Yogi High Rise 7/8 tights from Nimble Activewear featuring a high waist, a fitted silhouette, a lightunit construction and a cropped length.', 0, 35, 28, '20', 0, '1 pc(s)', 0, '2020-09-22 18:59:53', '2020-09-22 18:59:53');
INSERT INTO `products` VALUES (81, '', 'white-infinity-4-way-stretch-skinny-jeans-regular-length', 'White Infinity 4 Way Stretch Skinny Jeans Regular Length', '08554d13-cbef-483c-a312-196e93612bc3', 'Indigo blue cotton mid rise denim shorts from Levi\'s featuring a waistband with belt loops, a button and zip fly, an unfinished hem and a five pocket design.', 0, 60, 54, '10', 0, '1 pc(s)', 0, '2020-09-22 18:59:54', '2020-09-22 18:59:54');
INSERT INTO `products` VALUES (82, '', 'junarose-queen-skinny-jean', 'Junarose Queen Skinny Jean', '2df5f6fa-4e55-4df1-acf4-c468aaeaa10f', 'Indigo blue cotton mid rise denim shorts from Levi\'s featuring a waistband with belt loops, a button and zip fly, an unfinished hem and a five pocket design.', 0, 60, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 18:59:55', '2020-09-22 18:59:55');
INSERT INTO `products` VALUES (83, '', 'bourjois-little-round-pot-blusher', 'Bourjois Little Round Pot Blusher', '5372dd79-15c5-4d1f-8b27-89648cfdf68a', 'Bourjois Little Round Pot Blusher has been keeping women beautiful for generations. Made in an exclusive baked technology process, its incredibly transparent & light texture formula is easy to apply and blends impeccably.', 0, 10, 9, '10', 0, '1 pc(s)', 0, '2020-09-22 18:59:56', '2020-09-22 18:59:56');
INSERT INTO `products` VALUES (84, '', 'cyo-crush-on-blush-powder-blush', 'Cyo Crush On Blush Powder Blush', '8a5824b6-6b54-46e3-96a4-2500ded359e5', 'Bourjois Little Round Pot Blusher has been keeping women beautiful for generations. Made in an exclusive baked technology process, its incredibly transparent & light texture formula is easy to apply and blends impeccably.', 0, 12, 11, '8.33333333', 0, '1 pc(s)', 0, '2020-09-22 18:59:56', '2020-09-22 18:59:56');
INSERT INTO `products` VALUES (85, '', 'smashbox-the-cali-counter-palette', 'Smashbox The Cali Contour Palette', 'ee1a3dc3-6f8f-458a-bba7-72ac2fe6d5f1', 'An easy-to-use, six-well contour kit with pigment-packed, blendable highlighter, bronzer, and blush powders. Use these versatile shades to create an effortlessly lifted neutral look or a warm, just-cruised-down-the-coast glow. It features three matte and two pearlescent powders to shape, bronze, and highlight. It also includes one matte blush to add a youthful flush of subtle color to any look. It is formulated Without: - Parabens- Phthalates This laid-back makeup palette makes it easy to add warmth and dimension to your look. Customize your signature Cali glow using six neutrals, including two of Smashbox\'s bestselling contour shades. This product is cruelty-free and formulated without parabens, phthalates, fragrance.', 0, 40, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 18:59:57', '2020-09-22 18:59:57');
INSERT INTO `products` VALUES (86, '', 'dior-blockstage-contour-palette', 'Dior Backstage Contour Palette', '9502c475-f069-4ba2-9bd3-53f7fe16f5cf', 'An easy-to-use, six-well contour kit with pigment-packed, blendable highlighter, bronzer, and blush powders. Use these versatile shades to create an effortlessly lifted neutral look or a warm, just-cruised-down-the-coast glow. It features three matte and two pearlescent powders to shape, bronze, and highlight. It also includes one matte blush to add a youthful flush of subtle color to any look. It is formulated Without: - Parabens- Phthalates This laid-back makeup palette makes it easy to add warmth and dimension to your look. Customize your signature Cali glow using six neutrals, including two of Smashbox\'s bestselling contour shades. This product is cruelty-free and formulated without parabens, phthalates, fragrance.', 0, 50, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 18:59:58', '2020-09-22 18:59:58');
INSERT INTO `products` VALUES (87, '', 'spectrum-collection-perfect-blend-eye-set', 'Spectrum Collections Perfect Blend Eye Set', '814f7ef0-05fd-42df-bf87-9c79a6a3187b', 'Everything you need to create beautiful eye make-up looks. From dark and dramatic, blown out colour, pastel washes and contoured creations, this is the ultimate eye blending set. The larger shaders are ideal to apply a base colour, then build the detail with the smaller shaders and blenders.', 0, 35, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 18:59:58', '2020-09-22 18:59:58');
INSERT INTO `products` VALUES (88, '', 'max-factor-wild-eyeshadow-pot', 'Max Factor Wild Eyeshadow Pot', '1a8c2c5a-bd47-4687-b99c-76359fab2654', 'Pigment packed formula for bold colour looks! Max Factor Wild Shadow Eye Shadow Pots bring a highly pigmented shadow to sweep across your lids, providing a fierce shot of intense colour. The formula is micro-fine and can be used wet for a more intense look, is easily blendable and buildable colour for endless versatility.', 0, 15, 12, '20', 0, '1 pc(s)', 0, '2020-09-22 18:59:59', '2020-09-22 18:59:59');
INSERT INTO `products` VALUES (89, '', 'fenty-beauty-moroccan-spice-eyeshadow-palette', 'Fenty Beauty Moroccan Spice Eyeshadow Palette', 'c5ef8ea8-0229-4911-9201-ec287eb49ba5', 'An eyeshadow palette of 16 longwearing Moroccan-inspired shades ranging from matte to shimmer finishes—perfect for spicing up your look in limitless ways.', 0, 55, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:00:00', '2020-09-22 19:00:00');
INSERT INTO `products` VALUES (90, '', 'clarins-everlasting-compact-foundation', 'Clarins Everlasting Compact Foundation', '777893bb-8fbd-4216-baf9-2aa4a5b505c1', 'A 15-hour matte finish your skin will feel good about! Clarins\' long-wearing compact foundation evens out skin tone and minimizes the look of imperfections in seconds, delivering a shine-free, matte finish and hours of comfortable wear. Ultra-fine texture resists heat, humidity and perspiration for flawless coverage that lasts throughout the day.', 0, 55, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:00:00', '2020-09-22 19:00:00');
INSERT INTO `products` VALUES (91, '', 'stila-magnificent-metals-glitter-&-glow-liquid-eye-shadow', 'Stila Magnificent Metals Glitter Glow Liquid Eye Shadow', '77d8f49c-428d-483f-8a5e-1d36c667f445', 'This brilliantly long-wearing sparkle eye shadow combines the perfect mix of pearl and glitter to lavish eyes with incredible luster and shimmer.  With its uniquely lightunit, water-infused texture, Glitter & Glow glides on effortlessly, then dries down smoothly, locking in maximum sparkle with minimal fallout, for eyes with a real wow! factor.', 0, 25, 20, '20', 0, '1 pc(s)', 0, '2020-09-22 19:00:01', '2020-09-22 19:00:01');
INSERT INTO `products` VALUES (92, '', 'skinnydip-party-glitter-mirror', 'Skinnydip Party Glitter Mirror', 'a85b2c08-67e0-466b-9564-0a43cb7d0b96', 'No more bad days with our Party Glitter Mirror. Keeping your make up in check is easy as can be with this cute little addition! Plus, it\'s the perfect size to throw in your handbag!', 0, 25, 20, '20', 0, '1 pc(s)', 0, '2020-09-22 19:00:02', '2020-09-22 19:00:02');
INSERT INTO `products` VALUES (93, '', 'shockwaves-sleek-n-shine-hairspray', 'Shockwaves Sleek N Shine Hairspray', 'df8c0713-8aca-4e89-b809-fe56077e8815', 'Shockwaves Sleek n Shine Hairspray 250ml for a hairstyle that you want to look great, just apply Sleek and Shine Hairspray to damp or dry hair and allow it to dry naturally or blow dry using a diffusor. Great for all types and styles of hair, this product provides sleek looks with lasting shape, definition and shine, helped by an anti-freeze effect. It protects your hair from the humidity and gives it that beautiful, sleek  feel that lasts for up to 24 hours.', 0, 25, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:00:03', '2020-09-22 19:00:03');
INSERT INTO `products` VALUES (94, '', 'ex1-invisiwear-liquid-foundation', 'Ex1 Invisiwear Liquid Foundation', '34d57e0f-1e47-417e-bced-153607c0cb86', 'A lightunit and luminous liquid base formulated with light diffusers to unify skin tone and effortlessly cover imperfections. Specially designed ‘true colour’ pigments work perfectly with your skins’ natural tones in an ultra-blendable formula.', 0, 20, 18, '10', 0, '1 pc(s)', 0, '2020-09-22 19:00:03', '2020-09-22 19:00:03');
INSERT INTO `products` VALUES (95, '', 'barry-m-matte-me-up-lip-kit-pose', 'Barry M Matte Me Up Lip Kit Pose', '3b850447-fb27-400b-a69a-f33255ab2d3d', 'Reach pout perfection with the Matte Me Up Liquid Lip Paint and Liner. Its non-drying, ultra-long wearing formula is easy to apply and will leave lips with a gorgeously bold finish. Each kit comes with a matte liquid Lip Paint and Lip Liner. ', 0, 12, 6, '50', 0, '1 pc(s)', 0, '2020-09-22 19:00:04', '2020-09-22 19:00:04');
INSERT INTO `products` VALUES (96, '', 'retro-matte-lipstick', 'Retro Matte Lipstick', '87c6f18c-ecbc-4c66-9bff-2e63ad55a556', 'M·A·C Lipstick – the iconic product that made M·A·C famous. This long-wearing formula features an intense colour payoff and a completely matte finish.', 0, 20, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:00:04', '2020-09-22 19:00:04');
INSERT INTO `products` VALUES (97, '', 'liptensity-lipstick', 'Liptensity Lipstick', '5b8a5a95-d7e7-45a6-bca5-c51bf28df484', 'M·A·C Lipstick – the iconic product that made M·A·C famous. This long-wearing formula features an intense colour payoff and a completely matte finish.', 0, 20, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:00:05', '2020-09-22 19:00:05');
INSERT INTO `products` VALUES (98, '', 'bling-thing-liquid-lipcolour', 'Bling Thing Liquid Lipcolour', '1ec3adcd-16b8-45d4-9486-31861634647a', 'M·A·C Lipstick – the iconic product that made M·A·C famous. This long-wearing formula features an intense colour payoff and a completely matte finish.', 0, 25, 20, '20', 0, '1 pc(s)', 0, '2020-09-22 19:00:06', '2020-09-22 19:00:06');
INSERT INTO `products` VALUES (99, '', 'viva-glam-lipstick', 'Viva Glam Lipstick', '6d61097e-a03c-4253-a291-7d49f78d2eeb', 'M·A·C Lipstick – the iconic product that made M·A·C famous. This long-wearing formula features an intense colour payoff and a completely matte finish.', 0, 25, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:00:07', '2020-09-22 19:00:07');
INSERT INTO `products` VALUES (100, '', 'too-faced-born-this-way-loose-setting-powder', 'Too Faced Born This Way Loose Setting Powder', '9d44382f-a933-4006-9a26-786d4292b11d', 'Our silky, lightunit powder sets makeup for longer wear while providing a veil of perfecting luminosity and a finish so natural they’ll think you were Born This Way.', 0, 20, 16, '20', 0, '1 pc(s)', 0, '2020-09-22 19:00:07', '2020-09-22 19:00:07');
INSERT INTO `products` VALUES (101, '', 'nivea-makeup-remover-double-effect', 'Nivea Make Up Remover Double Effect', 'ce06fa37-5888-4184-a541-b3247009adec', 'NIVEA Daily essentials Double Effective Eye Make-up Remover with a two-phase extra strength formula: The oil phase effectively removes even waterproof mascara and eye-make-up. Specially formulated and tested for the sensitive eye area. The aqueous phase protects and cares for the eye lashes with it\'s caring formula, without leaving an oily residue.', 0, 5, 4, '20', 0, '1 pc(s)', 0, '2020-09-22 19:00:08', '2020-09-22 19:00:08');
INSERT INTO `products` VALUES (102, '', 'lancome-definicilis-mascara', 'Lancome Definicils Mascara', 'de169b8f-482c-4044-8acb-85e6ce597080', 'For lavishly long, perfectly defined lashes, this iconic award-winning mascara provides the ultimate in separation and has been the number 1 mascara for 16+ years! Carefully selected polymers coat each lash from root to tip, to help lengthen and outline each lash for unmatched definition. This best-selling mascara\'s unique brush applicator has specially grooved bristles that hold the perfect amount of product for gradual, even application every time.', 0, 18, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:00:09', '2020-09-22 19:00:09');
INSERT INTO `products` VALUES (103, '', 'private-doctor-define-minus-serum', 'Private Doctor Define Minus Serum', '97261563-d3d9-464b-9858-936478de3270', 'This formula is infused with ID.SCULPT Technology—a blend of Micro-Tingling Spicules and a patented Sodium Deoxycholate Complex—that work together to help define and firm the appearance of skin over time. Experience the exclusive skin secrets from Dr. Sanghoon Park, founder of Korea\'s premier dermatology clinic ID ', 0, 5, 4, '20', 0, '1 pc(s)', 0, '2020-09-22 19:00:10', '2020-09-22 19:00:10');
INSERT INTO `products` VALUES (104, '', 'belmont-custard-cream', 'Belmont Custard Cream', '847d9ef4-2ac0-4129-969c-015a233c1ea0', 'A biscuit is a flour-based baked food product. This article covers the type of biscuit found in Africa, Asia, and Europe, which is typically hard, flat, and unleavened. ', 0, 5, 5, '0', 0, '.50 lb', 0, '2020-09-22 19:00:10', '2020-09-22 19:00:10');
INSERT INTO `products` VALUES (105, '', 'crawford-digestives', 'Crawford Digestives', '9b0f8a2e-ad30-4dfd-87ed-0308067f7029', 'A biscuit is a flour-based baked food product. This article covers the type of biscuit found in Africa, Asia, and Europe, which is typically hard, flat, and unleavened. ', 0, 8, 6, '25', 0, '.80 lb', 0, '2020-09-22 19:00:11', '2020-09-22 19:00:11');
INSERT INTO `products` VALUES (106, '', 'crawford-shortie', 'Crawford Shortie', '3f7e5c04-586d-471f-80c1-80cfc73c95c4', 'A biscuit is a flour-based baked food product. This article covers the type of biscuit found in Africa, Asia, and Europe, which is typically hard, flat, and unleavened. ', 0, 5, 0, '100', 0, '.60 lb', 0, '2020-09-22 19:00:11', '2020-09-22 19:00:11');
INSERT INTO `products` VALUES (107, '', 'hill-mini-pack-mix', 'Hill Mini Pack Mix', 'c5a4637c-05f6-475e-bc6c-c09ba1c091ad', 'A biscuit is a flour-based baked food product. This article covers the type of biscuit found in Africa, Asia, and Europe, which is typically hard, flat, and unleavened. ', 0, 10, 10, '0', 0, '1 pc(s)', 0, '2020-09-22 19:00:12', '2020-09-22 19:00:12');
INSERT INTO `products` VALUES (108, '', 'jammie-dodgers-raspberry', 'Jammie Dodgers Raspberry', '948ad557-c9eb-440c-8197-2d38b9399036', 'A biscuit is a flour-based baked food product. This article covers the type of biscuit found in Africa, Asia, and Europe, which is typically hard, flat, and unleavened. ', 0, 8, 7, '12.5', 0, ' .6 lb', 0, '2020-09-22 19:00:13', '2020-09-22 19:00:13');
INSERT INTO `products` VALUES (110, '', 'juli-cheese-crackers', 'Juli S Cheese Crackers', 'affdc707-dedf-4327-af10-a57132a107bc', 'A biscuit is a flour-based baked food product. This article covers the type of biscuit found in Africa, Asia, and Europe, which is typically hard, flat, and unleavened. ', 0, 8, 0, '100', 0, ' .6 lb', 0, '2020-09-22 19:00:14', '2020-09-22 19:00:14');
INSERT INTO `products` VALUES (111, '', 'khong-guan-orange-cream', 'Khong Guan Orange Cream', '11b3af0e-c774-445d-9685-ec8494971898', 'A biscuit is a flour-based baked food product. This article covers the type of biscuit found in Africa, Asia, and Europe, which is typically hard, flat, and unleavened. ', 0, 10, 0, '100', 0, ' 0.5 lb', 0, '2020-09-22 19:00:15', '2020-09-22 19:00:15');
INSERT INTO `products` VALUES (112, '', 'khong-guan-premium-marie', 'Khong Guan Premium Marie', '7b08d9f7-6560-4f07-9e88-e13d07b4c3b5', 'A biscuit is a flour-based baked food product. This article covers the type of biscuit found in Africa, Asia, and Europe, which is typically hard, flat, and unleavened. ', 0, 9, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:00:15', '2020-09-22 19:00:15');
INSERT INTO `products` VALUES (113, '', 'lotus-biscoff', 'Lotus Biscoff', 'a504b0e7-f1c2-4532-9963-9d14891ad272', 'A biscuit is a flour-based baked food product. This article covers the type of biscuit found in Africa, Asia, and Europe, which is typically hard, flat, and unleavened. ', 0, 10, 0, '100', 0, ' 0.5 lb', 0, '2020-09-22 19:00:16', '2020-09-22 19:00:16');
INSERT INTO `products` VALUES (114, '', 'aritiach-filipino', 'Filipinos', '2d17cc72-3066-4cb2-b90a-be7612f96fe9', 'Chocolate is a usually sweet, brown food preparation of roasted and ground cacao seeds that is made in the form of a liquid, paste, or in a block, or used as a flavoring ingredient in other foods.', 0, 4, 0, '100', 0, ' 0.5 lb', 0, '2020-09-22 19:00:17', '2020-09-22 19:00:17');
INSERT INTO `products` VALUES (115, '', 'cadbury_dairy_milk_crispello', 'Dairy Milk Crispello', '4abb6dc8-3616-4521-8fdd-7f43fda4004f', 'Chocolate is a usually sweet, brown food preparation of roasted and ground cacao seeds that is made in the form of a liquid, paste, or in a block, or used as a flavoring ingredient in other foods. ', 0, 3, 0, '100', 0, ' 0.2 lb', 0, '2020-09-22 19:00:17', '2020-09-22 19:00:17');
INSERT INTO `products` VALUES (116, '', 'cadbury_zip', 'Cadbury Zip', 'ee26e9e2-01cf-4edf-aee8-3bda54645fab', 'Chocolate is a usually sweet, brown food preparation of roasted and ground cacao seeds that is made in the form of a liquid, paste, or in a block, or used as a flavoring ingredient in other foods. ', 0, 3, 3, '0', 0, ' 0.1 lb', 0, '2020-09-22 19:00:18', '2020-09-22 19:00:18');
INSERT INTO `products` VALUES (117, '', 'cadbury-dairy-milk-reclose', 'Dairy Milk Reclose', 'ba0abcc4-af51-40ff-85a8-ef53b574d4e0', 'Chocolate is a usually sweet, brown food preparation of roasted and ground cacao seeds that is made in the form of a liquid, paste, or in a block, or used as a flavoring ingredient in other foods.', 0, 4, 0, '100', 0, ' 0.2 lb', 0, '2020-09-22 19:00:19', '2020-09-22 19:00:19');
INSERT INTO `products` VALUES (118, '', 'cloetta_chocowoffle', 'Cloetta Chocowoffle Crispy', '2c2e65fa-8fb6-4b6d-8771-54fe0889d7a4', 'Chocolate is a usually sweet, brown food preparation of roasted and ground cacao seeds that is made in the form of a liquid, paste, or in a block, or used as a flavoring ingredient in other foods. ', 0, 3, 0, '100', 0, ' 0.2 lb', 0, '2020-09-22 19:00:20', '2020-09-22 19:00:20');
INSERT INTO `products` VALUES (119, '', 'cloetta_sprinkle', 'Cloetta Sprinkle', 'e3d714b9-c167-4d81-9961-ece96e581e45', 'Chocolate is a usually sweet, brown food preparation of roasted and ground cacao seeds that is made in the form of a liquid, paste, or in a block, or used as a flavoring ingredient in other foods. ', 0, 3, 3, '0', 0, ' 0.1 lb', 0, '2020-09-22 19:00:20', '2020-09-22 19:00:20');
INSERT INTO `products` VALUES (120, '', 'hershey_symphony', 'Hershey Symphony', '5f58e558-813c-403d-8704-e711f558bcdd', 'Chocolate is a usually sweet, brown food preparation of roasted and ground cacao seeds that is made in the form of a liquid, paste, or in a block, or used as a flavoring ingredient in other foods. ', 0, 4, 3, '25', 0, ' 0.1 lb', 0, '2020-09-22 19:00:21', '2020-09-22 19:00:21');
INSERT INTO `products` VALUES (121, '', 'hersheys_kisses', 'Hersheys Kisses', '365f5331-cd70-4d58-911c-9e191b5b139b', 'Chocolate is a usually sweet, brown food preparation of roasted and ground cacao seeds that is made in the form of a liquid, paste, or in a block, or used as a flavoring ingredient in other foods. ', 0, 5, 0, '100', 0, '0.1 lb', 0, '2020-09-22 19:00:22', '2020-09-22 19:00:22');
INSERT INTO `products` VALUES (122, '', 'm&m_funsize', 'M M Funsize', '2a2ed629-c319-47b3-a82c-028d77209d1c', 'Chocolate is a usually sweet, brown food preparation of roasted and ground cacao seeds that is made in the form of a liquid, paste, or in a block, or used as a flavoring ingredient in other foods. ', 0, 2, 0, '100', 0, ' 0.1 lb', 0, '2020-09-22 19:00:22', '2020-09-22 19:00:22');
INSERT INTO `products` VALUES (123, '', 'nestle_butterfinger', 'Nestle Butterfinger', '2cf234bf-c0ec-4f8e-b27f-ddc9e3332f3b', 'Chocolate is a usually sweet, brown food preparation of roasted and ground cacao seeds that is made in the form of a liquid, paste, or in a block, or used as a flavoring ingredient in other foods. ', 0, 3, 0, '100', 0, ' 0.1 lb', 0, '2020-09-22 19:00:23', '2020-09-22 19:00:23');
INSERT INTO `products` VALUES (124, '', 'nestle_kitkat', 'Nestle Kitkat', '3e2c90e2-af2c-4aa8-aecc-2eb5d941469e', 'Chocolate is a usually sweet, brown food preparation of roasted and ground cacao seeds that is made in the form of a liquid, paste, or in a block, or used as a flavoring ingredient in other foods. ', 0, 3, 0, '100', 0, ' 0.1 lb', 0, '2020-09-22 19:00:24', '2020-09-22 19:00:24');
INSERT INTO `products` VALUES (125, '', 'snikers_slice', 'Snikers Slice', 'c8fbfa6f-7879-4aa4-9080-a87dfd640aee', 'Chocolate is a usually sweet, brown food preparation of roasted and ground cacao seeds that is made in the form of a liquid, paste, or in a block, or used as a flavoring ingredient in other foods. ', 0, 3, 2, '33.3333333', 0, ' 0.1 lb', 0, '2020-09-22 19:00:25', '2020-09-22 19:00:25');
INSERT INTO `products` VALUES (126, '', 'snikers_snacksize', 'Snikers Snack Size', 'd74ab7af-b0fd-439d-a855-bfd292f0068b', 'Chocolate is a usually sweet, brown food preparation of roasted and ground cacao seeds that is made in the form of a liquid, paste, or in a block, or used as a flavoring ingredient in other foods. ', 0, 3, 2, '33.3333333', 0, ' 0.1 lb', 0, '2020-09-22 19:00:25', '2020-09-22 19:00:25');
INSERT INTO `products` VALUES (127, '', 'cottage_bbq', 'Wise Cottage Fires Bbq', 'c083952a-bda6-4fd8-8857-d8b657315af3', 'Potato chips (often just chips), or crisps, are thin slices of potato that have been deep fried or baked until crunchy. They are commonly served as a snack, side dish, or appetizer. The basic chips are cooked and salted; additional varieties are manufactured using various flavorings and ingredients including herbs, spices, cheeses, other natural flavors, artificial flavors, and additives.', 0, 1, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:00:26', '2020-09-22 19:00:26');
INSERT INTO `products` VALUES (128, '', 'crisps-puzzle', 'Puzzles Crips Ready Salted', '32752f76-b2a4-4e51-8310-53b0ffe5e6f8', 'Potato chips (often just chips), or crisps, are thin slices of potato that have been deep fried or baked until crunchy. They are commonly served as a snack, side dish, or appetizer. The basic chips are cooked and salted; additional varieties are manufactured using various flavorings and ingredients including herbs, spices, cheeses, other natural flavors, artificial flavors, and additives.', 0, 1, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:00:27', '2020-09-22 19:00:27');
INSERT INTO `products` VALUES (129, '', 'doritos', 'Doritos Tangy Cheese', '7e1ab5eb-3860-458e-9c4c-89f16b6089ad', 'Potato chips (often just chips), or crisps, are thin slices of potato that have been deep fried or baked until crunchy. They are commonly served as a snack, side dish, or appetizer. The basic chips are cooked and salted; additional varieties are manufactured using various flavorings and ingredients including herbs, spices, cheeses, other natural flavors, artificial flavors, and additives.', 0, 1, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:00:28', '2020-09-22 19:00:28');
INSERT INTO `products` VALUES (130, '', 'lays_baked', 'Lays Baked', '159bb15f-bc29-4b70-b7f9-97cd65539364', 'Potato chips (often just chips), or crisps, are thin slices of potato that have been deep fried or baked until crunchy. They are commonly served as a snack, side dish, or appetizer. The basic chips are cooked and salted; additional varieties are manufactured using various flavorings and ingredients including herbs, spices, cheeses, other natural flavors, artificial flavors, and additives.', 0, 2, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:00:28', '2020-09-22 19:00:28');
INSERT INTO `products` VALUES (131, '', 'lays_sea_salted', 'Lays Sea Salted', 'ba651da4-7886-4d2a-9b9e-6c6d06043daa', 'Potato chips (often just chips), or crisps, are thin slices of potato that have been deep fried or baked until crunchy. They are commonly served as a snack, side dish, or appetizer. The basic chips are cooked and salted; additional varieties are manufactured using various flavorings and ingredients including herbs, spices, cheeses, other natural flavors, artificial flavors, and additives.', 0, 1, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:00:29', '2020-09-22 19:00:29');
INSERT INTO `products` VALUES (132, '', 'lays-kettle-cooked', 'Lays Kettle Cooked', '990e3fee-ee3f-4fd5-8830-70737293862d', 'Potato chips (often just chips), or crisps, are thin slices of potato that have been deep fried or baked until crunchy. They are commonly served as a snack, side dish, or appetizer. The basic chips are cooked and salted; additional varieties are manufactured using various flavorings and ingredients including herbs, spices, cheeses, other natural flavors, artificial flavors, and additives.', 0, 2, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:00:30', '2020-09-22 19:00:30');
INSERT INTO `products` VALUES (133, '', 'lays-sour-cream', 'Lays Sour Cream', 'c0eec687-e8d3-4da1-ad74-748c22ee8705', 'Potato chips (often just chips), or crisps, are thin slices of potato that have been deep fried or baked until crunchy. They are commonly served as a snack, side dish, or appetizer. The basic chips are cooked and salted; additional varieties are manufactured using various flavorings and ingredients including herbs, spices, cheeses, other natural flavors, artificial flavors, and additives.', 0, 1, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:00:31', '2020-09-22 19:00:31');
INSERT INTO `products` VALUES (134, '', 'nims_apple_fruit', 'Nims Apple Crisp', '32aa12bb-5930-47ef-b9ad-1c19a1497f05', 'Potato chips (often just chips), or crisps, are thin slices of potato that have been deep fried or baked until crunchy. They are commonly served as a snack, side dish, or appetizer. The basic chips are cooked and salted; additional varieties are manufactured using various flavorings and ingredients including herbs, spices, cheeses, other natural flavors, artificial flavors, and additives.', 0, 1, 85, '-8400', 0, ' 1 pc(s)', 0, '2020-09-22 19:00:31', '2020-09-22 19:00:31');
INSERT INTO `products` VALUES (135, '', 'Ready-Salted-Crisps', 'Snack Rite Ready Saled', 'd0fd56e0-4113-4504-beed-ba3763c2ffd1', 'Potato chips (often just chips), or crisps, are thin slices of potato that have been deep fried or baked until crunchy. They are commonly served as a snack, side dish, or appetizer. The basic chips are cooked and salted; additional varieties are manufactured using various flavorings and ingredients including herbs, spices, cheeses, other natural flavors, artificial flavors, and additives.', 0, 5, 4, '20', 0, ' 1 pc(s)', 0, '2020-09-22 19:00:32', '2020-09-22 19:00:32');
INSERT INTO `products` VALUES (136, '', 'Roysters_6pk', 'Roysters Bubbled Crips', '8542b021-dc57-42c8-bc50-362ac984ba07', 'Potato chips (often just chips), or crisps, are thin slices of potato that have been deep fried or baked until crunchy. They are commonly served as a snack, side dish, or appetizer. The basic chips are cooked and salted; additional varieties are manufactured using various flavorings and ingredients including herbs, spices, cheeses, other natural flavors, artificial flavors, and additives.', 0, 5, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:00:33', '2020-09-22 19:00:33');
INSERT INTO `products` VALUES (137, '', 'snackrite_bags', 'Snackrite Cheese Onion', '1374908f-2bc9-4f09-bff2-06decb604761', 'Potato chips (often just chips), or crisps, are thin slices of potato that have been deep fried or baked until crunchy. They are commonly served as a snack, side dish, or appetizer. The basic chips are cooked and salted; additional varieties are manufactured using various flavorings and ingredients including herbs, spices, cheeses, other natural flavors, artificial flavors, and additives.', 0, 5, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:00:34', '2020-09-22 19:00:34');
INSERT INTO `products` VALUES (138, '', 'tayto_cheese_onion', 'Tayto Cheese Onion', '26b38dcf-fd93-4597-98a2-f5054fa0da9b', 'Potato chips (often just chips), or crisps, are thin slices of potato that have been deep fried or baked until crunchy. They are commonly served as a snack, side dish, or appetizer. The basic chips are cooked and salted; additional varieties are manufactured using various flavorings and ingredients including herbs, spices, cheeses, other natural flavors, artificial flavors, and additives.', 0, 1, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:00:34', '2020-09-22 19:00:34');
INSERT INTO `products` VALUES (139, '', 'tayto_pickled_onion', 'Tayto Pickled Onion', '3d141a92-5029-4f0a-bdc7-bb7d25f2bb24', 'Potato chips (often just chips), or crisps, are thin slices of potato that have been deep fried or baked until crunchy. They are commonly served as a snack, side dish, or appetizer. The basic chips are cooked and salted; additional varieties are manufactured using various flavorings and ingredients including herbs, spices, cheeses, other natural flavors, artificial flavors, and additives.', 0, 1, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:00:35', '2020-09-22 19:00:35');
INSERT INTO `products` VALUES (140, '', 'walkers_cheese_onion', 'Walkers Cheese Onion', 'c2cc898a-05fd-404e-8186-7dbc8ad16053', 'Potato chips (often just chips), or crisps, are thin slices of potato that have been deep fried or baked until crunchy. They are commonly served as a snack, side dish, or appetizer. The basic chips are cooked and salted; additional varieties are manufactured using various flavorings and ingredients including herbs, spices, cheeses, other natural flavors, artificial flavors, and additives.', 0, 1, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:00:36', '2020-09-22 19:00:36');
INSERT INTO `products` VALUES (141, '', 'cintan_chicken', 'Cintan Chicken Noodles', '4c2167dc-5e33-4752-9586-09fb96e079cc', 'Noodles are a type of food made from unleavened dough which is rolled flat and cut, or extruded, into long strips or strings. Noodles can be refrigerated for short-term storage or dried and stored for future use.', 0, 5, 5, '0', 0, ' .5 lb', 0, '2020-09-22 19:00:36', '2020-09-22 19:00:36');
INSERT INTO `products` VALUES (142, '', 'indomie_special_chicken', 'Indomie Chicken Noodles', '239eadac-4710-4650-af85-f7c465a527bf', 'Noodles are a type of food made from unleavened dough which is rolled flat and cut, or extruded, into long strips or strings. Noodles can be refrigerated for short-term storage or dried and stored for future use.', 0, 5, 0, '100', 0, ' .5 lb', 0, '2020-09-22 19:00:37', '2020-09-22 19:00:37');
INSERT INTO `products` VALUES (143, '', 'kame_stir_fry', 'Kame H Okkein Stir Fry Noodles', 'dc885348-69b7-4ad0-a522-7ca4e294a8bd', 'Noodles are a type of food made from unleavened dough which is rolled flat and cut, or extruded, into long strips or strings. Noodles can be refrigerated for short-term storage or dried and stored for future use.', 0, 4, 0, '100', 0, ' .5 lb', 0, '2020-09-22 19:00:38', '2020-09-22 19:00:38');
INSERT INTO `products` VALUES (144, '', 'koka_curry', 'Koka Curry Noodles', '89b15cd3-4a81-4540-b0af-72f1b20c554d', 'Noodles are a type of food made from unleavened dough which is rolled flat and cut, or extruded, into long strips or strings. Noodles can be refrigerated for short-term storage or dried and stored for future use..', 0, 6, 0, '100', 0, ' .5 lb', 0, '2020-09-22 19:00:39', '2020-09-22 19:00:39');
INSERT INTO `products` VALUES (145, '', 'maggi_bbq', 'Maggi Bbq Noodles', '74019578-16d4-4771-aead-32cecc66761a', 'Noodles are a type of food made from unleavened dough which is rolled flat and cut, or extruded, into long strips or strings. Noodles can be refrigerated for short-term storage or dried and stored for future use..', 0, 3, 0, '100', 0, ' .5 lb', 0, '2020-09-22 19:00:39', '2020-09-22 19:00:39');
INSERT INTO `products` VALUES (146, '', 'maggi_beef', 'Maggi Beef Noodles', 'fb26b1d5-6eed-41a1-a56e-49e8b8d558a3', 'Noodles are a type of food made from unleavened dough which is rolled flat and cut, or extruded, into long strips or strings. Noodles can be refrigerated for short-term storage or dried and stored for future use..', 0, 3, 0, '100', 0, ' .5 lb', 0, '2020-09-22 19:00:40', '2020-09-22 19:00:40');
INSERT INTO `products` VALUES (147, '', 'maggi_biriyani', 'Maggi Biriyani Noodles', '0835f737-b9da-49b8-bfe4-876631af492f', 'Noodles are a type of food made from unleavened dough which is rolled flat and cut, or extruded, into long strips or strings. Noodles can be refrigerated for short-term storage or dried and stored for future use..', 0, 3, 0, '100', 0, ' ..5 lb', 0, '2020-09-22 19:00:41', '2020-09-22 19:00:41');
INSERT INTO `products` VALUES (148, '', 'maggi_chicken', 'Maggi Chicken Noodles', 'fa0f43bc-6276-4314-b05b-b1c637cff747', 'Noodles are a type of food made from unleavened dough which is rolled flat and cut, or extruded, into long strips or strings. Noodles can be refrigerated for short-term storage or dried and stored for future use..', 0, 3, 0, '100', 0, ' .20 lb', 0, '2020-09-22 19:00:41', '2020-09-22 19:00:41');
INSERT INTO `products` VALUES (150, '', 'badia_pinenuts', 'Badia Pine Nuts', 'd02bef29-e7a7-4dd0-ba8f-d8eb041f55c4', 'A nut is a fruit composed of an inedible hard shell and a seed, which is generally edible. In general usage, a wide variety of dried seeds are called nuts, but in a botanical context nut implies that the shell does not open to release the seed.', 0, 10, 0, '100', 0, ' .30 lb', 0, '2020-09-22 19:00:42', '2020-09-22 19:00:42');
INSERT INTO `products` VALUES (151, '', 'cacao_cashew', 'Cacao Cashew Nuts', '47379986-a08f-48b3-ab51-b74a28c2c0a2', 'A nut is a fruit composed of an inedible hard shell and a seed, which is generally edible. In general usage, a wide variety of dried seeds are called nuts, but in a botanical context nut implies that the shell does not open to release the seed.', 0, 8, 0, '100', 0, ' .20 lb', 0, '2020-09-22 19:00:43', '2020-09-22 19:00:43');
INSERT INTO `products` VALUES (152, '', 'fisher_peanut', 'Fisher Peanuts Ready Salted', '69bc4d9a-1012-43c9-872c-cd4d265b5f97', 'A nut is a fruit composed of an inedible hard shell and a seed, which is generally edible. In general usage, a wide variety of dried seeds are called nuts, but in a botanical context nut implies that the shell does not open to release the seed.', 0, 15, 12, '20', 0, ' 2 lb', 0, '2020-09-22 19:00:43', '2020-09-22 19:00:43');
INSERT INTO `products` VALUES (153, '', 'Fruits-And-Nuts-Full-Meal-Bottle-Front', 'Simply Natural Fruits And Nuts', '63a845fb-a9bd-4b17-b6ab-46d704f86d48', 'A nut is a fruit composed of an inedible hard shell and a seed, which is generally edible. In general usage, a wide variety of dried seeds are called nuts, but in a botanical context nut implies that the shell does not open to release the seed.', 0, 15, 12, '20', 0, ' .5 lb', 0, '2020-09-22 19:00:44', '2020-09-22 19:00:44');
INSERT INTO `products` VALUES (154, '', 'Fruits-And-Nuts-Full-Meal-Packet', 'Simply Natural Fruits And Nuts Meal Pack', '287f394c-7a6c-4880-b121-2af37105b1c0', 'A nut is a fruit composed of an inedible hard shell and a seed, which is generally edible. In general usage, a wide variety of dried seeds are called nuts, but in a botanical context nut implies that the shell does not open to release the seed.', 0, 7, 0, '100', 0, ' .5 lb', 0, '2020-09-22 19:00:45', '2020-09-22 19:00:45');
INSERT INTO `products` VALUES (155, '', 'ivory_cashewnut', 'Ivory Cashew Nuts', '000c6a67-4281-48f2-a218-b336562019ad', 'A nut is a fruit composed of an inedible hard shell and a seed, which is generally edible. In general usage, a wide variety of dried seeds are called nuts, but in a botanical context nut implies that the shell does not open to release the seed.', 0, 7, 0, '100', 0, ' .5 lb', 0, '2020-09-22 19:00:46', '2020-09-22 19:00:46');
INSERT INTO `products` VALUES (156, '', 'jaybee_whole_cashewnut', 'Jaybees Whole Cashew Nuts', '03c6aa99-ca2f-4eb1-82e4-9d2f30fcd2c5', 'A nut is a fruit composed of an inedible hard shell and a seed, which is generally edible. In general usage, a wide variety of dried seeds are called nuts, but in a botanical context nut implies that the shell does not open to release the seed.', 0, 7, 0, '100', 0, ' .5 lb', 0, '2020-09-22 19:00:46', '2020-09-22 19:00:46');
INSERT INTO `products` VALUES (157, '', 'kirkland_mixed_nuts', 'Kirkland Mixed Nuts', 'fb4ba93d-a9e8-483b-b692-21bc7e9f4fa3', 'A nut is a fruit composed of an inedible hard shell and a seed, which is generally edible. In general usage, a wide variety of dried seeds are called nuts, but in a botanical context nut implies that the shell does not open to release the seed.', 0, 20, 17, '15', 0, ' 1 pc(s)', 0, '2020-09-22 19:00:47', '2020-09-22 19:00:47');
INSERT INTO `products` VALUES (158, '', 'natural_cashewnut', 'Natural Nuts', '9aa7902c-68e8-4925-9393-1c40ec6490ac', 'A nut is a fruit composed of an inedible hard shell and a seed, which is generally edible. In general usage, a wide variety of dried seeds are called nuts, but in a botanical context nut implies that the shell does not open to release the seed.', 0, 10, 8, '20', 0, ' 5 lb', 0, '2020-09-22 19:00:48', '2020-09-22 19:00:48');
INSERT INTO `products` VALUES (159, '', 'planter_cashewnut', 'Planter Cashewnut', '85e8020a-a71e-4dea-91d8-991c704ae65f', 'A nut is a fruit composed of an inedible hard shell and a seed, which is generally edible. In general usage, a wide variety of dried seeds are called nuts, but in a botanical context nut implies that the shell does not open to release the seed.', 0, 10, 0, '100', 0, ' 5 lb', 0, '2020-09-22 19:00:49', '2020-09-22 19:00:49');
INSERT INTO `products` VALUES (160, '', 'planter_dryroasted', 'Planter Dry Roasted', '7894d5ff-9b12-48e5-bba5-6ae518beedba', 'A nut is a fruit composed of an inedible hard shell and a seed, which is generally edible. In general usage, a wide variety of dried seeds are called nuts, but in a botanical context nut implies that the shell does not open to release the seed.', 0, 10, 8, '20', 0, ' 5 lb', 0, '2020-09-22 19:00:49', '2020-09-22 19:00:49');
INSERT INTO `products` VALUES (161, '', 'planters_honey_roasted', 'Planter Honey Roasted', 'da4ec6ad-1111-4b0d-9ba4-a2abfb0704dc', 'A nut is a fruit composed of an inedible hard shell and a seed, which is generally edible. In general usage, a wide variety of dried seeds are called nuts, but in a botanical context nut implies that the shell does not open to release the seed.', 0, 10, 0, '100', 0, ' 5 lb', 0, '2020-09-22 19:00:50', '2020-09-22 19:00:50');
INSERT INTO `products` VALUES (162, '', 'bambino_macaroni', 'Bambino Macaroni', 'b1b5f281-a735-4de6-9d53-a413032943a1', 'Pasta is a type of food typically made from an unleavened dough of durum wheat flour mixed with water or eggs, and formed into sheets or various shapes, then cooked by boiling or baking', 0, 15, 0, '100', 0, ' 8 lb', 0, '2020-09-22 19:00:51', '2020-09-22 19:00:51');
INSERT INTO `products` VALUES (163, '', 'bambino_premium_pasta', 'Bambino Premium Pasta', '2127efa8-ff7f-447c-9e42-da4fab6f4f83', 'Pasta is a type of food typically made from an unleavened dough of durum wheat flour mixed with water or eggs, and formed into sheets or various shapes, then cooked by boiling or baking', 0, 18, 0, '100', 0, ' 6 lb', 0, '2020-09-22 19:00:52', '2020-09-22 19:00:52');
INSERT INTO `products` VALUES (164, '', 'batchelors_pasta_sauce', 'Batchelors Pasta N Sauce Cheese And Broccoli', '53ef223f-bb8b-4eab-abb4-5dff7b4b3ecc', 'Pasta is a type of food typically made from an unleavened dough of durum wheat flour mixed with water or eggs, and formed into sheets or various shapes, then cooked by boiling or baking', 0, 8, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:00:52', '2020-09-22 19:00:52');
INSERT INTO `products` VALUES (165, '', 'borges-pasta', 'Borges Pasta', '3b017b8f-c805-4e4c-8b95-08037a13dbb9', 'Pasta is a type of food typically made from an unleavened dough of durum wheat flour mixed with water or eggs, and formed into sheets or various shapes, then cooked by boiling or baking', 0, 12, 0, '100', 0, ' 6 lb', 0, '2020-09-22 19:00:53', '2020-09-22 19:00:53');
INSERT INTO `products` VALUES (166, '', 'Cheese-&-Broccoli-Pasta-&-Sauce', 'Pasta Sauce', 'cc398e6e-ba4d-4048-b266-0a4d8fc290d1', 'Pasta is a type of food typically made from an unleavened dough of durum wheat flour mixed with water or eggs, and formed into sheets or various shapes, then cooked by boiling or baking', 0, 15, 12, '20', 0, ' 3 lb', 0, '2020-09-22 19:00:54', '2020-09-22 19:00:54');
INSERT INTO `products` VALUES (167, '', 'sunremo_chicken_curry_pasta', 'Sun Remo Chiken Flavour Pasta', 'd3a8d3dc-2c71-4cff-a626-aad1ef8148b8', 'Pasta is a type of food typically made from an unleavened dough of durum wheat flour mixed with water or eggs, and formed into sheets or various shapes, then cooked by boiling or baking', 0, 15, 12, '20', 0, ' 3 lb', 0, '2020-09-22 19:00:54', '2020-09-22 19:00:54');
INSERT INTO `products` VALUES (168, '', 'knorr_pastaria', 'Knorr Pastaria', '1a4ed989-aec4-405e-9c24-5711e31dbc9c', 'Pasta is a type of food typically made from an unleavened dough of durum wheat flour mixed with water or eggs, and formed into sheets or various shapes, then cooked by boiling or baking', 0, 15, 0, '100', 0, ' 3 lb', 0, '2020-09-22 19:00:55', '2020-09-22 19:00:55');
INSERT INTO `products` VALUES (169, '', 'allegro_bbq_sauce', 'Allegro Bbq Sauce', 'afa6f0e3-d250-4b77-8688-0ffa66369b8d', 'In cooking, a sauce is a liquid, cream, or semi-solid food, served on or used in preparing other foods. Most sauces are not normally consumed by themselves; they add flavor, moisture, and visual appeal to a dish.', 0, 10, 0, '100', 0, ' 6 lb', 0, '2020-09-22 19:00:56', '2020-09-22 19:00:56');
INSERT INTO `products` VALUES (170, '', 'asain_zing_chili', 'Asin Zing Chili Sauce', '7bde3661-ae27-4ba4-8b8c-4b54a637e2a5', 'In cooking, a sauce is a liquid, cream, or semi-solid food, served on or used in preparing other foods. Most sauces are not normally consumed by themselves; they add flavor, moisture, and visual appeal to a dish.', 0, 8, 0, '100', 0, ' 6 lb', 0, '2020-09-22 19:00:57', '2020-09-22 19:00:57');
INSERT INTO `products` VALUES (171, '', 'crunch_hot_chili_sauce', 'Crunch Hot Chili Sauce', '923217ee-b70d-4cc9-a7eb-ddd5891af1d4', 'In cooking, a sauce is a liquid, cream, or semi-solid food, served on or used in preparing other foods. Most sauces are not normally consumed by themselves; they add flavor, moisture, and visual appeal to a dish.', 0, 6, 0, '100', 0, ' 6 lb', 0, '2020-09-22 19:00:57', '2020-09-22 19:00:57');
INSERT INTO `products` VALUES (172, '', 'felix_chili_sauce', 'Felix Chili Sauce', 'b1532c6b-3bfd-46e2-91a2-e48fda80752e', 'In cooking, a sauce is a liquid, cream, or semi-solid food, served on or used in preparing other foods. Most sauces are not normally consumed by themselves; they add flavor, moisture, and visual appeal to a dish.', 0, 6, 0, '100', 0, ' 6 lb', 0, '2020-09-22 19:00:58', '2020-09-22 19:00:58');
INSERT INTO `products` VALUES (173, '', 'heinz_chili_sauce', 'Heinz Chili Sauce', '786f47cf-d9bd-48a8-875b-e6c4d98ba165', 'In cooking, a sauce is a liquid, cream, or semi-solid food, served on or used in preparing other foods. Most sauces are not normally consumed by themselves; they add flavor, moisture, and visual appeal to a dish.', 0, 8, 7, '12.5', 0, ' 7 lb', 0, '2020-09-22 19:00:59', '2020-09-22 19:00:59');
INSERT INTO `products` VALUES (174, '', 'kosmos_bbq', 'Kosmos Bbq Sauce', 'f0b09979-0358-45a5-91d7-24f79b528352', 'In cooking, a sauce is a liquid, cream, or semi-solid food, served on or used in preparing other foods. Most sauces are not normally consumed by themselves; they add flavor, moisture, and visual appeal to a dish.', 0, 8, 7, '12.5', 0, ' 7 lb', 0, '2020-09-22 19:00:59', '2020-09-22 19:00:59');
INSERT INTO `products` VALUES (175, '', 'taco_bell_diablo_sauce', 'Taco Bell Diablo Sauce', '89e591eb-f350-4794-a580-f9bbe1d348cd', 'In cooking, a sauce is a liquid, cream, or semi-solid food, served on or used in preparing other foods. Most sauces are not normally consumed by themselves; they add flavor, moisture, and visual appeal to a dish.', 0, 8, 0, '100', 0, ' 7 lb', 0, '2020-09-22 19:01:00', '2020-09-22 19:01:00');
INSERT INTO `products` VALUES (176, '', 'taco_bell_fire_sauce', 'Taco Bell Fire Sauce', '8c377fc8-498c-4cc6-8d3a-b5c0ab9b98b9', 'In cooking, a sauce is a liquid, cream, or semi-solid food, served on or used in preparing other foods. Most sauces are not normally consumed by themselves; they add flavor, moisture, and visual appeal to a dish.', 0, 8, 0, '100', 0, ' 7 lb', 0, '2020-09-22 19:01:01', '2020-09-22 19:01:01');
INSERT INTO `products` VALUES (177, '', 'bak_kuh_teh', 'Traditional Bak Kut Teh Soup', '464a2887-48b4-4596-bf5d-6b5da9a48ec0', 'Soup is a primarily liquid food, generally served warm or hot (but may be cool or cold), that is made by combining ingredients of meat or vegetables with stock, or water. Hot soups are additionally characterized by boiling solid ingredients in liquids in a pot until the flavors are extracted, forming a broth.', 0, 3, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:01:02', '2020-09-22 19:01:02');
INSERT INTO `products` VALUES (178, '', 'chings_mixvegsoup', 'Chings Mix Vegetable Soup', '0f603df7-5a7a-4796-8a2d-c8106339fab8', 'Soup is a primarily liquid food, generally served warm or hot (but may be cool or cold), that is made by combining ingredients of meat or vegetables with stock, or water. Hot soups are additionally characterized by boiling solid ingredients in liquids in a pot until the flavors are extracted, forming a broth.', 0, 5, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:01:02', '2020-09-22 19:01:02');
INSERT INTO `products` VALUES (179, '', 'dashi_chicken_corn', 'Dashi Chicken Corn Soup', '6483cbda-57e4-4d41-b32b-a7995fa6a05f', 'Soup is a primarily liquid food, generally served warm or hot (but may be cool or cold), that is made by combining ingredients of meat or vegetables with stock, or water. Hot soups are additionally characterized by boiling solid ingredients in liquids in a pot until the flavors are extracted, forming a broth.', 0, 1, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:01:03', '2020-09-22 19:01:03');
INSERT INTO `products` VALUES (180, '', 'knorr_thai_vegetable', 'Knorr Thai Vegetable Soup', 'df2dbc51-ef3d-468c-ac1e-0ff20ea228f2', 'Soup is a primarily liquid food, generally served warm or hot (but may be cool or cold), that is made by combining ingredients of meat or vegetables with stock, or water. Hot soups are additionally characterized by boiling solid ingredients in liquids in a pot until the flavors are extracted, forming a broth.', 0, 2, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:01:04', '2020-09-22 19:01:04');
INSERT INTO `products` VALUES (181, '', 'rempah_sup', 'Rempah Sup Soup Mix', '9347e2d1-65ae-4a59-b4a5-3fc66486dd42', 'Soup is a primarily liquid food, generally served warm or hot (but may be cool or cold), that is made by combining ingredients of meat or vegetables with stock, or water. Hot soups are additionally characterized by boiling solid ingredients in liquids in a pot until the flavors are extracted, forming a broth.', 0, 3, 3, '0', 0, ' 2 lb', 0, '2020-09-22 19:01:05', '2020-09-22 19:01:05');
INSERT INTO `products` VALUES (182, '', 'grain_free', 'Avo Derm Grain Free', '2171c103-62a8-49a2-9518-8bc1c2bd2614', 'Cat food is food specifically formulated and intended for consumption by cats and other related canines. Like all carnivores, cats have sharp, pointed teeth, and have short gastrointestinal tracts better suited for the consumption of meat than of vegetable substances.', 0, 30, 27, '10', 0, ' 5 lb', 0, '2020-09-22 19:01:06', '2020-09-22 19:01:06');
INSERT INTO `products` VALUES (183, '', 'hills_science_diet', 'Hills Science Diet', '423d5a08-da22-49c3-8d6b-98b16be9e43d', 'Cat food is food specifically formulated and intended for consumption by cats and other related canines. Like all carnivores, cats have sharp, pointed teeth, and have short gastrointestinal tracts better suited for the consumption of meat than of vegetable substances.', 0, 25, 0, '100', 0, ' 5 lb', 0, '2020-09-22 19:01:06', '2020-09-22 19:01:06');
INSERT INTO `products` VALUES (184, '', 'instinct_the_raw', 'Instinct Ultimate Protien', 'bccab2c2-7b5f-4899-b53b-2a51c649a1b4', 'Cat food is food specifically formulated and intended for consumption by cats and other related canines. Like all carnivores, cats have sharp, pointed teeth, and have short gastrointestinal tracts better suited for the consumption of meat than of vegetable substances.', 0, 20, 16, '20', 0, ' 4 lb', 0, '2020-09-22 19:01:07', '2020-09-22 19:01:07');
INSERT INTO `products` VALUES (185, '', 'natural_balance', 'Natural Balance L I D', 'efe5c6ab-3bbf-45f1-ae0c-196d7a7e9cb8', 'Cat food is food specifically formulated and intended for consumption by cats and other related canines. Like all carnivores, cats have sharp, pointed teeth, and have short gastrointestinal tracts better suited for the consumption of meat than of vegetable substances.', 0, 20, 0, '100', 0, ' 4 lb', 0, '2020-09-22 19:01:08', '2020-09-22 19:01:08');
INSERT INTO `products` VALUES (186, '', 'prescription_diet', 'Hills Urinary Care', '175fc96f-af09-4103-a08a-e128209f6061', 'Cat food is food specifically formulated and intended for consumption by cats and other related canines. Like all carnivores, cats have sharp, pointed teeth, and have short gastrointestinal tracts better suited for the consumption of meat than of vegetable substances.', 0, 20, 15, '25', 0, ' 4 lb', 0, '2020-09-22 19:01:09', '2020-09-22 19:01:09');
INSERT INTO `products` VALUES (187, '', 'pro_diet', 'Pro Diet Complete Balance', '85d4b31b-1634-401c-8cc4-15e52a1af74d', 'Cat food is food specifically formulated and intended for consumption by cats and other related canines. Like all carnivores, cats have sharp, pointed teeth, and have short gastrointestinal tracts better suited for the consumption of meat than of vegetable substances.', 0, 25, 0, '100', 0, ' 6 lb', 0, '2020-09-22 19:01:10', '2020-09-22 19:01:10');
INSERT INTO `products` VALUES (188, '', 'purina_pro_plan', 'Purina Pro Plan Veterinary Diets', '3478a599-5cff-4c15-a26e-df1351cec085', 'Cat food is food specifically formulated and intended for consumption by cats and other related canines. Like all carnivores, cats have sharp, pointed teeth, and have short gastrointestinal tracts better suited for the consumption of meat than of vegetable substances.', 0, 25, 23, '8', 0, ' 6 lb', 0, '2020-09-22 19:01:10', '2020-09-22 19:01:10');
INSERT INTO `products` VALUES (189, '', 'special_kitty', 'Special Kitty Gourmet', '3face0f2-d036-4fcb-8309-bfc93035806f', 'Cat food is food specifically formulated and intended for consumption by cats and other related canines. Like all carnivores, cats have sharp, pointed teeth, and have short gastrointestinal tracts better suited for the consumption of meat than of vegetable substances.', 0, 30, 24, '20', 0, ' 5 lb', 0, '2020-09-22 19:01:11', '2020-09-22 19:01:11');
INSERT INTO `products` VALUES (190, '', 'dog_food_black_hawk_adult_all_breeds_lamb&rice', 'Black Hawk Adult Lamb Rice', 'aba3da4c-5692-4372-9398-fc57ebb80f0f', 'Dog food is food specifically formulated and intended for consumption by dogs and other related canines. Like all carnivores, dogs have sharp, pointed teeth, and have short gastrointestinal tracts better suited for the consumption of meat than of vegetable substances.', 0, 30, 0, '100', 0, ' 5 lb', 0, '2020-09-22 19:01:12', '2020-09-22 19:01:12');
INSERT INTO `products` VALUES (191, '', 'dog_food_black_hawk_puppy_all_breeds_lamb&rice', 'Black Hawk Puppy Lamb Rice', 'c79a5fc5-68f7-46b2-bf40-3f691ac7c51d', 'Dog food is food specifically formulated and intended for consumption by dogs and other related canines. Like all carnivores, dogs have sharp, pointed teeth, and have short gastrointestinal tracts better suited for the consumption of meat than of vegetable substances.', 0, 30, 27, '10', 0, ' 5 lb', 0, '2020-09-22 19:01:13', '2020-09-22 19:01:13');
INSERT INTO `products` VALUES (192, '', 'dog_food_black_hawk_puppy_large_breedchicken&rice', 'Black Hawk Puppy Chicken Rice', 'dbcb5a68-2286-4b5d-970e-ad46dd7427dd', 'Dog food is food specifically formulated and intended for consumption by dogs and other related canines. Like all carnivores, dogs have sharp, pointed teeth, and have short gastrointestinal tracts better suited for the consumption of meat than of vegetable substances.', 0, 30, 27, '10', 0, ' 5 lb', 0, '2020-09-22 19:01:13', '2020-09-22 19:01:13');
INSERT INTO `products` VALUES (193, '', 'dog_food_blain\'s_farm&fleet', 'Blain S Farm Fleet', '2a2fbbf8-0a7f-48d5-a9e6-c4d4da58836e', 'Dog food is food specifically formulated and intended for consumption by dogs and other related canines. Like all carnivores, dogs have sharp, pointed teeth, and have short gastrointestinal tracts better suited for the consumption of meat than of vegetable substances.', 0, 25, 0, '100', 0, ' 5 lb', 0, '2020-09-22 19:01:14', '2020-09-22 19:01:14');
INSERT INTO `products` VALUES (194, '', 'dog_food_blue_wilderness', 'Blue Wilderness Chicken Recepie', '3f8761fc-7159-4e25-84d5-af20a26229ee', 'Dog food is food specifically formulated and intended for consumption by dogs and other related canines. Like all carnivores, dogs have sharp, pointed teeth, and have short gastrointestinal tracts better suited for the consumption of meat than of vegetable substances.', 0, 25, 0, '100', 0, ' 5 lb', 0, '2020-09-22 19:01:15', '2020-09-22 19:01:15');
INSERT INTO `products` VALUES (195, '', 'dog_food_whole_hearted_beef&pea', 'Whole Hearted Beef Pea Recepie', 'dbbfbcdd-7430-4478-b0ae-f6f87752a93d', 'Dog food is food specifically formulated and intended for consumption by dogs and other related canines. Like all carnivores, dogs have sharp, pointed teeth, and have short gastrointestinal tracts better suited for the consumption of meat than of vegetable substances.', 0, 40, 32, '20', 0, ' 8 lb', 0, '2020-09-22 19:01:16', '2020-09-22 19:01:16');
INSERT INTO `products` VALUES (196, '', 'dog_food_whole_hearted_salmon&pea', 'Whole Hearted Salmon Pea Recepie', '9cae42c9-3976-4c13-958f-9362c36d512b', 'Dog food is food specifically formulated and intended for consumption by dogs and other related canines. Like all carnivores, dogs have sharp, pointed teeth, and have short gastrointestinal tracts better suited for the consumption of meat than of vegetable substances.', 0, 40, 0, '100', 0, ' 8 lb', 0, '2020-09-22 19:01:16', '2020-09-22 19:01:16');
INSERT INTO `products` VALUES (197, '', 'dog_food_zenith', 'Zenith Lamb Brown Rice', '957f2df5-7dfe-47cf-bb0c-f05326f9acda', 'Dog food is food specifically formulated and intended for consumption by dogs and other related canines. Like all carnivores, dogs have sharp, pointed teeth, and have short gastrointestinal tracts better suited for the consumption of meat than of vegetable substances.', 0, 40, 0, '100', 0, ' 8 lb', 0, '2020-09-22 19:01:17', '2020-09-22 19:01:17');
INSERT INTO `products` VALUES (198, '', 'kitten_food_applaws_adult_cat_chicken', 'Applaws Grain Free', '76f8cf81-9fc5-4d06-86c5-c917377b8332', 'Kitten food is food for consumption by kitten. Kittens have specific requirements for their dietary nutrients. Certain nutrients, including many vitamins and amino acids, are degraded by the temperatures, pressures and chemical treatments used during manufacture, and hence must be added after manufacture to avoid nutritional deficiency.', 0, 40, 0, '100', 0, ' 8 lb', 0, '2020-09-22 19:01:18', '2020-09-22 19:01:18');
INSERT INTO `products` VALUES (199, '', 'kitten_food_authority_real_chicken', 'Authority Chicken Rice Formula', '45d478c8-40ae-4843-873d-1ed3d788b3b8', 'Kitten food is food for consumption by kitten. Kittens have specific requirements for their dietary nutrients. Certain nutrients, including many vitamins and amino acids, are degraded by the temperatures, pressures and chemical treatments used during manufacture, and hence must be added after manufacture to avoid nutritional deficiency.', 0, 30, 27, '10', 0, ' 5 lb', 0, '2020-09-22 19:01:18', '2020-09-22 19:01:18');
INSERT INTO `products` VALUES (200, '', 'kitten_food_hill\'s_ideal_balance_over1year_kitten', 'Hills Ideal Balance', '24258cdc-341b-43aa-a960-7f180a76b2ed', 'Kitten food is food for consumption by kitten. Kittens have specific requirements for their dietary nutrients. Certain nutrients, including many vitamins and amino acids, are degraded by the temperatures, pressures and chemical treatments used during manufacture, and hence must be added after manufacture to avoid nutritional deficiency.', 0, 30, 0, '100', 0, ' 5 lb', 0, '2020-09-22 19:02:28', '2020-09-22 19:02:28');
INSERT INTO `products` VALUES (201, '', 'kitten_food_hill\'s_science_diet_upto1year_kitten', 'Hills Science Diet', '6f79a115-8a4a-45e6-a315-1224e5f529f5', 'Kitten food is food for consumption by kitten. Kittens have specific requirements for their dietary nutrients. Certain nutrients, including many vitamins and amino acids, are degraded by the temperatures, pressures and chemical treatments used during manufacture, and hence must be added after manufacture to avoid nutritional deficiency.', 0, 30, 0, '100', 0, ' 5 lb', 0, '2020-09-22 19:02:28', '2020-09-22 19:02:28');
INSERT INTO `products` VALUES (202, '', 'kitten_food_iamso_upto1year', 'Iams Proactive Health', 'deef10d2-41a6-40f2-a392-169a981e35a5', 'Kitten food is food for consumption by kitten. Kittens have specific requirements for their dietary nutrients. Certain nutrients, including many vitamins and amino acids, are degraded by the temperatures, pressures and chemical treatments used during manufacture, and hence must be added after manufacture to avoid nutritional deficiency.', 0, 20, 16, '20', 0, ' 5 lb', 0, '2020-09-22 19:02:30', '2020-09-22 19:02:30');
INSERT INTO `products` VALUES (203, '', 'kitten_food_instinct_chicken', 'Instinct Original Grain Free', '55d34d4b-9d05-43ae-9ba6-c6117ed529b5', 'Kitten food is food for consumption by kitten. Kittens have specific requirements for their dietary nutrients. Certain nutrients, including many vitamins and amino acids, are degraded by the temperatures, pressures and chemical treatments used during manufacture, and hence must be added after manufacture to avoid nutritional deficiency.', 0, 20, 0, '100', 0, ' 5 lb', 0, '2020-09-22 19:02:31', '2020-09-22 19:02:31');
INSERT INTO `products` VALUES (204, '', 'kitten_food_merrick', 'Merrick Purrfect Bistro Grain Free', '189ce2f2-5a61-47b3-8a4a-25e69bfa2f76', 'Kitten food is food for consumption by kitten. Kittens have specific requirements for their dietary nutrients. Certain nutrients, including many vitamins and amino acids, are degraded by the temperatures, pressures and chemical treatments used during manufacture, and hence must be added after manufacture to avoid nutritional deficiency.', 0, 25, 0, '100', 0, ' 5 lb', 0, '2020-09-22 19:02:32', '2020-09-22 19:02:32');
INSERT INTO `products` VALUES (205, '', 'kitten_food_purina_one', 'Purina Healthy Kitten Formula', '128e718c-ae87-4b96-9254-40af98297fef', 'Kitten food is food for consumption by kitten. Kittens have specific requirements for their dietary nutrients. Certain nutrients, including many vitamins and amino acids, are degraded by the temperatures, pressures and chemical treatments used during manufacture, and hence must be added after manufacture to avoid nutritional deficiency.', 0, 25, 23, '8', 0, ' 5 lb', 0, '2020-09-22 19:04:59', '2020-09-22 19:04:59');
INSERT INTO `products` VALUES (206, '', 'kitten_food_purina_proplan', 'Purina Pro Plan', 'a602a966-b2bb-48a4-a4fe-493b71f43e84', 'Kitten food is food for consumption by kitten. Kittens have specific requirements for their dietary nutrients. Certain nutrients, including many vitamins and amino acids, are degraded by the temperatures, pressures and chemical treatments used during manufacture, and hence must be added after manufacture to avoid nutritional deficiency.', 0, 35, 0, '100', 0, ' 4 lb', 0, '2020-09-22 19:05:00', '2020-09-22 19:05:00');
INSERT INTO `products` VALUES (207, '', 'kitten_food_wellness', 'Wellness Complete Health', '162bd2a7-93c2-4e4e-9e42-7f5e33ffa1d1', 'Kitten food is food for consumption by kitten. Kittens have specific requirements for their dietary nutrients. Certain nutrients, including many vitamins and amino acids, are degraded by the temperatures, pressures and chemical treatments used during manufacture, and hence must be added after manufacture to avoid nutritional deficiency.', 0, 35, 0, '100', 0, ' 6 lb', 0, '2020-09-22 19:05:01', '2020-09-22 19:05:01');
INSERT INTO `products` VALUES (208, '', 'kitten_food_whiskas_real_chicken', 'Whiskas', '9b73e333-0a16-4dce-9c86-7c008ea57046', 'Kitten food is food for consumption by kitten. Kittens have specific requirements for their dietary nutrients. Certain nutrients, including many vitamins and amino acids, are degraded by the temperatures, pressures and chemical treatments used during manufacture, and hence must be added after manufacture to avoid nutritional deficiency.', 0, 35, 0, '100', 0, ' 4 lb', 0, '2020-09-22 19:05:01', '2020-09-22 19:05:01');
INSERT INTO `products` VALUES (209, '', 'pet_accessories_black_winter_cap', 'Black Winter Cap', 'd19352e0-b73b-4ed0-b3a9-ede73a00fa04', 'A variety of animal supplies and pet accessories are also sold in pet shops. The products sold include: food, treats, toys, collars, leashes, cat litter, cages and aquariums.', 0, 5, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:05:02', '2020-09-22 19:05:02');
INSERT INTO `products` VALUES (210, '', 'pet_accessories_brown&white_winter_cap', 'Brown White Winter Cap', '908bc561-16d9-4f38-a56f-9d842794a8bc', 'A variety of animal supplies and pet accessories are also sold in pet shops. The products sold include: food, treats, toys, collars, leashes, cat litter, cages and aquariums.', 0, 3, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:05:03', '2020-09-22 19:05:03');
INSERT INTO `products` VALUES (211, '', 'pet_accessories_brown&white_winter_cap', 'Brown White Winter Cap', '4ba6dd82-6691-4e02-b67e-3a424d795f41', 'A variety of animal supplies and pet accessories are also sold in pet shops. The products sold include: food, treats, toys, collars, leashes, cat litter, cages and aquariums.', 0, 3, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:05:04', '2020-09-22 19:05:04');
INSERT INTO `products` VALUES (212, '', 'pet_accessories_costume1', 'Batman Cap', '9f79d382-a25b-4d1d-a955-b4f5324cc586', 'A variety of animal supplies and pet accessories are also sold in pet shops. The products sold include: food, treats, toys, collars, leashes, cat litter, cages and aquariums.', 0, 3, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:05:05', '2020-09-22 19:05:05');
INSERT INTO `products` VALUES (213, '', 'pet_accessories_costume2', 'Skeleton Cap', '57977255-74a0-4a09-82c5-6ba2e7364e8b', 'A variety of animal supplies and pet accessories are also sold in pet shops. The products sold include: food, treats, toys, collars, leashes, cat litter, cages and aquariums.', 0, 3, 3, '0', 0, ' 1 pc(s)', 0, '2020-09-22 19:05:05', '2020-09-22 19:05:05');
INSERT INTO `products` VALUES (214, '', 'pet_accessories_jacket_ash', 'Ash Jacket', '75d0cb55-4d02-483e-8ff8-10e82a9efac6', 'A variety of animal supplies and pet accessories are also sold in pet shops. The products sold include: food, treats, toys, collars, leashes, cat litter, cages and aquariums.', 0, 5, 4, '20', 0, ' 1 pc(s)', 0, '2020-09-22 19:05:06', '2020-09-22 19:05:06');
INSERT INTO `products` VALUES (215, '', 'pet_accessories_jacket_red', 'Red Jacket', 'bb1ac363-9e89-4237-bade-e95819a02d00', 'A variety of animal supplies and pet accessories are also sold in pet shops. The products sold include: food, treats, toys, collars, leashes, cat litter, cages and aquariums.', 0, 5, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:05:07', '2020-09-22 19:05:07');
INSERT INTO `products` VALUES (216, '', 'pet_accessories_pet_bed1', 'Cat Bed Brown', '6ed48193-0770-4644-80f3-f633549cec64', 'A variety of animal supplies and pet accessories are also sold in pet shops. The products sold include: food, treats, toys, collars, leashes, cat litter, cages and aquariums.', 0, 15, 12, '20', 0, ' 1 pc(s)', 0, '2020-09-22 19:05:08', '2020-09-22 19:05:08');
INSERT INTO `products` VALUES (217, '', 'pet_accessories_pet_bed2', 'Cat Bed Grey', '86b87afd-4f59-4e8e-a918-496123ed37fe', 'A variety of animal supplies and pet accessories are also sold in pet shops. The products sold include: food, treats, toys, collars, leashes, cat litter, cages and aquariums.', 0, 15, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:05:09', '2020-09-22 19:05:09');
INSERT INTO `products` VALUES (219, '', 'pet_accessories_pet_bed4', 'Dog Bed Brown Red', 'e96e0202-bf6f-4706-b3e9-2bd87217ddf1', 'A variety of animal supplies and pet accessories are also sold in pet shops. The products sold include: food, treats, toys, collars, leashes, cat litter, cages and aquariums.', 0, 15, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:05:09', '2020-09-22 19:05:09');
INSERT INTO `products` VALUES (220, '', 'pet_accessories_red&white_christmas_sweater', 'Red White Christmas Sweater', '5311b5b2-0c5c-44f7-b1ac-dd7500164d23', 'A variety of animal supplies and pet accessories are also sold in pet shops. The products sold include: food, treats, toys, collars, leashes, cat litter, cages and aquariums.', 0, 10, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:05:10', '2020-09-22 19:05:10');
INSERT INTO `products` VALUES (221, '', 'pet_accessories_red&white_jumper1', 'Red White Jumper', 'f86335c3-820f-43fa-a06e-d7710e9f8118', 'A variety of animal supplies and pet accessories are also sold in pet shops. The products sold include: food, treats, toys, collars, leashes, cat litter, cages and aquariums.', 0, 10, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:05:11', '2020-09-22 19:05:11');
INSERT INTO `products` VALUES (224, '', 'pet_accessories_red_crhistmas_winter_cap', 'Red Christmas Winter Cap', 'e996bf5e-2bfb-448a-a061-7318e8dd0e3a', 'A variety of animal supplies and pet accessories are also sold in pet shops. The products sold include: food, treats, toys, collars, leashes, cat litter, cages and aquariums.', 0, 10, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:05:12', '2020-09-22 19:05:12');
INSERT INTO `products` VALUES (225, '', 'pet_accessories_tie', 'Rainbow Tie', '606e87fe-4eaf-4f3e-9487-005bcb047ac9', 'A variety of animal supplies and pet accessories are also sold in pet shops. The products sold include: food, treats, toys, collars, leashes, cat litter, cages and aquariums.', 0, 2, 2, '0', 0, ' 1 pc(s)', 0, '2020-09-22 19:05:13', '2020-09-22 19:05:13');
INSERT INTO `products` VALUES (226, '', 'air_freshner_acana_ozmo', 'Ozmo Air Fabric Freshner', '4904b309-bbf5-4a66-a826-311ca311afa5', 'Air fresheners are consumer products that typically emit fragrance and are used in homes or commercial interiors such as restrooms, foyers, hallways, vestibules and other smaller indoor areas, as well as larger areas such as hotel lobbies, auto dealerships, medical facilities, public arenas and other large interior spaces. ', 0, 20, 15, '25', 0, ' 1 pc(s)', 0, '2020-09-22 19:05:13', '2020-09-22 19:05:13');
INSERT INTO `products` VALUES (227, '', 'air_freshner_air_wick_essential_oils', 'Air Wick Essential Oils', '34baf815-7c91-4bb9-aed8-292c8e51557b', 'Air fresheners are consumer products that typically emit fragrance and are used in homes or commercial interiors such as restrooms, foyers, hallways, vestibules and other smaller indoor areas, as well as larger areas such as hotel lobbies, auto dealerships, medical facilities, public arenas and other large interior spaces. ', 0, 20, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:06:46', '2020-09-22 19:06:46');
INSERT INTO `products` VALUES (228, '', 'air_freshner_ambipur_air_sweet_citrus&zest', 'Ambi Pur Air', '439a00b7-016c-49f4-bfc4-7eae3a8045e5', 'Air fresheners are consumer products that typically emit fragrance and are used in homes or commercial interiors such as restrooms, foyers, hallways, vestibules and other smaller indoor areas, as well as larger areas such as hotel lobbies, auto dealerships, medical facilities, public arenas and other large interior spaces. ', 0, 15, 0, NULL, 0, ' 1 pc(s)', 0, '2020-09-22 19:09:09', '2020-09-22 19:09:09');
INSERT INTO `products` VALUES (229, '', 'air_freshner_boardwalk_mango', 'Broadwalk Air Freshner', '917f23e9-be78-4786-8a34-2863b92d2672', 'Air fresheners are consumer products that typically emit fragrance and are used in homes or commercial interiors such as restrooms, foyers, hallways, vestibules and other smaller indoor areas, as well as larger areas such as hotel lobbies, auto dealerships, medical facilities, public arenas and other large interior spaces. ', 0, 15, 0, '100', 0, ' .5 lb', 0, '2020-09-22 19:09:47', '2020-09-22 19:09:47');
INSERT INTO `products` VALUES (230, '', 'air_freshner_febreze_air_bora_bora', 'Febreze Air Bora Bora Waters', 'feb7335f-a358-42aa-a5ef-0c7a11103e47', 'Air fresheners are consumer products that typically emit fragrance and are used in homes or commercial interiors such as restrooms, foyers, hallways, vestibules and other smaller indoor areas, as well as larger areas such as hotel lobbies, auto dealerships, medical facilities, public arenas and other large interior spaces. ', 0, 15, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:12:02', '2020-09-22 19:12:02');
INSERT INTO `products` VALUES (231, '', 'air_freshner_febreze_air_effects', 'Febreze Air Effects', '53be9d49-90a4-4298-b3e0-9f8d07334a0b', 'Air fresheners are consumer products that typically emit fragrance and are used in homes or commercial interiors such as restrooms, foyers, hallways, vestibules and other smaller indoor areas, as well as larger areas such as hotel lobbies, auto dealerships, medical facilities, public arenas and other large interior spaces. ', 0, 15, 0, '100', 0, '  1 pc(s)', 0, '2020-09-22 19:13:39', '2020-09-22 19:13:39');
INSERT INTO `products` VALUES (232, '', 'air_freshner_febreze_air_hawaiian', 'Febreze Air Hawaiian', '84c08a3f-a14c-4eea-965a-4e5c93ee5cfd', 'Air fresheners are consumer products that typically emit fragrance and are used in homes or commercial interiors such as restrooms, foyers, hallways, vestibules and other smaller indoor areas, as well as larger areas such as hotel lobbies, auto dealerships, medical facilities, public arenas and other large interior spaces. ', 0, 15, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:13:39', '2020-09-22 19:13:39');
INSERT INTO `products` VALUES (233, '', 'air_freshner_sc_johnson_glade_blue_odyssey', 'Glade Blue Odssey', '67d6b1b6-88c1-469f-9d06-4b69b1fbae89', 'Air fresheners are consumer products that typically emit fragrance and are used in homes or commercial interiors such as restrooms, foyers, hallways, vestibules and other smaller indoor areas, as well as larger areas such as hotel lobbies, auto dealerships, medical facilities, public arenas and other large interior spaces. ', 0, 18, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:13:40', '2020-09-22 19:13:40');
INSERT INTO `products` VALUES (234, '', 'air_freshner_sc_johnson_glade_clean_linen', 'Glade Clean Linen', '98366204-f643-4784-811c-22afc78e5dc4', 'Air fresheners are consumer products that typically emit fragrance and are used in homes or commercial interiors such as restrooms, foyers, hallways, vestibules and other smaller indoor areas, as well as larger areas such as hotel lobbies, auto dealerships, medical facilities, public arenas and other large interior spaces. ', 0, 20, 18, '10', 0, ' 1 pc(s)', 0, '2020-09-22 19:13:41', '2020-09-22 19:13:41');
INSERT INTO `products` VALUES (235, '', 'air_freshner_vibrant_linen', 'Vibrant Air Freshner', 'f843c99e-da12-433b-a13e-f10fc36f33fd', 'Air fresheners are consumer products that typically emit fragrance and are used in homes or commercial interiors such as restrooms, foyers, hallways, vestibules and other smaller indoor areas, as well as larger areas such as hotel lobbies, auto dealerships, medical facilities, public arenas and other large interior spaces. ', 0, 20, 18, '10', 0, ' 1 pc(s)', 0, '2020-09-22 19:13:41', '2020-09-22 19:13:41');
INSERT INTO `products` VALUES (236, '', 'cleaning_supply_ajax', 'Ajax Floor Cleaner', '19604bdf-66f7-49ce-a1fc-e7898215b760', 'Cleaning liquid (BrE: washing-up liquid), known as cleaning soap, cleaning detergent and dish soap, is a detergent or liquid used to assist in cleaning. It is usually a highly-foaming mixture of surfactants with low skin irritation ', 0, 20, 18, '10', 0, ' 1 pc(s)', 0, '2020-09-22 19:13:42', '2020-09-22 19:13:42');
INSERT INTO `products` VALUES (237, '', 'cleaning_supply_astonish', 'Astonish Oven Power Spray', '309e3467-6481-41e8-9929-9af8bdaf28c8', 'Cleaning liquid (BrE: washing-up liquid), known as cleaning soap, cleaning detergent and dish soap, is a detergent or liquid used to assist in cleaning. It is usually a highly-foaming mixture of surfactants with low skin irritation ', 0, 15, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:13:43', '2020-09-22 19:13:43');
INSERT INTO `products` VALUES (238, '', 'cleaning_supply_bio', 'Bio Toilet Cleaner', '7ceb1e22-622c-4fb6-8238-03275f3d5cef', 'Cleaning liquid (BrE: washing-up liquid), known as cleaning soap, cleaning detergent and dish soap, is a detergent or liquid used to assist in cleaning. It is usually a highly-foaming mixture of surfactants with low skin irritation ', 0, 10, 8, '20', 0, ' 1 pc(s)', 0, '2020-09-22 19:13:43', '2020-09-22 19:13:43');
INSERT INTO `products` VALUES (239, '', 'cleaning_supply_bona', 'Bona Hardwood Floor Cleaner', '4912e00a-be78-4b72-9d5e-b0bc673a95c0', 'Cleaning liquid (BrE: washing-up liquid), known as cleaning soap, cleaning detergent and dish soap, is a detergent or liquid used to assist in cleaning. It is usually a highly-foaming mixture of surfactants with low skin irritation ', 0, 10, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:13:44', '2020-09-22 19:13:44');
INSERT INTO `products` VALUES (240, '', 'cleaning_supply_ever_spring', 'Ever Spring Glass Cleaner', '1e0e557a-a701-4737-b4ea-9d35d3f55e30', 'Cleaning liquid (BrE: washing-up liquid), known as cleaning soap, cleaning detergent and dish soap, is a detergent or liquid used to assist in cleaning. It is usually a highly-foaming mixture of surfactants with low skin irritation ', 0, 10, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:13:45', '2020-09-22 19:13:45');
INSERT INTO `products` VALUES (241, '', 'cleaning_supply_glitz_glass_cleaner', 'Glitz Outdoor Glass Cleaner', 'd4a8f1ef-28d0-43b9-a69e-ade3ff00ae7e', 'Cleaning liquid (BrE: washing-up liquid), known as cleaning soap, cleaning detergent and dish soap, is a detergent or liquid used to assist in cleaning. It is usually a highly-foaming mixture of surfactants with low skin irritation ', 0, 40, 36, '10', 0, ' 1 pc(s)', 0, '2020-09-22 19:13:45', '2020-09-22 19:13:45');
INSERT INTO `products` VALUES (242, '', 'cleaning_supply_glitz_steel_cleaner', 'Glitz Bbq Stainless Steel Cleaner', 'd0ab487f-4222-478d-8e9c-5370e76276ef', 'Cleaning liquid (BrE: washing-up liquid), known as cleaning soap, cleaning detergent and dish soap, is a detergent or liquid used to assist in cleaning. It is usually a highly-foaming mixture of surfactants with low skin irritation ', 0, 20, 16, '20', 0, ' 1 pc(s)', 0, '2020-09-22 19:13:46', '2020-09-22 19:13:46');
INSERT INTO `products` VALUES (243, '', 'cleaning_supply_method', 'Method All Purpose Cleaner', '26c7c25a-ce5d-442b-9196-6a9d9f8b85b0', 'Cleaning liquid (BrE: washing-up liquid), known as cleaning soap, cleaning detergent and dish soap, is a detergent or liquid used to assist in cleaning. It is usually a highly-foaming mixture of surfactants with low skin irritation ', 0, 20, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:13:47', '2020-09-22 19:13:47');
INSERT INTO `products` VALUES (244, '', 'dishwasher_dawn_la_faune', 'Dawn', '78bcb944-e1bd-4553-ae84-de848ed0cf50', 'Cleaning liquid (BrE: washing-up liquid), known as cleaning soap, cleaning detergent and dish soap, is a detergent or liquid used to assist in cleaning. It is usually a highly-foaming mixture of surfactants with low skin irritation ', 0, 5, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:13:48', '2020-09-22 19:13:48');
INSERT INTO `products` VALUES (245, '', 'dishwasher_dawn_new_zealand_spring_scent', 'Dawn Escapes', 'e1f889dc-6f4a-477e-9858-d3b35bad586d', 'Cleaning liquid (BrE: washing-up liquid), known as cleaning soap, cleaning detergent and dish soap, is a detergent or liquid used to assist in cleaning. It is usually a highly-foaming mixture of surfactants with low skin irritation ', 0, 5, 5, '0', 0, ' 1 pc(s)', 0, '2020-09-22 19:13:48', '2020-09-22 19:13:48');
INSERT INTO `products` VALUES (246, '', 'dishwasher_fairy_lemon', 'Fairy Lemon', 'c724830d-80f7-41f3-a5ff-4ce6486e0624', 'Cleaning liquid (BrE: washing-up liquid), known as cleaning soap, cleaning detergent and dish soap, is a detergent or liquid used to assist in cleaning. It is usually a highly-foaming mixture of surfactants with low skin irritation ', 0, 5, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:13:49', '2020-09-22 19:13:49');
INSERT INTO `products` VALUES (247, '', 'dishwasher_finish', 'Finish All In One', '4539959d-aee4-4ac0-8871-c07a9833dca5', 'Cleaning liquid (BrE: washing-up liquid), known as cleaning soap, cleaning detergent and dish soap, is a detergent or liquid used to assist in cleaning. It is usually a highly-foaming mixture of surfactants with low skin irritation ', 0, 5, 4, '20', 0, ' 1 pc(s)', 0, '2020-09-22 19:13:50', '2020-09-22 19:13:50');
INSERT INTO `products` VALUES (248, '', 'dishwasher_lemi_shine', 'Lemi Shine', '5f5d72c5-28f1-4177-ba24-83197aefdeeb', 'Cleaning liquid (BrE: washing-up liquid), known as cleaning soap, cleaning detergent and dish soap, is a detergent or liquid used to assist in cleaning. It is usually a highly-foaming mixture of surfactants with low skin irritation ', 0, 5, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:13:50', '2020-09-22 19:13:50');
INSERT INTO `products` VALUES (249, '', 'dishwasher_seventh_generation_free&clear', 'Seventh Generation', 'cfd28231-b611-4c6f-82d0-057c72c16039', 'Cleaning liquid (BrE: washing-up liquid), known as cleaning soap, cleaning detergent and dish soap, is a detergent or liquid used to assist in cleaning. It is usually a highly-foaming mixture of surfactants with low skin irritation ', 0, 4, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:13:51', '2020-09-22 19:13:51');
INSERT INTO `products` VALUES (251, '', 'dishwasher_winni\'s_fiori_bianchi', 'Winni S Ammorbidente', '6c536f98-cc6c-43fa-b66c-9660246408b6', 'Cleaning liquid (BrE: washing-up liquid), known as cleaning soap, cleaning detergent and dish soap, is a detergent or liquid used to assist in cleaning. It is usually a highly-foaming mixture of surfactants with low skin irritation ', 0, 7, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:13:52', '2020-09-22 19:13:52');
INSERT INTO `products` VALUES (252, '', 'kitchen_accessories_camp_cutlery', 'Camp Cutlery', 'f3057652-0c98-4ee7-b433-6e6f747cbeff', 'Kitchen accessories are the tools, utensils, appliances, dishes, and cookware used in food preparation, or the serving of food.Kitchen accessories can also be used to hold or store food before or after preparation.', 0, 10, 8, '20', 0, ' 1 pc(s)', 0, '2020-09-22 19:13:52', '2020-09-22 19:13:52');
INSERT INTO `products` VALUES (253, '', 'kitchen_accessories_dinner_spoons', 'Dinner Spoon', 'f5d66307-062f-4005-b0e1-31b4b48c35f8', 'Kitchen accessories are the tools, utensils, appliances, dishes, and cookware used in food preparation, or the serving of food.Kitchen accessories can also be used to hold or store food before or after preparation.', 0, 10, 8, '20', 0, ' 1 pc(s)', 0, '2020-09-22 19:13:53', '2020-09-22 19:13:53');
INSERT INTO `products` VALUES (254, '', 'kitchen_accessories_ice_cream_scoop', 'Ice Cream Scoop', 'c6e2f147-d538-484c-839c-8f9ddfba3fbf', 'Kitchen accessories are the tools, utensils, appliances, dishes, and cookware used in food preparation, or the serving of food.Kitchen accessories can also be used to hold or store food before or after preparation.', 0, 5, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:13:54', '2020-09-22 19:13:54');
INSERT INTO `products` VALUES (255, '', 'kitchen_accessories_kitchen_tools', 'Kitchen Tools', '3049b394-2def-4c94-8ef6-38f268424bc8', 'Kitchen accessories are the tools, utensils, appliances, dishes, and cookware used in food preparation, or the serving of food.Kitchen accessories can also be used to hold or store food before or after preparation.', 0, 15, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:13:54', '2020-09-22 19:13:54');
INSERT INTO `products` VALUES (256, '', 'kitchen_accessories_mash_strainers', 'Mesh Strainers', 'ff2fd9ef-aee2-4392-811c-2cb2108022c0', 'Kitchen accessories are the tools, utensils, appliances, dishes, and cookware used in food preparation, or the serving of food.Kitchen accessories can also be used to hold or store food before or after preparation.', 0, 5, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:13:55', '2020-09-22 19:13:55');
INSERT INTO `products` VALUES (257, '', 'kitchen_accessories_skimmer', 'Skimmers', 'e7bdeec3-e5f5-4685-be76-7f0f08503596', 'Kitchen accessories are the tools, utensils, appliances, dishes, and cookware used in food preparation, or the serving of food.Kitchen accessories can also be used to hold or store food before or after preparation.', 0, 3, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:13:55', '2020-09-22 19:13:55');
INSERT INTO `products` VALUES (258, '', 'kitchen_accessories_solid_turner', 'Solid Turner', '793a2173-ed53-4f64-9440-8386b6f2ca52', 'Kitchen accessories are the tools, utensils, appliances, dishes, and cookware used in food preparation, or the serving of food.Kitchen accessories can also be used to hold or store food before or after preparation.', 0, 3, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:13:56', '2020-09-22 19:13:56');
INSERT INTO `products` VALUES (259, '', 'laundry_products_woolite', 'Woolite Gentle Cycle', '6c85a411-ba92-447b-99ce-63ce891ab552', 'Laundry detergent, or washing powder, is a type of detergent (cleaning agent) that is added for cleaning laundry. While detergent is still sold in powdered form, liquid detergents have been taking major market shares in many countries since their introduction in the 1950s.', 0, 30, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:13:57', '2020-09-22 19:13:57');
INSERT INTO `products` VALUES (260, '', 'laundry_products_tide', 'Tide Downy', 'c0a660f4-6046-4635-bfcd-7da7d9d671f1', 'Laundry detergent, or washing powder, is a type of detergent (cleaning agent) that is added for cleaning laundry. While detergent is still sold in powdered form, liquid detergents have been taking major market shares in many countries since their introduction in the 1950s.', 0, 30, 21, '30', 0, ' 4 lb', 0, '2020-09-22 19:13:58', '2020-09-22 19:13:58');
INSERT INTO `products` VALUES (261, '', 'laundry_products_seventh_generation', 'Seventh Generation Sensative Skin', '842b9ba4-5110-4c6a-bdff-e5f349afa041', 'Laundry detergent, or washing powder, is a type of detergent (cleaning agent) that is added for cleaning laundry. While detergent is still sold in powdered form, liquid detergents have been taking major market shares in many countries since their introduction in the 1950s.', 0, 30, 24, '20', 0, ' 4 lb', 0, '2020-09-22 19:13:58', '2020-09-22 19:13:58');
INSERT INTO `products` VALUES (262, '', 'laundry_products_safe_wash', 'Safe Wash', '73570a2a-bae5-462a-bf39-d925e56bbe2e', 'Laundry detergent, or washing powder, is a type of detergent (cleaning agent) that is added for cleaning laundry. While detergent is still sold in powdered form, liquid detergents have been taking major market shares in many countries since their introduction in the 1950s.', 0, 30, 0, '100', 0, ' 4 lb', 0, '2020-09-22 19:13:59', '2020-09-22 19:13:59');
INSERT INTO `products` VALUES (263, '', 'laundry_products_purex', 'Purex Oxi', '251248f0-12be-4cf1-acd1-97031b3be7ef', 'Laundry detergent, or washing powder, is a type of detergent (cleaning agent) that is added for cleaning laundry. While detergent is still sold in powdered form, liquid detergents have been taking major market shares in many countries since their introduction in the 1950s.', 0, 25, 0, '100', 0, ' 4 lb', 0, '2020-09-22 19:14:00', '2020-09-22 19:14:00');
INSERT INTO `products` VALUES (264, '', 'laundry_products_persil', 'Persil Power Gel', '83a73c2b-a6bb-408f-a225-338cce76dab2', 'Laundry detergent, or washing powder, is a type of detergent (cleaning agent) that is added for cleaning laundry. While detergent is still sold in powdered form, liquid detergents have been taking major market shares in many countries since their introduction in the 1950s.', 0, 35, 0, '100', 0, ' 4 lb', 0, '2020-09-22 19:14:00', '2020-09-22 19:14:00');
INSERT INTO `products` VALUES (265, '', 'laundry_products_home_made_simple', 'Home Made Simple', '7f8e5738-197c-442d-9050-d3b1d5ea9e48', 'Laundry detergent, or washing powder, is a type of detergent (cleaning agent) that is added for cleaning laundry. While detergent is still sold in powdered form, liquid detergents have been taking major market shares in many countries since their introduction in the 1950s.', 0, 18, 0, '100', 0, ' 4 lb', 0, '2020-09-22 19:14:01', '2020-09-22 19:14:01');
INSERT INTO `products` VALUES (266, '', 'laundry_products_ecos', 'Ecos', 'a76d68b5-229c-4e0e-b349-baa73f249f64', 'Laundry detergent, or washing powder, is a type of detergent (cleaning agent) that is added for cleaning laundry. While detergent is still sold in powdered form, liquid detergents have been taking major market shares in many countries since their introduction in the 1950s.', 0, 28, 0, '100', 0, ' 4 lb', 0, '2020-09-22 19:14:02', '2020-09-22 19:14:02');
INSERT INTO `products` VALUES (267, '', 'laundry_products_daz', 'Daz', 'edcba20f-bca0-4df9-931e-19cd80c94057', 'Laundry detergent, or washing powder, is a type of detergent (cleaning agent) that is added for cleaning laundry. While detergent is still sold in powdered form, liquid detergents have been taking major market shares in many countries since their introduction in the 1950s.', 0, 32, 0, '100', 0, ' 6 lb', 0, '2020-09-22 19:14:02', '2020-09-22 19:14:02');
INSERT INTO `products` VALUES (268, '', 'laundry_products_chomel', 'Chomel Baby Laundry Detergent', '6a483d4a-cec3-4ec3-bd3f-8c94ac3832b9', 'Laundry detergent, or washing powder, is a type of detergent (cleaning agent) that is added for cleaning laundry. While detergent is still sold in powdered form, liquid detergents have been taking major market shares in many countries since their introduction in the 1950s.', 0, 50, 0, '100', 0, ' 6 lb', 0, '2020-09-22 19:14:03', '2020-09-22 19:14:03');
INSERT INTO `products` VALUES (269, '', 'laundry_products_chicco', 'Chicco Baby Laundry Detergent', '3a7785b3-9bcf-4986-847c-459a7c88fb88', 'Laundry detergent, or washing powder, is a type of detergent (cleaning agent) that is added for cleaning laundry. While detergent is still sold in powdered form, liquid detergents have been taking major market shares in many countries since their introduction in the 1950s.', 0, 48, 0, '100', 0, ' 6 lb', 0, '2020-09-22 19:14:04', '2020-09-22 19:14:04');
INSERT INTO `products` VALUES (270, '', 'laundry_products_babyhug', 'Babyhug Baby Laundry Detergent', '01a7eafd-4219-470d-af9a-65daf454e83e', 'Laundry detergent, or washing powder, is a type of detergent (cleaning agent) that is added for cleaning laundry. While detergent is still sold in powdered form, liquid detergents have been taking major market shares in many countries since their introduction in the 1950s.', 0, 40, 36, '10', 0, ' 6 lb', 0, '2020-09-22 19:14:05', '2020-09-22 19:14:05');
INSERT INTO `products` VALUES (271, '', 'pest_control_doff', 'Doff Insect Killer', '0c2e74a1-8100-46d7-82d1-17a04e2beccc', 'Pest control is the regulation or management of a species defined as a pest, a member of the animal kingdom that impacts adversely on human activities. The human response depends on the importance of the damage done, and will range from tolerance, through deterrence and management, to attempts to completely eradicate the pest.', 0, 10, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:14:05', '2020-09-22 19:14:05');
INSERT INTO `products` VALUES (272, '', 'pest_control_eco_deffence_home_pest_control', 'Homepest Control', '8e57f1a9-67b5-450d-a9d2-543699363f9d', 'Pest control is the regulation or management of a species defined as a pest, a member of the animal kingdom that impacts adversely on human activities. The human response depends on the importance of the damage done, and will range from tolerance, through deterrence and management, to attempts to completely eradicate the pest.', 0, 15, 12, '20', 0, ' 2 lb', 0, '2020-09-22 19:14:06', '2020-09-22 19:14:06');
INSERT INTO `products` VALUES (274, '', 'pest_control_kritterkill', 'Professional Moth Killer', '9ffee5a9-7ecc-47b0-848a-a2ba20e21a0b', 'Pest control is the regulation or management of a species defined as a pest, a member of the animal kingdom that impacts adversely on human activities. The human response depends on the importance of the damage done, and will range from tolerance, through deterrence and management, to attempts to completely eradicate the pest.', 0, 12, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:14:07', '2020-09-22 19:14:07');
INSERT INTO `products` VALUES (275, '', 'pest_control_naturally_green', 'Naturally Green No More Bugs', '7638e225-2adb-4559-9c9b-d741c82a28f5', 'Pest control is the regulation or management of a species defined as a pest, a member of the animal kingdom that impacts adversely on human activities. The human response depends on the importance of the damage done, and will range from tolerance, through deterrence and management, to attempts to completely eradicate the pest.', 0, 18, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:14:07', '2020-09-22 19:14:07');
INSERT INTO `products` VALUES (276, '', 'pest_control_sc_johnson_raid', 'Raid Ant Roach Barrier', '4c2cebfb-2a2a-429c-8342-d3cb455f8681', 'Pest control is the regulation or management of a species defined as a pest, a member of the animal kingdom that impacts adversely on human activities. The human response depends on the importance of the damage done, and will range from tolerance, through deterrence and management, to attempts to completely eradicate the pest.', 0, 18, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:14:08', '2020-09-22 19:14:08');
INSERT INTO `products` VALUES (277, '', 'pest_control_wondercide_indoor_pest_control', 'Wondercide Indoor Pest Control', '4035fc67-6e60-4fa1-81f2-9593701e056e', 'Pest control is the regulation or management of a species defined as a pest, a member of the animal kingdom that impacts adversely on human activities. The human response depends on the importance of the damage done, and will range from tolerance, through deterrence and management, to attempts to completely eradicate the pest.', 0, 20, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:14:09', '2020-09-22 19:14:09');
INSERT INTO `products` VALUES (278, '', 'butter_barney', 'Barney Butter', 'd52ebc66-1d9b-4aad-9acf-44bc30447dd9', 'Butter is a dairy product with high butterfat content which is solid when chilled and at room temperature in some regions, and liquid when warmed. It is made by churning fresh or fermented cream or milk to separate the butterfat from the buttermilk.', 0, 8, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:14:09', '2020-09-22 19:14:09');
INSERT INTO `products` VALUES (280, '', 'butter_kirkland', 'Kirkland Signature', '4f277fe0-cb41-4b6a-ad03-a88a8cb8932a', 'Butter is a dairy product with high butterfat content which is solid when chilled and at room temperature in some regions, and liquid when warmed. It is made by churning fresh or fermented cream or milk to separate the butterfat from the buttermilk.', 0, 9, 8, '11.1111111', 0, ' 1 pc(s)', 0, '2020-09-22 19:14:10', '2020-09-22 19:14:10');
INSERT INTO `products` VALUES (281, '', 'butter_nature\'s_tattva', 'Nature S Tattva Shea Butter', '453d4106-6ee5-4447-88a2-8d887b9bb292', 'Butter is a dairy product with high butterfat content which is solid when chilled and at room temperature in some regions, and liquid when warmed. It is made by churning fresh or fermented cream or milk to separate the butterfat from the buttermilk.', 0, 9, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:14:11', '2020-09-22 19:14:11');
INSERT INTO `products` VALUES (282, '', 'butter_nikki\'s', 'Nikki S Coconut Butter', '1f5865b4-621f-4b81-9f3c-9c2f8c8f9528', 'Butter is a dairy product with high butterfat content which is solid when chilled and at room temperature in some regions, and liquid when warmed. It is made by churning fresh or fermented cream or milk to separate the butterfat from the buttermilk.', 0, 10, 7, '30', 0, ' 1 pc(s)', 0, '2020-09-22 19:14:11', '2020-09-22 19:14:11');
INSERT INTO `products` VALUES (284, '', 'butter_tnuva', 'Tnuva Salted Butter', '4a3a6de4-af8c-4e60-958c-29eb306723e6', 'Butter is a dairy product with high butterfat content which is solid when chilled and at room temperature in some regions, and liquid when warmed. It is made by churning fresh or fermented cream or milk to separate the butterfat from the buttermilk.', 0, 10, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:14:12', '2020-09-22 19:14:12');
INSERT INTO `products` VALUES (285, '', 'butter_tru_nut', 'Tru Nut Powdered Peanut Butter', 'adfd07ef-2d9b-4f27-a0ae-bd53df0c6780', 'Butter is a dairy product with high butterfat content which is solid when chilled and at room temperature in some regions, and liquid when warmed. It is made by churning fresh or fermented cream or milk to separate the butterfat from the buttermilk.', 0, 10, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:14:13', '2020-09-22 19:14:13');
INSERT INTO `products` VALUES (286, '', 'butter_whole_earth', 'Whole Earth Crunchy Peanut Butter', '2c05a788-67ea-4cd6-ad91-843300c6bb06', 'Butter is a dairy product with high butterfat content which is solid when chilled and at room temperature in some regions, and liquid when warmed. It is made by churning fresh or fermented cream or milk to separate the butterfat from the buttermilk.', 0, 10, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:14:14', '2020-09-22 19:14:14');
INSERT INTO `products` VALUES (287, '', 'egg_cavanagh', 'Cavanagh Free Range Eggs', '6656a97c-dcf9-4241-aee6-f82ed3e0a254', 'The egg is the organic vessel containing the zygote in which an embryo develops until it can survive on its own, at which point the animal hatches. An egg results from fertilization of an egg cell. Most arthropods, vertebrates (excluding mammals), and mollusks lay eggs, although some, such as scorpions, do not.', 0, 2, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:14:15', '2020-09-22 19:14:15');
INSERT INTO `products` VALUES (288, '', 'egg_clarenece_court', 'Clarence Court 6 Free Range Eggs', '0b47b0a4-83e1-40f8-bb6a-7ff30065b0fc', 'The egg is the organic vessel containing the zygote in which an embryo develops until it can survive on its own, at which point the animal hatches. An egg results from fertilization of an egg cell. Most arthropods, vertebrates (excluding mammals), and mollusks lay eggs, although some, such as scorpions, do not.', 0, 2, 2, '0', 0, ' 1 pc(s)', 0, '2020-09-22 19:14:16', '2020-09-22 19:14:16');
INSERT INTO `products` VALUES (289, '', 'egg_cp', 'Cp Omega', 'e246ef2b-318e-4629-9b2c-c0319aa79688', 'The egg is the organic vessel containing the zygote in which an embryo develops until it can survive on its own, at which point the animal hatches. An egg results from fertilization of an egg cell. Most arthropods, vertebrates (excluding mammals), and mollusks lay eggs, although some, such as scorpions, do not.', 0, 2, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:14:17', '2020-09-22 19:14:17');
INSERT INTO `products` VALUES (290, '', 'egg_freshlay_golden_yolks', 'Freshlay Golden Yolks', '4fe5f936-2da8-4b32-9a05-76764ac2ded1', 'The egg is the organic vessel containing the zygote in which an embryo develops until it can survive on its own, at which point the animal hatches. An egg results from fertilization of an egg cell. Most arthropods, vertebrates (excluding mammals), and mollusks lay eggs, although some, such as scorpions, do not.', 0, 3, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:14:18', '2020-09-22 19:14:18');
INSERT INTO `products` VALUES (291, '', 'egg_gold_hen', 'Golden Cage Free', '563c9315-a0da-472e-bef4-21809454cfed', 'The egg is the organic vessel containing the zygote in which an embryo develops until it can survive on its own, at which point the animal hatches. An egg results from fertilization of an egg cell. Most arthropods, vertebrates (excluding mammals), and mollusks lay eggs, although some, such as scorpions, do not.', 0, 3, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:14:19', '2020-09-22 19:14:19');
INSERT INTO `products` VALUES (292, '', 'egg_happy_egg_organic', 'Happy Egg Organic', 'efac2253-6c91-43ab-91dc-d92e615e4c6a', 'The egg is the organic vessel containing the zygote in which an embryo develops until it can survive on its own, at which point the animal hatches. An egg results from fertilization of an egg cell. Most arthropods, vertebrates (excluding mammals), and mollusks lay eggs, although some, such as scorpions, do not.', 0, 4, 4, '0', 0, ' 1 pc(s)', 0, '2020-09-22 19:14:19', '2020-09-22 19:14:19');
INSERT INTO `products` VALUES (293, '', 'egg_morrisons', 'Morrisons 6 Medium Free Range Golden Yolk Eggs', '50c1b984-48c4-4c54-8e85-7cf8a1b14f33', 'The egg is the organic vessel containing the zygote in which an embryo develops until it can survive on its own, at which point the animal hatches. An egg results from fertilization of an egg cell. Most arthropods, vertebrates (excluding mammals), and mollusks lay eggs, although some, such as scorpions, do not.', 0, 4, 4, '0', 0, ' 1 pc(s)', 0, '2020-09-22 19:14:20', '2020-09-22 19:14:20');
INSERT INTO `products` VALUES (294, '', 'egg_nutri_plus_telur_kampang_omega3', 'Nutri Plus Telur Omega3', 'eab9ba68-ef32-43be-83c1-efdb9025a8f4', 'The egg is the organic vessel containing the zygote in which an embryo develops until it can survive on its own, at which point the animal hatches. An egg results from fertilization of an egg cell. Most arthropods, vertebrates (excluding mammals), and mollusks lay eggs, although some, such as scorpions, do not.', 0, 4, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:14:21', '2020-09-22 19:14:21');
INSERT INTO `products` VALUES (295, '', 'milk_arla_lacto_free', 'Arla Lacto Free Semi Skimmed Milk', '90faaff2-70ee-47d3-a403-440bb9b94792', 'Milk is a nutrient-rich, white liquid food produced by the mammary glands of mammals. It is the primary source of nutrition for infant mammals (including humans who are breastfed) before they are able to digest other types of food.', 0, 4, 4, '0', 0, ' 2 lb', 0, '2020-09-22 19:14:22', '2020-09-22 19:14:22');
INSERT INTO `products` VALUES (296, '', 'milk_arla_low_fat1.5', 'Arla All Natural Milk Goodness Low Fat', '6e6b1f0f-38d1-47a2-8636-78159016eb89', 'Milk is a nutrient-rich, white liquid food produced by the mammary glands of mammals. It is the primary source of nutrition for infant mammals (including humans who are breastfed) before they are able to digest other types of food.', 0, 4, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:14:23', '2020-09-22 19:14:23');
INSERT INTO `products` VALUES (297, '', 'milk_f&n_magnolia.5', 'Magnolia Fresh Milk', '970dd955-77ed-4b21-9712-65ba929f2777', 'Milk is a nutrient-rich, white liquid food produced by the mammary glands of mammals. It is the primary source of nutrition for infant mammals (including humans who are breastfed) before they are able to digest other types of food.', 0, 4, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:14:23', '2020-09-22 19:14:23');
INSERT INTO `products` VALUES (298, '', 'milk_greenfields_choco_malt_flavoured', 'Greenfields Chocolate Malt', '0bc1602e-0334-46ae-aab5-33ae30142c5a', 'Milk is a nutrient-rich, white liquid food produced by the mammary glands of mammals. It is the primary source of nutrition for infant mammals (including humans who are breastfed) before they are able to digest other types of food.', 0, 5, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:14:24', '2020-09-22 19:14:24');
INSERT INTO `products` VALUES (299, '', 'milk_heritage', 'Heritage Special Long Life Milk', 'b6faae50-bb53-4709-9077-81818f7829e9', 'Milk is a nutrient-rich, white liquid food produced by the mammary glands of mammals. It is the primary source of nutrition for infant mammals (including humans who are breastfed) before they are able to digest other types of food.', 0, 5, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:14:25', '2020-09-22 19:14:25');
INSERT INTO `products` VALUES (300, '', 'milk_lactaid', 'Lactaid', 'db37d8c7-ffc2-459a-88db-ad9db196b955', 'Milk is a nutrient-rich, white liquid food produced by the mammary glands of mammals. It is the primary source of nutrition for infant mammals (including humans who are breastfed) before they are able to digest other types of food.', 0, 5, 5, '0', 0, ' 2 lb', 0, '2020-09-22 19:14:26', '2020-09-22 19:14:26');
INSERT INTO `products` VALUES (301, '', 'milk_living_planet', 'Living Planet Organic Dairy Milk', '7daa6e5c-f501-486e-8dea-79bfa15445bd', 'Milk is a nutrient-rich, white liquid food produced by the mammary glands of mammals. It is the primary source of nutrition for infant mammals (including humans who are breastfed) before they are able to digest other types of food.', 0, 5, 5, '0', 0, ' 2 lb', 0, '2020-09-22 19:14:27', '2020-09-22 19:14:27');
INSERT INTO `products` VALUES (302, '', 'milk_cream_califia_farms', 'Betterhalf Original', '1b0090f1-491b-4160-a8f1-b66c83639e92', 'Cream is a dairy product composed of the higher-fat layer skimmed from the top of milk before homogenization. In un-homogenized milk, the fat, which is less dense, eventually rises to the top.', 0, 5, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:14:28', '2020-09-22 19:14:28');
INSERT INTO `products` VALUES (303, '', 'milk_cream_clover', 'Clover Original Cream', 'a7e7a148-fb08-4d99-bfd6-19ad26ad77d4', 'Cream is a dairy product composed of the higher-fat layer skimmed from the top of milk before homogenization. In un-homogenized milk, the fat, which is less dense, eventually rises to the top.', 0, 5, 4, '20', 0, ' 2 lb', 0, '2020-09-22 19:14:28', '2020-09-22 19:14:28');
INSERT INTO `products` VALUES (304, '', 'milk_cream_fernleaf', 'Fernleaf Full Cream', '8f5e078e-50ed-4e6b-8039-dd7d2f6cf13d', 'Cream is a dairy product composed of the higher-fat layer skimmed from the top of milk before homogenization. In un-homogenized milk, the fat, which is less dense, eventually rises to the top.', 0, 5, 4, '20', 0, ' 2 lb', 0, '2020-09-22 19:14:29', '2020-09-22 19:14:29');
INSERT INTO `products` VALUES (305, '', 'powder_milk_scape', 'Scape Milk Powder', 'bab8356d-762c-448d-aa3f-226a11d8e414', 'Powdered milk or dried milk is a manufactured dairy product made by evaporating milk to dryness. One purpose of drying milk is to preserve it; milk powder has a far longer shelf life than liquid milk and does not need to be refrigerated, due to its low moisture content. Another purpose is to reduce its bulk for economy of transportation.', 0, 5, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:14:30', '2020-09-22 19:14:30');
INSERT INTO `products` VALUES (306, '', 'powder_milk_z_natural_foods', 'Natural Foods Organic Coconut Milk Powder', 'b4620b54-df26-4ba3-9f8a-d45b4ba84f13', 'Powdered milk or dried milk is a manufactured dairy product made by evaporating milk to dryness. One purpose of drying milk is to preserve it; milk powder has a far longer shelf life than liquid milk and does not need to be refrigerated, due to its low moisture content. Another purpose is to reduce its bulk for economy of transportation.', 0, 5, 4, '20', 0, ' 2 lb', 0, '2020-09-22 19:14:31', '2020-09-22 19:14:31');
INSERT INTO `products` VALUES (307, '', 'powder_milk_param', 'Param Premium Milk Powder', 'cd2d9023-0db3-4f7e-8180-424f223507b4', 'Powdered milk or dried milk is a manufactured dairy product made by evaporating milk to dryness. One purpose of drying milk is to preserve it; milk powder has a far longer shelf life than liquid milk and does not need to be refrigerated, due to its low moisture content. Another purpose is to reduce its bulk for economy of transportation.', 0, 5, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:14:32', '2020-09-22 19:14:32');
INSERT INTO `products` VALUES (308, '', 'powder_milk_nestle_nido_900gram', 'Nestle Nido', '0ec61b4e-934f-4b64-86f7-455e0c80002f', 'Powdered milk or dried milk is a manufactured dairy product made by evaporating milk to dryness. One purpose of drying milk is to preserve it; milk powder has a far longer shelf life than liquid milk and does not need to be refrigerated, due to its low moisture content. Another purpose is to reduce its bulk for economy of transportation.', 0, 5, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:14:32', '2020-09-22 19:14:32');
INSERT INTO `products` VALUES (309, '', 'powder_milk_milgro', 'Milgro', 'cf524c9b-7d58-43bc-b44d-2f763eadcf33', 'Powdered milk or dried milk is a manufactured dairy product made by evaporating milk to dryness. One purpose of drying milk is to preserve it; milk powder has a far longer shelf life than liquid milk and does not need to be refrigerated, due to its low moisture content. Another purpose is to reduce its bulk for economy of transportation.', 0, 5, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:14:33', '2020-09-22 19:14:33');
INSERT INTO `products` VALUES (310, '', 'powder_milk_lifestyle_food', 'Lifestyle Soya Milk Powder', 'cf0b6735-6c69-4c7d-9d72-c0d03e15d4bc', 'Powdered milk or dried milk is a manufactured dairy product made by evaporating milk to dryness. One purpose of drying milk is to preserve it; milk powder has a far longer shelf life than liquid milk and does not need to be refrigerated, due to its low moisture content. Another purpose is to reduce its bulk for economy of transportation.', 0, 5, 5, '0', 0, ' 2 lb', 0, '2020-09-22 19:14:34', '2020-09-22 19:14:34');
INSERT INTO `products` VALUES (311, '', 'powder_milk_goldmilys', 'Goldmilys Instant Milk Powder', '7b296f92-6b53-4881-b524-1dbc24bf6600', 'Powdered milk or dried milk is a manufactured dairy product made by evaporating milk to dryness. One purpose of drying milk is to preserve it; milk powder has a far longer shelf life than liquid milk and does not need to be refrigerated, due to its low moisture content. Another purpose is to reduce its bulk for economy of transportation.', 0, 4, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:14:35', '2020-09-22 19:14:35');
INSERT INTO `products` VALUES (312, '', 'milk_cream_nammilk', 'Nammilk Greek Style', '40bc3806-cac4-41b8-8ed8-0f9e3ca7cbd0', 'yoghurt, yogourt or yoghourt, is a food produced by bacterial fermentation of milk.[1] The bacteria used to make yogurt are known as yogurt cultures.', 0, 4, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:14:36', '2020-09-22 19:14:36');
INSERT INTO `products` VALUES (313, '', 'yogourt_astro_balkan', 'Astro Original', 'ec7179fa-1145-4efd-8933-dcb1bdfea168', 'yoghurt, yogourt or yoghourt, is a food produced by bacterial fermentation of milk.[1] The bacteria used to make yogurt are known as yogurt cultures.', 0, 4, 3, '25', 0, ' 2 lb', 0, '2020-09-22 19:14:36', '2020-09-22 19:14:36');
INSERT INTO `products` VALUES (314, '', 'yogourt_astro_bio_best', 'Astro Bio Best', '581a4790-f8ec-45f2-ad0a-25e49cff93ff', 'yoghurt, yogourt or yoghourt, is a food produced by bacterial fermentation of milk.[1] The bacteria used to make yogurt are known as yogurt cultures.', 0, 4, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:14:37', '2020-09-22 19:14:37');
INSERT INTO `products` VALUES (315, '', 'yogourt_chobani_plain_non_fat', 'Chonani', '362d479a-c45a-4339-8e81-f2a6a8a0e735', 'yoghurt, yogourt or yoghourt, is a food produced by bacterial fermentation of milk.[1] The bacteria used to make yogurt are known as yogurt cultures.', 0, 4, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:14:38', '2020-09-22 19:14:38');
INSERT INTO `products` VALUES (316, '', 'yogourt_chobani_playogourt_chobani_vanillain_non_fat', 'Chonani Vanilla Blended', '9d2c11eb-a88b-4422-8dfc-0c7c5d962046', 'yoghurt, yogourt or yoghourt, is a food produced by bacterial fermentation of milk.[1] The bacteria used to make yogurt are known as yogurt cultures.', 0, 4, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:14:39', '2020-09-22 19:14:39');
INSERT INTO `products` VALUES (317, '', 'yogourt_dannon_strawberry', 'Dannon Strawberry', 'f28efc7f-1f86-4fa3-9146-00616b874b73', 'yoghurt, yogourt or yoghourt, is a food produced by bacterial fermentation of milk.[1] The bacteria used to make yogurt are known as yogurt cultures.', 0, 4, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:14:40', '2020-09-22 19:14:40');
INSERT INTO `products` VALUES (318, '', 'yogourt_dannon_vanilla', 'Dannon Vanilla', '321551ab-f3f6-4774-bac7-528e246c2298', 'yoghurt, yogourt or yoghourt, is a food produced by bacterial fermentation of milk.[1] The bacteria used to make yogurt are known as yogurt cultures.', 0, 4, 0, '100', 0, '2 lb', 0, '2020-09-22 19:14:41', '2020-09-22 19:14:41');
INSERT INTO `products` VALUES (319, '', 'yogourt_marigold', 'Marigold Yogourt', '864094af-1071-4636-8288-fb7752d483c1', 'yoghurt, yogourt or yoghourt, is a food produced by bacterial fermentation of milk.[1] The bacteria used to make yogurt are known as yogurt cultures.', 0, 5, 0, '100', 0, '2 lb', 0, '2020-09-22 19:14:42', '2020-09-22 19:14:42');
INSERT INTO `products` VALUES (320, '', 'yogourt_stony_field_vanilla_fudge_swirl', 'Stony Field Vanilla', 'b4e0fbe5-a42f-485c-9753-47ab0b0527e7', 'yoghurt, yogourt or yoghourt, is a food produced by bacterial fermentation of milk.[1] The bacteria used to make yogurt are known as yogurt cultures.', 0, 5, 5, '0', 0, ' 2 lb', 0, '2020-09-22 19:14:43', '2020-09-22 19:14:43');
INSERT INTO `products` VALUES (321, '', 'oil_1_2_3_vegitable', '1 2 3 Vegetable Oil', 'caa34203-a8b0-46af-8261-0808d0a3a099', 'An oil is any nonpolar chemical substance that is a viscous liquid at ambient temperatures and is both hydrophobic (does not mix with water, literally water fearing) and lipophilic (mixes with other oils, literally fat loving). Oils have a high carbon and hydrogen content and are usually flammable and surface active.', 0, 5, 4, '20', 0, ' 2 lb', 0, '2020-09-22 19:14:43', '2020-09-22 19:14:43');
INSERT INTO `products` VALUES (322, '', 'oil_clover_valley', 'Clover Valley Vegetable Oil', '26f08a68-141b-45f6-a7b1-a71b6eb68d3f', 'An oil is any nonpolar chemical substance that is a viscous liquid at ambient temperatures and is both hydrophobic (does not mix with water, literally water fearing) and lipophilic (mixes with other oils, literally fat loving). Oils have a high carbon and hydrogen content and are usually flammable and surface active.', 0, 8, 6, '25', 0, ' 4 lb', 0, '2020-09-22 19:14:44', '2020-09-22 19:14:44');
INSERT INTO `products` VALUES (323, '', 'oil_daisy', 'Daisy Corn Oil', 'f9522933-a645-41ce-929b-1e463de1611e', 'An oil is any nonpolar chemical substance that is a viscous liquid at ambient temperatures and is both hydrophobic (does not mix with water, literally water fearing) and lipophilic (mixes with other oils, literally fat loving). Oils have a high carbon and hydrogen content and are usually flammable and surface active.', 0, 8, 0, '100', 0, ' 3 lb', 0, '2020-09-22 19:14:45', '2020-09-22 19:14:45');
INSERT INTO `products` VALUES (324, '', 'oil_eva', 'Eva Corn Oil', '5438a6ab-e8a5-4a0f-87a1-942f155b9311', 'An oil is any nonpolar chemical substance that is a viscous liquid at ambient temperatures and is both hydrophobic (does not mix with water, literally water fearing) and lipophilic (mixes with other oils, literally fat loving). Oils have a high carbon and hydrogen content and are usually flammable and surface active.', 0, 8, 0, '100', 0, ' 3 lb', 0, '2020-09-22 19:14:46', '2020-09-22 19:14:46');
INSERT INTO `products` VALUES (325, '', 'oil_goya', 'Goya Extra Virgin Olive Oil', '57184650-9920-4db9-a552-7b6e118bcf74', 'An oil is any nonpolar chemical substance that is a viscous liquid at ambient temperatures and is both hydrophobic (does not mix with water, literally water fearing) and lipophilic (mixes with other oils, literally fat loving). Oils have a high carbon and hydrogen content and are usually flammable and surface active.', 0, 10, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:14:47', '2020-09-22 19:14:47');
INSERT INTO `products` VALUES (326, '', 'oil_natural', 'Naturel Premium Sunflower Oil', '57ae8f64-5c9e-4872-86dd-6474d9da4a8d', 'An oil is any nonpolar chemical substance that is a viscous liquid at ambient temperatures and is both hydrophobic (does not mix with water, literally water fearing) and lipophilic (mixes with other oils, literally fat loving). Oils have a high carbon and hydrogen content and are usually flammable and surface active.', 0, 8, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:14:47', '2020-09-22 19:14:47');
INSERT INTO `products` VALUES (327, '', 'oil_san_lucas', 'San Lucas Corn Oil', '02a800a1-cce5-4284-945d-bed903cb0a23', 'An oil is any nonpolar chemical substance that is a viscous liquid at ambient temperatures and is both hydrophobic (does not mix with water, literally water fearing) and lipophilic (mixes with other oils, literally fat loving). Oils have a high carbon and hydrogen content and are usually flammable and surface active.', 0, 7, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:14:48', '2020-09-22 19:14:48');
INSERT INTO `products` VALUES (328, '', 'oil_sunfoil', 'Sunfoil Sunflower Oil', 'c508516b-2ff2-468c-9ebf-40786fab62cc', 'An oil is any nonpolar chemical substance that is a viscous liquid at ambient temperatures and is both hydrophobic (does not mix with water, literally water fearing) and lipophilic (mixes with other oils, literally fat loving). Oils have a high carbon and hydrogen content and are usually flammable and surface active.', 0, 9, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:14:49', '2020-09-22 19:14:49');
INSERT INTO `products` VALUES (329, '', 'chefa_choice_bamboo_rice', 'Chef Choice Bamboo Rice', 'b4fee5c6-077e-4486-b209-5df016ac002d', 'Rice is the seed of the grass species Oryza sativa (Asian rice) or Oryza glaberrima (African rice). As a cereal grain, it is the most widely consumed staple food for a large part of the world\'s human population, especially in Asia.', 0, 9, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:14:50', '2020-09-22 19:14:50');
INSERT INTO `products` VALUES (330, '', 'everyday_essentials_Golden_Vegetable_Savoury_Rice', 'Everyday Essentials Golden Vegetable Savoury Rice', '3ada413e-1513-494b-9f24-ec18840bd824', 'Rice is the seed of the grass species Oryza sativa (Asian rice) or Oryza glaberrima (African rice). As a cereal grain, it is the most widely consumed staple food for a large part of the world\'s human population, especially in Asia.', 0, 5, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:14:50', '2020-09-22 19:14:50');
INSERT INTO `products` VALUES (331, '', 'hulas_premium_basmati_rice', 'Hulas Premium Basmati Rice', 'e625ba61-7415-4e42-8567-aa1060dafbeb', 'Rice is the seed of the grass species Oryza sativa (Asian rice) or Oryza glaberrima (African rice). As a cereal grain, it is the most widely consumed staple food for a large part of the world\'s human population, especially in Asia.', 0, 5, 4, '20', 0, ' 2 lb', 0, '2020-09-22 19:14:51', '2020-09-22 19:14:51');
INSERT INTO `products` VALUES (332, '', 'Iberia_Long_Grain_Enriched_Fragrant_Rice_18_lbs', 'Jasmine Long Grain Fragrant Rice', 'aef38cec-a227-4e09-958d-0ca767c3302d', 'Rice is the seed of the grass species Oryza sativa (Asian rice) or Oryza glaberrima (African rice). As a cereal grain, it is the most widely consumed staple food for a large part of the world\'s human population, especially in Asia.', 0, 40, 36, '10', 0, ' 20 lb', 0, '2020-09-22 19:14:52', '2020-09-22 19:14:52');
INSERT INTO `products` VALUES (333, '', 'india_gate_basmati_rice', 'India Gate Basmati Rice', '319e5786-e212-4dc4-bd12-a01f6b385418', 'Rice is the seed of the grass species Oryza sativa (Asian rice) or Oryza glaberrima (African rice). As a cereal grain, it is the most widely consumed staple food for a large part of the world\'s human population, especially in Asia.', 0, 40, 0, '100', 0, ' 20 lb', 0, '2020-09-22 19:14:53', '2020-09-22 19:14:53');
INSERT INTO `products` VALUES (334, '', 'nature\'s_gift_basmati_rice', 'Natures Gift Basmati Rice', '92d7f819-ab60-46e9-a1a3-056c8dcbb374', 'Rice is the seed of the grass species Oryza sativa (Asian rice) or Oryza glaberrima (African rice). As a cereal grain, it is the most widely consumed staple food for a large part of the world\'s human population, especially in Asia.', 0, 20, 16, '20', 0, ' 10 lb', 0, '2020-09-22 19:14:54', '2020-09-22 19:14:54');
INSERT INTO `products` VALUES (335, '', 'seeds_of_change_brown_basmati_rice', 'Seeds Of Change Brown Basmati Rice', '5d44da2a-714e-45aa-9000-202f2758adee', 'Rice is the seed of the grass species Oryza sativa (Asian rice) or Oryza glaberrima (African rice). As a cereal grain, it is the most widely consumed staple food for a large part of the world\'s human population, especially in Asia.', 0, 5, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:14:55', '2020-09-22 19:14:55');
INSERT INTO `products` VALUES (336, '', 'tai_ping_Sushi_Rice_1kg', 'Tai Ping Sushi Rice', 'fdde1042-8446-49cd-9aff-fde4c5ce0275', 'Rice is the seed of the grass species Oryza sativa (Asian rice) or Oryza glaberrima (African rice). As a cereal grain, it is the most widely consumed staple food for a large part of the world\'s human population, especially in Asia.', 0, 5, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:14:55', '2020-09-22 19:14:55');
INSERT INTO `products` VALUES (337, '', 'clover_valley_sea_salt_grinder', 'Clover Valley Sea Salt', '479955dd-2cf1-4133-b0a7-250091e63cc4', 'Salt is a mineral composed primarily of sodium chloride (NaCl), a chemical compound belonging to the larger class of salts; salt in its natural form as a crystalline mineral is known as rock salt .', 0, 3, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:14:56', '2020-09-22 19:14:56');
INSERT INTO `products` VALUES (338, '', 'gathering_place_sea_salt_100g_grinder', 'Gathering Place Sea Salt', '348d36f3-344e-479d-b6af-3aa06fd80ec2', 'Salt is a mineral composed primarily of sodium chloride (NaCl), a chemical compound belonging to the larger class of salts; salt in its natural form as a crystalline mineral is known as rock salt .', 0, 2, 2, '0', 0, ' 1 pc(s)', 0, '2020-09-22 19:14:57', '2020-09-22 19:14:57');
INSERT INTO `products` VALUES (339, '', 'herbivore_Calm_deadsea_soaking_salt', 'Herbivore Calm Dead Sea Soaking Salt', '5c647f84-d9e9-4aa7-9207-35e09bf03a45', 'Salt is a mineral composed primarily of sodium chloride (NaCl), a chemical compound belonging to the larger class of salts; salt in its natural form as a crystalline mineral is known as rock salt .', 0, 4, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:14:58', '2020-09-22 19:14:58');
INSERT INTO `products` VALUES (340, '', 'nomu_atlantic_Sea_Salt_Grinder', 'Nomu Sea Salt', 'b6dd4459-f513-4aaf-8350-ac7e643e91d1', 'Salt is a mineral composed primarily of sodium chloride (NaCl), a chemical compound belonging to the larger class of salts; salt in its natural form as a crystalline mineral is known as rock salt .', 0, 4, 4, '0', 0, ' 1 pc(s)', 0, '2020-09-22 19:14:58', '2020-09-22 19:14:58');
INSERT INTO `products` VALUES (341, '', 'tasteology_chili_salt', 'Tasteology Chili Salt', '6a2bc3b3-2685-4fff-a109-ef3af829eeac', 'Salt is a mineral composed primarily of sodium chloride (NaCl), a chemical compound belonging to the larger class of salts; salt in its natural form as a crystalline mineral is known as rock salt .', 0, 4, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:14:59', '2020-09-22 19:14:59');
INSERT INTO `products` VALUES (342, '', 'the_spice_house_white_Truffle_Salt', 'The Spice House White Truffle Salt', '31c37ef7-bbec-43f5-a94c-73469a9c8c23', 'Salt is a mineral composed primarily of sodium chloride (NaCl), a chemical compound belonging to the larger class of salts; salt in its natural form as a crystalline mineral is known as rock salt .', 0, 5, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:15:00', '2020-09-22 19:15:00');
INSERT INTO `products` VALUES (343, '', 'gula_aromatic_brown_sugar', 'Gula Aromatic Brown Sugar', 'f269d3d1-af3c-4f6c-88bb-43231a69cde4', 'Sugar is the generic name for sweet-tasting, soluble carbohydrates, many of which are used in food. Simple sugars, also called monosaccharides, include glucose, fructose, and galactose.', 0, 5, 5, '0', 0, ' 2 lb', 0, '2020-09-22 19:15:00', '2020-09-22 19:15:00');
INSERT INTO `products` VALUES (344, '', 'sis_white_sugar', 'Sis White Sugar', 'eed92c02-6fa3-4ff2-a8e0-fff241ec35dc', 'Sugar is the generic name for sweet-tasting, soluble carbohydrates, many of which are used in food. Simple sugars, also called monosaccharides, include glucose, fructose, and galactose.', 0, 5, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:15:01', '2020-09-22 19:15:01');
INSERT INTO `products` VALUES (345, '', 'tate_sugar', 'Tate Lyle White Sugar', '2c55cc7e-64aa-4ea0-8f2f-3b070367317e', 'Sugar is the generic name for sweet-tasting, soluble carbohydrates, many of which are used in food. Simple sugars, also called monosaccharides, include glucose, fructose, and galactose.', 0, 5, 4, '20', 0, ' 2 lb', 0, '2020-09-22 19:15:02', '2020-09-22 19:15:02');
INSERT INTO `products` VALUES (346, '', 'the_pantry_icing_Sugar', 'The Pantry Icing Sugar', 'a548ea28-587d-4d0c-a37d-88d32517db2d', 'Sugar is the generic name for sweet-tasting, soluble carbohydrates, many of which are used in food. Simple sugars, also called monosaccharides, include glucose, fructose, and galactose.', 0, 8, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:15:03', '2020-09-22 19:15:03');
INSERT INTO `products` VALUES (347, '', 'whitworths_sugar', 'Whitworths White Sugar', '4e676b14-9454-4c16-be86-3144e4d09edd', 'Sugar is the generic name for sweet-tasting, soluble carbohydrates, many of which are used in food. Simple sugars, also called monosaccharides, include glucose, fructose, and galactose.', 0, 4, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:15:03', '2020-09-22 19:15:03');
INSERT INTO `products` VALUES (348, '', 'Wholesome_Organic_Cane_Sugar_2LB', 'Wholesome Organic Cane Sugar', 'c02b82b9-f7ad-4978-826e-aad1d1d79c89', 'Sugar is the generic name for sweet-tasting, soluble carbohydrates, many of which are used in food. Simple sugars, also called monosaccharides, include glucose, fructose, and galactose.', 0, 6, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:15:04', '2020-09-22 19:15:04');
INSERT INTO `products` VALUES (349, '', 'club_house_la_grille_smouldering_smoked_applewood_seasoning', 'Club House La Grille Seasoning', 'f2999fa7-948d-4fc7-acd4-025a0c653023', 'A spice is a seed, fruit, root, bark, or other plant substance primarily used for flavoring, coloring or preserving food. Spices are distinguished from herbs, which are the leaves, flowers, or stems of plants used for flavoring or as a garnish.', 0, 2, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:15:05', '2020-09-22 19:15:05');
INSERT INTO `products` VALUES (350, '', 'crispy_chill_flakes', 'Crispy Chili Flakes', 'bfe6832c-7bde-4167-a622-db9023168d98', 'A spice is a seed, fruit, root, bark, or other plant substance primarily used for flavoring, coloring or preserving food. Spices are distinguished from herbs, which are the leaves, flowers, or stems of plants used for flavoring or as a garnish.', 0, 4, 4, '0', 0, ' 1 pc(s)', 0, '2020-09-22 19:15:05', '2020-09-22 19:15:05');
INSERT INTO `products` VALUES (351, '', 'Dell_Cove_Spices_Spicy_Chipotle_Seasoning', 'Dell Clove Spicy Chipotle Seasoning', '2ca7c551-bf76-43fe-a590-23eb7cc5b449', 'A spice is a seed, fruit, root, bark, or other plant substance primarily used for flavoring, coloring or preserving food. Spices are distinguished from herbs, which are the leaves, flowers, or stems of plants used for flavoring or as a garnish.', 0, 4, 4, '0', 0, ' 1 pc(s)', 0, '2020-09-22 19:15:06', '2020-09-22 19:15:06');
INSERT INTO `products` VALUES (352, '', 'Frontier_Curry_Powder', 'Frontier Curry Powder', '23193a2a-af4d-4903-9450-a45be06c8f72', 'A spice is a seed, fruit, root, bark, or other plant substance primarily used for flavoring, coloring or preserving food. Spices are distinguished from herbs, which are the leaves, flowers, or stems of plants used for flavoring or as a garnish.', 0, 4, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:15:07', '2020-09-22 19:15:07');
INSERT INTO `products` VALUES (353, '', 'mccormic_chilli_flakes', 'Mc Cormic Chilli Flakes', '5a6c0e6b-5751-4388-9070-faa02ae62a50', 'A spice is a seed, fruit, root, bark, or other plant substance primarily used for flavoring, coloring or preserving food. Spices are distinguished from herbs, which are the leaves, flowers, or stems of plants used for flavoring or as a garnish.', 0, 4, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:15:08', '2020-09-22 19:15:08');
INSERT INTO `products` VALUES (354, '', 'redman_red_chilli_powder', 'Redman Red Chilli Powder', '81b99a5b-e644-4a36-a02f-5c49993c4bdb', 'A spice is a seed, fruit, root, bark, or other plant substance primarily used for flavoring, coloring or preserving food. Spices are distinguished from herbs, which are the leaves, flowers, or stems of plants used for flavoring or as a garnish.', 0, 3, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:15:09', '2020-09-22 19:15:09');
INSERT INTO `products` VALUES (355, '', 'tajin_clasico_seasoning', 'Tajin Clasico Seasoning', 'b48f1b93-3c9a-4369-96b4-9d73c3b13da0', 'A spice is a seed, fruit, root, bark, or other plant substance primarily used for flavoring, coloring or preserving food. Spices are distinguished from herbs, which are the leaves, flowers, or stems of plants used for flavoring or as a garnish.', 0, 3, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:15:09', '2020-09-22 19:15:09');
INSERT INTO `products` VALUES (356, '', 'weber_all_natural', 'Weber Bold N Smoky Chipotle Seasoning', '085c981a-a5b5-4cde-afa1-81ede684fb45', 'A spice is a seed, fruit, root, bark, or other plant substance primarily used for flavoring, coloring or preserving food. Spices are distinguished from herbs, which are the leaves, flowers, or stems of plants used for flavoring or as a garnish.', 0, 3, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:15:10', '2020-09-22 19:15:10');
INSERT INTO `products` VALUES (357, '', 'best_taste_Bread_garry', 'Garry Best Taste Bread', 'e2412940-d6be-422d-82c1-59c5a5970852', 'Bread is a staple food prepared from a dough of flour and water, usually by baking. Throughout recorded history it has been a prominent food in large parts of the world and is one of the oldest man-made foods, having been of significant importance since the dawn of agriculture.', 0, 3, 0, '100', 0, ' 1 lb', 0, '2020-09-22 19:15:11', '2020-09-22 19:15:11');
INSERT INTO `products` VALUES (358, '', 'Everyday_Essentials_Wholemeal_Bread', 'Everyday Essentials Wholemeal Bread', 'aedb2f77-0842-4686-9845-63545500cc39', 'Bread is a staple food prepared from a dough of flour and water, usually by baking. Throughout recorded history it has been a prominent food in large parts of the world and is one of the oldest man-made foods, having been of significant importance since the dawn of agriculture.', 0, 3, 0, '100', 0, '1 lb', 0, '2020-09-22 19:15:12', '2020-09-22 19:15:12');
INSERT INTO `products` VALUES (359, '', 'Farmhouse_Multigrain_Batch_loaf_purple_pack', 'Farmhouse Multigrain Batch Loaf', '437c5e86-45e9-462c-accf-1cf5e8c1180a', 'Bread is a staple food prepared from a dough of flour and water, usually by baking. Throughout recorded history it has been a prominent food in large parts of the world and is one of the oldest man-made foods, having been of significant importance since the dawn of agriculture.', 0, 3, 0, '100', 0, ' 1 lb', 0, '2020-09-22 19:15:13', '2020-09-22 19:15:13');
INSERT INTO `products` VALUES (360, '', 'roberts_Seriously_Seeded_Bloomer', 'Roberts Seeded Bloomer', '51f11cd8-28c5-46d0-84ae-1ebbece3b64f', 'Bread is a staple food prepared from a dough of flour and water, usually by baking. Throughout recorded history it has been a prominent food in large parts of the world and is one of the oldest man-made foods, having been of significant importance since the dawn of agriculture.', 0, 4, 0, '100', 0, ' 1 lb', 0, '2020-09-22 19:15:14', '2020-09-22 19:15:14');
INSERT INTO `products` VALUES (361, '', 'the_village_bakery_danish_low_fat', 'The Village Bakery Low Fat Bread', '993c0fef-0410-4297-9bec-820527057ad5', 'Bread is a staple food prepared from a dough of flour and water, usually by baking. Throughout recorded history it has been a prominent food in large parts of the world and is one of the oldest man-made foods, having been of significant importance since the dawn of agriculture.', 0, 4, 0, '100', 0, ' 1 lb', 0, '2020-09-22 19:15:14', '2020-09-22 19:15:14');
INSERT INTO `products` VALUES (362, '', 'the_village_bakery_danish_Soft_White_Toastie', 'The Village Bakery Soft White Bread', 'cc9d248b-c963-4280-a255-07eef6064e1a', 'Bread is a staple food prepared from a dough of flour and water, usually by baking. Throughout recorded history it has been a prominent food in large parts of the world and is one of the oldest man-made foods, having been of significant importance since the dawn of agriculture.', 0, 4, 0, '100', 0, ' 1 lb', 0, '2020-09-22 19:15:15', '2020-09-22 19:15:15');
INSERT INTO `products` VALUES (363, '', 'the_village_bakery_Soft_Wholemeal_Bread', 'The Village Bakery Soft Wholemeal Bread', '28f778bd-7cfb-4859-82dc-c43be05df71e', 'Bread is a staple food prepared from a dough of flour and water, usually by baking. Throughout recorded history it has been a prominent food in large parts of the world and is one of the oldest man-made foods, having been of significant importance since the dawn of agriculture.', 0, 4, 0, '100', 0, ' 1 lb', 0, '2020-09-22 19:15:16', '2020-09-22 19:15:16');
INSERT INTO `products` VALUES (364, '', 'Warburtons_Wholemeal_mild_soft', 'Warburtons Wholemeal Bread', 'cf73a022-8b79-4bb3-ba33-892083bdcf24', 'Bread is a staple food prepared from a dough of flour and water, usually by baking. Throughout recorded history it has been a prominent food in large parts of the world and is one of the oldest man-made foods, having been of significant importance since the dawn of agriculture.', 0, 4, 0, '100', 0, ' 1 lb', 0, '2020-09-22 19:15:17', '2020-09-22 19:15:17');
INSERT INTO `products` VALUES (365, '', 'fibre1_crunchy_original', 'Fibre 1 Crunchy Original', '5e4e8160-6d1f-4b11-9b73-44bdf940dcd6', 'A cereal is any grass cultivated for the edible components of its grain, composed of the endosperm, germ, and bran. The term may also refer to the resulting grain itself.', 0, 4, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:15:17', '2020-09-22 19:15:17');
INSERT INTO `products` VALUES (366, '', 'general_mills_with_whole_grain_first_ingredient_trix_wildberry_red_swirls', 'Trix', '0ce036d8-5e03-45a2-8116-a546d54b59b9', 'A cereal is any grass cultivated for the edible components of its grain, composed of the endosperm, germ, and bran. The term may also refer to the resulting grain itself.', 0, 4, 4, '0', 0, ' 1 pc(s)', 0, '2020-09-22 19:15:18', '2020-09-22 19:15:18');
INSERT INTO `products` VALUES (367, '', 'general_mills_with_whole_grain_guaranted_fiber_one_honey_clusters', 'Fiber One', '30883704-7a59-4fc4-ba36-69b3a880b083', 'A cereal is any grass cultivated for the edible components of its grain, composed of the endosperm, germ, and bran. The term may also refer to the resulting grain itself.', 0, 4, 4, '0', 0, ' 1 pc(s)', 0, '2020-09-22 19:15:19', '2020-09-22 19:15:19');
INSERT INTO `products` VALUES (368, '', 'nestle_made_with_whole_grain_corn_flakes', 'Nestle Corn Flakes', '14fd28f3-4f59-42ba-ab30-677e32a06297', 'A cereal is any grass cultivated for the edible components of its grain, composed of the endosperm, germ, and bran. The term may also refer to the resulting grain itself.', 0, 4, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:15:20', '2020-09-22 19:15:20');
INSERT INTO `products` VALUES (369, '', 'post_honey_comb_cereal_12.5oz', 'Post Honey Comb', '3ff11eee-cd99-4f55-9d22-182d122cb2bd', 'A cereal is any grass cultivated for the edible components of its grain, composed of the endosperm, germ, and bran. The term may also refer to the resulting grain itself.', 0, 4, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:15:21', '2020-09-22 19:15:21');
INSERT INTO `products` VALUES (370, '', 'beechworth_honey_bee_creamy_creamy_honey', 'Beechworty Creamy Honey', 'bd31908d-7752-45b8-a395-3c891666f0f6', 'Honey is a sweet, viscous food substance made by bees and some related insects. Bees produce honey from the sugary secretions of plants (floral nectar) or from secretions of other insects (such as honeydew), by regurgitation, enzymatic activity, and water evaporation', 0, 10, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:15:21', '2020-09-22 19:15:21');
INSERT INTO `products` VALUES (371, '', 'beekeeper\'s_naturals_wildflower_raw_honey', 'Beekeeper S Raw Honey', 'c0551981-dfb1-4ef1-a52b-66f7af76c36b', 'Honey is a sweet, viscous food substance made by bees and some related insects. Bees produce honey from the sugary secretions of plants (floral nectar) or from secretions of other insects (such as honeydew), by regurgitation, enzymatic activity, and water evaporation', 0, 12, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:15:22', '2020-09-22 19:15:22');
INSERT INTO `products` VALUES (372, '', 'Urban_Bee_Honey_fireweed', 'Urban Bee Honey', 'b48972d7-a668-4c84-ac27-0fc1dbea0f8b', 'Honey is a sweet, viscous food substance made by bees and some related insects. Bees produce honey from the sugary secretions of plants (floral nectar) or from secretions of other insects (such as honeydew), by regurgitation, enzymatic activity, and water evaporation', 0, 8, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:15:24', '2020-09-22 19:15:24');
INSERT INTO `products` VALUES (373, '', 'chivers_mixed_fruit_jam', 'Chivers Mixed Fruit Jam', '87aa4c70-8013-4c11-b903-0d95f7d72e46', 'Jam typically contains both the juice and flesh of a fruit or vegetable, although one cookbook defines it as a cooked and jelled puree. The term jam refers to a product made of whole fruit cut into pieces or crushed, then heated with water and sugar to activate its pectin before being put into containers:', 0, 6, 5, '16.6666666', 0, ' 2 lb', 0, '2020-09-22 19:15:25', '2020-09-22 19:15:25');
INSERT INTO `products` VALUES (374, '', 'red_jacket_raspberry_jam', 'Red Jacket Raspberry Jam', '640c5003-501c-4043-8163-6ac875ff12ab', 'Jam typically contains both the juice and flesh of a fruit or vegetable, although one cookbook defines it as a cooked and jelled puree. The term jam refers to a product made of whole fruit cut into pieces or crushed, then heated with water and sugar to activate its pectin before being put into containers:', 0, 6, 5, '16.6666666', 0, ' 2 lb', 0, '2020-09-22 19:15:25', '2020-09-22 19:15:25');
INSERT INTO `products` VALUES (375, '', 'Gin_Jam', 'Gin Jam', '6a527d51-58e1-418f-b3e6-e146d6fcca07', 'Jam typically contains both the juice and flesh of a fruit or vegetable, although one cookbook defines it as a cooked and jelled puree. The term jam refers to a product made of whole fruit cut into pieces or crushed, then heated with water and sugar to activate its pectin before being put into containers:', 0, 6, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:15:26', '2020-09-22 19:15:26');
INSERT INTO `products` VALUES (376, '', 'Ballymaloe_Mayonnaise_240g', 'Ballymaloe Mayonnaise', 'a02572be-0e7f-477d-b1d5-03c92ba101d8', 'Mayonnaise , informally mayo  is a thick cold condiment or dressing commonly used in sandwiches and composed salads or on chips (French fries)', 0, 6, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:15:27', '2020-09-22 19:15:27');
INSERT INTO `products` VALUES (377, '', 'Heinz_Mayonnaise', 'Heinz Mayonnaise', '5a1b30b7-9aef-49a6-86a8-e8a9149c155c', 'Mayonnaise , informally mayo  is a thick cold condiment or dressing commonly used in sandwiches and composed salads or on chips (French fries)', 0, 8, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:15:28', '2020-09-22 19:15:28');
INSERT INTO `products` VALUES (378, '', 'kraft_mayonnaise1', 'Kraft Mayonnaise', '5e51eff2-746d-4014-a5ba-c55baa4f5d40', 'Mayonnaise , informally mayo  is a thick cold condiment or dressing commonly used in sandwiches and composed salads or on chips (French fries)', 0, 7, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:15:29', '2020-09-22 19:15:29');
INSERT INTO `products` VALUES (379, '', 'FITWELL_OAT_ENRICH', 'Fitwell Oat', 'e2f3ad92-2962-4531-9120-6d9e563cd837', 'Oats are any grass cultivated for the edible components of its grain, composed of the endosperm, germ, and bran. The term may also refer to the resulting grain itself.', 0, 7, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:15:30', '2020-09-22 19:15:30');
INSERT INTO `products` VALUES (380, '', 'quaker_large_flake_oats', 'Quaker Large Flake Oat', '37eafa6d-c96a-45c9-9e9d-6a7a78c199ea', 'Oats are any grass cultivated for the edible components of its grain, composed of the endosperm, germ, and bran. The term may also refer to the resulting grain itself.', 0, 7, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:15:30', '2020-09-22 19:15:30');
INSERT INTO `products` VALUES (381, '', 'mornflake_jumbo_oats', 'Mornflake Jumbo Oat', 'fb4374e0-54b8-492d-8a08-448f8f1bd2b2', 'Oats are any grass cultivated for the edible components of its grain, composed of the endosperm, germ, and bran. The term may also refer to the resulting grain itself.', 0, 8, 7, '12.5', 0, ' 2 lb', 0, '2020-09-22 19:15:31', '2020-09-22 19:15:31');
INSERT INTO `products` VALUES (382, '', 'javarama_classic', 'Javarama Cafe Coffee', '119cc02f-b88e-4e68-aeb5-bee28670545f', 'Coffee is a brewed drink prepared from roasted coffee beans, the seeds of berries from certain Coffea species. The genus Coffea is native to tropical Africa (specifically having its origin in Ethiopia and Sudan) and Madagascar, the Comoros, Mauritius, and Réunion in the Indian Ocean.', 0, 4, 4, '0', 0, ' 2 lb', 0, '2020-09-22 19:15:32', '2020-09-22 19:15:32');
INSERT INTO `products` VALUES (383, '', 'starbucks_house_blend', 'Starbucks House Blend', 'b81ebe4e-b4f4-4710-a4f4-5c1a26d337b1', 'Coffee is a brewed drink prepared from roasted coffee beans, the seeds of berries from certain Coffea species. The genus Coffea is native to tropical Africa (specifically having its origin in Ethiopia and Sudan) and Madagascar, the Comoros, Mauritius, and Réunion in the Indian Ocean.', 0, 4, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:15:33', '2020-09-22 19:15:33');
INSERT INTO `products` VALUES (384, '', 'starbucks_vanilla_latte', 'Starbucks Vanilla Latte', 'ba5ebd63-3627-4340-820b-36b2513ad16d', 'Coffee is a brewed drink prepared from roasted coffee beans, the seeds of berries from certain Coffea species. The genus Coffea is native to tropical Africa (specifically having its origin in Ethiopia and Sudan) and Madagascar, the Comoros, Mauritius, and Réunion in the Indian Ocean.', 0, 4, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:15:34', '2020-09-22 19:15:34');
INSERT INTO `products` VALUES (385, '', 'teeccino_herbal_coffee_alternative_almond_amaretto', 'Teeccino Herbal Coffee Alternative', '0a2aeee9-1ec6-4e1d-97c0-161165dff240', 'Coffee is a brewed drink prepared from roasted coffee beans, the seeds of berries from certain Coffea species. The genus Coffea is native to tropical Africa (specifically having its origin in Ethiopia and Sudan) and Madagascar, the Comoros, Mauritius, and Réunion in the Indian Ocean.', 0, 5, 0, '100', 0, ' 1 lb', 0, '2020-09-22 19:15:34', '2020-09-22 19:15:34');
INSERT INTO `products` VALUES (386, '', 'dragon', 'Dragon Energy', '0fba975b-4229-44e7-b426-26391df68808', 'An energy drink is a type of drink containing sugar and stimulant compounds, usually caffeine, which is marketed as providing mental and physical stimulation (marketed as energy, but distinct from food energy).', 0, 2, 0, '100', 0, ' 200 ml', 0, '2020-09-22 19:15:35', '2020-09-22 19:15:35');
INSERT INTO `products` VALUES (387, '', 'Monster', 'Monster Energy', 'c3fefd1c-e934-4a50-93f2-8c4e82e7fc9b', 'An energy drink is a type of drink containing sugar and stimulant compounds, usually caffeine, which is marketed as providing mental and physical stimulation (marketed as energy, but distinct from food energy).', 0, 2, 0, '100', 0, ' 500 ml', 0, '2020-09-22 19:15:36', '2020-09-22 19:15:36');
INSERT INTO `products` VALUES (388, '', 'Quake', 'Quake Energy', 'bd6b5a92-f21c-42a3-b80d-60a2da84227f', 'An energy drink is a type of drink containing sugar and stimulant compounds, usually caffeine, which is marketed as providing mental and physical stimulation (marketed as energy, but distinct from food energy).', 0, 2, 0, '100', 0, ' 250 ml', 0, '2020-09-22 19:15:37', '2020-09-22 19:15:37');
INSERT INTO `products` VALUES (389, '', 'red_bull', 'Red Bull Energy Drink', '757a6db5-bf21-4fec-9ba1-bab1511becd0', 'An energy drink is a type of drink containing sugar and stimulant compounds, usually caffeine, which is marketed as providing mental and physical stimulation (marketed as energy, but distinct from food energy).', 0, 2, 0, '100', 0, ' 200 ml', 0, '2020-09-22 19:15:38', '2020-09-22 19:15:38');
INSERT INTO `products` VALUES (390, '', 'iceland_tropical_juice_drink', 'Iceland Tropical Juice Drink', '9ced87d9-e0e7-4fb6-92a0-d60f6051e6c7', 'Juice is a drink made from the extraction or pressing of the natural liquid contained in fruit and vegetables. It can also refer to liquids that are flavored with concentrate or other biological food sources, such as meat or seafood, such as clam juice. ', 0, 2, 0, '100', 0, ' 1 ltr', 0, '2020-09-22 19:15:39', '2020-09-22 19:15:39');
INSERT INTO `products` VALUES (391, '', 'minute_maid_orange', 'Minute Maid Orange', 'a98b0af2-d4e7-460b-9306-cc91a189d671', 'Juice is a drink made from the extraction or pressing of the natural liquid contained in fruit and vegetables. It can also refer to liquids that are flavored with concentrate or other biological food sources, such as meat or seafood, such as clam juice. ', 0, 3, 0, '100', 0, ' 500 ml', 0, '2020-09-22 19:15:40', '2020-09-22 19:15:40');
INSERT INTO `products` VALUES (392, '', 'nongmo_simply_apple', 'Nongmo Simple Apple', '473cafe3-0a94-4d0c-ba33-03616377667b', 'Juice is a drink made from the extraction or pressing of the natural liquid contained in fruit and vegetables. It can also refer to liquids that are flavored with concentrate or other biological food sources, such as meat or seafood, such as clam juice. ', 0, 3, 0, '100', 0, ' 1 ltr', 0, '2020-09-22 19:15:40', '2020-09-22 19:15:40');
INSERT INTO `products` VALUES (393, '', 'tropicana_apple', 'Tropicana Apple', '984c0d52-6936-44b7-b9db-8476d52c6339', 'Juice is a drink made from the extraction or pressing of the natural liquid contained in fruit and vegetables. It can also refer to liquids that are flavored with concentrate or other biological food sources, such as meat or seafood, such as clam juice. ', 0, 2, 0, '100', 0, ' 1 ltr', 0, '2020-09-22 19:15:41', '2020-09-22 19:15:41');
INSERT INTO `products` VALUES (394, '', 'tropicana_orange_no_pulp', 'Tropicana Orange', '8939bd40-c679-4337-91ae-fc81f5d6b37c', 'Juice is a drink made from the extraction or pressing of the natural liquid contained in fruit and vegetables. It can also refer to liquids that are flavored with concentrate or other biological food sources, such as meat or seafood, such as clam juice. ', 0, 3, 2, '33.3333333', 0, ' 1.5 ltr', 0, '2020-09-22 19:15:42', '2020-09-22 19:15:42');
INSERT INTO `products` VALUES (395, '', '7up_lemon_lime_355ml', '7 Up Can', '44dacb20-a6cf-434a-9e0f-8592df2d60ae', 'A soft drink is a drink that usually contains carbonated water, a sweetener, and a natural or artificial flavoring. The sweetener may be a sugar, high-fructose corn syrup, fruit juice, a sugar substitute, or some combination of these.', 0, 1, 0, '100', 0, ' 250 ml', 0, '2020-09-22 19:15:43', '2020-09-22 19:15:43');
INSERT INTO `products` VALUES (396, '', 'Coca_Cola_200ml_Bottle', 'Coca Cola Botle', '0cc900a8-409a-40e0-a3f1-f578f58543eb', 'A soft drink is a drink that usually contains carbonated water, a sweetener, and a natural or artificial flavoring. The sweetener may be a sugar, high-fructose corn syrup, fruit juice, a sugar substitute, or some combination of these.', 0, 1, 0, '100', 0, ' 200 ml', 0, '2020-09-22 19:15:44', '2020-09-22 19:15:44');
INSERT INTO `products` VALUES (397, '', 'coca_cola_zero', 'Coca Cola Zero', '49b40ae0-6540-48eb-850e-0676f491bef2', 'A soft drink is a drink that usually contains carbonated water, a sweetener, and a natural or artificial flavoring. The sweetener may be a sugar, high-fructose corn syrup, fruit juice, a sugar substitute, or some combination of these.', 0, 1, 0, '100', 0, ' .300 ml', 0, '2020-09-22 19:15:44', '2020-09-22 19:15:44');
INSERT INTO `products` VALUES (398, '', 'coke_diet_355ml', 'Diet Coke', 'e827ff28-7f00-4749-b172-b293c436fcab', 'A soft drink is a drink that usually contains carbonated water, a sweetener, and a natural or artificial flavoring. The sweetener may be a sugar, high-fructose corn syrup, fruit juice, a sugar substitute, or some combination of these.', 0, 1, 0, '100', 0, ' 330 ml', 0, '2020-09-22 19:15:45', '2020-09-22 19:15:45');
INSERT INTO `products` VALUES (399, '', 'dr_pepper_diet', 'Dr Pepper Diet', 'a0c2d840-7bce-4bf4-b9f0-1b74e5d39a6a', 'A soft drink is a drink that usually contains carbonated water, a sweetener, and a natural or artificial flavoring. The sweetener may be a sugar, high-fructose corn syrup, fruit juice, a sugar substitute, or some combination of these.', 0, 1, 0, '100', 0, ' 330 ml', 0, '2020-09-22 19:15:46', '2020-09-22 19:15:46');
INSERT INTO `products` VALUES (400, '', 'Fanta_orange_can_250ml', 'Fanta', '380e65e5-b199-4fa6-ad2c-d06e7d6a008a', 'A soft drink is a drink that usually contains carbonated water, a sweetener, and a natural or artificial flavoring. The sweetener may be a sugar, high-fructose corn syrup, fruit juice, a sugar substitute, or some combination of these.', 0, 1, 0, '100', 0, ' 500 ml', 0, '2020-09-22 19:15:47', '2020-09-22 19:15:47');
INSERT INTO `products` VALUES (401, '', 'mountain_dew_diet', 'Diet Mountain Dew', '29b1782a-7991-4412-bdf1-cba909fcfb03', 'A soft drink is a drink that usually contains carbonated water, a sweetener, and a natural or artificial flavoring. The sweetener may be a sugar, high-fructose corn syrup, fruit juice, a sugar substitute, or some combination of these.', 0, 2, 0, '100', 0, ' 330 ml', 0, '2020-09-22 19:15:48', '2020-09-22 19:15:48');
INSERT INTO `products` VALUES (402, '', 'aunt_jemima_original_syrup', 'Aunt Jemina Original Syrup', '64e5723e-d83e-43b8-9723-41227a8bbfa7', 'A soft drink is a drink that usually contains carbonated water, a sweetener, and a natural or artificial flavoring. The sweetener may be a sugar, high-fructose corn syrup, fruit juice, a sugar substitute, or some combination of these.', 0, 5, 0, '100', 0, ' 500 ml', 0, '2020-09-22 19:15:49', '2020-09-22 19:15:49');
INSERT INTO `products` VALUES (403, '', 'canadian_maple_syrup', 'Canadian Maple Syrup', 'ef1d1771-1ee7-4b19-8ffe-a3c5df6f0812', 'A soft drink is a drink that usually contains carbonated water, a sweetener, and a natural or artificial flavoring. The sweetener may be a sugar, high-fructose corn syrup, fruit juice, a sugar substitute, or some combination of these.', 0, 5, 4, '20', 0, ' 500 ml', 0, '2020-09-22 19:15:49', '2020-09-22 19:15:49');
INSERT INTO `products` VALUES (404, '', 'gatorade_thirst_quencher_powder_packs_orange', 'Gatorate Thirst Quencher Powder Drink', 'd1303e28-aac3-4339-9e00-e02a244e9ae2', 'A soft drink is a drink that usually contains carbonated water, a sweetener, and a natural or artificial flavoring. The sweetener may be a sugar, high-fructose corn syrup, fruit juice, a sugar substitute, or some combination of these.', 0, 5, 0, '100', 0, ' 250 ml', 0, '2020-09-22 19:15:50', '2020-09-22 19:15:50');
INSERT INTO `products` VALUES (405, '', 'horlicks_classic_malt', 'Horlicks', 'f758c4ef-411d-49f2-920d-b08511e1fafe', 'A soft drink is a drink that usually contains carbonated water, a sweetener, and a natural or artificial flavoring. The sweetener may be a sugar, high-fructose corn syrup, fruit juice, a sugar substitute, or some combination of these.', 0, 5, 4, '20', 0, ' .5 lb', 0, '2020-09-22 19:15:51', '2020-09-22 19:15:51');
INSERT INTO `products` VALUES (406, '', 'servivita_chocolate_syrup', 'Servivita Chocolate Syrup', '000c55eb-4dd5-4728-ae46-9dcf8d962982', 'A soft drink is a drink that usually contains carbonated water, a sweetener, and a natural or artificial flavoring. The sweetener may be a sugar, high-fructose corn syrup, fruit juice, a sugar substitute, or some combination of these.', 0, 5, 0, '100', 0, '500 ml', 0, '2020-09-22 19:15:51', '2020-09-22 19:15:51');
INSERT INTO `products` VALUES (407, '', 'ava_juice_Detox_Matcha', 'Ava Juice Macha Tea', '53d4a721-4b15-49c1-bad0-5a49efbc8381', 'Tea is an aromatic beverage commonly prepared by pouring hot or boiling water over cured leaves of the Camellia sinensis, an evergreen shrub native to East Asia. After water, it is the most widely consumed drink in the world.', 0, 5, 4, '20', 0, ' .5 lb', 0, '2020-09-22 19:15:52', '2020-09-22 19:15:52');
INSERT INTO `products` VALUES (408, '', 'boh_3in1_instant_tea_mix', 'Boh Instant Tea Mix', '61a530ea-0c3f-4bea-86b5-6137f127b750', 'Tea is an aromatic beverage commonly prepared by pouring hot or boiling water over cured leaves of the Camellia sinensis, an evergreen shrub native to East Asia. After water, it is the most widely consumed drink in the world.', 0, 5, 4, '20', 0, ' .5 lb', 0, '2020-09-22 19:15:53', '2020-09-22 19:15:53');
INSERT INTO `products` VALUES (409, '', 'crystal_light_lemon_iced_tea', 'Crystal Light Lemon Iced Tea', 'dbc11ca9-7faa-4684-a26f-a391c41d6da7', 'Tea is an aromatic beverage commonly prepared by pouring hot or boiling water over cured leaves of the Camellia sinensis, an evergreen shrub native to East Asia. After water, it is the most widely consumed drink in the world.', 0, 5, 0, '100', 0, ' .5 lb', 0, '2020-09-22 19:15:54', '2020-09-22 19:15:54');
INSERT INTO `products` VALUES (410, '', 'imperial_tea_longjing_tea', 'Imperial Long Jing Tea', '38bda1f5-89ca-44cd-8f5c-e7c2897e6218', 'Tea is an aromatic beverage commonly prepared by pouring hot or boiling water over cured leaves of the Camellia sinensis, an evergreen shrub native to East Asia. After water, it is the most widely consumed drink in the world.', 0, 5, 0, '100', 0, ' .5 lb', 0, '2020-09-22 19:15:55', '2020-09-22 19:15:55');
INSERT INTO `products` VALUES (411, '', 'luzianne_iced_tea', 'Luzianne Iced Tea', 'c435b8ab-e597-43ec-886c-c1d5c52c12e5', 'Tea is an aromatic beverage commonly prepared by pouring hot or boiling water over cured leaves of the Camellia sinensis, an evergreen shrub native to East Asia. After water, it is the most widely consumed drink in the world.', 0, 5, 0, '100', 0, ' .5 lb', 0, '2020-09-22 19:15:55', '2020-09-22 19:15:55');
INSERT INTO `products` VALUES (412, '', 'Elkali_natural_alkaline_spring_water', 'Elkali Natural Alkalike Srping Water', 'd6d6c9c9-f117-4c8d-ac3e-4b8b8ced902f', 'Water is a transparent, tasteless, odorless, and nearly colorless chemical substance, which is the main constituent of Earth\'s streams, lakes, and oceans, and the fluids of most living organisms. It is vital for all known forms of life, even though it provides no calories or organic nutrients.', 0, 2, 0, '100', 0, ' 5 ltr', 0, '2020-09-22 19:15:56', '2020-09-22 19:15:56');
INSERT INTO `products` VALUES (413, '', 'glaceau_smart_water', 'Glaceau Smart Water', '24b78895-1e59-4cc5-bc4b-432b80fa0409', 'Water is a transparent, tasteless, odorless, and nearly colorless chemical substance, which is the main constituent of Earth\'s streams, lakes, and oceans, and the fluids of most living organisms. It is vital for all known forms of life, even though it provides no calories or organic nutrients.', 0, 3, 0, '100', 0, ' 2 ltr', 0, '2020-09-22 19:15:57', '2020-09-22 19:15:57');
INSERT INTO `products` VALUES (414, '', 'glastonbury_still_spring_water', 'Glastonbury Still Spring Water', '8a979b59-5c2c-46a4-bd47-6a2756a11c5b', 'Water is a transparent, tasteless, odorless, and nearly colorless chemical substance, which is the main constituent of Earth\'s streams, lakes, and oceans, and the fluids of most living organisms. It is vital for all known forms of life, even though it provides no calories or organic nutrients.', 0, 3, 0, '100', 0, ' 2 ltr', 0, '2020-09-22 19:15:58', '2020-09-22 19:15:58');
INSERT INTO `products` VALUES (415, '', 'poland_spring_natural_spring_water', 'Poland Spring Water', '5aa02658-7ea6-4c63-be65-b14b85723474', 'Water is a transparent, tasteless, odorless, and nearly colorless chemical substance, which is the main constituent of Earth\'s streams, lakes, and oceans, and the fluids of most living organisms. It is vital for all known forms of life, even though it provides no calories or organic nutrients.', 0, 2, 0, '100', 0, ' 2 ltr', 0, '2020-09-22 19:15:59', '2020-09-22 19:15:59');
INSERT INTO `products` VALUES (416, '', 'westfield_pure_spring_water_300ml', 'Westfield Pure Spring Water', 'c03c4c78-db91-4d44-add6-0ea534559c82', 'Water is a transparent, tasteless, odorless, and nearly colorless chemical substance, which is the main constituent of Earth\'s streams, lakes, and oceans, and the fluids of most living organisms. It is vital for all known forms of life, even though it provides no calories or organic nutrients.', 0, 2, 0, '100', 0, ' 2 ltr', 0, '2020-09-22 19:15:59', '2020-09-22 19:15:59');
INSERT INTO `products` VALUES (417, '', 'attitude_night_bubble_bath', 'Attitude Bubble Bath', '37f0d4df-230e-41b2-8832-045df4f1fcea', 'Bath gel is a specialized liquid product used for cleaning the body during baths. Not to be confused with liquid soaps, bath gels, in fact, do not contain saponified oil. Instead, it uses synthetic detergents derived from either petroleum or plant sources.', 0, 20, 0, '100', 0, ' 200 ml', 0, '2020-09-22 19:16:00', '2020-09-22 19:16:00');
INSERT INTO `products` VALUES (418, '', 'aveeno_baby_shampoo', 'Aveeno Baby Shampoo', '4ec15d02-05ad-4825-854c-0124cc432087', 'Bath gel is a specialized liquid product used for cleaning the body during baths. Not to be confused with liquid soaps, bath gels, in fact, do not contain saponified oil. Instead, it uses synthetic detergents derived from either petroleum or plant sources.', 0, 20, 10, '50', 0, ' 200 ml', 0, '2020-09-22 19:16:01', '2020-09-22 19:16:01');
INSERT INTO `products` VALUES (419, '', 'moisturizing_hair_bath_g', 'Way Moisturizing Hair Bath', 'a4c23e29-19ae-4714-a606-a659ad754281', 'Bath gel is a specialized liquid product used for cleaning the body during baths. Not to be confused with liquid soaps, bath gels, in fact, do not contain saponified oil. Instead, it uses synthetic detergents derived from either petroleum or plant sources.', 0, 20, 16, '20', 0, ' 200 ml', 0, '2020-09-22 19:16:02', '2020-09-22 19:16:02');
INSERT INTO `products` VALUES (420, '', 'neutrogena_Body_Oil', 'Neutrogena Body Oil', '6af8ade4-3ca7-4ace-8c41-50b0a73cdf91', 'Bath gel is a specialized liquid product used for cleaning the body during baths. Not to be confused with liquid soaps, bath gels, in fact, do not contain saponified oil. Instead, it uses synthetic detergents derived from either petroleum or plant sources.', 0, 20, 0, '100', 0, '200 ml', 0, '2020-09-22 19:16:02', '2020-09-22 19:16:02');
INSERT INTO `products` VALUES (421, '', 'eo_body_lotion', 'Eo Body Lotion', '3fc2e583-bdf9-4e0f-9f2c-02f7ab69c78c', 'Bath gel is a specialized liquid product used for cleaning the body during baths. Not to be confused with liquid soaps, bath gels, in fact, do not contain saponified oil. Instead, it uses synthetic detergents derived from either petroleum or plant sources.', 0, 20, 16, '20', 0, ' 200 ml', 0, '2020-09-22 19:16:03', '2020-09-22 19:16:03');
INSERT INTO `products` VALUES (422, '', 'gnc_aloe_vera_moisturizing_cream', 'Gnc Aloe Vera Cream', '8703aae5-e6c0-4153-b58a-cc68ec856dde', 'Bath gel is a specialized liquid product used for cleaning the body during baths. Not to be confused with liquid soaps, bath gels, in fact, do not contain saponified oil. Instead, it uses synthetic detergents derived from either petroleum or plant sources.', 0, 20, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:16:04', '2020-09-22 19:16:04');
INSERT INTO `products` VALUES (423, '', 'loreal_paris_age_perfect', 'Loreal Age Perfect Cream', '2597ab87-1d55-4092-8e02-d7305d36040e', 'Bath gel is a specialized liquid product used for cleaning the body during baths. Not to be confused with liquid soaps, bath gels, in fact, do not contain saponified oil. Instead, it uses synthetic detergents derived from either petroleum or plant sources.', 0, 20, 15, '25', 0, ' 2 lb', 0, '2020-09-22 19:16:05', '2020-09-22 19:16:05');
INSERT INTO `products` VALUES (424, '', 'waso_shiseido_mega_hydrating_cream', 'Wasp Shiseido Cream', '4d45fe28-d808-4bf0-b83f-dd4b8c8922ea', 'Bath gel is a specialized liquid product used for cleaning the body during baths. Not to be confused with liquid soaps, bath gels, in fact, do not contain saponified oil. Instead, it uses synthetic detergents derived from either petroleum or plant sources.', 0, 20, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:16:05', '2020-09-22 19:16:05');
INSERT INTO `products` VALUES (425, '', 'gnc_women\'s_progesterone_cream', 'Gnc Women S Progesterone Cream', '2a5fd876-4f3b-44bb-abe4-43c89b1b42ad', 'Bath gel is a specialized liquid product used for cleaning the body during baths. Not to be confused with liquid soaps, bath gels, in fact, do not contain saponified oil. Instead, it uses synthetic detergents derived from either petroleum or plant sources.', 0, 20, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:16:06', '2020-09-22 19:16:06');
INSERT INTO `products` VALUES (426, '', 'bionsen_DEO_ROLL_ON', 'Bionsen Deo Roll On', '3a28731c-4901-44de-9365-d52479188255', 'A deodorant is a substance applied to the body to prevent or mask (hide) body odor due to bacterial breakdown of perspiration in the armpits, groin, and feet, and in some cases vaginal secretions. A subclass of deodorants, called antiperspirants,', 0, 2, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:16:07', '2020-09-22 19:16:07');
INSERT INTO `products` VALUES (427, '', 'vichy_deodorant', 'Vichy Deodorant', '729a5c97-bab3-47c5-ab10-bf30160a8106', 'A deodorant is a substance applied to the body to prevent or mask (hide) body odor due to bacterial breakdown of perspiration in the armpits, groin, and feet, and in some cases vaginal secretions. A subclass of deodorants, called antiperspirants,', 0, 2, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:16:07', '2020-09-22 19:16:07');
INSERT INTO `products` VALUES (428, '', 'type_A_ashley_graham_deodorant', 'Type A Deodorant', '43ba9d03-c894-44cb-b5c0-1e88262268d7', 'A deodorant is a substance applied to the body to prevent or mask (hide) body odor due to bacterial breakdown of perspiration in the armpits, groin, and feet, and in some cases vaginal secretions. A subclass of deodorants, called antiperspirants,', 0, 2, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:16:08', '2020-09-22 19:16:08');
INSERT INTO `products` VALUES (429, '', 'the_post_deodorant', 'The Post Deodorant', '45b5d720-9a82-4e12-9c59-2579fdd0f795', 'A deodorant is a substance applied to the body to prevent or mask (hide) body odor due to bacterial breakdown of perspiration in the armpits, groin, and feet, and in some cases vaginal secretions. A subclass of deodorants, called antiperspirants,', 0, 2, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:16:09', '2020-09-22 19:16:09');
INSERT INTO `products` VALUES (430, '', 'taoasis_baldini_bio_deo_sauge_et_orange', 'Baldini Deo', '9303e569-0e7e-4e87-9fd2-6ae9083b921c', 'A deodorant is a substance applied to the body to prevent or mask (hide) body odor due to bacterial breakdown of perspiration in the armpits, groin, and feet, and in some cases vaginal secretions. A subclass of deodorants, called antiperspirants,', 0, 2, 2, '0', 0, ' 1 pc(s)', 0, '2020-09-22 19:16:09', '2020-09-22 19:16:09');
INSERT INTO `products` VALUES (431, '', 'spadet_Deodorant', 'Spadet Deodorant', '3811de40-3660-48db-926f-dfa5db0d6284', 'A deodorant is a substance applied to the body to prevent or mask (hide) body odor due to bacterial breakdown of perspiration in the armpits, groin, and feet, and in some cases vaginal secretions. A subclass of deodorants, called antiperspirants,', 0, 2, 2, '0', 0, ' 1 pc(s)', 0, '2020-09-22 19:16:10', '2020-09-22 19:16:10');
INSERT INTO `products` VALUES (432, '', 'face_republic_Sun_gel', 'Face Replublic Sun Gel', 'b6b389cf-3e75-4f14-8c23-8f0d5589b85f', 'The term cleanser refers to a product that cleans or removes dirt or other substances. A cleanser could be a detergent, and there are many types of cleansers that are produced with a specific objective or focus.', 0, 2, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:16:11', '2020-09-22 19:16:11');
INSERT INTO `products` VALUES (433, '', 'frei_ol_urea2in1', 'Frei Ol', '3286501b-68e1-41ec-bf3a-13d403789172', 'The term cleanser refers to a product that cleans or removes dirt or other substances. A cleanser could be a detergent, and there are many types of cleansers that are produced with a specific objective or focus.', 0, 2, 2, '0', 0, ' 1 pc(s)', 0, '2020-09-22 19:16:11', '2020-09-22 19:16:11');
INSERT INTO `products` VALUES (434, '', 'garnier_pure_active', 'Garnier Pure Active', 'f0bb9fa4-9688-40fd-ad68-41e5e17694cc', 'The term cleanser refers to a product that cleans or removes dirt or other substances. A cleanser could be a detergent, and there are many types of cleansers that are produced with a specific objective or focus.', 0, 2, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:16:12', '2020-09-22 19:16:12');
INSERT INTO `products` VALUES (435, '', 'nuage_men_facial_wash', 'Nuace Men Facial Wash', 'a3252805-8a39-40cf-95b4-9b3749922c14', 'The term cleanser refers to a product that cleans or removes dirt or other substances. A cleanser could be a detergent, and there are many types of cleansers that are produced with a specific objective or focus.', 0, 3, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:16:13', '2020-09-22 19:16:13');
INSERT INTO `products` VALUES (436, '', 'absolute_plus_Meat_Dental_Set_', 'Absolute Plus Meat Dental Set', '8ce24e65-1587-4d82-a9fa-501a78394796', 'Oral hygiene is the practice of keeping one\'s mouth clean and free of disease and other problems (e.g. bad breath) by regular brushing of the teeth (dental hygiene) and cleaning between the teeth. It is important that oral hygiene be carried out on a regular basis to enable prevention of dental disease and bad breath. ', 0, 10, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:16:14', '2020-09-22 19:16:14');
INSERT INTO `products` VALUES (437, '', 'dentek_professional_oral_care_kit1', 'Dentek Oral Care Kit', 'a23c76a2-94b7-4af5-9a61-f09b6327c029', 'Oral hygiene is the practice of keeping one\'s mouth clean and free of disease and other problems (e.g. bad breath) by regular brushing of the teeth (dental hygiene) and cleaning between the teeth. It is important that oral hygiene be carried out on a regular basis to enable prevention of dental disease and bad breath. ', 0, 10, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:16:14', '2020-09-22 19:16:14');
INSERT INTO `products` VALUES (438, '', 'gum_oral_care_cleaning_kit', 'Gum Oral Care Cleaning Kit', '0a337d12-68eb-45d9-88cf-f07319cd83b6', 'Oral hygiene is the practice of keeping one\'s mouth clean and free of disease and other problems (e.g. bad breath) by regular brushing of the teeth (dental hygiene) and cleaning between the teeth. It is important that oral hygiene be carried out on a regular basis to enable prevention of dental disease and bad breath. ', 0, 15, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:16:15', '2020-09-22 19:16:15');
INSERT INTO `products` VALUES (439, '', 'Duke_Cannon_SHAVE_CREAM', 'Duke Cannon Shaving Cream', '33c8889f-286f-4f13-8013-a6c1c9b7aef9', 'Shaving is the removal of hair, by using a razor or any other kind of bladed implement, to slice it down—to the level of the skin or otherwise. Shaving is most commonly practiced by men to remove their facial hair and by women to remove their leg and underarm hair. ', 0, 5, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:16:16', '2020-09-22 19:16:16');
INSERT INTO `products` VALUES (440, '', 'nair_hair_remover', 'Nair Hair Removal Cream', '89a391a4-d739-48f0-ba50-23803844b537', 'Shaving is the removal of hair, by using a razor or any other kind of bladed implement, to slice it down—to the level of the skin or otherwise. Shaving is most commonly practiced by men to remove their facial hair and by women to remove their leg and underarm hair. ', 0, 8, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:16:16', '2020-09-22 19:16:16');
INSERT INTO `products` VALUES (441, '', 'Longmarket_Barber_Aftershave_Balm', 'Longmarket Barber Aftershave Balm', '07f18a81-41a2-4ac7-8c6e-7559fea831db', 'Shaving is the removal of hair, by using a razor or any other kind of bladed implement, to slice it down—to the level of the skin or otherwise. Shaving is most commonly practiced by men to remove their facial hair and by women to remove their leg and underarm hair. ', 0, 6, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:16:17', '2020-09-22 19:16:17');
INSERT INTO `products` VALUES (442, '', 'espa_men_dual_action_shave_mud', 'Espa Men Dual Action', '83c33f77-92a5-46eb-9541-76df8d73c30e', 'Shaving is the removal of hair, by using a razor or any other kind of bladed implement, to slice it down—to the level of the skin or otherwise. Shaving is most commonly practiced by men to remove their facial hair and by women to remove their leg and underarm hair. ', 0, 6, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:16:18', '2020-09-22 19:16:18');
INSERT INTO `products` VALUES (443, '', 'human_nature_shaving_cream', 'Human Nature Shaving Cream', '040f64ed-629a-45d4-9296-151e8a0669b9', 'Shaving is the removal of hair, by using a razor or any other kind of bladed implement, to slice it down—to the level of the skin or otherwise. Shaving is most commonly practiced by men to remove their facial hair and by women to remove their leg and underarm hair. ', 0, 6, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:16:18', '2020-09-22 19:16:18');
INSERT INTO `products` VALUES (444, '', 'harry\'pacific_shaving_co._natural_shaving_cream', 'Pacific Natural Shaving Cream', 'ff18f93a-d802-44d8-a390-ef39ad5ba5c6', 'Shaving is the removal of hair, by using a razor or any other kind of bladed implement, to slice it down—to the level of the skin or otherwise. Shaving is most commonly practiced by men to remove their facial hair and by women to remove their leg and underarm hair. ', 0, 6, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:16:19', '2020-09-22 19:16:19');
INSERT INTO `products` VALUES (445, '', 'Duke_Cannon_SHAVE_CREAM', 'Duke Cannon Shaving Cream', '2404814a-443f-41c7-94b4-df6ff1bcc817', 'Shaving is the removal of hair, by using a razor or any other kind of bladed implement, to slice it down—to the level of the skin or otherwise. Shaving is most commonly practiced by men to remove their facial hair and by women to remove their leg and underarm hair. ', 0, 5, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:16:20', '2020-09-22 19:16:20');
INSERT INTO `products` VALUES (446, '', 'nair_hair_remover', 'Nair Hair Removal Cream', '8f2a5d7d-15da-48ad-9245-668f5e423f15', 'Shaving is the removal of hair, by using a razor or any other kind of bladed implement, to slice it down—to the level of the skin or otherwise. Shaving is most commonly practiced by men to remove their facial hair and by women to remove their leg and underarm hair. ', 0, 8, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:16:20', '2020-09-22 19:16:20');
INSERT INTO `products` VALUES (447, '', 'Longmarket_Barber_Aftershave_Balm', 'Longmarket Barber Aftershave Balm', 'd84261e2-1ee6-4c7a-9cd3-140d6686254f', 'Shaving is the removal of hair, by using a razor or any other kind of bladed implement, to slice it down—to the level of the skin or otherwise. Shaving is most commonly practiced by men to remove their facial hair and by women to remove their leg and underarm hair. ', 0, 6, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:16:21', '2020-09-22 19:16:21');
INSERT INTO `products` VALUES (448, '', 'espa_men_dual_action_shave_mud', 'Espa Men Dual Action', '6dac9af5-b08d-4460-aa57-bf73cf92a496', 'Shaving is the removal of hair, by using a razor or any other kind of bladed implement, to slice it down—to the level of the skin or otherwise. Shaving is most commonly practiced by men to remove their facial hair and by women to remove their leg and underarm hair. ', 0, 6, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:16:22', '2020-09-22 19:16:22');
INSERT INTO `products` VALUES (449, '', 'human_nature_shaving_cream', 'Human Nature Shaving Cream', '5b16fa25-2e87-4abd-9b89-be4b6f6bec38', 'Shaving is the removal of hair, by using a razor or any other kind of bladed implement, to slice it down—to the level of the skin or otherwise. Shaving is most commonly practiced by men to remove their facial hair and by women to remove their leg and underarm hair. ', 0, 6, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:16:22', '2020-09-22 19:16:22');
INSERT INTO `products` VALUES (450, '', 'harry\'pacific_shaving_co._natural_shaving_cream', 'Pacific Natural Shaving Cream', '7935f646-8ad0-48eb-8cce-5055f278f4b5', 'Shaving is the removal of hair, by using a razor or any other kind of bladed implement, to slice it down—to the level of the skin or otherwise. Shaving is most commonly practiced by men to remove their facial hair and by women to remove their leg and underarm hair. ', 0, 6, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:16:23', '2020-09-22 19:16:23');
INSERT INTO `products` VALUES (451, '', 'absolute_plus_Meat_Dental_Set_', 'Absolute Plus Meat Dental Set', '8a07415a-695e-429f-9852-53402a2d6a50', 'Oral hygiene is the practice of keeping one\'s mouth clean and free of disease and other problems (e.g. bad breath) by regular brushing of the teeth (dental hygiene) and cleaning between the teeth. It is important that oral hygiene be carried out on a regular basis to enable prevention of dental disease and bad breath. ', 0, 10, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:16:23', '2020-09-22 19:16:23');
INSERT INTO `products` VALUES (452, '', 'dentek_professional_Oral_care_kit1', 'Dentek Oral Care Kit', '8da9e597-fd77-4002-9221-ea80a0c9a918', 'Oral hygiene is the practice of keeping one\'s mouth clean and free of disease and other problems (e.g. bad breath) by regular brushing of the teeth (dental hygiene) and cleaning between the teeth. It is important that oral hygiene be carried out on a regular basis to enable prevention of dental disease and bad breath. ', 0, 10, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:16:24', '2020-09-22 19:16:24');
INSERT INTO `products` VALUES (453, '', 'gum_Oral_care_cleaning_kit', 'Gum Oral Care Cleaning Kit', 'c40868ed-62e0-4937-876c-417aed2a4336', 'Oral hygiene is the practice of keeping one\'s mouth clean and free of disease and other problems (e.g. bad breath) by regular brushing of the teeth (dental hygiene) and cleaning between the teeth. It is important that oral hygiene be carried out on a regular basis to enable prevention of dental disease and bad breath. ', 0, 15, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:16:25', '2020-09-22 19:16:25');
INSERT INTO `products` VALUES (454, '', 'face_republic_Sun_gel', 'Face Republic Sun Gel', '7f29bc09-7bf2-4c91-93dd-919df5ac1200', 'The term cleanser refers to a product that cleans or removes dirt or other substances. A cleanser could be a detergent, and there are many types of cleansers that are produced with a specific objective or focus.', 0, 2, 2, '0', 0, ' 1 pc(s)', 0, '2020-09-22 19:16:25', '2020-09-22 19:16:25');
INSERT INTO `products` VALUES (455, '', 'frei_ol_urea2in1', 'Frei Ol', '328e315d-c7ba-4454-8332-620dfe4b94bb', 'The term cleanser refers to a product that cleans or removes dirt or other substances. A cleanser could be a detergent, and there are many types of cleansers that are produced with a specific objective or focus.', 0, 2, 2, '0', 0, ' 1 pc(s)', 0, '2020-09-22 19:16:26', '2020-09-22 19:16:26');
INSERT INTO `products` VALUES (456, '', 'garnier_pure_active', 'Garnier Pure Active', '4f7e4a57-ff7d-4947-be5b-82ecaefe14b3', 'The term cleanser refers to a product that cleans or removes dirt or other substances. A cleanser could be a detergent, and there are many types of cleansers that are produced with a specific objective or focus.', 0, 2, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:16:26', '2020-09-22 19:16:26');
INSERT INTO `products` VALUES (457, '', 'nuage_men_facial_wash', 'Nuace Men Facial Wash', '7eb9ad9f-49cd-426e-998a-be8625745539', 'The term cleanser refers to a product that cleans or removes dirt or other substances. A cleanser could be a detergent, and there are many types of cleansers that are produced with a specific objective or focus.', 0, 3, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:16:27', '2020-09-22 19:16:27');
INSERT INTO `products` VALUES (458, '', 'bionsen_DEO_ROLL_ON', 'Bionsen Deo Roll On', '2362946a-70d9-44e3-b46f-bd0acc7da199', 'A deodorant is a substance applied to the body to prevent or mask (hide) body odor due to bacterial breakdown of perspiration in the armpits, groin, and feet, and in some cases vaginal secretions. A subclass of deodorants, called antiperspirants,', 0, 2, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:16:27', '2020-09-22 19:16:27');
INSERT INTO `products` VALUES (459, '', 'vichy_deodorant', 'Vichy Deodorant', '6003bebc-07f2-439a-af7b-67738ccec9e3', 'A deodorant is a substance applied to the body to prevent or mask (hide) body odor due to bacterial breakdown of perspiration in the armpits, groin, and feet, and in some cases vaginal secretions. A subclass of deodorants, called antiperspirants,', 0, 2, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:16:28', '2020-09-22 19:16:28');
INSERT INTO `products` VALUES (460, '', 'type_A_ashley_graham_deodorant', 'Type A Deodorant', 'a13fda77-8570-4526-b6dd-07ed4712dcf1', 'A deodorant is a substance applied to the body to prevent or mask (hide) body odor due to bacterial breakdown of perspiration in the armpits, groin, and feet, and in some cases vaginal secretions. A subclass of deodorants, called antiperspirants,', 0, 2, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:16:29', '2020-09-22 19:16:29');
INSERT INTO `products` VALUES (461, '', 'the_post_deodorant', 'The Post Deodorant', '99427390-5fab-4a52-8518-803522506d7c', 'A deodorant is a substance applied to the body to prevent or mask (hide) body odor due to bacterial breakdown of perspiration in the armpits, groin, and feet, and in some cases vaginal secretions. A subclass of deodorants, called antiperspirants,', 0, 2, 0, '100', 0, ' 1 pc(s)', 0, '2020-09-22 19:16:29', '2020-09-22 19:16:29');
INSERT INTO `products` VALUES (462, '', 'taoasis_baldini_bio_deo_sauge_et_orange', 'Baldini Deo', 'bd041011-1492-486d-a503-f8c1a5bc54b8', 'A deodorant is a substance applied to the body to prevent or mask (hide) body odor due to bacterial breakdown of perspiration in the armpits, groin, and feet, and in some cases vaginal secretions. A subclass of deodorants, called antiperspirants,', 0, 2, 2, '0', 0, ' 1 pc(s)', 0, '2020-09-22 19:16:30', '2020-09-22 19:16:30');
INSERT INTO `products` VALUES (463, '', 'spadet_Deodorant', 'Spadet Deodorant', '67beb8ef-ded4-44bf-bd5c-358313c9a405', 'A deodorant is a substance applied to the body to prevent or mask (hide) body odor due to bacterial breakdown of perspiration in the armpits, groin, and feet, and in some cases vaginal secretions. A subclass of deodorants, called antiperspirants,', 0, 2, 2, '0', 0, ' 1 pc(s)', 0, '2020-09-22 19:16:30', '2020-09-22 19:16:30');
INSERT INTO `products` VALUES (464, '', 'attitude_night_bubble_bath', 'Attitude Bubble Bath', '1e42d811-d27e-401a-a01f-600dbdc2afe8', 'Bath gel is a specialized liquid product used for cleaning the body during baths. Not to be confused with liquid soaps, bath gels, in fact, do not contain saponified oil. Instead, it uses synthetic detergents derived from either petroleum or plant sources.', 0, 20, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:16:31', '2020-09-22 19:16:31');
INSERT INTO `products` VALUES (465, '', 'aveeno_baby_shampoo', 'Aveeno Baby Shampoo', '89fca141-ec31-453a-83d7-f72d67f9849a', 'Bath gel is a specialized liquid product used for cleaning the body during baths. Not to be confused with liquid soaps, bath gels, in fact, do not contain saponified oil. Instead, it uses synthetic detergents derived from either petroleum or plant sources.', 0, 20, 10, '50', 0, ' 2 lb', 0, '2020-09-22 19:16:32', '2020-09-22 19:16:32');
INSERT INTO `products` VALUES (466, '', 'neutrogena_Body_Oil', 'Neutrogena Body Oil', '4222bfc9-30c4-4659-836f-14e103695305', 'Bath gel is a specialized liquid product used for cleaning the body during baths. Not to be confused with liquid soaps, bath gels, in fact, do not contain saponified oil. Instead, it uses synthetic detergents derived from either petroleum or plant sources.', 0, 20, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:16:32', '2020-09-22 19:16:32');
INSERT INTO `products` VALUES (467, '', 'eo_body_lotion', 'Eo Body Lotion', '8bc6edd2-0ad9-4fff-bb08-9d6a1c4c51e1', 'Bath gel is a specialized liquid product used for cleaning the body during baths. Not to be confused with liquid soaps, bath gels, in fact, do not contain saponified oil. Instead, it uses synthetic detergents derived from either petroleum or plant sources.', 0, 20, 16, '20', 0, ' 2 lb', 0, '2020-09-22 19:16:33', '2020-09-22 19:16:33');
INSERT INTO `products` VALUES (468, '', 'EXPERT_WEAR_EYE_SHADOW', 'Expert Wear Eye Shadow', 'eab50535-5de5-4266-b321-80101e97dfd0', 'Pigment packed formula for bold colour looks! Max Factor Wild Shadow Eye Shadow Pots bring a highly pigmented shadow to sweep across your lids, providing a fierce shot of intense colour. The formula is micro-fine and can be used wet for a more intense look, is easily blendable and buildable colour for endless versatility.', 0, 15, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:16:33', '2020-09-22 19:16:33');
INSERT INTO `products` VALUES (469, '', 'Matte_Bar_Eyeshadow', 'Matte Bar Eyeshadow', 'a527f88b-c0d5-4593-88fd-e46d35a608b8', 'Pigment packed formula for bold colour looks! Max Factor Wild Shadow Eye Shadow Pots bring a highly pigmented shadow to sweep across your lids, providing a fierce shot of intense colour. The formula is micro-fine and can be used wet for a more intense look, is easily blendable and buildable colour for endless versatility.', 0, 25, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:16:34', '2020-09-22 19:16:34');
INSERT INTO `products` VALUES (470, '', 'SODA_POP_EYESHADOW', 'Soda Pop Eyeshadow', '46710931-08f7-4e4f-a8be-567f9320b83e', 'Pigment packed formula for bold colour looks! Max Factor Wild Shadow Eye Shadow Pots bring a highly pigmented shadow to sweep across your lids, providing a fierce shot of intense colour. The formula is micro-fine and can be used wet for a more intense look, is easily blendable and buildable colour for endless versatility.', 0, 22, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:16:35', '2020-09-22 19:16:35');
INSERT INTO `products` VALUES (471, '', 'THE CITY_MINI_PALETTE', 'The City Mini Palette', 'ef971cc8-3aa9-497f-b426-57c0e51f38bf', 'Pigment packed formula for bold colour looks! Max Factor Wild Shadow Eye Shadow Pots bring a highly pigmented shadow to sweep across your lids, providing a fierce shot of intense colour. The formula is micro-fine and can be used wet for a more intense look, is easily blendable and buildable colour for endless versatility.', 0, 18, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:16:36', '2020-09-22 19:16:36');
INSERT INTO `products` VALUES (472, '', 'THE_BURGUNDY_BAR_EYESHADOW', 'The Burgundy Bar Eyeshadow', 'bbed2321-4319-4ad8-8976-9f8a6c118c1c', 'Pigment packed formula for bold colour looks! Max Factor Wild Shadow Eye Shadow Pots bring a highly pigmented shadow to sweep across your lids, providing a fierce shot of intense colour. The formula is micro-fine and can be used wet for a more intense look, is easily blendable and buildable colour for endless versatility.', 0, 18, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:16:36', '2020-09-22 19:16:36');
INSERT INTO `products` VALUES (473, '', 'THE_ROCK_NUDES_EYE_SHADOW', 'The Rock Nudes Eye Shadow', '853f15a4-445b-486c-8574-eb2a9ad3a6b3', 'Pigment packed formula for bold colour looks! Max Factor Wild Shadow Eye Shadow Pots bring a highly pigmented shadow to sweep across your lids, providing a fierce shot of intense colour. The formula is micro-fine and can be used wet for a more intense look, is easily blendable and buildable colour for endless versatility.', 0, 20, 18, '10', 0, '1 pc(s)', 0, '2020-09-22 19:16:37', '2020-09-22 19:16:37');
INSERT INTO `products` VALUES (474, '', 'too-faced-chocolate-bon-bons-eyeshadow-palette-too-faced-chocolate-bon-bons-eyeshadow-palette', 'Too Faced Chocolate Bon Bons Eyeshadow', '8fae4f48-5939-4f1e-8758-1375417db150', 'Pigment packed formula for bold colour looks! Max Factor Wild Shadow Eye Shadow Pots bring a highly pigmented shadow to sweep across your lids, providing a fierce shot of intense colour. The formula is micro-fine and can be used wet for a more intense look, is easily blendable and buildable colour for endless versatility.', 0, 20, 16, '20', 0, '1 pc(s)', 0, '2020-09-22 19:16:38', '2020-09-22 19:16:38');
INSERT INTO `products` VALUES (475, '', 'TOTAL_TEMPTATION_EYESHADOW', 'Total Temptation Eyeshadow', '234d81d8-db89-4fc0-ba40-c8357ebe3f9a', 'Pigment packed formula for bold colour looks! Max Factor Wild Shadow Eye Shadow Pots bring a highly pigmented shadow to sweep across your lids, providing a fierce shot of intense colour. The formula is micro-fine and can be used wet for a more intense look, is easily blendable and buildable colour for endless versatility.', 0, 20, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:16:39', '2020-09-22 19:16:39');
INSERT INTO `products` VALUES (476, '', 'roadster', 'Roadster', 'c10d2adb-1170-476e-97d8-ba12b21bb752', 'Indigo blue cotton mid rise denim shorts from Levi\'s featuring a waistband with belt loops, a button and zip fly, an unfinished hem and a five pocket design.', 0, 45, 36, '20', 0, '1 pc(s)', 0, '2020-09-22 19:16:40', '2020-09-22 19:16:40');
INSERT INTO `products` VALUES (477, '', 'RICHTAN_hero', 'Richtan Hero', '913b6dd3-e9ff-48d1-9ddd-362c1e996a13', 'Indigo blue cotton mid rise denim shorts from Levi\'s featuring a waistband with belt loops, a button and zip fly, an unfinished hem and a five pocket design.', 0, 45, 41, '8.88888888', 0, '1 pc(s)', 0, '2020-09-22 19:16:40', '2020-09-22 19:16:40');
INSERT INTO `products` VALUES (478, '', 'invictus', 'Invictus', '929ee8c0-66d7-455b-bcbd-87a1f3f42dc2', 'Indigo blue cotton mid rise denim shorts from Levi\'s featuring a waistband with belt loops, a button and zip fly, an unfinished hem and a five pocket design.', 0, 45, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:16:41', '2020-09-22 19:16:41');
INSERT INTO `products` VALUES (479, '', 'High_Lander_Light_Khaki', 'High Lander Light Khaki', '4a7f565d-bf98-4c41-b6e4-92355eaff8db', 'Indigo blue cotton mid rise denim shorts from Levi\'s featuring a waistband with belt loops, a button and zip fly, an unfinished hem and a five pocket design.', 0, 30, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:16:42', '2020-09-22 19:16:42');
INSERT INTO `products` VALUES (480, '', 'High_Lander_Deep_Khaki', 'High Lander Deep Khaki', 'a05bc96a-2684-4627-85f0-6024b1d13590', 'Indigo blue cotton mid rise denim shorts from Levi\'s featuring a waistband with belt loops, a button and zip fly, an unfinished hem and a five pocket design.', 0, 30, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:16:43', '2020-09-22 19:16:43');
INSERT INTO `products` VALUES (481, '', 'A.P.C._classic_chinos', 'High Lander Deep Khaki', 'b1ca97b7-8380-4e3e-8b2a-cf2b78fd51fe', 'Indigo blue cotton mid rise denim shorts from Levi\'s featuring a waistband with belt loops, a button and zip fly, an unfinished hem and a five pocket design.', 0, 35, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:16:44', '2020-09-22 19:16:44');
INSERT INTO `products` VALUES (482, '', 'David_Jones', 'David Jones', '7bc958f6-ba60-4f10-846d-148fb75ae624', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 105, 84, '20', 0, '1 pc(s)', 0, '2020-09-22 19:16:44', '2020-09-22 19:16:44');
INSERT INTO `products` VALUES (483, '', 'gOLDERS', 'Golders', '00af0176-de8d-4647-89b5-0df7ea5fe2fc', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 200, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:16:45', '2020-09-22 19:16:45');
INSERT INTO `products` VALUES (484, '', 'Mos_Mosh', 'Mos Mosh', '2cd9d274-f362-4ad6-bf90-38113ff8b847', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 150, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:16:46', '2020-09-22 19:16:46');
INSERT INTO `products` VALUES (485, '', 'raymond', 'Raymond', '5696ca1b-1e17-42a9-8000-299e62c5b834', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 80, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:16:47', '2020-09-22 19:16:47');
INSERT INTO `products` VALUES (486, '', 'ricki\'s', 'Ricki S', 'a62caa68-8c29-428c-a6c6-393c2b358321', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 145, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:16:47', '2020-09-22 19:16:47');
INSERT INTO `products` VALUES (488, '', 'Bluebird_M_AlpineStartJacket', 'Fred Perry Taped Sports Jacket In Wine', 'f6c2e5e5-2c54-4067-bd77-4795304dbad2', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 100, 85, '15', 0, '1 pc(s)', 0, '2020-09-22 19:16:48', '2020-09-22 19:16:48');
INSERT INTO `products` VALUES (489, '', 'Fred_perry_taped_sports_jacket_in_wine', 'Fred Perry Taped Sports Jacket', '2cfe702e-303c-4086-b7f4-b8722814bd66', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 100, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:16:49', '2020-09-22 19:16:49');
INSERT INTO `products` VALUES (490, '', 'Loap_infery_kids_winter_jacket_blue_gray', 'Loap Infery Kids Winter Jacket', 'b36f10de-27d6-4b8f-a0bf-6762f474e628', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 60, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:16:50', '2020-09-22 19:16:50');
INSERT INTO `products` VALUES (491, '', 'Fred_perry_tipped_brentham_jacket_in_navy', 'Fred Perry Taped Sports Jacket Navy', 'fa176a11-c8dd-4b5c-aaf8-8b4d3fa05cfd', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 100, 85, '15', 0, '1 pc(s)', 0, '2020-09-22 19:16:50', '2020-09-22 19:16:50');
INSERT INTO `products` VALUES (492, '', 'Loap_infery_kids_winter_jacket_blue_gray', 'Loap Infery Kids Winter Jacket', '5320e3ae-ca2e-463f-8986-edd383839576', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 60, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:16:51', '2020-09-22 19:16:51');
INSERT INTO `products` VALUES (493, '', 'Loap_jerryk_mens_winter_city_jacket_blue', 'Loap Jerryk Mens Winter City Jacket Blue', '9aeea4ed-bd44-4488-b038-4eb59dfeb8d9', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 100, 85, '15', 0, '1 pc(s)', 0, '2020-09-22 19:16:52', '2020-09-22 19:16:52');
INSERT INTO `products` VALUES (494, '', 'Loap_jerryk_mens_winter_city_jacket_red', 'Loap Jerryk Mens Winter City Jacket Red', 'f10d1278-6324-43cc-a481-8435155d6993', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 100, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:16:53', '2020-09-22 19:16:53');
INSERT INTO `products` VALUES (495, '', 'Roadster_Polar_fleece_jacket', 'Roadster Polar Fleece Jacket', 'ac37a06b-53e1-4431-a7c0-554c3a2140fd', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 50, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:16:54', '2020-09-22 19:16:54');
INSERT INTO `products` VALUES (496, '', 'Montane_womens_phoenix_jacket', 'Roadster Polar Fleece Jacket', '5da480ec-a2e8-4c11-989f-07e777b7f096', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 95, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:16:54', '2020-09-22 19:16:54');
INSERT INTO `products` VALUES (497, '', 'Score_lazio_red', 'Score Lazio Red', 'b0cf3228-db12-49cf-bde6-b7344473ec85', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 70, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:16:55', '2020-09-22 19:16:55');
INSERT INTO `products` VALUES (498, '', 'Brook_Taverner', 'Brook Taverner Coat', '6ad09bfe-d451-4b30-8d1c-e3060e45cd03', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 160, 144, '10', 0, '1 pc(s)', 0, '2020-09-22 19:16:56', '2020-09-22 19:16:56');
INSERT INTO `products` VALUES (499, '', 'Brook_taverner_scapoli_ladies_waistcoat', 'Brook Taverner Scapoli Ladies Waist Coat', '08cdbe28-8034-48bb-ae3e-4b13d5a17cbb', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 150, 135, '10', 0, '1 pc(s)', 0, '2020-09-22 19:16:57', '2020-09-22 19:16:57');
INSERT INTO `products` VALUES (500, '', 'Chill_Winston', 'Chill Winston Waist Coat', '76b692d0-c4bc-490c-abe2-3638cdd7ba90', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 130, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:16:57', '2020-09-22 19:16:57');
INSERT INTO `products` VALUES (501, '', 'Deyann', 'Deyann Waist Coat', 'a9770182-14d1-4627-8c48-21cd1e59a077', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 130, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:16:58', '2020-09-22 19:16:58');
INSERT INTO `products` VALUES (502, '', 'Hypernation_render_Gilet', 'Hypernation Render Gilet Waist Coat', '016035c5-80b8-4c67-a0dc-0a3dc1886ce8', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 120, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:16:59', '2020-09-22 19:16:59');
INSERT INTO `products` VALUES (503, '', 'Jack&Jones', 'Jack Jones Waist Coat', '5f741369-b9af-4a63-9e35-86e47ef626b1', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 100, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:17:00', '2020-09-22 19:17:00');
INSERT INTO `products` VALUES (504, '', 'Raas', 'Raas Waist Coat', 'a619be48-91f8-45fc-8dc1-ccccad0c1261', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 100, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:17:01', '2020-09-22 19:17:01');
INSERT INTO `products` VALUES (505, '', 'Rhino-_Waistcoat_Navy', 'Rhino Navy Waist Coat', '3a1b6a53-1fdc-4739-8d36-4c1f94889fa0', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 120, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:17:01', '2020-09-22 19:17:01');
INSERT INTO `products` VALUES (506, '', 'Scott_washable_performance_waistcoat', 'Sco Tt Washable Performance Waist Coat', '312649f7-6e35-409f-be8e-0635a11c0db3', 'Black bandhgala, has a mandarin collar, a full button placket, long sleeves, three pockets, double vented back hem, and has an attached lining', 0, 120, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:17:02', '2020-09-22 19:17:02');
INSERT INTO `products` VALUES (508, '', 'High_Lander', 'High Lander Fade Jeans', '397fb3ba-d7e6-4342-a6e0-42fa04a8a8ee', 'Indigo blue cotton mid rise denim shorts from Levi\'s featuring a waistband with belt loops, a button and zip fly, an unfinished hem and a five pocket design.', 0, 60, 54, '10', 0, '1 pc(s)', 0, '2020-09-22 19:17:03', '2020-09-22 19:17:03');
INSERT INTO `products` VALUES (509, '', 'Roadsterr', 'Roadster Fade Jeans', 'fa389ef7-68e6-4364-9adf-e1ad6947e287', 'Indigo blue cotton mid rise denim shorts from Levi\'s featuring a waistband with belt loops, a button and zip fly, an unfinished hem and a five pocket design.', 0, 80, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:17:04', '2020-09-22 19:17:04');
INSERT INTO `products` VALUES (510, '', 'Scotch_soda_ralston_stone_and_sand', 'Scotch Soda Ralson Stone And Sand Jeans', '3dbfb880-066d-460a-b02b-63e03189d3bb', 'Indigo blue cotton mid rise denim shorts from Levi\'s featuring a waistband with belt loops, a button and zip fly, an unfinished hem and a five pocket design.', 0, 50, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:17:05', '2020-09-22 19:17:05');
INSERT INTO `products` VALUES (511, '', 'Scotch_soda_skim', 'Scotch Soda Skim Jeans', 'ab711d80-80ba-4d59-83b0-104c3a7ebc35', 'Indigo blue cotton mid rise denim shorts from Levi\'s featuring a waistband with belt loops, a button and zip fly, an unfinished hem and a five pocket design.', 0, 50, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:17:05', '2020-09-22 19:17:05');
INSERT INTO `products` VALUES (512, '', 'Wrogn.jpg', 'Wrogn Jeans', 'a78751bc-1690-4513-a06a-2e293f6dcd33', 'Indigo blue cotton mid rise denim shorts from Levi\'s featuring a waistband with belt loops, a button and zip fly, an unfinished hem and a five pocket design.', 0, 70, 0, '100', 0, '1 pc', 0, '2020-09-22 19:17:06', '2020-09-22 19:17:06');
INSERT INTO `products` VALUES (513, '', '2Go', '2Go Jog Pant', 'ea11f71a-89f1-44c6-a776-fd40b02a8c98', 'Brown Yogi High Rise 7/8 tights from Nimble Activewear featuring a high waist, a fitted silhouette, a lightunit construction and a cropped length.', 0, 30, 21, '30', 0, '1 pc', 0, '2020-09-22 19:17:07', '2020-09-22 19:17:07');
INSERT INTO `products` VALUES (514, '', 'Addidas', 'Addidas Trouser', 'bcd83406-b7fc-4e12-bfe2-d3b3b2b44a1e', 'Brown Yogi High Rise 7/8 tights from Nimble Activewear featuring a high waist, a fitted silhouette, a lightunit construction and a cropped length.', 0, 30, 27, '10', 0, '1 pc(s)', 0, '2020-09-22 19:17:08', '2020-09-22 19:17:08');
INSERT INTO `products` VALUES (515, '', 'Champion', 'Champion Trouser', '84aeec29-8d12-4414-a6cc-90c541722eb9', 'Brown Yogi High Rise 7/8 tights from Nimble Activewear featuring a high waist, a fitted silhouette, a lightunit construction and a cropped length.', 0, 25, 0, '100', 0, '1 pc', 0, '2020-09-22 19:17:09', '2020-09-22 19:17:09');
INSERT INTO `products` VALUES (516, '', 'Ellesse_candreva_joggers_dress_blue', 'Ellesse Candreva Joggers Pant', '19b5016c-a297-4be7-a520-922d5abc58cc', 'Brown Yogi High Rise 7/8 tights from Nimble Activewear featuring a high waist, a fitted silhouette, a lightunit construction and a cropped length.', 0, 20, 0, '100', 0, '1 pc', 0, '2020-09-22 19:17:10', '2020-09-22 19:17:10');
INSERT INTO `products` VALUES (517, '', 'Hubberholme', 'Hubberholme Trouser', '466b364c-1b9e-4de9-b2d9-23805c10ea1f', 'Brown Yogi High Rise 7/8 tights from Nimble Activewear featuring a high waist, a fitted silhouette, a lightunit construction and a cropped length.', 0, 20, 0, '100', 0, '1 pc', 0, '2020-09-22 19:17:10', '2020-09-22 19:17:10');
INSERT INTO `products` VALUES (520, '', '13361', 'Make Up Factory Glitter', 'a84c67de-0b20-472e-b06e-2b94e1f694e7', 'This brilliantly long-wearing sparkle eye shadow combines the perfect mix of pearl and glitter to lavish eyes with incredible luster and shimmer.  With its uniquely lightunit, water-infused texture, Glitter & Glow glides on effortlessly, then dries down smoothly, locking in maximum sparkle with minimal fallout, for eyes with a real wow! factor.', 0, 25, 20, '20', 0, '1 pc', 0, '2020-09-22 19:17:11', '2020-09-22 19:17:11');
INSERT INTO `products` VALUES (521, '', 'dee5eb09-4cd1-4f14-8407-6c9c5e17485a1553259228027-1', 'ABC Glitter', '77e03189-b63a-4250-bc1c-1c22f7853e81', 'This brilliantly long-wearing sparkle eye shadow combines the perfect mix of pearl and glitter to lavish eyes with incredible luster and shimmer.  With its uniquely lightunit, water-infused texture, Glitter & Glow glides on effortlessly, then dries down smoothly, locking in maximum sparkle with minimal fallout, for eyes with a real wow! factor.', 0, 25, 20, '20', 0, '1 pc', 0, '2020-09-22 19:17:12', '2020-09-22 19:17:12');
INSERT INTO `products` VALUES (522, '', 'HTB1eUwkzwKTBuNkSne1q6yJoXXaY', 'Kiss My Dear Shiny Glitter', 'fcb2b886-3fc1-42a8-81b0-e7315f5c3a77', 'This brilliantly long-wearing sparkle eye shadow combines the perfect mix of pearl and glitter to lavish eyes with incredible luster and shimmer.  With its uniquely lightunit, water-infused texture, Glitter & Glow glides on effortlessly, then dries down smoothly, locking in maximum sparkle with minimal fallout, for eyes with a real wow! factor.', 0, 28, 0, '100', 0, '1 pc', 0, '2020-09-22 19:17:13', '2020-09-22 19:17:13');
INSERT INTO `products` VALUES (523, '', 'ILU003', 'ILU Glitter', '647af90f-a724-464a-9e25-d6ab11aa9ef1', 'This brilliantly long-wearing sparkle eye shadow combines the perfect mix of pearl and glitter to lavish eyes with incredible luster and shimmer.  With its uniquely lightunit, water-infused texture, Glitter & Glow glides on effortlessly, then dries down smoothly, locking in maximum sparkle with minimal fallout, for eyes with a real wow! factor.', 0, 28, 0, '100', 0, '1 pc', 0, '2020-09-22 19:17:13', '2020-09-22 19:17:13');
INSERT INTO `products` VALUES (524, '', 'Marc-Jacobs-Beauty-See-quins-Glam-Glitter-Eyeshadow', 'Marc Jacobs Glam Glitter', 'c76353b3-919a-490f-8c89-bae0f46281d7', 'This brilliantly long-wearing sparkle eye shadow combines the perfect mix of pearl and glitter to lavish eyes with incredible luster and shimmer.  With its uniquely lightunit, water-infused texture, Glitter & Glow glides on effortlessly, then dries down smoothly, locking in maximum sparkle with minimal fallout, for eyes with a real wow! factor.', 0, 28, 0, '100', 0, '1 pc', 0, '2020-09-22 19:17:14', '2020-09-22 19:17:14');
INSERT INTO `products` VALUES (525, '', 'PMG_EYEDOLS_CLOSED_CORRUPTCOPPER', 'Pat McGrath Glitter', 'd12def7b-44be-4e27-9893-6bf8543d031a', 'This brilliantly long-wearing sparkle eye shadow combines the perfect mix of pearl and glitter to lavish eyes with incredible luster and shimmer.  With its uniquely lightunit, water-infused texture, Glitter & Glow glides on effortlessly, then dries down smoothly, locking in maximum sparkle with minimal fallout, for eyes with a real wow! factor.', 0, 28, 0, '100', 0, '1 pc', 0, '2020-09-22 19:17:15', '2020-09-22 19:17:15');
INSERT INTO `products` VALUES (526, '', '2_3_6412600840186_Lumene_true_mystic_volume_mascara_black', 'Lumene True Mystic Volume Mascara', '28d1c273-62b9-4a9c-8aaa-3f330764d711', 'For lavishly long, perfectly defined lashes, this iconic award-winning mascara provides the ultimate in separation and has been the number 1 mascara for 16+ years! Carefully selected polymers coat each lash from root to tip, to help lengthen and outline each lash for unmatched definition. This best-selling mascara\'s unique brush applicator has specially grooved bristles that hold the perfect amount of product for gradual, even application every time.', 0, 20, 10, '50', 0, '1 pc', 0, '2020-09-22 19:17:16', '2020-09-22 19:17:16');
INSERT INTO `products` VALUES (527, '', '10725812', ' Mon Sieur Big Marker Mascara', '6b408d3e-ab3f-4f47-b9b5-07d249d00e3a', 'For lavishly long, perfectly defined lashes, this iconic award-winning mascara provides the ultimate in separation and has been the number 1 mascara for 16+ years! Carefully selected polymers coat each lash from root to tip, to help lengthen and outline each lash for unmatched definition. This best-selling mascara\'s unique brush applicator has specially grooved bristles that hold the perfect amount of product for gradual, even application every time.', 0, 20, 15, '25', 0, '1 pc', 0, '2020-09-22 19:17:17', '2020-09-22 19:17:17');
INSERT INTO `products` VALUES (528, '', '1539805842-lancome-big-monsieur-1500313391', ' Mon Sieur Big Lancome Mascara', 'b14ca5f7-7611-4f7d-b6b8-e23bfdbb84b6', 'For lavishly long, perfectly defined lashes, this iconic award-winning mascara provides the ultimate in separation and has been the number 1 mascara for 16+ years! Carefully selected polymers coat each lash from root to tip, to help lengthen and outline each lash for unmatched definition. This best-selling mascara\'s unique brush applicator has specially grooved bristles that hold the perfect amount of product for gradual, even application every time.', 0, 20, 15, '25', 0, '1 pc', 0, '2020-09-22 19:17:18', '2020-09-22 19:17:18');
INSERT INTO `products` VALUES (529, '', '1553526549-dior-1553526540', ' Dior Mascara', '844cd791-bbdf-4960-b9bc-9d7f020ff018', 'For lavishly long, perfectly defined lashes, this iconic award-winning mascara provides the ultimate in separation and has been the number 1 mascara for 16+ years! Carefully selected polymers coat each lash from root to tip, to help lengthen and outline each lash for unmatched definition. This best-selling mascara\'s unique brush applicator has specially grooved bristles that hold the perfect amount of product for gradual, even application every time.', 0, 18, 0, '100', 0, '1 pc', 0, '2020-09-22 19:17:18', '2020-09-22 19:17:18');
INSERT INTO `products` VALUES (530, '', 'big-look-mascara-cap-on-appl-to-side', ' Big Look Mascara', 'ecc56186-1355-4b0c-8a79-3a46d5c802c3', 'For lavishly long, perfectly defined lashes, this iconic award-winning mascara provides the ultimate in separation and has been the number 1 mascara for 16+ years! Carefully selected polymers coat each lash from root to tip, to help lengthen and outline each lash for unmatched definition. This best-selling mascara\'s unique brush applicator has specially grooved bristles that hold the perfect amount of product for gradual, even application every time.', 0, 15, 0, '100', 0, '1 pc', 0, '2020-09-22 19:17:19', '2020-09-22 19:17:19');
INSERT INTO `products` VALUES (531, '', 'mascara_cap_off-black-web_ready_1', 'W3LL People Mascara', '0f38941e-9121-495a-9388-2de7e3723217', 'For lavishly long, perfectly defined lashes, this iconic award-winning mascara provides the ultimate in separation and has been the number 1 mascara for 16+ years! Carefully selected polymers coat each lash from root to tip, to help lengthen and outline each lash for unmatched definition. This best-selling mascara\'s unique brush applicator has specially grooved bristles that hold the perfect amount of product for gradual, even application every time.', 0, 12, 0, '100', 0, '1 pc', 0, '2020-09-22 19:17:20', '2020-09-22 19:17:20');
INSERT INTO `products` VALUES (532, '', 'Stellar-Lash-Mascara-CapOff-web', 'Steller Lash Mascara', '996062b5-af1f-47eb-9795-0fdb76925376', 'For lavishly long, perfectly defined lashes, this iconic award-winning mascara provides the ultimate in separation and has been the number 1 mascara for 16+ years! Carefully selected polymers coat each lash from root to tip, to help lengthen and outline each lash for unmatched definition. This best-selling mascara\'s unique brush applicator has specially grooved bristles that hold the perfect amount of product for gradual, even application every time.', 0, 17, 0, '100', 0, '1 pc', 0, '2020-09-22 19:17:21', '2020-09-22 19:17:21');
INSERT INTO `products` VALUES (533, '', 'beauty', 'Beauty Pressed Finishing Powder', '94b6b2ff-872f-4b69-a216-34d262811cbd', 'Our silky, lightunit powder sets makeup for longer wear while providing a veil of perfecting luminosity and a finish so natural they’ll think you were Born This Way.', 0, 20, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:17:22', '2020-09-22 19:17:22');
INSERT INTO `products` VALUES (534, '', 'DrHauschka_CompactPowder', 'Dr. Hauschka Compact Powder', '60cf1c77-271c-441b-ac34-07034556bdfa', 'Our silky, lightunit powder sets makeup for longer wear while providing a veil of perfecting luminosity and a finish so natural they’ll think you were Born This Way.', 0, 18, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:17:22', '2020-09-22 19:17:22');
INSERT INTO `products` VALUES (535, '', 'g9', 'G9 Face Powder', '40fffdef-283b-4553-8983-18bc37a89500', 'Our silky, lightunit powder sets makeup for longer wear while providing a veil of perfecting luminosity and a finish so natural they’ll think you were Born This Way.', 0, 15, 12, '20', 0, '1 pc(s)', 0, '2020-09-22 19:17:23', '2020-09-22 19:17:23');
INSERT INTO `products` VALUES (536, '', 'Iman', 'Iman Face Powder', 'a22b9509-8d7e-4874-aaed-c46a4bde93c4', 'Our silky, lightunit powder sets makeup for longer wear while providing a veil of perfecting luminosity and a finish so natural they’ll think you were Born This Way.', 0, 15, 12, '20', 0, '1 pc(s)', 0, '2020-09-22 19:17:24', '2020-09-22 19:17:24');
INSERT INTO `products` VALUES (537, '', 'lorac', 'Lorac Face Powder', 'f20691cf-432d-494d-a1a7-425569d44f12', 'Our silky, lightunit powder sets makeup for longer wear while providing a veil of perfecting luminosity and a finish so natural they’ll think you were Born This Way.', 0, 15, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:17:25', '2020-09-22 19:17:25');
INSERT INTO `products` VALUES (538, '', 'pupa', 'Pupa Natural Side Compact Powder', '365913e5-8ca3-45d1-8866-f067260bf7e4', 'Our silky, lightunit powder sets makeup for longer wear while providing a veil of perfecting luminosity and a finish so natural they’ll think you were Born This Way.', 0, 18, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:17:26', '2020-09-22 19:17:26');
INSERT INTO `products` VALUES (539, '', 'revlon_colorstay', 'Revlon Colorstay Powder', '50392e7e-c2a1-4dcf-bc68-e87143ca02f7', 'Our silky, lightunit powder sets makeup for longer wear while providing a veil of perfecting luminosity and a finish so natural they’ll think you were Born This Way.', 0, 25, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:17:27', '2020-09-22 19:17:27');
INSERT INTO `products` VALUES (540, '', 'wet_wild.png', 'Revlon Colorstay Powder', 'e1fdc919-7e92-4f40-80ea-36e0f7f64a5f', 'Our silky, lightunit powder sets makeup for longer wear while providing a veil of perfecting luminosity and a finish so natural they’ll think you were Born This Way.', 0, 25, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:17:27', '2020-09-22 19:17:27');
INSERT INTO `products` VALUES (541, '', 'elf', 'e.l.f. Foundation', '8e7779fc-cc9e-4cb0-abaa-6968fefc4668', 'A 15-hour matte finish your skin will feel good about! Clarins\' long-wearing compact foundation evens out skin tone and minimizes the look of imperfections in seconds, delivering a shine-free, matte finish and hours of comfortable wear. Ultra-fine texture resists heat, humidity and perspiration for flawless coverage that lasts throughout the day.', 0, 55, 44, '20', 0, '1 pc(s)', 0, '2020-09-22 19:17:28', '2020-09-22 19:17:28');
INSERT INTO `products` VALUES (542, '', 'loreal_24hr', 'Loreal Infallible Pro-Glow Foundation', '5411f995-384b-4441-b5e6-fed3066f3e0c', 'A 15-hour matte finish your skin will feel good about! Clarins\' long-wearing compact foundation evens out skin tone and minimizes the look of imperfections in seconds, delivering a shine-free, matte finish and hours of comfortable wear. Ultra-fine texture resists heat, humidity and perspiration for flawless coverage that lasts throughout the day.', 0, 60, 48, '20', 0, '1 pc(s)', 0, '2020-09-22 19:17:29', '2020-09-22 19:17:29');
INSERT INTO `products` VALUES (543, '', 'loreal_infallable', 'Loreal Infallible 24H Fresh Wear Foundation', '791f01b4-0bf0-4bcb-9e01-682afbf16817', 'A 15-hour matte finish your skin will feel good about! Clarins\' long-wearing compact foundation evens out skin tone and minimizes the look of imperfections in seconds, delivering a shine-free, matte finish and hours of comfortable wear. Ultra-fine texture resists heat, humidity and perspiration for flawless coverage that lasts throughout the day.', 0, 60, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:17:30', '2020-09-22 19:17:30');
INSERT INTO `products` VALUES (544, '', 'loreal_true_match.jpg', 'Loreal True Match Foundation', 'e66b0c7a-1755-4402-aafd-83bbc6db8d0d', 'A 15-hour matte finish your skin will feel good about! Clarins\' long-wearing compact foundation evens out skin tone and minimizes the look of imperfections in seconds, delivering a shine-free, matte finish and hours of comfortable wear. Ultra-fine texture resists heat, humidity and perspiration for flawless coverage that lasts throughout the day.', 0, 60, 48, '20', 0, '1 pc(s)', 0, '2020-09-22 19:17:31', '2020-09-22 19:17:31');
INSERT INTO `products` VALUES (545, '', 'lucy_minerals.png', 'Lucy Minerals Foundation', '27bc00dc-897b-43fb-873f-64876eb24d38', 'A 15-hour matte finish your skin will feel good about! Clarins\' long-wearing compact foundation evens out skin tone and minimizes the look of imperfections in seconds, delivering a shine-free, matte finish and hours of comfortable wear. Ultra-fine texture resists heat, humidity and perspiration for flawless coverage that lasts throughout the day.', 0, 40, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:17:31', '2020-09-22 19:17:31');
INSERT INTO `products` VALUES (546, '', 'mac.jpg', 'Mac Foundation', 'e0e83cc5-760a-4904-83a2-7fd09d37c9be', 'A 15-hour matte finish your skin will feel good about! Clarins\' long-wearing compact foundation evens out skin tone and minimizes the look of imperfections in seconds, delivering a shine-free, matte finish and hours of comfortable wear. Ultra-fine texture resists heat, humidity and perspiration for flawless coverage that lasts throughout the day.', 0, 40, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:17:32', '2020-09-22 19:17:32');
INSERT INTO `products` VALUES (547, '', 'pur.jpg', 'Pur Foundation', '3d91bebc-544a-4417-9a2d-78c20505d56c', 'A 15-hour matte finish your skin will feel good about! Clarins\' long-wearing compact foundation evens out skin tone and minimizes the look of imperfections in seconds, delivering a shine-free, matte finish and hours of comfortable wear. Ultra-fine texture resists heat, humidity and perspiration for flawless coverage that lasts throughout the day.', 0, 60, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:17:33', '2020-09-22 19:17:33');
INSERT INTO `products` VALUES (548, '', 'barrym', 'Barry M Lip Liner', 'e661429d-f234-486b-b8a4-5c5774f2e75b', 'Reach pout perfection with the Matte Me Up Liquid Lip Paint and Liner. Its non-drying, ultra-long wearing formula is easy to apply and will leave lips with a gorgeously bold finish. Each kit comes with a matte liquid Lip Paint and Lip Liner. ', 0, 12, 6, '50', 0, '1 pc(s)', 0, '2020-09-22 19:17:34', '2020-09-22 19:17:34');
INSERT INTO `products` VALUES (549, '', 'CT.jpeg', 'CT Lip Kit', 'cbf215ed-d340-46ea-afe8-1b417f389a85', 'Reach pout perfection with the Matte Me Up Liquid Lip Paint and Liner. Its non-drying, ultra-long wearing formula is easy to apply and will leave lips with a gorgeously bold finish. Each kit comes with a matte liquid Lip Paint and Lip Liner. ', 0, 40, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:17:34', '2020-09-22 19:17:34');
INSERT INTO `products` VALUES (550, '', 'dsl.jpg', 'D$L Lip Kit', 'dd71bd93-f09b-4b2e-9ad1-adae9392dbbb', 'Reach pout perfection with the Matte Me Up Liquid Lip Paint and Liner. Its non-drying, ultra-long wearing formula is easy to apply and will leave lips with a gorgeously bold finish. Each kit comes with a matte liquid Lip Paint and Lip Liner. ', 0, 40, 32, '20', 0, '1 pc(s)', 0, '2020-09-22 19:17:35', '2020-09-22 19:17:35');
INSERT INTO `products` VALUES (551, '', 'find', 'Find. Lip Kit', '83ff028f-3145-42ec-8e1c-e1b2f1316a0b', 'Reach pout perfection with the Matte Me Up Liquid Lip Paint and Liner. Its non-drying, ultra-long wearing formula is easy to apply and will leave lips with a gorgeously bold finish. Each kit comes with a matte liquid Lip Paint and Lip Liner. ', 0, 40, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:17:36', '2020-09-22 19:17:36');
INSERT INTO `products` VALUES (552, '', 'NYX2', 'NYX. Lip Kit', 'dbb8f5ae-c0cd-4b54-90d0-2a80a134eeba', 'Reach pout perfection with the Matte Me Up Liquid Lip Paint and Liner. Its non-drying, ultra-long wearing formula is easy to apply and will leave lips with a gorgeously bold finish. Each kit comes with a matte liquid Lip Paint and Lip Liner. ', 0, 35, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:17:37', '2020-09-22 19:17:37');
INSERT INTO `products` VALUES (553, '', 'Srar_struck', 'Star Struck Lip Kit', 'b9223351-5f05-4a25-a85c-b4bb5c00ade7', 'Reach pout perfection with the Matte Me Up Liquid Lip Paint and Liner. Its non-drying, ultra-long wearing formula is easy to apply and will leave lips with a gorgeously bold finish. Each kit comes with a matte liquid Lip Paint and Lip Liner. ', 0, 50, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:17:38', '2020-09-22 19:17:38');
INSERT INTO `products` VALUES (554, '', 'technic', 'Technic Lip Kit', 'c39521db-2079-4d50-bd13-e708b5e99113', 'Reach pout perfection with the Matte Me Up Liquid Lip Paint and Liner. Its non-drying, ultra-long wearing formula is easy to apply and will leave lips with a gorgeously bold finish. Each kit comes with a matte liquid Lip Paint and Lip Liner. ', 0, 50, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:17:38', '2020-09-22 19:17:38');
INSERT INTO `products` VALUES (555, '', 'believe', 'Believe Beauty Lip Gloss', 'c7104767-2933-4f2c-ba4d-890203a3e128', 'M·A·C Lipstick – the iconic product that made M·A·C famous. This long-wearing formula features an intense colour payoff and a completely matte finish.', 0, 20, 15, '25', 0, '1 pc(s)', 0, '2020-09-22 19:17:39', '2020-09-22 19:17:39');
INSERT INTO `products` VALUES (556, '', 'charlottetilbury', 'CT Lip Gloss', 'ea9e16f0-8fa7-4961-8225-7af34847ca6b', 'M·A·C Lipstick – the iconic product that made M·A·C famous. This long-wearing formula features an intense colour payoff and a completely matte finish.', 0, 20, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:17:40', '2020-09-22 19:17:40');
INSERT INTO `products` VALUES (557, '', 'covergirl-melting-pout-vinyl-wow', 'Covergirl Melting Pout Vinyl Wow', '43de0f6c-10a8-46f0-aefe-e147a19483e3', 'M·A·C Lipstick – the iconic product that made M·A·C famous. This long-wearing formula features an intense colour payoff and a completely matte finish.', 0, 20, 15, '25', 0, '1 pc(s)', 0, '2020-09-22 19:17:41', '2020-09-22 19:17:41');
INSERT INTO `products` VALUES (558, '', 'gosh_lip_gloss', 'Gosh Lip Gloss', '11ee4510-3eee-4605-ad48-558ae45f7695', 'M·A·C Lipstick – the iconic product that made M·A·C famous. This long-wearing formula features an intense colour payoff and a completely matte finish.', 0, 20, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:17:41', '2020-09-22 19:17:41');
INSERT INTO `products` VALUES (559, '', 'lucy', 'Lucy Prickly Pear Lip Gloss', 'e462ae99-5da2-47c2-a929-233260641ad2', 'M·A·C Lipstick – the iconic product that made M·A·C famous. This long-wearing formula features an intense colour payoff and a completely matte finish.', 0, 25, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:17:42', '2020-09-22 19:17:42');
INSERT INTO `products` VALUES (560, '', 'revlon_the_gloss', 'Revlon The Gloss', 'd6c7d93a-ef0a-4206-96cb-58c5df6abd8a', 'M·A·C Lipstick – the iconic product that made M·A·C famous. This long-wearing formula features an intense colour payoff and a completely matte finish.', 0, 20, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:17:43', '2020-09-22 19:17:43');
INSERT INTO `products` VALUES (561, '', 'tarteist-glossy', 'Tarteist Glossy Gloss', '00dcf839-55d1-4877-876f-9ae8e424ed50', 'M·A·C Lipstick – the iconic product that made M·A·C famous. This long-wearing formula features an intense colour payoff and a completely matte finish.', 0, 20, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:17:44', '2020-09-22 19:17:44');
INSERT INTO `products` VALUES (562, '', 'w7-kiss-me', 'W7 Kiss Me Pumping Gloss', '60d6a026-a2bb-4d3a-8039-c80fb285f268', 'M·A·C Lipstick – the iconic product that made M·A·C famous. This long-wearing formula features an intense colour payoff and a completely matte finish.', 0, 25, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:17:45', '2020-09-22 19:17:45');
INSERT INTO `products` VALUES (563, '', 'badass-icon', 'Badass Uoma Lipstick', '9fd74864-f927-4f4e-96af-6d717cf0d374', 'M·A·C Lipstick – the iconic product that made M·A·C famous. This long-wearing formula features an intense colour payoff and a completely matte finish.', 0, 20, 16, '20', 0, '1 pc(s)', 0, '2020-09-22 19:17:45', '2020-09-22 19:17:45');
INSERT INTO `products` VALUES (564, '', 'Gel-Semi-Matte', 'Mary Kay Lipstick', 'd7afd790-25ae-4702-8948-9e52ba4e1f70', 'M·A·C Lipstick – the iconic product that made M·A·C famous. This long-wearing formula features an intense colour payoff and a completely matte finish.', 0, 20, 16, '20', 0, '1 pc(s)', 0, '2020-09-22 19:17:46', '2020-09-22 19:17:46');
INSERT INTO `products` VALUES (565, '', 'maybelline-new-york', 'Maybelline 510 Lipstick', '71459cec-2527-48c2-ac51-b893470f2e31', 'M·A·C Lipstick – the iconic product that made M·A·C famous. This long-wearing formula features an intense colour payoff and a completely matte finish.', 0, 20, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:17:47', '2020-09-22 19:17:47');
INSERT INTO `products` VALUES (566, '', 'nars-lipstick-dressed-to-kill', 'Nars Red Lipstick', '0e57414f-baaf-4f3c-b2c5-86b1d7dcf383', 'M·A·C Lipstick – the iconic product that made M·A·C famous. This long-wearing formula features an intense colour payoff and a completely matte finish.', 0, 18, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:17:48', '2020-09-22 19:17:48');
INSERT INTO `products` VALUES (568, '', 'youngblood-casablanca', 'Young Blood Lipstick', 'aac91b51-ff22-4926-838a-94ca506c9491', 'M·A·C Lipstick – the iconic product that made M·A·C famous. This long-wearing formula features an intense colour payoff and a completely matte finish.', 0, 20, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:17:49', '2020-09-22 19:17:49');
INSERT INTO `products` VALUES (571, '', 'ash_bed', 'Ash Double Bed', 'ec658cb2-0c14-4abf-aaef-3d91f9efa31f', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 250, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:17:49', '2020-09-22 19:17:49');
INSERT INTO `products` VALUES (572, '', 'Hardwoods', 'Brown Hardwood Double Bed', 'aaa78074-303c-4a54-a4fb-ce6a249777f2', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 250, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:17:50', '2020-09-22 19:17:50');
INSERT INTO `products` VALUES (573, '', 'Mahogany', 'Deluxe Mahagony Double Bed', 'f5143a1e-8dd3-4664-8e1f-c911f9c7d33c', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 300, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:17:51', '2020-09-22 19:17:51');
INSERT INTO `products` VALUES (574, '', 'Oak', 'Supreme Oak Double Bed', '6654baad-9204-47d7-8879-8e0bddf01c53', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 300, 270, '10', 0, '1 pc(s)', 0, '2020-09-22 19:17:52', '2020-09-22 19:17:52');
INSERT INTO `products` VALUES (575, '', 'Partex', 'Partex Coushoned Double Bed', '823092d3-8247-4f1a-8f51-69adc7cfae3e', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 300, 270, '10', 0, '1 pc(s)', 0, '2020-09-22 19:17:53', '2020-09-22 19:17:53');
INSERT INTO `products` VALUES (576, '', 'VInce', 'Vince Ottoman Double Bed', 'fcd863e0-db5c-4a7c-a875-2695bab1e4f4', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 300, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:17:54', '2020-09-22 19:17:54');
INSERT INTO `products` VALUES (577, '', 'Cedar', 'Cedar Double Bed', 'f540ffda-fdff-4fb7-adb2-e556639e3246', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 400, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:17:54', '2020-09-22 19:17:54');
INSERT INTO `products` VALUES (578, '', 'Elm', 'Green Elm wood Double Bed', '7268398a-105f-4177-86bf-6d90bb216d88', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 300, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:17:55', '2020-09-22 19:17:55');
INSERT INTO `products` VALUES (579, '', 'fir', 'Grey Fir Double Bed', '3ba16801-0a91-40b2-b34b-8b7b6d527c7b', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 480, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:17:56', '2020-09-22 19:17:56');
INSERT INTO `products` VALUES (580, '', 'reuby', 'Ruby Semi Double Bed', '7787c421-5dc4-4e0e-a83e-53b15bb05912', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 480, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:17:57', '2020-09-22 19:17:57');
INSERT INTO `products` VALUES (581, '', 'andes_deco', 'Andes Deco Semi Double Bed', 'd8b5da45-8d65-4f14-af40-5c804972dd91', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 320, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:17:58', '2020-09-22 19:17:58');
INSERT INTO `products` VALUES (582, '', 'andes_weco', 'Andes Wide Semi Double Bed', '3a8b7522-cfae-4eb0-9a10-3088399ce35e', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 340, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:17:58', '2020-09-22 19:17:58');
INSERT INTO `products` VALUES (583, '', 'walnut', 'Walnut Semi Double Bed', 'd2b8e67f-06a7-481c-8def-be56bed2d84f', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 300, 270, '10', 0, '1 pc(s)', 0, '2020-09-22 19:17:59', '2020-09-22 19:17:59');
INSERT INTO `products` VALUES (585, '', 'haven_storage', 'Haven Storage Semi Double Bed', 'a7a17f19-2e58-4f20-b0ab-8bb136837325', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 400, 340, '15', 0, '1 pc(s)', 0, '2020-09-22 19:18:00', '2020-09-22 19:18:00');
INSERT INTO `products` VALUES (586, '', 'elm2', 'Elm Single Bed', 'da948e63-a95b-4d92-abfd-e7a29a51fd9c', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 400, 340, '15', 0, '1 pc(s)', 0, '2020-09-22 19:18:01', '2020-09-22 19:18:01');
INSERT INTO `products` VALUES (587, '', 'Elmy2', 'Elmy Sinlge Bed', '1bda6270-a012-4816-93e4-28f1e7dabda7', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 400, 340, '15', 0, '1 pc(s)', 0, '2020-09-22 19:18:02', '2020-09-22 19:18:02');
INSERT INTO `products` VALUES (588, '', 'Fredd2', 'Fredd Single Bed', 'f1e4e689-ee34-4025-83f5-829200a48fe6', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 300, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:02', '2020-09-22 19:18:02');
INSERT INTO `products` VALUES (589, '', 'hattie2', 'Hattie Single Bed', '2c5dbddc-b602-4f90-b9e7-db01be00d79f', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 280, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:03', '2020-09-22 19:18:03');
INSERT INTO `products` VALUES (590, '', 'alana2', 'Alana Single Bed', 'c29b15df-5907-42bd-9a9a-67e0c2612fea', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 290, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:04', '2020-09-22 19:18:04');
INSERT INTO `products` VALUES (591, '', 'atlanta2', 'Atlanta Single Bed', 'cc9e3d13-c4ac-4046-bc7c-28abb0d97653', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 300, 270, '10', 0, '1 pc(s)', 0, '2020-09-22 19:18:05', '2020-09-22 19:18:05');
INSERT INTO `products` VALUES (592, '', 'sabine', 'Sabine Bed', '0bafb76e-6199-46b2-a835-bd662d893bf9', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 320, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:06', '2020-09-22 19:18:06');
INSERT INTO `products` VALUES (593, '', 'teak', 'Teak Single Bed', '2200a270-6d5a-4a8a-8099-e1b383f6da22', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 310, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:06', '2020-09-22 19:18:06');
INSERT INTO `products` VALUES (594, '', 'burcot2', 'Burcot Single Bed', '4d050586-576c-4cd1-86b1-d9126f194c51', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 380, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:07', '2020-09-22 19:18:07');
INSERT INTO `products` VALUES (595, '', 'driosinglechari', 'Drio Single Bed', '58a9cf8f-998c-45fc-ba31-4c62966ab973', 'A bed is a piece of furniture which is used as a place to sleep or relax.', 0, 300, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:08', '2020-09-22 19:18:08');
INSERT INTO `products` VALUES (596, '', 'white2', 'White Cozy Chair', 'f353eb64-cdc9-41cd-88d0-5238a62d3eaa', 'One of the basic pieces of furniture, a chair is a type of seat. ', 0, 160, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:09', '2020-09-22 19:18:09');
INSERT INTO `products` VALUES (597, '', 'ashchair', 'Ash Cozy Chair', 'bf59dfde-4c33-4cf9-8046-0d2e9c6c86e2', 'One of the basic pieces of furniture, a chair is a type of seat. ', 0, 200, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:10', '2020-09-22 19:18:10');
INSERT INTO `products` VALUES (598, '', 'blackcozy', 'Black Cozy Chair', 'cbeb16fe-450c-411d-8d96-c8598b49c92c', 'One of the basic pieces of furniture, a chair is a type of seat. ', 0, 170, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:10', '2020-09-22 19:18:10');
INSERT INTO `products` VALUES (599, '', 'relax', 'Relax White Cozy Chair', 'faf3f6ff-9c3e-4dba-b63e-f113ed1c8037', 'One of the basic pieces of furniture, a chair is a type of seat. ', 0, 200, 180, '10', 0, '1 pc(s)', 0, '2020-09-22 19:18:11', '2020-09-22 19:18:11');
INSERT INTO `products` VALUES (600, '', 'blackbrown', 'Black & Brown Cozy Chair', '2a0efb75-2519-4277-9b03-bc2ccaa57821', 'One of the basic pieces of furniture, a chair is a type of seat. ', 0, 200, 170, '15', 0, '1 pc(s)', 0, '2020-09-22 19:18:12', '2020-09-22 19:18:12');
INSERT INTO `products` VALUES (601, '', 'oaktimber', 'Oak Timber Rocking Chair', '9dace5ff-f916-44e6-b65f-a7d6302af863', 'One of the basic pieces of furniture, a chair is a type of seat. ', 0, 200, 170, '15', 0, '1 pc(s)', 0, '2020-09-22 19:18:13', '2020-09-22 19:18:13');
INSERT INTO `products` VALUES (602, '', 'whitesemiwooden', 'White Semi Wooden Rocking Chair', '821ccc2d-2696-45f0-831b-c411ab1cf6b2', 'One of the basic pieces of furniture, a chair is a type of seat. ', 0, 180, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:14', '2020-09-22 19:18:14');
INSERT INTO `products` VALUES (603, '', 'skybluewooden', 'Sky Blue Semi Wooden Rocking Chair', '7ed3ca2a-ede6-48d6-895b-faaf7e0bff63', 'One of the basic pieces of furniture, a chair is a type of seat. ', 0, 200, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:14', '2020-09-22 19:18:14');
INSERT INTO `products` VALUES (604, '', 'pinetimber', 'Pine Timber Rocking Chair', 'd3c9207d-93e4-4bb3-bb76-c069ea88f866', 'One of the basic pieces of furniture, a chair is a type of seat. ', 0, 160, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:15', '2020-09-22 19:18:15');
INSERT INTO `products` VALUES (605, '', 'whitechair', 'White Wooden Rocking Chair', 'a5e21877-3104-4533-bf29-bc88c3688a83', 'One of the basic pieces of furniture, a chair is a type of seat. ', 0, 150, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:16', '2020-09-22 19:18:16');
INSERT INTO `products` VALUES (606, '', 'cidersleek', 'Cider Sleek Rocking Chair', '4ebed567-d296-4111-a992-dd602f2e7669', 'One of the basic pieces of furniture, a chair is a type of seat. ', 0, 180, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:17', '2020-09-22 19:18:17');
INSERT INTO `products` VALUES (607, '', 'plastic', 'Blue Plastic Chair', 'c23f7c5e-58f1-4e23-ba60-5950744cf05e', 'One of the basic pieces of furniture, a chair is a type of seat. ', 0, 60, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:17', '2020-09-22 19:18:17');
INSERT INTO `products` VALUES (608, '', 'simplebeech', 'Simple Beech Chair', 'c7ef3f30-7395-47b0-9798-e52d67359091', 'One of the basic pieces of furniture, a chair is a type of seat. ', 0, 90, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:18', '2020-09-22 19:18:18');
INSERT INTO `products` VALUES (609, '', 'cidersleek', 'Cider Sleek Rocking Chair', 'bc543222-3d2d-4306-9fba-16a8b6d24057', 'One of the basic pieces of furniture, a chair is a type of seat. ', 0, 100, 80, '20', 0, '1 pc(s)', 0, '2020-09-22 19:18:19', '2020-09-22 19:18:19');
INSERT INTO `products` VALUES (610, '', 'shagunchair', 'Shagun  Chair', '25fb43ca-40f6-4307-b95d-022b9e80efec', 'One of the basic pieces of furniture, a chair is a type of seat. ', 0, 650, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:20', '2020-09-22 19:18:20');
INSERT INTO `products` VALUES (611, '', 'cidersleek', 'Cider Sleek Rocking Chair', '7f30aaf8-acdf-4dd9-8abd-f9bd35d876cd', 'One of the basic pieces of furniture, a chair is a type of seat. ', 0, 180, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:21', '2020-09-22 19:18:21');
INSERT INTO `products` VALUES (612, '', 'whitecup', 'White Cup Chair', '84661e7d-4541-40ff-bf66-b611f77154a0', 'One of the basic pieces of furniture, a chair is a type of seat. ', 0, 120, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:22', '2020-09-22 19:18:22');
INSERT INTO `products` VALUES (613, '', 'woodengodfather', 'Wooden Godfather Chair', '9fe5338c-ac85-48dc-bb38-ead408da4d97', 'One of the basic pieces of furniture, a chair is a type of seat. ', 0, 50, 45, '10', 0, '1 pc(s)', 0, '2020-09-22 19:18:22', '2020-09-22 19:18:22');
INSERT INTO `products` VALUES (614, '', 'oakwhitechair', ' Oak White Chair', '14a8a417-964d-4c42-a4a1-b14716b8e935', 'One of the basic pieces of furniture, a chair is a type of seat. ', 0, 70, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:23', '2020-09-22 19:18:23');
INSERT INTO `products` VALUES (615, '', 'kingchair', 'King Chair', 'b727ba1f-aa25-428e-ad03-4afb0ab4f6d6', 'One of the basic pieces of furniture, a chair is a type of seat. ', 0, 90, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:24', '2020-09-22 19:18:24');
INSERT INTO `products` VALUES (616, '', 'chesterfielddouble', 'Chesterfield Double Sofa', '74c86622-3c85-4233-a865-048cdcec32de', 'a piece of furniture, also called a couch ', 0, 560, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:25', '2020-09-22 19:18:25');
INSERT INTO `products` VALUES (617, '', 'garnetdouble', 'Garnet Double Sofa', 'c938f270-13ed-4686-8e24-ce46b73bb104', 'a piece of furniture, also called a couch', 0, 800, 720, '10', 0, '1 pc(s)', 0, '2020-09-22 19:18:26', '2020-09-22 19:18:26');
INSERT INTO `products` VALUES (618, '', 'landskrona', 'Lands Krona Double SOfa', '5ccddb24-497d-4721-b594-c525cd4e3c9b', 'a piece of furniture, also called a couch', 0, 600, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:27', '2020-09-22 19:18:27');
INSERT INTO `products` VALUES (619, '', 'pebbleforest', 'Pebble Forest Green Sofa', '4656cc43-7946-4187-927b-95f7ed75eb9a', 'a piece of furniture, also called a couch ', 0, 850, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:28', '2020-09-22 19:18:28');
INSERT INTO `products` VALUES (620, '', 'purcelldouble', 'Purcell Double Sofa', '039be1e7-7785-4f41-8ad6-065d32454e9d', 'a piece of furniture, also called a couch. ', 0, 550, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:28', '2020-09-22 19:18:28');
INSERT INTO `products` VALUES (621, '', 'supersoft', 'Super Soft Grey Double Sofa', '334d9102-c69b-4ad9-9852-cf08e2ffc446', 'a piece of furniture, also called a couch ', 0, 700, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:29', '2020-09-22 19:18:29');
INSERT INTO `products` VALUES (622, '', 'swyftdouble', 'Swyft Double Sofa', 'eb318670-d58c-4453-a6c7-7c126533004b', 'a piece of furniture, also called a couch', 0, 600, 570, '5', 0, '1 pc(s)', 0, '2020-09-22 19:18:30', '2020-09-22 19:18:30');
INSERT INTO `products` VALUES (623, '', 'acedouble', 'Ace Double Sofa', '8aa54a3e-f79f-4ef7-892a-732b6e0c6a4f', 'a piece of furniture, also called a couch', 0, 750, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:31', '2020-09-22 19:18:31');
INSERT INTO `products` VALUES (624, '', 'alliedouble', 'Allie Double Sofa', 'c74c98e0-335c-4818-b8f5-ae5ee31b6c19', 'a piece of furniture, also called a couch ', 0, 700, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:32', '2020-09-22 19:18:32');
INSERT INTO `products` VALUES (625, '', 'antero', 'Antero Black Double Sofa', '9903f82f-cbc0-4d91-9472-8845908c0675', 'a piece of furniture, also called a couch ', 0, 950, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:33', '2020-09-22 19:18:33');
INSERT INTO `products` VALUES (626, '', 'castlerydouble', 'Castlery Double Sofa', 'ca624f04-6e13-46b3-a237-31132abf840b', 'a piece of furniture, also called a couch ', 0, 680, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:33', '2020-09-22 19:18:33');
INSERT INTO `products` VALUES (627, '', 'tarasingle', 'Tara Brown Single Sofa', '5268fa6c-49f4-498b-862f-1a9004830867', 'a piece of furniture, also called a couch ', 0, 350, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:34', '2020-09-22 19:18:34');
INSERT INTO `products` VALUES (628, '', 'aaryasingle', 'Aarya Yellow Single Sofa', 'bcd6af7b-2396-4ae3-9a95-08f1af616104', 'a piece of furniture, also called a couch ', 0, 320, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:35', '2020-09-22 19:18:35');
INSERT INTO `products` VALUES (629, '', 'safarisingle', 'Safari Ash Single Sofa', '53894613-182f-418a-b904-41a946e4c472', 'a piece of furniture, also called a couch ', 0, 280, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:36', '2020-09-22 19:18:36');
INSERT INTO `products` VALUES (630, '', 'vesterbrosingle', 'Vester Bro Single Sofa', 'ccee99c5-ac7d-4dd3-8ea4-b876918e7076', 'a piece of furniture, also called a couch ', 0, 310, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:37', '2020-09-22 19:18:37');
INSERT INTO `products` VALUES (631, '', 'aerosingle', 'Aero Stylish Single Sofa', '4c26cd27-0a7c-4f12-bc3a-aa83b826a5d2', 'a piece of furniture, also called a couch ', 0, 300, 270, '10', 0, '1 pc(s)', 0, '2020-09-22 19:18:38', '2020-09-22 19:18:38');
INSERT INTO `products` VALUES (632, '', 'drapedsingle', 'Draped Single Sofa', '38fc736c-68cd-4090-89d7-8788e8af96d2', 'a piece of furniture, also called a couch ', 0, 360, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:39', '2020-09-22 19:18:39');
INSERT INTO `products` VALUES (633, '', 'elliesingle', 'Ellie Black Sinlge Sofa', '25055608-629f-4735-a488-acf12158cd6f', 'a piece of furniture, also called a couch ', 0, 250, 200, '20', 0, '1 pc(s)', 0, '2020-09-22 19:18:39', '2020-09-22 19:18:39');
INSERT INTO `products` VALUES (634, '', 'pompeiisingle', 'Pompeii Deluxe Sinlge Sofa', '8498f54c-4ae9-4390-a1ca-f3e7b59204d9', 'a piece of furniture, also called a couch ', 0, 400, 360, '10', 0, '1 pc(s)', 0, '2020-09-22 19:18:40', '2020-09-22 19:18:40');
INSERT INTO `products` VALUES (635, '', 'reclinersingle', 'Recliner Brown Single Sofa', '6fae525a-e74c-44ae-ad31-cd634a6ff554', 'a piece of furniture, also called a couch ', 0, 300, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:41', '2020-09-22 19:18:41');
INSERT INTO `products` VALUES (636, '', 'mgmluxarysofa', 'MGM Luxary Sofa', '1c0e034a-1b5a-4e87-986e-a694252d4483', 'a piece of furniture, also called a couch ', 0, 800, 720, '10', 0, '1 pc(s)', 0, '2020-09-22 19:18:42', '2020-09-22 19:18:42');
INSERT INTO `products` VALUES (637, '', 'rstluxarysofa', 'RST Luxary Sofa', 'e2d040ac-c955-4c8d-bfa7-bffbafa2fa2a', 'a piece of furniture, also called a couch ', 0, 800, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:43', '2020-09-22 19:18:43');
INSERT INTO `products` VALUES (638, '', 'minottisofaset', 'Minotti Sofa Set', '72bed1bc-dd92-493c-a2d5-77ca79ad4435', 'a piece of furniture, also called a couch ', 0, 900, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:43', '2020-09-22 19:18:43');
INSERT INTO `products` VALUES (639, '', 'sibeilicanesofa', 'Sibeili Cane Sofa Set', 'cd568194-c9f3-4ba4-b4e4-5380c2c47ceb', 'a piece of furniture, also called a couch ', 0, 700, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:44', '2020-09-22 19:18:44');
INSERT INTO `products` VALUES (640, '', 'sinkukusofa', 'Sinkuku Sofa With Cushion', 'b5f14634-f1e7-4f10-b3a8-e8ca370af11d', 'a piece of furniture, also called a couch ', 0, 750, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:45', '2020-09-22 19:18:45');
INSERT INTO `products` VALUES (641, '', 'yuxinsofaset', 'Yuxin Sofa Set', 'e7f3c62e-2ae3-4e33-8521-741124525915', 'a piece of furniture, also called a couch ', 0, 1400, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:46', '2020-09-22 19:18:46');
INSERT INTO `products` VALUES (642, '', 'blissdarkgrey', 'Bliss Dark Grey Sofa', '4a0fce80-2926-4d8e-ad86-1bd4333cf96f', 'a piece of furniture, also called a couch ', 0, 80, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:47', '2020-09-22 19:18:47');
INSERT INTO `products` VALUES (643, '', 'giantex', 'Giantex Sofa', '69a772b1-93f9-4969-bf4c-b67b2de09ddb', 'a piece of furniture, also called a couch ', 0, 800, 760, '5', 0, '1 pc(s)', 0, '2020-09-22 19:18:47', '2020-09-22 19:18:47');
INSERT INTO `products` VALUES (644, '', 'longhisofaset', 'Longhi Sofa Set', 'af21efe2-e8f6-49aa-89e4-f24ad6164ff9', 'a piece of furniture, also called a couch ', 0, 900, 810, '10', 0, '1 pc(s)', 0, '2020-09-22 19:18:48', '2020-09-22 19:18:48');
INSERT INTO `products` VALUES (645, '', 'makasofaset', 'Maka Designer Sofa Set', 'a57ba3b7-a833-4f82-804c-b4f58edb93e9', 'a piece of furniture, also called a couch ', 0, 1250, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:49', '2020-09-22 19:18:49');
INSERT INTO `products` VALUES (646, '', 'malabarsofaset', 'Malabar Leather Sofa Set', 'fce0670f-2ebf-422f-816b-cbd2fe729633', 'a piece of furniture, also called a couch ', 0, 1200, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:50', '2020-09-22 19:18:50');
INSERT INTO `products` VALUES (647, '', 'hudsonbedsidetable', 'Hudson Bedside Table', '5bfe354c-3f08-4a51-baca-0f973b2d0645', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 80, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:51', '2020-09-22 19:18:51');
INSERT INTO `products` VALUES (648, '', 'oliverbedsidetable', 'Oliver Bedside Table', '65ff1ce4-fdf2-48f6-9d4e-7d54fc4c12d8', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 50, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:52', '2020-09-22 19:18:52');
INSERT INTO `products` VALUES (649, '', 'arlobedsidetable', 'Arlo Bedside Table', 'ac606f12-9375-46d0-a6d7-7cf00c36e179', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 50, 45, '10', 0, '1 pc(s)', 0, '2020-09-22 19:18:52', '2020-09-22 19:18:52');
INSERT INTO `products` VALUES (650, '', 'avabedside', 'Ava Bedside Table', 'aee2c93a-cf4e-4c56-bfa6-40854309e743', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 75, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:53', '2020-09-22 19:18:53');
INSERT INTO `products` VALUES (651, '', 'bjornbedsidetable', 'Bjorn Bedside Table', '2ca4b2c0-e71d-4646-9ccd-af6b06706b43', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 60, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:54', '2020-09-22 19:18:54');
INSERT INTO `products` VALUES (652, '', 'mayfairbedsidetable', 'Mayfair Bedside Table', 'bea0ce43-3e1b-4c43-995e-0b1d1b2d676b', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 100, 80, '20', 0, '1 pc(s)', 0, '2020-09-22 19:18:55', '2020-09-22 19:18:55');
INSERT INTO `products` VALUES (653, '', 'clovellybedsidetable', 'Clovelly Bedside Table', '07ed81bd-b202-48ec-a1b6-2471155444d0', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 80, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:56', '2020-09-22 19:18:56');
INSERT INTO `products` VALUES (654, '', 'hanabedside', 'Hana Bedside Table', '5873b7f9-15ad-49ba-be09-70c2ceea03ea', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 120, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:56', '2020-09-22 19:18:56');
INSERT INTO `products` VALUES (655, '', 'hanabedside', 'Hana Bedside Table', '8b592a21-f277-4620-8ce0-f47dd753da8b', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 120, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:57', '2020-09-22 19:18:57');
INSERT INTO `products` VALUES (656, '', 'hanabedside', 'Hana Bedside Table', '266d4f77-35c4-4a0e-b6bc-c4a638a950e8', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 120, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:58', '2020-09-22 19:18:58');
INSERT INTO `products` VALUES (657, '', 'hanabedside', 'Hana Bedside Table', 'e187759e-443a-4ad7-8eba-d62b57712c19', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 120, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:18:59', '2020-09-22 19:18:59');
INSERT INTO `products` VALUES (658, '', 'hanabedside', 'Hana Bedside Table', '3fca50c4-c08a-4c4b-965b-407511a35038', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 120, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:19:00', '2020-09-22 19:19:00');
INSERT INTO `products` VALUES (659, '', 'hanabedside', 'Hana Bedside Table', 'b693d964-fc97-4ad7-b210-34d66d918089', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 120, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:19:00', '2020-09-22 19:19:00');
INSERT INTO `products` VALUES (660, '', 'hanabedside', 'Hana Bedside Table', '032d8c8c-3bc6-42b5-9e3b-d679332607f7', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 120, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:19:01', '2020-09-22 19:19:01');
INSERT INTO `products` VALUES (661, '', 'hanabedside', 'Hana Bedside Table', 'd5b09371-4c0e-4e40-b74c-c6e5ee174977', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 120, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:19:02', '2020-09-22 19:19:02');
INSERT INTO `products` VALUES (662, '', 'hanabedside', 'Hana Bedside Table', 'cc1f336d-59c6-4e07-a799-f0a0e0247e0d', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 120, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:19:03', '2020-09-22 19:19:03');
INSERT INTO `products` VALUES (663, '', 'aftabtable', 'Aidan 6 Seater Dinning Table', '0b3c131c-26a3-4af3-a13c-9f7a924607f7', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 800, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:19:04', '2020-09-22 19:19:04');
INSERT INTO `products` VALUES (664, '', 'diamondtable', 'Diamond 8 Seater Dinning Table', 'cd1d6740-ae8d-4870-8cfe-fac37e1cdfc8', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 900, 810, '10', 0, '1 pc(s)', 0, '2020-09-22 19:19:05', '2020-09-22 19:19:05');
INSERT INTO `products` VALUES (665, '', 'greysontable', 'Greyson Dinning Table', '70c7c954-b9d4-4015-a6b0-f1ef3b9970b4', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 750, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:19:06', '2020-09-22 19:19:06');
INSERT INTO `products` VALUES (666, '', 'lotustable', 'Lotus 6 Seater Dinning Table', '5949adee-4f96-470b-9d59-b86a6b93748a', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 820, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:19:06', '2020-09-22 19:19:06');
INSERT INTO `products` VALUES (667, '', 'brotherstable', 'Brothers Stylish Dinning Table', '2a663705-66ef-4334-93d1-5a861404dee6', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 800, 720, '10', 0, '1 pc(s)', 0, '2020-09-22 19:19:07', '2020-09-22 19:19:07');
INSERT INTO `products` VALUES (668, '', 'cameliatable', 'Camelia Round Dinning Table', '3781f80e-983b-4f57-80bb-b6916bd984e5', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 1000, 900, '10', 0, '1 pc(s)', 0, '2020-09-22 19:19:08', '2020-09-22 19:19:08');
INSERT INTO `products` VALUES (669, '', 'canyontable', 'Canyon Deluxe Dinning Table', '253fc124-6bc2-4369-8d3c-d2710d58660b', 'A table is an item of furniture with a flat top and one or more legs, used as a surface for working at, eating from or on which to place things.', 0, 950, 0, '100', 0, '1 pc(s)', 0, '2020-09-22 19:19:09', '2020-09-22 19:19:09');
INSERT INTO `products` VALUES (670, '', 'princeton', 'The Princeton Childrens Book', 'dfc5820f-3531-4c2d-af1b-f6ae9f6da1ad', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 25, 0, '100', 0, '8 pc(s)', 0, '2020-09-22 19:19:10', '2020-09-22 19:19:10');
INSERT INTO `products` VALUES (671, '', 'golden_trasury', 'The Golden Treasury of Children Literature', '7f1737af-72e4-4ca9-a05b-ed099b9ccb77', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 60, 0, '100', 0, '6 pc(s)', 0, '2020-09-22 19:19:10', '2020-09-22 19:19:10');
INSERT INTO `products` VALUES (672, '', 'charlie_chocolate', 'Charlie and the Chocolate Factory', '954fedf4-96b5-40b3-81f8-86d4f03e698a', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 80, 0, '100', 0, '6 pc(s)', 0, '2020-09-22 19:19:11', '2020-09-22 19:19:11');
INSERT INTO `products` VALUES (673, '', 'the_grimstones', 'The Grimstones', 'd0824fd8-65e8-4f3b-9193-fb907e18b5ce', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 50, 40, '20', 0, '5 pc(s)', 0, '2020-09-22 19:19:11', '2020-09-22 19:19:11');
INSERT INTO `products` VALUES (674, '', 'international', 'International Childrens Book Day', '7f802777-0d14-4004-b7b4-879b8efcf87b', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 60, 48, '20', 0, '5 pc(s)', 0, '2020-09-22 19:19:12', '2020-09-22 19:19:12');
INSERT INTO `products` VALUES (675, '', 'creative_writing', 'Creative Writing with Charlie and the Chocolate Factory', 'f222ebcc-d8e8-45f7-990e-c8741f4b163a', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 60, 48, '20', 0, '6 pc(s)', 0, '2020-09-22 19:19:13', '2020-09-22 19:19:13');
INSERT INTO `products` VALUES (676, '', 'usborne', 'Illustrated Stories for Children', 'aefb0a9a-2572-4416-8919-ee3161cd5646', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 60, 0, '100', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:13', '2020-09-22 19:19:13');
INSERT INTO `products` VALUES (677, '', 'Through_the', 'Through The Yiddish Looking Glass', 'f7d4ab5a-ae27-4c38-a4fd-d54b271047fa', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 70, 0, '100', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:14', '2020-09-22 19:19:14');
INSERT INTO `products` VALUES (678, '', 'the_big_book', 'Big Book of Dinosaurs', '8aa4efd2-f167-4f15-97f1-45f7052667bb', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 80, 0, '100', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:15', '2020-09-22 19:19:15');
INSERT INTO `products` VALUES (679, '', 'felix_the_cat', 'Felix The Cat', '0ee3dec6-2855-4e6a-8481-13fef1a6a172', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 20, 0, '100', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:15', '2020-09-22 19:19:15');
INSERT INTO `products` VALUES (680, '', 'the_comc_book', 'The Comic Book Of History Comics', 'f838b244-b516-481a-8a37-6857278eeb93', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 20, 0, '100', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:16', '2020-09-22 19:19:16');
INSERT INTO `products` VALUES (681, '', 'brightburn', 'Brightburn', '5f6bbe31-1f34-4658-b7fd-981195ef3f20', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 30, 0, '100', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:16', '2020-09-22 19:19:16');
INSERT INTO `products` VALUES (682, '', 'black_mirror', 'Black Mirror', 'f46cade5-742f-46de-b6f9-9a66c7d90804', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 30, 27, '10', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:17', '2020-09-22 19:19:17');
INSERT INTO `products` VALUES (683, '', 'under_preassure', 'Under Preassure', '1ea3f0bd-4a0a-44a7-939a-73bf943b3627', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 30, 27, '10', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:18', '2020-09-22 19:19:18');
INSERT INTO `products` VALUES (684, '', 'superherocomics', 'Superhero Comics', 'c70db6c4-7be1-4486-b916-bb7a80f51ac2', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 25, 0, '100', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:18', '2020-09-22 19:19:18');
INSERT INTO `products` VALUES (685, '', 'space_oditty', 'Space Oditty', '3b85cf0d-a926-4e65-b21d-41c79d3735f3', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 40, 0, '100', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:19', '2020-09-22 19:19:19');
INSERT INTO `products` VALUES (686, '', 'preacher', 'Preacher', 'd2aca20f-f034-445b-b4b2-de564594be02', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 40, 0, '100', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:19', '2020-09-22 19:19:19');
INSERT INTO `products` VALUES (687, '', 'outer_darkness', 'Outer Darkness', '4696d87c-4739-44b9-b084-e2fe89f29b15', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 40, 0, '100', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:20', '2020-09-22 19:19:20');
INSERT INTO `products` VALUES (688, '', 'realm_of_ruins', 'Realm Of Ruins', '76509713-d303-4fff-a838-a4f404ef4a37', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 120, 0, '100', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:21', '2020-09-22 19:19:21');
INSERT INTO `products` VALUES (689, '', 'princess_of_winds', 'Princess of Winds & Sea', 'f949a210-ab12-4301-8458-92b5ee5ebba7', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 120, 0, '100', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:21', '2020-09-22 19:19:21');
INSERT INTO `products` VALUES (690, '', 'keepers', 'Keepers The Bounds Book', '48ba3d43-112a-44fa-bdc4-0ba78d9d0d5f', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 150, 0, '100', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:22', '2020-09-22 19:19:22');
INSERT INTO `products` VALUES (691, '', 'julia', 'Julia Vanishes', '473631d2-70fc-48f8-8246-3a3e3f5bd8f4', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 100, 80, '20', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:22', '2020-09-22 19:19:22');
INSERT INTO `products` VALUES (692, '', 'carnival', 'Carnival', 'ba52bf96-1f98-465e-bce8-e5f26003a253', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 100, 80, '20', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:23', '2020-09-22 19:19:23');
INSERT INTO `products` VALUES (693, '', 'truthwithc', 'Truth Witch', '854a72a5-043a-4bf6-ba97-11b4b006b363', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 100, 0, '100', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:24', '2020-09-22 19:19:24');
INSERT INTO `products` VALUES (694, '', 'the_true_queen', 'The True Queen', 'ff54ee3e-cb19-4a2c-9d1e-95458ed410fe', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 100, 0, '100', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:24', '2020-09-22 19:19:24');
INSERT INTO `products` VALUES (695, '', 'tbethany', 'Bethany', 'c26f1478-bb57-4862-815a-02d61b2aee26', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 100, 0, '100', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:25', '2020-09-22 19:19:25');
INSERT INTO `products` VALUES (696, '', 'little_black_spots', 'Little Black Spots', 'ff86fa02-3926-486d-9faf-7733351b667d', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 150, 120, '20', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:25', '2020-09-22 19:19:25');
INSERT INTO `products` VALUES (697, '', 'the_namartielle', 'The Namartielle', '1811c571-467f-4b78-8af4-f09dbc968f22', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 100, 0, '100', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:26', '2020-09-22 19:19:26');
INSERT INTO `products` VALUES (698, '', 'mayhem', 'Mayhem', '91cb4b86-a6cf-4d0b-b009-c5f29c9b86b3', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 100, 0, '100', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:27', '2020-09-22 19:19:27');
INSERT INTO `products` VALUES (699, '', 'ghosts_of_graylock', 'The Ghost of Graylock', '7fb96249-4f62-4145-bd71-e83ab04b8ce7', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 100, 70, '30', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:27', '2020-09-22 19:19:27');
INSERT INTO `products` VALUES (700, '', 'girl_from_the_well', 'The Girl From The Well', '10c89d74-751f-4af3-8091-59189279e5ec', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 140, 0, '100', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:28', '2020-09-22 19:19:28');
INSERT INTO `products` VALUES (701, '', 'the_amityville', 'The Amityville Horror', '87ed6544-db7b-45b9-affd-3f065fd815a8', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 80, 0, '100', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:29', '2020-09-22 19:19:29');
INSERT INTO `products` VALUES (702, '', 'it', 'IT', '3dd0cdfe-9204-4669-8564-dafd1091edde', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 100, 0, '100', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:29', '2020-09-22 19:19:29');
INSERT INTO `products` VALUES (703, '', 'the_lost_country', 'The Lost Country', '5e723726-1d5c-4999-88f2-ca73ec82c1ae', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 100, 0, '100', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:30', '2020-09-22 19:19:30');
INSERT INTO `products` VALUES (704, '', 'orphan_war', 'An Orphans War', 'e98eecbb-183c-43ba-bb65-cfce7232ac8b', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 200, 140, '30', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:31', '2020-09-22 19:19:31');
INSERT INTO `products` VALUES (705, '', 'warlight', 'Warlight', 'a9c83aa4-f13a-412c-892b-4b38fde3afd6', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 100, 0, '100', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:31', '2020-09-22 19:19:31');
INSERT INTO `products` VALUES (706, '', 'you', 'You', 'ace18b95-21b3-4e56-ba8e-9ce9cf7f8894', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 120, 0, '100', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:32', '2020-09-22 19:19:32');
INSERT INTO `products` VALUES (707, '', 'significance', 'Significance', '5a40724c-5560-49de-bebe-a0ed2b2707db', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 100, 0, '100', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:32', '2020-09-22 19:19:32');
INSERT INTO `products` VALUES (708, '', 'the_japanese_lover', 'The Japanese Lover', '39162f61-6bc3-43a8-835a-7fbdda73fde6', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 100, 85, '15', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:33', '2020-09-22 19:19:33');
INSERT INTO `products` VALUES (709, '', 'all_the_rage', 'All The Rage', 'bbf911d6-b21d-4228-84ed-4cd42df24b06', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 130, 0, '100', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:34', '2020-09-22 19:19:34');
INSERT INTO `products` VALUES (710, '', 'the_lost_book', 'The Lost Book Of The Grail', 'cd2cd6ea-a957-4edf-a281-78a71f6a0923', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 160, 0, '100', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:34', '2020-09-22 19:19:34');
INSERT INTO `products` VALUES (711, '', 'strawberry_summber', 'Strawberry Summer', 'ab94d575-af8d-4d54-8054-b4238afba65f', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 130, 0, '100', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:35', '2020-09-22 19:19:35');
INSERT INTO `products` VALUES (712, '', 'on_the_way', 'On The Way To You', '0a747eb0-481c-4339-941f-ca57f555f326', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 200, 160, '20', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:35', '2020-09-22 19:19:35');
INSERT INTO `products` VALUES (713, '', 'the_bride', 'The Bride Takes A Groom', '5300203c-bae1-45c1-b4e7-2879ccbc09be', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 160, 0, '100', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:36', '2020-09-22 19:19:36');
INSERT INTO `products` VALUES (714, '', 'whiskey', 'Whiskey', 'c7524919-25e0-4279-8dfe-43c8496b5d8a', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 145, 0, '100', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:37', '2020-09-22 19:19:37');
INSERT INTO `products` VALUES (715, '', 'the_deamon', 'The Deamon Lover', '6c16968d-8855-4d07-bb4c-32d0863c2cee', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 160, 0, '100', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:37', '2020-09-22 19:19:37');
INSERT INTO `products` VALUES (716, '', 'heart_of_fire', 'Heart Of Fire', '25b883c2-9671-4787-b75b-d1709d59cf09', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 180, 0, '100', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:38', '2020-09-22 19:19:38');
INSERT INTO `products` VALUES (717, '', 'embracing_heart', 'Embracing Her Heart', 'dd1697ef-98ac-4863-bba6-fa4f500a48be', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 150, 120, '20', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:39', '2020-09-22 19:19:39');
INSERT INTO `products` VALUES (718, '', 'hearts_and_bruises', 'Hearts And Bruises', 'dba36d79-2241-464c-89c3-fae7ed5e9304', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 160, 0, '100', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:39', '2020-09-22 19:19:39');
INSERT INTO `products` VALUES (719, '', 'on_the_rocks', 'On The Rocks', '449f48ef-160a-4022-85f7-36122c010b60', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 160, 0, '100', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:40', '2020-09-22 19:19:40');
INSERT INTO `products` VALUES (720, '', 'space_force', 'Space Force', '35ef5deb-7b3b-4619-ac54-1a13d6174728', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 160, 0, '100', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:40', '2020-09-22 19:19:40');
INSERT INTO `products` VALUES (721, '', 'the_stars_Are', 'The Stars Are Legion', 'fc8b9567-aa88-4358-9d45-7a4d5deaea2e', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 160, 0, '100', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:41', '2020-09-22 19:19:41');
INSERT INTO `products` VALUES (722, '', 'teh_emerald_tablet', 'The Emerald Tablet ', 'b5d16fad-5825-4c42-ba07-909259c8e199', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 100, 90, '10', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:42', '2020-09-22 19:19:42');
INSERT INTO `products` VALUES (723, '', 'war_for', 'War For Alcyon V', 'b0b176cf-83cf-4a1c-8f3c-e2789a346c57', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 100, 90, '10', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:42', '2020-09-22 19:19:42');
INSERT INTO `products` VALUES (724, '', 'hammer_of_doom', 'Hammer Of Doom', '4a149f95-663a-4aff-af3f-1d46558253a3', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 160, 0, '100', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:43', '2020-09-22 19:19:43');
INSERT INTO `products` VALUES (726, '', 'shadows_cast', 'Shadows Cast By Stars', '736db692-ae39-4afd-bf70-16442f061ec4', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 150, 0, '100', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:43', '2020-09-22 19:19:43');
INSERT INTO `products` VALUES (730, '', 'stasi_child', 'Stasi Child', 'f2014eb7-722c-4d67-8d46-bfe3eacea3dd', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 200, 180, '10', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:44', '2020-09-22 19:19:44');
INSERT INTO `products` VALUES (731, '', 'the_stolen_girls', 'The Stolen Girls', 'e322bf2f-b490-4091-baf5-d6ecadf1e3ac', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 130, 0, '100', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:45', '2020-09-22 19:19:45');
INSERT INTO `products` VALUES (732, '', 'sudden_death', 'Sudden Death', '351b6010-af45-4d2f-a9bc-d8bc94e25c12', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 150, 0, '100', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:45', '2020-09-22 19:19:45');
INSERT INTO `products` VALUES (733, '', 'say_her_name', 'Say Her Name', 'f4b7bc1e-e8c3-42c0-a8c8-b16c6da94c54', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 180, 0, '100', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:46', '2020-09-22 19:19:46');
INSERT INTO `products` VALUES (734, '', 'snake_skin', 'Snake Skin', 'c8bf310e-09a4-41f7-8c41-f1814c0964b0', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 150, 135, '10', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:46', '2020-09-22 19:19:46');
INSERT INTO `products` VALUES (735, '', 'time_of_Death', 'Time Of Death', 'd92e9a69-b215-4c08-8bce-28a3813b3a9d', 'The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. ', 0, 100, 70, '30', 0, ' 10 pc(s)', 0, '2020-09-22 19:19:47', '2020-09-22 19:19:47');
INSERT INTO `products` VALUES (737, '', 'baby_dream', 'K Mom Natural Pureness Premium Baby Wipes 100pcs', '1f1b30bf-66a2-4ebb-8a83-1f2bc3531464', '', 0, 3, 0, '100', 0, ' 1 Box', 0, '2020-09-22 19:19:48', '2020-09-22 19:19:48');
INSERT INTO `products` VALUES (740, '', 'beaucare_wet_wipes', ' GU Eco Organic Baby Wipes 72pcs', '79ba96ff-5198-41a4-a843-6cd6e7d4756d', '', 0, 4, 0, '100', 0, ' 1 Box', 0, '2020-09-22 19:19:48', '2020-09-22 19:19:48');
INSERT INTO `products` VALUES (741, '', 'Cottonelle_Flushable_Wipes', ' Cottonelle Flushable Baby Wipes 60pcs', 'b144c5cb-e185-44a8-acf5-2a8e69b20275', '', 0, 4, 0, '100', 0, ' 1 Box', 0, '2020-09-22 19:19:49', '2020-09-22 19:19:49');
INSERT INTO `products` VALUES (742, '', 'Carell_Bedbath_Wipes_Pack', ' Carell Bedbath Wipes 8pcs', '2bf7b6e8-a0bf-4fbc-8b01-95751748cfe7', '', 0, 2, 0, '100', 0, '1 Box', 0, '2020-09-22 19:19:50', '2020-09-22 19:19:50');
INSERT INTO `products` VALUES (743, '', 'Waterwipes_Baby_Wipes', ' Waterwipes Baby Wipes 50pcs', 'fc8761f7-3ec7-4533-a397-c2e4b23c06e7', '', 0, 3, 0, '100', 0, '1 Box', 0, '2020-09-22 19:19:51', '2020-09-22 19:19:51');
INSERT INTO `products` VALUES (744, '', 'Gompels_Gentle_Skin_Wipes_60_Pack', ' Gompels Skin Wipes 60pcs', '2f0caf0e-511d-479f-98d9-09ef4606156b', '', 0, 4, 0, '100', 0, '1 Box', 0, '2020-09-22 19:19:52', '2020-09-22 19:19:52');
INSERT INTO `products` VALUES (745, '', 'Pampers_Pure_Protection', ' Pampers Pure Protection ', '0a408bb2-e9f8-4092-b052-e51e47fa6c8b', '', 0, 12, 0, '100', 0, '1 Box', 0, '2020-09-22 19:19:52', '2020-09-22 19:19:52');
INSERT INTO `products` VALUES (746, '', 'Safilo_Champs', 'Safilo Champs Absorbent Pants ', '2863dd0d-e392-4838-aada-7c8cc29ee8c0', '', 0, 9, 0, '100', 0, '1 Box', 0, '2020-09-22 19:19:53', '2020-09-22 19:19:53');
INSERT INTO `products` VALUES (747, '', 'Seventh_Generation', 'Seventh Generation Baby Diapers', '83eb3fc9-1e94-429a-8310-b972da578436', '', 0, 7, 0, '100', 0, ' 1 Box', 0, '2020-09-22 19:19:54', '2020-09-22 19:19:54');
INSERT INTO `products` VALUES (748, '', '365_Diapers_Size3', ' 365 Chlorine Free Diapers', 'b2ad0f59-78ba-42e2-a42e-1452197c25bb', '', 0, 10, 0, '100', 0, '1 Box', 0, '2020-09-22 19:19:55', '2020-09-22 19:19:55');
INSERT INTO `products` VALUES (749, '', 'Pampers_Preemie', 'Pampers Preemie Diapers', 'e5b1a328-4c65-478e-b5e7-7213ad72748a', '', 0, 11, 0, '100', 0, '1 Box', 0, '2020-09-22 19:19:56', '2020-09-22 19:19:56');
INSERT INTO `products` VALUES (750, '', 'Lulu_Baby', 'Lulu Baby Diapers', '6bf15ce7-620a-4724-b83b-c727e9ddbfd9', '', 0, 9, 0, '100', 0, '1 Box', 0, '2020-09-22 19:19:56', '2020-09-22 19:19:56');
INSERT INTO `products` VALUES (751, '', 'Protein_World_Multi_Vitamin_Capsules', 'Protien World Multi Vitamin Capsules', '0d98b13f-058b-4b70-8904-c4f44de04aa5', '', 0, 13, 0, '100', 0, '1 Bottle', 0, '2020-09-22 19:19:57', '2020-09-22 19:19:57');
INSERT INTO `products` VALUES (752, '', 'Jarrow_Formulas', 'Jarrow Formulas Baby Jarro-Dophilus', 'a626beb8-eb09-4858-8cd3-f9c2c83bd4a9', '', 0, 13, 0, '100', 0, '1 Bottle', 0, '2020-09-22 19:19:58', '2020-09-22 19:19:58');
INSERT INTO `products` VALUES (753, '', 'Upspring_Milkflow', 'Upspring Milkflow', '7f6d4fab-3ad8-4fe6-80d3-65f4b947745e', '', 0, 10, 0, '100', 0, '1 Bottle', 0, '2020-09-22 19:19:59', '2020-09-22 19:19:59');
INSERT INTO `products` VALUES (754, '', 'Now_Sunflower_Lecithin', 'Now Sunflower Lecithin', '2a063310-1fe9-4d1f-9bdf-3122644f8263', '', 0, 11, 0, '100', 0, '1 Bottle', 0, '2020-09-22 19:19:59', '2020-09-22 19:19:59');
INSERT INTO `products` VALUES (755, '', 'Cetaphil_Baby_Eczema_Calming_Moisturizer', 'Cetaphil Baby Eczema Calming Moisturizer', 'e7e58032-b10d-47df-841b-2172fea1a599', '', 0, 2, 0, '100', 0, '1 Bottle', 0, '2020-09-22 19:20:00', '2020-09-22 19:20:00');
INSERT INTO `products` VALUES (756, '', 'Acure_Bare_Baby_4in1', 'Acure Bare Baby 4 in 1', '9fa30c0a-3340-4391-9674-bf1a2309d4d8', '', 0, 2, 0, '100', 0, '1 Bottle', 0, '2020-09-22 19:20:01', '2020-09-22 19:20:01');
INSERT INTO `products` VALUES (757, '', 'Baby_Bubble_Bath', 'Johnson Baby Bubble Bath', 'c47f1e03-88da-4763-9b2c-6709c08b6aa2', '', 0, 3, 0, '100', 0, '1 Bottle', 0, '2020-09-22 19:20:02', '2020-09-22 19:20:02');
INSERT INTO `products` VALUES (758, '', 'Aveeno_Baby_Daily_Moisture_Lotion', 'Aveeno Baby Daily Moisture Lotion', 'e41b9a9e-467c-49a1-869f-0a454618488b', '', 0, 2, 0, '100', 0, '1 Bottle', 0, '2020-09-22 19:20:02', '2020-09-22 19:20:02');
INSERT INTO `products` VALUES (759, '', 'Babo_Calming_baby_Lotion', 'Babo Calming baby Lotion', '3056c6d2-cca0-4687-b94e-de125785b762', '', 0, 5, 0, '100', 0, '1 Bottle', 0, '2020-09-22 19:20:03', '2020-09-22 19:20:03');
INSERT INTO `products` VALUES (760, '', 'Banyan_Tulsi_Powder', 'Banyan Tulsi Powder', 'ecb4b86e-1f1b-476b-aa31-ed49606d2758', '', 0, 1, 0, '100', 0, '1 Box', 0, '2020-09-22 19:20:04', '2020-09-22 19:20:04');
INSERT INTO `products` VALUES (761, '', 'Acp_World_Lemon_Tea', 'Acp World Lemon Tea', '20e26a32-15f5-4a2d-baad-5f63e703253b', '', 0, 7, 0, '100', 0, '1 Bottle', 0, '2020-09-22 19:20:05', '2020-09-22 19:20:05');
INSERT INTO `products` VALUES (762, '', 'GNC_Tribulus', 'GNC Herbal Plus Tribulusn', 'd9212e49-bc0f-4a90-8aca-64ea22f88bb2', '', 0, 4, 0, '100', 0, '1 Bottle', 0, '2020-09-22 19:20:05', '2020-09-22 19:20:05');
INSERT INTO `products` VALUES (763, '', 'K_Pax_Dhea', 'K Pax Dhea Dietary Suppliment', 'abf369dc-b6f3-4061-b725-7d5299aa4ef2', '', 0, 10, 0, '100', 0, '1 Bottle', 0, '2020-09-22 19:20:06', '2020-09-22 19:20:06');
INSERT INTO `products` VALUES (764, '', 'Aavaaram_Moringa_Tablet', 'Aavaaram Moringa Tablet', 'f0198df0-1718-42d6-b5ea-d99cfb544468', '', 0, 4, 0, '100', 0, '1 Bottle', 0, '2020-09-22 19:20:06', '2020-09-22 19:20:06');
INSERT INTO `products` VALUES (765, '', 'Krishkare_Aloe_Vera_Face_Wash', 'Krishkare Aloe Vera Face Wash', 'fb789219-4e6b-4bf8-8de5-2d08efddd387', '', 0, 3, 0, '100', 0, '1 Bottle', 0, '2020-09-22 19:20:07', '2020-09-22 19:20:07');
INSERT INTO `products` VALUES (766, '', 'Medico_Herbs_Sutherlandia_Cancer_Bush_Capsules', 'Medico Herbs Sutherlandia Cancer Bush Capsules', '5f246f29-d415-4355-a60b-0d86db14e160', '', 0, 15, 0, '100', 0, '1 Bottle', 0, '2020-09-22 19:20:08', '2020-09-22 19:20:08');
INSERT INTO `products` VALUES (767, '', 'Hairmax_Dietary_Supplement_For_Hair_Skin_And_Nails_60_Capsules', 'Hairmax Dietary Supplement For Hair Skin And Nails 60 Capsules', '895df700-2bd8-4021-8d64-65a2e839a00e', '', 0, 7, 0, '100', 0, '1 Bottle', 0, '2020-09-22 19:20:08', '2020-09-22 19:20:08');
INSERT INTO `products` VALUES (768, '', 'Houston_Enzymes_Biomuve_120_Capsules', 'Houston Enzymes Biomuve 120 Capsules', '6430317f-267f-49b0-870a-81a5a185467d', '', 0, 8, 0, '100', 0, '1 Bottle', 0, '2020-09-22 19:20:09', '2020-09-22 19:20:09');
INSERT INTO `products` VALUES (769, '', 'Jou_Digestive_health_Dietary_supplement_270_capsules', 'Jou Digestive health Dietary supplement 270 capsules', '092a71f8-e1af-4726-9167-e1571c8604b8', '', 0, 8, 0, '100', 0, '1 Bottle', 0, '2020-09-22 19:20:09', '2020-09-22 19:20:09');
INSERT INTO `products` VALUES (770, '', 'Natrol_Vitamin_D3_Bone', 'Natrol Vitamin D3 Bone & Joint Health', 'f7fcad86-5e54-4e9b-8b4c-ff9ead4dbd87', '', 0, 6, 0, '100', 0, '1 Bottle', 0, '2020-09-22 19:20:10', '2020-09-22 19:20:10');
INSERT INTO `products` VALUES (771, '', 'Nature%27s_Bounty_Vitamin_C_500mg_250_ablets', 'Natue Bounty Vitamin c 500mg 250 Tablets', 'c4e91138-6eb2-452e-b50f-02a743686de5', '', 0, 4, 0, '100', 0, '1 Bottle', 0, '2020-09-22 19:20:10', '2020-09-22 19:20:10');
INSERT INTO `products` VALUES (772, '', 'Amandean_Wild_Caught_Fish_Marine_Collagen_Dietary_Supplement_500g', 'Amandean Wild Caught Fish Marine Collagen Dietary Supplement', 'da4f173a-4d37-4b5f-8df2-563dd42188bb', '', 0, 7, 0, '100', 0, '1 Bottle', 0, '2020-09-22 19:20:11', '2020-09-22 19:20:11');
INSERT INTO `products` VALUES (773, '', 'Severe_Cold_', 'Severe Cold & Flu 24 Caplets', '2fd9a987-d3df-4ac0-bad6-1fc77f271cdd', '', 0, 1, 0, '100', 0, '1 Box', 0, '2020-09-22 19:20:11', '2020-09-22 19:20:11');
INSERT INTO `products` VALUES (774, '', 'Contac', 'Contac Cold + Flu', '4a07a290-0765-4928-bb63-2514f3d18eeb', '', 0, 2, 0, '100', 0, '1 BOx', 0, '2020-09-22 19:20:12', '2020-09-22 19:20:12');
INSERT INTO `products` VALUES (775, '', 'H-E-B_Daytime', 'H-E-B Daytime 16 Softgels', 'b650a382-de52-4198-a61c-ed2ee6e0f84a', '', 0, 1, 0, '100', 0, '1 Box', 0, '2020-09-22 19:20:13', '2020-09-22 19:20:13');
INSERT INTO `products` VALUES (776, '', 'Nurofen_Cold', 'Nurofen Cold & Flu PE', '9f616f1f-312a-459f-8b7e-78605d2696e7', '', 0, 2, 0, '100', 0, '1 Box', 0, '2020-09-22 19:20:13', '2020-09-22 19:20:13');
INSERT INTO `products` VALUES (777, '', 'Panadol', 'Panadol Cough & Cold', '7ab4be25-bd72-459a-ab33-c963191293a1', '', 0, 1, 0, '100', 0, '1 Box', 0, '2020-09-22 19:20:14', '2020-09-22 19:20:14');
INSERT INTO `products` VALUES (778, '', 'Lifesystems_Waterproof_First_Aid', 'Lifesystems Waterproof First Aid', '934c23e3-7a92-4717-80e1-4ff02174ba83', '', 0, 20, 0, '100', 0, '1 Box', 0, '2020-09-22 19:20:15', '2020-09-22 19:20:15');
INSERT INTO `products` VALUES (779, '', 'Johnson_', 'Johnson & Johnson First Aid Kit', 'aa9f900f-ecfa-4117-803e-5d94f2146119', '', 0, 24, 0, '100', 0, '1 Box', 0, '2020-09-22 19:20:15', '2020-09-22 19:20:15');
INSERT INTO `products` VALUES (780, '', 'Remote_', 'Remote Worker First Aid Kit', '3ef0eeba-dfa5-46b0-9b24-451b3a080b39', '', 0, 22, 0, '100', 0, '1 Box', 0, '2020-09-22 19:20:16', '2020-09-22 19:20:16');
INSERT INTO `products` VALUES (781, '', 'Red_Cross_First_Aid_Kit', 'Red Cross First Aid Kit', 'd4b3270c-88d0-45e4-a01b-01643ab59ddc', '', 0, 18, 0, '100', 0, '1 Box', 0, '2020-09-22 19:20:16', '2020-09-22 19:20:16');
INSERT INTO `products` VALUES (782, '', 'John_First_Aid_Kit', 'St. John First Aid Kit', '4195f478-784a-468e-a57a-e67e8f3ab115', '', 0, 21, 0, '100', 0, '1 Box', 0, '2020-09-22 19:20:17', '2020-09-22 19:20:17');
INSERT INTO `products` VALUES (783, '', 'DGHL_8_hour_pain_relief', 'DGHL 8 hour pain relief 50 Caplets', '0d987d2b-738a-4486-9fff-e690d7c30737', '', 0, 5, 0, '100', 0, '1 Box', 0, '2020-09-22 19:20:18', '2020-09-22 19:20:18');
INSERT INTO `products` VALUES (784, '', 'Nurofen_Zavance', 'Nurofen Zavance 96 Tablets', '58c00f48-506d-4ad5-ba09-d408aa2ec980', '', 0, 6, 0, '100', 0, '1 Box', 0, '2020-09-22 19:20:18', '2020-09-22 19:20:18');
INSERT INTO `products` VALUES (785, '', 'Bengay', 'Bengay Twin Pack', '5d0d807d-803c-423c-bc44-40b198c97413', '', 0, 2, 0, '100', 0, '1 Box', 0, '2020-09-22 19:20:19', '2020-09-22 19:20:19');
INSERT INTO `products` VALUES (786, '', 'Advil', 'Advil Liqui Gels', 'ab438b7b-1180-4d49-a29e-7bbf6796f2b8', '', 0, 3, 0, '100', 0, '1 Box', 0, '2020-09-22 19:20:19', '2020-09-22 19:20:19');
INSERT INTO `products` VALUES (787, '', 'Tylenol', 'Tylenol Light + Heat Therapy', 'b170c294-1db8-44c8-ae84-38f47dcbaae9', '', 0, 3, 0, '100', 0, '1 Box', 0, '2020-09-22 19:20:20', '2020-09-22 19:20:20');
INSERT INTO `products` VALUES (788, '', 'Nicorette', 'Nicorette 2mg Gum', '9b2e15ce-14c5-4274-8a19-8cccd121c78e', '', 0, 7, 0, '100', 0, '1 Box', 0, '2020-09-22 19:20:20', '2020-09-22 19:20:20');
INSERT INTO `products` VALUES (789, '', 'H-E-B_Nicotine_Lozenge', 'H-E-B Mint Nicotine Lozenge', '6e3b9106-39a6-497f-8f76-862b8fd518fb', '', 0, 8, 0, '100', 0, '1 Box', 0, '2020-09-22 19:20:21', '2020-09-22 19:20:21');
INSERT INTO `products` VALUES (790, '', 'Equate_Mini_Nicotine_Lozenges', 'Equate Mini Nicotine Lozenges', '5f85b1a5-f1ca-464e-ab1a-48d6bb1a7427', '', 0, 8, 0, '100', 0, '1 Box', 0, '2020-09-22 19:20:22', '2020-09-22 19:20:22');
INSERT INTO `products` VALUES (791, '', 'Nicotinell', 'Nicotinell Mint 1mg Compressed Tablets', '2b168764-87ff-43cf-b75f-72cb9758b718', '', 0, 6, 0, '100', 0, '1 Box', 0, '2020-09-22 19:20:22', '2020-09-22 19:20:22');
INSERT INTO `products` VALUES (792, '', 'Nicofi', 'Nicofi Nicotine 1mg Tablets', '7b4d20be-f637-4263-88b9-a7057b4d6f68', '', 0, 6, 0, '100', 0, '1 Box', 0, '2020-09-22 19:20:23', '2020-09-22 19:20:23');
INSERT INTO `products` VALUES (3371, '', 'coffee_blossom_honey', 'Coffee Blossom Honey', 'a1c0680b-33f9-4a84-8c98-ada45f1b4f60', 'Honey is a sweet, viscous food substance made by bees and some related insects. Bees produce honey from the sugary secretions of plants (floral nectar) or from secretions of other insects (such as honeydew), by regurgitation, enzymatic activity, and water evaporation', 0, 8, 0, '100', 0, ' 2 lb', 0, '2020-09-22 19:15:23', '2020-09-22 19:15:23');

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
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sales_orders
-- ----------------------------
INSERT INTO `sales_orders` VALUES (1, '2020-09-25', 2, NULL, 1, 1, 1, '90 min express delivery', 6, 1, 4, 26.00, 6.00, 32.00, 0.00, '2020-09-25 08:11:51', '2020-09-25 08:11:51');
INSERT INTO `sales_orders` VALUES (2, '2020-09-25', 2, NULL, 1, 1, 1, '90 min express delivery', 6, 1, 4, 26.00, 6.00, 32.00, 0.00, '2020-09-25 11:52:18', '2020-09-25 11:52:18');
INSERT INTO `sales_orders` VALUES (3, '2020-09-25', 2, NULL, 1, 1, 1, '90 min express delivery', 6, 1, 3, 10.00, 3.00, 13.00, 0.00, '2020-09-25 12:01:24', '2020-09-25 12:01:24');
INSERT INTO `sales_orders` VALUES (4, '2020-09-25', 2, NULL, 1, 2, 1, '5.00 PM - 8.00 PM', 10, 5, 5, 20.00, 5.00, 25.00, 0.00, '2020-09-25 12:11:13', '2020-09-25 12:11:13');
INSERT INTO `sales_orders` VALUES (5, '2020-09-25', 2, NULL, 1, 1, 1, '90 min express delivery', 6, 1, 4, 15.00, 4.00, 19.00, 0.00, '2020-09-25 14:45:19', '2020-09-25 14:45:19');
INSERT INTO `sales_orders` VALUES (6, '2020-09-25', 2, NULL, 1, 1, 1, '90 min express delivery', 6, 1, 6, 12.00, 3.00, 15.00, 0.00, '2020-09-25 14:47:50', '2020-09-25 14:47:50');
INSERT INTO `sales_orders` VALUES (7, '2020-09-25', 2, NULL, 1, 1, 1, '90 min express delivery', 6, 1, 3, 10.00, 3.00, 13.00, 0.00, '2020-09-25 14:48:45', '2020-09-25 14:48:45');
INSERT INTO `sales_orders` VALUES (8, '2020-09-25', 2, NULL, 1, 1, 1, '90 min express delivery', 6, 1, 4, 14.00, 4.00, 18.00, 0.00, '2020-09-25 14:50:52', '2020-09-25 14:50:52');
INSERT INTO `sales_orders` VALUES (9, '2020-09-25', 2, NULL, 1, 1, 1, '90 min express delivery', 6, 1, 3, 14.00, 3.00, 17.00, 0.00, '2020-09-25 14:56:40', '2020-09-25 14:56:40');
INSERT INTO `sales_orders` VALUES (10, '2020-09-25', 2, NULL, 1, 1, 1, '90 min express delivery', 6, 1, 3, 14.00, 3.00, 17.00, 0.00, '2020-09-25 14:58:35', '2020-09-25 14:58:35');
INSERT INTO `sales_orders` VALUES (12, '2020-09-25', 2, NULL, 1, 1, 1, '90 min express delivery', 6, 1, 3, 10.40, 2.60, 13.00, 0.00, '2020-09-25 15:02:45', '2020-09-25 15:02:45');
INSERT INTO `sales_orders` VALUES (13, '2020-09-25', 2, NULL, 1, 1, 1, '90 min express delivery', 6, 1, 4, 12.00, 3.00, 15.00, 0.00, '2020-09-25 15:10:49', '2020-09-25 15:10:49');

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
  `id` int(0) NOT NULL,
  `media` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `profie_link` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `author_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of social
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
INSERT INTO `tags` VALUES (5, 'Book', 'book', 'Book', '2020-09-22 14:41:04', '0000-00-00 00:00:00');
INSERT INTO `tags` VALUES (6, 'Furniture', 'furniture', 'FurnitureIcon', '2020-09-22 14:41:42', '0000-00-00 00:00:00');
INSERT INTO `tags` VALUES (7, 'Medicine', 'medicine', 'BookIcon', '2020-09-22 14:41:45', '0000-00-00 00:00:00');
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
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `active` tinyint(1) NULL DEFAULT 1,
  `inserted_at` timestamp(0) NOT NULL,
  `updated_at` timestamp(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'jhondDoe@demo.com', '', 'Jhon Doe Smith', NULL, 1, '2020-09-23 11:31:07', '2020-09-23 11:31:07');
INSERT INTO `users` VALUES (2, 'jhondDoe@demo.com', '', 'Jhon Doe Smith', NULL, 1, '2020-09-23 11:31:09', '2020-09-23 11:31:09');

-- ----------------------------
-- View structure for get_orders
-- ----------------------------
DROP VIEW IF EXISTS `get_orders`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `get_orders` AS select `s`.`id` AS `id`,`s`.`customer_id` AS `customer_id`,`c`.`card` AS `card`,`co`.`code` AS `code`,`a`.`address` AS `deliveryAddress`,`t`.`contact_number` AS `deliveryContact`,`s`.`delivery_time` AS `deliveryTime`,`s`.`delivery_fee` AS `deliveryFee`,`s`.`total` AS `total`,`s`.`discount` AS `discount`,`s`.`subtotal` AS `subtotal`,`s`.`quantity` AS `quantity`,`pm`.`name` AS `payment_method`,`tr`.`status` AS `status`,`s`.`order_date` AS `date`,`op`.`product_ids` AS `product_ids`,`op`.`product_images` AS `product_images`,`op`.`product_prices` AS `product_prices`,`op`.`product_titles` AS `product_titles`,`op`.`product_units` AS `product_units`,`op`.`product_quantities` AS `product_quantities`,`op`.`product_types` AS `product_types` from ((((((((`sales_orders` `s` join `order_products` `p`) join `address` `a`) join `contact` `t`) join `card` `c`) join `cc_transactions` `tr`) join `coupons` `co`) join `payment_mothod` `pm`) join (select `order_products`.`order_id` AS `order_id`,group_concat(`order_products`.`product_id` separator '^^^') AS `product_ids`,group_concat(`order_products`.`name` separator '^^^') AS `product_titles`,group_concat(`order_products`.`image` separator '^^^') AS `product_images`,group_concat(`order_products`.`price` separator '^^^') AS `product_prices`,group_concat(`order_products`.`unit` separator '^^^') AS `product_units`,group_concat(`order_products`.`quantity` separator '^^^') AS `product_quantities`,group_concat(`tags`.`name` separator '^^^') AS `product_types` from (`order_products` join `tags`) where (`order_products`.`tag_id` = `tags`.`id`) group by `order_products`.`order_id`) `op`) where ((`s`.`id` = `p`.`order_id`) and (`s`.`delivery_address` = `a`.`id`) and (`s`.`contact_number` = `t`.`id`) and (`s`.`card_id` = `c`.`id`) and (`s`.`id` = `tr`.`order_id`) and (`s`.`id` = `op`.`order_id`) and (`s`.`payment_id` = `pm`.`id`) and (`s`.`coupon_id` = `co`.`id`)) group by `s`.`id` order by `s`.`id` desc;

-- ----------------------------
-- View structure for get_user_profiles
-- ----------------------------
DROP VIEW IF EXISTS `get_user_profiles`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `get_user_profiles` AS select `u`.`id` AS `id`,`u`.`email` AS `email`,`u`.`name` AS `name`,`a`.`address_ids` AS `address_ids`,`a`.`titles` AS `titles`,`a`.`addresses` AS `addresses`,`p`.`contact_ids` AS `contact_ids`,`p`.`numbers` AS `numbers`,`c`.`card_ids` AS `card_ids`,`c`.`card_types` AS `card_types`,`c`.`cards` AS `cards`,`up`.`primary_address` AS `primary_address`,`up`.`primary_card` AS `primary_card`,`up`.`primary_contact` AS `primary_contact` from ((((`users` `u` join (select `address`.`user_id` AS `user_id`,group_concat(`address`.`id` separator '^^^') AS `address_ids`,group_concat(`address`.`title` separator '^^^') AS `titles`,group_concat(`address`.`address` separator '^^^') AS `addresses` from `address` group by `address`.`user_id`) `a`) join (select `contact`.`user_id` AS `user_id`,group_concat(`contact`.`id` separator '^^^') AS `contact_ids`,group_concat(`contact`.`contact_number` separator '^^^') AS `numbers` from `contact` group by `contact`.`user_id`) `p`) join (select `card`.`user_id` AS `user_id`,group_concat(`card`.`id` separator '^^^') AS `card_ids`,group_concat(`card`.`type` separator '^^^') AS `card_types`,group_concat(`card`.`card` separator '^^^') AS `cards` from `card` group by `card`.`user_id`) `c`) join `user_profile` `up`) where ((`u`.`id` = `a`.`user_id`) and (`u`.`id` = `p`.`user_id`) and (`u`.`id` = `c`.`user_id`) and (`u`.`id` = `up`.`user_id`)) group by `u`.`id`;

-- ----------------------------
-- View structure for view_products
-- ----------------------------
DROP VIEW IF EXISTS `view_products`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_products` AS select `p`.`id` AS `id`,`p`.`slug` AS `slug`,`p`.`name` AS `name`,`p`.`image` AS `image`,`p`.`description` AS `description`,`p`.`product_status_id` AS `product_status_id`,`p`.`regular_price` AS `regular_price`,`p`.`discount_price` AS `discount_price`,`p`.`discount_percent` AS `discount_percent`,`p`.`quantity` AS `quantity`,`p`.`unit` AS `unit`,`p`.`taxable` AS `taxable`,`p`.`inserted_at` AS `inserted_at`,`p`.`updated_at` AS `updated_at`,group_concat(`pc`.`category_id` separator '^^^') AS `category_ids`,group_concat(`c`.`name` separator '^^^') AS `category_names`,group_concat(`c`.`slug` separator '^^^') AS `category_slugs`,`t`.`slug` AS `tag_slug` from ((((`products` `p` join `product_categories` `pc`) join `categories` `c`) join `product_tags` `pt`) join `tags` `t`) where ((`p`.`id` = `pc`.`product_id`) and (`c`.`id` = `pc`.`category_id`) and (`p`.`id` = `pt`.`product_id`) and (`pt`.`tag_id` = `t`.`id`)) group by `p`.`id`;

SET FOREIGN_KEY_CHECKS = 1;
