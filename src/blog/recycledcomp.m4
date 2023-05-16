_BLOG(`Recycled computing', `2023-05-16')

I've gotten burned by the current state of the computer industry far too many times, so I'm going to make it a point that from now on I will no longer buy new computers. (Save exceptional circumstances, such as a Raspberry Pi for a project, or eventually parts for a home server.)

In fact, this has been what I've been doing since roughly the end of 2022. Many computers came my way, so I took all of them. I now have five identical netbooks, one laptop, a Chromebook, and now a Windows XP machine. All are serving me well, and I'm writing this on the recycled laptop. What really makes them great is that, asides from the netbooks and the Chromebook, they're all business class machines that I've gotten for free simply by being in the right place at the right time and knowing the right people.

This laptop was built at the end of 2013, making it roughly 9 years old and still going strong. Not quite peak laptop, but close to it. The laptop still holds up to the task of everything I need it to do, from general web browsing to development work. This machine is perfectly fine and very performant, all while having almost nothing wrong with it, asides from looking rough. Yet they were going to toss it if I didn't want it.

The Windows XP machine is a similar story: it's a 2010 small form factor PC that originally came with Windows 7. It was lightly used its entire life and its one task was to handle old equipment, which eventually was replaced. They were getting rid of it, so I picked it up; the only thing wrong with it was a mangled Ethernet port and they didn't want to pay the $20 to get an El Cheapo™ network card. I don't want to either, it's actually hooked up to the Internet via _LINK(`dial-up emulation', `https://github.com/mca3/atbs') (more on this eventually) but again, it's performant and works fine. I use it to play what were my grandfather's old video games which would not run on modern hardware without emulation or other hacks. Why throw it out when people can still use it?

My previous daily driver machine, before I got this laptop, was a 2016 Chromebook that I bought off of a friend for $50 when my previous previous daily driver laptop's display assembly suffered a mechanical failure making it impossible to open or close without risking breaking the display. The Chromebook was taken as a challenge, and looked like it had been through hell and back, but I limped my way into 2023 with it and drove it daily until my current daily driver came along, putting it at about six months of usage.

Chromebooks come with an expiration date attached to them, and this Chromebook was past the Best Before date. Fortunately, the milk wasn't sour and the guts were still good, so I flashed the BIOS and installed Linux. It had 16 GB of eMMC storage, and 2 GB of RAM. It wasn't fast, so eventually I got fed up and I rewrote _LINK(`my dotfiles', `https://github.com/mca3/dotfiles') to be more performant. The code and configuration I wrote on that machine for my workflow is still in production to this day.

I pushed the thing to its limit daily, but take it as an example of how old or well outdated machines can still be used in the present day when you use them correctly. I punched in tens of thousands of lines of code on it, and it did its job just fine. Here's a list of projects that started their life on the Chromebook and had a considerable amount of development on the Chromebook:

_LLIST(
_LLI(`my dotfiles', `https://github.com/mca3/dotfiles'),
_LLI(`this website', `https://github.com/mca3/int21h.xyz'),
_LLI(`mcaports: Alpine Linux ports of my programs + others', `https://github.com/mca3/mcaports'),
_LLI(`a terrible web router in Go used by most of my programs', `https://github.com/mca3/mwr'),
_LLI(`newsd: my web-based RSS/Atom feed reader', `https://github.com/mca3/newsd'),
_LLI(`pikonet node/client software', `https://github.com/mca3/pikonode'),
_LLI(`pikonet rendezvous server', `https://github.com/mca3/pikorv'))

Alongside numerous projects that will never be released because they're terrible, a previous version of this website that never seen the light of day, and builds of suckless software.

It was not fast, and it was not luxurious. Even though it did it slowly, the job was done at the end of the day.

As for the netbooks, they were given to me because they were going to be recycled otherwise, just like everything else here. They were given to me long after I got the Chromebook and soon after I got my now daily driver laptop, so I never had the chance to daily drive one, but they still find use by me. I am a software developer by passion, so I have installed Windows on one of them to be a machine to test my software on, and Linux on another to be a ready-to-go backup in case my current primary laptop becomes unusable for whatever reason. It is thanks to one of these machines that Pikonet's node software works on Windows. They aren't performant and are about on par with the Chromebook, the only difference being that they're slightly bigger, have more I/O, aren't passively cooled and I can swap out the hard drive and RAM. I didn't care enough to swap, but they would've done the job.

All of these machines here that I have mentioned are at least 7 years old, with the youngest being the Chromebook. Some are still quite usable, while others are "usable" if you need them to be. Meanwhile, my poor laptop that I bought mid-2021 lasted up until mid-late 2022, that I bought with my hard earned money, failed a month outside its warranty. And so did the one before that, but in a less disabling-manner; the battery in it died a week after warranty ended and it spent the rest of its life confined to a desk.

I don't know if I've just been unlucky, but really, I'm tired of this and I'm not dealing with it anymore. Come bug me when there's a laptop being produced with the same quality of those of 10 years ago.

_H1(`Tips for dealing with recycled computers')

_LIST(`Buy an SSD')

If there is something you're going to change on it, this is the first thing you are going to. You have no idea where the hard drive in that has been and second-hand hard drives shouldn't be trusted anyway. You don't need an expensive SSD, I'm running a pretty shoddy $30 240 GB budget SSD without any cache, but it makes it much faster.

_LIST(`Upgrade the RAM')

Older machines often come with 4 GB of RAM. I know mine did. Find yourself an 8 GB kit (or if you're frugal, most RAM sticks will just work) and put it in to allow the machine to access the mainstream Internet, as unfortunate as it is. You _I(`can') get by without it, I know because I did, but it does not make for a good experience and you're better off exchanging a couple dollars for less pain and suffering in the future.

_LIST(`Install Linux')

If you're reading this, you probably already did. For the uninitiated however, Linux is a great way to breathe life into older computers because you can have much more lightweight configurations than Windows. While a Windows 10 computer may use up to 1 GB at startup, my Linux configuration sits at a comfortable 200 MB. Just be aware of the compatibility issues you may have, especially involving network cards and Nvidia graphics.

_LIST(`Linux: Chuck the Broadcom network card')

Broadcom wireless cards, like the B43 series often used in cheaper computers, are notoriously horribly supported in Linux. I can't count the amount of times on one hand I had a problem with these things. If your BIOS allows it (it should) then rip it out and install something that the Linux kernel natively supports. Thank me later.
