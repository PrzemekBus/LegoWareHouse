create table lwh_dictionaries (
    dct_id number generated always as identity primary key,
    dct_name varchar2(50) not null unique,  
    dct_value1 varchar2(50) not null,       
    dct_value2 varchar2(50),                
    dct_value3 varchar2(50),                
    dct_description varchar2(200),          
    dct_is_active number(1) default 1 not null,
    dct_created_at timestamp default systimestamp not null, -- Data utworzenia
    dct_created_by number not null, -- Użytkownik, który utworzył rekord
    dct_modified_at timestamp, -- Data ostatniej modyfikacji
    dct_modified_by number -- Użytkownik, który ostatnio modyfikował rekord
);

comment on table lwh_dictionaries is 'Universal dictionary table for all system lookups';
comment on column lwh_dictionaries.dct_id is 'Unique dictionary entry identifier';
comment on column lwh_dictionaries.dct_name is 'Dictionary name (e.g., product_condition)';
comment on column lwh_dictionaries.dct_value1 is 'Primary value (e.g., new, used)';
comment on column lwh_dictionaries.dct_value2 is 'Additional value (optional)';
comment on column lwh_dictionaries.dct_value3 is 'Additional value (optional)';
comment on column lwh_dictionaries.dct_description is 'Detailed description';
comment on column lwh_dictionaries.dct_is_active is 'Is entry active? (1-yes, 0-no)';
comment on column lwh_dictionaries.dct_created_at is 'Timestamp when the record was created';
comment on column lwh_dictionaries.dct_created_by is 'User who created the record';
comment on column lwh_dictionaries.dct_modified_at is 'Timestamp when the record was last modified';
comment on column lwh_dictionaries.dct_modified_by is 'User who last modified the record';