CREATE TABLE `student` (
    Id INT auto_increment,
    name VARCHAR(255),
    Email VARCHAR(255) UNIQUE,
    Address VARCHAR(255) NOT NULL DEFAULT 'Chennai',
    PRIMARY KEY (Id)
);

insert into student (name, Email, Address) values('Ram', 'ram@gmail.com','Mumbai');
SELECT * from student;

CREATE TABLE batch (
    batchId INT AUTO_INCREMENT,
    studentId INT,
    Batchname int,
    PRIMARY KEY (batchId),
    FOREIGN KEY (studentId) REFERENCES student(Id)
);

SELECT * from batch;
insert into batch (studentId, Batchname) values('10', '30');

CREATE TABLE task (
    taskId INT AUTO_INCREMENT,
    studentId INT,
    task int,
    PRIMARY KEY (taskId),
    FOREIGN KEY (studentId) REFERENCES student(Id)
);
SELECT * from task;
insert into task (studentId, task) values('10', '45');

CREATE TABLE mentor (
    mentorId INT AUTO_INCREMENT,
    studentId INT,
    mentor varchar(255),
    PRIMARY KEY (mentorId),
	FOREIGN KEY (studentId) REFERENCES student(Id)
);
SELECT * from mentor;
insert into mentor (studentId, mentor) values('10', 'Mary');

SELECT * from student;
SELECT * from batch;
SELECT * from task;
SELECT * from mentor;
select * from student s inner join batch b on s.Id=b.batchId;


