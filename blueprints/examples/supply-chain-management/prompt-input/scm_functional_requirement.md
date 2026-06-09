# Supply Chain Management Functional Requirement

Develop an inventory and warehouse management application.
The name of this application is **APEX Inventory and Warehouse Management**.
The generated markdown file should be called **scm_generated_blueprint.md**.

## Objective

The application should support practical warehouse operations and inventory control across multiple warehouses.

The application should help users maintain master data, receive goods, put stock away, move stock, transfer stock between warehouses, fulfil outbound demand, process returns, perform stock counts, approve corrections, monitor replenishment, and trace inventory activity with clear operational visibility.

## Application User Experience

- Keep the application simple, business-friendly, and focused on core inventory and warehouse work.
- Present information using names, numbers, codes, and descriptions that business users recognize.
- Show warehouses by warehouse name and code, users by username or full name, partners by partner name and number, items by item code and name, and locations by location code and name.
- Keep internal record references in the background while users work with meaningful business values.
- Let users move naturally from a list or summary into the next useful workspace for the selected record.
- Carry the selected record context into related information so users do not need to reselect the same warehouse, item, receipt, transfer, order, return, count, adjustment, or exception.
- Default record navigation should use workspace-style standard detail pages only for records that have meaningful detail context, related records, workflow state, or operational actions.
- Do not create drill-down detail pages solely to repeat the selected row from a list or report.
- Rows for leaf, line, assignment, allocation, or intersection records should remain usable in their search/report region, parent detail region, or modal maintenance form unless the functional specification explicitly requires a separate detail workspace.
- When a row navigates to another page, the selected row primary key or parent key must be passed directly from the source row to the target page item.
- Users must not be asked to select, search for, or re-enter the same record after navigating from a list, report, queue, or related-record region.
- Primary key values should remain hidden or background-only; they are used for context passing and filtering while users see business values such as numbers, codes, names, statuses, and dates.
- Present related information together where it helps users complete work efficiently.
- When the same child record type relates to a selected parent through multiple foreign-key roles, show one consolidated related-record region for that child record type instead of one region per foreign-key role.
- Consolidated related-record regions should include a visible relationship role value, such as Assigned User, Reviewed By User, Source Location, Destination Location, Customer Partner, or Carrier Partner, so users can understand why each row is related to the selected context.
- Do not name related regions by individual foreign-key roles, such as "Stock Transfers by From Warehouse" and "Stock Transfers by To Warehouse"; use one business-facing region, such as "Stock Transfers in Warehouse", with a visible relationship role column when both roles matter.
- Wherever pages show lists, queues, reports, or related records, support ad-hoc analysis by end users.
- Users should be able to create their own filters, control visible columns, sort, group, and export authorized data from these views.
- Analytical, audit, traceability, and exploratory data views should support plain-language query interpretation so users can ask questions using the available report and column context.
- Use separate setup pages only where simple maintenance is needed, and use consolidated operational views where related work belongs together.

## Application Structure Rules

- The application should be organized around stable business work areas rather than technical page numbers.
- The primary work areas are Home, Administration, Master Data, Inventory Control, Warehouse Operations, and Traceability and Reporting.
- Each work area should expose only the business workspaces that users naturally start from.
- Parent or header records should be entry points.
- Line, allocation, assignment, and supporting child records should be reached from their parent workspace, searchable operational reports, or maintenance forms rather than promoted as primary navigation entries.
- When two valid layouts are possible, choose the layout that keeps the business workflow closest to the user's natural sequence: search or queue, selected record workspace, related records, create or edit maintenance.

## Stable Interpretation Rules

- The application design must be repeatable from this specification and the schema metadata.
- Where this specification uses flexible wording such as "should", "where relevant", "where available", "as appropriate", "balanced", "useful", or "naturally", apply the explicit business rules in this section first.
- Use the functional-area order in this document as the default ordering: Administration, Master Data, Inventory Control, Warehouse Operations, Traceability and Reporting.
- Within a functional area, show parent, master, and operational header records before their child, line, allocation, assignment, or supporting records.
- When a record has both a search experience and a maintenance experience, the search or workspace experience is the main entry point. Create and edit maintenance should be reached from actions or row-level edit affordances.
- Do not add duplicate navigation paths simply because a table has foreign-key relationships. Add navigation only when it supports a clear business workflow.
- Functional specification text and user-facing application text should use business-facing language.
- Avoid implementation-specific component terminology in descriptions, comments, labels, and guidance intended for business users.
- Use business terms such as search, report, summary, metric, chart, map, detail workspace, maintenance form, queue, related records, create, and edit.
- Technical implementation terms may be used only in internal generation rules or required technical output fields, not in user-facing prose.

