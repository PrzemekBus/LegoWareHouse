create table lwh_products (
    prod_id number generated always as identity primary key,
    prod_name varchar2(100) not null,
    prod_set_number varchar2(20) not null,
    prod_theme varchar2(50),
    prod_release_year number(4),
    prod_piece_count number,
    prod_retail_price number(10,2),
    prod_purchase_price number(10,2) not null,
    prod_target_sale_price number(10,2),
    prod_min_stock number default 0,
    prod_current_stock number default 0 not null,
    prod_pco_id number not null,
    prod_is_active number(1) default 1 not null,
    prod_notes varchar2(500),
    prod_created_at timestamp default systimestamp not null,
    prod_created_by number not null,
    prod_modified_at timestamp,
    prod_modified_by number
);

comment on column lwh_products.prod_pco_id is 'reference to product condition';
comment on column lwh_products.prod_created_at is 'timestamp when record was created';
comment on column lwh_products.prod_created_by is 'user who created the record';
comment on column lwh_products.prod_modified_at is 'timestamp when record was last modified';
comment on column lwh_products.prod_modified_by is 'user who last modified the record';