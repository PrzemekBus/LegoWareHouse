create table lwh_listings (
    lst_id number generated always as identity primary key,
    lst_prod_id number not null,
    lst_platform varchar2(20) not null,
    lst_url varchar2(200),
    lst_price number(10,2) not null,
    lst_start_date date default sysdate not null,
    lst_end_date date,
    lst_status varchar2(20) not null,
    lst_views number default 0,
    lst_watchers number default 0,
    lst_platform_fee number(10,2),
    lst_created_at timestamp default systimestamp not null,
    lst_created_by number not null,
    lst_modified_at timestamp,
    lst_modified_by number
);

comment on table lwh_listings is 'active marketplace listings';
comment on column lwh_listings.lst_id is 'auto-incremented listing id';
comment on column lwh_listings.lst_prod_id is 'reference to products table';
comment on column lwh_listings.lst_platform is 'reference to dictionaries (dct_name=platform)';
comment on column lwh_listings.lst_url is 'direct url to the listing';
comment on column lwh_listings.lst_price is 'current asking price';
comment on column lwh_listings.lst_start_date is 'listing publication date';
comment on column lwh_listings.lst_end_date is 'planned end date';
comment on column lwh_listings.lst_status is 'reference to dictionaries (dct_name=listing_status)';
comment on column lwh_listings.lst_views is 'view counter from marketplace';
comment on column lwh_listings.lst_watchers is 'number of users watching';
comment on column lwh_listings.lst_platform_fee is 'estimated commission fee';
comment on column lwh_listings.lst_created_at is 'record creation timestamp';
comment on column lwh_listings.lst_created_by is 'user who created listing';
comment on column lwh_listings.lst_modified_at is 'last modification timestamp';
comment on column lwh_listings.lst_modified_by is 'user who last modified';