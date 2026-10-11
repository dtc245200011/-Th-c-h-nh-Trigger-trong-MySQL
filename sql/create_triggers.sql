-- Tạo trigger BEFORE INSERT để tự động gán department theo salary
DELIMITER //

DROP TRIGGER IF EXISTS company.update_department_before_insert//
CREATE TRIGGER company.update_department_before_insert
BEFORE INSERT ON company.employees
FOR EACH ROW
BEGIN
  IF NEW.salary >= 5000 THEN
    SET NEW.department = 'Management';
  ELSEIF NEW.salary >= 3000 THEN
    SET NEW.department = 'Sales';
  ELSE
    SET NEW.department = 'Support';
  END IF;
END//

-- Tạo trigger BEFORE UPDATE để đảm bảo cập nhật department khi salary thay đổi
DROP TRIGGER IF EXISTS company.update_department_before_update//
CREATE TRIGGER company.update_department_before_update
BEFORE UPDATE ON company.employees
FOR EACH ROW
BEGIN
  IF NEW.salary >= 5000 THEN
    SET NEW.department = 'Management';
  ELSEIF NEW.salary >= 3000 THEN
    SET NEW.department = 'Sales';
  ELSE
    SET NEW.department = 'Support';
  END IF;
END//

DELIMITER ;