## Schema Alignment

- The schema metadata should be treated as the source of truth for available records, relationships, fields, and domain values.
- Internal identifiers should remain part of backend processing and should not be the primary way users recognize records.
- User-facing pages should show business values such as warehouse name and code, item code and name, partner name and number, location code and name, username or full name, and document numbers.
- Work queues, detail views, reports, and related-record views should use schema-backed records such as alerts, assignments, statuses, review states, exceptions, and transaction history.
- Whenever schema metadata contains a spatial or geometry column, place map-style visualization only on the business page where users compare or maintain mapped records.
- For the current schema, warehouse map visualization belongs on the Warehouses search/list page alongside the warehouse report, because users compare mapped warehouse locations there.
- Do not place warehouse geometry maps on the home dashboard.
- Do not repeat the warehouse map on the selected Warehouse Detail page; after a user drills into one warehouse, the detail page should focus on the warehouse context and related operational records.
- Warehouse geometry visualization should appear only where users compare warehouse locations.
- The warehouse map belongs on the Warehouses search/list experience, below the warehouse search results, using the full available width.
- Do not place warehouse geometry on Home.
- Do not place warehouse geometry on the selected Warehouse Detail workspace.

## Core Definitions

- Business Partner: A supplier, customer, carrier, or internal party involved in warehouse operations.
- Partner Site: A shipping, receiving, pickup, delivery, return, or primary site belonging to a business partner.
- Warehouse: A physical or logical facility where inventory is stored and managed.
- Warehouse Area: A functional section of a warehouse, such as receiving, storage, picking, quarantine, returns, dispatch, or staging.
- Storage Location: A bin, staging point, dock, quarantine location, picking location, or other specific place where stock can be held.
- Item: A product, material, or stock keeping unit managed by the warehouse.
- Lot: A batch or lot of inventory for items that require lot-level traceability.
- Serial Number: A unique identifier for an individual unit of a serial-controlled item.
- Inventory Balance: The current quantity of an item at a warehouse location, by lot, serial, and stock status where relevant.
- Replenishment Alert: A work signal for low stock, out-of-stock, pick-face replenishment, aging, or short-dated inventory.
- Receipt: An inbound document used to receive stock from suppliers, transfers, returns, or other approved sources.
- Stock Movement: A controlled movement of stock for putaway, internal movement, replenishment, or stock status change.
- Stock Transfer: A movement of stock from one warehouse to another.
- Outbound Order: A request to reserve, pick, pack, and dispatch stock.
- Return: A return of stock from a customer, delivery, internal process, or supplier.
- Stock Count: A planned or directed inventory count used to compare expected and counted stock.
- Stock Adjustment: An approved stock correction, status correction, count variance correction, or write-off.
- Operational Exception: A discrepancy, shortage, damage, mismatch, count variance, status problem, or other issue that needs review.

## Business Capabilities

### Roles and Access Control

- Administrator: Maintain users, roles, business partners, partner sites, warehouses, areas, locations, items, item warehouse policies, and controlled business lists.
- Warehouse Manager: Oversee warehouse operations, review workloads, monitor exceptions, approve sensitive operational records, and manage inbound, outbound, transfer, return, count, and adjustment activity.
- Inventory Controller: Manage stock accuracy, replenishment policies, replenishment alerts, stock status issues, counts, variances, and approved stock corrections.
- Operations User: Perform receiving, putaway, movement, transfer execution, picking, packing, dispatch, and routine warehouse stock work.
- Quality User: Review returned, damaged, suspect, expired, or quarantined stock and decide whether stock should be released, kept in quarantine, or written off.
- Business Viewer: View master data, stock, replenishment, operational activity, exceptions, counts, adjustments, and traceability information without changing records.
- Each user experience should show only the information, actions, and records relevant to the current role and warehouse responsibility.
- User assignment should support enterprise-level, warehouse-level, quality, finance, and administration responsibilities where relevant.

### Dashboard and Operational Work

