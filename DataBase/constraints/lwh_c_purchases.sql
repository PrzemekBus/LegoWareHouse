alter table lwh_purchases add constraint fk_purchase_product foreign key (pur_prod_id) references products(prod_id);
alter table lwh_purchases add constraint fk_purchase_creator foreign key (pur_created_by) references users(usr_id);
alter table lwh_purchases add constraint fk_purchase_modifier foreign key (pur_modified_by) references users(usr_id);