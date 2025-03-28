create table lwh_users (
    usr_id number generated always as identity primary key,
    usr_username varchar2(50) not null unique,
    usr_password varchar2(100) not null,
    usr_email varchar2(100) not null unique,
    usr_first_name varchar2(50),
    usr_last_name varchar2(50),
    usr_is_active number(1) default 1 not null,
    usr_created_at timestamp default systimestamp not null,
    usr_last_login timestamp
);

comment on table lwh_users is 'table storing system users information';
comment on column lwh_users.usr_id is 'unique user identifier (auto-incremented)';
comment on column lwh_users.usr_username is 'unique username for login';
comment on column lwh_users.usr_password is 'encrypted user password';
comment on column lwh_users.usr_email is 'user email address';
comment on column lwh_users.usr_first_name is 'user first name';
comment on column lwh_users.usr_last_name is 'user last name';
comment on column lwh_users.usr_is_active is 'is user active? (1-yes, 0-no)';
comment on column lwh_users.usr_created_at is 'timestamp when user was created';
comment on column lwh_users.usr_last_login is 'timestamp of last successful login';