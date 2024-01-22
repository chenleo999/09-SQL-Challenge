-- Table: lc.department
CREATE TABLE IF NOT EXISTS lc.department
(
    dept_no character varying(10) COLLATE pg_catalog."default" NOT NULL,
    dept_name character varying(30) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT department_pkey PRIMARY KEY (dept_no)
);

-- Table: lc.title
CREATE TABLE IF NOT EXISTS lc.title
(
    title_id character varying(10) COLLATE pg_catalog."default" NOT NULL,
    title character varying(30) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT title_pkey PRIMARY KEY (title_id)
);

-- Table: lc.employee
CREATE TABLE IF NOT EXISTS lc.employee
(
    emp_no integer NOT NULL,
    emp_title_id character varying(10) COLLATE pg_catalog."default" NOT NULL,
    birth_date date NOT NULL,
    first_name character varying(30) COLLATE pg_catalog."default" NOT NULL,
    last_name character varying(30) COLLATE pg_catalog."default" NOT NULL,
    sex character varying(1) COLLATE pg_catalog."default" NOT NULL,
    hire_date date NOT NULL,
    CONSTRAINT employee_pkey PRIMARY KEY (emp_no),
    CONSTRAINT title FOREIGN KEY (emp_title_id)
        REFERENCES lc.title (title_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
);

-- Table: lc.dept_emp
CREATE TABLE IF NOT EXISTS lc.dept_emp
(
    emp_no integer NOT NULL,
    dept_no character varying(10) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT dept_no FOREIGN KEY (dept_no)
        REFERENCES lc.department (dept_no) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT emp_no FOREIGN KEY (emp_no)
        REFERENCES lc.employee (emp_no) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
);

-- Table: lc.dept_manager
CREATE TABLE IF NOT EXISTS lc.dept_manager
(
    dept_no character varying(10) COLLATE pg_catalog."default" NOT NULL,
    emp_no integer,
    CONSTRAINT dept_no FOREIGN KEY (dept_no)
        REFERENCES lc.department (dept_no) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT emp_no FOREIGN KEY (emp_no)
        REFERENCES lc.employee (emp_no) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
);

-- Table: lc.salary
CREATE TABLE IF NOT EXISTS lc.salary
(
    emp_no integer NOT NULL,
    salary integer NOT NULL,
    CONSTRAINT salary FOREIGN KEY (emp_no)
        REFERENCES lc.employee (emp_no) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
);