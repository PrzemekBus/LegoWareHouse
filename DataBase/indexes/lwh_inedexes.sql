create unique index idx_products_set_number on lwh_products(prod_set_number);
create index idx_products_theme on lwh_products(prod_theme);
create index idx_products_condition on lwh_products(prod_condition);

create index idx_listings_product on lwh_listings(lst_prod_id);
create index idx_listings_status on lwh_listings(lst_status);
create index idx_listings_dates on lwh_listings(lst_start_date, lst_end_date);

create index idx_sales_listing on lwh_sales(sale_lst_id);
create index idx_sales_date on lwh_sales(sale_date);
create index idx_sales_status on lwh_sales(sale_status);

create index idx_products_audit on lwh_products(prod_created_at, prod_modified_at);
create index idx_listings_audit on lwh_listings(lst_created_at, lst_modified_at);

create index idx_purchases_product on lwh_purchases(pur_prod_id);
create index idx_purchases_date on lwh_purchases(pur_date);