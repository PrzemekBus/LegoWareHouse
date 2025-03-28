create table lwh_stock_products (
    sp_id number generated always as identity primary key,
    sp_stock_id number not null,
    sp_prod_id number not null,
    sp_quantity number not null,
    sp_added_at timestamp default systimestamp not null,
    sp_added_by number not null,
    sp_modified_at timestamp,
    sp_modified_by number
);

comment on table lwh_stock_products is 'Table linking products to specific stocks (warehouses)';

comment on column lwh_stock_products.stock_product_id is 'Unique identifier for the stock-product relationship';
comment on column lwh_stock_products.stock_id is 'Identifier of the stock (warehouse)';
comment on column lwh_stock_products.prod_id is 'Identifier of the product in the stock';
comment on column lwh_stock_products.quantity is 'Quantity of the product in the stock';
comment on column lwh_stock_products.added_at is 'Timestamp when the product was added to the stock';
comment on column lwh_stock_products.added_by is 'User who added the product to the stock';
comment on column lwh_stock_products.modified_at is 'Timestamp when the stock-product relationship was last modified';
comment on column lwh_stock_products.modified_by is 'User who last modified the stock-product relationship';