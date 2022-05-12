
/*
	简单查询
		select 列名 from 表名;	
*/

-- 员工表
CREATE TABLE emp(
	eid INT,
	ename VARCHAR(20),
	sex CHAR(1),
	salary DOUBLE,
	hire_date DATE,
	dept_name VARCHAR(20)
);

#添加数据
INSERT INTO emp VALUES(1,'孙悟空','男',7200,'2013-02-04','教学部');
INSERT INTO emp VALUES(2,'猪八戒','男',3600,'2010-12-02','教学部');
INSERT INTO emp VALUES(3,'唐僧','男',9000,'2008-08-08','教学部');
INSERT INTO emp VALUES(4,'白骨精','女',5000,'2015-10-07','市场部');
INSERT INTO emp VALUES(5,'蜘蛛精','女',5000,'2011-03-14','市场部');
INSERT INTO emp VALUES(6,'玉兔精','女',200,'2000-03-14','市场部');
INSERT INTO emp VALUES(7,'林黛玉','女',10000,'2019-10-07','财务部');
INSERT INTO emp VALUES(8,'黄蓉','女',3500,'2011-09-14','财务部');
INSERT INTO emp VALUES(9,'吴承恩','男',20000,'2000-03-14',NULL);
INSERT INTO emp VALUES(10,'孙悟饭','男', 10,'2020-03-14',财务部);


-- 查询emp 中所有数据
SELECT * FROM emp;

SELECT eid,ename FROM emp;

SELECT 
	eid AS '编号',  # 别名 AS 可以省略
	ename AS '姓名',
	sex '性别'
FROM emp;


-- 查询有几个部门
SELECT dept_name FROM emp;

-- 去重：distinct
SELECT DISTINCT dept_name FROM emp;

SELECT ename, salary + 1000 FROM emp;

-- 查询操作并不会修改数据库中的数据


/*
	条件查询
		select 列名 from 表名 where 条件表达式;
		
		比较运算符：
			> < <= >= = <> !=
			between ... and ... 
			in(集合)
			like'%张%'
			is null
			
		逻辑运算符：&&（and） ||（or） not 
			
*/
