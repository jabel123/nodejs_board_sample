CREATE TABLE comments (
  id INT NOT NULL AUTO_INCREMENT,
  commenter INT NOT NULL,
  comment VARCHAR(100) NOT NULL,
  created_at DATETIME NOT NULL DEFAULT now(),
  PRIMARY KEY(id),
  INDEX commenter_idx (commenter ASC),
  CONSTRAINT commenter
  FOREIGN KEY (commenter)
  REFERENCES users (id)
  ON DELETE CASCADE
  ON UPDATE CASCADE)
  COMMENT = '댓글'
  DEFAULT CHARSET=utf8mb4
  ENGINE=InnoDB;

create table users (
	id int not null auto_increment,
	name varchar(20) not null,
	age int unsigned not null,
	married tinyint not null,
	comment text null,
	created_at datetime not null default now(),
	primary key(id),
	unique index name_unique(name asc))
	default character set = utf8
	engine = innodb;

insert into users(name, age, married, comment) values ('zero', 24, 0, '자기소개');
insert into users(name, age, married, comment) values ('nero', 32, 1, '자기소개2');