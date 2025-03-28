alter table lwh_listings add constraint fk_listing_product foreign key (lst_prod_id) references products(prod_id);
alter table lwh_listings add constraint fk_listing_creator foreign key (lst_created_by) references users(usr_id);
alter table lwh_listings add constraint fk_listing_modifier foreign key (lst_modified_by) references users(usr_id);