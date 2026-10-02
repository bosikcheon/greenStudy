-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        8.0.44 - MySQL Community Server - GPL
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  12.10.0.7000
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- greenstudy 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `greenstudy` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `greenstudy`;

-- 테이블 greenstudy.board 구조 내보내기
CREATE TABLE IF NOT EXISTS `board` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `mid` varchar(20) NOT NULL,
  `nickName` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `hostIp` varchar(40) NOT NULL,
  `openSw` char(2) DEFAULT 'OK',
  `readNum` int DEFAULT '0',
  `wDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `good` int DEFAULT '0',
  `complaint` char(2) DEFAULT 'NO',
  PRIMARY KEY (`idx`),
  KEY `mid` (`mid`),
  CONSTRAINT `board_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `member` (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 greenstudy.board:~13 rows (대략적) 내보내기
DELETE FROM `board`;
INSERT INTO `board` (`idx`, `mid`, `nickName`, `title`, `content`, `hostIp`, `openSw`, `readNum`, `wDate`, `good`, `complaint`) VALUES
	(1, 'admin', '관리맨', '게시판 서비시 개시', '게시판서비스를 시작합니다. 많은 관심 부탁드려요.', '192.168.50.20', 'OK', 3, '2026-10-02 12:05:36', 0, 'NO'),
	(2, 'admin', '관리맨', '안녕하세요', '이곳은 게시판입니다.\r\n글을 등록하세요\r\n\r\n잘 보일까요?', '0:0:0:0:0:0:0:1', 'OK', 3, '2026-10-02 12:24:07', 0, 'NO'),
	(4, 'admin', '관리맨', '글 연습입니다.', '연습이예요,\r\n잘 보이죠..', '127.0.0.1', 'OK', 3, '2026-10-02 12:45:32', 0, 'NO'),
	(5, 'admin', '관리맨', '글연습2', '글연습2222\r\n글연습2333\r\n글연습2444', '192.168.50.20', 'OK', 28, '2026-10-02 12:46:27', 0, 'NO'),
	(7, 'admin', '관리맨', '33', '333', '192.168.50.20', 'OK', 0, '2026-10-02 15:32:37', 0, 'NO'),
	(8, 'admin', '관리맨', '1234', '1234', '192.168.50.20', 'OK', 0, '2026-10-02 15:32:43', 0, 'NO'),
	(9, 'admin', '관리맨', '666', '6666', '192.168.50.20', 'OK', 0, '2026-10-02 15:32:48', 0, 'NO'),
	(10, 'admin', '관리맨', '42343', '43242', '192.168.50.20', 'OK', 0, '2026-10-02 15:32:54', 0, 'NO'),
	(11, 'admin', '관리맨', '8787', '7878', '192.168.50.20', 'OK', 0, '2026-10-02 15:33:00', 0, 'NO'),
	(12, 'admin', '관리맨', '8989', '89898\r\n9090', '192.168.50.20', 'OK', 0, '2026-10-02 15:33:09', 0, 'NO'),
	(13, 'admin', '관리맨', '1213123', '123123', '192.168.50.20', 'OK', 0, '2026-10-02 15:33:16', 0, 'NO'),
	(14, 'admin', '관리맨', '444', '4444', '192.168.50.20', 'OK', 0, '2026-10-02 15:34:56', 0, 'NO'),
	(15, 'admin', '관리맨', '23234', '23423', '192.168.50.20', 'OK', 0, '2026-10-02 15:35:01', 0, 'NO');

-- 테이블 greenstudy.dbtest 구조 내보내기
CREATE TABLE IF NOT EXISTS `dbtest` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `mid` varchar(20) NOT NULL,
  `pwd` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(10) NOT NULL,
  `gender` char(2) DEFAULT '여자',
  `age` int DEFAULT '20',
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 greenstudy.dbtest:~5 rows (대략적) 내보내기
DELETE FROM `dbtest`;
INSERT INTO `dbtest` (`idx`, `mid`, `pwd`, `name`, `gender`, `age`) VALUES
	(12, 'hkd1234', '1234', '홍길동2', '여자', 33),
	(13, 'kms1234', '1234', '김말숙', '여자', 29),
	(15, 'admin', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', '관리자', '여자', 20),
	(16, 'gid1234', 'b49f898c77f6a605f86fe7a0967ec8a4a53446f8f909f79eed2a71966f1b4adf', '고인돌', '여자', 19),
	(17, 'kya', '33566557b97345f944c84ee8de7c5542791d6cad60d87fcb87a127cf316821a6838e', '김연아', '여자', 31);

-- 테이블 greenstudy.insa 구조 내보내기
CREATE TABLE IF NOT EXISTS `insa` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `mid` varchar(20) NOT NULL,
  `pwd` varchar(15) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` int DEFAULT '20',
  `gender` char(2) DEFAULT '여자',
  `address` varchar(10) DEFAULT NULL,
  `ipsail` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 greenstudy.insa:~14 rows (대략적) 내보내기
DELETE FROM `insa`;
INSERT INTO `insa` (`idx`, `mid`, `pwd`, `name`, `age`, `gender`, `address`, `ipsail`) VALUES
	(1, 'admin', '1234', '관리자', 20, '여자', NULL, '2026-09-17 12:33:19'),
	(2, 'hkd1234', '1234', '홍길동', 25, '남자', '서울', '2026-09-17 12:33:19'),
	(3, 'kms1234', '1234', '김말숙', 35, '여자', '청주', '2026-09-17 12:33:19'),
	(4, 'lkj1234', '1234', '이기자', 29, '남자', '서울', '2026-09-17 12:33:19'),
	(5, 'kya1234', '1234', '김연아', 43, '여자', '울산', '2026-09-17 12:33:19'),
	(6, 'snm1234', '1234', '소나무', 50, '남자', '제주', '2026-09-17 12:33:19'),
	(7, 'gid1234', '1234', '고인돌', 39, '남자', '서울', '2026-09-17 12:33:19'),
	(8, 'kkc1234', '1234', '강감찬', 26, '남자', '청주', '2026-09-17 12:33:19'),
	(9, 'kjm1234', '1234', '김장미', 19, '여자', '울산', '2026-09-17 12:33:19'),
	(10, 'lgy1234', '1234', '이가연', 21, '여자', '인천', '2026-09-17 12:33:19'),
	(11, 'kmk1234', '1234', '김문경', 28, '여자', '서울', '2026-09-17 12:33:19'),
	(12, 'kkc12345', '1234', '강감찬2', 26, '남자', '청주', '2026-09-01 00:00:00'),
	(13, 'kjm12345', '1234', '김장미2', 19, '여자', '울산', '2020-01-01 00:00:00'),
	(14, 'lgy12345', '1234', '이가연2', 21, '여자', '인천', '2022-12-30 00:00:00'),
	(15, 'kmk12345', '1234', '김문경2', 28, '여자', '서울', '2000-10-05 00:00:00');

-- 테이블 greenstudy.member 구조 내보내기
CREATE TABLE IF NOT EXISTS `member` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `mid` varchar(30) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `nickName` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `gender` char(2) NOT NULL DEFAULT '남자',
  `birthday` datetime DEFAULT CURRENT_TIMESTAMP,
  `tel` varchar(15) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(60) NOT NULL,
  `homePage` varchar(60) DEFAULT NULL,
  `job` varchar(20) DEFAULT NULL,
  `hobby` varchar(100) DEFAULT NULL,
  `photo` varchar(100) DEFAULT 'noimage.jpg',
  `content` text,
  `userInfor` char(3) DEFAULT '공개',
  `userDel` char(2) DEFAULT 'NO',
  `point` int DEFAULT '100',
  `level` int DEFAULT '1',
  `visitCnt` int DEFAULT '0',
  `startDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `todayCnt` int DEFAULT '0',
  PRIMARY KEY (`idx`),
  UNIQUE KEY `mid` (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 greenstudy.member:~2 rows (대략적) 내보내기
DELETE FROM `member`;
INSERT INTO `member` (`idx`, `mid`, `pwd`, `nickName`, `name`, `gender`, `birthday`, `tel`, `address`, `email`, `homePage`, `job`, `hobby`, `photo`, `content`, `userInfor`, `userDel`, `point`, `level`, `visitCnt`, `startDate`, `lastDate`, `todayCnt`) VALUES
	(12, 'admin', '5040d55a5df7b24ee81f9421abd96c27599c99db6246261ac19bcdf0af8f8236ebe2', '관리맨', '관리자', '남자', '2026-06-17 00:00:00', '010-3423-2704', '', '', 'http://blog.naver.com/cjsk1126', '기타', '등산/수영/영화감상/기타', 'noimage.jpg', '관리자입니다.\r\n잘 부탁드립니다.', '공개', 'NO', 100, 0, 0, '2026-10-01 10:41:00', '2026-10-02 16:00:12', 0),
	(13, 'kms1234', '48603d86a0dad815e4981dd5a2c6401812e09d4ed8b24e175f4b74b2c6198c8e93b6', '김장미', '김말숙', '여자', '1982-10-01 00:00:00', '010-1111-1111', '', '', 'http://blog.naver.com/cjsk1126', '의사', '등산/수영/기타', 'noimage.jpg', '김장미 입니다.', '공개', 'NO', 100, 2, 0, '2026-10-01 10:55:49', '2026-10-02 14:18:52', 0),
	(14, 'ctom1234', '124353b5c6ce7d0c3d1921ce3ffa0bd1b450c0248b209621216cd4a8ac724af13703', '씨톰맨', '씨톰', '여자', '2012-05-01 00:00:00', '010-4545-4545', ' / / / ', 'ctom1234@hanmail.net', 'http://', '기타', '기타', 'noimage.jpg', '씨톰입니다.', '공개', 'NO', 100, 3, 0, '2026-10-01 16:09:51', '2026-10-01 16:10:04', 0);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
