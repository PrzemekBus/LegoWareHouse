create table lwh_purchases (
    pur_id number generated always as identity primary key,
    pur_prod_id number not null,
    pur_date date default sysdate not null,
    pur_price number(10,2) not null,
    pur_store_name varchar2(100),
    pur_store_type varchar2(20),
    pur_receipt_number varchar2(50),
    pur_notes varchar2(500),
    pur_created_at timestamp default systimestamp not null,
    pur_created_by number not null,
    pur_modified_at timestamp,
    pur_modified_by number
);

comment on table lwh_purchases is 'inventory acquisition records';
comment on column lwh_purchases.pur_id is 'auto-incremented purchase id';
comment on column lwh_purchases.pur_prod_id is 'reference to purchased product';
comment on column lwh_purchases.pur_date is 'date of acquisition';
comment on column lwh_purchases.pur_price is 'unit purchase price';
comment on column lwh_purchases.pur_store_name is 'vendor name (e.g., amazon, media expert)';
comment on column lwh_purchases.pur_store_type is 'vendor type (online/physical)';
comment on column lwh_purchases.pur_receipt_number is 'proof of purchase identifier';
comment on column lwh_purchases.pur_notes is 'additional acquisition details';
comment on column lwh_purchases.pur_created_at is 'record creation timestamp';
comment on column lwh_purchases.pur_created_by is 'user who recorded purchase';
comment on column lwh_purchases.pur_modified_at is 'last modification timestamp';
comment on column lwh_purchases.pur_modified_by is 'user who last modified';
