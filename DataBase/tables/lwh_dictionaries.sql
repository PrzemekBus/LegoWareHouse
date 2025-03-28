create table dictionaries (
    dct_id number generated always as identity primary key,
    dct_name varchar2(50) not null unique,  
    dct_value1 varchar2(50) not null,       
    dct_value2 varchar2(50),                
    dct_value3 varchar2(50),                
    dct_description varchar2(200),          
    dct_is_active number(1) default 1 not null,
    dct_sort_order number default 0     
);

comment on table lwh_dictionaries is 'universal dictionary table for all system lookups';
comment on column lwh_dictionaries.dct_id is 'unique dictionary entry identifier';
comment on column lwh_dictionaries.dct_name is 'dictionary name (e.g., product_condition)';
comment on column lwh_dictionaries.dct_value1 is 'primary value (e.g., new, used)';
comment on column lwh_dictionaries.dct_value2 is 'additional value (optional)';
comment on column lwh_dictionaries.dct_value3 is 'additional value (optional)';
comment on column lwh_dictionaries.dct_description is 'detailed description';
comment on column lwh_dictionaries.dct_is_active is 'is entry active? (1-yes, 0-no)';
comment on column lwh_dictionaries.dct_sort_order is 'sorting order in lists';