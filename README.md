# A quick cover of notepad.cc

> docker build from https://github.com/FallenMax/notepad.cc

## Demo

https://notepad.1976f.com/

## Features

- (Original) _notepad.cc ([discontinued](https://www.reddit.com/r/UsefulWebsites/comments/3wepc4/notepadcc_online_notepad_is_shutting_down_soon/))_ style and features
  - No login/register required, user can start writing right away
  - Notes are identified with `location.pathname`, multi-level namespaces are supported (e.g. `/a/b/c`)
  - Save as you type
- Extras
  - **Real-time collaboration**, implemented using [Socket.IO] and [diff3] algorithm.
  - **Provides [API](./src/server/router/index.test.ts)** for maniputing notes (docs comming soon),
    - <small>spoiler: you can even use a note as database to do CRUD</small>
  - **Better list editing UX**
    - <kbd>Tab</kbd>: indent list item(s)
    - <kbd>Shift</kbd> + <kbd>Tab</kbd>: deindent list item(s)
    - <kbd>Enter</kbd>: new list item
    - <kbd>-</kbd>: turn selected block into list
    - ...More to be discovered

## Getting Started

```shell
npm install
npm start
```

[diff3]: https://en.wikipedia.org/wiki/Diff3
[socket.io]: https://socket.io/
