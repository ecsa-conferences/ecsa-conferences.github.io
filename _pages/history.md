---
layout: default
title: History - ECSA
header: History
permalink: /series/history.html
---

The European Conference on Software Architecture (ECSA) has its roots in the European Workshop on Software Architecture (EWSA), which was inaugurated in 2004. Due to its rapid growth and popularity, EWSA evolved into the first edition of ECSA in 2007.

<table>
{% for c in site.data.editions %}
    {% if c.name != 'EWSA' %}
    {% assign link_url = c.url %}
    {% if link_url == "" %}
        {% assign link_url = c["url-archive"] %}
    {% endif %}
    <tr>
        <td><a href="{{ link_url }}" target="_blank" rel="noopener noreferrer">{{ c.name }} {{ c.year }}</a></td>
        <td>{{ c.date }}</td>
        <td>{{ c.location }}</td>
    </tr>
    {% endif %}
{% endfor %}
</table>


## EWSA

European Workshop on Software Architecture

<table>
{% for c in site.data.editions %}
    {% if c.name == 'EWSA' %}
    {% assign link_url = c.url %}
    {% if link_url == "" %}
        {% assign link_url = c["url-archive"] %}
    {% endif %}
    <tr>
        <td><a href="{{ link_url }}" target="_blank" rel="noopener noreferrer">{{ c.name }} {{ c.year }}</a></td>
        <td>{{ c.date }}</td>
        <td>{{ c.location }}</td>
    </tr>
    {% endif %}
{% endfor %}
</table>
