-- auto-generated definition
create table course
(
    cno       varchar(10) null,
    cname     varchar(10) null,
    tno       varchar(12) null,
    teacher   varchar(10) null,
    period varchar (10) null comment '学时',
    classtime varchar(10) null,
    classroom varchar(10) null,
    state     varchar(10) null comment '
0 申请增加新课程
1 申请删除旧课程
2 申请修改课程
3 可选（激活）
4 等待课程安排
5 已删除
6 拒绝申请 '
);
INSERT INTO tmsm.course (cno, cname, tno, teacher, period, classtime, classroom, state) VALUES ('a001', '高等数学', 't001', '王尼尼', '48', '周五', '一教', '3');
INSERT INTO tmsm.course (cno, cname, tno, teacher, period, classtime, classroom, state) VALUES ('a002', '离散数学', 't002', '陆怡婷', '52', '周五', '五教', '3');
INSERT INTO tmsm.course (cno, cname, tno, teacher, period, classtime, classroom, state) VALUES ('a003', '数学建模', 't003', '路易斯', '46', '周五', '五教', '3');
INSERT INTO tmsm.course (cno, cname, tno, teacher, period, classtime, classroom, state) VALUES ('a004', '线性代数', 't004', '达芬奇', '42', '周五', '五教', '3');
INSERT INTO tmsm.course (cno, cname, tno, teacher, period, classtime, classroom, state) VALUES ('b001', '大学语文', 't005', '阿萨斯', '46', '周五', '五教', '3');
INSERT INTO tmsm.course (cno, cname, tno, teacher, period, classtime, classroom, state) VALUES ('b002', '大学数学', 't006', '尼克尔', '52', '周四', '五教', '3');
INSERT INTO tmsm.course (cno, cname, tno, teacher, period, classtime, classroom, state) VALUES ('b003', '大学英语', 't007', '桐人君', '46', '周四', '五教', '3');
INSERT INTO tmsm.course (cno, cname, tno, teacher, period, classtime, classroom, state) VALUES ('b004', '大学物理', 't008', '明代尔', '33', '周四', '五教', '3');
INSERT INTO tmsm.course (cno, cname, tno, teacher, period, classtime, classroom, state) VALUES ('b005', '大学生物', 't009', '李义海', '33', '周四', '五教', '3');
INSERT INTO tmsm.course (cno, cname, tno, teacher, period, classtime, classroom, state) VALUES ('b006', '大学化学', 't010', '鲁军一', '33', '周三', '五教', '3');


-- auto-generated definition
create table course_select
(
    cno varchar(10) null,
    sno varchar(12) not null
);

INSERT INTO tmsm.course_select (cno, sno) VALUES ('b001', 'C11514008');
INSERT INTO tmsm.course_select (cno, sno) VALUES ('b002', 'C11514009');
INSERT INTO tmsm.course_select (cno, sno) VALUES ('b003', 'C11514010');
INSERT INTO tmsm.course_select (cno, sno) VALUES ('b004', 'C11514011');
INSERT INTO tmsm.course_select (cno, sno) VALUES ('b005', 'C11514012');
INSERT INTO tmsm.course_select (cno, sno) VALUES ('b006', 'E11514025');
INSERT INTO tmsm.course_select (cno, sno) VALUES ('a001', 'E11514025');
INSERT INTO tmsm.course_select (cno, sno) VALUES ('a002', 'C11514012');
INSERT INTO tmsm.course_select (cno, sno) VALUES ('a003', 'C11514011');
INSERT INTO tmsm.course_select (cno, sno) VALUES ('a004', 'C11514010');


-- auto-generated definition
create table notes
(
    cno       varchar(10) null,
    cname     varchar(10) null,
    teacher   varchar(10) null,
    tno       varchar(10) null,
    period varchar (10) null,
    classtime varchar(10) null,
    classroom varchar(10) null,
    state     varchar(10) null
);


INSERT INTO tmsm.notes (cno, cname, teacher, tno, period, classtime, classroom, state) VALUES ('1231', '1231', '王尼尼', 't001', '3123', '13123', '13123', '想删除');

-- auto-generated definition
create table score
(
    sno    varchar(12) null,
    cno    varchar(12) null,
    cname  varchar(10) null,
    sscore varchar(10) null
);

