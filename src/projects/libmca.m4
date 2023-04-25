_PRELUDE(`libmca')
_H1(`libmca')

_LLIST(_LLI(`See the source', `https://github.com/mca3/libmca'))

libmca is a collection of C(99) files for you to lift and use in your own projects, and all of them contains code you may very well eventually have to write in your C endeavors. Its permissive license (MIT) allows you to steal any one of the files in the project and use it as if it was your own, and stealing from here is actively encouraged. After all, you're probably going to have write it anyway.

_B(`libmca is a work in progress.') While great effort has been taken to ensure that everything works properly, I do not guarantee that it does. The API should be stable but may be likely to change, and everything certainly could be done much more efficiently.

_H1(`Modules')

_LIST(
`ev - poll(2) event loop',
`strmap - linked list accessed by strings',
`vec - dynamic void* arrays')

_H1(`Features')

_LIST(`Minimal')

Any part of libmca does what it needs to and nothing else. The source is small and an effort has been made to make it well commented, and it is hackable if you need it to be.

Additionally because of the emphasis on embedding, each file has a well defined purpose and never goes out of scope if it doesn't need to. Each file is its own seperate module with zero dependencies.

_LIST(`Well tested')

There is no plug-and-pray, it just works. libmca has a test suite that tries to abuse each part of the library that it can to be sure it does what you want it to do.

Each module targets at least 90% test coverage, and all three of them achieve that.
