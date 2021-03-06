DROP DATABASE IF EXISTS tracker_allocations_dev;
DROP DATABASE IF EXISTS tracker_backlog_dev;
DROP DATABASE IF EXISTS tracker_registration_dev;
DROP DATABASE IF EXISTS tracker_timesheets_dev;
DROP DATABASE IF EXISTS tracker_allocations_test;
DROP DATABASE IF EXISTS tracker_backlog_test;
DROP DATABASE IF EXISTS tracker_registration_test;
DROP DATABASE IF EXISTS tracker_timesheets_test;

#CREATE USER IF NOT EXISTS 'tracker'@'%' IDENTIFIED WITH mysql_native_password BY 'tracker';
CREATE USER IF NOT EXISTS 'tracker'@'%' IDENTIFIED BY 'tracker';
GRANT ALL PRIVILEGES ON *.* TO 'tracker'@'%' identified by 'tracker';
FLUSH PRIVILEGES;

CREATE DATABASE tracker_allocations_dev;
CREATE DATABASE tracker_backlog_dev;
CREATE DATABASE tracker_registration_dev;
CREATE DATABASE tracker_timesheets_dev;
CREATE DATABASE tracker_allocations_test;
CREATE DATABASE tracker_backlog_test;
CREATE DATABASE tracker_registration_test;
CREATE DATABASE tracker_timesheets_test;
