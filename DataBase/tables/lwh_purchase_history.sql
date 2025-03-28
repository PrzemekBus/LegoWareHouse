create table lwh_purchase_history (
    pc_id number generated always as identity primary key,
    pc_prod_id number not null,
    pc_date date not null,
    pc_price number(10, 2) not null,
    pc_quantity number not null,
    pc_platform varchar2(100),
    pc_seller varchar2(200),
    pc_notes varchar2(1000),
    pc_created_at timestamp default systimestamp not null,
    pc_created_by number not null,
    pc_modified_at timestamp,
    pc_modified_by number
);

comment on table lwh_purchase_history is 'Table storing purchase history of LEGO products';
comment on column lwh_purchase_history.pc_id is 'Unique identifier for the purchase record';
comment on column lwh_purchase_history.pc_prod_id is 'Identifier of the purchased product';
comment on column lwh_purchase_history.pc_date is 'Date of the purchase';
comment on column lwh_purchase_history.pc_price is 'Price of the purchased product';
comment on column lwh_purchase_history.pc_quantity is 'Quantity of the purchased product';
comment on column lwh_purchase_history.pc_platform is 'Platform where the product was purchased (e.g., Allegro, eBay)';
comment on column lwh_purchase_history.pc_seller is 'Information about the seller';
comment on column lwh_purchase_history.pc_notes is 'Additional notes about the purchase';
comment on column lwh_purchase_history.pc_created_at is 'Timestamp when the purchase record was created';
comment on column lwh_purchase_history.pc_created_by is 'User who created the purchase record';
comment on column lwh_purchase_history.pc_modified_at is 'Timestamp when the purchase record was last modified';
comment on column lwh_purchase_history.pc_modified_by is 'User who last modified the purchase record';