- Provide a simple home page with operational summary metrics, open work, and exception visibility.
- Show current work for replenishment, inbound receiving, putaway, movements, transfers, outbound orders, returns, stock counts, adjustments, and exceptions.
- Highlight work that is open, overdue, blocked, review-required, or assigned to the current user.
- Keep the home page focused while allowing the dashboard to include all operational metrics, summaries, queues, charts, and reports needed for role-scoped warehouse work.
- The home page must always include these core homepage elements when the related records exist in the schema:
  - Operational Summary: mandatory summary metrics for open receipts, outbound orders, transfers, returns, stock counts, adjustments, exceptions, and replenishment alerts.
  - Inventory Stock Position: a mandatory stock status distribution showing available, reserved, blocked, damaged, and quarantined stock by stock status and stock quantity.
  - Low Stock and Replenishment Risk: a guided low-stock view showing low-stock items, reorder risk, and open replenishment alerts.
  - Warehouse Workload: a mandatory compact workload comparison showing open operational workload by warehouse.
  - Exceptions and Review Queue: summary metrics and a guided review queue for high-priority exceptions and review-required records.
  - Inbound and Outbound Flow: a mandatory activity trend showing operational activity volume by date, with related detail for receiving, picking, packing, and dispatch activity.
  - Stock Accuracy and Corrections: summary metrics and a guided variance and correction view for count variances, adjustments, and pending corrections.
- Home page presentation should combine summary metrics, guided filter views, standard tabular views, plain-language assisted analytical views, trend displays, status distributions, and workload comparisons.
- The home page must not include map regions or warehouse geometry visualization.
- Warehouse Workload must be the only home page element using the compact ranked workload comparison style.
- The other homepage elements should use a balanced mix of summary metrics, guided queues, standard tabular detail, trend displays, status distributions, and concise summaries so the home page does not become visually overloaded.
- The application generator must create the mandatory home page visual summaries and operational summary metrics without needing any separate technical security instruction in this specification.
- Home page visual summaries, metrics, reports, guided queues, and drill-down detail must be visible according to the user's role and responsibility scope.
- Administrators must see all homepage elements.
- Administrators should also see user status, partner type, and warehouse status distributions.
- Warehouse Managers must see the Warehouse Workload summary, stock, inventory, fulfilment, exceptions, corrections, and operational flow for their warehouse responsibility scope.
- Warehouse Managers should also see open work by workflow, exceptions by severity, review queue by record type, and transfer readiness blockers.
- Inventory Controllers must see the Inventory Stock Position summary, replenishment risk, stock accuracy, corrections, and inventory-related exceptions.
- Inventory Controllers should also see stock quantity by status, replenishment alert priority and status, adjustment status, and count variance resolution.
- Quality Users must see exceptions, quarantine or damaged stock, returns review, count variances, and adjustment review.
- Quality Users should also see returns by condition, return disposition, exceptions by type, and quarantine or damaged stock by warehouse.
- Operations Users must see inbound, outbound, transfer, return, assigned execution work, and operational flow that belongs to their work scope.
- Operations Users should also see assigned operational work by user, fulfilment allocation status, and operational flow by day.
- Business Viewers must see only read-only operational summary information and authorized drill-down detail.
- Business Viewers should also see transaction activity by document type and transaction trend by day.
- Home page visual summaries and supporting detail should use business-friendly values such as warehouse name and code, item code and name, location code and name, partner name, document number, username, and full name.
- Related summaries and report rows should drill down only when the target record has a meaningful detail workspace; otherwise they should open the appropriate filtered search/report, parent detail workspace, or modal maintenance form with the selected context carried forward.
- Home page lists and report-style areas should use a mix of standard tabular detail, guided filters, and plain-language assisted analysis where appropriate.
- Managers should be able to filter operational views by warehouse, area, item, partner, status, priority, assigned user, date range, and exception type where relevant.
- Operational users should be able to quickly continue work from their assigned queues.
- The Home experience must have a stable composition.
- The operational summary metrics are Open Receipts, Open Outbound Orders, Open Transfers, Open Returns, Open Stock Counts, Open Adjustments, Open Exceptions, and Open Replenishment Alerts.
- The summary metrics should be presented as two rows of four metrics.
- The Home visual summaries are Inventory Stock Position, Warehouse Workload, Inbound and Outbound Flow, Exceptions by Severity, Replenishment Alert Priority and Status, Adjustment Status, Count Variance Resolution, Return Condition and Disposition, Exceptions by Type, Quarantine and Damaged Stock by Warehouse, Fulfilment Allocation Status, Assigned Operational Work by User, and Transaction Activity by Document Type.
- The Home experience should also include Low Stock and Replenishment Risk as an operational review area.
- The Home experience must not include warehouse map or warehouse geometry visualization.

### Master Data Management

- Maintain business partners with partner number, partner type, partner name, and partner status.
- Maintain partner sites with site code, site name, site role, address, primary-site flag, and active status.
- Maintain application users with username, full name, email address, status, default warehouse, manager, and notes.
- Maintain user roles with role code, role name, responsibility scope, approval authority level, system-role flag, active flag, and role notes.
- Maintain role assignments with user, role, warehouse responsibility, assignment status, authority override, effective dates, assigned-by user, primary-role flag, and assignment notes.
- Maintain controlled business lists with list code, list name, and list status.
- Maintain controlled business list values with value code, value name, display sequence, and active flag.
- Setup records should be easy to search, filter, create, update, and retire where appropriate.
- Setup views should display related information together, such as partner sites under a partner, locations under a warehouse, and role assignments under a user.

