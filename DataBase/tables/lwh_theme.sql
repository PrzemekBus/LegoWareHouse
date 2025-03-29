create table lwh_theme (
    th_id number generated always as identity primary key,
    th_name varchar2(100) not null unique,
    th_description varchar2(500),
    th_logo_html varchar2(2000),
    th_logo_blob blob,
    th_is_active number(1) default 1 not null,
    th_created_at timestamp default systimestamp not null,
    th_created_by number not null,
    th_modified_at timestamp,
    th_modified_by number
);

comment on table lwh_theme is 'Table storing LEGO set themes (series)';
comment on column lwh_theme.th_id is 'Unique identifier for the theme';
comment on column lwh_theme.th_name is 'Name of the LEGO theme (e.g., Star Wars, Technic)';
comment on column lwh_theme.th_description is 'Description of the LEGO theme';
comment on column lwh_theme.th_logo_html is 'HTML representation of the theme logo';
comment on column lwh_theme.th_logo_blob is 'Binary representation of the theme logo';
comment on column lwh_theme.th_is_active is 'Indicates if the theme is active (1 = yes, 0 = no)';
comment on column lwh_theme.th_created_at is 'Timestamp when the theme was created';
comment on column lwh_theme.th_created_by is 'User who created the theme';
comment on column lwh_theme.th_modified_at is 'Timestamp when the theme was last modified';
comment on column lwh_theme.th_modified_by is 'User who last modified the theme';