---
layout: default
title: History - ECSA
header: History
permalink: /series/history-alt/
---

The European Conference on Software Architecture (ECSA) has its roots in the European Workshop on Software Architecture (EWSA), which was inaugurated in 2004. Due to its rapid growth and popularity, EWSA evolved into the first edition of ECSA in 2007.

{% assign last_edition = site.data.editions | sort: "year" | last %}

ECSA is a top ranked conference venue for researchers with an 'A' CORE conference rank since its entry in 2010, and more recently according to [CORE2023](http://portal.core.edu.au/conf-ranks/?search=ECSA&by=all&source=CORE2023). ECSA is held yearly in Europe around September, currently in its {{last_edition.edition}} edition.

{% assign editions = site.data.editions | sort: "year" | reverse %}
<div class="grid lg:grid-cols-4 grid-cols-1">
    {% for c in site.data.editions %}
    {% unless c.name contains 'EWSA' %}
    <div class="lg:col-span-4 border-t border-gray-300 my-3"></div>
    <div class="flex lg:flex-col flex-row lg:py-4 pt-4">
        <div class="font-semibold">{{ c.name }}</div>
        <div class="lg:hidden px-2">|</div>
        <div>{{ c.date }}</div>
        <div class="lg:hidden px-2">|</div>
        <div>{{ c.location }}</div>
    </div>
    <div class="lg:col-span-3 justify-start">
        {% include banner.html edition=c %}
    </div>
    {% endunless %}
    {% endfor %}
</div>


## EWSA

European Workshop on Software Architecture

<div class="grid lg:grid-cols-4 grid-cols-1">
    {% for c in site.data.editions %}
    {% if c.name contains 'EWSA' %}
    <div class="lg:col-span-4 border-t border-gray-300 my-3"></div>
    <div class="flex lg:flex-col flex-row lg:py-4 pt-4">
        <div class="font-semibold">{{ c.name }}</div>
        <div class="lg:hidden px-2">|</div>
        <div>{{ c.date }}</div>
        <div class="lg:hidden px-2">|</div>
        <div>{{ c.location }}</div>
    </div>
    <div class="lg:col-span-3 justify-start">
        {% include banner.html edition=c %}
    </div>
    {% endif %}
    {% endfor %}
</div>