### Warehouse and Location Management

- Maintain warehouses with warehouse code, warehouse name, status, address, and mapped location information where available.
- The Warehouses search/list page should show warehouse business values and mapped warehouse positions when mapped geometry is available.
- The Warehouse Detail page should not repeat the map from the Warehouses search/list page.
- Maintain warehouse areas with area code, area name, area type, status, operating sequence, and notes.
- Maintain storage locations with warehouse, area, parent location, location code, location name, location type, status, aisle, bay, level, position, pickable flag, and active status.
- Users should be able to block a warehouse, area, or location when it should not be used for normal operations.
- Users should be able to identify pickable locations for outbound fulfilment.
- Warehouse detail views should show areas, locations, stock balances, replenishment alerts, receipts, movements, transfers, outbound work, returns, counts, adjustments, and exceptions related to the selected warehouse, without adding a second selected-warehouse map.
- Area and location detail views should show the related warehouse, parent location where relevant, current stock, movement history, and open work.

### Item and Inventory Management

- Maintain items with item code, item name, description, category, base unit of measure, item status, and operational handling flags.
- Item handling should support lot control, serial control, expiry control, fragile items, high-value items, hazardous items, temperature-controlled items, restricted items, and customer-owned stock where relevant.
- Maintain lots with item, lot number, supplier lot number, received date, best-before date, expiry date, and lot status.
- Maintain serial-controlled inventory with item, serial number, related lot, current warehouse, current location, serial status, serial condition, last document reference, received date, last moved date, and active tracking flag.
- Maintain current inventory balances by warehouse, location, item, lot, serial, and stock status where relevant.
- Users should be able to search stock by item code, item name, lot number, serial number, warehouse, area, location, and stock status.
- Users should see quantity on hand, available quantity, reserved quantity, picked quantity, packed quantity, in-transit quantity, quarantine quantity, damaged quantity, and blocked quantity where relevant.
- Item detail views should show lots, serial numbers, inventory balances, item warehouse policies, replenishment alerts, receipt history, movement history, transfer history, outbound activity, returns, counts, adjustments, and serial history for the selected item.
- Lot and serial detail views should show current position, condition, status, related item, related warehouse, related location, and movement history.
- Duplicate item codes, lot numbers within an item, and serial numbers within an item should be prevented.

### Replenishment Management

- Maintain item warehouse policies with item, warehouse, minimum quantity, reorder point, reorder target, safety stock, replenishment lead time, low-stock alert setting, and active status.
- Replenishment alerts should identify low stock, out-of-stock, pick-face replenishment, aging inventory, and short-dated inventory.
- Alerts should show alert number, warehouse, item, related policy, pick location, reserve location, alert type, status, priority, available quantity, trigger quantity, target quantity, recommended quantity, raised date, reviewed date, reviewed by, and alert notes where relevant.
- Users should be able to review, prioritize, assign, suppress, action, and close replenishment alerts.
- Replenishment work should connect naturally to stock movement so users can act on a replenishment need without re-entering the same item and warehouse context.

### Inbound Receiving and Putaway

- Support receipts from suppliers, transfers, customer returns, internal returns, and other approved receipt sources.
- Receipt records should show receipt number, source, receiving warehouse, source partner, source site, assigned user, source document reference, expected arrival, actual arrival, receiving completion, received by, receipt status, review status, review details, and notes.
- Receipt lines should show line number, item, lot, receiving location, putaway location, expected quantity, received quantity, accepted quantity, quarantine quantity, damaged quantity, shortage quantity, overage quantity, rejected quantity, received condition, discrepancy reason, and line status.
- Receiving should support planned receipts, unplanned receipts, full receipts, partial receipts, and discrepancy capture.
- Users should be able to receive accepted goods, identify shortages, identify overages, record damaged or suspect goods, quarantine stock, and release accepted goods for putaway.
- Receipt detail views should show receipt summary, source partner and site, lines, discrepancies, putaway work, related movements, related exceptions, review history, and notes.
- Putaway should allow users to confirm the final storage location for accepted stock.

### Stock Movement and Transfers

