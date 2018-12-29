create database colege;



CREATE TABLE `colege`.`person` (
  `id` INT(20) NOT NULL AUTO_INCREMENT,
  `name` NVARCHAR(20) NOT NULL,
  `family` NVARCHAR(20) NOT NULL,
  `national_id` INT(20) NOT NULL,
  `student_id` INT(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `student_id_UNIQUE` (`student_id` ASC) VISIBLE);


CREATE TABLE `colege`.`teacher` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` NVARCHAR(20) NOT NULL,
  `family` NVARCHAR(20) NOT NULL,
  `person_id` INT(20) NOT NULL,
  `course_id` INT(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `person_id_UNIQUE` (`person_id` ASC) VISIBLE,
  UNIQUE INDEX `course_id_UNIQUE` (`course_id` ASC) VISIBLE);



CREATE TABLE `colege`.`course` (
  `id` INT(20) NOT NULL auto_increment,
  `name` VARCHAR(20) NOT NULL,
  `student_id` INT(20) NOT NULL,
  PRIMARY KEY (`id`));


CREATE TABLE `colege`.`student` (
  `id` INT(20) NOT NULL AUTO_INCREMENT,
  `name` NVARCHAR(20) NOT NULL,
  `family` NVARCHAR(20) NOT NULL,
  PRIMARY KEY (`student_id`));


CREATE TABLE `colege`.`major` (
  `id` INT(20) NOT NULL AUTO_INCREMENT,
  `name` NVARCHAR(20) NOT NULL,
  `code` INT(20) NOT NULL,
  `student_id` INT(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `student_id_UNIQUE` (`student_id` ASC) VISIBLE);


CREATE TABLE `colege`.`peyment` (
  `id` INT(20) NOT NULL AUTO_INCREMENT,
  `name` NVARCHAR(20) NOT NULL,
  `price` INT(20) NOT NULL,
  `student_id` INT(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `student_id_UNIQUE` (`student_id` ASC) VISIBLE);


CREATE TABLE `colege`.`student_course` (
  `id` INT(20) NOT NULL AUTO_INCREMENT,
  `name` NVARCHAR(45) NOT NULL,
  `student_id` INT(20) NOT NULL,
  `course_id` INT(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `student_id_UNIQUE` (`student_id` ASC) VISIBLE,
  UNIQUE INDEX `course_id_UNIQUE` (`course_id` ASC) VISIBLE);


ALTER TABLE `colege`.`person` 
ADD CONSTRAINT `person_student`
  FOREIGN KEY (`student_id`)
  REFERENCES `colege`.`student` (`id`);
  
  
  ALTER TABLE `colege`.`teacher` 
ADD CONSTRAINT `teacher_person`
  FOREIGN KEY (`person_id`)
  REFERENCES `colege`.`person` (`id`);
  
  
  
ALTER TABLE `colege`.`teacher` 
ADD CONSTRAINT `teacher_course`
  FOREIGN KEY (`course_id`)
  REFERENCES `colege`.`course` (`id`);
  
  ALTER TABLE `colege`.`major` 
ADD CONSTRAINT `major_student`
  FOREIGN KEY (`student_id`)
  REFERENCES `colege`.`student` (`id`);
  
  
  

  ALTER TABLE `colege`.`peyment` 
ADD CONSTRAINT `peymant_student`
  FOREIGN KEY (`student_id`)
  REFERENCES `colege`.`student` (`id`);
  
  
  INSERT INTO person (`name`,`family`,`national_id`,`student_id`) values ('abolfazl','nasero','16516','4');
  
  INSERT INTO student(`name`,`family`) values ('mohsen','abasi');
  
  select * from student;
  
  select * from person;
  
    INSERT INTO course(`name`,`student_id`) values ('java',3);
    
      INSERT INTO teacher (`name`,`family`,`person_id`,`course_id`) values ('hasan','karimi','5','3');
      
      
      INSERT INTO major(`name`,`code`,`student_id`) values ('it',3,3);
      
      INSERT INTO peyment(`price`,`student_id`,`name`) values (3000,3,'pay3');
      
      INSERT INTO student_course(`student_id`,`course_id`,`name`) values (2,2,'fizik');
      
      
         
      INSERT INTO teacher_course(`name`,`teacher_id`,`course_id`) values ('fizik',2,2);
      
      
      
        select * from student;


    delete from person where name=ali;
    
    
    
    
    





  