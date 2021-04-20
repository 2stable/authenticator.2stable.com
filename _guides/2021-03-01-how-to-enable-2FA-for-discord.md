---
layout: post-2fa-guides
title: How to enable 2FA for Discord
description: A Step-by-Step how to setup two-factor authentication option for Discord
permalink: /2fa-guides/how-to-enable-2FA-for-discord/
my-image: /assets/guides/discord/discord.svg
image: /assets/guides/discord/2fa-discord.jpg
tags: "2fa, security, TwoFactorAuthentication"
author: Aries Ikel
twitter: i40504
twitter-2stable: AuthWidget
---
<div class="pb-5 py-md-5">    
    {% for step in site.data.guides.discord.steps %}
    <section class="guide-release-note position-relative py-6 px-2 text-left">
        <header class="guide-timeline-decorator d-flex align-items-center mb-1">
            <span class="guide-badge d-inline-block bg-primary p-1 rounded-circle text-bold">{{ step.index }}</span>
            <h2 class="f3-light my-0 guide-title ps-3 px-md-0">{{ step.name }}</h2>
        </header>
        <ul class="list-unstyled guides p-0">
            <li class="ps-5 px-md-0">
                <p>{{ step.details }}</p> 
                <img class="w-100 rounded-3" src="{{ step.img }}" alt="{{ step.name }}">
            </li>
        </ul>
    </section>
    {% if step.footer %}
    <div class="text-center">
        <div class="col-lg-8 lead pt-md-4 mx-auto"><p class="px-2">{{ step.footer.details }}</p></div>
        <div class="pb-5">
            <a class="icon-link" href="{{ step.footer.url }}" style="text-decoration: none;" target="_blank">{{ step.footer.more }}
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi" viewBox="0 0 16 16"><path fill-rule="evenodd" d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z"/></svg>
            </a>
        </div>
        <p>{{ step.footer.action }}</p>
        <div class="btn btn-outline-primary px-4 me-2">{{ step.footer.buttons[0] }}</div>
        <div class="btn btn-outline-secondary px-4">{{ step.footer.buttons[1] }}</div>
    </div>
    {% endif %}
    {% endfor %}
</div>