- Support putaway, internal movement, replenishment movement, stock status change, and inter-warehouse transfers.
- Stock movements should show movement number, movement type, warehouse, source location, destination location, item, lot, serial, from status, to status, requested quantity, moved quantity, movement status, review status, reason, assigned user, requested by, requested date, confirmed by, confirmed date, reviewed by, reviewed date, review reason, source document type, source document number, and notes.
- Users should be able to move stock between warehouse locations and change stock status through a controlled movement.
- Transfer records should show transfer number, from warehouse, to warehouse, assigned user, requested date, shipped date, expected receipt date, actual receipt date, requested by, reason, status, review status, and notes.
- Transfer lines should show item, lot, source location, destination location, requested quantity, shipped quantity, received quantity, discrepancy quantity, discrepancy reason, and line status.
- Users should be able to create transfers, add transfer lines, confirm shipment, confirm receipt, and review transfer discrepancies.
- Transfer stock should remain visible as in transit until the receiving warehouse confirms receipt.
- Transfer detail views should show transfer summary, lines, shipment activity, receiving activity, discrepancies, related movements, related exceptions, review history, and notes.

### Outbound Fulfilment and Dispatch

- Support outbound processing from reservation through picking, packing, and dispatch.
- Outbound orders should show outbound order number, order type, ship-from warehouse, customer partner, ship-to site, carrier partner, assigned user, order status, priority, order date, requested ship date, picker, packer, dispatcher, dispatch date, source document reference, dispatch reference, and notes.
- Outbound lines should show item, preferred lot, requested quantity, reserved quantity, picked quantity, packed quantity, dispatched quantity, short quantity, and allocation status.
- Stock allocations should show allocation number, related outbound line, selected inventory balance, warehouse, source location, item, lot, serial, allocation sequence, allocation method, status, allocated quantity, reserved quantity, picked quantity, packed quantity, dispatched quantity, short quantity, and user/time details for each fulfilment step.
- Fulfilment should support available-stock reservation, FIFO allocation, manual allocation, specific-lot allocation, picking, packing, dispatch confirmation, and short-pick exception capture.
- Stock should not be dispatched until the required reservation, picking, and packing work has been completed.
- Outbound order detail views should show order summary, customer and ship-to details, lines, allocations, picking activity, packing activity, dispatch activity, shortages, related exceptions, and notes.

### Returns and Quality Review

- Support customer returns, delivery returns, internal returns, and supplier returns.
- Returns should show return number, return type, warehouse, source partner, source site, related outbound order, assigned user, status, review status, return reason, expected arrival, received date, assessed date, reviewed date, receiver, assessor, reviewer, review reason, and notes.
- Return lines should show item, lot, expected quantity, received quantity, returned condition, reusable quantity, quarantine quantity, damaged quantity, write-off quantity, and disposition.
- Returned stock should be received into a controlled returns or quarantine location until the disposition is clear.
- Quality Users should be able to classify returned goods as reusable, damaged, suspect, expired, incomplete, or under review.
- Returned goods should be released back to available stock only after review and disposition.
- Return detail views should show return summary, source partner and site, related outbound order, return lines, quality assessment, quarantine decisions, write-offs, related movements, related exceptions, review history, and notes.

### Stock Counts and Adjustments

- Support warehouse-level, area-level, location-level, and item-level stock counts.
- Stock counts should show count number, warehouse, count scope, area, location, item, assigned user, status, review status, planned start, planned end, started date, completed date, requested by, reviewed by, reviewed date, review reason, and notes.
- Count lines should show item, storage location, lot, expected quantity, counted quantity, variance quantity, variance reason, first count details, review details, resolution, and line status.
- Users should be able to plan counts, enter counted quantities, review variances, request recounts, accept variances, and create required adjustments.
- Stock adjustments should show adjustment number, warehouse, assigned user, adjustment type, status, reason, requested by, requested date, reviewed by, reviewed date, applied by, applied date, and notes.
- Adjustment lines should show item, lot, serial, location, from status, to status, direction, adjustment quantity, and reason description.
- Stock adjustments should support manual corrections, status corrections, write-offs, and count variance corrections.
- Sensitive variances and corrections should be reviewed before stock is changed.
- Count and adjustment detail views should show summary, lines, variances, approvals, applied corrections, related transactions, related exceptions, and notes.

### Traceability

- Provide inventory transaction history for receipts, putaway, movements, allocations, picking, packing, dispatch, transfer shipment, transfer receipt, returns, count adjustments, stock adjustments, status changes, and write-offs.
- Provide serial lifecycle history for serial-controlled items.
- Traceability views should show actor, date and time, reference document, warehouse, source location, destination location, item, lot, serial number, from status, to status, quantity, and reason where available.
- Users should be able to trace an item, lot, serial number, warehouse, location, receipt, transfer, outbound order, return, count, adjustment, or exception from its detail view.
- Traceability should help users understand where stock came from, where it moved, why it changed, and who performed the activity.

