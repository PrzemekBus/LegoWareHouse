create table lwh_sales (
    sale_id number generated always as identity primary key,
    sale_lst_id number not null,
    sale_date date default sysdate not null,
    sale_price number(10,2) not null,
    sale_buyer_nickname varchar2(50),
    sale_shipping_cost number(10,2) default 0,
    sale_platform_fee number(10,2),
    sale_profit number(10,2),
    sale_payment_received date,
    sale_shipping_date date,
    sale_tracking_number varchar2(50),
    sale_status varchar2(20) not null,
    sale_created_at timestamp default systimestamp not null,
    sale_created_by number not null,
    sale_modified_at timestamp,
    sale_modified_by number
);

comment on table lwh_sales is 'completed sales transactions';
comment on column lwh_sales.sale_id is 'auto-incremented sale id';
comment on column lwh_sales.sale_lst_id is 'reference to original listing';
comment on column lwh_sales.sale_date is 'date of transaction completion';
comment on column lwh_sales.sale_price is 'final selling price';
comment on column lwh_sales.sale_buyer_nickname is 'buyer identifier from platform';
comment on column lwh_sales.sale_shipping_cost is 'delivery cost charged to buyer';
comment on column lwh_sales.sale_platform_fee is 'actual commission paid';
comment on column lwh_sales.sale_profit is 'calculated profit (sale_price - fees - cost)';
comment on column lwh_sales.sale_payment_received is 'date when funds were received';
comment on column lwh_sales.sale_shipping_date is 'date of physical shipment';
comment on column lwh_sales.sale_tracking_number is 'carrier tracking code';
comment on column lwh_sales.sale_status is 'reference to dictionaries (dct_name=sale_status)';
comment on column lwh_sales.sale_created_at is 'record creation timestamp';
comment on column lwh_sales.sale_created_by is 'user who recorded sale';
comment on column lwh_sales.sale_modified_at is 'last modification timestamp';
comment on column lwh_sales.sale_modified_by is 'user who last modified';