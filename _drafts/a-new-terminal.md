---
layout: post
title:  "A New Terminal"
---

<!--
Objective: this project is exciting, worth watching. There is a credible vision.

Don't belabor terminals being out of date, we know.

Give a sense of the vision: examples of concrete improvements plus the sense that those are examples of a coherent underlying model.
-->

I probably don't have to spend too much time convincing you that terminals are a relic of the past. They have become better around the edges but the basic model hasn't evolved for decades.

Chorus is my take on a modern replacement.

<!--more-->

Creating a new terminal is tricky. The model we use today is, for all its shortcomings, still clean, simple, and powerful. Any new model needs to be enough of an improvement that it's worth the effort to learn. At the same time, the current model is baked into everything: from the OS to existing programs and toolchains to even programming languages with their `puts`, `printf`, and friends. Compatibility is a major concern.

The key feature of chorus' model is that it is based on structured data, not flat text. The primary difference you will see as an interactive user is that programs will be able to interact with you not just through text but graphically. As a developer what you'll see is that you can interact with other programs through well-defined structured APIs instead of flat byte streams. 

One example of the difference, one that should be familiar, is the difference between the terminal and browser console. They are similar but browser consoles have fewer restrictions. They have some of the features you would want in a terminal if they were possible. For instance, simple things like being able to interact with the values you log,

![Ex console.log example][consolelog]

Even something as simple as that is impossible in the terminal,

![irb puts example][irbputs]

Creating a general and coherent new model requires touching everything: the terminal itself, the shell, how processes interact with the system, etc. This is a trivial example, the full model is much more general, but it gives a taste the potential of removing restrictions to the model.

It's been my full time project since August 2013 so a little over two years. It's not ready yet but it's getting there.

[irbputs]: {{ "/public/images/irb-puts-example.png" | prepend: site.baseurl }}
[consolelog]: {{ "/public/images/chrome-console-log-example.png" | prepend: site.baseurl }}
