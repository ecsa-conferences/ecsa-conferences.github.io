---
layout: default
title: History - ECSA
header: History
permalink: /series/history-alt/
---

The European Conference on Software Architecture (ECSA) has its roots in the European Workshop on Software Architecture (EWSA), which was inaugurated in 2004. Due to its rapid growth and popularity, EWSA evolved into the first edition of ECSA in 2007.

{% assign last_edition = site.data.editions | sort: "year" | last %}

ECSA is a top ranked conference venue for researchers with an 'A' CORE conference rank since its entry in 2010, and more recently according to [CORE2023](http://portal.core.edu.au/conf-ranks/?search=ECSA&by=all&source=CORE2023). ECSA is held yearly in Europe around September, currently in its {{last_edition.edition}} edition.

<table>
{% for c in site.data.editions %}
    {% unless c.name contains 'EWSA' %}
    {% assign link_url = c.url %}
    {% if link_url == "" %}
        {% assign link_url = c["url-archive"] %}
    {% endif %}
    <tr>
        <td><a href="{{ link_url }}" target="_blank" rel="noopener noreferrer">{{ c.name }}</a></td>
        <td>{{ c.date }}</td>
        <td>{{ c.location }}</td>
    </tr>
    {% endunless %}
{% endfor %}
</table>


## EWSA

European Workshop on Software Architecture

<table>
{% for c in site.data.editions %}
    {% if c.name contains 'EWSA' %}
    {% assign link_url = c.url %}
    {% if link_url == "" %}
        {% assign link_url = c["url-archive"] %}
    {% endif %}
    <tr>
        <td><a href="{{ link_url }}" target="_blank" rel="noopener noreferrer">{{ c.name }}</a></td>
        <td>{{ c.date }}</td>
        <td>{{ c.location }}</td>
    </tr>
    {% endif %}
{% endfor %}
</table>
