INSERT INTO students (full_name, email, major) VALUES
    ('Alice Johnson', 'alice.johnson@university.edu', 'Computer Science'),
    ('Bob Martinez', 'bob.martinez@university.edu', 'Mathematics'),
    ('Catherine Lee', 'catherine.lee@university.edu', 'Physics'),
    ('David Kim', 'david.kim@university.edu', 'Biology'),
    ('Emma Wilson', 'emma.wilson@university.edu', 'Engineering'),
    ('Frank Chen', 'frank.chen@university.edu', 'Computer Science'),
    ('Grace Patel', 'grace.patel@university.edu', 'Mathematics'),
    ('Henry Nguyen', 'henry.nguyen@university.edu', 'Physics'),
    ('Isabella Brown', 'isabella.brown@university.edu', 'Engineering'),
    ('James Taylor', 'james.taylor@university.edu', 'Biology');


INSERT INTO rooms (room_number, capacity, has_projector) VALUES
    ('A101', 4, FALSE),
    ('A202', 6, TRUE),     
    ('B101', 8, FALSE),   
    ('B202', 10, TRUE),    
    ('C101', 15, TRUE),   
    ('C303', 20, FALSE);   


INSERT INTO reservations (student_id, room_id, reservation_date, hours_booked, status) VALUES
    (1, 1, '2025-03-10', 2, 'Confirmed'),

    (2, 4, '2025-03-11', 3, 'Confirmed'),

    (1, 2, '2025-03-12', 4, 'Confirmed'),

    (3, 5, '2025-03-13', 1, 'Confirmed'),

    (4, 1, '2025-03-14', 5, 'Cancelled'),

    (5, 3, '2025-03-15', 3, 'Confirmed'),

    (6, 4, '2025-03-16', 6, 'Confirmed'),

    (7, 6, '2025-03-17', 2, 'Confirmed'),

    (2, 2, '2025-03-18', 8, 'Confirmed'),

    (8, 5, '2025-03-19', 4, 'Cancelled'),

    (9, 3, '2025-03-20', 7, 'Confirmed'),

    (1, 6, '2025-03-21', 3, 'Confirmed'),

    (10, 1, '2025-03-22', 2, 'Confirmed'),

    (6, 2, '2025-03-23', 5, 'Cancelled'),

    (5, 4, '2025-03-25', 4, 'Confirmed');
