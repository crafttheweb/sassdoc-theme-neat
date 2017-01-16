
<nav class="side-nav">
  {% if view.links %}
        <ul class="social">
            {% if view.links.github %}
                <li><a class="github" href="{{ view.links.github }}">GitHub / Install</a></li>
            {% endif %}
            {% if view.links.twitter %}
                <li><a class="twitter" href="{{ view.links.twitter }}">Twitter</a></li>
            {% endif %}
            {% if view.links.gitter %}
                <li><a class="gitter" href="{{ view.links.gitter }}">Gitter</a></li>
            {% endif %}
        </ul>
    {% endif %}

    {% if view.library.homepage %}
        <a class="logo-container" href="{{ view.library.homepage }}">
            {% if view.logoPath %}
                <img alt="{{ view.library.name }} Logo" class="logo" src="{{ view.logoPath }}">
            {% elseif view.library.name %}
                {{ view.library.name }}
            {% endif %}
        </a>
    {% endif %}

  <ul class="list">
    {% for group_name, group in data.byGroupAndType %}
      {% for type, items in group %}
        {% if type == "mixin" %}
          {% include "type_list.swig" %}
        {% endif %}
      {% endfor %}
      {% for type, items in group %}
        {% if type == "function" %}
          {% include "type_list.swig" %}
        {% endif %}
      {% endfor %}
      {% for type, items in group %}
        {% if type == "variable" %}
          {% include "type_list.swig" %}
        {% endif %}
      {% endfor %}
    {% endfor %}
  </ul>
</nav>
