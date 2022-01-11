{% macro limit_data_in_dev(column_name, days_back = 3) %}
{% if target.name == 'default' %}
where {{ column_name }} >= dateadd('day', - {{ days_back }}, current_timestamp)
{%- endif -%}
{%- endmacro -%}