### Exceptions and Review

- Maintain an operational exception queue for receipt discrepancies, transfer discrepancies, pick shortages, item-not-found cases, return review, count variances, stock status problems, and other operational issues.
- Exceptions should show exception number, exception type, related record, related line, warehouse, location, item, lot, serial, affected quantity, severity, assigned user, reported by, reported date, reviewed by, reviewed date, resolution, and notes.
- Users should be able to report, assign, review, resolve, reject, and close exceptions according to their role.
- Managers should be able to see high-priority exceptions and records waiting for review.
- Review activity should support open, review-required, approved, rejected, and resolved outcomes.
- Exception detail views should show the related receipt, movement, transfer, outbound order, return, count, adjustment, inventory balance, or item context so users can resolve the issue without searching again.

### Operational Details Views

- Detail views should be the main place to review and manage an individual operational record.
- Detail pages must be generated as standard workspace pages for main business records that have useful context beyond the selected row, separate from create and edit modal forms.
- Do not generate a detail workspace for every schema object by default.
- Before generating pages, classify each candidate object as either a workspace record or a leaf record.
- Workspace records are parent, master, or operational header records with meaningful related records, review context, workflow actions, or traceability context.
- Leaf records are records that mainly exist as lines, assignments, allocations, list values, or intersections under another record.
- Leaf records should have searchable reports and create/edit modal forms where maintenance is needed, but they should not get standalone detail pages when the detail page would only show the same selected row.
- If a candidate detail page would contain only a context region and no meaningful related regions, workflow actions, or traceability context, remove that detail page from the generated page plan and remove links, menu entries, and breadcrumbs that point to it.
- Examples of leaf records that should normally not receive standalone detail pages are inbound receipt lines, outbound order lines, return lines, stock count lines, stock adjustment lines, stock transfer lines, stock allocations, business list values, and user role assignments.
- Search pages for leaf records, such as Stock Transfer Lines Search, are sufficient for scanning, filtering, export, and row maintenance; users do not need to drill into an empty Stock Transfer Line Detail page.
- Each detail workspace page must show a selected-record summary or context region for the primary record and related child regions filtered by the passed primary key context.
- Detail workspaces must not mechanically expand repeated reverse foreign-key relationships into separate sibling regions when those relationships point to the same child table; they should consolidate those rows into one role-aware related region per child table.
- Report, queue, summary, and related-record links should target a detail workspace only when the target object qualifies as a workspace record.
- Links for leaf records should keep users in the searchable report, navigate to the parent header detail page, or open the maintenance form as appropriate for the task.
- Create actions may open modal maintenance forms, and edit actions from a detail page may open a modal maintenance form for the current record, but modal forms must not replace detail workspace pages.
- For records with composite primary keys, drill-down links must pass all primary key columns from the selected row to the target detail workspace page in schema order.
- Warehouse details should show related areas, locations, stock, alerts, receipts, movements, transfers, outbound work, returns, counts, adjustments, and exceptions.
- Item details should show related policies, lots, serial numbers, balances, replenishment alerts, operational history, and traceability.
- Receipt, transfer, outbound order, return, count, adjustment, and exception details should show their header information, line details, related parties, related stock activity, review information, exceptions, and notes.
- User details should show profile information, role assignments, default warehouse, manager, assigned work, and relevant activity.
- Partner details should show sites, related receipts, outbound orders, returns, and operational history where relevant.
- Opening or expanding a record should keep the selected context and show related information for that record automatically.
- Users should be able to move from a summary, queue, report, or related record into the correct workspace or maintenance surface without reselecting the same business record.
- The following records should be treated as workspace records: Application User, Business List, Business Partner, Partner Site, Warehouse, Warehouse Area, Storage Location, Item, Inventory Lot, Item Serial, Item Warehouse Policy, Inventory Balance, Inbound Receipt, Outbound Order, Return, Stock Count, Stock Adjustment, Stock Transfer, Operational Exception, and User Role.
- Supporting records are records that mainly exist as lines, assignments, allocations, list values, or execution details under another business object.
- The following records should be treated as supporting records: Business List Value, Inbound Receipt Line, Outbound Order Line, Return Line, Stock Count Line, Stock Adjustment Line, Stock Transfer Line, Stock Allocation, Stock Movement, Replenishment Alert, and User Role Assignment.
- Supporting records should not receive standalone detail workspaces unless this specification explicitly describes a separate business workspace for that record type.
- Supporting records should remain usable through searchable reports, parent workspace related-record regions, create actions, and edit maintenance forms.
- Hub navigation should expose parent workspaces and major operational queues only.
- Warehouse Operations navigation should include Inbound Receipts, Operational Exceptions, Outbound Orders, Returns, Stock Adjustments, Stock Allocations, Stock Counts, Stock Movements, and Stock Transfers.
- Warehouse Operations navigation should not include Inbound Receipt Lines, Outbound Order Lines, Return Lines, Stock Adjustment Lines, Stock Count Lines, or Stock Transfer Lines.
- Line records remain available from their parent operational workspace, searchable reports, create actions, and edit actions.
- Editable rows should provide a clear edit affordance for authorized users.
- Edit access should pass the selected row context directly into the maintenance experience.
- Parent workspaces should provide create actions for natural child records where maintenance is allowed.
- Operational header workspaces for receipts, outbound orders, returns, stock adjustments, stock counts, and stock transfers should allow users to add lines from the selected header context.
- Line create actions should use concise business labels such as Create Line.

