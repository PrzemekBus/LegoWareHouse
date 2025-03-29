alter table lwh_products add constraint fk_product_created_by foreign key (prod_created_by) references lwh_users(usr_id);
alter table lwh_products add constraint fk_product_modified_by foreign key (prod_modified_by) references lwh_users(usr_id);
alter table lwh_products add constraint fk_product_theme foreign key (prod_th_id) references lwh_theme(th_id);