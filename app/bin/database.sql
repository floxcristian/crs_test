/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : PostgreSQL
 Source Server Version : 110004
 Source Host           : localhost:5432
 Source Catalog        : crsoq_db
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 110004
 File Encoding         : 65001

 Date: 05/12/2019 13:59:29
*/


-- ----------------------------
-- Sequence structure for activities_id_activity_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."activities_id_activity_seq";
CREATE SEQUENCE "public"."activities_id_activity_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for calendars_id_calendar_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."calendars_id_calendar_seq";
CREATE SEQUENCE "public"."calendars_id_calendar_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 32767
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for categories_id_category_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."categories_id_category_seq";
CREATE SEQUENCE "public"."categories_id_category_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for classes_id_class_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."classes_id_class_seq";
CREATE SEQUENCE "public"."classes_id_class_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for colors_id_color_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."colors_id_color_seq";
CREATE SEQUENCE "public"."colors_id_color_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 32767
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for courses_id_course_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."courses_id_course_seq";
CREATE SEQUENCE "public"."courses_id_course_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for difficulties_id_difficulty_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."difficulties_id_difficulty_seq";
CREATE SEQUENCE "public"."difficulties_id_difficulty_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 32767
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for modules_id_module_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."modules_id_module_seq";
CREATE SEQUENCE "public"."modules_id_module_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for questions_id_question_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."questions_id_question_seq";
CREATE SEQUENCE "public"."questions_id_question_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for subcategories_id_subcategory_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."subcategories_id_subcategory_seq";
CREATE SEQUENCE "public"."subcategories_id_subcategory_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for subjects_id_subject_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."subjects_id_subject_seq";
CREATE SEQUENCE "public"."subjects_id_subject_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for users_id_user_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."users_id_user_seq";
CREATE SEQUENCE "public"."users_id_user_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Table structure for activities
-- ----------------------------
DROP TABLE IF EXISTS "public"."activities";
CREATE TABLE "public"."activities" (
  "id_activity" int4 NOT NULL DEFAULT nextval('activities_id_activity_seq'::regclass),
  "id_class" int4 NOT NULL,
  "name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(6) DEFAULT now(),
  "updated_at" timestamp(6) DEFAULT now(),
  "mode" int2 NOT NULL DEFAULT 1,
  "status" int2 NOT NULL DEFAULT 1
)
;

-- ----------------------------
-- Records of activities
-- ----------------------------
INSERT INTO "public"."activities" VALUES (15, 5, 'mi actividad', '2018-12-15 17:55:06.126792', '2018-12-15 17:55:06.126792', 1, 1);
INSERT INTO "public"."activities" VALUES (16, 4, 'mi moadle', '2018-12-15 17:56:50.684718', '2018-12-15 17:56:50.684718', 2, 2);
INSERT INTO "public"."activities" VALUES (21, 13, 'fkfksdl', '2019-01-05 21:45:47.878944', '2019-01-05 21:45:47.878944', 1, 2);
INSERT INTO "public"."activities" VALUES (17, 6, 'dtsgfdsgf', '2018-12-15 18:00:52.397168', '2018-12-15 18:00:52.397168', 1, 1);
INSERT INTO "public"."activities" VALUES (27, 30, 'slkelw', '2019-01-11 23:07:20.328765', '2019-01-11 23:07:20.328765', 1, 2);

-- ----------------------------
-- Table structure for activity_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."activity_user";
CREATE TABLE "public"."activity_user" (
  "id_user" int4 NOT NULL,
  "id_activity" int4 NOT NULL,
  "status" int2 NOT NULL DEFAULT 1
)
;

-- ----------------------------
-- Records of activity_user
-- ----------------------------
INSERT INTO "public"."activity_user" VALUES (13, 17, 2);
INSERT INTO "public"."activity_user" VALUES (72, 17, 1);
INSERT INTO "public"."activity_user" VALUES (72, 27, 2);
INSERT INTO "public"."activity_user" VALUES (72, 21, 2);
INSERT INTO "public"."activity_user" VALUES (71, 21, 2);

-- ----------------------------
-- Table structure for calendars
-- ----------------------------
DROP TABLE IF EXISTS "public"."calendars";
CREATE TABLE "public"."calendars" (
  "id_calendar" int2 NOT NULL DEFAULT nextval('calendars_id_calendar_seq'::regclass),
  "year" int2 NOT NULL,
  "semester" int2 NOT NULL,
  "created_at" timestamp(6) DEFAULT now(),
  "updated_at" timestamp(6) DEFAULT now()
)
;

-- ----------------------------
-- Records of calendars
-- ----------------------------
INSERT INTO "public"."calendars" VALUES (13, 2018, 1, '2018-10-11 22:34:49.212194', '2018-10-11 22:34:49.212194');
INSERT INTO "public"."calendars" VALUES (4, 2022, 2, '2018-10-11 17:34:37.312512', '2018-10-11 17:34:37.312512');
INSERT INTO "public"."calendars" VALUES (5, 2022, 1, '2018-10-15 00:18:57.328439', '2018-10-15 00:18:57.328439');
INSERT INTO "public"."calendars" VALUES (15, 2023, 2, '2018-10-31 21:49:02.298366', '2018-10-31 21:49:02.298366');
INSERT INTO "public"."calendars" VALUES (1, 2017, 1, '2018-09-11 21:38:55.835154', '2018-09-11 21:38:55.835154');
INSERT INTO "public"."calendars" VALUES (17, 2030, 2, '2018-11-02 02:46:52.091945', '2018-11-02 02:46:52.091945');
INSERT INTO "public"."calendars" VALUES (19, 2025, 1, '2018-12-15 17:32:19.42713', '2018-12-15 17:32:19.42713');
INSERT INTO "public"."calendars" VALUES (20, 2028, 2, '2018-12-15 17:33:08.845334', '2018-12-15 17:33:08.845334');

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."categories";
CREATE TABLE "public"."categories" (
  "id_category" int4 NOT NULL DEFAULT nextval('categories_id_category_seq'::regclass),
  "id_user" int4 NOT NULL,
  "id_subject" int4 NOT NULL,
  "name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL DEFAULT 'DEFAULT'::character varying,
  "created_at" timestamp(6) DEFAULT now(),
  "updated_at" timestamp(6) DEFAULT now()
)
;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO "public"."categories" VALUES (1, 1, 1, 'categoría1', '2018-10-19 18:50:56.82', '2018-10-19 18:50:56.82');
INSERT INTO "public"."categories" VALUES (2, 1, 1, 'categoria2', '2018-10-19 22:19:35.752837', '2018-10-19 22:19:35.752837');
INSERT INTO "public"."categories" VALUES (4, 1, 3, 'tytgytytyt', '2018-11-05 10:44:54.51813', '2018-11-05 10:44:54.51813');
INSERT INTO "public"."categories" VALUES (6, 1, 1, 'otra cat', '2018-12-05 16:58:01.206644', '2018-12-05 16:58:01.206644');
INSERT INTO "public"."categories" VALUES (63, 1, 1, 'fdfsdfsdf', '2018-12-08 12:50:47.266399', '2018-12-08 12:50:47.266399');
INSERT INTO "public"."categories" VALUES (64, 1, 1, 'casu', '2018-12-08 15:54:42.477263', '2018-12-08 15:54:42.477263');
INSERT INTO "public"."categories" VALUES (76, 1, 1, 'nueva categorí', '2018-12-08 17:02:20.039077', '2018-12-29 12:08:19.148979');
INSERT INTO "public"."categories" VALUES (95, 1, 6, 'DEFAULT', '2019-01-01 20:29:18.136689', '2019-01-01 20:29:18.136689');
INSERT INTO "public"."categories" VALUES (96, 1, 4, 'DEFAULT', '2019-01-04 00:42:50.707595', '2019-01-04 00:42:50.707595');
INSERT INTO "public"."categories" VALUES (97, 1, 10, 'DEFAULT', '2019-06-13 16:22:29.71743', '2019-06-13 16:22:29.71743');

-- ----------------------------
-- Table structure for class_question
-- ----------------------------
DROP TABLE IF EXISTS "public"."class_question";
CREATE TABLE "public"."class_question" (
  "id_question" int4 NOT NULL,
  "id_class" int4 NOT NULL,
  "added_at" timestamp(6) NOT NULL DEFAULT now(),
  "updated_at" timestamp(6) NOT NULL DEFAULT now(),
  "status" int2 NOT NULL DEFAULT 1
)
;

