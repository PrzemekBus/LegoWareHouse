create table lwh_products (
    prod_id number generated always as identity primary key,
    prod_name varchar2(100) not null,
    prod_eng_name varchar2(100),
    prod_description varchar2(4000),
    prod_set_number varchar2(20) not null,
    prod_th_id number,
    prod_release_year number(4),
    prod_pieces_count number,
    prod_minifigs_count number,
    prod_retail_price number(10,2),
    prod_is_active number(1) default 1 not null,
    prod_created_at timestamp default systimestamp not null,
    prod_created_by number not null,
    prod_modified_at timestamp,
    prod_modified_by number
);

comment on table lwh_products is 'Table containing LEGO product details';

comment on column lwh_products.prod_id is 'Unique identifier for the product';
comment on column lwh_products.prod_name is 'Name of the product';
comment on column lwh_products.prod_eng_name is 'English name of the product';
comment on column lwh_products.prod_description is 'Description of the product';
comment on column lwh_products.prod_set_number is 'Set number of the product';
comment on column lwh_products.prod_th_id is 'Foreign key for theme product';
comment on column lwh_products.prod_release_year is 'Year the product was released';
comment on column lwh_products.prod_pieces_count is 'Number of pieces in the product';
comment on column lwh_products.prod_minifigs_count is 'Number of minifigures in the product';
comment on column lwh_products.prod_retail_price is 'Retail price of the product';
comment on column lwh_products.prod_is_active is 'Indicates if the product is active';
comment on column lwh_products.prod_created_at is 'Timestamp when the record was created';
comment on column lwh_products.prod_created_by is 'User who created the record';
comment on column lwh_products.prod_modified_at is 'Timestamp when the record was last modified';
comment on column lwh_products.prod_modified_by is 'User who last modified the record';