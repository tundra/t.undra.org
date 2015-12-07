---
layout: post
title:  "Chorus: A New Kind of Terminal"
---

<!--
Objective: this project is exciting, worth watching. There is a credible vision.

Don't belabor terminals being out of date, we know.

Give a sense of the vision: examples of concrete improvements plus the sense that those are examples of a coherent underlying model.
-->

If you've spent any amount of time in a terminal window you probably don't need me to tell you that they're a relic of the past. They have become better around the edges but the basic model hasn't evolved for decades.

Chorus is my take on a modern replacement.

<!--more-->

Creating a new terminal is tricky. The model we use today is, for all its shortcomings, still clean, simple, and powerful. Any new model needs to be enough of an improvement that it's worth the effort to learn. At the same time, the current model is baked into everything: from the OS to existing programs and toolchains to programming languages with their `puts`, `printf`, and friends. Compatibility is a major concern.

It's not, however, the main concern. The existing model, stdin/stdout, VT100, is a dead end. It's a dead end that's probably going to outlive us all but it appears that it's just too heavy to move forward. Chorus is going to support it -- and actually make it easier to work with to some extent -- but apart from that leave it alone.

Localizing the interaction with the legacy model to one component means that elsewhere you can use Chorus' more high-level APIs without worrying about compatibility. You can if you want but if not the platform will deal with it.

One example of what this means, one that should be familiar, is the difference between the classic terminal and browser console. They are similar but browser consoles don't have to worry about compatibility. Consequently, they have some of the features you would want in a terminal too if only they were possible. For instance, being able to interact with the values you output,

![Example of console.log in the chrome console][consolelog]

Even something as simple as that is not available in the terminal,

![Example of puts in ruby on the terminal][irbputs]

Creating a general and coherent new model requires touching everything: the terminal itself, the shell, how processes interact with the system, etc. This is a simple example, the full model is more general, but it gives a taste the potential that opens up once you start removing restrictions.

Chorus has been my full time project since August 2013 so a little over two years. It's not ready yet but it's getting there. I'll go into more detail about how the model works in future posts.

{% include subscribe.html %}

[irbputs]: {{ "/public/images/irb-puts-example.png" | prepend: site.baseurl }}
[consolelog]: {{ "/public/images/chrome-console-log-example.png" | prepend: site.baseurl }}
