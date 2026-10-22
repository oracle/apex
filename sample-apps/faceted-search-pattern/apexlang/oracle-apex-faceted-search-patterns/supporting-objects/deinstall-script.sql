-- Faceted Search Patterns: Supporting Objects deinstallation.
-- Run in the application's parsing schema through APEX Supporting Objects.
-- Drops the objects defined in FSP_SO and deletes all data in their tables.
-- Associated indexes and constraints are dropped with the tables.
-- Expects the supporting objects to exist; intended for a complete installation.

-- 1. Reporting views.
DROP VIEW FSP_EMPLOYEE_EVENTS_V;
DROP VIEW FSP_EMPLOYEE_ORG_V;

-- 2. Employee associations and events.
DROP TABLE FSP_EMPLOYEE_EVENTS;
DROP TABLE FSP_EMPLOYEE_GROUPS;
DROP TABLE FSP_EMPLOYEE_SKILLS;

-- 3. Standalone task and gallery data.
DROP TABLE FSP_TASKS;
DROP TABLE FSP_PATTERNS;

-- 4. Employees, including the self-referencing manager constraint.
DROP TABLE FSP_EMPLOYEES;

-- 5. Reference tables, after their dependent tables have been removed.
DROP TABLE FSP_LOCATIONS;
DROP TABLE FSP_COST_CENTERS;
DROP TABLE FSP_GROUPS;
DROP TABLE FSP_SKILLS;
DROP TABLE FSP_COUNTRIES;
