---
title: Cloud is not cheap
date: 2025-02-14T19:00:00+01:00
draft: false
---

# Cloud is not cheap

I have worked in IT for 20+ years. I have deployed web-scale applications on the cloud. Let me share my amazing knowledge with you! Episode 2.

The cloud is not cheap. It is powerful.

There's a reason that we started calling the actual cloud "hyperscalers". Once people started thinking that they could just run their "OwnCloud" on a RaspberryPi, it had to be made clear that cloud computing is not about just putting your tiny workload on a remote VM.

The cloud is built to sustain tremendous traffic to highly-available, and near-infinitely scalable services that are resistant to physical offensive actors and disasters.

Of course, your personal WordPress blog can also somehow be hoisted onto this complex machine that runs some of the most demanding workloads in the world, but be aware of the capabilities of the vehicle you're trying to commandeer - or you will crash it and end up with a huge bill.

Even if you only register a domain name, prepare to be charged for people purely querying your registrar for your records. Forget the 12 USD for holding the name.

If you don't replicate, don't backup, don't continuously test-restore backups of all ages, don't encrypt your data with your own keys, don't replicate your keys, don't log all API traffic and monitor it for suspicious patterns, don't monitor load, don't monitor costs, don't have notifications set up, don't delegate access to your own identity provider and all that goes along with it, then it should be no surprise that you're saving money with your cloud migration. But why are you even using the cloud then? If you want the power of the cloud, carefully fill out that cost estimation beforehand and also estimate your costs for excessive, sustained load.

For the cloud to be effective, its resources need to be generally public. All security is implemented on layer 7. That's why it's so important to implement least-privilege principles. If any of that was already foreign to you, it's possible that you don't have a full understanding of the security of your cloud deployment. The cloud has a shared responsibility model, and all of this stuff is part of your share. Nobody likes to write these very verbose IAM Policies, but you really have to do it.

If there is a DDoS protection service offered, and you consider it too expensive for your deployment, consider the outcome of an actual DDoS attack on your public infrastructure - even if it is just your WordPress blog.

The cloud is awesome. Just don't lease a Bugatti for 1M and then leave it in the shopping mall parking lot with the doors open and the engine running.
