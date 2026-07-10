# Shared Catalog Guidelines

These rules apply across pattern pages unless APEX metadata explicitly says otherwise.

## Component Attribute Mapping

Example query column names are illustrative, not required. A pattern may use any query column names as long as the APEX component attributes are mapped to the columns that provide the intended values.

When adapting a pattern, preserve the meaning of the component attribute mappings rather than the exact sample column names.

## Semantic Attribute Groups

Some component attributes work as a semantic group. Examples include badge value, badge state, and badge icon.

When a pattern uses grouped attributes, the mapped values should tell a consistent story. For example, a positive trend value should use a state and icon that also communicate positive movement.

## State Values

State columns should use values supported by the target APEX component or Universal Theme feature so built-in color coding and accessibility semantics work as intended.

For common badge and status use cases, expected semantic states include:

- `success`
- `danger`
- `warning`
- `info`

Use these states intentionally. Do not treat them as arbitrary color names.

## Formatting For Scanning

Values intended for quick scanning should be formatted for readability. Large numbers should generally use thousands separators. Dates, percentages, durations, and units should use consistent formatting within the same region.

## Scoped Custom CSS

Page-level custom CSS should be scoped to a region-specific or pattern-specific class. Add the custom class to the affected region and prefix selectors with that class.

Use this approach to keep custom styling local to the intended component and avoid unintended changes to other Universal Theme components on the page.

The class name should describe the affected pattern or region, such as `app-MetricCards`, rather than the visual tweak itself.

Custom CSS should include a short comment explaining what the scoped rule does.

## Contextual Detail Actions

Summary regions such as charts, content rows, and compact lists may include an optional detail action when users are likely to inspect the data behind the summary.

Place region-level detail actions in the region's Edit button slot when available. This keeps the action visually attached to the region header and prevents it from competing with the region content.

The action can be presented as a text link, text button, or icon button depending on emphasis:

- Use a text link or text button when the detail path is a common or important follow-up.
- Use an icon button when the detail path should be available but lower emphasis.
- Omit the action when the region is purely informational or when detail navigation would distract from the overview.

Repeated detail actions do not need unique comments unless they behave differently. A single page-level or shared guideline is enough when the examples are representative.

## Generic Labels

Pattern pages may use generic labels such as `Primary Action`, `Secondary Action`, and `Action 1` when the goal is to demonstrate structure rather than a business workflow.

When adapting a pattern to a real application, replace generic labels with domain-specific labels that preserve the same action hierarchy.
