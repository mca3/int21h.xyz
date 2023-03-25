_PRELUDE(`About')
_H1(`About _DOMAIN()')

_DOMAIN() is a statically generated site using the finest UNIX tools and hacks. The name comes from interrupt 21h which allows access to the MS-DOS API, and the name is because I couldn't get something like mca.xyz.

List of topics you may see on this site, which is still very well in its infancy:

_LIST(
`Programming, and probably a lot of it Go related',
`Guides on whatever I feel like',
`I would not be surprised if a rant shows up here',
`And more!')

All content on this site is under a CC-BY 4.0 license. This just means that if you lift anything from my website, you have to link back here, and if you change anything you must indicate that you have done so. There are no additional restrictions.

This site is duct taped and glued together using only a few components:

_LIST(
`m4',
`awk',
`make',
`and the usual standard UNIX utilities')

Using this toolset I have defined myself a small markup languages that extends m4 which allows me to generate HTML documents with room even for alternative markup languages. It can very easily map nearly 1:1 to Markdown or _LINK(`Gemini', `https://gemini.circumlunar.space/')'s Gemtext.

The website is intentionally spartan in looks and will likely never contain any executable code. 

m4 does cause some problems with site generation that I will have to fix sooner or later, such as apostrophes (') getting mangled when doing markup directives however for the time being, the setup is really simple, handy, and fast.
