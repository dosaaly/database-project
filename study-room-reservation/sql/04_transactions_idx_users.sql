BEGIN;

    INSERT INTO reservations (student_id, room_id, reservation_date, hours_booked, status)
    VALUES (3, 2, '2025-04-01', 3, 'Confirmed');

COMMIT;


BEGIN;

    INSERT INTO reservations (student_id, room_id, reservation_date, hours_booked, status)
    VALUES (1, 3, '2025-03-12', 2, 'Confirmed');

    SELECT COUNT(*) FROM reservations
    WHERE student_id = 1 AND reservation_date = '2025-03-12';

ROLLBACK;


CREATE INDEX idx_reservations_date ON reservations(reservation_date);

CREATE INDEX idx_reservations_student ON reservations(student_id);

CREATE INDEX idx_reservations_room ON reservations(room_id);


CREATE USER readonly_user WITH PASSWORD 'readonly123';

GRANT CONNECT ON DATABASE study_room_db TO readonly_user;

GRANT SELECT ON ALL TABLES IN SCHEMA public TO readonly_user;

CREATE USER admin_user WITH PASSWORD 'admin123';

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO admin_user;


