DROP TABLE IF EXISTS reservations CASCADE;
DROP TABLE IF EXISTS rooms CASCADE;
DROP TABLE IF EXISTS students CASCADE;

CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,

    full_name VARCHAR(100) NOT NULL,

    email VARCHAR(100) UNIQUE NOT NULL,

    major VARCHAR(50) NOT NULL
);

CREATE TABLE rooms (
    room_id SERIAL PRIMARY KEY,

    room_number VARCHAR(20) UNIQUE NOT NULL,

    capacity INT NOT NULL CHECK (capacity > 0),

    has_projector BOOLEAN DEFAULT FALSE
);


CREATE TABLE reservations (
    reservation_id SERIAL PRIMARY KEY,

    student_id INT NOT NULL REFERENCES students(student_id) ON DELETE CASCADE,

    room_id INT NOT NULL REFERENCES rooms(room_id) ON DELETE CASCADE,

    reservation_date DATE NOT NULL,

    hours_booked INT NOT NULL CHECK (hours_booked > 0 AND hours_booked <= 8),

    status VARCHAR(20) NOT NULL DEFAULT 'Confirmed' CHECK (status IN ('Confirmed', 'Cancelled'))
);
