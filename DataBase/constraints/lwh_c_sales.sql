alter table lwh_sales add constraint fk_sale_listing foreign key (sale_lst_id) references listings(lst_id);
alter table lwh_sales add constraint fk_sale_creator foreign key (sale_created_by) references users(usr_id);
alter table lwh_sales add constraint fk_sale_modifier foreign key (sale_modified_by) references users(usr_id);