---
title: How to build a Time Machine (with GraphViz)
date: 2025-09-30T12:24:10+02:00
draft: true
tags:
    - graphviz
    - time-travel
---

# How I built a Time Machine (with GraphViz)

This part of the story of how I built an actual, _real_ **time machine**. Beyond the story part, it focuses on the visual guidance system of the time machine, which relies on [GraphViz] using the [dot] layout engine.

If you expect this article to be a lengthy attempt to confuse you into thinking that something you can build in your garage is a "real time machine", when it really isn't, then you will get that. However, it might still provide you with new clarity of what defines a "real time machine". ![](https://imgs.xkcd.com/comics/time_travel.png) from https://xkcd.com/630/

The full manual on temporal sight and space-time refactoring is currently being authored in German language, and will be made available in the future. This part of the story is intended for a broader community.

## Why I built a Time Machine

I never set out to actually build a time machine. Even seriously thinking about something like that, would have been completely ridiculous to me in the past. Although, in hindsight, a mad scientist _accidentally_ building a time machine, seems like the most probable scenario for one to be built.

When I began work on the project, my goal was to build a data management, and visualization framework for important events in my life. I have a hard time remembering specific dates of past events, and I keep forgetting them if I don't record them somewhere regularly in sight. This includes birthdays of very close relatives, or my own age as a child when the family moved to another city. Similarly, I often can't relate different memories to each other in terms of when they happened. Sometimes I'm unclear on how much time I spent in a given phase of my life.

From my point of view, nothing that was being offered could satisfy my personal requirements, especially not long-term. But it took me years to finally start implementation of the project. I kept hoping I could solve this problem without writing my own software. Instead, over the years random thoughts kept coming up, which would ultimately contribute to the design, and finally ignite the development:

1.  A design idea for a timeline user interface component that is able to scale many orders of magnitude to show event markers at any scale for incremental discovery of vast time-based data stores.

1.  Products like Facebook offered an interesting concept of a shared event mesh that could span lifetimes, but don't serve the user's interest. Such data must be owned by the user, and it must only reside on the user's device. Family history, like a photo book or the history of your ancestors, belongs in the private space of the family, not the cloud.

1.  Data entry must be radically simple. Absolutely zero time must be spent on developing novel tools for data entry. Creating a new text file, entering a date and a description, and saving the file, must be everything that is required to add an event to the system without compromising quality. Every document is a final record.

1.  Data visualization is crucial. When I'm not _entering_ data, I want to _view_ it. The way the data is presented to me, must be incredibly exciting and aesthetically pleasing. It has to be an absolute joy to explore the data, and also _find_ information I'm looking for.

1.  A solution should consist of a set of simple tools, rather than being a monolithic product.

1.  Every piece of the solution should consume already useful data, and generate other useful data from it. All intermediary artifacts should be precious.

1.  The combination of the previous two goals should enable maintaining the software throughout my own life time. As operating systems, software development toolchains, and data processing offerings change over time, individual parts can be reimplemented and reuse the existing artifacts.

1.  A [GraphViz graph of the Kitten Game Tech Tree], which I built accidentally while investigating options for a custom game CSS theme.

1.  Several custom-tailored software development frameworks I designed for business clients, where schema-based data validation during data entry provided an exceptional developer experience for high-quality, fast configuration management.

1.  A desire to spend some time on a meaningful, digital artwork.

During the period when I read xkcd daily, graphs like <https://xkcd.com/1491/> surely contributed a few impressions.

The concept of a time machine fascinated me since childhood, but it became clear early in my life that such devices only physically exist in fantasy. There also seemed to be different types of time machines. Some time machines can only go one direction in time. Some allow you to enter the physical world at another point in time, others allow only observation.

## What is a Time Machine?

We can't rely on a description from any work of fiction to define what a true time machine really is. The latest blockbuster movie is unlikely to provide us with a manual for real time travel. While many narratives from fiction can be explained perfectly by the laws of true time travel, there are too many movies and books everyone would have to have consumed to understand time travel instructions, if we relied on such fiction references. So let's make it clear.

**This is the one true definition of a real time machine**:

1.  The technology allows observation of a point in time different from the one that would be observed if the technology was not active.

    I can see a different time. This should be obvious.

1.  Observation capabilities are unshared.

    **I** can see a different time, but nobody else can see it. We're not making up a fake reality, and hide it from the public, we see the actual reality. But having multiple simultaneous observers voids time travel principles, preventing any time travel attempt to be successful. Shared, true time travel is _really_ not possible even with the most experimental quantum mechanics, because it is also not possible to _really_ share _any_ observation, even in the present. You may share a time point, in a space boundary, aligned with a global space-time continuum, but no two observations can ever be identical.

