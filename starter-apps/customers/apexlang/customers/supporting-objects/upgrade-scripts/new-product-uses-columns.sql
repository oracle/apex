alter table eba_cust_product_uses add (
    reference_type_ids varchar2(4000),
    internal_contact varchar2(255),
    customer_contact_id number,
    reference_status_id number,
    valid_from timestamp with time zone,
    valid_to timestamp with time zone,
    comments varchar2(4000)
);