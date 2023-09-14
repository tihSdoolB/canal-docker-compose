CREATE USER 'canal'@'%' IDENTIFIED BY 'canal';
grant all privileges on `canal_manager`.* to 'canal'@'%';
flush privileges;