### Operational Attention

- Surface work needing attention through replenishment alerts, assigned records, review statuses, exception queues, dashboard summaries, and operational work lists.
- Highlight receipt discrepancies, transfer discrepancies, short picks, returns requiring review, count variances, adjustment approvals, blocked stock, and critical exceptions using the related schema-backed records.
- Attention views should show the relevant record number, warehouse, item, priority or severity, status, assigned user, and related detail link where available.

### Operational Controls

- Prevent duplicate business numbers, codes, and line numbers where records require unique business references.
- Keep operational quantities non-negative and consistent across receiving, transfers, outbound fulfilment, allocations, returns, counts, movements, and adjustments.
- Keep item warehouse policy quantities logically aligned, including minimum stock, reorder point, reorder target, safety stock, and replenishment lead time.
- Transfers should move stock between two different warehouses.
- Stock counts should use only the warehouse, area, location, or item context relevant to the selected count scope.
- Stock movements should include a meaningful source location, destination location, or status change based on the movement type.
- Normal fulfilment should use eligible available stock; quarantined, damaged, blocked, shipped, written-off, or otherwise unavailable stock should not be used for normal fulfilment.
- Returned stock should not become available until it has been reviewed and dispositioned.
- Review-required variances, discrepancies, and stock corrections should be reviewed before related stock changes are applied.

### Reporting

- Standard reports should cover inventory balances, items, lots, serial numbers, warehouses, locations, replenishment alerts, receipts, movements, transfers, outbound orders, allocations, returns, counts, adjustments, exceptions, and transaction history.
- Provide a clean inventory stock analysis report for authorized users.
- Provide transaction traceability and serial event reports for audit and operational review.
- Provide replenishment alert and operational exception reports for managers and controllers.
- Reports and data views should support ad-hoc analysis by end users.
- Users should be able to create their own filters, control visible columns, sort, group, and export authorized data.
- Routine operational lists should use standard tabular views for fast scanning, sorting, and export.
- High-volume queues and status-driven worklists should use guided filters with tabular results so users can narrow records by warehouse, area, item, partner, status, priority, assigned user, date range, and exception type.
- Plain-language assisted analysis should be reserved for analytical, audit, traceability, and exploratory views where users need to ask broader questions of the data.
- Query assistance should use report purpose, column names, business descriptions, data types, allowed values, and role visibility to guide the result.
- Plain-language assisted changes should be previewed or explained to the user before being applied when the change may alter filters, grouping, sorting, or displayed columns.

## Domain Values

