-- macros/combine_names.sql
{% macro combine_names(first_name, last_name) %}
    concat({{ first_name }}, ' ', {{ last_name }})
{% endmacro %}