alter table lwh_products add constraint fk_product_condition foreign key (prod_pco_id) references product_conditions(pco_id);
alter table lwh_products add constraint fk_product_created_by foreign key (prod_created_by) references users(usr_id);
alter table lwh_products add constraint fk_product_modified_by foreign key (prod_modified_by) references users(usr_id);