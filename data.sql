-- Países y Continentes
INSERT INTO continent (name) VALUES
    ('Asia'),
    ('Europe'),
    ('North America'),
    ('South America'),
    ('Africa'),
    ('Oceania');

INSERT INTO country (name, continent_id) VALUES
    ('China', 1),
    ('Germany', 2),
    ('United States', 3),
    ('Brazil', 4),
    ('Chile', 4),
    ('South Africa', 5),
    ('Australia', 6);

-- Tipos de Pago
INSERT INTO payment_type (name) VALUES
    ('Course'),
    ('Subscription');

-- Pasarelas de Pago
INSERT INTO paymentGateway (name) VALUES
    ('Paypal'),
    ('Onepay'),
    ('Mercadopago');

-- Categorías de Curso
INSERT INTO category (course_id, name, description) VALUES
    (1, 'Programming', 'Learn programming skills'),
    (2, 'Science', 'Explore scientific principles'),
    (3, 'Business', 'Develop business acumen');

-- Cursos
INSERT INTO course (name, price, description) VALUES
    ('Introduction to Python', 50, 'Beginner-friendly Python course'),
    ('Physics 101', 75, 'Basic principles of physics'),
    ('Business Management', 60, 'Fundamentals of business');

-- Foros y Hilos
INSERT INTO forum (course_id, name, description) VALUES
    (1, 'Python Forum', 'Discuss Python programming'),
    (2, 'Physics Discussion', 'Share thoughts on physics'),
    (3, 'Business Insights', 'Exchange business ideas');

INSERT INTO thread (forum_id, name, description) VALUES
    (1, 'Getting Started with Python', 'Introduction to Python basics'),
    (2, 'Newtonian Mechanics', 'Discuss classical mechanics'),
    (3, 'Marketing Strategies', 'Share effective marketing strategies');

-- Lecciones y Módulos
INSERT INTO module (course_id, name, number) VALUES
    (1, 'Python Basics', 1),
    (1, 'Advanced Python', 2),
    (2, 'Classical Mechanics', 1);

INSERT INTO lesson (module_id, name, number, video_url, media_path) VALUES
    (1, 'Variables and Data Types', 1, 'https://example.com/video1', '/media/python_basics/lesson1'),
    (1, 'Control Flow', 2, 'https://example.com/video2', '/media/python_basics/lesson2'),
    (2, 'Object-Oriented Programming', 1, 'https://example.com/video3', '/media/advanced_python/lesson1');

-- Usuarios (Estudiantes, Profesores, Asistentes)
INSERT INTO user (first_name, last_name, email, password, country_id) VALUES
    ('John', 'Doe', 'john.doe@example.com', 'password123', 3),
    ('Alice', 'Smith', 'alice.smith@example.com', 'pass456', 2),
    ('Bob', 'Johnson', 'bob.johnson@example.com', 'secure789', 1);

INSERT INTO student (id, subscription_status) VALUES
    (1, 1),
    (2, 1),
    (3, 0);

INSERT INTO teacher (id, specialization, area) VALUES
    (2, 'Computer Science', 1);

INSERT INTO assistant (id, specialization, area) VALUES
    (3, 'Physics', 2);

-- Inscripciones
INSERT INTO enrolment (student_id, course_id, enrolment_datetime, amount_paid) VALUES
    (1, 1, '2023-01-01 08:00:00', 50),
    (2, 2, '2023-02-15 10:30:00', 75),
    (3, 3, '2023-03-20 14:45:00', 60);

-- Invitaciones y Estados de Invitación
INSERT INTO invitationStatus (name) VALUES
    ('Pending'),
    ('Accepted'),
    ('Rejected');

INSERT INTO invitation (inviter_id, invited_mail, datetime, status_id) VALUES
    (1, 'friend@example.com', '2023-04-01 09:00:00', 1),
    (2, 'colleague@example.com', '2023-04-05 11:15:00', 1),
    (3, 'invited@example.com', '2023-04-10 13:30:00', 3);

-- Tipos de Suscripción
INSERT INTO subscription (name, price, duration_month) VALUES
    ('Basic', 20, 1),
    ('Premium', 40, 3),
    ('Ultimate', 60, 6);

-- Pagos
INSERT INTO payment (student_id, gateway_id, payment_type_id, amount, payment_date) VALUES
    (1, 1, 1, 50, '2023-01-01 10:00:00'),
    (2, 2, 2, 75, '2023-02-15 12:30:00'),
    (3, 3, 3, 60, '2023-03-20 16:45:00');

-- Relaciones entre Pagos y Cursos
INSERT INTO payment_course (payment_id, course_id) VALUES
    (1, 1),
    (2, 2),
    (3, 3);

-- Relaciones entre Pagos y Suscripciones
INSERT INTO payment_subscription (payment_id, subscription_id) VALUES
    (1, 1),
    (2, 2),
    (3, 3);

-- Historial de Acceso
INSERT INTO login_history (user_id, login_date, ip_address) VALUES
    (1, '2023-01-01 10:05:00', '192.168.0.1'),
    (2, '2023-02-15 12:35:00', '192.168.0.2'),
    (3, '2023-03-20 17:00:00', '192.168.0.3');

-- Horarios de Enseñanza
INSERT INTO teaching (teacher_id, course_id, hours_per_week, schedule) VALUES
    (2, 1, 3, 'Monday, Wednesday, Friday 10:00 AM - 11:00 AM');

-- Horarios de Asistencia
INSERT INTO assist (assistant_id, course_id, hours_per_week, schedule) VALUES
    (3, 2, 2, 'Tuesday, Thursday 2:00 PM - 4:00 PM');

-- Publicaciones (Posts)
INSERT INTO post (thread_id, content) VALUES
    (1, 'Hello, world! I love learning Python.'),
    (2, 'What are your favorite physics concepts?'),
    (3, 'Discussing marketing strategies for business success.');

INSERT INTO post_user (post_id, user_id, post_datetime) VALUES
    (1, 1, '2023-01-02 11:30:00'),
    (2, 2, '2023-02-16 13:45:00'),
    (3, 3, '2023-03-21 18:00:00');

-- Lecciones y Estudiantes
INSERT INTO lesson_student (student_id, lesson_id, completion_datetime) VALUES
    (1, 1, '2023-01-03 14:00:00'),
    (2, 2, NULL),
    (3, 3, '2023-03-22 20:00:00');
