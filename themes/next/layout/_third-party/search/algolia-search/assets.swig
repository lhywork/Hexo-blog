{% if theme.algolia_search.enable %}

  {# S: Include Algolia instantsearch.js library #}
  {% set algolia_instant_css = url_for(theme.vendors._internal + '/algolia-instant-search/instantsearch.min.css') %}
  {% if theme.vendors.algolia_instant_css %}
    {% set algolia_instant_css = theme.vendors.algolia_instant_css %}
  {% endif %}
  <link rel="stylesheet" href="{{ config.cdnUrl }}{{ algolia_instant_css }}">

  {% set algolia_instant_js = url_for(theme.vendors._internal + '/algolia-instant-search/instantsearch.min.js') %}
  {% if theme.vendors.algolia_instant_js %}
    {% set algolia_instant_js = theme.vendors.algolia_instant_js %}
  {% endif %}
  <script src="{{ config.cdnUrl }}{{ algolia_instant_js }}"></script>
  {# E: Include Algolia instantsearch.js library #}

  <script src="{{ config.cdnUrl }}{{ url_for(theme.js) }}/src/algolia-search.js?v={{ theme.version }}"></script>
{% endif %}
