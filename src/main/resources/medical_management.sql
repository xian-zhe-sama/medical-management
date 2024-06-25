/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80035 (8.0.35)
 Source Host           : localhost:3306
 Source Schema         : medical_management

 Target Server Type    : MySQL
 Target Server Version : 80035 (8.0.35)
 File Encoding         : 65001

 Date: 19/06/2024 19:40:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `register_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unique_email`(`email` ASC) USING BTREE,
  UNIQUE INDEX `unique_name`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 520 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES (1, 'admin', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', '123456@qq.com', 'admin', '2024-01-10 15:56:06');
INSERT INTO `account` VALUES (3, 'doctor', '$2a$10$F5aYy5PIe7TrGKZ/bWCU9u4l0pMfdi.tvDhYfzp2fJe.09Wm3dqWi', '2931536757@qq.com', 'doctor', '2024-03-14 16:26:35');
INSERT INTO `account` VALUES (4, 'nurse', '$2a$10$FbNWLR6PGRDrKN/fmwwGi.GS.sdMaFbU3qHaRM.3frWGUMIh3tbDS', '1233@163.com', 'nurse', '2024-03-14 16:26:35');
INSERT INTO `account` VALUES (20, 'pharmacist', '$2a$10$F5aYy5PIe7TrGKZ/bWCU9u4l0pMfdi.tvDhYfzp2fJe.09Wm3dqWi', 'hawkalber48@gmail.com', 'pharmacist', '2020-10-14 16:14:28');
INSERT INTO `account` VALUES (21, 'Carol', '$2a$10$F5aYy5PIe7TrGKZ/bWCU9u4l0pMfdi.tvDhYfzp2fJe.09Wm3dqWi', 'cscott@icloud.com', 'doctor', '2021-02-08 12:47:08');
INSERT INTO `account` VALUES (22, 'Harold', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'rharo@gmail.com', 'admin', '2024-01-11 13:03:51');
INSERT INTO `account` VALUES (23, 'Victor', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'rosvictor925@163.com', 'doctor', '2023-06-28 21:24:11');
INSERT INTO `account` VALUES (24, 'Jeremy', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'jeremyrussell76@163.com', 'nurse', '2020-11-27 09:06:37');
INSERT INTO `account` VALUES (25, 'Gregory', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'chavezgr@qq.com', 'nurse', '2022-08-21 17:35:25');
INSERT INTO `account` VALUES (26, 'Evelyn', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'evelyns58@mail.com', 'nurse', '2022-09-16 15:39:35');
INSERT INTO `account` VALUES (27, 'Kenneth', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'kennethherrera9@yahoo.com', 'nurse', '2022-11-08 22:01:06');
INSERT INTO `account` VALUES (28, 'Melvin', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'pricemelv@qq.com', 'doctor', '2020-03-27 16:34:41');
INSERT INTO `account` VALUES (29, 'Joshua', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'sancjoshu@gmail.com', 'admin', '2023-12-21 10:54:16');
INSERT INTO `account` VALUES (30, 'Samuel', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'kims@gmail.com', 'admin', '2022-08-12 20:06:45');
INSERT INTO `account` VALUES (31, 'Susan', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'kelleysusan6@gmail.com', 'admin', '2022-08-05 11:00:18');
INSERT INTO `account` VALUES (32, 'Lee', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'roslee1@163.com', 'nurse', '2022-06-11 04:07:48');
INSERT INTO `account` VALUES (33, 'Sheila', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'ms3@yahoo.com', 'nurse', '2022-08-09 08:50:35');
INSERT INTO `account` VALUES (34, 'Heather', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'heats@mail.com', 'nurse', '2022-01-30 04:11:55');
INSERT INTO `account` VALUES (35, 'Leonard', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'bleonard49@163.com', 'doctor', '2020-04-05 08:47:10');
INSERT INTO `account` VALUES (36, 'Mildred', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'olsonmil@gmail.com', 'doctor', '2021-10-25 15:03:06');
INSERT INTO `account` VALUES (37, 'Phyllis', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'cook20@mail.com', 'nurse', '2021-06-06 17:47:07');
INSERT INTO `account` VALUES (38, 'Edwin', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'edwiell702@yahoo.com', 'nurse', '2023-05-17 20:01:52');
INSERT INTO `account` VALUES (39, 'Todd', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'thill00@gmail.com', 'nurse', '2021-12-16 06:59:55');
INSERT INTO `account` VALUES (40, 'Jonathan', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'jonawel44@gmail.com', 'admin', '2020-07-28 16:28:56');
INSERT INTO `account` VALUES (41, 'Allen', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'walker1@qq.com', 'nurse', '2020-01-16 20:02:58');
INSERT INTO `account` VALUES (42, 'Connie', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'conniech@icloud.com', 'doctor', '2020-03-02 16:12:14');
INSERT INTO `account` VALUES (43, 'Joel', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'joeblack4@yahoo.com', 'nurse', '2020-10-04 17:00:46');
INSERT INTO `account` VALUES (44, 'Ellen', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'ellenwilliams@gmail.com', 'nurse', '2023-12-13 09:59:21');
INSERT INTO `account` VALUES (45, 'Jacob', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'jacobolson58@gmail.com', 'admin', '2021-09-15 19:26:14');
INSERT INTO `account` VALUES (46, 'Sherry', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'aguilarsherry@gmail.com', 'doctor', '2023-08-16 00:55:09');
INSERT INTO `account` VALUES (47, 'Rose', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'miller56@163.com', 'nurse', '2024-03-12 07:48:57');
INSERT INTO `account` VALUES (48, 'Doris', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'allendoris55@gmail.com', 'doctor', '2021-02-25 00:12:04');
INSERT INTO `account` VALUES (49, 'Carmen', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'carmen321@gmail.com', 'nurse', '2023-11-08 15:34:45');
INSERT INTO `account` VALUES (50, 'Cindy', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'gonzales607@163.com', 'nurse', '2023-10-22 14:19:46');
INSERT INTO `account` VALUES (51, 'Rachel', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'prachel1010@icloud.com', 'nurse', '2022-02-05 04:25:53');
INSERT INTO `account` VALUES (52, 'Harry', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'hflores@gmail.com', 'nurse', '2022-02-12 03:12:47');
INSERT INTO `account` VALUES (53, 'Earl', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'colearl10@qq.com', 'admin', '2020-10-23 05:27:51');
INSERT INTO `account` VALUES (54, 'Henry', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'henry531@gmail.com', 'nurse', '2023-07-25 22:40:46');
INSERT INTO `account` VALUES (55, 'Clifford', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'fisherclifford7@icloud.com', 'nurse', '2022-05-13 14:31:44');
INSERT INTO `account` VALUES (56, 'Monica', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'womonica@yahoo.com', 'nurse', '2021-01-14 02:26:38');
INSERT INTO `account` VALUES (57, 'Keith', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'garciakeith@mail.com', 'doctor', '2020-04-07 07:54:39');
INSERT INTO `account` VALUES (58, 'Lucille', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'luciwhite@gmail.com', 'admin', '2023-02-10 00:54:12');
INSERT INTO `account` VALUES (59, 'Howard', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'howard4@icloud.com', 'doctor', '2021-07-31 18:59:05');
INSERT INTO `account` VALUES (60, 'Teresa', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'tef422@yahoo.com', 'doctor', '2024-01-17 17:30:46');
INSERT INTO `account` VALUES (61, 'Maria', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'rmaria1@yahoo.com', 'nurse', '2024-01-11 03:12:52');
INSERT INTO `account` VALUES (62, 'Beverly', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'beverlyc@icloud.com', 'doctor', '2021-06-05 05:40:01');
INSERT INTO `account` VALUES (63, 'Barbara', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'woodbarb1@icloud.com', 'nurse', '2023-12-14 21:38:26');
INSERT INTO `account` VALUES (64, 'Emily', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'simmonse@yahoo.com', 'doctor', '2024-04-15 11:35:56');
INSERT INTO `account` VALUES (65, 'Johnny', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'alljoh1974@gmail.com', 'doctor', '2020-06-30 19:38:38');
INSERT INTO `account` VALUES (66, 'Eva', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'warreneva@gmail.com', 'admin', '2020-05-14 20:56:16');
INSERT INTO `account` VALUES (67, 'Nicole', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'nicole46@yahoo.com', 'admin', '2020-08-26 06:05:45');
INSERT INTO `account` VALUES (68, 'Annie', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'annic71@163.com', 'admin', '2022-06-23 00:20:43');
INSERT INTO `account` VALUES (69, 'Thomas', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'thomasmcdonald@gmail.com', 'admin', '2022-10-08 09:40:17');
INSERT INTO `account` VALUES (70, 'Jean', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'reynojean903@163.com', 'admin', '2023-06-09 16:39:21');
INSERT INTO `account` VALUES (71, 'Robert', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'robert826@icloud.com', 'nurse', '2020-04-09 17:37:38');
INSERT INTO `account` VALUES (72, 'Matthew', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'matthew58@qq.com', 'nurse', '2021-09-03 02:33:04');
INSERT INTO `account` VALUES (73, 'Jesus', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'crawford6@icloud.com', 'nurse', '2021-03-28 01:30:00');
INSERT INTO `account` VALUES (74, 'Stanley', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'fosterstan@gmail.com', 'nurse', '2020-05-17 01:18:28');
INSERT INTO `account` VALUES (75, 'James', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'jamtaylor717@gmail.com', 'admin', '2021-09-12 15:59:02');
INSERT INTO `account` VALUES (76, 'Arthur', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'agar714@qq.com', 'nurse', '2020-12-28 06:24:50');
INSERT INTO `account` VALUES (77, 'Hazel', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'olsonhaz@gmail.com', 'doctor', '2022-07-02 02:37:47');
INSERT INTO `account` VALUES (78, 'Bruce', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'holmebruc@gmail.com', 'nurse', '2023-06-11 14:45:05');
INSERT INTO `account` VALUES (79, 'Jeff', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'jgarcia@icloud.com', 'nurse', '2023-05-18 05:15:31');
INSERT INTO `account` VALUES (80, 'Bradley', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'bradleyromer@yahoo.com', 'nurse', '2021-02-13 07:59:11');
INSERT INTO `account` VALUES (81, 'Jeffrey', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'jh2@163.com', 'nurse', '2020-02-29 05:29:32');
INSERT INTO `account` VALUES (82, 'Mary', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'cm1953@icloud.com', 'nurse', '2021-08-20 16:02:00');
INSERT INTO `account` VALUES (83, 'Deborah', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'kdeborah3@gmail.com', 'doctor', '2022-02-27 01:28:44');
INSERT INTO `account` VALUES (84, 'Karen', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'kaschmidt1@icloud.com', 'nurse', '2023-02-19 13:15:30');
INSERT INTO `account` VALUES (85, 'Pamela', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'webbpa@qq.com', 'doctor', '2023-05-04 04:22:24');
INSERT INTO `account` VALUES (86, 'Nicholas', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'williamsnicholas3@icloud.com', 'admin', '2023-02-16 19:33:09');
INSERT INTO `account` VALUES (87, 'Theodore', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'theodorehunt@icloud.com', 'admin', '2023-08-21 15:37:00');
INSERT INTO `account` VALUES (88, 'Debbie', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'debbmason405@gmail.com', 'admin', '2020-11-04 07:52:52');
INSERT INTO `account` VALUES (89, 'Marjorie', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'edwardsm@icloud.com', 'doctor', '2020-06-15 19:07:30');
INSERT INTO `account` VALUES (90, 'Norman', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'nbro40@qq.com', 'doctor', '2021-05-29 21:07:30');
INSERT INTO `account` VALUES (91, 'Gerald', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'dunng@gmail.com', 'doctor', '2021-09-08 04:57:53');
INSERT INTO `account` VALUES (92, 'Amy', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'amander7@163.com', 'admin', '2023-06-06 11:53:29');
INSERT INTO `account` VALUES (93, 'Larry', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'johnsonla8@gmail.com', 'nurse', '2023-07-06 07:11:28');
INSERT INTO `account` VALUES (94, 'Christine', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'adamsc@icloud.com', 'admin', '2023-09-12 22:11:18');
INSERT INTO `account` VALUES (95, 'Sara', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'gonzalez79@yahoo.com', 'doctor', '2020-08-10 23:18:09');
INSERT INTO `account` VALUES (96, 'Jacqueline', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'jking1102@mail.com', 'doctor', '2020-10-30 19:04:53');
INSERT INTO `account` VALUES (97, 'Judy', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'thompsonjud5@yahoo.com', 'admin', '2021-01-05 20:49:37');
INSERT INTO `account` VALUES (98, 'Esther', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'eswatso1231@mail.com', 'admin', '2021-02-15 13:55:13');
INSERT INTO `account` VALUES (99, 'Bryan', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'colbrya@gmail.com', 'admin', '2023-12-01 09:52:40');
INSERT INTO `account` VALUES (100, 'Linda', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'aguilar9@163.com', 'doctor', '2024-01-29 11:00:21');
INSERT INTO `account` VALUES (101, 'Alexander', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'huntalexa20@mail.com', 'doctor', '2022-11-21 17:25:26');
INSERT INTO `account` VALUES (102, 'Fred', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'greenfred7@qq.com', 'nurse', '2022-01-12 02:01:59');
INSERT INTO `account` VALUES (103, 'Elizabeth', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'edwards1004@icloud.com', 'admin', '2024-01-10 20:15:47');
INSERT INTO `account` VALUES (104, 'Patricia', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'patriromero@gmail.com', 'admin', '2022-08-28 10:08:32');
INSERT INTO `account` VALUES (105, 'Kevin', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'stonek59@mail.com', 'doctor', '2023-01-17 04:24:39');
INSERT INTO `account` VALUES (106, 'Charles', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'chare@qq.com', 'admin', '2023-03-16 19:08:53');
INSERT INTO `account` VALUES (107, 'Sandra', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'ss6@gmail.com', 'nurse', '2023-12-09 23:47:33');
INSERT INTO `account` VALUES (108, 'Kathy', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'kathythompson@qq.com', 'doctor', '2023-01-18 15:29:07');
INSERT INTO `account` VALUES (109, 'Tina', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'tinad@icloud.com', 'admin', '2020-04-08 01:02:18');
INSERT INTO `account` VALUES (110, 'Irene', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'whitei@yahoo.com', 'nurse', '2023-02-03 17:14:14');
INSERT INTO `account` VALUES (111, 'Rita', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'pr8@yahoo.com', 'nurse', '2021-02-19 01:15:31');
INSERT INTO `account` VALUES (112, 'Billy', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'jobi63@icloud.com', 'nurse', '2020-02-14 18:57:52');
INSERT INTO `account` VALUES (113, 'Carl', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'carl1@yahoo.com', 'doctor', '2024-03-22 02:16:22');
INSERT INTO `account` VALUES (114, 'Don', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'campbelldo@icloud.com', 'admin', '2020-04-30 07:10:54');
INSERT INTO `account` VALUES (115, 'Frank', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'frahe8@qq.com', 'doctor', '2022-12-31 08:43:36');
INSERT INTO `account` VALUES (116, 'Dennis', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'dennish@gmail.com', 'doctor', '2020-12-06 10:42:02');
INSERT INTO `account` VALUES (117, 'Lisa', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'sl6@qq.com', 'doctor', '2020-08-02 11:13:20');
INSERT INTO `account` VALUES (118, 'Kim', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'kscott@mail.com', 'admin', '2023-10-11 17:37:24');
INSERT INTO `account` VALUES (119, 'Alan', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'alansnyder@mail.com', 'nurse', '2021-04-12 08:45:20');
INSERT INTO `account` VALUES (120, 'Eric', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'gardnere20@163.com', 'nurse', '2023-01-28 14:20:25');
INSERT INTO `account` VALUES (121, 'Gladys', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'glg1941@icloud.com', 'doctor', '2023-06-22 03:43:09');
INSERT INTO `account` VALUES (122, 'Theresa', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'tfernandez4@icloud.com', 'nurse', '2021-02-09 07:16:24');
INSERT INTO `account` VALUES (123, 'Glenn', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'glennmor3@qq.com', 'nurse', '2022-06-23 23:43:13');
INSERT INTO `account` VALUES (124, 'Jeffery', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'whitj1@163.com', 'nurse', '2020-08-03 18:32:31');
INSERT INTO `account` VALUES (125, 'Douglas', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'ferdouglas@163.com', 'admin', '2023-06-01 01:19:43');
INSERT INTO `account` VALUES (126, 'Sean', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'foss1@yahoo.com', 'admin', '2021-12-24 02:09:16');
INSERT INTO `account` VALUES (127, 'Victoria', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'reyvictoria@163.com', 'admin', '2023-12-08 14:41:19');
INSERT INTO `account` VALUES (128, 'Eleanor', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'eleanthompson919@yahoo.com', 'nurse', '2022-06-15 13:54:46');
INSERT INTO `account` VALUES (129, 'Phillip', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'nguyenphillip@gmail.com', 'doctor', '2024-02-24 23:53:49');
INSERT INTO `account` VALUES (130, 'Shirley', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'fordshir@icloud.com', 'admin', '2022-08-03 21:15:37');
INSERT INTO `account` VALUES (131, 'Miguel', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'mibarn@163.com', 'doctor', '2020-06-12 02:02:07');
INSERT INTO `account` VALUES (132, 'Frances', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'francesgord@gmail.com', 'nurse', '2022-10-31 18:18:16');
INSERT INTO `account` VALUES (133, 'Janice', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'meyerj1@mail.com', 'nurse', '2024-03-15 08:14:41');
INSERT INTO `account` VALUES (134, 'Edna', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'dixon723@icloud.com', 'nurse', '2021-06-22 11:51:09');
INSERT INTO `account` VALUES (135, 'Troy', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'sotot@gmail.com', 'admin', '2020-09-25 15:24:16');
INSERT INTO `account` VALUES (136, 'Crystal', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'howc4@mail.com', 'admin', '2023-05-29 19:47:25');
INSERT INTO `account` VALUES (137, 'David', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'yoda1975@icloud.com', 'admin', '2021-11-08 04:41:46');
INSERT INTO `account` VALUES (138, 'Jimmy', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'nguyen1031@gmail.com', 'nurse', '2021-12-24 09:58:29');
INSERT INTO `account` VALUES (139, 'Leslie', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'grahles8@gmail.com', 'nurse', '2020-12-09 16:14:36');
INSERT INTO `account` VALUES (140, 'Daniel', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'daniel414@mail.com', 'admin', '2023-12-23 15:55:19');
INSERT INTO `account` VALUES (141, 'Paul', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'pauledw86@163.com', 'admin', '2022-05-29 23:30:59');
INSERT INTO `account` VALUES (142, 'Danny', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'romeroda85@163.com', 'admin', '2020-06-01 04:55:40');
INSERT INTO `account` VALUES (143, 'Anne', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'anne6@yahoo.com', 'nurse', '2023-11-23 02:21:12');
INSERT INTO `account` VALUES (144, 'Randy', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'randcrawf323@gmail.com', 'nurse', '2022-08-23 00:59:14');
INSERT INTO `account` VALUES (145, 'Russell', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'russellschmidt1998@gmail.com', 'admin', '2021-08-01 22:10:52');
INSERT INTO `account` VALUES (146, 'Brenda', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'brem401@icloud.com', 'nurse', '2023-01-03 03:10:33');
INSERT INTO `account` VALUES (147, 'Denise', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'denise1@mail.com', 'admin', '2023-10-13 03:01:47');
INSERT INTO `account` VALUES (148, 'Josephine', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'stj302@mail.com', 'doctor', '2023-08-26 13:32:08');
INSERT INTO `account` VALUES (149, 'Ricky', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'rickytr@icloud.com', 'nurse', '2023-02-09 21:56:02');
INSERT INTO `account` VALUES (150, 'Christopher', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'medinac9@icloud.com', 'nurse', '2021-01-25 02:20:17');
INSERT INTO `account` VALUES (151, 'Jerry', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'castillo1224@gmail.com', 'doctor', '2023-07-04 13:48:34');
INSERT INTO `account` VALUES (152, 'Joe', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'jke2@163.com', 'nurse', '2022-05-17 22:30:00');
INSERT INTO `account` VALUES (153, 'Ryan', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'rfernandez@icloud.com', 'doctor', '2020-01-02 03:44:34');
INSERT INTO `account` VALUES (154, 'Michael', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'hawkinsmichael@icloud.com', 'admin', '2021-01-27 07:20:23');
INSERT INTO `account` VALUES (155, 'Valerie', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'stephensvaler9@gmail.com', 'doctor', '2022-01-21 11:23:00');
INSERT INTO `account` VALUES (156, 'Martin', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'hma@icloud.com', 'doctor', '2022-08-18 03:18:24');
INSERT INTO `account` VALUES (157, 'Emma', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'stephense@gmail.com', 'doctor', '2023-11-15 15:37:45');
INSERT INTO `account` VALUES (158, 'Sarah', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'torress@icloud.com', 'nurse', '2021-03-10 02:24:18');
INSERT INTO `account` VALUES (159, 'Julia', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'juliaguzman422@yahoo.com', 'admin', '2022-07-08 22:17:09');
INSERT INTO `account` VALUES (160, 'Catherine', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'millscat@yahoo.com', 'nurse', '2022-11-21 00:53:33');
INSERT INTO `account` VALUES (161, 'Adam', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'la1111@icloud.com', 'admin', '2023-07-24 23:20:00');
INSERT INTO `account` VALUES (162, 'Walter', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'hendersonwalter7@mail.com', 'doctor', '2022-11-12 12:57:04');
INSERT INTO `account` VALUES (163, 'Lois', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'loisgordon@gmail.com', 'admin', '2023-07-09 07:00:12');
INSERT INTO `account` VALUES (164, 'Kathryn', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'kh9@qq.com', 'nurse', '2022-10-03 07:54:07');
INSERT INTO `account` VALUES (165, 'Jennifer', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'ajennifer@gmail.com', 'admin', '2023-03-22 10:20:43');
INSERT INTO `account` VALUES (166, 'Joan', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'joaw1@yahoo.com', 'admin', '2020-08-19 21:07:01');
INSERT INTO `account` VALUES (167, 'Bobby', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'ricbobby@mail.com', 'admin', '2020-10-13 06:06:27');
INSERT INTO `account` VALUES (168, 'Jamie', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'west5@qq.com', 'doctor', '2023-10-27 19:31:14');
INSERT INTO `account` VALUES (169, 'Jason', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'taylorj509@mail.com', 'nurse', '2021-09-30 03:43:51');
INSERT INTO `account` VALUES (170, 'George', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'georgephil12@mail.com', 'doctor', '2024-04-08 19:50:33');
INSERT INTO `account` VALUES (171, 'Kathleen', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'kathleenroberts8@yahoo.com', 'admin', '2022-11-30 08:19:16');
INSERT INTO `account` VALUES (172, 'Ashley', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'dixonashley@gmail.com', 'doctor', '2023-11-23 07:19:39');
INSERT INTO `account` VALUES (173, 'Edith', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'mason2@yahoo.com', 'admin', '2023-04-28 00:31:25');
INSERT INTO `account` VALUES (174, 'Randall', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'scottrandall@yahoo.com', 'admin', '2020-11-26 08:46:46');
INSERT INTO `account` VALUES (175, 'Nathan', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'nathakim@gmail.com', 'admin', '2021-05-19 19:50:34');
INSERT INTO `account` VALUES (176, 'Joseph', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'josephgarza@icloud.com', 'doctor', '2020-01-08 21:06:45');
INSERT INTO `account` VALUES (177, 'Paula', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'thpaul@gmail.com', 'nurse', '2022-05-23 00:00:23');
INSERT INTO `account` VALUES (178, 'Juan', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'thomasj@yahoo.com', 'nurse', '2020-02-17 19:15:05');
INSERT INTO `account` VALUES (179, 'Justin', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'justih11@gmail.com', 'doctor', '2022-10-16 00:12:17');
INSERT INTO `account` VALUES (180, 'Lillian', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'martili@163.com', 'admin', '2024-04-13 01:21:31');
INSERT INTO `account` VALUES (181, 'Virginia', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'vros4@qq.com', 'admin', '2022-02-10 11:24:51');
INSERT INTO `account` VALUES (182, 'Pauline', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'phall@icloud.com', 'admin', '2023-10-10 02:59:19');
INSERT INTO `account` VALUES (183, 'William', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'wrob@163.com', 'nurse', '2023-06-17 09:23:53');
INSERT INTO `account` VALUES (184, 'Kyle', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'kylgibs@gmail.com', 'doctor', '2020-05-18 17:56:51');
INSERT INTO `account` VALUES (185, 'Marvin', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'hem@mail.com', 'nurse', '2023-08-10 10:05:25');
INSERT INTO `account` VALUES (186, 'Peggy', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'peggy2@gmail.com', 'admin', '2021-11-01 08:21:50');
INSERT INTO `account` VALUES (187, 'Timothy', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'timothyj312@gmail.com', 'admin', '2021-02-19 13:10:30');
INSERT INTO `account` VALUES (188, 'Debra', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'debrawar@yahoo.com', 'nurse', '2020-11-01 12:42:56');
INSERT INTO `account` VALUES (189, 'Joanne', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'hicjoanne@icloud.com', 'nurse', '2021-02-22 19:51:00');
INSERT INTO `account` VALUES (190, 'Judith', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'judith00@mail.com', 'admin', '2023-09-02 15:53:43');
INSERT INTO `account` VALUES (191, 'Louise', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'west305@163.com', 'nurse', '2020-09-05 09:33:51');
INSERT INTO `account` VALUES (192, 'Christina', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'forchristina@mail.com', 'admin', '2022-03-08 03:37:24');
INSERT INTO `account` VALUES (193, 'Edward', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'anderson209@gmail.com', 'admin', '2022-05-03 20:53:05');
INSERT INTO `account` VALUES (194, 'Tiffany', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'tiffanymeyer8@qq.com', 'nurse', '2020-07-18 01:19:51');
INSERT INTO `account` VALUES (195, 'Wendy', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'wehawk9@icloud.com', 'nurse', '2023-04-28 04:20:56');
INSERT INTO `account` VALUES (196, 'Laura', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'stevens6@gmail.com', 'admin', '2022-12-19 03:17:55');
INSERT INTO `account` VALUES (197, 'Lawrence', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'lf826@icloud.com', 'nurse', '2021-09-08 23:06:10');
INSERT INTO `account` VALUES (198, 'Terry', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'tt1022@icloud.com', 'nurse', '2023-10-18 13:33:33');
INSERT INTO `account` VALUES (199, 'Craig', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'craig1128@icloud.com', 'doctor', '2023-11-15 09:14:32');
INSERT INTO `account` VALUES (200, 'Clarence', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'cmyers@gmail.com', 'nurse', '2021-11-25 08:32:16');
INSERT INTO `account` VALUES (201, 'Ernest', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'pernest704@gmail.com', 'nurse', '2023-10-19 17:39:55');
INSERT INTO `account` VALUES (202, 'Thelma', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'thelmfr57@yahoo.com', 'nurse', '2022-09-09 23:17:17');
INSERT INTO `account` VALUES (203, 'Travis', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'tramorg@qq.com', 'nurse', '2021-07-19 02:32:19');
INSERT INTO `account` VALUES (204, 'Ethel', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'leeeth@gmail.com', 'doctor', '2022-10-04 15:30:11');
INSERT INTO `account` VALUES (205, 'Manuel', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'manuel05@gmail.com', 'nurse', '2022-04-18 19:53:45');
INSERT INTO `account` VALUES (206, 'Alfred', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'freealfr@gmail.com', 'admin', '2022-04-26 01:40:45');
INSERT INTO `account` VALUES (207, 'Stephanie', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'stemas@gmail.com', 'admin', '2024-01-11 23:49:33');
INSERT INTO `account` VALUES (208, 'Luis', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'lkel@163.com', 'admin', '2023-06-03 09:57:01');
INSERT INTO `account` VALUES (209, 'Eugene', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'eugenedan@icloud.com', 'admin', '2020-05-18 23:44:44');
INSERT INTO `account` VALUES (210, 'Jesse', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'jesswalla@icloud.com', 'doctor', '2021-03-31 23:04:38');
INSERT INTO `account` VALUES (211, 'Shannon', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'sm16@gmail.com', 'admin', '2021-03-18 23:00:55');
INSERT INTO `account` VALUES (212, 'Marie', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'jordmarie@gmail.com', 'doctor', '2022-02-14 02:24:19');
INSERT INTO `account` VALUES (213, 'Ruth', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'reyrut8@gmail.com', 'nurse', '2021-01-26 05:13:31');
INSERT INTO `account` VALUES (214, 'Herbert', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'hsmith@yahoo.com', 'admin', '2023-11-05 05:53:31');
INSERT INTO `account` VALUES (215, 'Jane', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'jane10@qq.com', 'doctor', '2021-11-19 07:40:41');
INSERT INTO `account` VALUES (216, 'Norma', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'hnorm@yahoo.com', 'admin', '2021-03-29 23:45:52');
INSERT INTO `account` VALUES (217, 'Antonio', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'whitean6@icloud.com', 'nurse', '2023-11-16 16:15:52');
INSERT INTO `account` VALUES (218, 'Wayne', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'gutiw9@qq.com', 'doctor', '2023-04-15 05:15:42');
INSERT INTO `account` VALUES (219, 'Joyce', '2a10FL4sqpKKPIhxk6/UfkHVOeNaxlxdG42OuuF34pTqNbGQItclUaPoi', 'joycmartin@gmail.com', 'admin', '2020-01-13 21:11:01');
INSERT INTO `account` VALUES (220, 'jKfNcAeeTl', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'tschiming9@gmail.com', 'nurse', '2008-11-26 23:59:23');
INSERT INTO `account` VALUES (221, 'kzUTqsOxWfdhT', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'tingfungpa@mail.com', 'doctor', '2011-09-01 12:14:28');
INSERT INTO `account` VALUES (222, 'IPqppHABgLBoS', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'wmtsang@outlook.com', 'nurse', '2010-12-21 17:15:45');
INSERT INTO `account` VALUES (223, 'fZIpLVNZzmZQ', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'daisuke8@hotmail.com', 'admin', '2011-04-17 15:55:50');
INSERT INTO `account` VALUES (224, 'vdApAnjxhq', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'ortiz1989@icloud.com', 'doctor', '2012-05-25 09:20:01');
INSERT INTO `account` VALUES (225, 'FrVwchUnabUu', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'yuws@outlook.com', 'user', '2021-06-28 19:29:44');
INSERT INTO `account` VALUES (226, 'XcUrGIanhUX', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'ryota1949@mail.com', 'nurse', '2014-02-12 12:46:12');
INSERT INTO `account` VALUES (227, 'EcHxXwzviFn', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'zhqiu513@outlook.com', 'nurse', '2002-05-07 20:51:41');
INSERT INTO `account` VALUES (228, 'yLTLmlnThA', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'shihanre@mail.com', 'doctor', '2022-07-22 06:05:08');
INSERT INTO `account` VALUES (229, 'JWDxVaxYRDJ', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'zitaoqi@gmail.com', 'nurse', '2021-06-01 20:38:26');
INSERT INTO `account` VALUES (230, 'cAfcDOFCMvUHta', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'abeverly9@outlook.com', 'doctor', '2009-03-06 03:49:36');
INSERT INTO `account` VALUES (231, 'pIkGqpdFW', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'jamesl421@gmail.com', 'pharmacist', '2016-10-07 19:01:02');
INSERT INTO `account` VALUES (232, 'PTwEuIklMh', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'michelle2@yahoo.com', 'doctor', '2011-11-10 01:12:16');
INSERT INTO `account` VALUES (233, 'UurlRxTGpDcWa', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'kas@hotmail.com', 'nurse', '2012-01-02 12:56:39');
INSERT INTO `account` VALUES (234, 'gMaAXcTVQWzzaL', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'mbr@hotmail.com', 'user', '2011-11-07 04:16:02');
INSERT INTO `account` VALUES (235, 'qiziYXvFf', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'jiehonggu@mail.com', 'pharmacist', '2021-11-29 08:26:45');
INSERT INTO `account` VALUES (236, 'bztQbmqygicerj', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'flkat@gmail.com', 'admin', '2008-05-11 14:02:12');
INSERT INTO `account` VALUES (237, 'EHBftzWTtQ', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'twton@hotmail.com', 'admin', '2016-01-28 09:30:16');
INSERT INTO `account` VALUES (238, 'DuoxvOeyxorm', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'anqi88@icloud.com', 'doctor', '2013-05-14 19:24:31');
INSERT INTO `account` VALUES (239, 'TWalKPDK', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'syta82@yahoo.com', 'doctor', '2003-09-24 06:20:18');
INSERT INTO `account` VALUES (240, 'rvVTgxoZgg', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'spencerrosa9@yahoo.com', 'user', '2023-06-29 04:28:07');
INSERT INTO `account` VALUES (241, 'gzwonSwBrIWLe', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'jessicaperez@icloud.com', 'doctor', '2016-10-14 19:18:06');
INSERT INTO `account` VALUES (242, 'ZRDYsZHbYbRYc', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'araimio@gmail.com', 'user', '2023-12-22 04:33:33');
INSERT INTO `account` VALUES (243, 'TldZDBixWJ', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'bryanrich85@icloud.com', 'admin', '2019-12-18 00:53:37');
INSERT INTO `account` VALUES (244, 'POZBHAHuRss', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'ogawaaoi@gmail.com', 'doctor', '2022-10-17 23:00:46');
INSERT INTO `account` VALUES (245, 'foDwfmmerJd', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'luiswarren@yahoo.com', 'nurse', '2001-10-05 22:12:54');
INSERT INTO `account` VALUES (246, 'cduKcwLCS', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'ech@outlook.com', 'nurse', '2013-03-08 16:29:58');
INSERT INTO `account` VALUES (247, 'iFLZljMXG', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'zhiyuan1@yahoo.com', 'doctor', '2005-07-27 01:03:08');
INSERT INTO `account` VALUES (248, 'uXqEZlPbjKPHm', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'fschow@icloud.com', 'pharmacist', '2006-09-11 06:12:56');
INSERT INTO `account` VALUES (249, 'kiVRfFSt', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'williewilson@icloud.com', 'doctor', '2020-04-18 13:47:45');
INSERT INTO `account` VALUES (250, 'GVDUQmtMHr', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'heukw@gmail.com', 'user', '2005-12-13 18:43:29');
INSERT INTO `account` VALUES (251, 'tBLkzuUGQBveB', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'zitaohe630@icloud.com', 'admin', '2017-01-09 21:35:29');
INSERT INTO `account` VALUES (252, 'fofzjizt', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'yanzhennan822@mail.com', 'pharmacist', '2013-02-05 10:40:48');
INSERT INTO `account` VALUES (253, 'wxQYYyegK', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'ruiqin7@outlook.com', 'pharmacist', '2015-07-07 20:55:33');
INSERT INTO `account` VALUES (254, 'rDVTQzGNjTYUj', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'yuto04@gmail.com', 'user', '2011-01-22 16:47:25');
INSERT INTO `account` VALUES (255, 'macYEnualHcCV', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'dt4@yahoo.com', 'user', '2018-01-28 06:59:47');
INSERT INTO `account` VALUES (256, 'nNcLkwFm', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'hana91@mail.com', 'admin', '2017-10-10 01:04:26');
INSERT INTO `account` VALUES (257, 'tJvbhoavPTmMw', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'xiangz@icloud.com', 'nurse', '2017-02-20 04:47:02');
INSERT INTO `account` VALUES (258, 'sMHckuEiB', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'salazaradam224@hotmail.com', 'doctor', '2020-05-27 19:32:03');
INSERT INTO `account` VALUES (259, 'QRGUGOtwJ', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'smin@yahoo.com', 'admin', '2006-05-30 14:48:35');
INSERT INTO `account` VALUES (260, 'wCyeVKmHVCzMF', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'lsyam@hotmail.com', 'user', '2000-01-23 02:06:10');
INSERT INTO `account` VALUES (261, 'mzsZfnrsTOgd', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'xiaox10@icloud.com', 'doctor', '2003-08-31 10:02:24');
INSERT INTO `account` VALUES (262, 'HQTftRBMIpKbG', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'fmi79@icloud.com', 'doctor', '2000-07-28 23:38:39');
INSERT INTO `account` VALUES (263, 'RofIVdABLzUIe', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'hmlok@icloud.com', 'pharmacist', '2013-05-09 05:20:45');
INSERT INTO `account` VALUES (264, 'xBXKxcjnOGUl', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'yunxiqi113@outlook.com', 'admin', '2009-09-04 08:03:50');
INSERT INTO `account` VALUES (265, 'mFTwMLRbuo', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'momoetake@gmail.com', 'nurse', '2007-10-17 12:31:47');
INSERT INTO `account` VALUES (266, 'bPlSHAPHatt', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'toddgonz@gmail.com', 'user', '2002-06-18 01:07:51');
INSERT INTO `account` VALUES (267, 'vuHYsoKWVnc', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'moriitsuki@mail.com', 'user', '2023-03-31 11:43:01');
INSERT INTO `account` VALUES (268, 'rXBnBDjLvRQuYv', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'zitaoluo@gmail.com', 'admin', '2012-09-19 12:15:13');
INSERT INTO `account` VALUES (269, 'OznTSTxzISElH', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'satohikaru3@outlook.com', 'pharmacist', '2015-01-19 04:38:33');
INSERT INTO `account` VALUES (270, 'zpzlTjhSNRs', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'renayamad@outlook.com', 'doctor', '2013-04-27 08:19:55');
INSERT INTO `account` VALUES (271, 'xWsctSgVre', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'kwaonna@gmail.com', 'nurse', '2008-06-20 23:12:08');
INSERT INTO `account` VALUES (272, 'KwbPGYyTH', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'frankmunoz@gmail.com', 'admin', '2021-08-27 19:57:53');
INSERT INTO `account` VALUES (273, 'uMHDvwdDLmiO', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'haradtakuya@yahoo.com', 'doctor', '2017-03-12 18:37:17');
INSERT INTO `account` VALUES (274, 'RpTWOjAjApr', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'koon6@mail.com', 'nurse', '2016-07-06 18:13:23');
INSERT INTO `account` VALUES (275, 'jKiDIeLxNJ', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'evahend6@gmail.com', 'nurse', '2011-07-09 05:40:32');
INSERT INTO `account` VALUES (276, 'NOCCbtWm', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'shechiyuen@icloud.com', 'user', '2016-07-02 19:50:23');
INSERT INTO `account` VALUES (277, 'KveelzrxokxUT', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'kentakoya@hotmail.com', 'pharmacist', '2010-01-22 20:18:33');
INSERT INTO `account` VALUES (278, 'AqKqOXZTnFzjYS', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'fu1944@outlook.com', 'pharmacist', '2020-10-11 16:14:02');
INSERT INTO `account` VALUES (279, 'axjvoBqzO', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'yoshi@mail.com', 'pharmacist', '2023-02-27 06:05:11');
INSERT INTO `account` VALUES (280, 'RsIKcKFwlCEMh', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'eleannels@yahoo.com', 'doctor', '2021-05-02 09:04:40');
INSERT INTO `account` VALUES (281, 'XCyevXlxor', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'anaka@outlook.com', 'pharmacist', '2000-06-15 23:31:10');
INSERT INTO `account` VALUES (282, 'rWatQPtRZJrVr', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'kmyeu@yahoo.com', 'admin', '2019-05-25 00:15:09');
INSERT INTO `account` VALUES (283, 'OyzqhXNm', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'xiuyingy@icloud.com', 'user', '2004-02-24 10:52:36');
INSERT INTO `account` VALUES (284, 'YsVmKkLxJ', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'dunn3@gmail.com', 'nurse', '2011-10-25 06:41:02');
INSERT INTO `account` VALUES (285, 'zuNUnefUH', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'millsw@yahoo.com', 'pharmacist', '2001-12-03 03:43:58');
INSERT INTO `account` VALUES (286, 'ObnOloWhuWO', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'dawf@yahoo.com', 'admin', '2021-01-11 00:46:23');
INSERT INTO `account` VALUES (287, 'Rpbwlsaxo', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'etgriffin41@icloud.com', 'admin', '2011-07-03 04:00:28');
INSERT INTO `account` VALUES (288, 'qcLuHAuF', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'jiangzhennan5@yahoo.com', 'pharmacist', '2010-06-14 01:46:32');
INSERT INTO `account` VALUES (289, 'QQESnYwwYSewpy', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'sunzhiy@gmail.com', 'user', '2012-12-04 03:51:13');
INSERT INTO `account` VALUES (290, 'eYGrHnTw', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'yuy7@gmail.com', 'pharmacist', '2002-04-06 19:55:14');
INSERT INTO `account` VALUES (291, 'XSdWyiPVrYbIIJ', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'isminato328@mail.com', 'pharmacist', '2011-12-08 07:35:05');
INSERT INTO `account` VALUES (292, 'yjblOlZMxNM', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'rear43@gmail.com', 'admin', '2014-09-15 19:02:19');
INSERT INTO `account` VALUES (293, 'wTvwcbFuwENq', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'xiuyinglin1960@outlook.com', 'user', '2007-09-18 22:51:36');
INSERT INTO `account` VALUES (294, 'erjrIZFrFQXQ', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'curtfreeman@icloud.com', 'doctor', '2015-05-30 19:35:01');
INSERT INTO `account` VALUES (295, 'qyIfidgj', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'cooperlucille@hotmail.com', 'doctor', '2001-12-09 23:39:16');
INSERT INTO `account` VALUES (296, 'HJkZuKRAHtbXpH', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'justijames@gmail.com', 'user', '2012-04-26 12:38:34');
INSERT INTO `account` VALUES (297, 'xTMcrrGhn', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'siu55@yahoo.com', 'doctor', '2006-02-15 01:28:33');
INSERT INTO `account` VALUES (298, 'kpySGoFpk', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'ans6@icloud.com', 'admin', '2008-02-10 19:34:01');
INSERT INTO `account` VALUES (299, 'YjtKmRhteP', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'tmomoe@gmail.com', 'admin', '2010-09-17 11:14:48');
INSERT INTO `account` VALUES (300, 'WIEBfrPLUZDV', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'ludai@yahoo.com', 'user', '2001-07-23 03:05:08');
INSERT INTO `account` VALUES (301, 'QtDIoLjBvlcuJ', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'martidebb@gmail.com', 'user', '2011-08-20 18:10:30');
INSERT INTO `account` VALUES (302, 'XJIhPdNEZvg', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'kobadaichi@outlook.com', 'user', '2009-05-30 10:10:44');
INSERT INTO `account` VALUES (303, 'KXPoMKCt', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'chicyuling8@mail.com', 'nurse', '2001-03-07 08:07:50');
INSERT INTO `account` VALUES (304, 'sbSVQeAxcso', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'peterh@outlook.com', 'doctor', '2000-12-06 23:20:02');
INSERT INTO `account` VALUES (305, 'tzedwklEFc', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'wingfatlok@gmail.com', 'user', '2012-01-06 09:14:38');
INSERT INTO `account` VALUES (306, 'YcdOwQWybgfnUA', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'ichikawa7@hotmail.com', 'admin', '2004-01-13 19:46:38');
INSERT INTO `account` VALUES (307, 'LuDcitJaSIAn', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'murroy@hotmail.com', 'nurse', '2009-11-29 07:34:04');
INSERT INTO `account` VALUES (308, 'mjxjZbDcWXIcz', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'kao3@yahoo.com', 'admin', '2012-12-06 01:46:58');
INSERT INTO `account` VALUES (309, 'EtACORBH', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'onna9@outlook.com', 'admin', '2012-07-13 01:39:57');
INSERT INTO `account` VALUES (310, 'uhZNuYaPQddr', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'huang5@outlook.com', 'doctor', '2008-05-06 04:58:43');
INSERT INTO `account` VALUES (311, 'AqdcjeuAKQtEZC', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'takwahlee53@outlook.com', 'user', '2016-07-11 00:05:26');
INSERT INTO `account` VALUES (312, 'qEOqBdnd', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'aarlop@mail.com', 'nurse', '2013-07-04 17:22:40');
INSERT INTO `account` VALUES (313, 'skYdkCUGNazFIE', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'amys@mail.com', 'doctor', '2005-11-09 09:24:45');
INSERT INTO `account` VALUES (314, 'PghufrGmBBNjU', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'jeanm87@yahoo.com', 'user', '2011-08-24 02:20:54');
INSERT INTO `account` VALUES (315, 'BmGrcrNmvBa', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'cmcheung5@outlook.com', 'doctor', '2002-12-24 07:34:00');
INSERT INTO `account` VALUES (316, 'nJoTiCFHqXob', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'martnich1119@outlook.com', 'nurse', '2005-11-28 23:56:08');
INSERT INTO `account` VALUES (317, 'DkHmVDEKebLYJ', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'thommary5@icloud.com', 'admin', '2011-04-22 15:22:00');
INSERT INTO `account` VALUES (318, 'qCpvTEsjcsIghw', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'taylor5@outlook.com', 'nurse', '2010-02-06 05:05:04');
INSERT INTO `account` VALUES (319, 'rcJmAvlxTBIP', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'faya@outlook.com', 'doctor', '2024-04-09 18:24:18');
INSERT INTO `account` VALUES (320, 'UAWAEmYnmWxVkU', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'mhaya@gmail.com', 'admin', '2009-08-16 10:22:05');
INSERT INTO `account` VALUES (321, 'tMOMENZmaM', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'ryots@icloud.com', 'doctor', '2002-06-15 12:22:20');
INSERT INTO `account` VALUES (322, 'jWlzrvFMSm', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'wei7@gmail.com', 'admin', '2019-05-16 18:22:28');
INSERT INTO `account` VALUES (323, 'wbnxDkYZM', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'huimei3@outlook.com', 'nurse', '2004-07-01 01:06:39');
INSERT INTO `account` VALUES (324, 'mIsDkSZXDDn', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'hazuki927@gmail.com', 'admin', '2018-03-28 17:06:11');
INSERT INTO `account` VALUES (325, 'GybKZuLiYsctUw', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'hochungyin608@icloud.com', 'pharmacist', '2020-11-01 03:42:44');
INSERT INTO `account` VALUES (326, 'lbgbtTYed', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'tayunxi@yahoo.com', 'user', '2016-09-13 05:11:26');
INSERT INTO `account` VALUES (327, 'RzbwNrrEV', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'hungwailam@mail.com', 'user', '2015-11-10 16:28:51');
INSERT INTO `account` VALUES (328, 'AmqCPrTKGo', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'ziyi49@yahoo.com', 'pharmacist', '2024-02-27 16:47:52');
INSERT INTO `account` VALUES (329, 'ZgbTEBoZZfPuh', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'jiehongya@hotmail.com', 'doctor', '2016-03-31 10:25:39');
INSERT INTO `account` VALUES (330, 'sdLTyDIccDr', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'htleu7@outlook.com', 'pharmacist', '2003-04-12 13:11:30');
INSERT INTO `account` VALUES (331, 'DQjpaHFLBZycM', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'jeffea2@mail.com', 'pharmacist', '2008-10-18 01:16:17');
INSERT INTO `account` VALUES (332, 'gTMKpTgMF', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'minheu40@mail.com', 'pharmacist', '2004-02-08 14:19:34');
INSERT INTO `account` VALUES (333, 'ZsoHuIehQ', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'daihuimei02@hotmail.com', 'pharmacist', '2012-02-10 04:57:40');
INSERT INTO `account` VALUES (334, 'ZxQKalXIE', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'szeng@hotmail.com', 'pharmacist', '2017-01-26 03:52:25');
INSERT INTO `account` VALUES (335, 'dYeduJYNcrXRGF', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'qiuyunxi@outlook.com', 'doctor', '2019-03-25 15:17:26');
INSERT INTO `account` VALUES (336, 'HDpprxcifVam', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'wright52@hotmail.com', 'user', '2004-08-12 01:23:03');
INSERT INTO `account` VALUES (337, 'wdTomFAH', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'sdai@icloud.com', 'pharmacist', '2003-06-22 07:12:37');
INSERT INTO `account` VALUES (338, 'kewkdzWBF', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'toddholm@yahoo.com', 'user', '2015-05-13 05:10:17');
INSERT INTO `account` VALUES (339, 'SZKLqGwk', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'hunbob1227@gmail.com', 'pharmacist', '2002-05-23 08:31:35');
INSERT INTO `account` VALUES (340, 'acUjUbekEipkSD', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'helenbenne923@hotmail.com', 'user', '2014-03-18 09:23:42');
INSERT INTO `account` VALUES (341, 'URpfzEiPtoGz', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'jinyuning@outlook.com', 'doctor', '2002-05-23 06:37:54');
INSERT INTO `account` VALUES (342, 'ReIOSQiNCPmUau', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'hasegawa613@outlook.com', 'pharmacist', '2011-07-13 05:53:06');
INSERT INTO `account` VALUES (343, 'rJoCcnbTOK', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'yunxip@outlook.com', 'user', '2010-08-10 12:04:51');
INSERT INTO `account` VALUES (344, 'uAUXTwxY', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'nos919@mail.com', 'user', '2009-10-04 21:30:29');
INSERT INTO `account` VALUES (345, 'fzPFwEVxPxC', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'clarkpaula@yahoo.com', 'nurse', '2007-10-29 17:05:10');
INSERT INTO `account` VALUES (346, 'eSbTOuCYsTL', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'rhgonzales@hotmail.com', 'pharmacist', '2008-08-04 06:37:06');
INSERT INTO `account` VALUES (347, 'tPEhwaCySpcAb', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'kkaryan15@icloud.com', 'doctor', '2019-04-16 04:41:34');
INSERT INTO `account` VALUES (348, 'AtBAfaYFhjMR', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'fkenta127@gmail.com', 'admin', '2009-05-04 05:24:46');
INSERT INTO `account` VALUES (349, 'KCJcmAhnCW', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'takagi2012@gmail.com', 'pharmacist', '2021-12-01 17:05:03');
INSERT INTO `account` VALUES (350, 'oSeiARlPn', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'sitszeyu1128@outlook.com', 'user', '2022-04-08 18:15:46');
INSERT INTO `account` VALUES (351, 'YhPzsuydyZSYH', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'kalingt@icloud.com', 'pharmacist', '2007-07-27 23:06:54');
INSERT INTO `account` VALUES (352, 'RokcXzYRjwAOj', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'ms1952@gmail.com', 'admin', '2011-07-01 10:39:39');
INSERT INTO `account` VALUES (353, 'JqHxGYuKej', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'wendy10@icloud.com', 'admin', '2003-11-04 02:11:34');
INSERT INTO `account` VALUES (354, 'kdtakVBz', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'sanokasumi@yahoo.com', 'nurse', '2020-05-01 22:33:00');
INSERT INTO `account` VALUES (355, 'yVALgEqL', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'takeushino@hotmail.com', 'user', '2005-05-20 18:48:30');
INSERT INTO `account` VALUES (356, 'wugxtAHLW', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'robertson65@gmail.com', 'pharmacist', '2012-11-20 22:21:18');
INSERT INTO `account` VALUES (357, 'oWCcNSJiXTD', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'rinsugiyama@outlook.com', 'nurse', '2022-06-16 16:15:59');
INSERT INTO `account` VALUES (358, 'CJCDjFLMfp', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'ykwokyin@outlook.com', 'doctor', '2010-04-16 01:04:51');
INSERT INTO `account` VALUES (359, 'WrcaexuWbZj', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'edmeyer@mail.com', 'doctor', '2009-09-24 08:50:59');
INSERT INTO `account` VALUES (360, 'iQyWtzLUWZ', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'ngws@icloud.com', 'doctor', '2022-07-17 20:02:04');
INSERT INTO `account` VALUES (361, 'PvvwsGYasgcj', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'sakuragoto2@mail.com', 'doctor', '2012-03-24 17:52:16');
INSERT INTO `account` VALUES (362, 'WEPEVBbzxrNa', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'terrromero@gmail.com', 'doctor', '2014-10-09 12:02:28');
INSERT INTO `account` VALUES (363, 'gcTXmWwWYcHZ', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'stevenros@gmail.com', 'pharmacist', '2001-05-17 22:06:50');
INSERT INTO `account` VALUES (364, 'IZkQTzlIM', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'kyamad531@gmail.com', 'admin', '2007-12-06 10:29:34');
INSERT INTO `account` VALUES (365, 'BePcrQacuy', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'sitws@icloud.com', 'user', '2018-02-14 03:13:02');
INSERT INTO `account` VALUES (366, 'tTjAMtuQsH', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'hmatsui3@icloud.com', 'user', '2014-02-03 17:13:36');
INSERT INTO `account` VALUES (367, 'RFZPhfnIyBT', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'hakaito94@icloud.com', 'admin', '2012-07-01 12:17:39');
INSERT INTO `account` VALUES (368, 'SZUDJuSvpqr', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'huangzhennan1@icloud.com', 'admin', '2015-09-20 11:51:03');
INSERT INTO `account` VALUES (369, 'UqtUEBNgqg', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'don1@yahoo.com', 'user', '2012-09-15 13:26:08');
INSERT INTO `account` VALUES (370, 'hyntDKCjIbBo', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'yuencw@outlook.com', 'admin', '2012-05-27 14:27:29');
INSERT INTO `account` VALUES (371, 'mGdFqcwnJs', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'gracesi@gmail.com', 'admin', '2005-09-19 06:54:09');
INSERT INTO `account` VALUES (372, 'ZrLWxUhgJueE', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'minatotan322@gmail.com', 'admin', '2003-08-27 01:15:09');
INSERT INTO `account` VALUES (373, 'lgdGjRTKA', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'shenz@outlook.com', 'nurse', '2005-10-17 20:04:44');
INSERT INTO `account` VALUES (374, 'gNKlabvphRvc', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'liksunchiang@outlook.com', 'user', '2007-03-12 04:27:24');
INSERT INTO `account` VALUES (375, 'VmAtiYjle', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'jglenn@icloud.com', 'pharmacist', '2008-09-09 22:16:02');
INSERT INTO `account` VALUES (376, 'DeixLDYrR', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'hsuanchingwan7@outlook.com', 'pharmacist', '2013-07-10 12:59:45');
INSERT INTO `account` VALUES (377, 'rSUSCwiS', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'yezhiyuan@hotmail.com', 'admin', '2015-10-26 13:35:26');
INSERT INTO `account` VALUES (378, 'rSHtyOJoMaEwS', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'as1973@icloud.com', 'doctor', '2017-09-01 15:10:51');
INSERT INTO `account` VALUES (379, 'NbjUugmm', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'koonkm@icloud.com', 'user', '2006-07-15 22:20:58');
INSERT INTO `account` VALUES (380, 'mJCEyUxmdaBq', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'max49@icloud.com', 'nurse', '2006-08-18 12:27:21');
INSERT INTO `account` VALUES (381, 'DkwqGodLmHsD', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'koyamarin@icloud.com', 'user', '2015-06-14 23:24:46');
INSERT INTO `account` VALUES (382, 'WTUMfhAKhFfaat', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'fung84@mail.com', 'nurse', '2009-08-22 12:37:44');
INSERT INTO `account` VALUES (383, 'oDhddHvvdlS', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'laxiong@hotmail.com', 'user', '2010-03-04 00:53:50');
INSERT INTO `account` VALUES (384, 'HJFSDbHIvpMRFz', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'ashlkennedy1116@gmail.com', 'pharmacist', '2002-08-17 01:32:43');
INSERT INTO `account` VALUES (385, 'ASeYHuIeAJbIBF', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'renog15@yahoo.com', 'nurse', '2011-12-05 11:51:36');
INSERT INTO `account` VALUES (386, 'zlZBjrRVEKL', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'bmeli@gmail.com', 'doctor', '2016-06-28 04:44:16');
INSERT INTO `account` VALUES (387, 'aDWPdMBB', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'szekwan93@mail.com', 'nurse', '2007-03-02 23:08:08');
INSERT INTO `account` VALUES (388, 'HZCzdIaiTwt', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'hinaya@icloud.com', 'admin', '2005-10-29 15:25:20');
INSERT INTO `account` VALUES (389, 'wmJKGIZWuJ', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'la1115@hotmail.com', 'nurse', '2023-01-28 00:23:09');
INSERT INTO `account` VALUES (390, 'BjPHtKOtLt', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'siu3@icloud.com', 'user', '2024-02-25 01:50:39');
INSERT INTO `account` VALUES (391, 'zaEyBzLBwRSTl', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'tangzhennan@yahoo.com', 'pharmacist', '2004-08-18 22:31:58');
INSERT INTO `account` VALUES (392, 'DSgNqgMQ', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'kaitoan9@outlook.com', 'doctor', '2001-03-19 10:29:19');
INSERT INTO `account` VALUES (393, 'cRfPlDdmFMXxM', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'airisan1971@gmail.com', 'nurse', '2001-01-24 23:38:53');
INSERT INTO `account` VALUES (394, 'fCeHRLibEMz', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'zhou9@yahoo.com', 'nurse', '2018-11-20 23:56:22');
INSERT INTO `account` VALUES (395, 'cNUuNHaea', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'lochiuwai2@hotmail.com', 'pharmacist', '2013-02-10 21:21:04');
INSERT INTO `account` VALUES (396, 'RgwOPbZZlfk', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'stephen6@gmail.com', 'user', '2014-11-16 03:15:08');
INSERT INTO `account` VALUES (397, 'QupoMeuPiJY', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'tfyuen@outlook.com', 'admin', '2015-02-17 05:00:34');
INSERT INTO `account` VALUES (398, 'EezfPyoDxQZYGM', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'fonkay518@gmail.com', 'nurse', '2015-02-03 14:04:31');
INSERT INTO `account` VALUES (399, 'fMaAkepjWuMet', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'momoka10@hotmail.com', 'admin', '2001-03-04 20:10:16');
INSERT INTO `account` VALUES (400, 'DPjRkZihP', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'meyer@hotmail.com', 'pharmacist', '2022-11-22 16:06:25');
INSERT INTO `account` VALUES (401, 'YkMUkwFIMK', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'haradaikk514@gmail.com', 'pharmacist', '2000-06-26 23:05:46');
INSERT INTO `account` VALUES (402, 'OtkwoqTkwU', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'cb53@yahoo.com', 'nurse', '2006-03-16 15:05:19');
INSERT INTO `account` VALUES (403, 'GRxGrYUs', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'jean6@mail.com', 'doctor', '2014-09-25 07:03:09');
INSERT INTO `account` VALUES (404, 'DcUssAhT', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'twtin@yahoo.com', 'user', '2019-05-06 23:18:30');
INSERT INTO `account` VALUES (405, 'jstmwhNWQOOHjp', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'jialun1954@hotmail.com', 'doctor', '2017-08-30 18:17:52');
INSERT INTO `account` VALUES (406, 'rMQpwCdTDmr', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'prui@yahoo.com', 'doctor', '2016-12-02 05:16:44');
INSERT INTO `account` VALUES (407, 'DLRRkcAcAo', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'yamadahika@icloud.com', 'admin', '2016-11-18 21:44:43');
INSERT INTO `account` VALUES (408, 'DRroCPPaJR', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'suzuki301@hotmail.com', 'admin', '2021-03-14 22:19:43');
INSERT INTO `account` VALUES (409, 'edNbooIOpidr', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'gfrank@icloud.com', 'doctor', '2002-07-21 08:34:09');
INSERT INTO `account` VALUES (410, 'JlRNvvBAp', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'motszhin@hotmail.com', 'doctor', '2023-05-22 12:08:27');
INSERT INTO `account` VALUES (411, 'AEyshhtfKx', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'clifruiz@icloud.com', 'user', '2014-04-11 22:46:29');
INSERT INTO `account` VALUES (412, 'vxZVftmlGA', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'qiu6@yahoo.com', 'user', '2014-02-23 15:11:24');
INSERT INTO `account` VALUES (413, 'kGhnljihl', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'lori46@gmail.com', 'nurse', '2009-08-18 06:48:15');
INSERT INTO `account` VALUES (414, 'vxSwsgTTe', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'ziyiduan@outlook.com', 'admin', '2011-12-11 20:15:56');
INSERT INTO `account` VALUES (415, 'NbsVKsYzCdUb', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'spencer6@hotmail.com', 'user', '2005-02-13 09:33:15');
INSERT INTO `account` VALUES (416, 'nSWeKISCkhW', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'dai12@gmail.com', 'nurse', '2008-05-27 22:42:12');
INSERT INTO `account` VALUES (417, 'yvamvpAyQEvDnD', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'hikaru6@icloud.com', 'nurse', '2011-09-09 17:10:18');
INSERT INTO `account` VALUES (418, 'qucNVtZZOh', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'wilsondennis@mail.com', 'pharmacist', '2013-12-12 18:38:19');
INSERT INTO `account` VALUES (419, 'rlCMluVSsHLqm', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'aoi2013@gmail.com', 'nurse', '2002-06-01 01:18:00');
INSERT INTO `account` VALUES (420, 'GyeEniEexJMC', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'tcla823@outlook.com', 'user', '2012-05-22 03:56:31');
INSERT INTO `account` VALUES (421, 'GuXMNKePoml', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'takuyamaed@gmail.com', 'pharmacist', '2004-02-12 17:56:20');
INSERT INTO `account` VALUES (422, 'XasbcNmXsLqgTx', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'onodaichi@gmail.com', 'nurse', '2021-12-06 13:52:23');
INSERT INTO `account` VALUES (423, 'jBncVAcxZKznJ', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'kukaling6@mail.com', 'doctor', '2001-04-07 20:27:13');
INSERT INTO `account` VALUES (424, 'ihgMOUYdNviSv', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'rda@mail.com', 'doctor', '2012-10-19 11:20:45');
INSERT INTO `account` VALUES (425, 'FHoKeqiyE', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'takagik@outlook.com', 'doctor', '2000-02-10 15:41:50');
INSERT INTO `account` VALUES (426, 'JbVFJvuhZ', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'hikt7@icloud.com', 'pharmacist', '2015-01-25 21:11:37');
INSERT INTO `account` VALUES (427, 'pDMsIIykVuQo', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'man7@gmail.com', 'doctor', '2010-01-27 10:57:18');
INSERT INTO `account` VALUES (428, 'lHIAEDFPG', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'rui56@gmail.com', 'user', '2007-07-27 17:05:11');
INSERT INTO `account` VALUES (429, 'aQJWngNugF', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'miunak@gmail.com', 'doctor', '2006-02-28 20:10:34');
INSERT INTO `account` VALUES (430, 'TkTHRhmJBbj', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'nakkaito@icloud.com', 'admin', '2018-08-18 08:43:51');
INSERT INTO `account` VALUES (431, 'cAVrWcpBvIbWyg', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'nanami702@mail.com', 'pharmacist', '2006-06-25 13:54:25');
INSERT INTO `account` VALUES (432, 'ipmDEZaa', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'chokk@gmail.com', 'nurse', '2009-07-29 12:42:20');
INSERT INTO `account` VALUES (433, 'KoprSlBdLVsfj', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'miyazaki9@hotmail.com', 'pharmacist', '2000-01-30 23:36:55');
INSERT INTO `account` VALUES (434, 'qZdKzwiKhqAzkc', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'garcia5@icloud.com', 'admin', '2019-02-21 20:39:32');
INSERT INTO `account` VALUES (435, 'qDINcSMG', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'ziyimo6@mail.com', 'admin', '2001-06-06 10:35:26');
INSERT INTO `account` VALUES (436, 'gqzEisviEu', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'at9@icloud.com', 'admin', '2001-02-19 14:13:21');
INSERT INTO `account` VALUES (437, 'QXhbrosq', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'jeclar@icloud.com', 'nurse', '2005-04-15 23:16:15');
INSERT INTO `account` VALUES (438, 'gAAOxDPvv', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'danielst1023@icloud.com', 'user', '2001-05-28 12:29:22');
INSERT INTO `account` VALUES (439, 'GBXJOQSacUygt', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'yamazakiseik@hotmail.com', 'admin', '2023-08-16 10:59:06');
INSERT INTO `account` VALUES (440, 'INifPpugOneuw', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'kakeungyuen77@outlook.com', 'user', '2012-12-17 12:26:12');
INSERT INTO `account` VALUES (441, 'FiStQbsNxw', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'tsaku63@icloud.com', 'nurse', '2002-04-28 01:49:29');
INSERT INTO `account` VALUES (442, 'KFUWViVubczz', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'szeyuma@icloud.com', 'pharmacist', '2020-12-07 13:42:08');
INSERT INTO `account` VALUES (443, 'XxqEGjCnp', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'tangkk10@icloud.com', 'user', '2009-02-17 20:13:34');
INSERT INTO `account` VALUES (444, 'LTEihWZNrSp', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'munozr@icloud.com', 'nurse', '2000-11-25 12:48:40');
INSERT INTO `account` VALUES (445, 'xVPijUuIE', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'kkon1119@gmail.com', 'doctor', '2007-05-22 08:23:22');
INSERT INTO `account` VALUES (446, 'VFisMbwsrXu', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'takn@gmail.com', 'admin', '2006-09-11 16:33:03');
INSERT INTO `account` VALUES (447, 'XRicZrKxKBH', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'sz8@gmail.com', 'doctor', '2008-05-06 13:24:25');
INSERT INTO `account` VALUES (448, 'hqKrAfSBdSgzT', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'jacquelinesmith50@yahoo.com', 'nurse', '2019-05-13 13:18:42');
INSERT INTO `account` VALUES (449, 'GwuYnlJjEdv', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'fengyunx@icloud.com', 'pharmacist', '2007-06-29 06:21:42');
INSERT INTO `account` VALUES (450, 'ayaSsKWNq', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'changyunx10@mail.com', 'user', '2015-08-10 10:43:06');
INSERT INTO `account` VALUES (451, 'sbVsCERJ', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'zz12@gmail.com', 'user', '2012-07-02 03:49:58');
INSERT INTO `account` VALUES (452, 'LFddWejWQeyG', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'shal1104@yahoo.com', 'admin', '2012-09-03 00:57:18');
INSERT INTO `account` VALUES (453, 'cOeIvPoTJSnTny', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'jordan1129@outlook.com', 'doctor', '2002-01-26 12:01:48');
INSERT INTO `account` VALUES (454, 'INLMrHrttEeYMH', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'rugonzalez401@outlook.com', 'nurse', '2000-08-09 23:02:37');
INSERT INTO `account` VALUES (455, 'xzSANzLvc', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'cuianqi@hotmail.com', 'nurse', '2014-09-06 22:44:36');
INSERT INTO `account` VALUES (456, 'FqWzMMEUwcYLPK', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'choho9@hotmail.com', 'doctor', '2002-02-27 22:31:46');
INSERT INTO `account` VALUES (457, 'qBAkUUYn', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'shen70@icloud.com', 'nurse', '2024-05-16 11:21:25');
INSERT INTO `account` VALUES (458, 'hZuqxWoFNz', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'woodvincent@yahoo.com', 'pharmacist', '2003-10-03 12:48:01');
INSERT INTO `account` VALUES (459, 'KsTFOjjvwPsOH', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'schmidt907@gmail.com', 'doctor', '2008-03-05 13:32:57');
INSERT INTO `account` VALUES (460, 'QjekTxbRSelY', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'guzmanjohnny@gmail.com', 'nurse', '2018-05-13 05:59:37');
INSERT INTO `account` VALUES (461, 'ghEkKbCX', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'hiutungyu@yahoo.com', 'admin', '2013-02-08 17:53:54');
INSERT INTO `account` VALUES (462, 'YEnWbMugGHNwh', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'karenmille@gmail.com', 'user', '2022-07-08 00:41:28');
INSERT INTO `account` VALUES (463, 'BHbLgEQKbf', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'zhshen@gmail.com', 'nurse', '2011-03-23 00:57:22');
INSERT INTO `account` VALUES (464, 'OBLtvdzG', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'morete9@gmail.com', 'pharmacist', '2008-12-16 14:51:46');
INSERT INTO `account` VALUES (465, 'AjpgOkKypXtUB', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'green10@outlook.com', 'pharmacist', '2018-11-07 21:01:46');
INSERT INTO `account` VALUES (466, 'HARcbuoGW', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'lutan@outlook.com', 'user', '2020-09-05 12:24:20');
INSERT INTO `account` VALUES (467, 'sUUmMEJLfp', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'edithrobi229@gmail.com', 'doctor', '2003-11-04 02:56:43');
INSERT INTO `account` VALUES (468, 'BNjXFTsW', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'craig8@gmail.com', 'doctor', '2003-08-02 05:05:48');
INSERT INTO `account` VALUES (469, 'pjoZKmUxMULX', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'wingfatyeung92@gmail.com', 'admin', '2013-11-07 04:36:35');
INSERT INTO `account` VALUES (470, 'gAaWWjjPGadof', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'mitsukin1@outlook.com', 'doctor', '2004-12-01 02:16:12');
INSERT INTO `account` VALUES (471, 'RsbnObkiAgWa', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'chic7@outlook.com', 'admin', '2010-09-09 00:47:31');
INSERT INTO `account` VALUES (472, 'DEDKWvmNnksRZ', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'munozdo@gmail.com', 'admin', '2021-05-17 08:54:46');
INSERT INTO `account` VALUES (473, 'UNvVPPyjZpTIF', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'okadaitsuki@outlook.com', 'admin', '2019-11-13 13:44:48');
INSERT INTO `account` VALUES (474, 'mdPiZmmh', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'uchyuit79@gmail.com', 'user', '2022-06-18 16:02:24');
INSERT INTO `account` VALUES (475, 'JGpjBzMdE', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'laiyan5@outlook.com', 'user', '2022-12-29 06:09:02');
INSERT INTO `account` VALUES (476, 'VpYAvzUUXTZOsk', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'koykasum9@mail.com', 'nurse', '2019-04-20 13:13:52');
INSERT INTO `account` VALUES (477, 'VhmjfqbOxav', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'jiehong3@yahoo.com', 'doctor', '2011-08-06 03:00:00');
INSERT INTO `account` VALUES (478, 'UAsLwXOkNEqB', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'sonru427@mail.com', 'doctor', '2001-06-19 18:14:23');
INSERT INTO `account` VALUES (479, 'hQJFHbqWuaOCz', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'wingfat85@gmail.com', 'pharmacist', '2004-03-31 03:19:08');
INSERT INTO `account` VALUES (480, 'jwkYSRYPsIlxBf', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'tamuras@yahoo.com', 'user', '2002-06-10 20:30:03');
INSERT INTO `account` VALUES (481, 'XqWMRHZvIfUyH', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'hoky8@hotmail.com', 'admin', '2015-05-04 17:27:26');
INSERT INTO `account` VALUES (482, 'MHOjjhqb', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'tang43@gmail.com', 'user', '2003-12-20 22:44:29');
INSERT INTO `account` VALUES (483, 'QDJbMMyic', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'david102@gmail.com', 'admin', '2021-08-09 20:29:53');
INSERT INTO `account` VALUES (484, 'CtUUOjajHOdWx', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'ono69@gmail.com', 'nurse', '2008-01-04 16:19:33');
INSERT INTO `account` VALUES (485, 'TJykIKuYY', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'gmichelle@gmail.com', 'doctor', '2004-03-30 00:51:28');
INSERT INTO `account` VALUES (486, 'uttFseJl', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'murakami5@mail.com', 'pharmacist', '2003-09-21 20:51:21');
INSERT INTO `account` VALUES (487, 'hlpvVeenyoKkj', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'paulines4@gmail.com', 'admin', '2024-03-07 00:12:44');
INSERT INTO `account` VALUES (488, 'SfkCWZwUWRp', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'wongonna@yahoo.com', 'doctor', '2001-11-12 14:46:24');
INSERT INTO `account` VALUES (489, 'jipQcgKTxP', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'yuenls@gmail.com', 'pharmacist', '2000-05-15 06:46:17');
INSERT INTO `account` VALUES (490, 'yTHsmVzuWTTCn', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'mitsuki1@icloud.com', 'nurse', '2001-07-10 00:35:32');
INSERT INTO `account` VALUES (491, 'leBLkBFaQ', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'graj@outlook.com', 'doctor', '2009-07-15 02:05:29');
INSERT INTO `account` VALUES (492, 'qgcOfbgiofPp', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'lay926@gmail.com', 'doctor', '2012-04-22 15:08:21');
INSERT INTO `account` VALUES (493, 'hAyLutvjRDiDG', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'zhennanwe325@gmail.com', 'nurse', '2007-06-15 11:19:47');
INSERT INTO `account` VALUES (494, 'QNlSpdNL', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'shihan7@gmail.com', 'nurse', '2000-11-21 11:13:58');
INSERT INTO `account` VALUES (495, 'WWTFDsPS', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'fuzhiyuan@gmail.com', 'admin', '2016-08-25 03:17:26');
INSERT INTO `account` VALUES (496, 'RmDxazNU', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'davismelissa@gmail.com', 'doctor', '2017-08-25 14:16:41');
INSERT INTO `account` VALUES (497, 'ghmavyrIyU', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'tcpak@hotmail.com', 'doctor', '2007-05-31 18:59:51');
INSERT INTO `account` VALUES (498, 'TqgBDyJQh', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'doris212@gmail.com', 'admin', '2006-06-23 23:32:58');
INSERT INTO `account` VALUES (499, 'XyVbbaTzlsyNzN', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'fushingyau7@gmail.com', 'pharmacist', '2000-03-28 12:57:46');
INSERT INTO `account` VALUES (500, 'NnFvXHKBDw', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'jiafeng1@mail.com', 'nurse', '2007-01-07 02:17:13');
INSERT INTO `account` VALUES (501, 'iuJfUAdaMjPrz', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'sugiyamahazuki3@gmail.com', 'admin', '2021-03-25 14:20:32');
INSERT INTO `account` VALUES (502, 'hudVMdPM', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'lu1230@outlook.com', 'admin', '2013-03-21 22:33:18');
INSERT INTO `account` VALUES (503, 'sUPibNMm', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'emily2012@mail.com', 'pharmacist', '2009-09-18 17:19:32');
INSERT INTO `account` VALUES (504, 'jpNOoyBKBHqHaG', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'luisward201@hotmail.com', 'pharmacist', '2021-04-19 17:14:26');
INSERT INTO `account` VALUES (505, 'GrUlPLEyJMQ', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'lamkf1981@gmail.com', 'pharmacist', '2023-04-16 06:24:22');
INSERT INTO `account` VALUES (506, 'hzGyaeAiClxsxA', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'lherbe@yahoo.com', 'doctor', '2022-06-21 21:21:50');
INSERT INTO `account` VALUES (507, 'yHcvoWPwpRTPeF', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'wsyung3@icloud.com', 'nurse', '2020-12-05 22:29:44');
INSERT INTO `account` VALUES (508, 'sHmGMCrFScWdyR', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'ayata@hotmail.com', 'admin', '2006-08-29 04:19:01');
INSERT INTO `account` VALUES (509, 'IfVkjaTV', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'cookjoseph@hotmail.com', 'pharmacist', '2020-01-21 17:29:30');
INSERT INTO `account` VALUES (510, 'YjsCJgVlvGj', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'chen330@gmail.com', 'doctor', '2019-12-25 17:43:33');
INSERT INTO `account` VALUES (511, 'rcYPrUgqwszZmW', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'wyfu1959@icloud.com', 'pharmacist', '2021-04-10 12:07:39');
INSERT INTO `account` VALUES (512, 'gQRSaOFXyA', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'wfloui@icloud.com', 'nurse', '2001-03-26 14:15:50');
INSERT INTO `account` VALUES (513, 'rDUUcpsZhZfwn', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'wada1003@gmail.com', 'admin', '2008-04-26 11:31:22');
INSERT INTO `account` VALUES (514, 'LEjTvcojT', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'ayanmaeda45@outlook.com', 'pharmacist', '2021-05-02 04:28:49');
INSERT INTO `account` VALUES (515, 'VdzaEkOsZXeDJ', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'tianla@hotmail.com', 'user', '2006-09-02 09:17:04');
INSERT INTO `account` VALUES (516, 'flfFwzBWJ', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'janicemedina717@mail.com', 'admin', '2002-01-03 14:26:14');
INSERT INTO `account` VALUES (517, 'HEbRsIsISvbAz', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'wongwingfat@gmail.com', 'nurse', '2018-10-16 13:29:05');
INSERT INTO `account` VALUES (518, 'bPUTvKORKbsON', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'saiwingh@gmail.com', 'admin', '2009-07-16 17:08:09');
INSERT INTO `account` VALUES (519, 'iJKNhSjxwYITKm', '$2a$10$zjOzuoJuZw3hrJH8KZ6xSefjJrYEbtRU5oSF0VmlFUIwi.E/s5c26', 'dla@hotmail.com', 'nurse', '2015-04-25 08:46:03');

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `department_id` int NOT NULL AUTO_INCREMENT COMMENT '科室ID',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '科室名称',
  PRIMARY KEY (`department_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES (1, '内科');
INSERT INTO `department` VALUES (2, '外科');
INSERT INTO `department` VALUES (3, '妇产科');
INSERT INTO `department` VALUES (4, '儿科');
INSERT INTO `department` VALUES (5, '心血管科');
INSERT INTO `department` VALUES (6, '神经科');
INSERT INTO `department` VALUES (7, '消化科');
INSERT INTO `department` VALUES (8, '呼吸科');
INSERT INTO `department` VALUES (9, '内分泌科');
INSERT INTO `department` VALUES (10, '血液科');
INSERT INTO `department` VALUES (11, '肿瘤科');
INSERT INTO `department` VALUES (12, '骨科');
INSERT INTO `department` VALUES (13, '泌尿科');
INSERT INTO `department` VALUES (14, '眼科');
INSERT INTO `department` VALUES (15, '耳鼻喉科');
INSERT INTO `department` VALUES (16, '口腔科');
INSERT INTO `department` VALUES (17, '皮肤科');
INSERT INTO `department` VALUES (18, '康复科');
INSERT INTO `department` VALUES (19, '急诊科');
INSERT INTO `department` VALUES (20, '麻醉科');
INSERT INTO `department` VALUES (21, '放射科');
INSERT INTO `department` VALUES (22, '检验科');

-- ----------------------------
-- Table structure for doctor
-- ----------------------------
DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor`  (
  `doctor_id` int NOT NULL AUTO_INCREMENT COMMENT '医生ID',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '医生姓名',
  `gender` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '性别',
  `birthday` date NULL DEFAULT NULL COMMENT '生日',
  `department_id` int NULL DEFAULT NULL COMMENT '所属科室ID',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机号',
  `account_id` int NULL DEFAULT NULL COMMENT '对应的系统用户id',
  `assessment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '职称',
  PRIMARY KEY (`doctor_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of doctor
-- ----------------------------
INSERT INTO `doctor` VALUES (1, '苏璐', '女', '1999-05-06', 2, '14493803577', 195, '副主任医师');
INSERT INTO `doctor` VALUES (2, '蒋詩涵', '女', '1986-02-11', 20, '16577139974', 114, '住院医师');
INSERT INTO `doctor` VALUES (3, '沈詩涵', '女', '1972-03-05', 22, '14406457972', 3, '医师');
INSERT INTO `doctor` VALUES (4, '徐岚', '女', '1996-05-14', 10, '16843750923', 122, '主治医师');
INSERT INTO `doctor` VALUES (5, '薛宇宁', '男', '1975-06-28', 11, '14258129204', 128, '主任医师');
INSERT INTO `doctor` VALUES (6, '韩震南', '男', '1989-07-06', 20, '17296124743', 116, '主任医师');
INSERT INTO `doctor` VALUES (7, '吕致远', '男', '1983-05-26', 12, '18664398066', 104, '主任医师');
INSERT INTO `doctor` VALUES (8, '朱晓明', '男', '1973-09-28', 20, '18491415373', 169, '主任医师');
INSERT INTO `doctor` VALUES (9, '彭杰宏', '男', '1975-04-08', 17, '14357175757', 24, '医师');
INSERT INTO `doctor` VALUES (10, '田璐', '女', '1996-08-01', 13, '16232881526', 56, '实习医师');
INSERT INTO `doctor` VALUES (11, '范詩涵', '女', '1970-08-29', 5, '19092833293', 30, '主任医师');
INSERT INTO `doctor` VALUES (12, '郝璐', '女', '1977-03-18', 2, '15317763949', 173, '医师');
INSERT INTO `doctor` VALUES (13, '郭嘉伦', '男', '1976-07-12', 12, '13276096141', 124, '副主任医师');
INSERT INTO `doctor` VALUES (14, '苏子韬', '男', '1983-05-20', 1, '18097077405', 199, '主任医师');
INSERT INTO `doctor` VALUES (15, '周秀英', '女', '1970-02-01', 11, '16756534354', 105, '主任医师');
INSERT INTO `doctor` VALUES (16, '姜晓明', '男', '1974-07-12', 11, '15409534536', 140, '实习医师');
INSERT INTO `doctor` VALUES (17, '吴震南', '男', '1981-08-19', 15, '19270439867', 103, '实习医师');
INSERT INTO `doctor` VALUES (18, '廖致远', '男', '1981-03-07', 11, '16164116518', 155, '主任医师');
INSERT INTO `doctor` VALUES (19, '钱安琪', '女', '1972-05-06', 3, '19160595010', 135, '主任医师');
INSERT INTO `doctor` VALUES (20, '刘宇宁', '男', '1999-02-13', 16, '19596279875', 81, '主任医师');
INSERT INTO `doctor` VALUES (21, '熊子韬', '男', '1985-07-03', 18, '16344965367', 200, '主治医师');
INSERT INTO `doctor` VALUES (22, '杨璐', '女', '1972-09-19', 7, '15675653274', 54, '住院医师');
INSERT INTO `doctor` VALUES (23, '莫震南', '男', '1985-09-06', 19, '16248201991', 168, '主任医师');
INSERT INTO `doctor` VALUES (24, '马致远', '男', '1984-03-15', 17, '17289474945', 71, '副主任医师');
INSERT INTO `doctor` VALUES (25, '毛璐', '女', '1984-07-11', 13, '15682735175', 73, '副主任医师');
INSERT INTO `doctor` VALUES (26, '罗云熙', '男', '1992-10-30', 4, '17917373455', 68, '住院医师');
INSERT INTO `doctor` VALUES (27, '彭宇宁', '男', '1984-02-13', 11, '17337885748', 188, '副主任医师');
INSERT INTO `doctor` VALUES (28, '吴宇宁', '男', '1998-08-23', 12, '16316082079', 79, '主治医师');
INSERT INTO `doctor` VALUES (29, '周岚', '女', '1997-04-27', 9, '18259985348', 107, '住院医师');
INSERT INTO `doctor` VALUES (30, '黎睿', '男', '1992-05-21', 2, '13096629174', 64, '住院医师');
INSERT INTO `doctor` VALUES (31, '薛晓明', '男', '1974-05-25', 1, '16604635548', 138, '主任医师');
INSERT INTO `doctor` VALUES (32, '蒋璐', '女', '1983-10-21', 17, '18467423739', 184, '主治医师');
INSERT INTO `doctor` VALUES (33, '谭安琪', '女', '1981-09-28', 13, '16601222062', 111, '主任医师');
INSERT INTO `doctor` VALUES (34, '吕晓明', '男', '1992-09-08', 5, '19554907912', 149, '住院医师');
INSERT INTO `doctor` VALUES (35, '苏睿', '男', '1993-12-02', 11, '18810974089', 82, '实习医师');
INSERT INTO `doctor` VALUES (36, '谭致远', '男', '1991-07-28', 8, '18199844406', 205, '主治医师');
INSERT INTO `doctor` VALUES (37, '周子异', '男', '1985-08-01', 5, '13628848556', 126, '医师');
INSERT INTO `doctor` VALUES (38, '向云熙', '男', '1993-10-04', 13, '18617466080', 193, '医师');
INSERT INTO `doctor` VALUES (39, '许子异', '男', '1988-07-19', 3, '13466318279', 23, '医师');
INSERT INTO `doctor` VALUES (40, '卢璐', '女', '1992-11-07', 14, '19075760106', 180, '实习医师');
INSERT INTO `doctor` VALUES (41, '田睿', '男', '1993-11-01', 20, '14721389975', 208, '医师');
INSERT INTO `doctor` VALUES (42, '袁震南', '男', '1993-05-29', 7, '14268458024', 69, '副主任医师');
INSERT INTO `doctor` VALUES (43, '杜致远', '男', '1998-02-28', 9, '13188125652', 57, '医师');
INSERT INTO `doctor` VALUES (44, '周安琪', '女', '1996-10-17', 19, '19899309122', 207, '主治医师');
INSERT INTO `doctor` VALUES (45, '常秀英', '女', '1983-04-01', 15, '18280078928', 39, '副主任医师');
INSERT INTO `doctor` VALUES (46, '邱宇宁', '男', '1987-12-19', 1, '17112236198', 45, '副主任医师');
INSERT INTO `doctor` VALUES (47, '范子异', '男', '1990-08-16', 16, '19530413174', 25, '主治医师');
INSERT INTO `doctor` VALUES (48, '江子异', '男', '1989-11-12', 7, '17652590893', 132, '住院医师');
INSERT INTO `doctor` VALUES (49, '廖岚', '女', '1984-11-26', 2, '19524240729', 204, '实习医师');
INSERT INTO `doctor` VALUES (50, '钱杰宏', '男', '1973-01-06', 8, '17596709359', 159, '住院医师');
INSERT INTO `doctor` VALUES (51, '史秀英', '女', '1996-06-05', 19, '17573989171', 92, '主治医师');
INSERT INTO `doctor` VALUES (52, '唐璐', '女', '1973-03-31', 7, '18689910730', 62, '医师');
INSERT INTO `doctor` VALUES (53, '戴杰宏', '男', '1975-10-06', 6, '14520310883', 197, '副主任医师');
INSERT INTO `doctor` VALUES (54, '卢岚', '女', '1970-12-09', 8, '16377488364', 83, '医师');
INSERT INTO `doctor` VALUES (55, '何睿', '男', '1995-11-20', 22, '17682900262', 134, '住院医师');
INSERT INTO `doctor` VALUES (56, '陆安琪', '女', '1987-12-16', 21, '15537755197', 93, '主任医师');
INSERT INTO `doctor` VALUES (57, '秦璐', '女', '1972-05-13', 18, '15588995021', 219, '副主任医师');
INSERT INTO `doctor` VALUES (58, '龙嘉伦', '男', '1983-09-17', 20, '16821431643', 49, '住院医师');
INSERT INTO `doctor` VALUES (59, '熊子韬', '男', '1996-08-22', 17, '18081571784', 87, '住院医师');
INSERT INTO `doctor` VALUES (60, '韩子异', '男', '1994-10-16', 8, '17798135349', 141, '医师');
INSERT INTO `doctor` VALUES (61, '江璐', '女', '1988-09-29', 13, '19886271896', 4, '住院医师');
INSERT INTO `doctor` VALUES (62, '黎致远', '男', '1985-08-11', 7, '17866706581', 102, '住院医师');
INSERT INTO `doctor` VALUES (63, '崔安琪', '女', '1994-02-28', 20, '17011688411', 165, '住院医师');
INSERT INTO `doctor` VALUES (64, '阎秀英', '女', '1982-04-18', 21, '15874564634', 63, '实习医师');
INSERT INTO `doctor` VALUES (65, '王睿', '男', '1987-09-27', 11, '14190333793', 95, '主治医师');
INSERT INTO `doctor` VALUES (66, '傅云熙', '男', '1972-08-08', 12, '15450491462', 120, '主任医师');
INSERT INTO `doctor` VALUES (67, '罗岚', '女', '1978-10-18', 8, '19108731151', 123, '主任医师');
INSERT INTO `doctor` VALUES (68, '许致远', '男', '1986-01-31', 20, '14800214932', 98, '医师');
INSERT INTO `doctor` VALUES (69, '孙詩涵', '女', '1997-01-25', 1, '14231497959', 65, '主任医师');
INSERT INTO `doctor` VALUES (70, '石璐', '女', '1981-06-10', 14, '17949436845', 41, '主任医师');
INSERT INTO `doctor` VALUES (71, '姜致远', '男', '1988-05-08', 21, '14577210644', 59, '主任医师');
INSERT INTO `doctor` VALUES (72, '汪震南', '男', '1985-08-22', 5, '13957636510', 183, '实习医师');
INSERT INTO `doctor` VALUES (73, '武致远', '男', '1986-08-09', 10, '17251293257', 133, '医师');
INSERT INTO `doctor` VALUES (74, '傅杰宏', '男', '1979-05-27', 22, '13522393406', 37, '医师');
INSERT INTO `doctor` VALUES (75, '黎子异', '男', '1989-12-30', 1, '17609174301', 101, '实习医师');
INSERT INTO `doctor` VALUES (76, '袁岚', '女', '1997-06-15', 11, '15777868123', 146, '住院医师');
INSERT INTO `doctor` VALUES (77, '方安琪', '女', '1977-03-12', 15, '18026014520', 171, '主任医师');
INSERT INTO `doctor` VALUES (78, '高安琪', '女', '1977-12-27', 21, '19753804930', 20, '住院医师');
INSERT INTO `doctor` VALUES (79, '王宇宁', '男', '1997-07-08', 16, '18068412344', 109, '实习医师');
INSERT INTO `doctor` VALUES (80, '徐秀英', '女', '1991-09-28', 13, '13623773843', 166, '实习医师');
INSERT INTO `doctor` VALUES (81, '常震南', '男', '1996-12-07', 4, '17822631643', 55, '主治医师');
INSERT INTO `doctor` VALUES (82, '孔杰宏', '男', '1984-11-15', 12, '14031115879', 108, '副主任医师');
INSERT INTO `doctor` VALUES (83, '袁睿', '男', '1988-04-18', 9, '16707703098', 90, '医师');
INSERT INTO `doctor` VALUES (84, '丁安琪', '女', '1989-03-19', 15, '13281731880', 153, '实习医师');
INSERT INTO `doctor` VALUES (85, '钟晓明', '男', '1982-09-07', 1, '14733559861', 110, '主治医师');
INSERT INTO `doctor` VALUES (86, '韦致远', '男', '1995-04-06', 3, '14349733725', 167, '副主任医师');
INSERT INTO `doctor` VALUES (87, '程詩涵', '女', '1983-03-09', 4, '13974487091', 161, '医师');
INSERT INTO `doctor` VALUES (88, '罗詩涵', '女', '1985-05-02', 7, '19366556410', 67, '副主任医师');
INSERT INTO `doctor` VALUES (89, '蒋云熙', '男', '1989-03-17', 18, '17429748301', 66, '主治医师');
INSERT INTO `doctor` VALUES (90, '杜安琪', '女', '1988-07-18', 18, '15268155723', 78, '医师');
INSERT INTO `doctor` VALUES (91, '向安琪', '女', '1993-11-24', 17, '15151252213', 117, '实习医师');
INSERT INTO `doctor` VALUES (92, '蔡致远', '男', '1988-10-02', 12, '13831832796', 125, '医师');
INSERT INTO `doctor` VALUES (93, '熊岚', '女', '1976-05-20', 12, '17688324946', 96, '主任医师');
INSERT INTO `doctor` VALUES (94, '廖云熙', '男', '1972-10-03', 16, '15581592971', 100, '副主任医师');
INSERT INTO `doctor` VALUES (95, '梁致远', '男', '1984-09-29', 20, '18072563940', 150, '实习医师');
INSERT INTO `doctor` VALUES (96, '阎杰宏', '男', '1986-07-04', 6, '14782673896', 182, '主任医师');
INSERT INTO `doctor` VALUES (97, '马子异', '男', '1978-07-05', 18, '13860645374', 77, '实习医师');
INSERT INTO `doctor` VALUES (98, '江宇宁', '男', '1977-06-24', 7, '14058482001', 218, '副主任医师');
INSERT INTO `doctor` VALUES (99, '郝子韬', '男', '1976-03-05', 13, '13379359461', 31, '主治医师');
INSERT INTO `doctor` VALUES (100, '廖致远', '男', '1979-03-08', 14, '16356733557', 99, '副主任医师');

-- ----------------------------
-- Table structure for equipment
-- ----------------------------
DROP TABLE IF EXISTS `equipment`;
CREATE TABLE `equipment`  (
  `equipment_id` int NOT NULL AUTO_INCREMENT COMMENT '设备id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '设备名',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '设备状态',
  `department_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`equipment_id`) USING BTREE,
  INDEX `department_id`(`department_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of equipment
-- ----------------------------
INSERT INTO `equipment` VALUES (5, '拔牙设备', '正常', 2);
INSERT INTO `equipment` VALUES (6, '心电图机', '正常', 5);
INSERT INTO `equipment` VALUES (7, '超声诊断仪', '维修中', 1);
INSERT INTO `equipment` VALUES (8, 'CT扫描仪', '正常', 6);
INSERT INTO `equipment` VALUES (9, '核磁共振成像仪', '正常', 21);
INSERT INTO `equipment` VALUES (10, '血液透析机', '正常', 1);
INSERT INTO `equipment` VALUES (11, '打印机', '维修中', 22);
INSERT INTO `equipment` VALUES (12, '生化分析仪', '正常', 19);
INSERT INTO `equipment` VALUES (13, '动脉血压监测器', '正常', 20);
INSERT INTO `equipment` VALUES (14, '脑电图机', '正常', 4);
INSERT INTO `equipment` VALUES (15, '内窥镜', '维修中', 2);
INSERT INTO `equipment` VALUES (16, '放疗机', '正常', 15);
INSERT INTO `equipment` VALUES (17, '牙科综合治疗椅', '正常', 16);
INSERT INTO `equipment` VALUES (18, '麻醉机', '正常', 17);
INSERT INTO `equipment` VALUES (19, '静脉输液泵', '正常', 1);
INSERT INTO `equipment` VALUES (20, '全自动血球计数器', '维修中', 19);
INSERT INTO `equipment` VALUES (21, 'X光机', '正常', 6);
INSERT INTO `equipment` VALUES (22, '听力筛查仪', '正常', 24);
INSERT INTO `equipment` VALUES (23, '经颅多普勒', '正常', 5);
INSERT INTO `equipment` VALUES (24, '眼底照相机', '正常', 22);
INSERT INTO `equipment` VALUES (25, '脉搏血氧仪', '正常', 20);

-- ----------------------------
-- Table structure for hospitalizations
-- ----------------------------
DROP TABLE IF EXISTS `hospitalizations`;
CREATE TABLE `hospitalizations`  (
  `hospitalizations_id` int NOT NULL AUTO_INCREMENT COMMENT '病人id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '病人名',
  `gender` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '病人性别',
  `birthday` date NULL DEFAULT NULL COMMENT '病人出生日期',
  `department_id` int NULL DEFAULT NULL COMMENT '科室',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '病情描述',
  `relatives_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '亲属联系方式',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '患者联系方式',
  `space` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '住院床位',
  `progress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '治疗进度',
  PRIMARY KEY (`hospitalizations_id`) USING BTREE,
  INDEX `department_id`(`department_id` ASC) USING BTREE,
  CONSTRAINT `hospitalizations_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 501 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hospitalizations
-- ----------------------------
INSERT INTO `hospitalizations` VALUES (1, '曾安琪', '女', '1998-04-15', 20, '饮食注意', '已出院', '轻微头痛', '13063751577', '16918922381', 'P-6', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (2, '田宇宁', '女', '1998-07-02', 9, '无', '已转院', '持续性咳嗽', '19894361008', '16647605287', 'S-5', '康复训练中');
INSERT INTO `hospitalizations` VALUES (3, '戴璐', '女', '1980-02-05', 8, '无', '已转院', '心悸', '14653910670', '17798713992', 'A-6', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (4, '顾嘉伦', '男', '1988-07-17', 2, '无', '住院中', '消化不良', '18869345453', '15984450127', 'H-9', '康复训练中');
INSERT INTO `hospitalizations` VALUES (5, '董詩涵', '女', '1980-01-07', 16, '无', '住院中', '消化不良', '14033827710', '14013503332', 'Q-0', '康复训练中');
INSERT INTO `hospitalizations` VALUES (6, '戴嘉伦', '男', '1986-05-31', 8, '无', '已转院', '乏力', '13304400597', '14918199682', 'D-3', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (7, '雷宇宁', '男', '1998-02-19', 22, '无', '已转院', '严重呼吸困难', '19599927354', '15530249601', 'Z-11', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (8, '雷安琪', '女', '1985-12-31', 10, '无', '已出院', '乏力', '17074211499', '19027013032', 'I-13', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (9, '石云熙', '男', '1975-12-18', 15, '无', '已转院', '肌肉疼痛', '13460080894', '17190332620', 'D-13', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (10, '石岚', '女', '1984-08-22', 20, '无', '修养中', '晕厥', '14418511058', '17461397344', 'A-5', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (11, '朱璐', '女', '1995-01-25', 11, '无', '修养中', '消化不良', '14498736119', '19536790348', 'A-16', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (12, '马宇宁', '男', '1983-03-21', 13, '无', '已转院', '心悸', '18683609503', '19625001441', 'M-15', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (13, '谭子异', '男', '1973-11-08', 5, '无', '修养中', '呕吐', '15386017267', '13052061570', 'M-3', '康复训练中');
INSERT INTO `hospitalizations` VALUES (14, '史云熙', '男', '1970-12-20', 7, '无', '已出院', '呕吐', '13788325021', '16685519621', 'Q-6', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (15, '胡睿', '男', '1995-01-17', 21, '无', '已出院', '腹痛', '18693348336', '18975484745', 'H-11', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (16, '金安琪', '女', '2000-04-23', 3, '无', '已出院', '高烧不退', '14554357077', '16217779599', 'J-19', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (17, '吴晓明', '男', '1992-01-04', 4, '无', '修养中', '严重呼吸困难', '14447431534', '17649522743', 'P-11', '康复训练中');
INSERT INTO `hospitalizations` VALUES (18, '顾震南', '男', '1985-02-15', 2, '无', '已转院', '严重呼吸困难', '16858908239', '18466458078', 'M-9', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (19, '何子异', '男', '1985-01-30', 18, '无', '修养中', '关节疼痛', '19935196507', '13273891681', 'K-18', '康复训练中');
INSERT INTO `hospitalizations` VALUES (20, '金致远', '男', '1980-04-28', 14, '无', '已转院', '皮肤红疹', '13785480948', '15488248144', 'F-12', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (21, '田致远', '男', '1998-09-06', 6, '无', '修养中', '肌肉疼痛', '16154490248', '16420056996', 'I-18', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (22, '黎安琪', '女', '1975-03-13', 19, '无', '已出院', '疲劳感', '14365728469', '17271421159', 'M-4', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (23, '何震南', '男', '1988-06-14', 4, '无', '住院中', '持续性咳嗽', '13200798514', '13212467271', 'I-17', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (24, '孔致远', '男', '1999-03-03', 2, '无', '修养中', '失眠', '13603671295', '18428008640', 'M-13', '康复训练中');
INSERT INTO `hospitalizations` VALUES (25, '马子韬', '男', '1975-04-17', 9, '无', '已出院', '胸痛', '16698215532', '15811980877', 'L-13', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (26, '常宇宁', '男', '1997-06-06', 3, '无', '住院中', '头晕', '18691827021', '18376870823', 'Q-15', '康复训练中');
INSERT INTO `hospitalizations` VALUES (27, '崔震南', '男', '1990-05-24', 7, '无', '已转院', '肌肉疼痛', '14166244983', '19933801456', 'Y-14', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (28, '高杰宏', '男', '1992-01-28', 9, '无', '修养中', '视力模糊', '13189678391', '14810506675', 'C-11', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (29, '韩秀英', '女', '1981-02-26', 17, '无', '已出院', '晕厥', '16978514340', '19801227786', 'D-19', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (30, '周震南', '男', '1980-08-27', 3, '无', '已转院', '轻微头痛', '15019900854', '17989543886', 'C-13', '康复训练中');
INSERT INTO `hospitalizations` VALUES (31, '郝睿', '男', '1974-07-15', 8, '无', '已出院', '严重呼吸困难', '16514653446', '15092278040', 'Q-6', '康复训练中');
INSERT INTO `hospitalizations` VALUES (32, '赵嘉伦', '男', '1976-05-23', 10, '无', '修养中', '头晕', '13259877443', '13151837160', 'L-7', '康复训练中');
INSERT INTO `hospitalizations` VALUES (33, '余晓明', '男', '1992-07-12', 1, '无', '已出院', '喉咙痛', '17873677548', '14991446156', 'Z-8', '康复训练中');
INSERT INTO `hospitalizations` VALUES (34, '卢宇宁', '男', '1998-04-04', 13, '无', '已转院', '疲劳感', '18375202949', '14480138845', 'F-17', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (35, '尹子韬', '男', '1973-01-23', 16, '无', '已转院', '喉咙痛', '18395534913', '18506314505', 'X-8', '康复训练中');
INSERT INTO `hospitalizations` VALUES (36, '高致远', '男', '1972-03-04', 12, '无', '修养中', '头晕', '13128518022', '16277156015', 'P-1', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (37, '孙致远', '男', '1989-09-08', 1, '无', '修养中', '头晕', '15683455712', '14334608630', 'E-12', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (38, '孟睿', '男', '1986-08-19', 15, '无', '住院中', '晕厥', '16380363528', '18436979767', 'G-14', '康复训练中');
INSERT INTO `hospitalizations` VALUES (39, '于子韬', '男', '1993-05-24', 17, '无', '住院中', '轻微头痛', '16636249624', '15046430521', 'S-12', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (40, '钱詩涵', '女', '1984-12-05', 5, '无', '已出院', '腹痛', '19787017818', '13187363750', 'T-13', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (41, '黄詩涵', '女', '1970-03-06', 15, '无', '修养中', '皮肤红疹', '17487346305', '14373447169', 'T-13', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (42, '金璐', '女', '1992-12-02', 1, '无', '已转院', '胸痛', '15572311943', '15265183802', 'T-9', '康复训练中');
INSERT INTO `hospitalizations` VALUES (43, '许睿', '男', '1970-01-29', 8, '无', '住院中', '皮疹', '14668623684', '14595419798', 'V-14', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (44, '邹詩涵', '女', '1971-04-28', 2, '无', '住院中', '关节疼痛', '17939194800', '18057643643', 'E-8', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (45, '邵震南', '男', '1983-09-19', 22, '无', '修养中', '肌肉疼痛', '17627795929', '17816368927', 'L-16', '康复训练中');
INSERT INTO `hospitalizations` VALUES (46, '彭子韬', '男', '1996-10-29', 19, '无', '住院中', '晕厥', '19694986824', '19125452220', 'E-12', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (47, '莫安琪', '女', '1985-08-14', 15, '无', '已出院', '失眠', '17762082348', '17624970720', 'E-11', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (48, '陆致远', '男', '1978-11-04', 18, '无', '已转院', '晕厥', '16619656582', '13429997411', 'K-13', '康复训练中');
INSERT INTO `hospitalizations` VALUES (49, '汪嘉伦', '男', '1992-12-26', 1, '无', '住院中', '头晕', '14353926584', '15594148992', 'S-2', '康复训练中');
INSERT INTO `hospitalizations` VALUES (50, '毛安琪', '女', '1995-06-02', 9, '无', '住院中', '喉咙痛', '19124657603', '13815984395', 'Z-4', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (51, '廖嘉伦', '男', '1990-07-26', 12, '无', '已转院', '心悸', '13558712306', '13113113539', 'A-16', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (52, '卢岚', '女', '1997-09-08', 15, '无', '修养中', '皮疹', '18641316529', '17783678579', 'Z-14', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (53, '苏子韬', '男', '1989-04-21', 17, '无', '已转院', '视力模糊', '19005008130', '13469109752', 'Q-7', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (54, '韩宇宁', '男', '1975-07-30', 18, '无', '住院中', '喉咙痛', '14613145197', '17017302680', 'Q-0', '康复训练中');
INSERT INTO `hospitalizations` VALUES (55, '姜震南', '男', '1983-02-10', 10, '无', '住院中', '视力模糊', '19335552935', '14745964864', 'S-2', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (56, '杨云熙', '男', '1980-07-26', 1, '无', '已出院', '皮疹', '13138910029', '13662006891', 'D-0', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (57, '毛震南', '男', '1983-12-05', 20, '无', '已转院', '视力模糊', '16021554354', '13795124208', 'A-8', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (58, '谢詩涵', '女', '1978-11-27', 5, '无', '住院中', '乏力', '13149976456', '16814390523', 'Y-8', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (59, '梁致远', '男', '1987-05-24', 17, '无', '住院中', '严重呼吸困难', '18170983897', '19779401830', 'T-6', '康复训练中');
INSERT INTO `hospitalizations` VALUES (60, '向杰宏', '男', '1970-01-24', 18, '无', '已出院', '严重呼吸困难', '15983197483', '15024807897', 'Q-13', '康复训练中');
INSERT INTO `hospitalizations` VALUES (61, '方睿', '男', '1997-02-02', 12, '无', '已出院', '喉咙痛', '18764688083', '13968102950', 'Z-1', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (62, '谢震南', '男', '2000-05-02', 21, '无', '修养中', '失眠', '16430611076', '16121377351', 'M-7', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (63, '薛震南', '男', '1983-10-03', 1, '无', '住院中', '持续性咳嗽', '15310403588', '14649986978', 'O-6', '康复训练中');
INSERT INTO `hospitalizations` VALUES (64, '田安琪', '女', '1984-04-20', 9, '无', '住院中', '肌肉疼痛', '13293318796', '17152710716', 'H-8', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (65, '杨璐', '女', '1982-03-22', 17, '无', '修养中', '胸痛', '13318336992', '16091194886', 'B-12', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (66, '蒋安琪', '女', '1970-12-23', 7, '无', '已出院', '关节疼痛', '14622765859', '17589421713', 'Y-16', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (67, '严云熙', '男', '1987-03-14', 6, '无', '已转院', '消化不良', '13253226894', '17484248667', 'H-1', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (68, '阎宇宁', '男', '1991-05-27', 19, '无', '住院中', '呕吐', '13041754218', '15505802082', 'W-1', '康复训练中');
INSERT INTO `hospitalizations` VALUES (69, '黄云熙', '男', '1994-12-04', 1, '无', '已转院', '消化不良', '19465290237', '14457197228', 'W-5', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (70, '邹睿', '男', '1978-12-03', 20, '无', '住院中', '乏力', '16168560383', '18706897667', 'H-11', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (71, '郑子韬', '男', '1976-01-07', 8, '无', '住院中', '视力模糊', '19477593017', '13392204937', 'H-15', '康复训练中');
INSERT INTO `hospitalizations` VALUES (72, '严晓明', '男', '1996-09-16', 16, '无', '住院中', '肌肉疼痛', '18693463333', '14922032243', 'E-11', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (73, '曹云熙', '男', '1997-05-27', 7, '无', '住院中', '严重呼吸困难', '16486074665', '13531653199', 'V-17', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (74, '何宇宁', '男', '1983-04-10', 4, '无', '修养中', '关节疼痛', '14578111086', '19727916864', 'M-11', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (75, '陈晓明', '男', '1970-07-01', 8, '无', '住院中', '轻微头痛', '18499239725', '18281260763', 'A-17', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (76, '孔子韬', '男', '1982-09-28', 16, '无', '已转院', '晕厥', '16897824485', '15809628470', 'S-15', '康复训练中');
INSERT INTO `hospitalizations` VALUES (77, '范秀英', '女', '1978-03-06', 7, '无', '已转院', '疲劳感', '17282263424', '16715446702', 'V-17', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (78, '杨秀英', '女', '1970-08-08', 3, '无', '已出院', '高烧不退', '14826029171', '17058247708', 'V-16', '康复训练中');
INSERT INTO `hospitalizations` VALUES (79, '顾秀英', '女', '1987-08-24', 17, '无', '住院中', '失眠', '17189825992', '19728819246', 'T-6', '康复训练中');
INSERT INTO `hospitalizations` VALUES (80, '丁安琪', '女', '1976-06-09', 21, '无', '已出院', '高烧不退', '14408652053', '14216554840', 'Q-6', '康复训练中');
INSERT INTO `hospitalizations` VALUES (81, '韦子韬', '男', '1980-05-23', 12, '无', '已转院', '喉咙痛', '19312152110', '17106172916', 'I-14', '康复训练中');
INSERT INTO `hospitalizations` VALUES (82, '崔安琪', '女', '1975-09-04', 7, '无', '住院中', '关节疼痛', '17000034867', '13830205335', 'N-5', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (83, '徐宇宁', '男', '1992-07-17', 5, '无', '住院中', '肌肉疼痛', '13139043355', '19730672562', 'B-15', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (84, '彭杰宏', '男', '1972-05-31', 11, '无', '住院中', '呕吐', '17146593611', '16154360801', 'M-11', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (85, '蔡致远', '男', '1988-12-10', 20, '无', '住院中', '皮疹', '19199331915', '18890631132', 'F-4', '康复训练中');
INSERT INTO `hospitalizations` VALUES (86, '夏安琪', '女', '1995-07-12', 4, '无', '已出院', '疲劳感', '14853626761', '15069737037', 'G-14', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (87, '龙云熙', '男', '1987-06-19', 21, '无', '修养中', '胸痛', '19680509971', '16356323135', 'M-6', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (88, '蔡岚', '女', '1975-07-07', 1, '无', '已转院', '晕厥', '18496936760', '16447650307', 'F-4', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (89, '钱子韬', '男', '1992-04-06', 13, '无', '住院中', '消化不良', '15095546155', '17654874544', 'K-6', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (90, '向晓明', '男', '1985-03-28', 20, '无', '已转院', '轻微头痛', '16300413576', '19457380071', 'J-0', '康复训练中');
INSERT INTO `hospitalizations` VALUES (91, '阎杰宏', '男', '1972-09-14', 1, '无', '修养中', '关节疼痛', '17867424183', '14020656270', 'G-19', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (92, '顾詩涵', '女', '1980-08-25', 8, '无', '已转院', '头晕', '18462703855', '18486101923', 'X-0', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (93, '孟致远', '男', '1991-02-14', 4, '无', '住院中', '轻微头痛', '17263267145', '19338290660', 'C-8', '康复训练中');
INSERT INTO `hospitalizations` VALUES (94, '邹秀英', '女', '1987-09-20', 4, '无', '住院中', '呕吐', '14187041105', '19436960413', 'L-14', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (95, '叶致远', '男', '1998-01-05', 19, '无', '已出院', '消化不良', '17797747691', '13609126808', 'J-5', '康复训练中');
INSERT INTO `hospitalizations` VALUES (96, '张子异', '男', '1975-04-06', 3, '无', '修养中', '乏力', '15687481030', '15353283595', 'T-15', '康复训练中');
INSERT INTO `hospitalizations` VALUES (97, '郑宇宁', '男', '1984-03-18', 16, '无', '已转院', '疲劳感', '17109059805', '18674034320', 'N-4', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (98, '袁致远', '男', '1977-10-28', 21, '无', '已转院', '轻微头痛', '19674262030', '13988401693', 'T-15', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (99, '尹詩涵', '女', '1995-12-17', 2, '无', '已出院', '轻微头痛', '17265418190', '19692704193', 'D-1', '康复训练中');
INSERT INTO `hospitalizations` VALUES (100, '钱子异', '男', '1988-08-18', 18, '无', '修养中', '持续性咳嗽', '13343652759', '17006565645', 'P-16', '康复训练中');
INSERT INTO `hospitalizations` VALUES (101, '贺岚', '女', '1976-05-04', 19, '无', '已出院', '疲劳感', '18114732404', '15689516779', 'C-14', '康复训练中');
INSERT INTO `hospitalizations` VALUES (102, '段秀英', '女', '1996-05-22', 5, '无', '住院中', '胸痛', '15067792983', '19186160870', 'N-1', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (103, '秦杰宏', '男', '1979-11-20', 16, '无', '住院中', '持续性咳嗽', '14438417544', '14988430497', 'J-5', '康复训练中');
INSERT INTO `hospitalizations` VALUES (104, '郭云熙', '男', '1980-05-02', 6, '无', '已转院', '头晕', '14266582532', '16112451233', 'F-16', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (105, '卢震南', '男', '1990-08-18', 4, '无', '已转院', '严重呼吸困难', '15405701816', '16182741856', 'Y-0', '康复训练中');
INSERT INTO `hospitalizations` VALUES (106, '萧子韬', '男', '1973-04-15', 17, '无', '住院中', '呕吐', '17454831921', '13465347041', 'L-16', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (107, '贾安琪', '女', '1991-07-17', 13, '无', '已出院', '乏力', '15878613865', '16265154205', 'N-18', '康复训练中');
INSERT INTO `hospitalizations` VALUES (108, '韩晓明', '男', '1991-10-07', 16, '无', '已转院', '晕厥', '18161624388', '16693242184', 'P-4', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (109, '武秀英', '女', '1992-02-18', 22, '无', '住院中', '晕厥', '17697026033', '15146358911', 'A-9', '康复训练中');
INSERT INTO `hospitalizations` VALUES (110, '常璐', '女', '1970-05-08', 11, '无', '已出院', '胸痛', '19920227151', '14846256487', 'G-15', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (111, '田震南', '男', '1979-08-07', 1, '无', '住院中', '皮疹', '15213160888', '18891059119', 'D-2', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (112, '蔡詩涵', '女', '1977-07-01', 13, '无', '住院中', '皮肤红疹', '14981747401', '18174292203', 'J-5', '康复训练中');
INSERT INTO `hospitalizations` VALUES (113, '卢秀英', '女', '1993-05-22', 17, '无', '住院中', '皮肤红疹', '16264846033', '19247667206', 'J-16', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (114, '董云熙', '男', '1998-03-29', 16, '无', '修养中', '乏力', '16584226383', '18604519406', 'V-6', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (115, '田晓明', '男', '1998-11-26', 16, '无', '已转院', '视力模糊', '17774837741', '14386552928', 'M-3', '康复训练中');
INSERT INTO `hospitalizations` VALUES (116, '廖晓明', '男', '1977-12-09', 7, '无', '修养中', '呕吐', '18759739385', '17459474650', 'R-1', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (117, '武睿', '男', '1971-01-22', 19, '无', '住院中', '消化不良', '18767339449', '13653735380', 'C-17', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (118, '董睿', '男', '1989-09-09', 21, '无', '住院中', '乏力', '17074812160', '19211611784', 'T-4', '康复训练中');
INSERT INTO `hospitalizations` VALUES (119, '陆宇宁', '男', '1993-01-07', 18, '无', '住院中', '持续性咳嗽', '14228895443', '15880004428', 'M-18', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (120, '赵子异', '男', '1979-02-26', 3, '无', '住院中', '肌肉疼痛', '17251747909', '18040564727', 'S-17', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (121, '魏宇宁', '男', '1972-06-26', 7, '无', '已出院', '轻微头痛', '13861087082', '13410190271', 'Y-9', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (122, '孟子韬', '男', '1994-05-21', 7, '无', '修养中', '疲劳感', '19314112201', '16960093878', 'R-11', '康复训练中');
INSERT INTO `hospitalizations` VALUES (123, '丁睿', '男', '1992-07-16', 21, '无', '已出院', '关节疼痛', '18405595293', '13818851922', 'S-2', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (124, '汤睿', '男', '1990-10-18', 4, '无', '已出院', '肌肉疼痛', '16803745648', '14997064057', 'D-8', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (125, '冯云熙', '男', '1996-12-05', 4, '无', '住院中', '腹痛', '19916465092', '17872432484', 'V-3', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (126, '汪安琪', '女', '1992-06-17', 9, '无', '修养中', '晕厥', '16603889065', '17095277230', 'N-13', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (127, '江岚', '女', '1970-12-10', 6, '无', '修养中', '胸痛', '14592030922', '15343108094', 'O-17', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (128, '龚致远', '男', '1984-01-22', 2, '无', '修养中', '头晕', '17148552879', '17024047193', 'R-13', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (129, '戴子韬', '男', '1973-09-04', 3, '无', '住院中', '轻微头痛', '13927986511', '13097831127', 'X-9', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (130, '董睿', '男', '1985-12-31', 17, '无', '已转院', '皮肤红疹', '14620891784', '19259200373', 'D-3', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (131, '陆岚', '女', '2000-04-24', 5, '无', '已转院', '喉咙痛', '15432193898', '14104146631', 'Y-7', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (132, '董安琪', '女', '1990-10-27', 20, '无', '住院中', '关节疼痛', '17737650696', '16160999255', 'S-17', '康复训练中');
INSERT INTO `hospitalizations` VALUES (133, '张岚', '女', '1979-09-22', 18, '无', '已出院', '疲劳感', '16697142086', '14553288058', 'J-1', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (134, '崔睿', '男', '1973-03-25', 21, '无', '已转院', '乏力', '16601947373', '19265550566', 'J-2', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (135, '钟嘉伦', '男', '1996-06-07', 1, '无', '已转院', '胸痛', '14428538567', '17792880789', 'T-5', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (136, '陶睿', '男', '1981-06-01', 4, '无', '修养中', '喉咙痛', '16538314811', '15118250284', 'T-15', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (137, '阎子异', '男', '1972-03-26', 13, '无', '住院中', '失眠', '19689074172', '19401341617', 'F-15', '康复训练中');
INSERT INTO `hospitalizations` VALUES (138, '许睿', '男', '1992-06-04', 16, '无', '住院中', '皮疹', '15089492730', '16580675095', 'X-12', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (139, '范晓明', '男', '1998-12-16', 2, '无', '已出院', '胸痛', '15125160421', '19502643312', 'G-17', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (140, '蒋安琪', '女', '1991-01-04', 14, '无', '已转院', '头晕', '16855533717', '13979825097', 'K-16', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (141, '谭子韬', '男', '1993-09-08', 22, '无', '已出院', '喉咙痛', '18374747014', '19225601406', 'T-19', '康复训练中');
INSERT INTO `hospitalizations` VALUES (142, '金岚', '女', '1982-07-19', 5, '无', '已转院', '轻微头痛', '16378812334', '16649273684', 'U-14', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (143, '廖秀英', '女', '1974-12-06', 22, '无', '住院中', '消化不良', '17906072225', '17862525851', 'E-3', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (144, '马詩涵', '女', '1977-08-05', 16, '无', '修养中', '视力模糊', '19372226981', '13858192064', 'M-14', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (145, '尹致远', '男', '1983-02-16', 6, '无', '修养中', '疲劳感', '13576940463', '14409230136', 'C-5', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (146, '林安琪', '女', '1990-09-27', 9, '无', '修养中', '严重呼吸困难', '13024312750', '13871119327', 'S-17', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (147, '钱震南', '男', '1990-05-23', 15, '无', '已出院', '胸痛', '14151701419', '13296048173', 'H-8', '康复训练中');
INSERT INTO `hospitalizations` VALUES (148, '石子韬', '男', '1986-03-02', 2, '无', '住院中', '呕吐', '13472677877', '14975716732', 'G-17', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (149, '卢子异', '男', '1989-06-28', 4, '无', '已转院', '喉咙痛', '14026128966', '17139028311', 'C-13', '康复训练中');
INSERT INTO `hospitalizations` VALUES (150, '姜秀英', '女', '1999-07-08', 14, '无', '已转院', '肌肉疼痛', '19354859300', '16548027964', 'U-16', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (151, '薛詩涵', '女', '1993-06-18', 4, '无', '已转院', '胸痛', '17091143066', '17067536808', 'R-7', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (152, '于震南', '男', '1987-03-30', 10, '无', '已出院', '肌肉疼痛', '13025471914', '13694164612', 'X-12', '康复训练中');
INSERT INTO `hospitalizations` VALUES (153, '任秀英', '女', '1979-05-09', 1, '无', '修养中', '皮肤红疹', '18798617568', '16161088265', 'T-7', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (154, '曹睿', '男', '1990-12-20', 1, '无', '住院中', '心悸', '15568192831', '17853050708', 'E-0', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (155, '宋安琪', '女', '1975-02-16', 2, '无', '已出院', '轻微头痛', '17168954654', '13225851712', 'H-9', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (156, '何云熙', '男', '1986-07-12', 13, '无', '已出院', '腹痛', '16085077541', '14740976012', 'V-9', '康复训练中');
INSERT INTO `hospitalizations` VALUES (157, '梁震南', '男', '1986-09-24', 6, '无', '已转院', '轻微头痛', '15810892154', '15680867057', 'B-11', '康复训练中');
INSERT INTO `hospitalizations` VALUES (158, '朱秀英', '女', '1993-12-16', 21, '无', '已转院', '疲劳感', '14231296283', '19004500667', 'G-19', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (159, '董秀英', '女', '1998-01-03', 16, '无', '修养中', '轻微头痛', '16962261611', '17265056291', 'F-4', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (160, '赵嘉伦', '男', '1986-10-20', 18, '无', '修养中', '高烧不退', '13995957269', '15369683908', 'X-7', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (161, '张子韬', '男', '1974-06-22', 8, '无', '修养中', '呕吐', '15867849258', '19617627820', 'B-11', '康复训练中');
INSERT INTO `hospitalizations` VALUES (162, '潘秀英', '女', '1990-02-12', 14, '无', '修养中', '晕厥', '18142147380', '14538751878', 'R-3', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (163, '彭璐', '女', '1997-03-07', 6, '无', '已转院', '胸痛', '14128703827', '13439602252', 'F-19', '康复训练中');
INSERT INTO `hospitalizations` VALUES (164, '赵宇宁', '男', '1974-12-17', 16, '无', '住院中', '消化不良', '13932324663', '15938377197', 'C-7', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (165, '周秀英', '女', '1981-04-17', 10, '无', '已出院', '胸痛', '15118464915', '19333661020', 'W-12', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (166, '阎子韬', '男', '1980-09-26', 2, '无', '已出院', '肌肉疼痛', '15205674180', '15142935832', 'B-12', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (167, '彭震南', '男', '1998-07-31', 20, '无', '修养中', '胸痛', '15670928853', '15573603818', 'P-13', '康复训练中');
INSERT INTO `hospitalizations` VALUES (168, '向云熙', '男', '1991-03-05', 7, '无', '已出院', '头晕', '17805408567', '19173973147', 'G-1', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (169, '顾宇宁', '男', '1972-09-19', 7, '无', '已出院', '关节疼痛', '17371353261', '19970333145', 'J-5', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (170, '莫秀英', '女', '1989-01-08', 6, '无', '住院中', '胸痛', '16195016926', '17689643550', 'Z-3', '康复训练中');
INSERT INTO `hospitalizations` VALUES (171, '赵晓明', '男', '1995-01-11', 16, '无', '住院中', '皮肤红疹', '13322489875', '18676465242', 'D-14', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (172, '何安琪', '女', '1977-10-04', 1, '无', '修养中', '视力模糊', '18290073377', '15066364586', 'L-14', '康复训练中');
INSERT INTO `hospitalizations` VALUES (173, '赵嘉伦', '男', '1995-07-26', 6, '无', '住院中', '乏力', '19830657742', '17549879905', 'J-17', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (174, '程詩涵', '女', '1971-05-28', 1, '无', '住院中', '严重呼吸困难', '14666188973', '19225154359', 'U-11', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (175, '谭嘉伦', '男', '1989-02-21', 19, '无', '修养中', '喉咙痛', '17485684526', '17168700719', 'Y-12', '康复训练中');
INSERT INTO `hospitalizations` VALUES (176, '袁云熙', '男', '1972-01-13', 16, '无', '已转院', '头晕', '16105492085', '14907064985', 'Q-19', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (177, '田安琪', '女', '1998-08-31', 17, '无', '已转院', '呕吐', '16870519799', '19760364436', 'S-13', '康复训练中');
INSERT INTO `hospitalizations` VALUES (178, '李致远', '男', '1991-08-18', 4, '无', '住院中', '皮肤红疹', '17059343158', '18588585702', 'S-7', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (179, '赵詩涵', '女', '1987-04-11', 4, '无', '已出院', '头晕', '16899840125', '17977465537', 'N-15', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (180, '丁璐', '女', '1992-08-20', 12, '无', '住院中', '腹痛', '16167410904', '19468164506', 'M-18', '康复训练中');
INSERT INTO `hospitalizations` VALUES (181, '曹子韬', '男', '1995-11-16', 11, '无', '已转院', '持续性咳嗽', '17823445583', '15765597271', 'E-15', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (182, '崔安琪', '女', '1976-03-09', 2, '无', '修养中', '高烧不退', '15737131417', '14110184509', 'V-6', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (183, '杨岚', '女', '2000-03-04', 8, '无', '住院中', '腹痛', '14425822836', '19722806739', 'O-5', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (184, '阎安琪', '女', '1974-05-12', 19, '无', '已转院', '高烧不退', '14478690346', '15583368825', 'N-2', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (185, '武詩涵', '女', '1971-09-16', 9, '无', '修养中', '持续性咳嗽', '14702102407', '17876933133', 'E-16', '康复训练中');
INSERT INTO `hospitalizations` VALUES (186, '董嘉伦', '男', '1994-12-18', 5, '无', '已出院', '喉咙痛', '19468262088', '19058594483', 'H-3', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (187, '吴璐', '女', '1973-03-05', 17, '无', '已出院', '消化不良', '13970543683', '15359072408', 'Y-3', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (188, '叶宇宁', '男', '1977-06-12', 11, '无', '住院中', '晕厥', '16270148294', '17645531024', 'K-16', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (189, '常震南', '男', '1991-03-02', 7, '无', '修养中', '关节疼痛', '19476009759', '18792191998', 'V-3', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (190, '萧秀英', '女', '1993-04-24', 21, '无', '住院中', '持续性咳嗽', '15432747490', '17083391608', 'A-2', '康复训练中');
INSERT INTO `hospitalizations` VALUES (191, '韩杰宏', '男', '1987-06-14', 15, '无', '已出院', '皮疹', '16474977163', '13846537315', 'R-8', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (192, '方子韬', '男', '1979-12-15', 15, '无', '住院中', '消化不良', '15337519470', '19180067605', 'D-18', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (193, '邱安琪', '女', '1983-11-25', 3, '无', '修养中', '胸痛', '14784519557', '15567758931', 'L-14', '康复训练中');
INSERT INTO `hospitalizations` VALUES (194, '姚嘉伦', '男', '1972-12-29', 15, '无', '修养中', '晕厥', '14723012613', '16502998807', 'H-7', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (195, '常璐', '女', '1996-06-16', 14, '无', '已转院', '呕吐', '13505123850', '14423487841', 'P-13', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (196, '邓岚', '女', '1977-02-22', 11, '无', '修养中', '严重呼吸困难', '15517161904', '13613089610', 'K-8', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (197, '崔岚', '女', '1985-03-14', 11, '无', '修养中', '肌肉疼痛', '16232958622', '18492557379', 'H-19', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (198, '朱晓明', '男', '1971-12-05', 6, '无', '已转院', '皮疹', '14681642673', '17131882924', 'U-3', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (199, '谢詩涵', '女', '1990-10-29', 14, '无', '已出院', '腹痛', '18556317473', '15489859523', 'G-5', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (200, '雷嘉伦', '男', '1982-10-07', 11, '无', '修养中', '消化不良', '15755262456', '19419911537', 'I-0', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (201, '杨睿', '男', '1979-01-09', 6, '无', '已出院', '关节疼痛', '14146534308', '14358068519', 'E-12', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (202, '梁子韬', '男', '1979-07-14', 6, '无', '已出院', '皮疹', '19751367341', '13235349414', 'A-12', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (203, '谢嘉伦', '男', '1986-02-03', 21, '无', '已转院', '心悸', '19692533326', '16638577090', 'K-13', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (204, '陶致远', '男', '1986-12-25', 17, '无', '住院中', '视力模糊', '19213880480', '14994225038', 'B-17', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (205, '姚杰宏', '男', '1994-11-18', 20, '无', '住院中', '皮疹', '18046560000', '16197483333', 'C-5', '康复训练中');
INSERT INTO `hospitalizations` VALUES (206, '韦詩涵', '女', '1991-06-19', 7, '无', '已出院', '轻微头痛', '19031630890', '15615131284', 'K-11', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (207, '李晓明', '男', '1973-07-11', 10, '无', '已转院', '消化不良', '17958794746', '14729775305', 'A-12', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (208, '蒋子韬', '男', '1982-10-19', 4, '无', '住院中', '胸痛', '17683054480', '17195862017', 'J-7', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (209, '孙安琪', '女', '1989-10-20', 2, '无', '修养中', '高烧不退', '14252092163', '19799472906', 'L-8', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (210, '顾云熙', '男', '1997-08-12', 16, '无', '已转院', '喉咙痛', '13769091631', '14397344908', 'X-5', '康复训练中');
INSERT INTO `hospitalizations` VALUES (211, '蔡晓明', '男', '1983-09-09', 7, '无', '已出院', '腹痛', '16435726801', '18668040690', 'R-18', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (212, '宋致远', '男', '1989-01-08', 9, '无', '住院中', '胸痛', '19154369164', '18716217989', 'T-7', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (213, '孟致远', '男', '1980-05-18', 13, '无', '已出院', '疲劳感', '14120585401', '18776362794', 'D-13', '康复训练中');
INSERT INTO `hospitalizations` VALUES (214, '姜宇宁', '男', '1985-05-08', 9, '无', '已转院', '晕厥', '16500735436', '14666631965', 'Y-7', '康复训练中');
INSERT INTO `hospitalizations` VALUES (215, '宋嘉伦', '男', '1989-01-20', 21, '无', '修养中', '乏力', '15930975757', '17986320142', 'O-17', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (216, '张致远', '男', '1994-07-11', 21, '无', '已出院', '头晕', '16549110190', '15344890291', 'R-9', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (217, '叶晓明', '男', '1970-04-10', 18, '无', '已出院', '失眠', '14423591870', '13579411513', 'B-18', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (218, '陈璐', '女', '1998-07-19', 14, '无', '修养中', '头晕', '19110351198', '19017423469', 'I-13', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (219, '王云熙', '男', '1993-09-11', 4, '无', '住院中', '高烧不退', '18819191005', '13086556427', 'I-12', '康复训练中');
INSERT INTO `hospitalizations` VALUES (220, '袁宇宁', '男', '1981-07-13', 8, '无', '住院中', '失眠', '19044426063', '15333643604', 'G-6', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (221, '曹子韬', '男', '1986-08-04', 6, '无', '修养中', '轻微头痛', '14342577765', '14958169932', 'K-19', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (222, '李子异', '男', '1999-07-17', 22, '无', '修养中', '关节疼痛', '18020273005', '14659252104', 'U-8', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (223, '夏子异', '男', '1995-04-12', 21, '无', '住院中', '皮疹', '13423685080', '13726346167', 'Z-8', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (224, '毛杰宏', '男', '1997-01-13', 15, '无', '住院中', '腹痛', '17691410472', '13913921836', 'L-13', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (225, '邱震南', '男', '1993-04-02', 19, '无', '住院中', '皮疹', '14010759367', '17282639757', 'J-19', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (226, '萧秀英', '女', '1987-12-19', 20, '无', '修养中', '呕吐', '19279193697', '13549064812', 'X-13', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (227, '常璐', '女', '1975-11-02', 13, '无', '住院中', '高烧不退', '17613422114', '18388499899', 'O-18', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (228, '侯致远', '男', '1992-10-10', 18, '无', '住院中', '头晕', '13638322280', '14533691359', 'D-4', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (229, '罗子韬', '男', '1983-06-10', 9, '无', '住院中', '失眠', '18302199799', '16836954035', 'D-2', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (230, '汤璐', '女', '1989-07-30', 4, '无', '已转院', '肌肉疼痛', '19491198579', '18136141842', 'W-19', '康复训练中');
INSERT INTO `hospitalizations` VALUES (231, '罗安琪', '女', '1984-02-27', 22, '无', '住院中', '消化不良', '13619102846', '19959885104', 'C-9', '康复训练中');
INSERT INTO `hospitalizations` VALUES (232, '杜震南', '男', '1973-12-18', 13, '无', '已转院', '乏力', '15655104073', '15532126852', 'M-18', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (233, '向睿', '男', '1999-04-23', 22, '无', '住院中', '关节疼痛', '15043869104', '16319163917', 'X-11', '康复训练中');
INSERT INTO `hospitalizations` VALUES (234, '薛嘉伦', '男', '1991-07-22', 22, '无', '已转院', '乏力', '17739073362', '18023934230', 'N-15', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (235, '邱震南', '男', '1996-09-02', 1, '无', '已出院', '头晕', '19829237981', '16787871789', 'G-9', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (236, '沈致远', '男', '1980-11-19', 3, '无', '已出院', '消化不良', '13643315817', '17928312469', 'Z-12', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (237, '顾岚', '女', '1978-05-05', 15, '无', '住院中', '胸痛', '14044904785', '16457059928', 'O-9', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (238, '黎安琪', '女', '1975-12-07', 15, '无', '已转院', '消化不良', '14021283285', '13258438674', 'T-14', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (239, '莫杰宏', '男', '1988-10-23', 3, '无', '修养中', '持续性咳嗽', '17645768721', '17909744437', 'F-7', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (240, '邵晓明', '男', '1995-02-21', 3, '无', '修养中', '轻微头痛', '19309711899', '18369152580', 'N-14', '康复训练中');
INSERT INTO `hospitalizations` VALUES (241, '田宇宁', '男', '1990-05-12', 6, '无', '修养中', '持续性咳嗽', '16341955705', '13057280682', 'Z-8', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (242, '常宇宁', '男', '1975-07-26', 6, '无', '已转院', '晕厥', '14304694696', '18956883449', 'U-7', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (243, '夏子异', '男', '1994-12-20', 17, '无', '已转院', '晕厥', '14771133311', '15939119490', 'V-8', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (244, '陆睿', '男', '1971-02-08', 15, '无', '已出院', '高烧不退', '18469622911', '16654438421', 'V-6', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (245, '邓詩涵', '女', '1988-07-12', 12, '无', '已转院', '心悸', '13142004041', '19730043500', 'C-13', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (246, '龙璐', '女', '1993-05-02', 5, '无', '住院中', '疲劳感', '17728940738', '18086068135', 'M-17', '康复训练中');
INSERT INTO `hospitalizations` VALUES (247, '廖子韬', '男', '1991-02-19', 8, '无', '已转院', '腹痛', '19850063540', '16992653596', 'E-13', '康复训练中');
INSERT INTO `hospitalizations` VALUES (248, '孔震南', '男', '1989-06-09', 8, '无', '住院中', '轻微头痛', '18779519186', '14744712253', 'R-2', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (249, '陈云熙', '男', '1996-05-12', 17, '无', '已出院', '严重呼吸困难', '18633748232', '19911990966', 'Y-8', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (250, '谢嘉伦', '男', '1971-05-10', 16, '无', '已出院', '喉咙痛', '19672425603', '15663456598', 'F-17', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (251, '郭秀英', '女', '1986-06-19', 4, '无', '修养中', '乏力', '18103932192', '19016638294', 'U-13', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (252, '卢安琪', '女', '1970-11-11', 5, '无', '修养中', '胸痛', '16085535093', '15473282650', 'Y-5', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (253, '梁嘉伦', '男', '1992-03-27', 3, '无', '已转院', '关节疼痛', '19098962953', '18313550361', 'M-1', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (254, '夏岚', '女', '1992-12-10', 20, '无', '已出院', '腹痛', '14540843173', '13183636586', 'T-13', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (255, '郭岚', '女', '1978-01-17', 18, '无', '已转院', '心悸', '19640714003', '16046898050', 'J-2', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (256, '黎杰宏', '男', '1992-11-24', 10, '无', '已出院', '胸痛', '15829532034', '14779509365', 'L-17', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (257, '曹宇宁', '男', '2000-03-13', 16, '无', '已出院', '皮疹', '18444994274', '16864277320', 'Q-12', '康复训练中');
INSERT INTO `hospitalizations` VALUES (258, '王璐', '女', '1992-09-14', 11, '无', '已转院', '轻微头痛', '15219756421', '15050045172', 'G-19', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (259, '谭子异', '男', '1978-05-19', 18, '无', '已转院', '晕厥', '19224986669', '18808840304', 'K-17', '康复训练中');
INSERT INTO `hospitalizations` VALUES (260, '余璐', '女', '1976-08-31', 16, '无', '已出院', '持续性咳嗽', '13248369799', '16810029209', 'G-11', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (261, '田秀英', '女', '1983-12-14', 16, '无', '住院中', '皮疹', '16045221660', '13349134780', 'J-6', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (262, '沈睿', '男', '1991-03-07', 9, '无', '住院中', '消化不良', '19131839781', '15631810838', 'R-16', '康复训练中');
INSERT INTO `hospitalizations` VALUES (263, '余云熙', '男', '1974-11-30', 22, '无', '已出院', '心悸', '18553791047', '17873701266', 'D-2', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (264, '徐致远', '男', '1994-09-03', 12, '无', '已出院', '消化不良', '19307318804', '13803946677', 'D-0', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (265, '许子韬', '男', '1984-07-16', 16, '无', '已转院', '心悸', '19048681989', '14270035709', 'E-2', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (266, '彭震南', '男', '1974-12-17', 1, '无', '修养中', '疲劳感', '17996992821', '19248345989', 'U-17', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (267, '汤晓明', '男', '2000-02-11', 7, '无', '住院中', '疲劳感', '15054261417', '13784089056', 'P-3', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (268, '郑岚', '女', '1989-08-21', 1, '无', '已转院', '高烧不退', '14757099663', '14034398897', 'U-14', '康复训练中');
INSERT INTO `hospitalizations` VALUES (269, '潘詩涵', '女', '1988-02-08', 7, '无', '住院中', '轻微头痛', '18860403653', '14146888950', 'I-1', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (270, '顾宇宁', '男', '1981-10-17', 14, '无', '住院中', '消化不良', '19525074251', '17385362884', 'I-17', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (271, '张岚', '女', '1989-04-02', 9, '无', '修养中', '持续性咳嗽', '15340494841', '13823014723', 'R-17', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (272, '孔子异', '男', '1981-10-08', 20, '无', '修养中', '腹痛', '13803043565', '16364317325', 'T-6', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (273, '郝震南', '男', '1975-01-25', 10, '无', '已转院', '晕厥', '17860002577', '16270017525', 'B-19', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (274, '贾子韬', '男', '1985-11-12', 17, '无', '住院中', '关节疼痛', '17702929053', '14393923961', 'H-16', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (275, '任子异', '男', '1991-05-03', 15, '无', '已出院', '皮疹', '14377467687', '19164263396', 'G-7', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (276, '何子韬', '男', '1994-07-19', 8, '无', '修养中', '关节疼痛', '17430704289', '16803642755', 'H-2', '康复训练中');
INSERT INTO `hospitalizations` VALUES (277, '廖嘉伦', '男', '1990-10-08', 17, '无', '已出院', '高烧不退', '19627537033', '18361491175', 'S-16', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (278, '黎岚', '女', '1984-10-01', 18, '无', '住院中', '持续性咳嗽', '17307969904', '15158436722', 'P-6', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (279, '魏秀英', '女', '1996-08-31', 5, '无', '已出院', '关节疼痛', '17576441178', '14508106607', 'E-18', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (280, '贺嘉伦', '男', '1987-12-01', 10, '无', '住院中', '乏力', '16704092718', '18310662644', 'F-2', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (281, '彭子韬', '男', '1988-04-23', 3, '无', '修养中', '皮疹', '14526099516', '17818944444', 'R-11', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (282, '王詩涵', '女', '1975-09-27', 18, '无', '已转院', '轻微头痛', '17053543962', '13463745852', 'Q-7', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (283, '郝秀英', '女', '1981-10-13', 8, '无', '已转院', '皮疹', '14551463654', '19517134072', 'G-13', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (284, '袁子韬', '男', '1993-07-15', 13, '无', '住院中', '皮疹', '15983866165', '17965356045', 'D-14', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (285, '黎宇宁', '男', '2000-04-10', 18, '无', '住院中', '皮肤红疹', '16618108635', '18743808768', 'L-13', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (286, '任睿', '男', '1978-10-01', 12, '无', '已出院', '失眠', '18355107197', '13390601856', 'J-14', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (287, '苏云熙', '男', '1996-06-03', 12, '无', '住院中', '严重呼吸困难', '13297869251', '14251497553', 'C-3', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (288, '郑宇宁', '男', '1982-11-10', 1, '无', '已转院', '头晕', '16310434111', '19552933636', 'R-9', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (289, '邵詩涵', '女', '1980-06-14', 19, '无', '修养中', '消化不良', '18577053009', '14579269038', 'F-3', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (290, '邵子韬', '男', '1970-09-20', 16, '无', '已转院', '高烧不退', '16627326545', '13321299729', 'W-17', '康复训练中');
INSERT INTO `hospitalizations` VALUES (291, '邓秀英', '女', '1980-06-20', 14, '无', '已出院', '晕厥', '14488541083', '15257505937', 'I-9', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (292, '姚睿', '男', '1986-10-12', 11, '无', '住院中', '皮疹', '15259745909', '18422929187', 'Y-17', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (293, '唐安琪', '女', '1988-05-23', 13, '无', '住院中', '视力模糊', '14728442223', '17418821573', 'W-16', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (294, '石宇宁', '男', '1979-04-18', 7, '无', '已转院', '晕厥', '18898527533', '16412325960', 'Z-11', '康复训练中');
INSERT INTO `hospitalizations` VALUES (295, '孙璐', '女', '1973-04-05', 22, '无', '修养中', '疲劳感', '13913261660', '15826999295', 'X-16', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (296, '邓杰宏', '男', '1997-12-20', 2, '无', '已转院', '关节疼痛', '13105505536', '19241926401', 'A-1', '康复训练中');
INSERT INTO `hospitalizations` VALUES (297, '汪晓明', '男', '1972-03-09', 21, '无', '修养中', '腹痛', '14478646705', '17210701259', 'I-4', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (298, '姚晓明', '男', '1979-08-05', 19, '无', '住院中', '头晕', '13171977588', '14438572094', 'Z-11', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (299, '方杰宏', '男', '1979-05-18', 13, '无', '修养中', '乏力', '19991037949', '17790372889', 'P-17', '康复训练中');
INSERT INTO `hospitalizations` VALUES (300, '蔡致远', '男', '1990-05-12', 11, '无', '住院中', '持续性咳嗽', '16978262421', '17232611329', 'B-11', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (301, '朱岚', '女', '1992-10-04', 6, '无', '已转院', '失眠', '19584415199', '18004591693', 'H-6', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (302, '雷璐', '女', '1975-08-03', 2, '无', '修养中', '皮肤红疹', '15122943460', '19740738401', 'R-14', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (303, '武嘉伦', '男', '1991-11-07', 19, '无', '修养中', '喉咙痛', '17593595442', '15140176306', 'Q-18', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (304, '朱安琪', '女', '1981-04-22', 4, '无', '已转院', '腹痛', '16744511318', '15679856774', 'B-9', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (305, '于震南', '男', '1999-09-01', 8, '无', '修养中', '腹痛', '14295835693', '13544047277', 'W-2', '康复训练中');
INSERT INTO `hospitalizations` VALUES (306, '孙璐', '女', '1996-10-23', 6, '无', '修养中', '呕吐', '18917566945', '13595141090', 'Z-12', '康复训练中');
INSERT INTO `hospitalizations` VALUES (307, '廖詩涵', '女', '1994-10-01', 12, '无', '修养中', '高烧不退', '14986116333', '17739219698', 'V-1', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (308, '毛子异', '男', '1989-04-07', 22, '无', '已转院', '轻微头痛', '16993252518', '14316232270', 'F-3', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (309, '徐云熙', '男', '1990-02-02', 5, '无', '修养中', '皮肤红疹', '14570299482', '18281467820', 'T-9', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (310, '余岚', '女', '1978-05-29', 11, '无', '修养中', '失眠', '16324937316', '17451964030', 'I-17', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (311, '毛安琪', '女', '1983-07-08', 17, '无', '修养中', '肌肉疼痛', '13241406902', '15242580547', 'O-0', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (312, '沈安琪', '女', '1981-11-26', 17, '无', '修养中', '关节疼痛', '19405554420', '15467597527', 'N-6', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (313, '丁晓明', '男', '1978-10-01', 10, '无', '修养中', '严重呼吸困难', '14069124050', '17804594694', 'N-5', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (314, '蔡子韬', '男', '1986-09-07', 9, '无', '修养中', '腹痛', '15587043447', '16901860929', 'N-1', '康复训练中');
INSERT INTO `hospitalizations` VALUES (315, '杜安琪', '女', '1984-08-16', 8, '无', '住院中', '关节疼痛', '15635458393', '16714054646', 'B-19', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (316, '阎子韬', '男', '1997-05-14', 11, '无', '住院中', '持续性咳嗽', '19823713419', '18953645031', 'A-3', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (317, '吴岚', '女', '1993-01-19', 3, '无', '住院中', '晕厥', '18997407354', '15956883531', 'T-14', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (318, '廖子异', '男', '1986-06-05', 20, '无', '已转院', '呕吐', '16010318984', '19980285497', 'Z-0', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (319, '朱秀英', '女', '1993-08-10', 6, '无', '已转院', '腹痛', '13331077830', '18174554221', 'C-3', '康复训练中');
INSERT INTO `hospitalizations` VALUES (320, '龙震南', '男', '1984-11-22', 13, '无', '修养中', '肌肉疼痛', '15657673545', '15441078833', 'Z-0', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (321, '龙安琪', '女', '1975-04-23', 5, '无', '住院中', '视力模糊', '16649952301', '15985647279', 'D-0', '康复训练中');
INSERT INTO `hospitalizations` VALUES (322, '田詩涵', '女', '1976-01-12', 14, '无', '已出院', '乏力', '13169434759', '17883079005', 'O-17', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (323, '任云熙', '男', '1999-01-12', 20, '无', '修养中', '持续性咳嗽', '15831528460', '18347034952', 'I-14', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (324, '孙安琪', '女', '1981-12-07', 18, '无', '已转院', '关节疼痛', '18522609777', '13666149590', 'L-1', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (325, '孟震南', '男', '1979-04-03', 14, '无', '已转院', '头晕', '16980763540', '16702976595', 'Y-15', '康复训练中');
INSERT INTO `hospitalizations` VALUES (326, '林致远', '男', '1980-08-23', 6, '无', '修养中', '关节疼痛', '18875195070', '14605901374', 'Y-15', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (327, '魏子异', '男', '1992-12-17', 11, '无', '已出院', '严重呼吸困难', '13003596148', '15589871446', 'E-7', '康复训练中');
INSERT INTO `hospitalizations` VALUES (328, '傅致远', '男', '1998-03-06', 8, '无', '修养中', '轻微头痛', '15929513534', '13492772111', 'Q-2', '康复训练中');
INSERT INTO `hospitalizations` VALUES (329, '谢杰宏', '男', '1996-06-20', 8, '无', '已出院', '喉咙痛', '16911973436', '13858730258', 'J-18', '康复训练中');
INSERT INTO `hospitalizations` VALUES (330, '潘秀英', '女', '1995-12-25', 10, '无', '住院中', '晕厥', '15604839023', '14455476486', 'L-19', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (331, '林震南', '男', '1971-02-07', 14, '无', '已转院', '疲劳感', '17725981472', '15093942139', 'M-2', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (332, '莫詩涵', '女', '1986-03-31', 6, '无', '已转院', '皮肤红疹', '13864056659', '17009292791', 'I-2', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (333, '汤杰宏', '男', '1997-03-21', 6, '无', '修养中', '失眠', '18995657820', '15539406445', 'F-16', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (334, '卢嘉伦', '男', '1977-08-01', 19, '无', '修养中', '腹痛', '14547808722', '17008925539', 'C-12', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (335, '汪云熙', '男', '1983-03-01', 10, '无', '已转院', '高烧不退', '17184805622', '18750755480', 'Q-17', '康复训练中');
INSERT INTO `hospitalizations` VALUES (336, '冯詩涵', '女', '1982-08-09', 1, '无', '已转院', '持续性咳嗽', '19870836988', '18125381267', 'S-9', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (337, '方震南', '男', '1979-07-28', 14, '无', '修养中', '皮疹', '19429828211', '18645572180', 'J-6', '康复训练中');
INSERT INTO `hospitalizations` VALUES (338, '范致远', '男', '1990-01-30', 1, '无', '住院中', '皮肤红疹', '13743371073', '14946628730', 'P-12', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (339, '汪安琪', '女', '1990-07-23', 22, '无', '已转院', '胸痛', '13942295428', '17498203857', 'M-7', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (340, '程安琪', '女', '1976-11-02', 1, '无', '已转院', '胸痛', '19562355272', '16015451886', 'A-5', '康复训练中');
INSERT INTO `hospitalizations` VALUES (341, '崔宇宁', '男', '1996-04-18', 14, '无', '已转院', '乏力', '13703679217', '19978739051', 'U-11', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (342, '何睿', '男', '1975-09-06', 6, '无', '已出院', '胸痛', '13053423091', '14746110122', 'B-8', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (343, '邹嘉伦', '男', '1972-03-16', 12, '无', '已出院', '疲劳感', '15507072980', '15258007531', 'B-14', '康复训练中');
INSERT INTO `hospitalizations` VALUES (344, '马睿', '男', '1981-07-08', 1, '无', '修养中', '晕厥', '19951586387', '18324792953', 'Q-2', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (345, '史致远', '男', '1985-06-30', 20, '无', '修养中', '皮肤红疹', '17084840317', '14596173425', 'J-11', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (346, '谢宇宁', '男', '1996-06-21', 18, '无', '已转院', '轻微头痛', '15841341018', '18389923633', 'I-7', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (347, '袁璐', '女', '1989-08-06', 17, '无', '修养中', '胸痛', '16951867811', '14334187241', 'G-2', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (348, '梁璐', '女', '1984-12-09', 21, '无', '修养中', '呕吐', '18393735285', '18099152069', 'N-4', '康复训练中');
INSERT INTO `hospitalizations` VALUES (349, '于宇宁', '男', '1973-08-10', 18, '无', '已转院', '持续性咳嗽', '13163064001', '18713122415', 'W-17', '康复训练中');
INSERT INTO `hospitalizations` VALUES (350, '李岚', '女', '1998-04-02', 11, '无', '住院中', '晕厥', '14465338353', '16456338092', 'O-11', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (351, '董岚', '女', '1979-09-30', 4, '无', '已出院', '呕吐', '15883776951', '16437695529', 'W-9', '康复训练中');
INSERT INTO `hospitalizations` VALUES (352, '罗安琪', '女', '1977-06-10', 15, '无', '住院中', '严重呼吸困难', '16492583543', '18088633981', 'N-16', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (353, '钱宇宁', '男', '1979-07-04', 3, '无', '已转院', '头晕', '13130449130', '18642213410', 'B-12', '康复训练中');
INSERT INTO `hospitalizations` VALUES (354, '熊睿', '男', '1973-12-03', 13, '无', '已出院', '高烧不退', '16292105245', '17209060213', 'B-3', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (355, '余嘉伦', '男', '1986-03-07', 20, '无', '住院中', '呕吐', '13499127986', '14544339322', 'G-2', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (356, '邱璐', '女', '1996-08-26', 7, '无', '已出院', '视力模糊', '19026029954', '15039456776', 'X-6', '康复训练中');
INSERT INTO `hospitalizations` VALUES (357, '冯晓明', '男', '1988-11-26', 4, '无', '已出院', '肌肉疼痛', '14754471516', '19791514466', 'H-4', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (358, '林嘉伦', '男', '1973-09-27', 14, '无', '已转院', '腹痛', '14047077964', '13069203301', 'N-5', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (359, '黎安琪', '女', '1980-01-23', 6, '无', '已出院', '呕吐', '16071339229', '15505611398', 'L-19', '康复训练中');
INSERT INTO `hospitalizations` VALUES (360, '贾晓明', '男', '1978-06-18', 11, '无', '修养中', '皮肤红疹', '18830876180', '13327650449', 'E-4', '康复训练中');
INSERT INTO `hospitalizations` VALUES (361, '吕璐', '女', '1974-09-16', 2, '无', '修养中', '失眠', '14386014745', '13374258148', 'I-15', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (362, '罗云熙', '男', '1987-01-14', 12, '无', '已转院', '轻微头痛', '14578356814', '18567039085', 'L-7', '康复训练中');
INSERT INTO `hospitalizations` VALUES (363, '顾震南', '男', '1977-06-24', 13, '无', '修养中', '失眠', '19458753414', '17023508706', 'L-16', '康复训练中');
INSERT INTO `hospitalizations` VALUES (364, '邵子异', '男', '1970-12-18', 4, '无', '已出院', '晕厥', '13984763652', '14155372183', 'A-13', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (365, '汤子韬', '男', '1982-11-10', 7, '无', '已转院', '轻微头痛', '13182158197', '13732707661', 'Z-13', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (366, '叶秀英', '女', '1992-11-09', 3, '无', '修养中', '高烧不退', '19390340318', '13780360353', 'W-8', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (367, '毛宇宁', '男', '1977-06-26', 13, '无', '已出院', '呕吐', '16146864852', '14394092171', 'W-7', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (368, '龙子韬', '男', '1978-05-16', 12, '无', '已出院', '腹痛', '18516385071', '19059543998', 'K-5', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (369, '何晓明', '男', '1990-02-19', 20, '无', '已转院', '持续性咳嗽', '15604801246', '14708924052', 'M-15', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (370, '胡宇宁', '男', '1993-05-13', 19, '无', '住院中', '持续性咳嗽', '15250239508', '17803193037', 'Q-19', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (371, '苏秀英', '女', '1987-08-20', 8, '无', '住院中', '皮肤红疹', '13881199883', '18630719171', 'H-17', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (372, '崔睿', '男', '1999-12-04', 3, '无', '已转院', '心悸', '19371438540', '19999792887', 'W-17', '康复训练中');
INSERT INTO `hospitalizations` VALUES (373, '顾岚', '女', '1974-03-06', 8, '无', '已出院', '失眠', '14380055036', '13055010648', 'E-6', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (374, '武杰宏', '男', '1971-05-19', 7, '无', '已出院', '持续性咳嗽', '14448868979', '19665336789', 'H-15', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (375, '胡璐', '女', '1977-10-22', 3, '无', '住院中', '皮肤红疹', '15421159371', '13923232966', 'D-14', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (376, '何杰宏', '男', '1998-08-27', 16, '无', '已转院', '关节疼痛', '17501165654', '16477696382', 'S-6', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (377, '孙詩涵', '女', '1987-11-02', 4, '无', '已出院', '高烧不退', '13799852672', '18336283393', 'X-12', '康复训练中');
INSERT INTO `hospitalizations` VALUES (378, '徐子韬', '男', '1979-04-16', 12, '无', '修养中', '视力模糊', '19823109506', '16204754354', 'G-1', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (379, '何致远', '男', '1997-07-30', 19, '无', '住院中', '疲劳感', '14424428319', '14253656998', 'Y-18', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (380, '吴安琪', '女', '1973-07-16', 15, '无', '修养中', '关节疼痛', '18528452139', '15031307273', 'Q-19', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (381, '莫秀英', '女', '1996-02-10', 13, '无', '住院中', '呕吐', '13927947121', '18109567503', 'Q-5', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (382, '刘安琪', '女', '1990-11-13', 3, '无', '已出院', '肌肉疼痛', '13701676169', '17465975729', 'W-2', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (383, '向秀英', '女', '1990-08-28', 7, '无', '已出院', '轻微头痛', '14399482930', '19360994567', 'J-19', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (384, '阎璐', '女', '1986-04-25', 17, '无', '住院中', '呕吐', '16441704183', '18748080174', 'U-14', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (385, '侯詩涵', '女', '1980-05-06', 7, '无', '住院中', '肌肉疼痛', '15843866327', '18917355629', 'K-17', '康复训练中');
INSERT INTO `hospitalizations` VALUES (386, '彭杰宏', '男', '1997-01-22', 2, '无', '已出院', '失眠', '19781763484', '13648391275', 'E-9', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (387, '曹詩涵', '女', '1998-12-28', 20, '无', '住院中', '轻微头痛', '14746844205', '15652826236', 'R-19', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (388, '贾嘉伦', '男', '1999-09-24', 10, '无', '住院中', '疲劳感', '19151149728', '15426351246', 'K-15', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (389, '蔡云熙', '男', '1978-09-29', 17, '无', '住院中', '喉咙痛', '15387336746', '19371407306', 'S-18', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (390, '罗安琪', '女', '1985-06-14', 6, '无', '已出院', '高烧不退', '16360413378', '14969455500', 'H-14', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (391, '郝嘉伦', '男', '1995-06-13', 4, '无', '住院中', '晕厥', '17910404312', '16768894484', 'J-16', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (392, '吕睿', '男', '1975-03-10', 2, '无', '已转院', '心悸', '18388421462', '14674840819', 'Y-14', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (393, '郭晓明', '男', '1977-01-17', 10, '无', '已转院', '皮肤红疹', '19360514930', '19084100962', 'L-2', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (394, '秦詩涵', '女', '1989-05-11', 12, '无', '修养中', '关节疼痛', '13201214704', '14027004586', 'U-12', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (395, '邹睿', '男', '1975-11-18', 3, '无', '住院中', '失眠', '17678965335', '14751433874', 'D-16', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (396, '侯璐', '女', '1972-12-30', 1, '无', '已转院', '喉咙痛', '13355680638', '17832807443', 'T-2', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (397, '曹云熙', '男', '1992-10-10', 12, '无', '住院中', '关节疼痛', '19894659030', '18427904799', 'M-12', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (398, '于云熙', '男', '1979-10-12', 20, '无', '已出院', '高烧不退', '13057630605', '17723540190', 'K-3', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (399, '朱秀英', '女', '1999-03-31', 5, '无', '住院中', '皮肤红疹', '15393001152', '17032613157', 'L-7', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (400, '谢睿', '男', '1979-11-12', 16, '无', '已转院', '乏力', '18659565682', '17649516352', 'S-12', '康复训练中');
INSERT INTO `hospitalizations` VALUES (401, '贾震南', '男', '1974-03-15', 12, '无', '已转院', '乏力', '14942494836', '17916459753', 'G-3', '康复训练中');
INSERT INTO `hospitalizations` VALUES (402, '梁晓明', '男', '1985-06-10', 20, '无', '修养中', '关节疼痛', '19081009623', '15513267246', 'T-12', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (403, '何致远', '男', '1986-01-07', 2, '无', '住院中', '呕吐', '19812584505', '17605309831', 'T-2', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (404, '蔡睿', '男', '1975-05-09', 18, '无', '修养中', '胸痛', '14313906285', '17118561950', 'U-9', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (405, '叶璐', '女', '1989-10-22', 12, '无', '住院中', '轻微头痛', '19879701898', '19986866057', 'F-13', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (406, '段晓明', '男', '1973-12-14', 13, '无', '已转院', '失眠', '13706810767', '13038554729', 'Y-6', '康复训练中');
INSERT INTO `hospitalizations` VALUES (407, '郝宇宁', '男', '1993-06-13', 9, '无', '已出院', '高烧不退', '18836293883', '14237696375', 'P-9', '康复训练中');
INSERT INTO `hospitalizations` VALUES (408, '邱子韬', '男', '1997-02-13', 15, '无', '住院中', '消化不良', '14005297880', '17906969257', 'C-15', '康复训练中');
INSERT INTO `hospitalizations` VALUES (409, '戴杰宏', '男', '1987-05-04', 13, '无', '住院中', '关节疼痛', '16577938052', '19088634527', 'V-3', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (410, '武睿', '男', '1992-06-03', 7, '无', '已转院', '肌肉疼痛', '15245730224', '19733574167', 'P-4', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (411, '江晓明', '男', '1991-07-21', 2, '无', '住院中', '轻微头痛', '13151235883', '17958081325', 'C-4', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (412, '冯詩涵', '女', '1983-02-05', 1, '无', '已转院', '轻微头痛', '18152123062', '17510470950', 'O-18', '康复训练中');
INSERT INTO `hospitalizations` VALUES (413, '梁睿', '男', '1998-12-03', 1, '无', '住院中', '关节疼痛', '16761213325', '19340353829', 'T-15', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (414, '于子韬', '男', '1994-02-25', 5, '无', '修养中', '视力模糊', '17117499810', '15436947041', 'S-14', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (415, '张岚', '女', '1995-09-02', 13, '无', '已出院', '皮疹', '18518976115', '13401567886', 'H-5', '康复训练中');
INSERT INTO `hospitalizations` VALUES (416, '杨岚', '女', '1988-09-09', 8, '无', '已转院', '皮疹', '15892055088', '16497801790', 'R-9', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (417, '胡震南', '男', '1999-07-28', 10, '无', '已出院', '腹痛', '13282389072', '13176691025', 'Q-14', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (418, '钟震南', '男', '1971-10-17', 8, '无', '修养中', '呕吐', '13692643702', '14096845691', 'S-2', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (419, '黄岚', '女', '1980-06-19', 3, '无', '已转院', '消化不良', '17864341354', '19224681179', 'V-19', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (420, '韦秀英', '女', '1991-03-21', 15, '无', '修养中', '肌肉疼痛', '18430842704', '18041585169', 'O-2', '康复训练中');
INSERT INTO `hospitalizations` VALUES (421, '侯璐', '女', '1993-07-18', 2, '无', '已转院', '晕厥', '16780505964', '18716740012', 'K-16', '康复训练中');
INSERT INTO `hospitalizations` VALUES (422, '林子异', '男', '1972-08-27', 8, '无', '住院中', '高烧不退', '19175037400', '19873707346', 'S-12', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (423, '萧杰宏', '男', '1974-09-21', 18, '无', '已出院', '轻微头痛', '18969192149', '16610334275', 'D-8', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (424, '许詩涵', '女', '1993-08-28', 5, '无', '修养中', '喉咙痛', '17717870572', '18565090915', 'L-17', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (425, '贾嘉伦', '男', '1976-10-17', 10, '无', '已出院', '头晕', '17750465734', '19052845298', 'W-1', '康复训练中');
INSERT INTO `hospitalizations` VALUES (426, '毛杰宏', '男', '1975-03-08', 13, '无', '住院中', '呕吐', '16993400166', '18825528877', 'D-5', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (427, '孟子异', '男', '1985-07-16', 2, '无', '修养中', '皮疹', '13536945633', '19998904704', 'J-2', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (428, '孔杰宏', '男', '1988-05-17', 9, '无', '修养中', '关节疼痛', '13333886053', '15242356438', 'I-12', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (429, '傅子韬', '男', '1980-12-11', 18, '无', '修养中', '喉咙痛', '15976462269', '14875785419', 'K-8', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (430, '魏宇宁', '男', '1990-01-16', 4, '无', '住院中', '轻微头痛', '19577038909', '18521702750', 'U-18', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (431, '龚震南', '男', '1974-06-20', 14, '无', '修养中', '乏力', '19572327014', '17819726176', 'U-11', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (432, '任子异', '男', '1986-08-19', 5, '无', '住院中', '晕厥', '15320045695', '13700072800', 'O-11', '康复训练中');
INSERT INTO `hospitalizations` VALUES (433, '莫睿', '男', '1970-10-27', 1, '无', '已出院', '严重呼吸困难', '16890089930', '13443606547', 'F-1', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (434, '江安琪', '女', '1973-10-01', 3, '无', '住院中', '疲劳感', '14480114248', '13887077371', 'G-15', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (435, '徐子韬', '男', '1998-10-30', 19, '无', '住院中', '呕吐', '18867734070', '19310368653', 'G-1', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (436, '程睿', '男', '1991-10-01', 21, '无', '已出院', '疲劳感', '14019087286', '19557349114', 'I-13', '康复训练中');
INSERT INTO `hospitalizations` VALUES (437, '段璐', '女', '1987-05-12', 2, '无', '住院中', '消化不良', '15147482318', '16460444943', 'Q-9', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (438, '陈震南', '男', '1989-11-03', 15, '无', '住院中', '高烧不退', '17702137878', '18554104812', 'E-19', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (439, '钟杰宏', '男', '1994-02-15', 8, '无', '已转院', '皮疹', '15891651831', '15436978034', 'V-19', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (440, '苏致远', '男', '1975-03-28', 20, '无', '修养中', '腹痛', '13813655604', '14794584496', 'L-6', '康复训练中');
INSERT INTO `hospitalizations` VALUES (441, '贺杰宏', '男', '1970-11-08', 22, '无', '修养中', '失眠', '14205595782', '16148980328', 'X-14', '康复训练中');
INSERT INTO `hospitalizations` VALUES (442, '黎震南', '男', '1982-08-08', 6, '无', '修养中', '喉咙痛', '17692026222', '19008563932', 'M-7', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (443, '魏璐', '女', '1983-03-17', 17, '无', '已转院', '心悸', '17389348668', '15410817134', 'Q-13', '康复训练中');
INSERT INTO `hospitalizations` VALUES (444, '段岚', '女', '1991-07-10', 4, '无', '已转院', '腹痛', '14264329256', '18197413642', 'O-3', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (445, '贺云熙', '男', '1972-09-06', 3, '无', '已出院', '严重呼吸困难', '14156816395', '17255424115', 'J-2', '康复训练中');
INSERT INTO `hospitalizations` VALUES (446, '邵宇宁', '男', '1972-11-21', 9, '无', '住院中', '视力模糊', '18477470020', '13349259129', 'Y-13', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (447, '邱安琪', '女', '1994-02-28', 20, '无', '已转院', '心悸', '15114060576', '15065391232', 'V-6', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (448, '杨睿', '男', '1978-12-08', 9, '无', '已出院', '头晕', '17534200010', '15447096499', 'Y-12', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (449, '杜云熙', '男', '1984-05-31', 17, '无', '住院中', '心悸', '15393837201', '19748569207', 'C-9', '康复训练中');
INSERT INTO `hospitalizations` VALUES (450, '吕子异', '男', '1971-04-15', 4, '无', '修养中', '心悸', '13833696160', '18796423834', 'G-17', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (451, '汤震南', '男', '1987-10-21', 18, '无', '修养中', '消化不良', '16440765183', '17359443017', 'I-14', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (452, '邹震南', '男', '1983-01-15', 9, '无', '修养中', '喉咙痛', '14039782789', '13087536325', 'F-13', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (453, '宋詩涵', '女', '1999-02-02', 10, '无', '修养中', '腹痛', '13091502951', '14341364749', 'E-3', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (454, '冯璐', '女', '1990-04-07', 21, '无', '修养中', '皮肤红疹', '18149094555', '15162365639', 'G-7', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (455, '刘秀英', '女', '1981-11-27', 22, '无', '修养中', '高烧不退', '17164169628', '19001282537', 'E-2', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (456, '马致远', '男', '2000-02-17', 20, '无', '已出院', '轻微头痛', '19322813452', '19630470561', 'A-5', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (457, '夏詩涵', '女', '1988-07-23', 22, '无', '住院中', '心悸', '13413397064', '13252218351', 'B-13', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (458, '向詩涵', '女', '1975-12-06', 4, '无', '住院中', '疲劳感', '14041382099', '18626991224', 'G-3', '康复训练中');
INSERT INTO `hospitalizations` VALUES (459, '石子韬', '男', '1999-08-26', 6, '无', '住院中', '消化不良', '13611866076', '16529235996', 'V-12', '康复训练中');
INSERT INTO `hospitalizations` VALUES (460, '雷震南', '男', '1983-06-18', 9, '无', '已转院', '消化不良', '16729043818', '17718055960', 'Q-18', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (461, '向云熙', '男', '1981-11-23', 12, '无', '住院中', '乏力', '19157772658', '13334071888', 'V-17', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (462, '郭云熙', '男', '1992-02-24', 10, '无', '修养中', '持续性咳嗽', '15321932185', '17482414514', 'C-17', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (463, '薛宇宁', '男', '1980-08-16', 15, '无', '修养中', '胸痛', '13363909393', '15111425158', 'P-16', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (464, '薛云熙', '男', '1979-04-04', 2, '无', '已出院', '持续性咳嗽', '15525986794', '14021189602', 'E-14', '康复训练中');
INSERT INTO `hospitalizations` VALUES (465, '谢岚', '女', '1972-07-16', 7, '无', '住院中', '肌肉疼痛', '18691875330', '16997411832', 'X-2', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (466, '冯杰宏', '男', '1989-08-06', 14, '无', '已出院', '胸痛', '14526244285', '17822651269', 'Q-17', '康复训练中');
INSERT INTO `hospitalizations` VALUES (467, '卢詩涵', '女', '1993-04-16', 9, '无', '修养中', '乏力', '17916611101', '16157208908', 'Z-6', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (468, '梁嘉伦', '男', '1980-08-11', 14, '无', '修养中', '轻微头痛', '15045441271', '15907536509', 'D-19', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (469, '董震南', '男', '1995-06-03', 16, '无', '已转院', '肌肉疼痛', '19819815258', '18017248625', 'F-3', '康复训练中');
INSERT INTO `hospitalizations` VALUES (470, '潘嘉伦', '男', '1976-05-28', 20, '无', '已转院', '头晕', '15545947965', '19148981168', 'C-15', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (471, '曾岚', '女', '1977-08-31', 16, '无', '已出院', '持续性咳嗽', '19320043140', '16223309910', 'V-19', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (472, '向杰宏', '男', '1989-07-07', 20, '无', '已转院', '高烧不退', '19281028053', '15344107346', 'Q-17', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (473, '钟子韬', '男', '1985-01-01', 8, '无', '已出院', '晕厥', '14537344616', '13537289248', 'U-5', '康复训练中');
INSERT INTO `hospitalizations` VALUES (474, '萧震南', '男', '1979-11-26', 9, '无', '已转院', '消化不良', '15223805354', '15299882144', 'E-19', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (475, '夏安琪', '女', '1991-02-18', 12, '无', '已转院', '高烧不退', '17842408934', '13698504607', 'B-15', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (476, '石云熙', '男', '1998-01-28', 11, '无', '住院中', '肌肉疼痛', '17428642134', '17262211186', 'F-12', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (477, '韦子异', '男', '1999-01-25', 13, '无', '已出院', '乏力', '14873039602', '13425640217', 'Q-12', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (478, '彭璐', '女', '1987-01-10', 11, '无', '修养中', '高烧不退', '18374994141', '19982089505', 'J-13', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (479, '胡秀英', '女', '1985-04-16', 9, '无', '修养中', '轻微头痛', '16594254840', '14448876401', 'T-0', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (480, '田震南', '男', '1984-08-10', 20, '无', '已转院', '胸痛', '17830102982', '13281001718', 'E-5', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (481, '陈云熙', '男', '1987-04-02', 19, '无', '住院中', '喉咙痛', '18181237983', '17969089242', 'T-13', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (482, '汤嘉伦', '男', '1974-04-16', 15, '无', '已转院', '腹痛', '13115456423', '14217812246', 'T-18', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (483, '胡秀英', '女', '1973-03-04', 14, '无', '住院中', '晕厥', '13320237669', '15168760365', 'M-6', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (484, '刘子韬', '男', '1997-03-15', 12, '无', '已转院', '乏力', '15433964067', '13062153163', 'I-16', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (485, '程杰宏', '男', '1970-06-16', 15, '无', '住院中', '心悸', '15289132335', '13170469464', 'C-6', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (486, '萧云熙', '男', '1979-12-19', 10, '无', '住院中', '消化不良', '18689184606', '16326083456', 'A-19', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (487, '侯致远', '男', '1986-09-09', 18, '无', '已出院', '乏力', '18040577579', '18072749632', 'W-18', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (488, '向致远', '男', '1973-01-25', 4, '无', '已转院', '皮肤红疹', '16937483335', '18651070643', 'B-15', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (489, '萧晓明', '男', '1986-08-03', 20, '无', '已转院', '高烧不退', '18829827728', '18393349186', 'N-8', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (490, '阎安琪', '女', '1997-09-02', 6, '无', '修养中', '视力模糊', '18451897595', '13503821507', 'S-19', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (491, '邓子异', '男', '1983-08-09', 12, '无', '修养中', '关节疼痛', '19716228650', '19607254263', 'F-13', '手术后恢复');
INSERT INTO `hospitalizations` VALUES (492, '廖震南', '男', '1989-08-02', 3, '无', '住院中', '失眠', '16640651558', '14442518060', 'Z-3', '康复训练中');
INSERT INTO `hospitalizations` VALUES (493, '胡睿', '男', '1987-04-18', 15, '无', '修养中', '心悸', '19868557118', '15194600845', 'H-19', '免疫疗法观察中');
INSERT INTO `hospitalizations` VALUES (494, '马宇宁', '男', '1976-03-13', 8, '无', '已转院', '持续性咳嗽', '16473773217', '18921718618', 'H-12', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (495, '黄杰宏', '男', '1977-06-01', 7, '无', '住院中', '心悸', '15744799075', '17136209050', 'M-7', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (496, '郭璐', '女', '1989-01-09', 6, '无', '已出院', '关节疼痛', '15814413656', '19930766942', 'B-9', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (497, '秦詩涵', '女', '1972-01-14', 8, '无', '已出院', '乏力', '16579126909', '19289226529', 'U-6', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (498, '钟嘉伦', '男', '1984-04-29', 15, '无', '已转院', '视力模糊', '19476168061', '19939682664', 'B-16', '康复训练中');
INSERT INTO `hospitalizations` VALUES (499, '田子韬', '男', '1978-03-12', 3, '无', '已转院', '皮疹', '18938514946', '18259196301', 'S-1', '药物治疗中');
INSERT INTO `hospitalizations` VALUES (500, '朱云熙', '男', '1987-01-05', 22, '无', '住院中', '腹痛', '14682705245', '16613112156', 'N-1', '手术后恢复');

-- ----------------------------
-- Table structure for medicine
-- ----------------------------
DROP TABLE IF EXISTS `medicine`;
CREATE TABLE `medicine`  (
  `medicine_id` int NOT NULL AUTO_INCREMENT COMMENT '药品ID',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '药品名称',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '药品描述',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格',
  `quantity` int NULL DEFAULT NULL COMMENT '数量',
  `inbound_time` date NULL DEFAULT NULL COMMENT '入库时间',
  `expiration_time` date NULL DEFAULT NULL COMMENT '过期时间',
  PRIMARY KEY (`medicine_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of medicine
-- ----------------------------
INSERT INTO `medicine` VALUES (1, '阿莫西林', '消炎药', 200.00, 94, '2024-04-08', '2024-04-18');
INSERT INTO `medicine` VALUES (5, '维生素c', '100mg', 10.00, 69, '2024-04-15', '2024-04-10');
INSERT INTO `medicine` VALUES (6, '感冒灵颗粒', '用于缓解感冒引起的头痛、发烧', 20.00, 0, '2023-04-01', '2026-04-01');
INSERT INTO `medicine` VALUES (7, '板蓝根冲剂', '清热解毒，用于预防流感', 15.50, 193, '2023-03-15', '2025-09-14');
INSERT INTO `medicine` VALUES (8, '藿香正气水', '夏季清凉饮料，用于治疗中暑', 25.00, 150, '2023-05-10', '2026-05-09');
INSERT INTO `medicine` VALUES (9, '999感冒灵', '感冒用药，缓解头痛、鼻塞', 30.00, 120, '2023-01-20', '2025-07-19');
INSERT INTO `medicine` VALUES (10, '复方甘草片', '用于咳嗽、喉咙痛', 18.00, 80, '2023-02-11', '2025-08-10');
INSERT INTO `medicine` VALUES (11, '牛黄解毒片', '清热解毒，用于咽喉肿痛', 200.00, 50, '2023-04-18', '2028-04-17');
INSERT INTO `medicine` VALUES (12, '蒲地蓝消炎片', '用于咽喉炎症', 9.80, 180, '2023-06-22', '2025-12-21');
INSERT INTO `medicine` VALUES (14, '正天丸', '增强免疫力，用于抵抗疲劳', 120.00, 130, '2023-07-15', '2027-07-14');
INSERT INTO `medicine` VALUES (15, '黄连上清丸', '清热燥湿，用于高热不退', 45.00, 110, '2023-11-25', '2025-11-24');
INSERT INTO `medicine` VALUES (16, '安宫牛黄丸', '镇惊清热，用于中暑昏迷', 350.00, 60, '2023-08-30', '2028-08-29');
INSERT INTO `medicine` VALUES (17, '金嗓子喉片', '清热解毒，用于咽喉肿痛', 22.00, 170, '2023-05-20', '2025-05-19');
INSERT INTO `medicine` VALUES (18, '消炎利胆片', '利胆退黄，用于肝胆湿热', 48.00, 90, '2023-09-10', '2027-09-09');
INSERT INTO `medicine` VALUES (19, '清开灵注射液', '清热解毒，用于脑膜炎', 500.00, 30, '2023-02-18', '2026-02-17');
INSERT INTO `medicine` VALUES (20, '妇炎洁阴道泡腾片', '用于妇科炎症', 58.00, 140, '2023-04-26', '2026-04-25');
INSERT INTO `medicine` VALUES (21, '复方利血平片', '降血压药物', 27.00, 75, '2023-07-30', '2025-01-29');
INSERT INTO `medicine` VALUES (22, '血必净注射液', '活血化瘀，用于急性脑血栓', 360.00, 40, '2023-10-13', '2026-10-12');
INSERT INTO `medicine` VALUES (23, '参麦注射液', '补肺益气，用于慢性疲劳综合症', 180.00, 65, '2023-01-05', '2025-07-04');
INSERT INTO `medicine` VALUES (24, '降糖灵颗粒', '降低血糖，用于糖尿病患者', 75.00, 55, '2023-03-28', '2026-03-27');
INSERT INTO `medicine` VALUES (25, '心可舒胶囊', '改善心功能，用于冠心病', 96.00, 45, '2023-06-15', '2025-12-14');

-- ----------------------------
-- Table structure for nurse
-- ----------------------------
DROP TABLE IF EXISTS `nurse`;
CREATE TABLE `nurse`  (
  `nurse_id` int NOT NULL AUTO_INCREMENT COMMENT '护士ID',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '护士姓名',
  `gender` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '性别',
  `birthday` date NULL DEFAULT NULL COMMENT '生日',
  `department_id` int NULL DEFAULT NULL COMMENT '所属科室ID',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机号',
  `account_id` int NULL DEFAULT NULL COMMENT '对应的系统用户id',
  `assessment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '职称',
  PRIMARY KEY (`nurse_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of nurse
-- ----------------------------
INSERT INTO `nurse` VALUES (1, '余子韬', '男', '1992-02-07', 15, '16728345382', 95, '高级护士');
INSERT INTO `nurse` VALUES (2, '姜致远', '男', '1987-01-26', 11, '19825834031', 118, '主管护师');
INSERT INTO `nurse` VALUES (3, '陆子韬', '男', '1974-10-11', 4, '17097639252', 31, '初级护师');
INSERT INTO `nurse` VALUES (4, '陆嘉伦', '男', '1974-06-14', 1, '14223158280', 191, '主任护师');
INSERT INTO `nurse` VALUES (5, '龙云熙', '男', '1988-01-14', 13, '13186979839', 70, '主任护师');
INSERT INTO `nurse` VALUES (6, '程云熙', '男', '1970-07-18', 12, '16086810755', 146, '副主任护师');
INSERT INTO `nurse` VALUES (7, '贺睿', '男', '1971-09-26', 22, '14814340328', 198, '主管护师');
INSERT INTO `nurse` VALUES (8, '唐璐', '女', '1980-05-09', 6, '14441830669', 89, '主任护师');
INSERT INTO `nurse` VALUES (9, '熊致远', '男', '1973-07-08', 5, '17257494242', 58, '主任护师');
INSERT INTO `nurse` VALUES (10, '傅宇宁', '男', '1976-06-02', 19, '14404068244', 135, '主任护师');
INSERT INTO `nurse` VALUES (11, '钱嘉伦', '男', '1983-10-08', 14, '17661554196', 21, '初级护师');
INSERT INTO `nurse` VALUES (12, '韦岚', '女', '1998-07-24', 14, '19654003791', 119, '初级护师');
INSERT INTO `nurse` VALUES (13, '郑晓明', '男', '1988-11-22', 2, '18932075674', 40, '主任护师');
INSERT INTO `nurse` VALUES (14, '罗杰宏', '男', '1991-08-14', 19, '14391215004', 20, '初级护士');
INSERT INTO `nurse` VALUES (15, '莫安琪', '女', '1997-07-06', 22, '18132333269', 101, '副主任护师');
INSERT INTO `nurse` VALUES (16, '黄詩涵', '女', '1998-09-17', 17, '17683493995', 65, '高级护师');
INSERT INTO `nurse` VALUES (17, '谭璐', '女', '1977-02-08', 9, '13430487821', 68, '主管护师');
INSERT INTO `nurse` VALUES (18, '毛晓明', '男', '1987-03-28', 18, '13848722117', 122, '主管护师');
INSERT INTO `nurse` VALUES (19, '夏云熙', '男', '1993-10-08', 2, '17413468328', 92, '主任护师');
INSERT INTO `nurse` VALUES (20, '尹睿', '男', '1972-08-12', 19, '18261841755', 55, '副主任护师');
INSERT INTO `nurse` VALUES (21, '邓璐', '女', '1979-12-20', 22, '13563142167', 50, '副主任护师');
INSERT INTO `nurse` VALUES (22, '傅宇宁', '男', '1984-12-03', 10, '17076819560', 192, '初级护师');
INSERT INTO `nurse` VALUES (23, '徐子韬', '男', '1974-12-30', 2, '17179088693', 176, '初级护师');
INSERT INTO `nurse` VALUES (24, '方震南', '男', '1989-03-21', 9, '19456198109', 43, '主管护师');
INSERT INTO `nurse` VALUES (25, '崔秀英', '女', '1994-07-27', 10, '19007385407', 35, '初级护师');
INSERT INTO `nurse` VALUES (26, '贺子韬', '男', '1996-06-30', 12, '17588877167', 27, '主任护师');
INSERT INTO `nurse` VALUES (27, '卢嘉伦', '男', '1971-10-24', 6, '17338553106', 218, '主管护师');
INSERT INTO `nurse` VALUES (28, '吕杰宏', '男', '1973-06-20', 11, '15113963028', 179, '高级护师');
INSERT INTO `nurse` VALUES (29, '朱子异', '男', '1989-07-17', 7, '14425216110', 188, '高级护师');
INSERT INTO `nurse` VALUES (30, '陶秀英', '女', '1993-10-02', 19, '16704556460', 163, '主管护师');
INSERT INTO `nurse` VALUES (31, '高詩涵', '女', '1981-05-07', 18, '17156021826', 219, '高级护士');
INSERT INTO `nurse` VALUES (32, '蒋睿', '男', '1980-04-10', 4, '15069675607', 126, '高级护士');
INSERT INTO `nurse` VALUES (33, '沈璐', '女', '1994-04-04', 12, '17341452992', 197, '主管护师');
INSERT INTO `nurse` VALUES (34, '范云熙', '男', '1977-09-27', 2, '14568036780', 100, '副主任护师');
INSERT INTO `nurse` VALUES (35, '龙宇宁', '男', '1995-12-04', 17, '19237265590', 168, '初级护师');
INSERT INTO `nurse` VALUES (36, '金杰宏', '男', '1978-09-19', 18, '15562683743', 41, '高级护士');
INSERT INTO `nurse` VALUES (37, '崔子韬', '男', '1976-06-26', 4, '14049445302', 26, '主管护师');
INSERT INTO `nurse` VALUES (38, '李子异', '男', '1994-09-27', 19, '13668843205', 30, '主任护师');
INSERT INTO `nurse` VALUES (39, '谭睿', '男', '1995-12-16', 9, '14237764053', 141, '高级护师');
INSERT INTO `nurse` VALUES (40, '高震南', '男', '1991-09-03', 19, '17154920998', 120, '副主任护师');
INSERT INTO `nurse` VALUES (41, '曾秀英', '女', '1981-08-01', 21, '16353599850', 215, '初级护士');
INSERT INTO `nurse` VALUES (42, '萧子韬', '男', '1994-11-05', 6, '19327044156', 133, '高级护师');
INSERT INTO `nurse` VALUES (43, '陆嘉伦', '男', '1983-09-28', 4, '19620502735', 28, '初级护士');
INSERT INTO `nurse` VALUES (44, '周嘉伦', '男', '1990-09-18', 8, '16430941390', 69, '初级护师');
INSERT INTO `nurse` VALUES (45, '朱晓明', '男', '1996-01-31', 15, '19202258142', 97, '初级护士');
INSERT INTO `nurse` VALUES (46, '唐睿', '男', '1979-08-10', 4, '13277242881', 96, '副主任护师');
INSERT INTO `nurse` VALUES (47, '郝震南', '男', '1992-07-02', 7, '19734115911', 112, '主任护师');
INSERT INTO `nurse` VALUES (48, '蒋震南', '男', '1977-06-07', 9, '16998440862', 125, '主管护师');
INSERT INTO `nurse` VALUES (49, '贺秀英', '女', '1987-07-08', 5, '16782212402', 169, '初级护士');
INSERT INTO `nurse` VALUES (50, '魏嘉伦', '男', '1974-01-28', 5, '19523128411', 23, '主管护师');
INSERT INTO `nurse` VALUES (51, '董云熙', '男', '1991-10-04', 13, '16771264510', 123, '高级护师');
INSERT INTO `nurse` VALUES (52, '武璐', '女', '1970-07-14', 8, '14626349494', 108, '副主任护师');
INSERT INTO `nurse` VALUES (53, '顾岚', '女', '1977-08-13', 12, '15926838852', 77, '初级护士');
INSERT INTO `nurse` VALUES (54, '何璐', '女', '1981-06-06', 12, '15157059809', 111, '主任护师');
INSERT INTO `nurse` VALUES (55, '黄睿', '男', '1970-03-07', 4, '13120398116', 207, '主管护师');
INSERT INTO `nurse` VALUES (56, '萧宇宁', '男', '1994-10-17', 15, '17477058777', 211, '主管护师');
INSERT INTO `nurse` VALUES (57, '高睿', '男', '1990-09-07', 14, '15180005438', 87, '初级护师');
INSERT INTO `nurse` VALUES (58, '萧璐', '女', '1985-04-14', 16, '15797526627', 138, '副主任护师');
INSERT INTO `nurse` VALUES (59, '阎子异', '男', '1992-01-02', 22, '15850386845', 88, '主管护师');
INSERT INTO `nurse` VALUES (60, '赵云熙', '男', '1987-07-08', 3, '19231204590', 147, '初级护士');
INSERT INTO `nurse` VALUES (61, '罗子异', '男', '1975-05-21', 17, '16336946267', 203, '主任护师');
INSERT INTO `nurse` VALUES (62, '韦睿', '男', '1984-08-24', 22, '13151099556', 53, '主任护师');
INSERT INTO `nurse` VALUES (63, '胡子异', '男', '1970-02-20', 12, '13872722833', 170, '初级护师');
INSERT INTO `nurse` VALUES (64, '田岚', '女', '1990-10-26', 14, '18813871033', 90, '高级护师');
INSERT INTO `nurse` VALUES (65, '雷云熙', '男', '1970-01-08', 8, '14515614381', 104, '初级护士');
INSERT INTO `nurse` VALUES (66, '崔晓明', '男', '1979-11-10', 14, '18939489507', 166, '主任护师');
INSERT INTO `nurse` VALUES (67, '阎子韬', '男', '1971-02-08', 22, '16738109614', 75, '高级护师');
INSERT INTO `nurse` VALUES (68, '严秀英', '女', '1975-03-11', 1, '15298458034', 180, '高级护师');
INSERT INTO `nurse` VALUES (69, '孙致远', '男', '1995-07-15', 17, '17796117860', 199, '副主任护师');
INSERT INTO `nurse` VALUES (70, '董子韬', '男', '1990-06-06', 12, '17355397796', 175, '主任护师');
INSERT INTO `nurse` VALUES (71, '夏晓明', '男', '1986-05-25', 5, '19026870164', 185, '主管护师');
INSERT INTO `nurse` VALUES (72, '姜震南', '男', '1978-08-11', 21, '17977385542', 44, '高级护师');
INSERT INTO `nurse` VALUES (73, '石云熙', '男', '1977-11-04', 22, '19314416362', 171, '主任护师');
INSERT INTO `nurse` VALUES (74, '任璐', '女', '1990-03-12', 20, '14540560301', 148, '高级护士');
INSERT INTO `nurse` VALUES (75, '程秀英', '女', '1997-07-02', 16, '19926402046', 152, '主管护师');
INSERT INTO `nurse` VALUES (76, '许子韬', '男', '1984-07-10', 18, '15925616196', 194, '主任护师');
INSERT INTO `nurse` VALUES (77, '卢云熙', '男', '1970-01-22', 12, '17574952848', 91, '主管护师');
INSERT INTO `nurse` VALUES (78, '谢子异', '男', '1992-03-25', 4, '14637247120', 145, '副主任护师');
INSERT INTO `nurse` VALUES (79, '熊致远', '男', '1973-03-12', 1, '15504463451', 115, '高级护士');
INSERT INTO `nurse` VALUES (80, '郑子韬', '男', '1984-05-27', 16, '17819309046', 59, '高级护师');
INSERT INTO `nurse` VALUES (81, '马睿', '男', '1988-05-30', 7, '14202220630', 1, '高级护师');
INSERT INTO `nurse` VALUES (82, '林安琪', '女', '1980-05-25', 1, '13038730017', 67, '初级护士');
INSERT INTO `nurse` VALUES (83, '卢子韬', '男', '1977-07-01', 5, '15701735800', 45, '初级护士');
INSERT INTO `nurse` VALUES (84, '曹云熙', '男', '1992-01-31', 14, '19437000327', 130, '主任护师');
INSERT INTO `nurse` VALUES (85, '马睿', '男', '1980-04-08', 21, '13147453893', 216, '高级护士');
INSERT INTO `nurse` VALUES (86, '董詩涵', '女', '1982-09-25', 8, '15900751026', 158, '高级护师');
INSERT INTO `nurse` VALUES (87, '叶宇宁', '男', '1996-10-16', 3, '16352390544', 25, '初级护士');
INSERT INTO `nurse` VALUES (88, '史杰宏', '男', '1971-03-11', 20, '19693800014', 178, '主管护师');
INSERT INTO `nurse` VALUES (89, '向宇宁', '男', '1986-06-19', 16, '19210281712', 134, '初级护师');
INSERT INTO `nurse` VALUES (90, '邹子韬', '男', '1983-11-28', 5, '13931234871', 142, '高级护师');
INSERT INTO `nurse` VALUES (91, '侯震南', '男', '1989-11-15', 8, '19906648630', 98, '主任护师');
INSERT INTO `nurse` VALUES (92, '谢宇宁', '男', '1989-08-08', 22, '19697129460', 24, '初级护士');
INSERT INTO `nurse` VALUES (93, '钟杰宏', '男', '1978-04-26', 14, '15104218745', 103, '主管护师');
INSERT INTO `nurse` VALUES (94, '曹宇宁', '男', '1988-08-23', 20, '19265610999', 51, '副主任护师');
INSERT INTO `nurse` VALUES (95, '杨岚', '女', '1977-05-29', 22, '17372360290', 155, '初级护师');
INSERT INTO `nurse` VALUES (96, '吕睿', '男', '1985-08-08', 11, '18130697357', 214, '主任护师');
INSERT INTO `nurse` VALUES (97, '潘岚', '女', '1991-04-05', 9, '19627793525', 56, '高级护师');
INSERT INTO `nurse` VALUES (98, '唐璐', '女', '1973-07-12', 3, '16441297941', 189, '主管护师');
INSERT INTO `nurse` VALUES (99, '莫子异', '男', '1999-05-04', 19, '14092799842', 173, '高级护士');
INSERT INTO `nurse` VALUES (100, '钱璐', '女', '1985-05-29', 7, '18903521254', 99, '主任护师');

-- ----------------------------
-- Table structure for pharmacist
-- ----------------------------
DROP TABLE IF EXISTS `pharmacist`;
CREATE TABLE `pharmacist`  (
  `pharmacist_id` int NOT NULL AUTO_INCREMENT COMMENT '药品管理员id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '药品管理员姓名',
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '性别',
  `birthday` date NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电话',
  `account_id` int NULL DEFAULT NULL COMMENT '对应的账号id',
  PRIMARY KEY (`pharmacist_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pharmacist
-- ----------------------------
INSERT INTO `pharmacist` VALUES (1, '邱宇宁', '男', '1977-05-31', '13728634339', 347);
INSERT INTO `pharmacist` VALUES (2, '蔡岚', '女', '1986-11-07', '18720021065', 244);
INSERT INTO `pharmacist` VALUES (3, '朱杰宏', '男', '1991-02-18', '14261703237', 336);
INSERT INTO `pharmacist` VALUES (4, '何秀英', '女', '1992-01-03', '14769258995', 112);
INSERT INTO `pharmacist` VALUES (5, '程震南', '男', '1995-11-10', '19394151405', 395);
INSERT INTO `pharmacist` VALUES (6, '郝睿', '男', '1980-09-03', '19528676542', 414);
INSERT INTO `pharmacist` VALUES (7, '孔致远', '男', '1975-03-22', '17366390229', 396);
INSERT INTO `pharmacist` VALUES (8, '沈杰宏', '男', '1970-12-02', '14457887902', 276);
INSERT INTO `pharmacist` VALUES (9, '刘杰宏', '男', '1992-04-28', '17152000326', 234);
INSERT INTO `pharmacist` VALUES (10, '萧安琪', '女', '1970-02-22', '19183580229', 474);
INSERT INTO `pharmacist` VALUES (11, '钟詩涵', '女', '1990-09-22', '14016625211', 208);
INSERT INTO `pharmacist` VALUES (12, '萧震南', '男', '1979-06-26', '13682382254', 464);
INSERT INTO `pharmacist` VALUES (13, '郭晓明', '男', '1987-05-31', '17279295342', 429);
INSERT INTO `pharmacist` VALUES (14, '王晓明', '男', '1986-12-23', '14466233067', 479);
INSERT INTO `pharmacist` VALUES (15, '戴子韬', '男', '1988-01-02', '15874775042', 25);
INSERT INTO `pharmacist` VALUES (16, '汤杰宏', '男', '1976-10-14', '13686062689', 160);
INSERT INTO `pharmacist` VALUES (17, '尹杰宏', '男', '1971-11-08', '17701270675', 1);
INSERT INTO `pharmacist` VALUES (18, '谭晓明', '男', '1981-09-29', '14733624163', 473);
INSERT INTO `pharmacist` VALUES (19, '徐岚', '女', '1971-12-05', '14590228702', 252);
INSERT INTO `pharmacist` VALUES (20, '贺安琪', '女', '1997-06-12', '15757320678', 163);
INSERT INTO `pharmacist` VALUES (21, '王致远', '男', '1995-05-25', '18909414440', 355);
INSERT INTO `pharmacist` VALUES (22, '严嘉伦', '男', '1986-07-02', '15777051035', 172);
INSERT INTO `pharmacist` VALUES (23, '陈岚', '女', '1990-06-24', '14587916448', 144);
INSERT INTO `pharmacist` VALUES (24, '胡致远', '男', '1985-04-03', '15381234829', 240);
INSERT INTO `pharmacist` VALUES (25, '王震南', '男', '1981-12-26', '19420986823', 483);
INSERT INTO `pharmacist` VALUES (26, '向子异', '男', '1985-08-27', '15853760855', 97);
INSERT INTO `pharmacist` VALUES (27, '程安琪', '女', '1980-01-28', '18070709406', 57);
INSERT INTO `pharmacist` VALUES (28, '杨子异', '男', '1992-04-14', '14178961504', 55);
INSERT INTO `pharmacist` VALUES (29, '郝睿', '男', '1989-05-12', '13311224887', 44);
INSERT INTO `pharmacist` VALUES (30, '范云熙', '男', '1975-05-08', '19502913809', 476);
INSERT INTO `pharmacist` VALUES (31, '石安琪', '女', '1988-04-28', '13423942250', 369);
INSERT INTO `pharmacist` VALUES (32, '郭云熙', '男', '1988-12-09', '17816390501', 417);
INSERT INTO `pharmacist` VALUES (33, '宋睿', '男', '1990-01-11', '19537423708', 349);
INSERT INTO `pharmacist` VALUES (34, '曹宇宁', '男', '1971-11-05', '16165366858', 377);
INSERT INTO `pharmacist` VALUES (35, '尹致远', '男', '1978-09-27', '14473033390', 231);
INSERT INTO `pharmacist` VALUES (36, '江子异', '男', '1986-11-04', '18541536682', 73);
INSERT INTO `pharmacist` VALUES (37, '韩安琪', '女', '1991-09-30', '14992063006', 373);
INSERT INTO `pharmacist` VALUES (38, '黄璐', '女', '1997-01-16', '18145885611', 27);
INSERT INTO `pharmacist` VALUES (39, '朱璐', '女', '1989-02-05', '19343933799', 179);
INSERT INTO `pharmacist` VALUES (40, '吴晓明', '男', '1997-06-30', '13344214237', 331);
INSERT INTO `pharmacist` VALUES (41, '戴宇宁', '男', '1994-05-04', '13206737030', 201);
INSERT INTO `pharmacist` VALUES (42, '邵詩涵', '女', '1994-07-11', '14470624332', 512);
INSERT INTO `pharmacist` VALUES (43, '蒋嘉伦', '男', '1974-05-11', '18707500768', 263);
INSERT INTO `pharmacist` VALUES (44, '龙秀英', '女', '1985-09-04', '17223529133', 279);
INSERT INTO `pharmacist` VALUES (45, '蒋子异', '男', '1975-12-11', '16995647665', 475);
INSERT INTO `pharmacist` VALUES (46, '江子韬', '男', '1974-06-20', '19587885749', 189);
INSERT INTO `pharmacist` VALUES (47, '胡秀英', '女', '1985-06-11', '13520664332', 124);
INSERT INTO `pharmacist` VALUES (48, '杜璐', '女', '1971-01-06', '17365946885', 82);
INSERT INTO `pharmacist` VALUES (49, '高震南', '男', '1997-09-29', '14488702184', 171);
INSERT INTO `pharmacist` VALUES (50, '苏杰宏', '男', '1993-03-03', '15076652394', 106);
INSERT INTO `pharmacist` VALUES (51, '贺睿', '男', '1974-10-04', '15747011894', 486);
INSERT INTO `pharmacist` VALUES (52, '崔杰宏', '男', '1999-03-05', '18447882823', 314);
INSERT INTO `pharmacist` VALUES (53, '史秀英', '女', '1975-11-17', '18476738628', 459);
INSERT INTO `pharmacist` VALUES (54, '陈致远', '男', '1989-09-30', '19456881392', 482);
INSERT INTO `pharmacist` VALUES (55, '向睿', '男', '1986-12-30', '17258657613', 424);
INSERT INTO `pharmacist` VALUES (56, '史云熙', '男', '1986-01-12', '15504381959', 365);
INSERT INTO `pharmacist` VALUES (57, '周致远', '男', '1994-10-05', '15769851938', 227);
INSERT INTO `pharmacist` VALUES (58, '韦子异', '男', '1991-05-24', '17376344891', 357);
INSERT INTO `pharmacist` VALUES (59, '唐震南', '男', '1990-09-27', '14322120006', 278);
INSERT INTO `pharmacist` VALUES (60, '潘子异', '男', '1992-07-28', '18862816100', 311);
INSERT INTO `pharmacist` VALUES (61, '何嘉伦', '男', '1978-12-12', '16936683980', 376);
INSERT INTO `pharmacist` VALUES (62, '夏子韬', '男', '1993-03-16', '14755381269', 83);
INSERT INTO `pharmacist` VALUES (63, '汤云熙', '男', '1997-02-25', '13174191383', 277);
INSERT INTO `pharmacist` VALUES (64, '卢子异', '男', '1976-08-10', '13265810099', 439);
INSERT INTO `pharmacist` VALUES (65, '陈宇宁', '男', '1992-08-08', '17700210474', 306);
INSERT INTO `pharmacist` VALUES (66, '徐子异', '男', '1975-07-09', '16807701256', 454);
INSERT INTO `pharmacist` VALUES (67, '冯嘉伦', '男', '1970-03-04', '15655851690', 247);
INSERT INTO `pharmacist` VALUES (68, '杨子异', '男', '1976-09-14', '15187992882', 359);
INSERT INTO `pharmacist` VALUES (69, '马云熙', '男', '1996-03-29', '16730436127', 89);
INSERT INTO `pharmacist` VALUES (70, '任子韬', '男', '1978-01-02', '18986554625', 366);
INSERT INTO `pharmacist` VALUES (71, '孔秀英', '女', '1985-08-16', '18134829440', 217);
INSERT INTO `pharmacist` VALUES (72, '陆震南', '男', '1974-08-10', '17292941103', 211);
INSERT INTO `pharmacist` VALUES (73, '夏晓明', '男', '1981-10-26', '14209076409', 280);
INSERT INTO `pharmacist` VALUES (74, '邹震南', '男', '1991-09-04', '13218971065', 505);
INSERT INTO `pharmacist` VALUES (75, '刘子异', '男', '1993-11-27', '14848402678', 338);
INSERT INTO `pharmacist` VALUES (76, '赵云熙', '男', '1984-11-22', '13424692189', 32);
INSERT INTO `pharmacist` VALUES (77, '方詩涵', '女', '1972-11-12', '17592000376', 455);
INSERT INTO `pharmacist` VALUES (78, '阎致远', '男', '1983-07-04', '19446270956', 344);
INSERT INTO `pharmacist` VALUES (79, '廖子异', '男', '1988-06-19', '14741260667', 266);
INSERT INTO `pharmacist` VALUES (80, '石岚', '女', '1996-02-03', '15267055708', 453);
INSERT INTO `pharmacist` VALUES (81, '戴云熙', '男', '1990-12-03', '16861119571', 20);
INSERT INTO `pharmacist` VALUES (82, '邵安琪', '女', '1973-03-29', '17193411732', 188);
INSERT INTO `pharmacist` VALUES (83, '宋秀英', '女', '1994-07-10', '17113303529', 399);
INSERT INTO `pharmacist` VALUES (84, '陈晓明', '男', '1978-11-05', '17063375508', 352);
INSERT INTO `pharmacist` VALUES (85, '杨秀英', '女', '1993-07-04', '13267018343', 174);
INSERT INTO `pharmacist` VALUES (86, '吕杰宏', '男', '1986-03-06', '16627940059', 508);
INSERT INTO `pharmacist` VALUES (87, '金杰宏', '男', '1984-04-18', '16240069640', 460);
INSERT INTO `pharmacist` VALUES (88, '史詩涵', '女', '1991-09-01', '19001135525', 230);
INSERT INTO `pharmacist` VALUES (89, '姜安琪', '女', '1990-01-08', '14676047794', 121);
INSERT INTO `pharmacist` VALUES (90, '赵震南', '男', '1983-08-30', '18088578067', 176);
INSERT INTO `pharmacist` VALUES (91, '陈杰宏', '男', '1974-05-25', '15283529997', 427);
INSERT INTO `pharmacist` VALUES (92, '谢杰宏', '男', '1987-07-23', '19518860843', 87);
INSERT INTO `pharmacist` VALUES (93, '李子韬', '男', '1991-09-04', '16001595841', 125);
INSERT INTO `pharmacist` VALUES (94, '秦震南', '男', '1997-03-18', '14955923066', 107);
INSERT INTO `pharmacist` VALUES (95, '彭岚', '女', '1984-03-13', '15751613864', 185);
INSERT INTO `pharmacist` VALUES (96, '钟宇宁', '男', '1988-09-19', '18667249985', 361);
INSERT INTO `pharmacist` VALUES (97, '周秀英', '女', '1972-11-16', '18695319029', 477);
INSERT INTO `pharmacist` VALUES (98, '黎秀英', '女', '1973-03-02', '17515039092', 291);
INSERT INTO `pharmacist` VALUES (99, '江秀英', '女', '1976-12-09', '14088688951', 47);
INSERT INTO `pharmacist` VALUES (100, '曹宇宁', '男', '1980-04-25', '13317948735', 425);

-- ----------------------------
-- Table structure for schedule
-- ----------------------------
DROP TABLE IF EXISTS `schedule`;
CREATE TABLE `schedule`  (
  `schedule_id` int NOT NULL AUTO_INCREMENT COMMENT '医生值班日程安排',
  `start_date` datetime NULL DEFAULT NULL COMMENT '工作开始时间',
  `doctor_id` int NULL DEFAULT NULL COMMENT '对应的医生id',
  `end_date` datetime NULL DEFAULT NULL COMMENT '工作结束时间',
  `limit_people` int NULL DEFAULT NULL COMMENT '预约限额',
  PRIMARY KEY (`schedule_id`) USING BTREE,
  INDEX `schedule_ibfk_1`(`doctor_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of schedule
-- ----------------------------
INSERT INTO `schedule` VALUES (11, '2024-01-01 06:00:00', 3, '2024-01-01 09:00:00', 20);
INSERT INTO `schedule` VALUES (12, '2024-01-02 10:00:00', 3, '2024-01-02 12:00:00', 40);
INSERT INTO `schedule` VALUES (13, '2024-01-03 10:00:00', 3, '2024-01-03 12:00:00', 40);
INSERT INTO `schedule` VALUES (14, '2024-01-04 10:00:00', 3, '2024-01-04 12:00:00', 40);
INSERT INTO `schedule` VALUES (15, '2024-01-05 10:00:00', 3, '2024-01-05 12:00:00', 40);
INSERT INTO `schedule` VALUES (24, '2024-05-05 20:56:38', 3, '2024-05-05 20:56:41', 20);
INSERT INTO `schedule` VALUES (26, '2024-05-05 05:00:00', 3, '2024-05-05 08:00:00', 10);
INSERT INTO `schedule` VALUES (27, '2023-05-10 16:00:00', 354, '2023-05-10 18:00:00', 10);
INSERT INTO `schedule` VALUES (28, '2024-05-06 07:02:36', 3, '2024-05-06 08:02:32', 10);
INSERT INTO `schedule` VALUES (29, '2024-05-21 09:45:15', 3, '2024-05-21 12:45:19', 10);

SET FOREIGN_KEY_CHECKS = 1;
