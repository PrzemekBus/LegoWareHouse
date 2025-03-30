insert into lwh_users (
    usr_username,
    usr_password,
    usr_email,
    usr_first_name,
    usr_last_name,
    usr_is_active
) values (
    'Admin',
    'admin@example.com',
    'hashed_password',
    'admin',
    'root',
    1
);

commit;