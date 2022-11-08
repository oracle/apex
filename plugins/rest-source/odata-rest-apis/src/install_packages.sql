Rem -------------------------------------------------------------------------------
Rem -- Name: plg_odata_metadata.pks
Rem -- Copyright (c) 2012, 2022 Oracle and/or its affiliates.
Rem -- Licensed under the Universal Permissive License v 1.0
Rem -- as shown at https://oss.oracle.com/licenses/upl/
Rem -------------------------------------------------------------------------------

set define '^'

PROMPT >> Installing Package Specs ...

@plg_odata_connector.pks
@plg_odata_metadata.pks
@plg_odata_order_bys.pks
@plg_odata_filters.pks

PROMPT >> Installing Package Bodies ...

@plg_odata_metadata.pkb
@plg_odata_order_bys.pkb
@plg_odata_filters.pkb
@plg_odata_connector.pkb
