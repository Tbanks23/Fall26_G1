-- Student Task Tracker — Project 4 architecture sample (PostgreSQL)
-- Design artifact only. Do not assume it has been deployed or executed.
-- For a single-student classroom demonstrator; NOT suitable for an unauthenticated public multi-user app.

CREATE TABLE IF NOT EXISTS courses (
    course_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    course_name VARCHAR(120) NOT NULL UNIQUE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT courses_name_nonblank CHECK (length(btrim(course_name)) > 0)
);

CREATE TABLE IF NOT EXISTS assignments (
    assignment_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    course_id BIGINT NOT NULL REFERENCES courses(course_id) ON DELETE RESTRICT,
    title VARCHAR(200) NOT NULL,
    description TEXT,
    due_date DATE NOT NULL,
    is_complete BOOLEAN NOT NULL DEFAULT FALSE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT assignments_title_nonblank CHECK (length(btrim(title)) > 0)
);

CREATE INDEX IF NOT EXISTS idx_assignments_course_due
    ON assignments (course_id, due_date, title);
CREATE INDEX IF NOT EXISTS idx_assignments_completion_due
    ON assignments (is_complete, due_date, title);

-- Illustration: the future API will update updated_at whenever it edits a row.
-- The application should use parameterized queries rather than concatenating SQL strings.