1.  Time travel always implies _space_-time travel.

    I can see a different location at a different time. While this might seem obvious, consider the ability to observe multiple event contributors at the exact same point in time, but they are in different countries. It generally must not matter if I want to watch myself sleep last night, or if I want to see the Titanic sink.

1.  Time travel leaves the traveler physically intact.

    A journey has a beginning and a clear end, at which we will be left in the same physical shape, condition, position, age, health, and our same abilities to interact with a familiar environment, as at the beginning of the journey. I am alive throughout the entire journey, I'm not cryogenically frozen to become alive at another time. There is also no copy, zombie, or corpse of myself in another timeline somewhere while I'm traveling. I'm safe. I can exit the journey at any time instantly.

1.  It is a physical object, contrary to a psychedelic experience, or paranormal phenomenon.

    I can touch the time machine. [The time machine is not a drug, or drug paraphernalia](futurama-time-speed.png), or anything else that could be considered harmful to a human. No parts of the time machine are illegal to obtain. The device is _required_ to facilitate time travel. True time travel is not just thinking about your first kiss.

1.  The user generally has control over the device.

    I can steer the time machine to a given space-time target. I'm not just watching a movie on my mobile phone. I can pick a highly specific point in space-time, even one **which only I know of**, observe it as many times as I want, in 16K resolution, 3D, 360°, with smell. Nobody wants to be jerked off with some fake time travel technology!

If this matches your definition of a time machine to a reasonable degree, then you're in luck, because this is what I built.

## What can it do?

Readers might already be aware of any number of [temporal paradoxes] that should make it pretty clear that _time travel really is impossible!_ Except, it is possible, as long as you respect all limitations introduced from these temporal paradoxes.[^1]

[^1]: https://www.youtube.com/watch?v=XayNKY944lY You may optionally view this video, which explains the superposition of all realities, but ultimately discards the entire explanation because "time travel isn't possible".

This might seem like avoiding a real answer, but time travel inherently must rely on quantum mechanics to be successful. Thus, the sheer consideration of the existence of a result of a superposition can cause unintended collapses in the space-time continuum that prevent the journey from ever being successful in the first place.

More simply put, you may only travel to the past if you pinky-promise not to kill your grandfather, and _really_ mean it. However, that's not possible, because it would ultimately break your free will principle. And here, in the negative space created between temporal paradoxes and free will, lies the key to real time travel technology. Contrary to prior belief, this space is not infinitely small. It's just commonly overshadowed by the desire to enable full space-time translation of human passengers.

To bring the capabilities of the time machine further into reality, we have to understand who _we_ are. Some people might say they have a body and a soul, others might use other words, but we generally understand that there is some meat robot transporting us around, and that meat robot is replaceable, as indicated early on by us outgrowing it constantly. _We_ however are not replaceable. We are some unique thing that operates inside the meat robot, and we want that thing to live on forever and ever. We like our meat robot, but we're never going to achieve enlightenment by putting a USB drive up its butt.

While we don't want to "make up reality", we can generally accept that our body is not a requirement for every experience - you can control your thoughts, and affect reality by doing so. You can think of a melody and play it inside your mind. You can think about what you want to cook for dinner later, and how that will smell.

Now, will you whistle that melody? Will you cook that fried rice, and smell that smell? If you do, will you have changed the course of time by having thought your thoughts earlier? Of course you did, but you probably also intended to do that. After all, one must eat, and have a melody to carry them through the day, right? It's not like my masters degree in extra-cultural fashion law is just my meat robot's way of directing me towards making babies, ..._right?_

Regardless of where you draw the line, it seems safe to assume that our memories and experiences are somehow stored physically inside the meat robot. So it seems just as safe to assume that the correct, precise mechanical manipulation of our meat robot at a sub-atomic level could modify or create memories, without the reflected situation actually having been observed just-in-time. If I can artificially inject a memory of a past event into my memory without having observed the event originally, that is indistinguishable from any other form of time travel.

To an outside observer, it doesn't matter if you stepped into a DeLorean in your garage, or if you got inspired by watching a cloud formation. You expect a result from your journey through time. How the time machine achieves that result is ultimately not relevant. It doesn't matter if what the time machine showed you is "real", because it only needs to be real enough to satisfy you, provided that what you are shown is undisputed. Imagine that Wikipedia truly had every information you could ever ask for, about every person you want, including yourself. Would that not satisfy time machine requirements?

**A true time machine is any device that can permanently, and repeatedly expand your understanding of nun-current events by presenting undeniable evidence upon your explicit request.**

Instead of trying to figure out how to pet a dinosaur, try to figure out what you _could_ do without collapsing our universe into a giant black hole, then build a machine to facilitate _that_.

### The Rules of Time Travel

