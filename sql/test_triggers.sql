-- Chạy các lệnh test để kiểm tra trigger hoạt động
USE company;

-- Dọn bảng test (nếu muốn)
TRUNCATE TABLE employees;

-- 1) Insert các bản ghi để trigger gán department tự động
INSERT INTO employees (name, department, salary) VALUES
('John Doe', 'A', 3500.00),
('Jane Smith', 'A', 2000.00),
('David Johnson', 'A', 6000.00);

-- 2) Kiểm tra dữ liệu sau khi insert
SELECT id, name, department, salary FROM employees ORDER BY id;

-- 3) Thử update salary để trigger BEFORE UPDATE chạy
UPDATE employees SET salary = 5200.00 WHERE name = 'Jane Smith';
SELECT id, name, department, salary FROM employees WHERE name = 'Jane Smith';

-- 4) Thêm ví dụ khác
INSERT INTO employees (name, department, salary) VALUES ('Alice Brown', 'X', 2999.99);
SELECT id, name, department, salary FROM employees WHERE name = 'Alice Brown';
