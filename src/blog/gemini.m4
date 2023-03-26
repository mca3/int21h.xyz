_BLOG(`Gemini now available on port 1965', `2023-03-25')

After doing some hacking on the site's infrastructure, this site is now available in _LINK(`Gemini', `https://gemini.circumlunar.space'). _LINK(`Check it out if you support it!', `gemini://int21h.xyz')

The overall design is very similar and all pages are generated from the very same files used to produce the HTML version. The content is identical asides from the formatting. All that changed is the underlying macros which now deal with some of the grungy parts of Gemtext. It has room for improvement but works.

The only major difference is how links are handled. If you're viewing this page from Gemini, you may have noticed that the link in the first paragraph has a [2] on it, and if you scroll down a little you'll see a "Links" section. This is my solution to doing links somewhat inline in a format that most will understand. The solution isn't very ideal, I would've liked links to come after the paragraph they're in but that would greatly increase the complexity for little gain. Something I am considering doing however.

For those on HTML, you won't notice any changes, but to those on Gemini, _LINK(`this', `https://example.com') looks like _CODE(`this[3]').

I've been interested in doing stuff in the Gemini space for a while so I may consider expanding the services this server provides via Gemini some day. And of course, the Gemlog will be introduced when the stuff for generating RSS is written.
