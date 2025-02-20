CREATE DATABASE docker;

USE docker;

CREATE TABLE `akun` (
`id` int(11) NOT NULL,
`username` varchar(50) NOT NULL,
`email` varchar(50) NOT NULL,
`password` varchar(150) NOT NULL,
`login_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;

CREATE TABLE `container` (
`id` int(11) NOT NULL,
`name` varchar(30) NOT NULL,
`status` varchar(20) NOT NULL,
`srcport` int(10) NOT NULL,
`dstport` int(10) NOT NULL,
`user_id` int(11) NOT NULL,
`docker_data_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;

CREATE TABLE `docker_data` (
`id` varchar(10) NOT NULL,
`dockerfile` varchar(255) DEFAULT NULL,
`docker_image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;

ALTER TABLE `akun` ADD PRIMARY KEY (`id`);

ALTER TABLE `container` ADD PRIMARY KEY (`id`), ADD KEY `user_id` (`user_id`,`docker_data_id`), ADD KEY `docker_data_id` (`docker_data_id`);

ALTER TABLE `docker_data` ADD PRIMARY KEY (`id`);


ALTER TABLE `container`
ADD CONSTRAINT `container_ibfk_1` FOREIGN KEY
(`docker_data_id`) REFERENCES `docker_data` (`id`) ON DELETE
NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `container_ibfk_2` FOREIGN KEY (`user_id`)
REFERENCES `akun` (`id`) ON DELETE NO ACTION ON UPDATE No.
ACTION;
COMMIT;
