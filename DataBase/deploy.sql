-------------Initialization tables-------------
@tables/lwh_dictionaries.sql
@tables/lwh_products.sql
@tables/lwh_stock.sql
@tables/lwh_stock_products.sql
@tables/lwh_users.sql

-------------Initialization scripts-------------
@scripts/init_dictionaries.sql

-------------Initialization indexes-------------
@indexes/*.sql

-------------Initialization constraints-------------
@constraints/lwh_c_dictionaries.sql
@constraints/lwh_c_products.sql
@constraints/lwh_c_stock.sql
@constraints/lwh_c_stock_products.sql

-------------Initialization updates-------------
@migrations/*.sql
