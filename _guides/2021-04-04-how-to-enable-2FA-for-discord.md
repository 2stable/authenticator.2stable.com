---
layout: post-2fa-guides
title: How to enable 2FA for Discord
# description: Secure and fast Two-Factor Authentication manager for iPhone, iPad, iPod, Apple Watch and macOS.
author: Aries Ikel
twitter: i40504
permalink: /2fa-guides/how-to-enable-2FA-for-discord/
image: /assets/guides/discord/discord.svg/
# categories: ssasa
---

<div>
    <div>    
        {% for step in site.data.guides.discord.steps %}
        <section class="guide-release-note position-relative py-6 px-2 text-left">
            <header class="guide-timeline-decorator d-flex align-items-center mb-1">
                <span class="guide-badge d-inline-block bg-primary p-1 rounded-circle text-bold">{{ step.index }}</span>
                <h2 class="f3-light my-0 guide-title ps-3 px-md-0">{{ step.name }}</h2>
            </header>
            <ul class="list-unstyled guides p-0 ">
                <li class="ps-5 px-md-0">
                    <p>{{ step.details }}</p> 
                    <img class="w-100 rounded-3" src="{{ step.img }}" alt="{{ step.name }}">
                </li>
            </ul>
        </section>
        {% endfor %}
        <div></div>
    </div>
</div>