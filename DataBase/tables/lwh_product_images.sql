create table lwh_product_images (
    img_id number generated always as identity primary key,
    prod_id number not null,
    img_url varchar2(2000),
    img_blob blob,
    img_is_primary number(1) default 0 not null,
    img_created_at timestamp default systimestamp not null,
    img_created_by number not null,
    img_modified_at timestamp,
    img_modified_by number
);

comment on table lwh_product_images is 'Table storing images for LEGO products';
comment on column lwh_product_images.img_id is 'Unique identifier for the image';
comment on column lwh_product_images.prod_id is 'Identifier of the product the image belongs to';
comment on column lwh_product_images.img_url is 'URL of the image (if stored externally)';
comment on column lwh_product_images.img_blob is 'Binary data of the image (if stored locally)';
comment on column lwh_product_images.img_is_primary is 'Indicates if the image is the primary image for the product (1 = yes, 0 = no)';
comment on column lwh_product_images.img_created_at is 'Timestamp when the image record was created';
comment on column lwh_product_images.img_created_by is 'User who created the image record';
comment on column lwh_product_images.img_modified_at is 'Timestamp when the image record was last modified';
comment on column lwh_product_images.img_modified_by is 'User who last modified the image record';