-- ----------------------------
-- Records of class_question
-- ----------------------------
INSERT INTO "public"."class_question" VALUES (30, 5, '2018-12-15 17:46:55.548501', '2018-12-15 17:46:55.548501', 1);
INSERT INTO "public"."class_question" VALUES (10, 3, '2018-12-21 18:11:07.107689', '2018-12-21 18:11:07.107689', 1);
INSERT INTO "public"."class_question" VALUES (34, 31, '2019-01-15 20:31:40.696419', '2019-01-15 20:31:40.696419', 1);
INSERT INTO "public"."class_question" VALUES (29, 5, '2018-12-15 17:46:55.548501', '2018-12-15 17:46:55.548501', 3);
INSERT INTO "public"."class_question" VALUES (28, 3, '2018-12-21 18:11:07.107689', '2018-12-21 18:11:07.107689', 1);
INSERT INTO "public"."class_question" VALUES (33, 6, '2019-01-02 14:36:54.738007', '2019-01-02 14:36:54.738007', 1);
INSERT INTO "public"."class_question" VALUES (5, 6, '2019-01-02 14:36:54.738007', '2019-01-02 14:36:54.738007', 1);
INSERT INTO "public"."class_question" VALUES (34, 13, '2019-01-17 02:04:38.928617', '2019-01-17 02:04:38.928617', 5);
INSERT INTO "public"."class_question" VALUES (35, 13, '2019-01-17 02:04:18.177247', '2019-01-17 02:04:18.177247', 5);
INSERT INTO "public"."class_question" VALUES (36, 30, '2019-04-22 01:34:30.764675', '2019-04-22 01:34:30.764675', 5);

-- ----------------------------
-- Table structure for classes
-- ----------------------------
DROP TABLE IF EXISTS "public"."classes";
CREATE TABLE "public"."classes" (
  "id_class" int4 NOT NULL DEFAULT nextval('classes_id_class_seq'::regclass),
  "id_module" int4 NOT NULL,
  "description" varchar(100) COLLATE "pg_catalog"."default",
  "date" timestamp(6),
  "created_at" timestamp(6) DEFAULT now(),
  "updated_at" timestamp(6) DEFAULT now(),
  "status" int2 DEFAULT 1
)
;

-- ----------------------------
-- Records of classes
-- ----------------------------
INSERT INTO "public"."classes" VALUES (6, 4, 'krisj', '2018-12-02 03:00:00', '2018-11-25 00:12:38.678858', '2018-11-25 00:12:38.678858', 3);
INSERT INTO "public"."classes" VALUES (5, 4, 'clase 3', '2018-11-09 06:00:00', '2018-11-24 17:00:11.785268', '2018-11-24 17:00:11.785268', 3);
INSERT INTO "public"."classes" VALUES (3, 4, 'fdfsdfsdfsd', '2018-11-08 12:00:00', '2018-11-22 00:57:21.53845', '2018-11-22 00:57:21.53845', 2);
INSERT INTO "public"."classes" VALUES (22, 4, 'dldklas', '2019-01-02 00:00:00', '2019-01-05 14:18:29.812187', '2019-01-05 14:18:29.812187', 1);
INSERT INTO "public"."classes" VALUES (31, 20, 'clase uwu', '2019-01-18 00:00:00', '2019-01-15 20:31:33.197624', '2019-01-15 20:31:33.197624', 1);
INSERT INTO "public"."classes" VALUES (4, 17, 'fdfsdfsdfsdfs', '2018-11-30 09:00:00', '2018-11-22 00:57:56.512595', '2018-11-22 00:57:56.512595', 1);
INSERT INTO "public"."classes" VALUES (30, 19, 'chopi', '2019-01-09 21:00:00', '2019-01-11 21:20:54.713263', '2019-01-11 21:20:54.713263', 3);
INSERT INTO "public"."classes" VALUES (26, 19, 'dmaskdak', '2019-01-10 06:00:00', '2019-01-05 19:00:17.664119', '2019-01-05 19:00:17.664119', 1);
INSERT INTO "public"."classes" VALUES (13, 19, 'Clase3', '2019-01-20 15:00:00', '2019-01-01 20:51:03.448977', '2019-01-01 20:51:03.448977', 3);

-- ----------------------------
-- Table structure for colors
-- ----------------------------
DROP TABLE IF EXISTS "public"."colors";
CREATE TABLE "public"."colors" (
  "id_color" int2 NOT NULL DEFAULT nextval('colors_id_color_seq'::regclass),
  "name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "hexadecimal" char(6) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(6) DEFAULT now(),
  "updated_at" timestamp(6) DEFAULT now()
)
;

-- ----------------------------
-- Records of colors
-- ----------------------------
INSERT INTO "public"."colors" VALUES (1, 'rojo', 'F4516C', NULL, NULL);
INSERT INTO "public"."colors" VALUES (2, 'verde', '34BFA3', NULL, NULL);
INSERT INTO "public"."colors" VALUES (3, 'amarillo', 'FFB822', NULL, NULL);
INSERT INTO "public"."colors" VALUES (6, 'ress', 'YAEWE ', NULL, NULL);

-- ----------------------------
-- Table structure for course_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."course_user";
CREATE TABLE "public"."course_user" (
  "id_user" int4 NOT NULL,
  "id_course" int4 NOT NULL,
  "enrolled_at" timestamp(6) NOT NULL DEFAULT now(),
  "active" bool NOT NULL DEFAULT true
)
;

-- ----------------------------
-- Records of course_user
-- ----------------------------
INSERT INTO "public"."course_user" VALUES (34, 2, '2018-11-13 17:27:14.980944', 't');
INSERT INTO "public"."course_user" VALUES (23, 2, '2018-12-17 03:22:44.649845', 't');
INSERT INTO "public"."course_user" VALUES (27, 2, '2018-12-17 03:25:34.249833', 'f');
INSERT INTO "public"."course_user" VALUES (35, 2, '2018-11-13 17:54:44.987321', 't');
INSERT INTO "public"."course_user" VALUES (42, 27, '2018-11-11 20:29:10.75765', 't');
INSERT INTO "public"."course_user" VALUES (13, 10, '2018-11-12 17:39:48.227754', 't');
INSERT INTO "public"."course_user" VALUES (37, 2, '2018-11-13 18:39:21.064379', 't');
INSERT INTO "public"."course_user" VALUES (13, 2, '2018-12-17 03:06:37.100978', 't');
INSERT INTO "public"."course_user" VALUES (71, 23, '2019-01-05 11:38:45.202881', 't');
INSERT INTO "public"."course_user" VALUES (71, 2, '2018-12-22 17:41:46.583167', 't');
INSERT INTO "public"."course_user" VALUES (72, 23, '2019-01-21 23:31:07.496648', 't');
INSERT INTO "public"."course_user" VALUES (32, 2, '2018-12-17 03:30:44.646742', 'f');

-- ----------------------------
-- Table structure for courses
-- ----------------------------
DROP TABLE IF EXISTS "public"."courses";
CREATE TABLE "public"."courses" (
  "id_course" int4 NOT NULL DEFAULT nextval('courses_id_course_seq'::regclass),
  "id_calendar" int2 NOT NULL,
  "id_user" int4 NOT NULL,
  "id_subject" int4 NOT NULL,
  "name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "course_goal" int2 DEFAULT 0,
  "student_goal" int2 DEFAULT 0,
  "created_at" timestamp(6) DEFAULT now(),
  "updated_at" timestamp(6) DEFAULT now(),
  "code" varchar(8) COLLATE "pg_catalog"."default" NOT NULL,
  "active" bool NOT NULL DEFAULT true
)
;

