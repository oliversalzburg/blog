---
title: S3 is public
date: 2025-02-13T19:00:00+01:00
draft: false
tags:
    - amazing
---

# S3 is public

I have worked in IT for 20+ years. I have deployed web-scale applications on the cloud. Let me share my amazing knowledge with you! Episode 1.

The name of your AWS S3 Bucket is a globally unique identifier that everybody can address.

If someone can guess the name of your bucket, they can address it. If AWS responds with "Permission denied" for an S3 Bucket request, it already confirms access policies to be in effect on a bucket with that name. If the name is not in use, AWS S3 responds with a clear "NoSuchBucket" error. Once external actors identify your bucket name to exist, it goes on a watch list of all S3 Bucket names known to be valid targets. Misconfigure your access policies only briefly, and someone might already have been waiting for it.

You own that resource on the cloud. It's not just some make-believe concept. There is an actual thing out there on the Internet, that you requested to exist, and for which you are at least financially responsible. You will pay for traffic. You might even pay for just the volume of requests to your resource.

The naming pattern you pick for your S3 resources is not patented to you. If someone figures out that you love to use companyname-accountid-configs for your assets, they can enumerate the entire existing namespace, and also squat S3 Bucket names you "need" for your own expansion.

And once you start using an S3 Bucket name, make sure you stay in control over it. Your S3 Bucket should never be publicly connectable, but if you have made that mistake, you don't want someone else to be serving their malicious payload through your poorly chosen S3 Bucket name.

There have been several articles in the recent past that particularly highlight AWS S3 as an insecure service, just because people keep putting confidential information on a cloud service that has been designed to _deliver_ data, not hide it. Be aware of your actions
