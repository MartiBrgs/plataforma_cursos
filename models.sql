CREATE TABLE course (
    id INTEGER PRIMARY KEY,
    name VARCHAR,
    price INTEGER,
    description VARCHAR
);

CREATE TABLE category (
    id INTEGER PRIMARY KEY,
    course_id INTEGER REFERENCES course(id),
    name VARCHAR,
    description VARCHAR
);

CREATE TABLE forum (
    id INTEGER PRIMARY KEY,
    course_id INTEGER REFERENCES course(id),
    name VARCHAR,
    description VARCHAR
);

CREATE TABLE thread (
    id INTEGER PRIMARY KEY,
    forum_id INTEGER REFERENCES forum(id),
    name VARCHAR,
    description VARCHAR
);

CREATE TABLE post (
    id INTEGER PRIMARY KEY,
    thread_id INTEGER REFERENCES thread(id),
    content VARCHAR
);

CREATE TABLE post_user (
    post_id INTEGER REFERENCES post(id),
    user_id INTEGER REFERENCES user(id),
    post_datetime DATETIME
);

CREATE TABLE module (
    id INTEGER PRIMARY KEY,
    course_id INTEGER REFERENCES course(id),
    name VARCHAR,
    number INTEGER
);

CREATE TABLE lesson (
    id INTEGER PRIMARY KEY,
    module_id INTEGER REFERENCES module(id),
    name VARCHAR,
    number INTEGER,
    video_url VARCHAR,
    media_path VARCHAR
);

CREATE TABLE lesson_student (
    student_id INTEGER REFERENCES student(id),
    lesson_id INTEGER REFERENCES lesson(id),
    completion_datetime DATETIME
);

CREATE TABLE country (
    id INTEGER PRIMARY KEY,
    name VARCHAR,
    continent_id INTEGER REFERENCES continent(id)
);

CREATE TABLE continent (
    id INTEGER PRIMARY KEY,
    name VARCHAR
);

CREATE TABLE login_history (
    user_id INTEGER REFERENCES user(id),
    login_date DATETIME,
    ip_address VARCHAR
);

CREATE TABLE paymentGateway (
    id INTEGER PRIMARY KEY,
    name VARCHAR
);

CREATE TABLE payment_course (
    payment_id INTEGER REFERENCES payment(id),
    course_id INTEGER REFERENCES course(id)
);

CREATE TABLE payment_subscription (
    payment_id INTEGER REFERENCES payment(id),
    subscription_id INTEGER REFERENCES subscription(id)
);

CREATE TABLE subscription (
    id INTEGER PRIMARY KEY,
    name VARCHAR,
    price INTEGER,
    duration_month INTEGER
);

CREATE TABLE payment_type (
    id INTEGER PRIMARY KEY,
    name VARCHAR
);

CREATE TABLE payment (
    id INTEGER PRIMARY KEY,
    student_id INTEGER REFERENCES student(id),
    gateway_id INTEGER REFERENCES paymentGateway(id),
    payment_type_id INTEGER REFERENCES payment_type(id),
    amount INTEGER,
    payment_date DATETIME
);

CREATE TABLE student (
    id INTEGER PRIMARY KEY REFERENCES user(id),
    subscription_status INTEGER
);

CREATE TABLE teacher (
    id INTEGER PRIMARY KEY REFERENCES user(id),
    specialization VARCHAR,
    area INTEGER REFERENCES category(id)
);

CREATE TABLE assistant (
    id INTEGER PRIMARY KEY REFERENCES user(id),
    specialization VARCHAR,
    area INTEGER REFERENCES category(id)
);

CREATE TABLE user (
    id INTEGER PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR,
    email VARCHAR,
    password VARCHAR,
    country_id INTEGER REFERENCES country(id)
);

CREATE TABLE teaching (
    teacher_id INTEGER REFERENCES teacher(id),
    course_id INTEGER REFERENCES course(id),
    hours_per_week INTEGER,
    schedule VARCHAR
);

CREATE TABLE assist (
    assistant_id INTEGER REFERENCES assistant(id),
    course_id INTEGER REFERENCES course(id),
    hours_per_week INTEGER,
    schedule VARCHAR
);

CREATE TABLE enrolment (
    id INTEGER PRIMARY KEY,
    student_id INTEGER REFERENCES student(id),
    course_id INTEGER REFERENCES course(id),
    enrolment_datetime DATETIME,
    amount_paid INTEGER
);

CREATE TABLE invitation (
    id INTEGER PRIMARY KEY,
    inviter_id INTEGER REFERENCES user(id),
    invited_mail VARCHAR,
    datetime DATETIME,
    status_id INTEGER REFERENCES invitationStatus(id)
);

CREATE TABLE invitationStatus (
    id INTEGER PRIMARY KEY,
    name VARCHAR
);