INSERT INTO tmsm.score (sno, cno, cname, sscore) VALUES ('B11514003', 'a001', '高等数学', '99');
INSERT INTO tmsm.score (sno, cno, cname, sscore) VALUES ('B11514003', 'a002', '离散数学', '84');
INSERT INTO tmsm.score (sno, cno, cname, sscore) VALUES ('B11514003', 'a003', '数学建模', '84');
INSERT INTO tmsm.score (sno, cno, cname, sscore) VALUES ('B31514004', 'a003', '数学建模', null);
INSERT INTO tmsm.score (sno, cno, cname, sscore) VALUES ('B31514004', 'a004', '线性代数', null);
INSERT INTO tmsm.score (sno, cno, cname, sscore) VALUES ('B31514004', 'b001', '大学语文', null);
INSERT INTO tmsm.score (sno, cno, cname, sscore) VALUES ('B31514004', 'a003', '数学建模', null);
INSERT INTO tmsm.score (sno, cno, cname, sscore) VALUES ('B31514004', 'b001', '大学语文', null);
INSERT INTO tmsm.score (sno, cno, cname, sscore) VALUES ('B31514004', '1321', '2313', null);
INSERT INTO tmsm.score (sno, cno, cname, sscore) VALUES ('123', '1321', '2313', null);


-- auto-generated definition
create table student
(
    sno     varchar(10) not null
        primary key,
    sname   varchar(10) not null,
    classes varchar(10) not null
);

INSERT INTO tmsm.student (sno, sname, classes) VALUES ('B11514003', '李菲倩', '1班');
INSERT INTO tmsm.student (sno, sname, classes) VALUES ('B31514004', '李玉', '1班');
INSERT INTO tmsm.student (sno, sname, classes) VALUES ('C11514005', '黄年', '1班');
INSERT INTO tmsm.student (sno, sname, classes) VALUES ('C11514006', '陈心', '1班');
INSERT INTO tmsm.student (sno, sname, classes) VALUES ('C11514008', '许鹏怡', '2班');
INSERT INTO tmsm.student (sno, sname, classes) VALUES ('C11514009', '金东', '2班');
INSERT INTO tmsm.student (sno, sname, classes) VALUES ('C11514010', '黄林冬', '2班');
INSERT INTO tmsm.student (sno, sname, classes) VALUES ('C11514011', '李静', '2班');
INSERT INTO tmsm.student (sno, sname, classes) VALUES ('C11514012', '王朔雪', '3班');
INSERT INTO tmsm.student (sno, sname, classes) VALUES ('E11514025', '叶韬君', '5班');


-- auto-generated definition
create table teacher
(
    tno        varchar(10) not null
        primary key,
    tname      varchar(10) not null,
    department varchar(10) not null,
    cname      varchar(10) null,
    cno        varchar(10) null
);

INSERT INTO tmsm.teacher (tno, tname, department, cname, cno) VALUES ('t001', '王尼尼', '计算机', '高等数学', 'a001');
INSERT INTO tmsm.teacher (tno, tname, department, cname, cno) VALUES ('t002', '陆怡婷', '计算机', '离散数学', 'a002');
INSERT INTO tmsm.teacher (tno, tname, department, cname, cno) VALUES ('t003', '路易斯', '计算机', '数学建模', 'a003');
INSERT INTO tmsm.teacher (tno, tname, department, cname, cno) VALUES ('t004', '达芬奇', '计算机', '线性代数', 'a004');
INSERT INTO tmsm.teacher (tno, tname, department, cname, cno) VALUES ('t005', '阿萨斯', '计算机', '大学语文', 'b001');
INSERT INTO tmsm.teacher (tno, tname, department, cname, cno) VALUES ('t006', '尼克尔', '计算机', '大学数学', 'b002');
INSERT INTO tmsm.teacher (tno, tname, department, cname, cno) VALUES ('t007', '桐人君', '计算机', '大学英语', 'b003');
INSERT INTO tmsm.teacher (tno, tname, department, cname, cno) VALUES ('t008', '明代尔', '计算机', '大学物理', 'b004');
INSERT INTO tmsm.teacher (tno, tname, department, cname, cno) VALUES ('t009', '李义海', '计算机', '大学生物', 'b005');
INSERT INTO tmsm.teacher (tno, tname, department, cname, cno) VALUES ('t010', '鲁军一', '计算机', '大学化学', 'b006');


-- auto-generated definition
create table user
(
    id        varchar(12) not null
        primary key,
    password  varchar(12) null,
    authority int         null
);

INSERT INTO tmsm.user (id, password, authority) VALUES ('2005010501', 'lxl', 1);