-- ----------------------------
-- Records of courses
-- ----------------------------
INSERT INTO "public"."courses" VALUES (24, 15, 16, 6, 'grupo B', 200, 10, '2018-11-02 19:26:11.740967', '2018-11-02 19:26:11.740967', 'ed81fcf5', 't');
INSERT INTO "public"."courses" VALUES (25, 1, 26, 6, 'grupo xx', 100, 10, '2018-11-02 21:52:48.729395', '2018-11-02 21:52:48.729395', '6e6963fc', 't');
INSERT INTO "public"."courses" VALUES (27, 5, 50, 4, 'nono', 60, 5, '2018-11-03 02:47:04.091436', '2018-11-03 02:47:04.091436', '5d28d6f8', 't');
INSERT INTO "public"."courses" VALUES (1, 1, 1, 1, 'cuantic', 222, 2, '2018-10-16 22:20:31.994926', '2018-10-16 22:20:31.994926', 'afjd64k8', 't');
INSERT INTO "public"."courses" VALUES (23, 15, 1, 6, 'grupo A', 200, 10, '2018-11-02 19:07:47.852845', '2018-11-02 19:07:47.852845', '48b332af', 't');
INSERT INTO "public"."courses" VALUES (2, 1, 1, 1, 'cursows', 4324, 22, '2018-10-19 22:28:14.414422', '2018-10-19 22:28:14.414422', 'kd9dhs87', 't');
INSERT INTO "public"."courses" VALUES (10, 1, 1, 1, 'dsds', 2323, 223, '2018-10-21 13:58:18.489511', '2018-10-21 13:58:18.489511', '2', 't');
INSERT INTO "public"."courses" VALUES (13, 1, 1, 1, 'dfffsds', 2323, 223, '2018-10-21 13:59:45.808789', '2018-10-21 13:59:45.808789', 'e70cf4e2', 'f');
INSERT INTO "public"."courses" VALUES (30, 13, 1, 3, 'matematics', 25, 5, '2018-12-22 23:45:01.365389', '2018-12-22 23:45:01.365389', '266d1241', 't');
INSERT INTO "public"."courses" VALUES (39, 20, 1, 6, 'Grupo Ne', 200, 10, '2019-01-15 20:30:55.262212', '2019-01-15 20:30:55.262212', 'd4ace192', 't');

