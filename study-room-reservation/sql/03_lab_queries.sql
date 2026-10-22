SELECT * FROM students;

SELECT * FROM rooms;

SELECT * FROM reservations;

INSERT INTO students (full_name, email, major)
VALUES ('Karen White', 'karen.white@university.edu', 'Chemistry');


UPDATE reservations
SET status = 'Cancelled'
WHERE reservation_id = 1;

DELETE FROM reservations
WHERE reservation_id = 5;


SELECT * FROM rooms
WHERE capacity >= 10;

SELECT * FROM rooms
WHERE has_projector = TRUE;

SELECT * FROM rooms
WHERE capacity >= 6 AND has_projector = TRUE;

SELECT * FROM reservations
WHERE reservation_date = '2025-03-15';

SELECT * FROM reservations
WHERE status = 'Confirmed'
ORDER BY reservation_date;

SELECT * FROM students
WHERE major = 'Computer Science' OR major = 'Mathematics';


SELECT COUNT(*) AS total_reservations
FROM reservations;

SELECT SUM(hours_booked) AS total_hours_booked
FROM reservations;

SELECT AVG(hours_booked) AS avg_hours_booked
FROM reservations;

SELECT MIN(capacity) AS smallest_room,
       MAX(capacity) AS largest_room
FROM rooms;

SELECT student_id, COUNT(*) AS reservation_count
FROM reservations
GROUP BY student_id;

SELECT room_id, SUM(hours_booked) AS total_hours
FROM reservations
GROUP BY room_id;

SELECT s.major, COUNT(*) AS total_bookings
FROM reservations r
INNER JOIN students s ON r.student_id = s.student_id
GROUP BY s.major;

SELECT student_id, COUNT(*) AS reservation_count
FROM reservations
GROUP BY student_id
HAVING COUNT(*) > 1;


SELECT s.full_name,
       r.reservation_id,
       r.room_id,
       r.reservation_date,
       r.hours_booked,
       r.status
FROM reservations r
INNER JOIN students s ON r.student_id = s.student_id;

SELECT s.full_name,
       rm.room_number,
       r.reservation_date,
       r.hours_booked,
       r.status
FROM reservations r
INNER JOIN students s ON r.student_id = s.student_id
INNER JOIN rooms rm ON r.room_id = rm.room_id;


SELECT rm.room_number,
       rm.capacity,
       rm.has_projector,
       COUNT(r.reservation_id) AS booking_count
FROM rooms rm
LEFT JOIN reservations r ON rm.room_id = r.room_id
GROUP BY rm.room_number, rm.capacity, rm.has_projector;


SELECT * FROM reservations
WHERE hours_booked > (SELECT AVG(hours_booked) FROM reservations);

SELECT * FROM rooms
WHERE room_id NOT IN (SELECT room_id FROM reservations);

SELECT * FROM students
WHERE student_id IN (SELECT student_id FROM reservations WHERE status = 'Confirmed');