- User Status: ACTIVE, INACTIVE, LOCKED.
- Role Codes: ADMINISTRATOR, WAREHOUSE_MANAGER, INVENTORY_CONTROLLER, OPERATIONS_USER, QUALITY_USER, BUSINESS_VIEWER.
- Role Scope: ENTERPRISE, WAREHOUSE, QUALITY, FINANCE, ADMIN.
- Role Assignment Status: ACTIVE, INACTIVE.
- Partner Type: SUPPLIER, CUSTOMER, CARRIER, INTERNAL.
- Partner Status: ACTIVE, INACTIVE, ON_HOLD.
- Partner Site Role: PRIMARY, SHIP_FROM, SHIP_TO, PICKUP, DELIVERY, RETURN.
- Business List Status: ACTIVE, INACTIVE.
- Warehouse Status: ACTIVE, INACTIVE, BLOCKED.
- Area Type: RECEIVING, STORAGE, PICKING, QUARANTINE, RETURNS, DISPATCH, STAGING.
- Area Status: ACTIVE, INACTIVE, BLOCKED.
- Location Type: RECEIVING, STORAGE, PICKING, QUARANTINE, RETURNS, DISPATCH, STAGING, BIN.
- Location Status: ACTIVE, INACTIVE, BLOCKED.
- Item Status: ACTIVE, INACTIVE, BLOCKED.
- Lot Status: ACTIVE, HOLD, EXPIRED, CLOSED.
- Serial Status: AVAILABLE, RESERVED, PICKED, PACKED, IN_TRANSIT, QUARANTINE, DAMAGED, BLOCKED, SHIPPED, WRITTEN_OFF.
- Serial Condition: GOOD, DAMAGED, SUSPECT, EXPIRED.
- Stock Status: AVAILABLE, RESERVED, PICKED, PACKED, IN_TRANSIT, QUARANTINE, DAMAGED, BLOCKED.
- Replenishment Alert Type: LOW_STOCK, OUT_OF_STOCK, PICK_FACE_REPLENISHMENT, AGING_REVIEW, SHORT_DATED_REVIEW.
- Replenishment Alert Status: OPEN, IN_REVIEW, ACTIONED, CLOSED, SUPPRESSED.
- Priority: LOW, MEDIUM, HIGH, CRITICAL.
- Exception Severity: LOW, MEDIUM, HIGH, CRITICAL.
- Receipt Source: SUPPLIER, TRANSFER, CUSTOMER_RETURN, INTERNAL_RETURN, OTHER.
- Receipt Status: PLANNED, ARRIVED, PART_RECEIVED, RECEIVED, REVIEW_REQUIRED, CANCELLED, CLOSED.
- Receipt Line Status: OPEN, PART_RECEIVED, RECEIVED, REVIEW_REQUIRED, CLOSED.
- Received Condition: GOOD, DAMAGED, SUSPECT, MISMATCH, SHORT, OVER.
- Movement Type: PUTAWAY, MOVE, REPLENISHMENT, STATUS_CHANGE.
- Movement Status: OPEN, RELEASED, IN_PROGRESS, COMPLETED, REVIEW_REQUIRED, CANCELLED.
- Transfer Status: DRAFT, RELEASED, IN_TRANSIT, PART_RECEIVED, REVIEW_REQUIRED, COMPLETED, CANCELLED.
- Transfer Line Status: OPEN, SHIPPED, PART_RECEIVED, REVIEW_REQUIRED, COMPLETED, CANCELLED.
- Outbound Order Type: CUSTOMER_ORDER, INTERNAL_REQUEST.
- Outbound Status: NEW, RELEASED, ALLOCATED, PICKING, PICKED, PACKED, DISPATCHED, REVIEW_REQUIRED, CANCELLED, CLOSED.
- Allocation Status: OPEN, ALLOCATED, PART_PICKED, PICKED, PACKED, PART_DISPATCHED, DISPATCHED, SHORT, CANCELLED.
- Allocation Method: FIFO, MANUAL, SPECIFIC_LOT.
- Return Type: CUSTOMER_RETURN, DELIVERY_RETURN, INTERNAL_RETURN, SUPPLIER_RETURN.
- Return Status: NEW, RECEIVED, UNDER_REVIEW, REVIEW_REQUIRED, DISPOSITIONED, CLOSED, CANCELLED.
- Returned Condition: GOOD, DAMAGED, SUSPECT, EXPIRED, INCOMPLETE.
- Return Disposition: RETURN_TO_STOCK, QUARANTINE, WRITE_OFF.
- Count Scope: WAREHOUSE, AREA, LOCATION, ITEM.
- Count Status: PLANNED, IN_PROGRESS, REVIEW_REQUIRED, COMPLETED, CANCELLED.
- Count Line Status: OPEN, COUNTED, REVIEW_REQUIRED, RESOLVED.
- Count Resolution: ACCEPTED, ADJUSTMENT_REQUIRED, RECOUNT_REQUIRED, WRITEOFF_REQUIRED.
- Adjustment Type: MANUAL_ADJUSTMENT, STATUS_CORRECTION, WRITE_OFF, COUNT_VARIANCE.
- Adjustment Status: OPEN, REVIEW_REQUIRED, APPROVED, APPLIED, REJECTED, CANCELLED.
- Adjustment Direction: INCREASE, DECREASE, STATUS_CHANGE.
- Review Status: OPEN, REVIEW_REQUIRED, APPROVED, REJECTED, RESOLVED.
- Exception Type: RECEIPT_DISCREPANCY, TRANSFER_DISCREPANCY, PICK_SHORTAGE, ITEM_NOT_FOUND, RETURN_REVIEW, COUNT_VARIANCE, STATUS_PROBLEM, OTHER.
- Related Record Type: RECEIPT, TRANSFER, OUTBOUND_ORDER, RETURN, COUNT, ADJUSTMENT, INVENTORY.