-- ----------------------------
-- Table structure for difficulties
-- ----------------------------
DROP TABLE IF EXISTS "public"."difficulties";
CREATE TABLE "public"."difficulties" (
  "id_difficulty" int2 NOT NULL DEFAULT nextval('difficulties_id_difficulty_seq'::regclass),
  "name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for modules
-- ----------------------------
DROP TABLE IF EXISTS "public"."modules";
CREATE TABLE "public"."modules" (
  "id_module" int4 NOT NULL DEFAULT nextval('modules_id_module_seq'::regclass),
  "id_course" int4 NOT NULL,
  "name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "position" int2,
  "created_at" timestamp(6) NOT NULL DEFAULT now(),
  "updated_at" timestamp(6) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Records of modules
-- ----------------------------
INSERT INTO "public"."modules" VALUES (4, 2, 'mi modulito', NULL, '2018-11-05 19:54:02.688232', '2018-11-05 19:54:02.688232');
INSERT INTO "public"."modules" VALUES (7, 1, 'otro modle', NULL, '2018-11-06 18:16:01.786845', '2018-11-06 18:16:01.786845');
INSERT INTO "public"."modules" VALUES (9, 1, 'otro modulo', NULL, '2018-11-06 18:30:23.495', '2018-11-06 18:30:23.495');
INSERT INTO "public"."modules" VALUES (15, 10, 'another module', NULL, '2018-11-11 17:28:21.641992', '2018-11-11 17:28:21.641992');
INSERT INTO "public"."modules" VALUES (12, 10, 'mymod', NULL, '2018-11-11 16:33:22.849238', '2018-11-11 16:33:22.849238');
INSERT INTO "public"."modules" VALUES (16, 13, 'un modulo', NULL, '2018-11-12 17:43:38.305501', '2018-11-12 17:43:38.305501');
INSERT INTO "public"."modules" VALUES (17, 2, 'otro modulo', NULL, '2018-11-27 19:45:51.710894', '2018-11-27 19:45:51.710894');
INSERT INTO "public"."modules" VALUES (19, 23, 'Modle1', NULL, '2019-01-01 20:39:02.047778', '2019-01-01 20:39:02.047778');
INSERT INTO "public"."modules" VALUES (20, 39, 'Defa', NULL, '2019-01-15 20:31:15.920187', '2019-01-15 20:31:15.920187');

-- ----------------------------
-- Table structure for questions
-- ----------------------------
DROP TABLE IF EXISTS "public"."questions";
CREATE TABLE "public"."questions" (
  "id_question" int4 NOT NULL DEFAULT nextval('questions_id_question_seq'::regclass),
  "id_subcategory" int4 NOT NULL,
  "description" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "shared" bool DEFAULT false,
  "created_at" timestamp(6) DEFAULT now(),
  "updated_at" timestamp(6) DEFAULT now(),
  "difficulty" int2 NOT NULL,
  "image" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of questions
-- ----------------------------
INSERT INTO "public"."questions" VALUES (3, 9, 'jujujuu', 'f', '2018-11-03 23:58:04.950262', '2018-11-03 23:58:04.950262', 3, 'uploads\images\questions\1544143160252.jpg');
INSERT INTO "public"."questions" VALUES (30, 4, 'uwuuwuwu', 'f', '2018-12-07 02:36:20.309474', '2018-12-07 17:33:53.611347', 1, 'uploads\images\questions\1544214833602.jpeg');
INSERT INTO "public"."questions" VALUES (10, 9, 'nononon', 'f', '2018-11-15 23:21:39.374708', '2018-11-15 23:21:39.374708', 3, 'uploads\images\questions\1544069399516.jpg');
INSERT INTO "public"."questions" VALUES (28, 9, 'another categor', 'f', '2018-12-05 18:09:41.335179', '2018-12-07 00:32:17.625455', 2, NULL);
INSERT INTO "public"."questions" VALUES (29, 9, '¿si se llama?', 'f', '2018-12-06 01:09:59.560177', '2018-12-27 16:25:19.590016', 2, NULL);
INSERT INTO "public"."questions" VALUES (5, 9, 'nononon', 'f', '2018-11-15 17:11:36.588884', '2018-12-27 16:31:51.741264', 2, 'uploads\images\questions\1544069399516.jpg');
INSERT INTO "public"."questions" VALUES (33, 11, '¿No come?', 'f', '2018-12-29 18:16:59.274181', '2018-12-29 18:16:59.274181', 3, NULL);
INSERT INTO "public"."questions" VALUES (34, 22, 'Hola amiguin', 'f', '2019-01-11 16:50:32.458097', '2019-01-11 16:50:32.458097', 2, NULL);
INSERT INTO "public"."questions" VALUES (36, 22, '¿real name?', 'f', '2019-01-15 20:33:04.86989', '2019-01-15 20:33:04.86989', 3, NULL);
INSERT INTO "public"."questions" VALUES (35, 22, '¿name del name?', 'f', '2019-01-13 23:14:24.244788', '2019-07-16 20:21:16.550076', 2, 'uploads\images\questions\1563322876515.jpg');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS "public"."roles";
CREATE TABLE "public"."roles" (
  "id_user" int4 NOT NULL,
  "role" int2 NOT NULL
)
;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO "public"."roles" VALUES (13, 3);
INSERT INTO "public"."roles" VALUES (20, 3);
INSERT INTO "public"."roles" VALUES (21, 3);
INSERT INTO "public"."roles" VALUES (22, 3);
INSERT INTO "public"."roles" VALUES (23, 3);
INSERT INTO "public"."roles" VALUES (25, 3);
INSERT INTO "public"."roles" VALUES (27, 3);
INSERT INTO "public"."roles" VALUES (28, 3);
INSERT INTO "public"."roles" VALUES (29, 3);
INSERT INTO "public"."roles" VALUES (30, 3);
INSERT INTO "public"."roles" VALUES (31, 3);
INSERT INTO "public"."roles" VALUES (32, 3);
INSERT INTO "public"."roles" VALUES (33, 3);
INSERT INTO "public"."roles" VALUES (34, 3);
INSERT INTO "public"."roles" VALUES (35, 3);
INSERT INTO "public"."roles" VALUES (36, 3);
INSERT INTO "public"."roles" VALUES (37, 3);
INSERT INTO "public"."roles" VALUES (38, 3);
INSERT INTO "public"."roles" VALUES (39, 3);
INSERT INTO "public"."roles" VALUES (40, 3);
INSERT INTO "public"."roles" VALUES (41, 3);
INSERT INTO "public"."roles" VALUES (42, 3);
INSERT INTO "public"."roles" VALUES (43, 3);
INSERT INTO "public"."roles" VALUES (44, 3);
INSERT INTO "public"."roles" VALUES (45, 3);
INSERT INTO "public"."roles" VALUES (46, 3);
INSERT INTO "public"."roles" VALUES (47, 3);
INSERT INTO "public"."roles" VALUES (48, 3);
INSERT INTO "public"."roles" VALUES (49, 3);
INSERT INTO "public"."roles" VALUES (50, 3);
INSERT INTO "public"."roles" VALUES (51, 3);
INSERT INTO "public"."roles" VALUES (52, 3);
INSERT INTO "public"."roles" VALUES (68, 3);
INSERT INTO "public"."roles" VALUES (12, 3);
INSERT INTO "public"."roles" VALUES (14, 3);
INSERT INTO "public"."roles" VALUES (1, 1);
INSERT INTO "public"."roles" VALUES (1, 2);
INSERT INTO "public"."roles" VALUES (1, 3);
INSERT INTO "public"."roles" VALUES (71, 3);
INSERT INTO "public"."roles" VALUES (72, 3);

-- ----------------------------
-- Table structure for subcategories
-- ----------------------------
DROP TABLE IF EXISTS "public"."subcategories";
CREATE TABLE "public"."subcategories" (
  "id_subcategory" int4 NOT NULL DEFAULT nextval('subcategories_id_subcategory_seq'::regclass),
  "id_category" int4 NOT NULL,
  "name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL DEFAULT 'DEFAULT'::character varying,
  "created_at" timestamp(6) DEFAULT now(),
  "updated_at" timestamp(6) DEFAULT now()
)
;

-- ----------------------------
-- Records of subcategories
-- ----------------------------
INSERT INTO "public"."subcategories" VALUES (4, 2, 'example', '2018-12-05 03:04:34.525833', '2018-12-05 03:04:34.525833');
INSERT INTO "public"."subcategories" VALUES (9, 6, 'otra subcat', '2018-12-05 16:58:09.993202', '2018-12-05 16:58:09.993202');
INSERT INTO "public"."subcategories" VALUES (10, 1, 'nonaes', '2018-12-05 16:58:16.671968', '2018-12-05 16:58:16.671968');
INSERT INTO "public"."subcategories" VALUES (11, 1, 'aaaaaaa', '2018-12-05 17:01:31.458457', '2018-12-05 17:01:31.458457');
INSERT INTO "public"."subcategories" VALUES (12, 6, 'cata2', '2018-12-06 15:52:17.313651', '2018-12-06 15:52:17.313651');
INSERT INTO "public"."subcategories" VALUES (13, 6, 'yollu', '2018-12-11 23:57:29.491165', '2018-12-11 23:57:29.491165');
INSERT INTO "public"."subcategories" VALUES (21, 4, 'noes', '2018-12-24 18:37:25.46527', '2018-12-24 18:37:25.46527');
INSERT INTO "public"."subcategories" VALUES (22, 95, 'DEFAULT', '2019-01-01 20:29:18.136689', '2019-01-01 20:29:18.136689');
INSERT INTO "public"."subcategories" VALUES (23, 96, 'DEFAULT', '2019-01-04 00:42:50.707595', '2019-01-04 00:42:50.707595');
INSERT INTO "public"."subcategories" VALUES (24, 97, 'DEFAULT', '2019-06-13 16:22:29.71743', '2019-06-13 16:22:29.71743');

-- ----------------------------
-- Table structure for subjects
-- ----------------------------
DROP TABLE IF EXISTS "public"."subjects";
CREATE TABLE "public"."subjects" (
  "id_subject" int4 NOT NULL DEFAULT nextval('subjects_id_subject_seq'::regclass),
  "name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(6) DEFAULT now(),
  "updated_at" timestamp(6) DEFAULT now()
)
;

-- ----------------------------
-- Records of subjects
-- ----------------------------
INSERT INTO "public"."subjects" VALUES (3, 'Matematicas', '2018-10-13 23:24:20.809799', '2018-10-13 23:24:20.809799');
INSERT INTO "public"."subjects" VALUES (4, 'Quimica', '2018-10-31 21:48:43.516953', '2018-10-31 21:48:43.516953');
INSERT INTO "public"."subjects" VALUES (1, 'Bases de Datos', '2018-09-11 21:38:55.830932', '2018-09-11 21:38:55.830932');
INSERT INTO "public"."subjects" VALUES (6, 'Fisica', '2018-11-02 02:47:54.701761', '2018-11-02 02:47:54.701761');
INSERT INTO "public"."subjects" VALUES (9, 'nones', '2019-04-02 02:28:15.796095', '2019-04-02 02:28:15.796095');
INSERT INTO "public"."subjects" VALUES (10, 'asignatura de prueba', '2019-06-13 16:21:59.315502', '2019-06-13 16:21:59.315502');

-- ----------------------------
-- Table structure for user_question_class
-- ----------------------------
DROP TABLE IF EXISTS "public"."user_question_class";
CREATE TABLE "public"."user_question_class" (
  "id_user" int4 NOT NULL,
  "id_question" int4 NOT NULL,
  "id_class" int4 NOT NULL,
  "status" int2 NOT NULL DEFAULT 1,
  "update_date" timestamp(6) DEFAULT now()
)
;

-- ----------------------------
-- Records of user_question_class
-- ----------------------------
INSERT INTO "public"."user_question_class" VALUES (72, 36, 30, 1, '2019-08-07 16:18:14.390444');
INSERT INTO "public"."user_question_class" VALUES (71, 36, 30, 5, '2019-08-07 16:18:14.390444');
INSERT INTO "public"."user_question_class" VALUES (71, 35, 13, 2, '2019-08-06 19:29:40.222184');
INSERT INTO "public"."user_question_class" VALUES (71, 34, 13, 5, '2019-08-02 20:42:04.294847');
INSERT INTO "public"."user_question_class" VALUES (72, 35, 13, 4, '2019-08-06 19:29:40.222184');
INSERT INTO "public"."user_question_class" VALUES (72, 34, 13, 1, '2019-08-02 20:42:04.294847');

-- ----------------------------
-- Table structure for user_subject
-- ----------------------------
DROP TABLE IF EXISTS "public"."user_subject";
CREATE TABLE "public"."user_subject" (
  "id_user" int4 NOT NULL,
  "id_subject" int4 NOT NULL,
  "added_at" timestamp(6) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Records of user_subject
-- ----------------------------
INSERT INTO "public"."user_subject" VALUES (1, 1, '2018-12-15 02:49:55.670915');
INSERT INTO "public"."user_subject" VALUES (1, 3, '2018-12-15 02:49:55.670915');
INSERT INTO "public"."user_subject" VALUES (16, 6, '2018-12-15 02:49:55.670915');
INSERT INTO "public"."user_subject" VALUES (26, 6, '2018-12-15 02:49:55.670915');
INSERT INTO "public"."user_subject" VALUES (50, 4, '2018-12-15 02:49:55.670915');
INSERT INTO "public"."user_subject" VALUES (1, 6, '2019-01-01 20:29:18.136689');
INSERT INTO "public"."user_subject" VALUES (1, 4, '2019-01-04 00:42:50.707595');
INSERT INTO "public"."user_subject" VALUES (1, 10, '2019-06-13 16:22:29.71743');

-- ----------------------------
-- Table structure for user_subject_color
-- ----------------------------
DROP TABLE IF EXISTS "public"."user_subject_color";
CREATE TABLE "public"."user_subject_color" (
  "id_user" int4 NOT NULL,
  "id_subject" int4 NOT NULL,
  "id_color" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS "public"."users";
CREATE TABLE "public"."users" (
  "id_user" int4 NOT NULL DEFAULT nextval('users_id_user_seq'::regclass),
  "name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "last_name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "middle_name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "document" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "email" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "phone" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "username" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "password" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "active" bool NOT NULL DEFAULT true,
  "profile_image" varchar(50) COLLATE "pg_catalog"."default",
  "created_at" timestamp(6) DEFAULT now(),
  "updated_at" timestamp(6) DEFAULT now()
)
;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO "public"."users" VALUES (46, 'gdfgdf', 'gdfgdf', 'gdfgdfg', 'g65', 'fdfqfdfsdc@fdfs.com', '534534', 'dasdas', '$2a$10$EltzXUHEVJI1KBTT31CB7.DMPlfx9l.JrdulrF2L2OkeBT517/8ka', 't', NULL, '2018-10-12 23:06:17.581939', '2018-10-12 23:06:17.581939');
INSERT INTO "public"."users" VALUES (47, 'gfdgdf', 'gdfgdf', 'ggdfg', '4534534', 'fdfdh@gl.com', '87854', 'gfdsfs66', '$2a$10$v3Tz0It6bF4XTJnmzxKdYuO36Y48xXA4HgRfR03HdzetiizfFJRHG', 't', NULL, '2018-10-12 23:07:00.141911', '2018-10-12 23:07:00.141911');
INSERT INTO "public"."users" VALUES (48, 'dasdsdas', 'dasd', 'dasdasd', '76575', 'lglgqll@f.com', '545345', 'fsfsk00', '$2a$10$Qkz6E3bP1Z.hYLjyUN8foe9DvNqMIkFFULe0Wb.HFHKpXeNY7uaSW', 't', NULL, '2018-10-12 23:07:21.676447', '2018-10-12 23:07:21.676447');
INSERT INTO "public"."users" VALUES (49, 'fsdfsd', 'fsdfsdf', 'fsdfsd', '534534', 'sdda@dsd.com', '43423', 'djsdjsjkdj', '$2a$10$Zircb5hJ.UVSyN3ruZZfE.RAySv8cYloEtyZO9i047JsPq26opTN6', 't', NULL, '2018-10-12 23:07:42.969677', '2018-10-12 23:07:42.969677');
INSERT INTO "public"."users" VALUES (51, 'asdhasjhj', 'hdsjdhasjh', 'hfjksdhfj', '23124123', 'nana@nana.com', '42454', 'nana1234', '$2a$10$TCUGHEdi4yOuvFWhxyUzRexq2hRxQjmboG21PdAoLwDhDV5mQPAN6', 't', NULL, '2018-10-31 21:57:25.541758', '2018-10-31 21:57:25.541758');
INSERT INTO "public"."users" VALUES (20, 'gdfgdfg', 'gdfgdf', 'ggdfgdf', 'gtf54654', 'ewe@fd.com', 'fdfsdfdf', 'dasdasd', '$2a$10$2x..UUytZvtrFbUZ355j7.RIpgg/ZvgTbI159PjI773igtGwg7/WO', 't', NULL, '2018-10-12 21:53:34.158039', '2018-10-12 21:53:34.158039');
INSERT INTO "public"."users" VALUES (21, 'gdfgdfgdf', 'gfdgdf', 'gdfgdf', 'gdfgg', 'rrew@cxc.com', '534543', 'fkdfsdf', '$2a$10$06HpT6eOnT.OLq0Bejkw5OxC8avHf2fvFGWOZ/3Hz18IanybOem1O', 't', NULL, '2018-10-12 21:54:04.607299', '2018-10-12 21:54:04.607299');
INSERT INTO "public"."users" VALUES (22, 'ffsdf', 'fsdfsdf', 'dsfds', 'fsdfds', 'fdsfsd@sdds.com', '434234', 'sdsdfd', '$2a$10$4ysOWHmXXf9j6J5xeR7o7.vyjJMR83lYQdfMn0t7IT0Drew27.tyu', 't', NULL, '2018-10-12 21:54:24.578345', '2018-10-12 21:54:24.578345');
INSERT INTO "public"."users" VALUES (23, 'trterter', 'terter', 'treter', 'tertre', 'sdfsdf@ddas.com', '565646', 'allala', '$2a$10$rvZSng7jwqlV.3D5dCaFv.N/pPk3G1enzEzkz6ucQS8UTLHn9C6Hi', 't', NULL, '2018-10-12 21:54:43.155362', '2018-10-12 21:54:43.155362');
INSERT INTO "public"."users" VALUES (25, 'fsdfsd', 'fdsfs', 'fsdfsd', 'fsdfsd', 'oo@oo.com', '4342389', 'klskdlsd', '$2a$10$qjBnXmbXUhFYbxmFfE7PE.ZHn3n7lCO2C0lSn2C0SCXD4kpdftO5u', 't', NULL, '2018-10-12 21:55:32.124825', '2018-10-12 21:55:32.124825');
INSERT INTO "public"."users" VALUES (27, 'dasdas', 'dasdsa', 'dasdasd', '12344', 'fds@csdd.com', '312312', 'sdfsdfsdf', '$2a$10$jDB.2vs07WL0SkQziQKhG.wQPCDF0hxk5ytjG97/dgMJq.8UkefOS', 't', NULL, '2018-10-12 21:57:14.910111', '2018-10-12 21:57:14.910111');
INSERT INTO "public"."users" VALUES (28, 'fsdfsd', 'fsdfd', 'fsdfsdfsd', 'fsdfsd44', 'sdfsd@fdsf.com', '42342342', 'dasdas4', '$2a$10$qY8QKHOj9rpOSakvUE3VrOgNfMgp4aOSXhR7PQJR8Cl/dAAsZT1vy', 't', NULL, '2018-10-12 22:58:08.785132', '2018-10-12 22:58:08.785132');
INSERT INTO "public"."users" VALUES (29, 'fsfsdf', 'fsdfsd', 'fsdfsd', '432425', 'dssd@acc.com', '324', 'ew4', '$2a$10$kJudY/a.CJh/ULrbjDFxauGK.GUX9nWRS5mitmIncV/rnFTymaWIW', 't', NULL, '2018-10-12 22:58:41.955876', '2018-10-12 22:58:41.955876');
INSERT INTO "public"."users" VALUES (30, 'fsdfsd', 'fsdfsd', 'fsdfsdf', '324342423', 'dasda@dsd.com', '42342', 'dqwde34', '$2a$10$1Jdy4JeG5nCZpYjG2qaqM.Qyqs0ePKYWWCZX.aR/xYHNSt5gNKm7a', 't', NULL, '2018-10-12 22:58:59.550483', '2018-10-12 22:58:59.550483');
INSERT INTO "public"."users" VALUES (31, 'fsfd', 'ffsdf', 'sdfsdf', '23545', 'dsadas@ds.com', '44324', 'dfs3', '$2a$10$XTdaZj8iRTU/v81oPqsiROS42D/rsO7xCRTmVjeysy9mxe1b6VImO', 't', NULL, '2018-10-12 22:59:20.982514', '2018-10-12 22:59:20.982514');
INSERT INTO "public"."users" VALUES (32, 'fsdfsd', 'fsdfsdfsdf', 'fsfsdfds', '4234234', 'dede@cdcd.com', '423423', 'dd53', '$2a$10$EumkToHo65rbzys52hB9Q.Q/DOhXKRFOCUxpMj8cxeTk/DRC2m6my', 't', NULL, '2018-10-12 23:00:41.256895', '2018-10-12 23:00:41.256895');
INSERT INTO "public"."users" VALUES (33, 'fdsfsdfsd', 'fsdfds', 'fsdfsdf', 'fs54534', 'da@sds.com', 'dsds', '4dsfsd', '$2a$10$2Vwhhub6ftv7HSWCqSJefOR5ckkbWOjmfzl/5Iuj26A/sH0ikhbuy', 't', NULL, '2018-10-12 23:01:02.993696', '2018-10-12 23:01:02.993696');
INSERT INTO "public"."users" VALUES (34, 'fsdfsdf', 'sdfsdfsd', 'fsdfsdf', '342345234', '234dsd@fdfd.com', 'sdfsd44', 'ssa54', '$2a$10$BFUru1.uLsRHC3f3Bio31e/Ghsu4RW7iqBiFTtJ.gQhg7vFWcvmoW', 't', NULL, '2018-10-12 23:01:37.874643', '2018-10-12 23:01:37.874643');
INSERT INTO "public"."users" VALUES (35, 'fsdfsd', 'fsdfsd', 'fsdfsdfsd', '34sdf', 'sdf@dfsdas.com', '423423', 'dsada222', '$2a$10$AcoMY4jwrHOLHr9cMC18U..MGpL2w06GyexMyOi2nWKz4HiCPGdfa', 't', NULL, '2018-10-12 23:01:55.832379', '2018-10-12 23:01:55.832379');
INSERT INTO "public"."users" VALUES (36, 'fsdfdf', 'sdfsdfsd', 'fsdfsdf', '434fd', 'fsdfsd@dsds.com', 'dfsdf', 's4fsd4', '$2a$10$2Bp.DkWxo3QYrMtYtVyp9.wZNDpdFDBC7g2Dqe8kEuCQ9dCoifCYG', 't', NULL, '2018-10-12 23:02:14.537282', '2018-10-12 23:02:14.537282');
INSERT INTO "public"."users" VALUES (37, 'dfsdfsd', 'fsdfsd', 'fdfsdfsd', '4342342', '44dasdassa@dsds.com', 'dsdfsfsd', 'fdsfsd', '$2a$10$e2uJDFWEgjabpAVTSdA0dupSvgAMAKwwVNF5Rckm9VhYKDcw5THYS', 't', NULL, '2018-10-12 23:02:43.927239', '2018-10-12 23:02:43.927239');
INSERT INTO "public"."users" VALUES (38, 'fsdfsd', 'fsdfsd', 'ffsdfsd', 'fsdfsdff', 'lflf@dd.com', '12312', '1234dd', '$2a$10$eOJQJ/TuCKoum9lfvue7O.sSZry9eqOMSR.apf8DXWCK/dahobAJS', 't', NULL, '2018-10-12 23:03:15.953153', '2018-10-12 23:03:15.953153');
INSERT INTO "public"."users" VALUES (39, 'gdfgdf', 'gdfgdfg', 'gdfgdfgdf', '432423dd', 'rere@rer.com', 'f432', 'dsds', '$2a$10$qGnbl0Y7KIbq2o4eNVCHaOZpSJuj4p4atCM8/LDWkvGrrW0JrgW8u', 't', NULL, '2018-10-12 23:03:42.783216', '2018-10-12 23:03:42.783216');
INSERT INTO "public"."users" VALUES (40, 'trtre', 'terte', 'rtertert', '44324', 'errr@rere.com', '4324432', '1234ffff', '$2a$10$X9wvkVUGgLvLX6J0IvoJKe5UeABvsB9w/dTuWeWHuFKYyqZ/fXPYe', 't', NULL, '2018-10-12 23:04:06.315905', '2018-10-12 23:04:06.315905');
INSERT INTO "public"."users" VALUES (42, 'fsdf', 'sdfsdfsd', 'fsdfsdf', 'f42342', 'ffdsfsd@fdfd.com', 'fsdfsd', '1234aa', '$2a$10$1ZgiW/Q06.HQ4gWWWC6so.4rV8AqV77IW./TPscawjYzEFeVgVsKS', 't', NULL, '2018-10-12 23:04:48.204962', '2018-10-12 23:04:48.204962');
INSERT INTO "public"."users" VALUES (43, 'gdfgdfg', 'gdfgdf', 'gdfgdfg', '445354', 'dsda@ffsd.com', '423423', 'rwerwe', '$2a$10$GtLS1/1lxUbt6ff9ecGHL./98q72oNuIQ7tJUZEiA3iO5Puf3CiZe', 't', NULL, '2018-10-12 23:05:22.907123', '2018-10-12 23:05:22.907123');
INSERT INTO "public"."users" VALUES (44, 'fsdfsd', 'fsdfsd', 'fsdfsdf', 'fsd4343', 'fdsfsds@fdfds.com', '4345254', 'jdfjsd', '$2a$10$qlB3mIPYCUvre4t.CPiYVu9j0SGblOd4MSJ1uCRsdIFQEHdasUVhG', 't', NULL, '2018-10-12 23:05:40.958167', '2018-10-12 23:05:40.958167');
INSERT INTO "public"."users" VALUES (45, 'dasdas', 'dasd', 'dasdasdas', '43fsdf', 'yyt@tyy.com', '38423', 'fjdkfjsdkñ', '$2a$10$eS10B7lGGVrPvWLgrNwg2.nMuMMX2d9o1xBeY80ioYzW.CIicY9vC', 't', NULL, '2018-10-12 23:05:59.847362', '2018-10-12 23:05:59.847362');
INSERT INTO "public"."users" VALUES (52, 'fsdfsd', 'sdfsdf', 'sdfsdfsdf', 'fsd4324', 'dds@cxc.com', '46456', 'fsdfsdf34', '$2a$10$FmhztUY0VgRlToUQcdRCLuf68x24LbNrbJpRoxmeARyhe1rfpcSna', 't', NULL, '2018-10-31 22:02:48.523833', '2018-10-31 22:02:48.523833');
INSERT INTO "public"."users" VALUES (50, 'fsdfsdfsd', 'ssss', 'fdsfsdfd', '432523534', 'papi@papi.com', '55242', 'papi123', '$2a$10$PYidLw0ecXqLfTallYoP/OrSsF2cPNcjb1kuKcs9pdYl2LmFynpUi', 't', NULL, '2018-10-31 21:54:29.307661', '2018-10-31 21:54:29.307661');
INSERT INTO "public"."users" VALUES (26, 'fdsfsd', 'fsdfsd', 'sdfdsfsd', '4423423', 'ttt@tt.com', '3123123', 'ffdfds', '$2a$10$4e02YL86A5oluwVJph71buBZKDT.qQWEIvc1YYuycLNIoj9gBZJsi', 't', NULL, '2018-10-12 21:56:45.676334', '2018-10-12 21:56:45.676334');
INSERT INTO "public"."users" VALUES (16, 'fsdfsdf', 'fdfs', 'fsdf', '154545', 'sasa@dsds.com', '1545645', 'dsda45', '$2a$10$sGuf5E9k59bLdqhr6FOjUObIrD3b4BYMisoe.khCWgF.OfL4JYywW', 't', NULL, '2018-10-11 23:21:26.264971', '2018-10-11 23:21:26.264971');
INSERT INTO "public"."users" VALUES (14, 'Luisito', 'Villa', 'Toro', '182314568', 'luisvilla2@gmail.com', '955427892', 'luisvillaz', '$2a$10$XiKrFnLZFTEgQmbR6i8WAeBg8C8a6zkFEzhWzVutg.ZcMb/NVxgNi', 't', NULL, '2018-10-05 19:11:12.677776', '2018-10-05 19:11:12.677776');
INSERT INTO "public"."users" VALUES (12, 'Pedro', 'Maluenda', 'Barraza', '123230613', 'raldisssda@gmail.com', '973234391', 'edrdo_mdsd', '$2a$10$XxePHSNfCM7FQY9WG.mfMu7aPp/ATQFvN6p91M2fJE63jh0rgHIsq', 't', NULL, '2018-10-05 18:48:54.122471', '2018-10-05 18:48:54.122471');
INSERT INTO "public"."users" VALUES (13, 'Pedro', 'Maluenda', 'Barraza', '123230113', 'raldiggfgfsssda@gmail.com', '973234391', 'edrd', '$2a$10$zNwcbhk/ky0yaMgnEoN0l.OTTdmqMlwOSEUlhTE3443a7ucVMFt3i', 't', NULL, '2018-10-05 19:08:36.199935', '2018-10-05 19:08:36.199935');
INSERT INTO "public"."users" VALUES (41, 'gfgfg', 'gdfgfd', 'ggfdgdf', '54534fg', 'tt@tt.com', '423423', '1234', '$2a$10$XDfExCBQY1acvxrW1uVkn.dDhs28CAAnXX8qtmH3KL.XeIcKRsYc2', 't', NULL, '2018-10-12 23:04:29.170435', '2018-10-12 23:04:29.170435');
INSERT INTO "public"."users" VALUES (17, 'cris', 'dasdas', 'sdasd', '15446', 'dd@dd.com', '312432423', 'demo1', '$2a$10$eMeVIGc4H1bcYJZdYVYV9uNnzE/mjqn4Nfimc8VO9PL6UMCO2oj..', 'f', NULL, '2018-10-11 23:44:01.871766', '2018-10-11 23:44:01.871766');
INSERT INTO "public"."users" VALUES (62, 'dasdjak', 'jdksdksj', 'djsidj', '3131', 'momo@momo.com', '423423', 'fjsd93j', '$2a$10$yoITW4B5qB.6K2YL53mWIet5wvpmOfBORiH3Zc41TjORv7INAX58G', 't', NULL, '2018-11-01 04:03:27.670399', '2018-11-01 04:03:27.670399');
INSERT INTO "public"."users" VALUES (68, 'klksdlfksd', 'dkasldksl', 'dklskl', 'i948234923', 'momo2@momo2.com', '4238492', 'momo22', '$2a$10$7z0O2mM3YSB0Qe0kYROaZ.08SWSnrvh68ghynbT359SL1Ym93o11C', 't', NULL, '2018-11-01 13:40:46.411286', '2018-11-01 13:40:46.411286');
INSERT INTO "public"."users" VALUES (1, 'Cristia', 'Flores', 'sandoval', '183139613', 'demo@demo.com', '+56973234391', 'demo', '$2a$10$5DLMiodMYuNoEeeBQJrSp.yyiq2LEKlOqbK.ISXMPs.CrMk1cXTt2', 't', NULL, '2018-09-11 21:38:55.826907', '2018-09-11 21:38:55.826907');
INSERT INTO "public"."users" VALUES (71, 'es', 'es', 'es', '1234567892', 'estudiante@estudiante.com', '323214', 'estudiante', '$2a$10$/Ax1T5yTgQJt9PQalNkn.OoOj/zlfEAxYK5IVv4XwVaG2ZHvdgLI6', 't', NULL, '2018-12-22 15:50:01.006165', '2018-12-22 15:50:01.006165');
INSERT INTO "public"."users" VALUES (72, 'ede', 'fdfdff', 'fdfd', '1234567893', 'estudiante2@estudiante2.com', '32423', 'esds', '$2a$10$XP1vdQMlWK/DZ3lr.o6YO.Xp8eGOZvKFpIurx/mvaLfg14M30SJp.', 't', NULL, '2018-12-22 17:29:33.27811', '2018-12-22 17:29:33.27811');

-- ----------------------------
-- Function structure for uuid_generate_v1
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_generate_v1"();
CREATE OR REPLACE FUNCTION "public"."uuid_generate_v1"()
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_generate_v1'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_generate_v1mc
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_generate_v1mc"();
CREATE OR REPLACE FUNCTION "public"."uuid_generate_v1mc"()
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_generate_v1mc'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_generate_v3
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_generate_v3"("namespace" uuid, "name" text);
CREATE OR REPLACE FUNCTION "public"."uuid_generate_v3"("namespace" uuid, "name" text)
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_generate_v3'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_generate_v4
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_generate_v4"();
CREATE OR REPLACE FUNCTION "public"."uuid_generate_v4"()
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_generate_v4'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_generate_v5
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_generate_v5"("namespace" uuid, "name" text);
CREATE OR REPLACE FUNCTION "public"."uuid_generate_v5"("namespace" uuid, "name" text)
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_generate_v5'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_nil
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_nil"();
CREATE OR REPLACE FUNCTION "public"."uuid_nil"()
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_nil'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_ns_dns
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_ns_dns"();
CREATE OR REPLACE FUNCTION "public"."uuid_ns_dns"()
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_ns_dns'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_ns_oid
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_ns_oid"();
CREATE OR REPLACE FUNCTION "public"."uuid_ns_oid"()
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_ns_oid'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_ns_url
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_ns_url"();
CREATE OR REPLACE FUNCTION "public"."uuid_ns_url"()
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_ns_url'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_ns_x500
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_ns_x500"();
CREATE OR REPLACE FUNCTION "public"."uuid_ns_x500"()
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_ns_x500'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."activities_id_activity_seq"
OWNED BY "public"."activities"."id_activity";
SELECT setval('"public"."activities_id_activity_seq"', 29, true);
ALTER SEQUENCE "public"."calendars_id_calendar_seq"
OWNED BY "public"."calendars"."id_calendar";
SELECT setval('"public"."calendars_id_calendar_seq"', 23, true);
ALTER SEQUENCE "public"."categories_id_category_seq"
OWNED BY "public"."categories"."id_category";
SELECT setval('"public"."categories_id_category_seq"', 99, true);
ALTER SEQUENCE "public"."classes_id_class_seq"
OWNED BY "public"."classes"."id_class";
SELECT setval('"public"."classes_id_class_seq"', 33, true);
ALTER SEQUENCE "public"."colors_id_color_seq"
OWNED BY "public"."colors"."id_color";
SELECT setval('"public"."colors_id_color_seq"', 10, true);
ALTER SEQUENCE "public"."courses_id_course_seq"
OWNED BY "public"."courses"."id_course";
SELECT setval('"public"."courses_id_course_seq"', 41, true);
ALTER SEQUENCE "public"."difficulties_id_difficulty_seq"
OWNED BY "public"."difficulties"."id_difficulty";
SELECT setval('"public"."difficulties_id_difficulty_seq"', 6, false);
ALTER SEQUENCE "public"."modules_id_module_seq"
OWNED BY "public"."modules"."id_module";
SELECT setval('"public"."modules_id_module_seq"', 22, true);
ALTER SEQUENCE "public"."questions_id_question_seq"
OWNED BY "public"."questions"."id_question";
SELECT setval('"public"."questions_id_question_seq"', 38, true);
ALTER SEQUENCE "public"."subcategories_id_subcategory_seq"
OWNED BY "public"."subcategories"."id_subcategory";
SELECT setval('"public"."subcategories_id_subcategory_seq"', 26, true);
ALTER SEQUENCE "public"."subjects_id_subject_seq"
OWNED BY "public"."subjects"."id_subject";
SELECT setval('"public"."subjects_id_subject_seq"', 12, true);
ALTER SEQUENCE "public"."users_id_user_seq"
OWNED BY "public"."users"."id_user";
SELECT setval('"public"."users_id_user_seq"', 75, true);

-- ----------------------------
-- Uniques structure for table activities
-- ----------------------------
ALTER TABLE "public"."activities" ADD CONSTRAINT "activities_name_key" UNIQUE ("name");

-- ----------------------------
-- Primary Key structure for table activities
-- ----------------------------
ALTER TABLE "public"."activities" ADD CONSTRAINT "pk_activity" PRIMARY KEY ("id_activity");

-- ----------------------------
-- Primary Key structure for table activity_user
-- ----------------------------
ALTER TABLE "public"."activity_user" ADD CONSTRAINT "pk_activity_student" PRIMARY KEY ("id_user", "id_activity");

-- ----------------------------
-- Uniques structure for table calendars
-- ----------------------------
ALTER TABLE "public"."calendars" ADD CONSTRAINT "uq_calendar" UNIQUE ("year", "semester");

-- ----------------------------
-- Primary Key structure for table calendars
-- ----------------------------
ALTER TABLE "public"."calendars" ADD CONSTRAINT "pk_calendar" PRIMARY KEY ("id_calendar");

-- ----------------------------
-- Primary Key structure for table categories
-- ----------------------------
ALTER TABLE "public"."categories" ADD CONSTRAINT "pk_category" PRIMARY KEY ("id_category");

-- ----------------------------
-- Primary Key structure for table class_question
-- ----------------------------
ALTER TABLE "public"."class_question" ADD CONSTRAINT "pk_question_class" PRIMARY KEY ("id_question", "id_class");

-- ----------------------------
-- Primary Key structure for table classes
-- ----------------------------
ALTER TABLE "public"."classes" ADD CONSTRAINT "pk_class" PRIMARY KEY ("id_class");

-- ----------------------------
-- Uniques structure for table colors
-- ----------------------------
ALTER TABLE "public"."colors" ADD CONSTRAINT "colors_name_key" UNIQUE ("name");
ALTER TABLE "public"."colors" ADD CONSTRAINT "colors_hexadecimal_key" UNIQUE ("hexadecimal");

-- ----------------------------
-- Primary Key structure for table colors
-- ----------------------------
ALTER TABLE "public"."colors" ADD CONSTRAINT "pk_color" PRIMARY KEY ("id_color");

-- ----------------------------
-- Primary Key structure for table course_user
-- ----------------------------
ALTER TABLE "public"."course_user" ADD CONSTRAINT "pk_course_student" PRIMARY KEY ("id_course", "id_user");

-- ----------------------------
-- Uniques structure for table courses
-- ----------------------------
ALTER TABLE "public"."courses" ADD CONSTRAINT "courses_name_key" UNIQUE ("name");
ALTER TABLE "public"."courses" ADD CONSTRAINT "uq_code_course" UNIQUE ("code");

-- ----------------------------
-- Primary Key structure for table courses
-- ----------------------------
ALTER TABLE "public"."courses" ADD CONSTRAINT "pk_course" PRIMARY KEY ("id_course");

-- ----------------------------
-- Uniques structure for table difficulties
-- ----------------------------
ALTER TABLE "public"."difficulties" ADD CONSTRAINT "difficulties_name_key" UNIQUE ("name");

-- ----------------------------
-- Primary Key structure for table difficulties
-- ----------------------------
ALTER TABLE "public"."difficulties" ADD CONSTRAINT "pk_difficulty" PRIMARY KEY ("id_difficulty");

-- ----------------------------
-- Uniques structure for table modules
-- ----------------------------
ALTER TABLE "public"."modules" ADD CONSTRAINT "modules_position_key" UNIQUE ("position");
ALTER TABLE "public"."modules" ADD CONSTRAINT "uq_module__name" UNIQUE ("id_course", "name");
ALTER TABLE "public"."modules" ADD CONSTRAINT "uq_module__position" UNIQUE ("id_course", "position");

-- ----------------------------
-- Primary Key structure for table modules
-- ----------------------------
ALTER TABLE "public"."modules" ADD CONSTRAINT "pk_module" PRIMARY KEY ("id_module");

-- ----------------------------
-- Primary Key structure for table questions
-- ----------------------------
ALTER TABLE "public"."questions" ADD CONSTRAINT "pk_question" PRIMARY KEY ("id_question");

-- ----------------------------
-- Primary Key structure for table roles
-- ----------------------------
ALTER TABLE "public"."roles" ADD CONSTRAINT "uq_roles" PRIMARY KEY ("id_user", "role");

-- ----------------------------
-- Primary Key structure for table subcategories
-- ----------------------------
ALTER TABLE "public"."subcategories" ADD CONSTRAINT "pk_subcategory" PRIMARY KEY ("id_subcategory");

-- ----------------------------
-- Uniques structure for table subjects
-- ----------------------------
ALTER TABLE "public"."subjects" ADD CONSTRAINT "subjects_name_key" UNIQUE ("name");

-- ----------------------------
-- Primary Key structure for table subjects
-- ----------------------------
ALTER TABLE "public"."subjects" ADD CONSTRAINT "pk_subject" PRIMARY KEY ("id_subject");

-- ----------------------------
-- Primary Key structure for table user_question_class
-- ----------------------------
ALTER TABLE "public"."user_question_class" ADD CONSTRAINT "pk_user_question_class" PRIMARY KEY ("id_user", "id_question", "id_class");

-- ----------------------------
-- Primary Key structure for table user_subject
-- ----------------------------
ALTER TABLE "public"."user_subject" ADD CONSTRAINT "pk_user_subject" PRIMARY KEY ("id_user", "id_subject");

-- ----------------------------
-- Primary Key structure for table user_subject_color
-- ----------------------------
ALTER TABLE "public"."user_subject_color" ADD CONSTRAINT "pk_user_subject_color" PRIMARY KEY ("id_user", "id_subject", "id_color");

-- ----------------------------
-- Uniques structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD CONSTRAINT "users_email_key" UNIQUE ("email");
ALTER TABLE "public"."users" ADD CONSTRAINT "users_username_key" UNIQUE ("username");

-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD CONSTRAINT "pk_user" PRIMARY KEY ("id_user");

-- ----------------------------
-- Foreign Keys structure for table activities
-- ----------------------------
ALTER TABLE "public"."activities" ADD CONSTRAINT "fk_activity__class" FOREIGN KEY ("id_class") REFERENCES "public"."classes" ("id_class") ON DELETE RESTRICT ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table activity_user
-- ----------------------------
ALTER TABLE "public"."activity_user" ADD CONSTRAINT "fk_activity_student__activity" FOREIGN KEY ("id_activity") REFERENCES "public"."activities" ("id_activity") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."activity_user" ADD CONSTRAINT "fk_activity_student__user" FOREIGN KEY ("id_user") REFERENCES "public"."users" ("id_user") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table categories
-- ----------------------------
ALTER TABLE "public"."categories" ADD CONSTRAINT "fk_category__user_subject" FOREIGN KEY ("id_user", "id_subject") REFERENCES "public"."user_subject" ("id_user", "id_subject") ON DELETE RESTRICT ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table class_question
-- ----------------------------
ALTER TABLE "public"."class_question" ADD CONSTRAINT "fk_question_class__class" FOREIGN KEY ("id_class") REFERENCES "public"."classes" ("id_class") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."class_question" ADD CONSTRAINT "fk_question_class__question" FOREIGN KEY ("id_question") REFERENCES "public"."questions" ("id_question") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table classes
-- ----------------------------
ALTER TABLE "public"."classes" ADD CONSTRAINT "fk_class__module" FOREIGN KEY ("id_module") REFERENCES "public"."modules" ("id_module") ON DELETE RESTRICT ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table course_user
-- ----------------------------
ALTER TABLE "public"."course_user" ADD CONSTRAINT "fk_course_student__course" FOREIGN KEY ("id_course") REFERENCES "public"."courses" ("id_course") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."course_user" ADD CONSTRAINT "fk_course_student__user" FOREIGN KEY ("id_user") REFERENCES "public"."users" ("id_user") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table courses
-- ----------------------------
ALTER TABLE "public"."courses" ADD CONSTRAINT "fk_course__calendar" FOREIGN KEY ("id_calendar") REFERENCES "public"."calendars" ("id_calendar") ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE "public"."courses" ADD CONSTRAINT "fk_course__user_subject" FOREIGN KEY ("id_user", "id_subject") REFERENCES "public"."user_subject" ("id_user", "id_subject") ON DELETE RESTRICT ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table modules
-- ----------------------------
ALTER TABLE "public"."modules" ADD CONSTRAINT "fk_module__course" FOREIGN KEY ("id_course") REFERENCES "public"."courses" ("id_course") ON DELETE RESTRICT ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table questions
-- ----------------------------
ALTER TABLE "public"."questions" ADD CONSTRAINT "fk_question__subcategory" FOREIGN KEY ("id_subcategory") REFERENCES "public"."subcategories" ("id_subcategory") ON DELETE RESTRICT ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table roles
-- ----------------------------
ALTER TABLE "public"."roles" ADD CONSTRAINT "fk_user_role" FOREIGN KEY ("id_user") REFERENCES "public"."users" ("id_user") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table subcategories
-- ----------------------------
ALTER TABLE "public"."subcategories" ADD CONSTRAINT "fk_subcategory__category" FOREIGN KEY ("id_category") REFERENCES "public"."categories" ("id_category") ON DELETE RESTRICT ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table user_question_class
-- ----------------------------
ALTER TABLE "public"."user_question_class" ADD CONSTRAINT "fk_user_question_class__question_class" FOREIGN KEY ("id_question", "id_class") REFERENCES "public"."class_question" ("id_question", "id_class") ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE "public"."user_question_class" ADD CONSTRAINT "fk_user_question_class__user" FOREIGN KEY ("id_user") REFERENCES "public"."users" ("id_user") ON DELETE RESTRICT ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table user_subject
-- ----------------------------
ALTER TABLE "public"."user_subject" ADD CONSTRAINT "fk_user_subject__subject" FOREIGN KEY ("id_subject") REFERENCES "public"."subjects" ("id_subject") ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE "public"."user_subject" ADD CONSTRAINT "fk_user_subject__user" FOREIGN KEY ("id_user") REFERENCES "public"."users" ("id_user") ON DELETE RESTRICT ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table user_subject_color
-- ----------------------------
ALTER TABLE "public"."user_subject_color" ADD CONSTRAINT "fk_user_subject_color__color" FOREIGN KEY ("id_color") REFERENCES "public"."colors" ("id_color") ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE "public"."user_subject_color" ADD CONSTRAINT "fk_user_subject_color__subject" FOREIGN KEY ("id_subject") REFERENCES "public"."subjects" ("id_subject") ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE "public"."user_subject_color" ADD CONSTRAINT "fk_user_subject_color__user" FOREIGN KEY ("id_user") REFERENCES "public"."users" ("id_user") ON DELETE RESTRICT ON UPDATE CASCADE;
