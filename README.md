# Thực hành Trigger trong MySQL - company demo

## Mục tiêu
Tạo, kiểm thử và nộp ví dụ trigger trong MySQL. Trigger sẽ tự động gán `department` dựa trên `salary` khi INSERT vào bảng `employees`.

## Môi trường
- MySQL 5.7 / 8.x
- Local or remote MySQL server

## Cấu trúc repo
- sql/
  - create_db_and_table.sql
  - create_triggers.sql
  - drop_triggers.sql
  - test_triggers.sql
- results/
  - insert_and_select_results.txt
  - trigger_effects_verify.txt
- .gitignore

## Hướng dẫn chạy
1. Tạo database và bảng:
   ```bash
   mysql -u <user> -p < sql/create_db_and_table.sql
