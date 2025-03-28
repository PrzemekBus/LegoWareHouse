create table lwh_stock (
    stock_id number generated always as identity primary key,
    stock_name varchar2(100) not null,
    stock_user_id number not null,
    stock_is_active number(1) default 1 not null,
    stock_created_at timestamp default systimestamp not null,
    stock_created_by number not null,
    stock_modified_at timestamp,
    stock_modified_by number
);

comment on table lwh_stock is 'Table representing user-specific warehouses for LEGO products';

comment on column lwh_stock.stock_id is 'Unique identifier for the stock (warehouse)';
comment on column lwh_stock.stock_name is 'Name of the stock (warehouse)';
comment on column lwh_stock.user_id is 'Identifier of the user who owns the stock';
comment on column lwh_stock.stock_is_active is 'Indicates if the stock is active (1 = active, 0 = inactive)';
comment on column lwh_stock.stock_created_at is 'Timestamp when the stock was created';
comment on column lwh_stock.stock_created_by is 'User who created the stock';
comment on column lwh_stock.stock_modified_at is 'Timestamp when the stock was last modified';
comment on column lwh_stock.stock_modified_by is 'User who last modified the stock';
