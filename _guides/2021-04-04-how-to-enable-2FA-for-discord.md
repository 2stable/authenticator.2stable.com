---
layout: post-2fa-guides
title: How to enable 2FA for Discord
author: Aries Ikel
twitter: i40504
permalink: /2fa-guides/how-to-enable-2FA-for-discord/
image: https://www.vectorlogo.zone/logos/discordapp/discordapp-official.svg
# categories: ssasa
---

<div>
    <div>    
        {% for step in site.data.guides.discord.steps %}
        <section class="guide-release-note position-relative py-6 px-3 text-left">
            <header class="guide-timeline-decorator d-flex align-items-center mb-3">
                <span class="guide-badge d-inline-block bg-primary p-1 rounded-circle me-2 text-bold">{{ step.index }}</span>
                <h2 class="f3-light my-auto ps-md-4 ps-2">{{ step.name }}</h2>
            </header>
            <ul class="list-unstyled guides p-0 ">
                <li class="px-5 px-md-0">
                    <p>{{ step.details }}</p> 
                    <img class="w-100" src="{{ step.img }}" alt="{{ step.name }}">
                    <!-- <div class="change-badge change-badge-added"></div> -->
                    <!-- <div class="change-description"></div> -->
                </li>
            </ul>
        </section>
        {% endfor %}
    </div>
</div>