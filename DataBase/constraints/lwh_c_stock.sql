alter table lwh_stock add constraint fk_stock_user foreign key (stock_user_id) references lwh_users(user_id);
