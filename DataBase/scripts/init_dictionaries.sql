insert into lwh_dictionaries (dct_name, dct_value1, dct_description, dct_sort_order) values 
('PRODUCT_CONDITION', 'NEW', 'Brand new, factory sealed', 1),
('PRODUCT_CONDITION', 'SEALED', 'Original packaging, minor damage possible', 2),
('PRODUCT_CONDITION', 'OPENED', 'Opened but complete and like new', 3),
('PRODUCT_CONDITION', 'USED', 'Used, complete with wear signs', 4),
('PRODUCT_CONDITION', 'USED_INCOMPLETE', 'Used and missing pieces', 5);

insert into lwh_dictionaries (dct_name, dct_value1, dct_description) values 
('LISTING_STATUS', 'DRAFT', 'Draft - not published'),
('LISTING_STATUS', 'ACTIVE', 'Active and visible'),
('LISTING_STATUS', 'ENDED', 'Ended normally'),
('LISTING_STATUS', 'CANCELLED', 'Cancelled by seller');

insert into lwh_dictionaries (dct_name, dct_value1, dct_description) values 
('SALE_STATUS', 'PENDING', 'Waiting for payment'),
('SALE_STATUS', 'PAID', 'Payment received'),
('SALE_STATUS', 'SHIPPED', 'Item shipped'),
('SALE_STATUS', 'DELIVERED', 'Item delivered'),
('SALE_STATUS', 'CANCELLED', 'Transaction cancelled');

insert into lwh_dictionaries (dct_name, dct_value1, dct_value2, dct_description) values 
('PLATFORM', 'ALLEGRO', '8.0', 'Allegro.pl marketplace'),
('PLATFORM', 'OLX', '0.0', 'OLX classifieds'),
('PLATFORM', 'AMAZON', '15.0', 'Amazon global'),
('PLATFORM', 'EBAY', '12.5', 'eBay international');