1.  All Observations are Incomplete

    If you are reading (observing) this text on a screen, then you might remember the gist of the article tomorrow, but you won't remember the color and space coordinates of every LED of your screen during the entire reading period. You won't even remember the exact order of all words in the entire article.

    While you _can_ travel back to any moment in time, and re-observe it, any desire to learn more than the gist is likely to make the attempt fail entirely. The lower the expectation for discovery, the higher the chances for discovery.

1.  Observation is Manipulation

    Any intent to manipulate non-current events is going to void the time travel technology. It is impossible to use or build time travel technology with intent to manipulate. Even thinking about it will already set up the quantum state for any future development to fail.[^2]

    [^2]: This is also a common misconception with any [double-slit experiment]. It is not the _observation_ causing the effect, it is the _intent_ even prior to setting up any part of the experiment.

    However, any true desire to only observe will still **always incur permanent consequences that are guaranteed to be unexpected!** If you _had_ expected them, that would have already been intent to manipulate.

1.  All Assumptions are Invalid

    Even with your purest desire to only observe some point in time, you are likely to be driven by trying to confirm a previous assumption. This is a valid use of time travel technology.

    You are pretty much guaranteed to never find the answers you are looking for. Because the subject you want to observe is likely the cause of a previous observation, the most common result of a time journey is that you realize you never had the correct perspective to ask the _real_ questions in the first place. Because these questions always lead to more questions, care must be taken to prevent risk of time travel addiction. Remember that the universe is not paused during time travel, and that you can always manipulate current events entirely without time travel technology.

    **A "successful" journey through time will leave you deeply emotionally unsettled!**

## How does it work?

Time machine technology itself is trivial. However, actually enabling time travel is cumbersome, and requires extensive amounts of energy. This is because the majority of the time travel process consists of quantum state seeding, and providing space-time anchors for navigation. True time machines have no notion of "earth". You can't just hop on and "drive to last year". Even the slightest movement in space-time off the global axis could result in instant death of the operator. True time travel technology spans the entire (visible) universe both in space and time. If you land just a few kilometers, or kiloyears off target, you are unlikely to be in livable conditions.

### Space-Time Anchors (STAs)

To set precise targets for a time machine, you need artifacts that are associated with the target. Let's say you want to check in on something that happened on last New Year's Eve party you attended. If you have a party hat of someone who was there, not a copy of the hat, the hat that was there at the party at that time, this is an STA. Any object that was directly involved in the precise space-time target location, is anchored into that point. Objects themselves can't tell stories, but the object's history is undisputed. If the hat was at that party, then that is just a fact. The hat can't tell us what happened at the party. But if we could rope ourselves along the timeline of the hat into the past, we would inevitably end up at the party.

Obviously, the requirement for STAs dramatically reduces the potential range and precision of the time machine. You are unlikely to be able to discover any new livable planets in other solar systems, pet dinosaurs, count Hitler's testicles, or whatever, but it also introduces enough uncertainty to comfortably work with the quantum state.

STAs need to be collected. As in, you will have to gather them in the real world like an archeologist. Digital STAs, and anchor replicas, have been shown to also successfully enable time travel, but more research is required in this area. Inferring the correct STA from a planned journey, and collecting them, is already directly contributing to the journey itself. Anchors, which were all contributors in a past event, will disrupt quantum entanglements enough for us to be able to manipulate the further course of time. Simply put, the universe did not expect for these anchors to ever meet again.

### Quantum State Seeding (QSS)

If we are in control of enough STAs into our target, we can "trick" the universe into briefly believing that the target moment is taking place again _right now_. Obviously, not in a way that it would impact the entire universe and everyone living in it, but enough so that we can open a private window for ourselves. Unshared observation, and no divergence from the current space-time axis, are fundamental time travel restrictions that always exist. We really can not travel back in time, like in the movies, but we can control the present to lead to a future where we have a memory of having been in the past moment, which is ultimately indistinguishable from _actually_ having been there.

While QSS is the most important part of time travel, it is also the least understood. There certainly seem to be different qualities of STAs that impact the effectiveness. For some journeys, 100 STAs will still not be able to tear a hole into the space-time continuum, for others, collecting 1 STA can noticeably disrupt the current flow of space-time without even operating the time machine.

### Implementation

How to collect STAs, and feed them into the time machine, is an implementation detail that is best solved by the time traveler themselves. Building the entire thing from scratch can only have positive impact on any future quantum manipulation. The device I built may serve as a proof of concept prototype for Data-Directed Quantum State Collapse.

## How the Time Machine was built

[GraphViz]: https://graphviz.org/
[dot]: https://graphviz.org/docs/layouts/dot/
[GraphViz graph of the Kitten Game Tech Tree]: https://kitten-science.github.io/themes/tech-science.html
[temporal paradoxes]: https://en.wikipedia.org/wiki/Temporal_paradox
[double-slit experiment]: https://en.wikipedia.org/wiki/Double-slit_experiment
