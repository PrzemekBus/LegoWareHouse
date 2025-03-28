create table lwh_sales_history (
    sl_id number generated always as identity primary key,
    sl_prod_id number not null,
    sl_date date not null,
    sl_price number(10, 2) not null,
    sl_quantity number not null,
    sl_platform varchar2(100),
    sl_buyer varchar2(200),
    sl_notes varchar2(1000),
    sl_created_at timestamp default systimestamp not null,
    sl_created_by number not null,
    sl_modified_at timestamp,
    sl_modified_by number
);

comment on table lwh_sales_history is 'Table storing sales history of LEGO products';
comment on column lwh_sales_history.sl_id is 'Unique identifier for the sale record';
comment on column lwh_sales_history.sl_prod_id is 'Identifier of the sold product';
comment on column lwh_sales_history.sl_date is 'Date of the sale';
comment on column lwh_sales_history.sl_price is 'Price of the sold product';
comment on column lwh_sales_history.sl_quantity is 'Quantity of the sold product';
comment on column lwh_sales_history.sl_platform is 'Platform where the product was sold (e.g., Allegro, eBay)';
comment on column lwh_sales_history.sl_buyer is 'Information about the buyer';
comment on column lwh_sales_history.sl_notes is 'Additional notes about the sale';
comment on column lwh_sales_history.sl_created_at is 'Timestamp when the sale record was created';
comment on column lwh_sales_history.sl_created_by is 'User who created the sale record';
comment on column lwh_sales_history.sl_modified_at is 'Timestamp when the sale record was last modified';
comment on column lwh_sales_history.sl_modified_by is 'User who last modified the sale record';