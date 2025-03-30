create or replace view lwh_v_prod_img_theme as
select 
  lwh_products.prod_id,
  prod_eng_name,
  prod_description,
  prod_set_number,
  prod_release_year,
  prod_pieces_count,
  prod_minifigs_count,
  prod_retail_price,
  prod_is_active,
  img_url,
  th_name,
  th_description,
  th_logo_html
from lwh_products
  left join lwh_product_images
    on lwh_products.prod_id = lwh_product_images.prod_id and img_is_primary = 1
  join lwh_theme
    on lwh_products.prod_th_id = lwh_theme.th_id
;
