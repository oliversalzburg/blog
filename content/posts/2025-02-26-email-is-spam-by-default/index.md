---
title: No E-Mail is trustworthy
date: 2025-02-26T09:23:10+01:00
draft: false
tags:
    - amazing
---

# No E-Mail is trustworthy

I have worked in IT for 20+ years. I've set up and managed SMTP infrastructure on the public internet. Let me share my amazing knowledge with you! Episode 5.

Have you ever heard someone complain about e-mail not being encrypted and "insecure"? How often do you encrypt an e-mail though, if ever? And, if it's so insecure, where is your security compromised? Who are these people that are apparently reading all your unencrypted e-mail?

While IT security people would absolutely love it if every single e-mail was encrypted, let's take a step back, because "e-mail encryption" is misguiding terminology. Most issues in e-mail security are not resolved by making the contents of the e-mail unreadable to eavesdroppers. Of course, your employer reads all your company e-mails, Google reads all your Gmail messages, as does every other e-mail provider. But people who can monitor and record your internet communication are already happy just knowing who exchanges e-mails with each other. Being able to construct social graphs is more valuable than the cat picture you're sending.

If a malicious actor sends you an encrypted e-mail, then it's still malicious. You gain nothing from the message being unreadable to others. The actual security is established when the message you receive is encrypted with a _trusted_ key. When I send you an encrypted message, you must be able to ensure that it was actually me, and my key, that created the message. You might have heard of "signing" an e-mail cryptographically. This is the process that establishes that trust, content encryption is extra.

While we have made great advances in preventing anyone from sending an e-mail from oliversalzburg@gmail.com, nobody is trying that anymore. It's much easier to register a new account or domain and impersonate senders. If oliversalzburq@gmail.com sends you an e-mail, will you notice it? Did you even notice the difference right now?

Have you ever clicked on a link in a phishing e-mail? Did you ever follow a link from a postal service mail informing you about a package you didn't know you ordered? Did you ever open an Excel attachment and only backed out at the last second when Excel asked you if you want to enable scripts in the document? Worse?

So who are these people that are apparently reading all your unencrypted e-mail? It's you.

> Bonus content
>
> 1. Just _reading_ a modern email in your email client will leak information about you that you're not aware of.
> 1. Every e-mail attachment is a virus. No file format is safe.
> 1. Every link in an email is a shortcut to lose your job and/or life savings. No exceptions.
>
> Read your e-mails as plain-text only. Refuse to open attachments. Never follow links in e-mails. Open your web browser yourself, navigate to the site in question, find the call to action, download the file from the website.
> Why is this more secure? HTTPS/TLS establish trust that e-mail doesn't have.
