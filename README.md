# generator-elm-app [![NPM version][npm-image]][npm-url] [![Build Status][travis-image]][travis-url] [![Dependency Status][daviddm-image]][daviddm-url] [![Coverage percentage][coveralls-image]][coveralls-url]
> 

 - Create Elm skeleton with Routing included
 - Support Elm 0.18

## Prerequisite

You need `elm` at global

```bash
npm install -g elm
```

## What's included
```
/
├── src/
│   ├── index.html
│   ├── index.js
│   ├── Main.elm
│   ├── Messages.elm
|   ├── Models.elm
|   ├── Routing.elm
|   ├── Update.elm
|   └── View.elm
├── elm-package.json
├── package.json
└── webpack.config.js
```

## Installation

First, install [Yeoman](http://yeoman.io) and generator-elm-app using [npm](https://www.npmjs.com/) (we assume you have pre-installed [node.js](https://nodejs.org/)).

```bash
npm install -g yo
npm install -g generator-elm-app
```

Then generate your new project:

Create project folder
```bash
mkdir my-project && cd "$_"
```

then
```bash
yo elm-app
```

## How to start
```bash
npm run dev
```

## License

MIT © [tom76kimo]()


[npm-image]: https://badge.fury.io/js/generator-elm-app.svg
[npm-url]: https://npmjs.org/package/generator-elm-app
[travis-image]: https://travis-ci.org/tom76kimo/generator-elm-app.svg?branch=master
[travis-url]: https://travis-ci.org/tom76kimo/generator-elm-app
[daviddm-image]: https://david-dm.org/tom76kimo/generator-elm-app.svg?theme=shields.io
[daviddm-url]: https://david-dm.org/tom76kimo/generator-elm-app
[coveralls-image]: https://coveralls.io/repos/tom76kimo/generator-elm-app/badge.svg
[coveralls-url]: https://coveralls.io/r/tom76kimo/generator-elm-app
