alter table lwh_products add constraint fk_product_created_by foreign key (prod_created_by) references users(usr_id);
alter table lwh_products add constraint fk_product_modified_by foreign key (prod_modified_by) references users(usr_id);
alter table lwh_products add constraint fk_product_theme foreign key (prod_th_id) references users(th_id);