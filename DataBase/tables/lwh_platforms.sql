create table lwh_platforms (
    pf_id number generated always as identity primary key,
    pf_name varchar2(100) not null unique,
    pf_url varchar2(200),
    pf_logo_html varchar2(2000),
    pf_logo_blob blob,
    pf_commission_rate number(5, 2) not null,
    pf_is_active number(1) default 1 not null,
    pf_created_at timestamp default systimestamp not null,
    pf_created_by number not null,
    pf_modified_at timestamp,
    pf_modified_by number
);

comment on table lwh_platforms is 'Table storing platforms for sales and purchases';
comment on column lwh_platforms.pf_id is 'Unique identifier for the platform';
comment on column lwh_platforms.pf_name is 'Name of the platform (e.g., Allegro, eBay)';
comment on column lwh_platforms.pf_url is 'URL of the platform';
comment on column lwh_platforms.pf_logo_html is 'HTML representation of the platform logo';
comment on column lwh_platforms.pf_logo_blob is 'Binary representation of the platform logo';
comment on column lwh_platforms.pf_commission_rate is 'Commission rate charged by the platform (in percentage)';
comment on column lwh_platforms.pf_is_active is 'Indicates if the platform is active (1 = yes, 0 = no)';
comment on column lwh_platforms.pf_created_at is 'Timestamp when the platform record was created';
comment on column lwh_platforms.pf_created_by is 'User who created the platform record';
comment on column lwh_platforms.pf_modified_at is 'Timestamp when the platform record was last modified';
comment on column lwh_platforms.pf_modified_by is 'User who last modified the platform record';