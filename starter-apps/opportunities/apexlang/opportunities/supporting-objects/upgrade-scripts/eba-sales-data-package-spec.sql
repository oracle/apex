CREATE OR REPLACE PACKAGE "EBA_SALES_DATA" as 
    procedure load_codes; 
    procedure load_sample; 
    procedure remove_sample; 
end;
/