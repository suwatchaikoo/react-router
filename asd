[33mcommit 84a3e2690e3bd65f97c4f97fb91f6de5f2322fb5[m[33m ([m[1;36mHEAD -> [m[1;32mmaster[m[33m)[m
Author: PHIMON1937 <lil_milk14@hotmail.com>
Date:   Tue Sep 12 21:43:30 2017 +0700

    first commit

[1mdiff --git a/.gitignore b/.gitignore[m
[1mnew file mode 100644[m
[1mindex 0000000..d30f40e[m
[1m--- /dev/null[m
[1m+++ b/.gitignore[m
[36m@@ -0,0 +1,21 @@[m
[32m+[m[32m# See https://help.github.com/ignore-files/ for more about ignoring files.[m
[32m+[m
[32m+[m[32m# dependencies[m
[32m+[m[32m/node_modules[m
[32m+[m
[32m+[m[32m# testing[m
[32m+[m[32m/coverage[m
[32m+[m
[32m+[m[32m# production[m
[32m+[m[32m/build[m
[32m+[m
[32m+[m[32m# misc[m
[32m+[m[32m.DS_Store[m
[32m+[m[32m.env.local[m
[32m+[m[32m.env.development.local[m
[32m+[m[32m.env.test.local[m
[32m+[m[32m.env.production.local[m
[32m+[m
[32m+[m[32mnpm-debug.log*[m
[32m+[m[32myarn-debug.log*[m
[32m+[m[32myarn-error.log*[m
[1mdiff --git a/README.md b/README.md[m
[1mnew file mode 100644[m
[1mindex 0000000..c55ccdf[m
[1m--- /dev/null[m
[1m+++ b/README.md[m
[36m@@ -0,0 +1,2164 @@[m
[32m+[m[32mThis project was bootstrapped with [Create React App](https://github.com/facebookincubator/create-react-app).[m
[32m+[m
[32m+[m[32mBelow you will find some information on how to perform common tasks.<br>[m
[32m+[m[32mYou can find the most recent version of this guide [here](https://github.com/facebookincubator/create-react-app/blob/master/packages/react-scripts/template/README.md).[m
[32m+[m
[32m+[m[32m## Table of Contents[m
[32m+[m
[32m+[m[32m- [Updating to New Releases](#updating-to-new-releases)[m
[32m+[m[32m- [Sending Feedback](#sending-feedback)[m
[32m+[m[32m- [Folder Structure](#folder-structure)[m
[32m+[m[32m- [Available Scripts](#available-scripts)[m
[32m+[m[32m  - [npm start](#npm-start)[m
[32m+[m[32m  - [npm test](#npm-test)[m
[32m+[m[32m  - [npm run build](#npm-run-build)[m
[32m+[m[32m  - [npm run eject](#npm-run-eject)[m
[32m+[m[32m- [Supported Language Features and Polyfills](#supported-language-features-and-polyfills)[m
[32m+[m[32m- [Syntax Highlighting in the Editor](#syntax-highlighting-in-the-editor)[m
[32m+[m[32m- [Displaying Lint Output in the Editor](#displaying-lint-output-in-the-editor)[m
[32m+[m[32m- [Debugging in the Editor](#debugging-in-the-editor)[m
[32m+[m[32m- [Formatting Code Automatically](#formatting-code-automatically)[m
[32m+[m[32m- [Changing the Page `<title>`](#changing-the-page-title)[m
[32m+[m[32m- [Installing a Dependency](#installing-a-dependency)[m
[32m+[m[32m- [Importing a Component](#importing-a-component)[m
[32m+[m[32m- [Code Splitting](#code-splitting)[m
[32m+[m[32m- [Adding a Stylesheet](#adding-a-stylesheet)[m
[32m+[m[32m- [Post-Processing CSS](#post-processing-css)[m
[32m+[m[32m- [Adding a CSS Preprocessor (Sass, Less etc.)](#adding-a-css-preprocessor-sass-less-etc)[m
[32m+[m[32m- [Adding Images, Fonts, and Files](#adding-images-fonts-and-files)[m
[32m+[m[32m- [Using the `public` Folder](#using-the-public-folder)[m
[32m+[m[32m  - [Changing the HTML](#changing-the-html)[m
[32m+[m[32m  - [Adding Assets Outside of the Module System](#adding-assets-outside-of-the-module-system)[m
[32m+[m[32m  - [When to Use the `public` Folder](#when-to-use-the-public-folder)[m
[32m+[m[32m- [Using Global Variables](#using-global-variables)[m
[32m+[m[32m- [Adding Bootstrap](#adding-bootstrap)[m
[32m+[m[32m  - [Using a Custom Theme](#using-a-custom-theme)[m
[32m+[m[32m- [Adding Flow](#adding-flow)[m
[32m+[m[32m- [Adding Custom Environment Variables](#adding-custom-environment-variables)[m
[32m+[m[32m  - [Referencing Environment Variables in the HTML](#referencing-environment-variables-in-the-html)[m
[32m+[m[32m  - [Adding Temporary Environment Variables In Your Shell](#adding-temporary-environment-variables-in-your-shell)[m
[32m+[m[32m  - [Adding Development Environment Variables In `.env`](#adding-development-environment-variables-in-env)[m
[32m+[m[32m- [Can I Use Decorators?](#can-i-use-decorators)[m
[32m+[m[32m- [Integrating with an API Backend](#integrating-with-an-api-backend)[m
[32m+[m[32m  - [Node](#node)[m
[32m+[m[32m  - [Ruby on Rails](#ruby-on-rails)[m
[32m+[m[32m- [Proxying API Requests in Development](#proxying-api-requests-in-development)[m
[32m+[m[32m  - ["Invalid Host Header" Errors After Configuring Proxy](#invalid-host-header-errors-after-configuring-proxy)[m
[32m+[m[32m  - [Configuring the Proxy Manually](#configuring-the-proxy-manually)[m
[32m+[m[32m  - [Configuring a WebSocket Proxy](#configuring-a-websocket-proxy)[m
[32m+[m[32m- [Using HTTPS in Development](#using-https-in-development)[m
[32m+[m[32m- [Generating Dynamic `<meta>` Tags on the Server](#generating-dynamic-meta-tags-on-the-server)[m
[32m+[m[32m- [Pre-Rendering into Static HTML Files](#pre-rendering-into-static-html-files)[m
[32m+[m[32m- [Injecting Data from the Server into the Page](#injecting-data-from-the-server-into-the-page)[m
[32m+[m[32m- [Running Tests](#running-tests)[m
[32m+[m[32m  - [Filename Conventions](#filename-conventions)[m
[32m+[m[32m  - [Command Line Interface](#command-line-interface)[m
[32m+[m[32m  - [Version Control Integration](#version-control-integration)[m
[32m+[m[32m  - [Writing Tests](#writing-tests)[m
[32m+[m[32m  - [Testing Components](#testing-components)[m
[32m+[m[32m  - [Using Third Party Assertion Libraries](#using-third-party-assertion-libraries)[m
[32m+[m[32m  - [Initializing Test Environment](#initializing-test-environment)[m
[32m+[m[32m  - [Focusing and Excluding Tests](#focusing-and-excluding-tests)[m
[32m+[m[32m  - [Coverage Reporting](#coverage-reporting)[m
[32m+[m[32m  - [Continuous Integration](#continuous-integration)[m
[32m+[m[32m  - [Disabling jsdom](#disabling-jsdom)[m
[32m+[m[32m  - [Snapshot Testing](#snapshot-testing)[m
[32m+[m[32m  - [Editor Integration](#editor-integration)[m
[32m+[m[32m- [Developing Components in Isolation](#developing-components-in-isolation)[m
[32m+[m[32m  - [Getting Started with Storybook](#getting-started-with-storybook)[m
[32m+[m[32m  - [Getting Started with Styleguidist](#getting-started-with-styleguidist)[m
[32m+[m[32m- [Making a Progressive Web App](#making-a-progressive-web-app)[m
[32m+[m[32m  - [Opting Out of Caching](#opting-out-of-caching)[m
[32m+[m[32m  - [Offline-First Considerations](#offline-first-considerations)[m
[32m+[m[32m  - [Progressive Web App Metadata](#progressive-web-app-metadata)[m
[32m+[m[32m- [Analyzing the Bundle Size](#analyzing-the-bundle-size)[m
[32m+[m[32m- [Deployment](#deployment)[m
[32m+[m[32m  - [Static Server](#static-server)[m
[32m+[m[32m  - [Other Solutions](#other-solutions)[m
[32m+[m[32m  - [Serving Apps with Client-Side Routing](#serving-apps-with-client-side-routing)[m
[32m+[m[32m  - [Building for Relative Paths](#building-for-relative-paths)[m
[32m+[m[32m  - [Azure](#azure)[m
[32m+[m[32m  - [Firebase](#firebase)[m
[32m+[m[32m  - [GitHub Pages](#github-pages)[m
[32m+[m[32m  - [Heroku](#heroku)[m
[32m+[m[32m  - [Netlify](#netlify)[m
[32m+[m[32m  - [Now](#now)[m
[32m+[m[32m  - [S3 and CloudFront](#s3-and-cloudfront)[m
[32m+[m[32m  - [Surge](#surge)[m
[32m+[m[32m- [Advanced Configuration](#advanced-configuration)[m
[32m+[m[32m- [Troubleshooting](#troubleshooting)[m
[32m+[m[32m  - [`npm start` doesn’t detect changes](#npm-start-doesnt-detect-changes)[m
[32m+[m[32m  - [`npm test` hangs on macOS Sierra](#npm-test-hangs-on-macos-sierra)[m
[32m+[m[32m  - [`npm run build` exits too early](#npm-run-build-exits-too-early)[m
[32m+[m[32m  - [`npm run build` fails on Heroku](#npm-run-build-fails-on-heroku)[m
[32m+[m[32m  - [`npm run build` fails to minify](#npm-run-build-fails-to-minify)[m
[32m+[m[32m  - [Moment.js locales are missing](#momentjs-locales-are-missing)[m
[32m+[m[32m- [Something Missing?](#something-missing)[m
[32m+[m
[32m+[m[32m## Updating to New Releases[m
[32m+[m
[32m+[m[32mCreate React App is divided into two packages:[m
[32m+[m
[32m+[m[32m* `create-react-app` is a global command-line utility that you use to create new projects.[m
[32m+[m[32m* `react-scripts` is a development dependency in the generated projects (including this one).[m
[32m+[m
[32m+[m[32mYou almost never need to update `create-react-app` itself: it delegates all the setup to `react-scripts`.[m
[32m+[m
[32m+[m[32mWhen you run `create-react-app`, it always creates the project with the latest version of `react-scripts` so you’ll get all the new features and improvements in newly created apps automatically.[m
[32m+[m
[32m+[m[32mTo update an existing project to a new version of `react-scripts`, [open the changelog](https://github.com/facebookincubator/create-react-app/blob/master/CHANGELOG.md), find the version you’re currently on (check `package.json` in this folder if you’re not sure), and apply the migration instructions for the newer versions.[m
[32m+[m
[32m+[m[32mIn most cases bumping the `react-scripts` version in `package.json` and running `npm install` in this folder should be enough, but it’s good to consult the [changelog](https://github.com/facebookincubator/create-react-app/blob/master/CHANGELOG.md) for potential breaking changes.[m
[32m+[m
[32m+[m[32mWe commit to keeping the breaking changes minimal so you can upgrade `react-scripts` painlessly.[m
[32m+[m
[32m+[m[32m## Sending Feedback[m
[32m+[m
[32m+[m[32mWe are always open to [your feedback](https://github.com/facebookincubator/create-react-app/issues).[m
[32m+[m
[32m+[m[32m## Folder Structure[m
[32m+[m
[32m+[m[32mAfter creation, your project should look like this:[m
[32m+[m
[32m+[m[32m```[m
[32m+[m[32mmy-app/[m
[32m+[m[32m  README.md[m
[32m+[m[32m  node_modules/[m
[32m+[m[32m  package.json[m
[32m+[m[32m  public/[m
[32m+[m[32m    index.html[m
[32m+[m[32m    favicon.ico[m
[32m+[m[32m  src/[m
[32m+[m[32m    App.css[m
[32m+[m[32m    App.js[m
[32m+[m[32m    App.test.js[m
[32m+[m[32m    index.css[m
[32m+[m[32m    index.js[m
[32m+[m[32m    logo.svg[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mFor the project to build, **these files must exist with exact filenames**:[m
[32m+[m
[32m+[m[32m* `public/index.html` is the page template;[m
[32m+[m[32m* `src/index.js` is the JavaScript entry point.[m
[32m+[m
[32m+[m[32mYou can delete or rename the other files.[m
[32m+[m
[32m+[m[32mYou may create subdirectories inside `src`. For faster rebuilds, only files inside `src` are processed by Webpack.<br>[m
[32m+[m[32mYou need to **put any JS and CSS files inside `src`**, otherwise Webpack won’t see them.[m
[32m+[m
[32m+[m[32mOnly files inside `public` can be used from `public/index.html`.<br>[m
[32m+[m[32mRead instructions below for using assets from JavaScript and HTML.[m
[32m+[m
[32m+[m[32mYou can, however, create more top-level directories.<br>[m
[32m+[m[32mThey will not be included in the production build so you can use them for things like documentation.[m
[32m+[m
[32m+[m[32m## Available Scripts[m
[32m+[m
[32m+[m[32mIn the project directory, you can run:[m
[32m+[m
[32m+[m[32m### `npm start`[m
[32m+[m
[32m+[m[32mRuns the app in the development mode.<br>[m
[32m+[m[32mOpen [http://localhost:3000](http://localhost:3000) to view it in the browser.[m
[32m+[m
[32m+[m[32mThe page will reload if you make edits.<br>[m
[32m+[m[32mYou will also see any lint errors in the console.[m
[32m+[m
[32m+[m[32m### `npm test`[m
[32m+[m
[32m+[m[32mLaunches the test runner in the interactive watch mode.<br>[m
[32m+[m[32mSee the section about [running tests](#running-tests) for more information.[m
[32m+[m
[32m+[m[32m### `npm run build`[m
[32m+[m
[32m+[m[32mBuilds the app for production to the `build` folder.<br>[m
[32m+[m[32mIt correctly bundles React in production mode and optimizes the build for the best performance.[m
[32m+[m
[32m+[m[32mThe build is minified and the filenames include the hashes.<br>[m
[32m+[m[32mYour app is ready to be deployed![m
[32m+[m
[32m+[m[32mSee the section about [deployment](#deployment) for more information.[m
[32m+[m
[32m+[m[32m### `npm run eject`[m
[32m+[m
[32m+[m[32m**Note: this is a one-way operation. Once you `eject`, you can’t go back!**[m
[32m+[m
[32m+[m[32mIf you aren’t satisfied with the build tool and configuration choices, you can `eject` at any time. This command will remove the single build dependency from your project.[m
[32m+[m
[32m+[m[32mInstead, it will copy all the configuration files and the transitive dependencies (Webpack, Babel, ESLint, etc) right into your project so you have full control over them. All of the commands except `eject` will still work, but they will point to the copied scripts so you can tweak them. At this point you’re on your own.[m
[32m+[m
[32m+[m[32mYou don’t have to ever use `eject`. The curated feature set is suitable for small and middle deployments, and you shouldn’t feel obligated to use this feature. However we understand that this tool wouldn’t be useful if you couldn’t customize it when you are ready for it.[m
[32m+[m
[32m+[m[32m## Supported Language Features and Polyfills[m
[32m+[m
[32m+[m[32mThis project supports a superset of the latest JavaScript standard.<br>[m
[32m+[m[32mIn addition to [ES6](https://github.com/lukehoban/es6features) syntax features, it also supports:[m
[32m+[m
[32m+[m[32m* [Exponentiation Operator](https://github.com/rwaldron/exponentiation-operator) (ES2016).[m
[32m+[m[32m* [Async/await](https://github.com/tc39/ecmascript-asyncawait) (ES2017).[m
[32m+[m[32m* [Object Rest/Spread Properties](https://github.com/sebmarkbage/ecmascript-rest-spread) (stage 3 proposal).[m
[32m+[m[32m* [Dynamic import()](https://github.com/tc39/proposal-dynamic-import) (stage 3 proposal)[m
[32m+[m[32m* [Class Fields and Static Properties](https://github.com/tc39/proposal-class-public-fields) (stage 2 proposal).[m
[32m+[m[32m* [JSX](https://facebook.github.io/react/docs/introducing-jsx.html) and [Flow](https://flowtype.org/) syntax.[m
[32m+[m
[32m+[m[32mLearn more about [different proposal stages](https://babeljs.io/docs/plugins/#presets-stage-x-experimental-presets-).[m
[32m+[m
[32m+[m[32mWhile we recommend to use experimental proposals with some caution, Facebook heavily uses these features in the product code, so we intend to provide [codemods](https://medium.com/@cpojer/effective-javascript-codemods-5a6686bb46fb) if any of these proposals change in the future.[m
[32m+[m
[32m+[m[32mNote that **the project only includes a few ES6 [polyfills](https://en.wikipedia.org/wiki/Polyfill)**:[m
[32m+[m
[32m+[m[32m* [`Object.assign()`](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Global_Objects/Object/assign) via [`object-assign`](https://github.com/sindresorhus/object-assign).[m
[32m+[m[32m* [`Promise`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise) via [`promise`](https://github.com/then/promise).[m
[32m+[m[32m* [`fetch()`](https://developer.mozilla.org/en/docs/Web/API/Fetch_API) via [`whatwg-fetch`](https://github.com/github/fetch).[m
[32m+[m
[32m+[m[32mIf you use any other ES6+ features that need **runtime support** (such as `Array.from()` or `Symbol`), make sure you are including the appropriate polyfills manually, or that the browsers you are targeting already support them.[m
[32m+[m
[32m+[m[32m## Syntax Highlighting in the Editor[m
[32m+[m
[32m+[m[32mTo configure the syntax highlighting in your favorite text editor, head to the [relevant Babel documentation page](https://babeljs.io/docs/editors) and follow the instructions. Some of the most popular editors are covered.[m
[32m+[m
[32m+[m[32m## Displaying Lint Output in the Editor[m
[32m+[m
[32m+[m[32m>Note: this feature is available with `react-scripts@0.2.0` and higher.<br>[m
[32m+[m[32m>It also only works with npm 3 or higher.[m
[32m+[m
[32m+[m[32mSome editors, including Sublime Text, Atom, and Visual Studio Code, provide plugins for ESLint.[m
[32m+[m
[32m+[m[32mThey are not required for linting. You should see the linter output right in your terminal as well as the browser console. However, if you prefer the lint results to appear right in your editor, there are some extra steps you can do.[m
[32m+[m
[32m+[m[32mYou would need to install an ESLint plugin for your editor first. Then, add a file called `.eslintrc` to the project root:[m
[32m+[m
[32m+[m[32m```js[m
[32m+[m[32m{[m
[32m+[m[32m  "extends": "react-app"[m
[32m+[m[32m}[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mNow your editor should report the linting warnings.[m
[32m+[m
[32m+[m[32mNote that even if you edit your `.eslintrc` file further, these changes will **only affect the editor integration**. They won’t affect the terminal and in-browser lint output. This is because Create React App intentionally provides a minimal set of rules that find common mistakes.[m
[32m+[m
[32m+[m[32mIf you want to enforce a coding style for your project, consider using [Prettier](https://github.com/jlongster/prettier) instead of ESLint style rules.[m
[32m+[m
[32m+[m[32m## Debugging in the Editor[m
[32m+[m
[32m+[m[32m**This feature is currently only supported by [Visual Studio Code](https://code.visualstudio.com) and [WebStorm](https://www.jetbrains.com/webstorm/).**[m
[32m+[m
[32m+[m[32mVisual Studio Code and WebStorm support debugging out of the box with Create React App. This enables you as a developer to write and debug your React code without leaving the editor, and most importantly it enables you to have a continuous development workflow, where context switching is minimal, as you don’t have to switch between tools.[m
[32m+[m
[32m+[m[32m### Visual Studio Code[m
[32m+[m
[32m+[m[32mYou would need to have the latest version of [VS Code](https://code.visualstudio.com) and VS Code [Chrome Debugger Extension](https://marketplace.visualstudio.com/items?itemName=msjsdiag.debugger-for-chrome) installed.[m
[32m+[m
[32m+[m[32mThen add the block below to your `launch.json` file and put it inside the `.vscode` folder in your app’s root directory.[m
[32m+[m
[32m+[m[32m```json[m
[32m+[m[32m{[m
[32m+[m[32m  "version": "0.2.0",[m
[32m+[m[32m  "configurations": [{[m
[32m+[m[32m    "name": "Chrome",[m
[32m+[m[32m    "type": "chrome",[m
[32m+[m[32m    "request": "launch",[m
[32m+[m[32m    "url": "http://localhost:3000",[m
[32m+[m[32m    "webRoot": "${workspaceRoot}/src",[m
[32m+[m[32m    "userDataDir": "${workspaceRoot}/.vscode/chrome",[m
[32m+[m[32m    "sourceMapPathOverrides": {[m
[32m+[m[32m      "webpack:///src/*": "${webRoot}/*"[m
[32m+[m[32m    }[m
[32m+[m[32m  }][m
[32m+[m[32m}[m
[32m+[m[32m```[m
[32m+[m[32m>Note: the URL may be different if you've made adjustments via the [HOST or PORT environment variables](#advanced-configuration).[m
[32m+[m
[32m+[m[32mStart your app by running `npm start`, and start debugging in VS Code by pressing `F5` or by clicking the green debug icon. You can now write code, set breakpoints, make changes to the code, and debug your newly modified code—all from your editor.[m
[32m+[m
[32m+[m[32m### WebStorm[m
[32m+[m
[32m+[m[32mYou would need to have [WebStorm](https://www.jetbrains.com/webstorm/) and [JetBrains IDE Support](https://chrome.google.com/webstore/detail/jetbrains-ide-support/hmhgeddbohgjknpmjagkdomcpobmllji) Chrome extension installed.[m
[32m+[m
[32m+[m[32mIn the WebStorm menu `Run` select `Edit Configurations...`. Then click `+` and select `JavaScript Debug`. Paste `http://localhost:3000` into the URL field and save the configuration.[m
[32m+[m
[32m+[m[32m>Note: the URL may be different if you've made adjustments via the [HOST or PORT environment variables](#advanced-configuration).[m
[32m+[m
[32m+[m[32mStart your app by running `npm start`, then press `^D` on macOS or `F9` on Windows and Linux or click the green debug icon to start debugging in WebStorm.[m
[32m+[m
[32m+[m[32mThe same way you can debug your application in IntelliJ IDEA Ultimate, PhpStorm, PyCharm Pro, and RubyMine.[m[41m [m
[32m+[m
[32m+[m[32m## Formatting Code Automatically[m
[32m+[m
[32m+[m[32mPrettier is an opinionated code formatter with support for JavaScript, CSS and JSON. With Prettier you can format the code you write automatically to ensure a code style within your project. See the [Prettier's GitHub page](https://github.com/prettier/prettier) for more information, and look at this [page to see it in action](https://prettier.github.io/prettier/).[m
[32m+[m
[32m+[m[32mTo format our code whenever we make a commit in git, we need to install the following dependencies:[m
[32m+[m
[32m+[m[32m```sh[m
[32m+[m[32mnpm install --save husky lint-staged prettier[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mAlternatively you may use `yarn`:[m
[32m+[m
[32m+[m[32m```sh[m
[32m+[m[32myarn add husky lint-staged prettier[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32m* `husky` makes it easy to use githooks as if they are npm scripts.[m
[32m+[m[32m* `lint-staged` allows us to run scripts on staged files in git. See this [blog post about lint-staged to learn more about it](https://medium.com/@okonetchnikov/make-linting-great-again-f3890e1ad6b8).[m
[32m+[m[32m* `prettier` is the JavaScript formatter we will run before commits.[m
[32m+[m
[32m+[m[32mNow we can make sure every file is formatted correctly by adding a few lines to the `package.json` in the project root.[m
[32m+[m
[32m+[m[32mAdd the following line to `scripts` section:[m
[32m+[m
[32m+[m[32m```diff[m
[32m+[m[32m  "scripts": {[m
[32m+[m[32m+   "precommit": "lint-staged",[m
[32m+[m[32m    "start": "react-scripts start",[m
[32m+[m[32m    "build": "react-scripts build",[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mNext we add a 'lint-staged' field to the `package.json`, for example:[m
[32m+[m
[32m+[m[32m```diff[m
[32m+[m[32m  "dependencies": {[m
[32m+[m[32m    // ...[m
[32m+[m[32m  },[m
[32m+[m[32m+ "lint-staged": {[m
[32m+[m[32m+   "src/**/*.{js,jsx,json,css}": [[m
[32m+[m[32m+     "prettier --single-quote --write",[m
[32m+[m[32m+     "git add"[m
[32m+[m[32m+   ][m
[32m+[m[32m+ },[m
[32m+[m[32m  "scripts": {[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mNow, whenever you make a commit, Prettier will format the changed files automatically. You can also run `./node_modules/.bin/prettier --single-quote --write "src/**/*.{js,jsx}"` to format your entire project for the first time.[m
[32m+[m
[32m+[m[32mNext you might want to integrate Prettier in your favorite editor. Read the section on [Editor Integration](https://github.com/prettier/prettier#editor-integration) on the Prettier GitHub page.[m
[32m+[m
[32m+[m[32m## Changing the Page `<title>`[m
[32m+[m
[32m+[m[32mYou can find the source HTML file in the `public` folder of the generated project. You may edit the `<title>` tag in it to change the title from “React App” to anything else.[m
[32m+[m
[32m+[m[32mNote that normally you wouldn’t edit files in the `public` folder very often. For example, [adding a stylesheet](#adding-a-stylesheet) is done without touching the HTML.[m
[32m+[m
[32m+[m[32mIf you need to dynamically update the page title based on the content, you can use the browser [`document.title`](https://developer.mozilla.org/en-US/docs/Web/API/Document/title) API. For more complex scenarios when you want to change the title from React components, you can use [React Helmet](https://github.com/nfl/react-helmet), a third party library.[m
[32m+[m
[32m+[m[32mIf you use a custom server for your app in production and want to modify the title before it gets sent to the browser, you can follow advice in [this section](#generating-dynamic-meta-tags-on-the-server). Alternatively, you can pre-build each page as a static HTML file which then loads the JavaScript bundle, which is covered [here](#pre-rendering-into-static-html-files).[m
[32m+[m
[32m+[m[32m## Installing a Dependency[m
[32m+[m
[32m+[m[32mThe generated project includes React and ReactDOM as dependencies. It also includes a set of scripts used by Create React App as a development dependency. You may install other dependencies (for example, React Router) with `npm`:[m
[32m+[m
[32m+[m[32m```sh[m
[32m+[m[32mnpm install --save react-router[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mAlternatively you may use `yarn`:[m
[32m+[m
[32m+[m[32m```sh[m
[32m+[m[32myarn add react-router[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mThis works for any library, not just `react-router`.[m
[32m+[m
[32m+[m[32m## Importing a Component[m
[32m+[m
[32m+[m[32mThis project setup supports ES6 modules thanks to Babel.<br>[m
[32m+[m[32mWhile you can still use `require()` and `module.exports`, we encourage you to use [`import` and `export`](http://exploringjs.com/es6/ch_modules.html) instead.[m
[32m+[m
[32m+[m[32mFor example:[m
[32m+[m
[32m+[m[32m### `Button.js`[m
[32m+[m
[32m+[m[32m```js[m
[32m+[m[32mimport React, { Component } from 'react';[m
[32m+[m
[32m+[m[32mclass Button extends Component {[m
[32m+[m[32m  render() {[m
[32m+[m[32m    // ...[m
[32m+[m[32m  }[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mexport default Button; // Don’t forget to use export default![m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32m### `DangerButton.js`[m
[32m+[m
[32m+[m
[32m+[m[32m```js[m
[32m+[m[32mimport React, { Component } from 'react';[m
[32m+[m[32mimport Button from './Button'; // Import a component from another file[m
[32m+[m
[32m+[m[32mclass DangerButton extends Component {[m
[32m+[m[32m  render() {[m
[32m+[m[32m    return <Button color="red" />;[m
[32m+[m[32m  }[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mexport default DangerButton;[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mBe aware of the [difference between default and named exports](http://stackoverflow.com/questions/36795819/react-native-es-6-when-should-i-use-curly-braces-for-import/36796281#36796281). It is a common source of mistakes.[m
[32m+[m
[32m+[m[32mWe suggest that you stick to using default imports and exports when a module only exports a single thing (for example, a component). That’s what you get when you use `export default Button` and `import Button from './Button'`.[m
[32m+[m
[32m+[m[32mNamed exports are useful for utility modules that export several functions. A module may have at most one default export and as many named exports as you like.[m
[32m+[m
[32m+[m[32mLearn more about ES6 modules:[m
[32m+[m
[32m+[m[32m* [When to use the curly braces?](http://stackoverflow.com/questions/36795819/react-native-es-6-when-should-i-use-curly-braces-for-import/36796281#36796281)[m
[32m+[m[32m* [Exploring ES6: Modules](http://exploringjs.com/es6/ch_modules.html)[m
[32m+[m[32m* [Understanding ES6: Modules](https://leanpub.com/understandinges6/read#leanpub-auto-encapsulating-code-with-modules)[m
[32m+[m
[32m+[m[32m## Code Splitting[m
[32m+[m
[32m+[m[32mInstead of downloading the entire app before users can use it, code splitting allows you to split your code into small chunks which you can then load on demand.[m
[32m+[m
[32m+[m[32mThis project setup supports code splitting via [dynamic `import()`](http://2ality.com/2017/01/import-operator.html#loading-code-on-demand). Its [proposal](https://github.com/tc39/proposal-dynamic-import) is in stage 3. The `import()` function-like form takes the module name as an argument and returns a [`Promise`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise) which always resolves to the namespace object of the module.[m
[32m+[m
[32m+[m[32mHere is an example:[m
[32m+[m
[32m+[m[32m### `moduleA.js`[m
[32m+[m
[32m+[m[32m```js[m
[32m+[m[32mconst moduleA = 'Hello';[m
[32m+[m
[32m+[m[32mexport { moduleA };[m
[32m+[m[32m```[m
[32m+[m[32m### `App.js`[m
[32m+[m
[32m+[m[32m```js[m
[32m+[m[32mimport React, { Component } from 'react';[m
[32m+[m
[32m+[m[32mclass App extends Component {[m
[32m+[m[32m  handleClick = () => {[m
[32m+[m[32m    import('./moduleA')[m
[32m+[m[32m      .then(({ moduleA }) => {[m
[32m+[m[32m        // Use moduleA[m
[32m+[m[32m      })[m
[32m+[m[32m      .catch(err => {[m
[32m+[m[32m        // Handle failure[m
[32m+[m[32m      });[m
[32m+[m[32m  };[m
[32m+[m
[32m+[m[32m  render() {[m
[32m+[m[32m    return ([m
[32m+[m[32m      <div>[m
[32m+[m[32m        <button onClick={this.handleClick}>Load</button>[m
[32m+[m[32m      </div>[m
[32m+[m[32m    );[m
[32m+[m[32m  }[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mexport default App;[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mThis will make `moduleA.js` and all its unique dependencies as a separate chunk that only loads after the user clicks the 'Load' button.[m
[32m+[m
[32m+[m[32mYou can also use it with `async` / `await` syntax if you prefer it.[m
[32m+[m
[32m+[m[32m### With React Router[m
[32m+[m
[32m+[m[32mIf you are using React Router check out [this tutorial](http://serverless-stack.com/chapters/code-splitting-in-create-react-app.html) on how to use code splitting with it. You can find the companion GitHub repository [here](https://github.com/AnomalyInnovations/serverless-stack-demo-client/tree/code-splitting-in-create-react-app).[m
[32m+[m
[32m+[m[32m## Adding a Stylesheet[m
[32m+[m
[32m+[m[32mThis project setup uses [Webpack](https://webpack.js.org/) for handling all assets. Webpack offers a custom way of “extending” the concept of `import` beyond JavaScript. To express that a JavaScript file depends on a CSS file, you need to **import the CSS from the JavaScript file**:[m
[32m+[m
[32m+[m[32m### `Button.css`[m
[32m+[m
[32m+[m[32m```css[m
[32m+[m[32m.Button {[m
[32m+[m[32m  padding: 20px;[m
[32m+[m[32m}[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32m### `Button.js`[m
[32m+[m
[32m+[m[32m```js[m
[32m+[m[32mimport React, { Component } from 'react';[m
[32m+[m[32mimport './Button.css'; // Tell Webpack that Button.js uses these styles[m
[32m+[m
[32m+[m[32mclass Button extends Component {[m
[32m+[m[32m  render() {[m
[32m+[m[32m    // You can use them as regular CSS styles[m
[32m+[m[32m    return <div className="Button" />;[m
[32m+[m[32m  }[m
[32m+[m[32m}[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32m**This is not required for React** but many people find this feature convenient. You can read about the benefits of this approach [here](https://medium.com/seek-ui-engineering/block-element-modifying-your-javascript-components-d7f99fcab52b). However you should be aware that this makes your code less portable to other build tools and environments than Webpack.[m
[32m+[m
[32m+[m[32mIn development, expressing dependencies this way allows your styles to be reloaded on the fly as you edit them. In production, all CSS files will be concatenated into a single minified `.css` file in the build output.[m
[32m+[m
[32m+[m[32mIf you are concerned about using Webpack-specific semantics, you can put all your CSS right into `src/index.css`. It would still be imported from `src/index.js`, but you could always remove that import if you later migrate to a different build tool.[m
[32m+[m
[32m+[m[32m## Post-Processing CSS[m
[32m+[m
[32m+[m[32mThis project setup minifies your CSS and adds vendor prefixes to it automatically through [Autoprefixer](https://github.com/postcss/autoprefixer) so you don’t need to worry about it.[m
[32m+[m
[32m+[m[32mFor example, this:[m
[32m+[m
[32m+[m[32m```css[m
[32m+[m[32m.App {[m
[32m+[m[32m  display: flex;[m
[32m+[m[32m  flex-direction: row;[m
[32m+[m[32m  align-items: center;[m
[32m+[m[32m}[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mbecomes this:[m
[32m+[m
[32m+[m[32m```css[m
[32m+[m[32m.App {[m
[32m+[m[32m  display: -webkit-box;[m
[32m+[m[32m  display: -ms-flexbox;[m
[32m+[m[32m  display: flex;[m
[32m+[m[32m  -webkit-box-orient: horizontal;[m
[32m+[m[32m  -webkit-box-direction: normal;[m
[32m+[m[32m      -ms-flex-direction: row;[m
[32m+[m[32m          flex-direction: row;[m
[32m+[m[32m  -webkit-box-align: center;[m
[32m+[m[32m      -ms-flex-align: center;[m
[32m+[m[32m          align-items: center;[m
[32m+[m[32m}[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mIf you need to disable autoprefixing for some reason, [follow this section](https://github.com/postcss/autoprefixer#disabling).[m
[32m+[m
[32m+[m[32m## Adding a CSS Preprocessor (Sass, Less etc.)[m
[32m+[m
[32m+[m[32mGenerally, we recommend that you don’t reuse the same CSS classes across different components. For example, instead of using a `.Button` CSS class in `<AcceptButton>` and `<RejectButton>` components, we recommend creating a `<Button>` component with its own `.Button` styles, that both `<AcceptButton>` and `<RejectButton>` can render (but [not inherit](https://facebook.github.io/react/docs/composition-vs-inheritance.html)).[m
[32m+[m
[32m+[m[32mFollowing this rule often makes CSS preprocessors less useful, as features like mixins and nesting are replaced by component composition. You can, however, integrate a CSS preprocessor if you find it valuable. In this walkthrough, we will be using Sass, but you can also use Less, or another alternative.[m
[32m+[m
[32m+[m[32mFirst, let’s install the command-line interface for Sass:[m
[32m+[m
[32m+[m[32m```sh[m
[32m+[m[32mnpm install --save node-sass-chokidar[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mAlternatively you may use `yarn`:[m
[32m+[m
[32m+[m[32m```sh[m
[32m+[m[32myarn add node-sass-chokidar[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mThen in `package.json`, add the following lines to `scripts`:[m
[32m+[m
[32m+[m[32m```diff[m
[32m+[m[32m   "scripts": {[m
[32m+[m[32m+    "build-css": "node-sass-chokidar src/ -o src/",[m
[32m+[m[32m+    "watch-css": "npm run build-css && node-sass-chokidar src/ -o src/ --watch --recursive",[m
[32m+[m[32m     "start": "react-scripts start",[m
[32m+[m[32m     "build": "react-scripts build",[m
[32m+[m[32m     "test": "react-scripts test --env=jsdom",[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32m>Note: To use a different preprocessor, replace `build-css` and `watch-css` commands according to your preprocessor’s documentation.[m
[32m+[m
[32m+[m[32mNow you can rename `src/App.css` to `src/App.scss` and run `npm run watch-css`. The watcher will find every Sass file in `src` subdirectories, and create a corresponding CSS file next to it, in our case overwriting `src/App.css`. Since `src/App.js` still imports `src/App.css`, the styles become a part of your application. You can now edit `src/App.scss`, and `src/App.css` will be regenerated.[m
[32m+[m
[32m+[m[32mTo share variables between Sass files, you can use Sass imports. For example, `src/App.scss` and other component style files could include `@import "./shared.scss";` with variable definitions.[m
[32m+[m
[32m+[m[32mTo enable importing files without using relative paths, you can add the  `--include-path` option to the command in `package.json`.[m
[32m+[m
[32m+[m[32m```[m
[32m+[m[32m"build-css": "node-sass-chokidar --include-path ./src --include-path ./node_modules src/ -o src/",[m
[32m+[m[32m"watch-css": "npm run build-css && node-sass-chokidar --include-path ./src --include-path ./node_modules src/ -o src/ --watch --recursive",[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mThis will allow you to do imports like[m
[32m+[m
[32m+[m[32m```scss[m
[32m+[m[32m@import 'styles/_colors.scss'; // assuming a styles directory under src/[m
[32m+[m[32m@import 'nprogress/nprogress'; // importing a css file from the nprogress node module[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mAt this point you might want to remove all CSS files from the source control, and add `src/**/*.css` to your `.gitignore` file. It is generally a good practice to keep the build products outside of the source control.[m
[32m+[m
[32m+[m[32mAs a final step, you may find it convenient to run `watch-css` automatically with `npm start`, and run `build-css` as a part of `npm run build`. You can use the `&&` operator to execute two scripts sequentially. However, there is no cross-platform way to run two scripts in parallel, so we will install a package for this:[m
[32m+[m
[32m+[m[32m```sh[m
[32m+[m[32mnpm install --save npm-run-all[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mAlternatively you may use `yarn`:[m
[32m+[m
[32m+[m[32m```sh[m
[32m+[m[32myarn add npm-run-all[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mThen we can change `start` and `build` scripts to include the CSS preprocessor commands:[m
[32m+[m
[32m+[m[32m```diff[m
[32m+[m[32m   "scripts": {[m
[32m+[m[32m     "build-css": "node-sass-chokidar src/ -o src/",[m
[32m+[m[32m     "watch-css": "npm run build-css && node-sass-chokidar src/ -o src/ --watch --recursive",[m
[32m+[m[32m-    "start": "react-scripts start",[m
[32m+[m[32m-    "build": "react-scripts build",[m
[32m+[m[32m+    "start-js": "react-scripts start",[m
[32m+[m[32m+    "start": "npm-run-all -p watch-css start-js",[m
[32m+[m[32m+    "build": "npm run build-css && react-scripts build",[m
[32m+[m[32m     "test": "react-scripts test --env=jsdom",[m
[32m+[m[32m     "eject": "react-scripts eject"[m
[32m+[m[32m   }[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mNow running `npm start` and `npm run build` also builds Sass files.[m
[32m+[m
[32m+[m[32m**Why `node-sass-chokidar`?**[m
[32m+[m
[32m+[m[32m`node-sass` has been reported as having the following issues:[m
[32m+[m
[32m+[m[32m- `node-sass --watch` has been reported to have *performance issues* in certain conditions when used in a virtual machine or with docker.[m
[32m+[m
[32m+[m[32m- Infinite styles compiling [#1939](https://github.com/facebookincubator/create-react-app/issues/1939)[m
[32m+[m
[32m+[m[32m- `node-sass` has been reported as having issues with detecting new files in a directory [#1891](https://github.com/sass/node-sass/issues/1891)[m
[32m+[m
[32m+[m[32m `node-sass-chokidar` is used here as it addresses these issues.[m
[32m+[m
[32m+[m[32m## Adding Images, Fonts, and Files[m
[32m+[m
[32m+[m[32mWith Webpack, using static assets like images and fonts works similarly to CSS.[m
[32m+[m
[32m+[m[32mYou can **`import` a file right in a JavaScript module**. This tells Webpack to include that file in the bundle. Unlike CSS imports, importing a file gives you a string value. This value is the final path you can reference in your code, e.g. as the `src` attribute of an image or the `href` of a link to a PDF.[m
[32m+[m
[32m+[m[32mTo reduce the number of requests to the server, importing images that are less than 10,000 bytes returns a [data URI](https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/Data_URIs) instead of a path. This applies to the following file extensions: bmp, gif, jpg, jpeg, and png. SVG files are excluded due to [#1153](https://github.com/facebookincubator/create-react-app/issues/1153).[m
[32m+[m
[32m+[m[32mHere is an example:[m
[32m+[m
[32m+[m[32m```js[m
[32m+[m[32mimport React from 'react';[m
[32m+[m[32mimport logo from './logo.png'; // Tell Webpack this JS file uses this image[m
[32m+[m
[32m+[m[32mconsole.log(logo); // /logo.84287d09.png[m
[32m+[m
[32m+[m[32mfunction Header() {[m
[32m+[m[32m  // Import result is the URL of your image[m
[32m+[m[32m  return <img src={logo} alt="Logo" />;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mexport default Header;[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mThis ensures that when the project is built, Webpack will correctly move the images into the build folder, and provide us with correct paths.[m
[32m+[m
[32m+[m[32mThis works in CSS too:[m
[32m+[m
[32m+[m[32m```css[m
[32m+[m[32m.Logo {[m
[32m+[m[32m  background-image: url(./logo.png);[m
[32m+[m[32m}[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mWebpack finds all relative module references in CSS (they start with `./`) and replaces them with the final paths from the compiled bundle. If you make a typo or accidentally delete an important file, you will see a compilation error, just like when you import a non-existent JavaScript module. The final filenames in the compiled bundle are generated by Webpack from content hashes. If the file content changes in the future, Webpack will give it a different name in production so you don’t need to worry about long-term caching of assets.[m
[32m+[m
[32m+[m[32mPlease be advised that this is also a custom feature of Webpack.[m
[32m+[m
[32m+[m[32m**It is not required for React** but many people enjoy it (and React Native uses a similar mechanism for images).<br>[m
[32m+[m[32mAn alternative way of handling static assets is described in the next section.[m
[32m+[m
[32m+[m[32m## Using the `public` Folder[m
[32m+[m
[32m+[m[32m>Note: this feature is available with `react-scripts@0.5.0` and higher.[m
[32m+[m
[32m+[m[32m### Changing the HTML[m
[32m+[m
[32m+[m[32mThe `public` folder contains the HTML file so you can tweak it, for example, to [set the page title](#changing-the-page-title).[m
[32m+[m[32mThe `<script>` tag with the compiled code will be added to it automatically during the build process.[m
[32m+[m
[32m+[m[32m### Adding Assets Outside of the Module System[m
[32m+[m
[32m+[m[32mYou can also add other assets to the `public` folder.[m
[32m+[m
[32m+[m[32mNote that we normally encourage you to `import` assets in JavaScript files instead.[m
[32m+[m[32mFor example, see the sections on [adding a stylesheet](#adding-a-stylesheet) and [adding images and fonts](#adding-images-fonts-and-files).[m
[32m+[m[32mThis mechanism provides a number of benefits:[m
[32m+[m
[32m+[m[32m* Scripts and stylesheets get minified and bundled together to avoid extra network requests.[m
[32m+[m[32m* Missing files cause compilation errors instead of 404 errors for your users.[m
[32m+[m[32m* Result filenames include content hashes so you don’t need to worry about browsers caching their old versions.[m
[32m+[m
[32m+[m[32mHowever there is an **escape hatch** that you can use to add an asset outside of the module system.[m
[32m+[m
[32m+[m[32mIf you put a file into the `public` folder, it will **not** be processed by Webpack. Instead it will be copied into the build folder untouched.   To reference assets in the `public` folder, you need to use a special variable called `PUBLIC_URL`.[m
[32m+[m
[32m+[m[32mInside `index.html`, you can use it like this:[m
[32m+[m
[32m+[m[32m```html[m
[32m+[m[32m<link rel="shortcut icon" href="%PUBLIC_URL%/favicon.ico">[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mOnly files inside the `public` folder will be accessible by `%PUBLIC_URL%` prefix. If you need to use a file from `src` or `node_modules`, you’ll have to copy it there to explicitly specify your intention to make this file a part of the build.[m
[32m+[m
[32m+[m[32mWhen you run `npm run build`, Create React App will substitute `%PUBLIC_URL%` with a correct absolute path so your project works even if you use client-side routing or host it at a non-root URL.[m
[32m+[m
[32m+[m[32mIn JavaScript code, you can use `process.env.PUBLIC_URL` for similar purposes:[m
[32m+[m
[32m+[m[32m```js[m
[32m+[m[32mrender() {[m
[32m+[m[32m  // Note: this is an escape hatch and should be used sparingly![m
[32m+[m[32m  // Normally we recommend using `import` for getting asset URLs[m
[32m+[m[32m  // as described in “Adding Images and Fonts” above this section.[m
[32m+[m[32m  return <img src={process.env.PUBLIC_URL + '/img/logo.png'} />;[m
[32m+[m[32m}[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mKeep in mind the downsides of this approach:[m
[32m+[m
[32m+[m[32m* None of the files in `public` folder get post-processed or minified.[m
[32m+[m[32m* Missing files will not be called at compilation time, and will cause 404 errors for your users.[m
[32m+[m[32m* Result filenames won’t include content hashes so you’ll need to add query arguments or rename them every time they change.[m
[32m+[m
[32m+[m[32m### When to Use the `public` Folder[m
[32m+[m
[32m+[m[32mNormally we recommend importing [stylesheets](#adding-a-stylesheet), [images, and fonts](#adding-images-fonts-and-files) from JavaScript.[m
[32m+[m[32mThe `public` folder is useful as a workaround for a number of less common cases:[m
[32m+[m
[32m+[m[32m* You need a file with a specific name in the build output, such as [`manifest.webmanifest`](https://developer.mozilla.org/en-US/docs/Web/Manifest).[m
[32m+[m[32m* You have thousands of images and need to dynamically reference their paths.[m
[32m+[m[32m* You want to include a small script like [`pace.js`](http://github.hubspot.com/pace/docs/welcome/) outside of the bundled code.[m
[32m+[m[32m* Some library may be incompatible with Webpack and you have no other option but to include it as a `<script>` tag.[m
[32m+[m
[32m+[m[32mNote that if you add a `<script>` that declares global variables, you also need to read the next section on using them.[m
[32m+[m
[32m+[m[32m## Using Global Variables[m
[32m+[m
[32m+[m[32mWhen you include a script in the HTML file that defines global variables and try to use one of these variables in the code, the linter will complain because it cannot see the definition of the variable.[m
[32m+[m
[32m+[m[32mYou can avoid this by reading the global variable explicitly from the `window` object, for example:[m
[32m+[m
[32m+[m[32m```js[m
[32m+[m[32mconst $ = window.$;[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mThis makes it obvious you are using a global variable intentionally rather than because of a typo.[m
[32m+[m
[32m+[m[32mAlternatively, you can force the linter to ignore any line by adding `// eslint-disable-line` after it.[m
[32m+[m
[32m+[m[32m## Adding Bootstrap[m
[32m+[m
[32m+[m[32mYou don’t have to use [React Bootstrap](https://react-bootstrap.github.io) together with React but it is a popular library for integrating Bootstrap with React apps. If you need it, you can integrate it with Create React App by following these steps:[m
[32m+[m
[32m+[m[32mInstall React Bootstrap and Bootstrap from npm. React Bootstrap does not include Bootstrap CSS so this needs to be installed as well:[m
[32m+[m
[32m+[m[32m```sh[m
[32m+[m[32mnpm install --save react-bootstrap bootstrap@3[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mAlternatively you may use `yarn`:[m
[32m+[m
[32m+[m[32m```sh[m
[32m+[m[32myarn add react-bootstrap bootstrap@3[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mImport Bootstrap CSS and optionally Bootstrap theme CSS in the beginning of your ```src/index.js``` file:[m
[32m+[m
[32m+[m[32m```js[m
[32m+[m[32mimport 'bootstrap/dist/css/bootstrap.css';[m
[32m+[m[32mimport 'bootstrap/dist/css/bootstrap-theme.css';[m
[32m+[m[32m// Put any other imports below so that CSS from your[m
[32m+[m[32m// components takes precedence over default styles.[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mImport required React Bootstrap components within ```src/App.js``` file or your custom component files:[m
[32m+[m
[32m+[m[32m```js[m
[32m+[m[32mimport { Navbar, Jumbotron, Button } from 'react-bootstrap';[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mNow you are ready to use the imported React Bootstrap components within your component hierarchy defined in the render method. Here is an example [`App.js`](https://gist.githubusercontent.com/gaearon/85d8c067f6af1e56277c82d19fd4da7b/raw/6158dd991b67284e9fc8d70b9d973efe87659d72/App.js) redone using React Bootstrap.[m
[32m+[m
[32m+[m[32m### Using a Custom Theme[m
[32m+[m
[32m+[m[32mSometimes you might need to tweak the visual styles of Bootstrap (or equivalent package).<br>[m
[32m+[m[32mWe suggest the following approach:[m
[32m+[m
[32m+[m[32m* Create a new package that depends on the package you wish to customize, e.g. Bootstrap.[m
[32m+[m[32m* Add the necessary build steps to tweak the theme, and publish your package on npm.[m
[32m+[m[32m* Install your own theme npm package as a dependency of your app.[m
[32m+[m
[32m+[m[32mHere is an example of adding a [customized Bootstrap](https://medium.com/@tacomanator/customizing-create-react-app-aa9ffb88165) that follows these steps.[m
[32m+[m
[32m+[m[32m## Adding Flow[m
[32m+[m
[32m+[m[32mFlow is a static type checker that helps you write code with fewer bugs. Check out this [introduction to using static types in JavaScript](https://medium.com/@preethikasireddy/why-use-static-types-in-javascript-part-1-8382da1e0adb) if you are new to this concept.[m
[32m+[m
[32m+[m[32mRecent versions of [Flow](http://flowtype.org/) work with Create React App projects out of the box.[m
[32m+[m
[32m+[m[32mTo add Flow to a Create React App project, follow these steps:[m
[32m+[m
[32m+[m[32m1. Run `npm install --save flow-bin` (or `yarn add flow-bin`).[m
[32m+[m[32m2. Add `"flow": "flow"` to the `scripts` section of your `package.json`.[m
[32m+[m[32m3. Run `npm run flow init` (or `yarn flow init`) to create a [`.flowconfig` file](https://flowtype.org/docs/advanced-configuration.html) in the root directory.[m
[32m+[m[32m4. Add `// @flow` to any files you want to type check (for example, to `src/App.js`).[m
[32m+[m
[32m+[m[32mNow you can run `npm run flow` (or `yarn flow`) to check the files for type errors.[m
[32m+[m[32mYou can optionally use an IDE like [Nuclide](https://nuclide.io/docs/languages/flow/) for a better integrated experience.[m
[32m+[m[32mIn the future we plan to integrate it into Create React App even more closely.[m
[32m+[m
[32m+[m[32mTo learn more about Flow, check out [its documentation](https://flowtype.org/).[m
[32m+[m
[32m+[m[32m## Adding Custom Environment Variables[m
[32m+[m
[32m+[m[32m>Note: this feature is available with `react-scripts@0.2.3` and higher.[m
[32m+[m
[32m+[m[32mYour project can consume variables declared in your environment as if they were declared locally in your JS files. By[m
[32m+[m[32mdefault you will have `NODE_ENV` defined for you, and any other environment variables starting with[m
[32m+[m[32m`REACT_APP_`.[m
[32m+[m
[32m+[m[32m**The environment variables are embedded during the build time**. Since Create React App produces a static HTML/CSS/JS bundle, it can’t possibly read them at runtime. To read them at runtime, you would need to load HTML into memory on the server and replace placeholders in runtime, just like [described here](#injecting-data-from-the-server-into-the-page). Alternatively you can rebuild the app on the server anytime you change them.[m
[32m+[m
[32m+[m[32m>Note: You must create custom environment variables beginning with `REACT_APP_`. Any other variables except `NODE_ENV` will be ignored to avoid accidentally [exposing a private key on the machine that could have the same name](https://github.com/facebookincubator/create-react-app/issues/865#issuecomment-252199527). Changing any environment variables will require you to restart the development server if it is running.[m
[32m+[m
[32m+[m[32mThese environment variables will be defined for you on `process.env`. For example, having an environment[m
[32m+[m[32mvariable named `REACT_APP_SECRET_CODE` will be exposed in your JS as `process.env.REACT_APP_SECRET_CODE`.[m
[32m+[m
[32m+[m[32mThere is also a special built-in environment variable called `NODE_ENV`. You can read it from `process.env.NODE_ENV`. When you run `npm start`, it is always equal to `'development'`, when you run `npm test` it is always equal to `'test'`, and when you run `npm run build` to make a production bundle, it is always equal to `'production'`. **You cannot override `NODE_ENV` manually.** This prevents developers from accidentally deploying a slow development build to production.[m
[32m+[m
[32m+[m[32mThese environment variables can be useful for displaying information conditionally based on where the project is[m
[32m+[m[32mdeployed or consuming sensitive data that lives outside of version control.[m
[32m+[m
[32m+[m[32mFirst, you need to have environment variables defined. For example, let’s say you wanted to consume a secret defined[m
[32m+[m[32min the environment inside a `<form>`:[m
[32m+[m
[32m+[m[32m```jsx[m
[32m+[m[32mrender() {[m
[32m+[m[32m  return ([m
[32m+[m[32m    <div>[m
[32m+[m[32m      <small>You are running this application in <b>{process.env.NODE_ENV}</b> mode.</small>[m
[32m+[m[32m      <form>[m
[32m+[m[32m        <input type="hidden" defaultValue={process.env.REACT_APP_SECRET_CODE} />[m
[32m+[m[32m      </form>[m
[32m+[m[32m    </div>[m
[32m+[m[32m  );[m
[32m+[m[32m}[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mDuring the build, `process.env.REACT_APP_SECRET_CODE` will be replaced with the current value of the `REACT_APP_SECRET_CODE` environment variable. Remember that the `NODE_ENV` variable will be set for you automatically.[m
[32m+[m
[32m+[m[32mWhen you load the app in the browser and inspect the `<input>`, you will see its value set to `abcdef`, and the bold text will show the environment provided when using `npm start`:[m
[32m+[m
[32m+[m[32m```html[m
[32m+[m[32m<div>[m
[32m+[m[32m  <small>You are running this application in <b>development</b> mode.</small>[m
[32m+[m[32m  <form>[m
[32m+[m[32m    <input type="hidden" value="abcdef" />[m
[32m+[m[32m  </form>[m
[32m+[m[32m</div>[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mThe above form is looking for a variable called `REACT_APP_SECRET_CODE` from the environment. In order to consume this[m
[32m+[m[32mvalue, we need to have it defined in the environment. This can be done using two ways: either in your shell or in[m
[32m+[m[32ma `.env` file. Both of these ways are described in the next few sections.[m
[32m+[m
[32m+[m[32mHaving access to the `NODE_ENV` is also useful for performing actions conditionally:[m
[32m+[m
[32m+[m[32m```js[m
[32m+[m[32mif (process.env.NODE_ENV !== 'production') {[m
[32m+[m[32m  analytics.disable();[m
[32m+[m[32m}[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mWhen you compile the app with `npm run build`, the minification step will strip out this condition, and the resulting bundle will be smaller.[m
[32m+[m
[32m+[m[32m### Referencing Environment Variables in the HTML[m
[32m+[m
[32m+[m[32m>Note: this feature is available with `react-scripts@0.9.0` and higher.[m
[32m+[m
[32m+[m[32mYou can also access the environment variables starting with `REACT_APP_` in the `public/index.html`. For example:[m
[32m+[m
[32m+[m[32m```html[m
[32m+[m[32m<title>%REACT_APP_WEBSITE_NAME%</title>[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mNote that the caveats from the above section apply:[m
[32m+[m
[32m+[m[32m* Apart from a few built-in variables (`NODE_ENV` and `PUBLIC_URL`), variable names must start with `REACT_APP_` to work.[m
[32m+[m[32m* The environment variables are injected at build time. If you need to inject them at runtime, [follow this approach instead](#generating-dynamic-meta-tags-on-the-server).[m
[32m+[m
[32m+[m[32m### Adding Temporary Environment Variables In Your Shell[m
[32m+[m
[32m+[m[32mDefining environment variables can vary between OSes. It’s also important to know that this manner is temporary for the[m
[32m+[m[32mlife of the shell session.[m
[32m+[m
[32m+[m[32m#### Windows (cmd.exe)[m
[32m+[m
[32m+[m[32m```cmd[m
[32m+[m[32mset REACT_APP_SECRET_CODE=abcdef&&npm start[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32m(Note: the lack of whitespace is intentional.)[m
[32m+[m
[32m+[m[32m#### Linux, macOS (Bash)[m
[32m+[m
[32m+[m[32m```bash[m
[32m+[m[32mREACT_APP_SECRET_CODE=abcdef npm start[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32m### Adding Development Environment Variables In `.env`[m
[32m+[m
[32m+[m[32m>Note: this feature is available with `react-scripts@0.5.0` and higher.[m
[32m+[m
[32m+[m[32mTo define permanent environment variables, create a file called `.env` in the root of your project:[m
[32m+[m
[32m+[m[32m```[m
[32m+[m[32mREACT_APP_SECRET_CODE=abcdef[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32m`.env` files **should be** checked into source control (with the exclusion of `.env*.local`).[m
[32m+[m
[32m+[m[32m#### What other `.env` files are can be used?[m
[32m+[m
[32m+[m[32m>Note: this feature is **available with `react-scripts@1.0.0` and higher**.[m
[32m+[m
[32m+[m[32m* `.env`: Default.[m
[32m+[m[32m* `.env.local`: Local overrides. **This file is loaded for all environments except test.**[m
[32m+[m[32m* `.env.development`, `.env.test`, `.env.production`: Environment-specific settings.[m
[32m+[m[32m* `.env.development.local`, `.env.test.local`, `.env.production.local`: Local overrides of environment-specific settings.[m
[32m+[m
[32m+[m[32mFiles on the left have more priority than files on the right:[m
[32m+[m
[32m+[m[32m* `npm start`: `.env.development.local`, `.env.development`, `.env.local`, `.env`[m
[32m+[m[32m* `npm run build`: `.env.production.local`, `.env.production`, `.env.local`, `.env`[m
[32m+[m[32m* `npm test`: `.env.test.local`, `.env.test`, `.env` (note `.env.local` is missing)[m
[32m+[m
[32m+[m[32mThese variables will act as the defaults if the machine does not explicitly set them.<br>[m
[32m+[m[32mPlease refer to the [dotenv documentation](https://github.com/motdotla/dotenv) for more details.[m
[32m+[m
[32m+[m[32m>Note: If you are defining environment variables for development, your CI and/or hosting platform will most likely need[m
[32m+[m[32mthese defined as well. Consult their documentation how to do this. For example, see the documentation for [Travis CI](https://docs.travis-ci.com/user/environment-variables/) or [Heroku](https://devcenter.heroku.com/articles/config-vars).[m
[32m+[m
[32m+[m[32m## Can I Use Decorators?[m
[32m+[m
[32m+[m[32mMany popular libraries use [decorators](https://medium.com/google-developers/exploring-es7-decorators-76ecb65fb841) in their documentation.<br>[m
[32m+[m[32mCreate React App doesn’t support decorator syntax at the moment because:[m
[32m+[m
[32m+[m[32m* It is an experimental proposal and is subject to change.[m
[32m+[m[32m* The current specification version is not officially supported by Babel.[m
[32m+[m[32m* If the specification changes, we won’t be able to write a codemod because we don’t use them internally at Facebook.[m
[32m+[m
[32m+[m[32mHowever in many cases you can rewrite decorator-based code without decorators just as fine.<br>[m
[32m+[m[32mPlease refer to these two threads for reference:[m
[32m+[m
[32m+[m[32m* [#214](https://github.com/facebookincubator/create-react-app/issues/214)[m
[32m+[m[32m* [#411](https://github.com/facebookincubator/create-react-app/issues/411)[m
[32m+[m
[32m+[m[32mCreate React App will add decorator support when the specification advances to a stable stage.[m
[32m+[m
[32m+[m[32m## Integrating with an API Backend[m
[32m+[m
[32m+[m[32mThese tutorials will help you to integrate your app with an API backend running on another port,[m
[32m+[m[32musing `fetch()` to access it.[m
[32m+[m
[32m+[m[32m### Node[m
[32m+[m[32mCheck out [this tutorial](https://www.fullstackreact.com/articles/using-create-react-app-with-a-server/).[m
[32m+[m[32mYou can find the companion GitHub repository [here](https://github.com/fullstackreact/food-lookup-demo).[m
[32m+[m
[32m+[m[32m### Ruby on Rails[m
[32m+[m
[32m+[m[32mCheck out [this tutorial](https://www.fullstackreact.com/articles/how-to-get-create-react-app-to-work-with-your-rails-api/).[m
[32m+[m[32mYou can find the companion GitHub repository [here](https://github.com/fullstackreact/food-lookup-demo-rails).[m
[32m+[m
[32m+[m[32m## Proxying API Requests in Development[m
[32m+[m
[32m+[m[32m>Note: this feature is available with `react-scripts@0.2.3` and higher.[m
[32m+[m
[32m+[m[32mPeople often serve the front-end React app from the same host and port as their backend implementation.<br>[m
[32m+[m[32mFor example, a production setup might look like this after the app is deployed:[m
[32m+[m
[32m+[m[32m```[m
[32m+[m[32m/             - static server returns index.html with React app[m
[32m+[m[32m/todos        - static server returns index.html with React app[m
[32m+[m[32m/api/todos    - server handles any /api/* requests using the backend implementation[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mSuch setup is **not** required. However, if you **do** have a setup like this, it is convenient to write requests like `fetch('/api/todos')` without worrying about redirecting them to another host or port during development.[m
[32m+[m
[32m+[m[32mTo tell the development server to proxy any unknown requests to your API server in development, add a `proxy` field to your `package.json`, for example:[m
[32m+[m
[32m+[m[32m```js[m
[32m+[m[32m  "proxy": "http://localhost:4000",[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mThis way, when you `fetch('/api/todos')` in development, the development server will recognize that it’s not a static asset, and will proxy your request to `http://localhost:4000/api/todos` as a fallback. The development server will only attempt to send requests without a `text/html` accept header to the proxy.[m
[32m+[m
[32m+[m[32mConveniently, this avoids [CORS issues](http://stackoverflow.com/questions/21854516/understanding-ajax-cors-and-security-considerations) and error messages like this in development:[m
[32m+[m
[32m+[m[32m```[m
[32m+[m[32mFetch API cannot load http://localhost:4000/api/todos. No 'Access-Control-Allow-Origin' header is present on the requested resource. Origin 'http://localhost:3000' is therefore not allowed access. If an opaque response serves your needs, set the request's mode to 'no-cors' to fetch the resource with CORS disabled.[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mKeep in mind that `proxy` only has effect in development (with `npm start`), and it is up to you to ensure that URLs like `/api/todos` point to the right thing in production. You don’t have to use the `/api` prefix. Any unrecognized request without a `text/html` accept header will be redirected to the specified `proxy`.[m
[32m+[m
[32m+[m[32mThe `proxy` option supports HTTP, HTTPS and WebSocket connections.<br>[m
[32m+[m[32mIf the `proxy` option is **not** flexible enough for you, alternatively you can:[m
[32m+[m
[32m+[m[32m* [Configure the proxy yourself](#configuring-the-proxy-manually)[m
[32m+[m[32m* Enable CORS on your server ([here’s how to do it for Express](http://enable-cors.org/server_expressjs.html)).[m
[32m+[m[32m* Use [environment variables](#adding-custom-environment-variables) to inject the right server host and port into your app.[m
[32m+[m
[32m+[m[32m### "Invalid Host Header" Errors After Configuring Proxy[m
[32m+[m
[32m+[m[32mWhen you enable the `proxy` option, you opt into a more strict set of host checks. This is necessary because leaving the backend open to remote hosts makes your computer vulnerable to DNS rebinding attacks. The issue is explained in [this article](https://medium.com/webpack/webpack-dev-server-middleware-security-issues-1489d950874a) and [this issue](https://github.com/webpack/webpack-dev-server/issues/887).[m
[32m+[m
[32m+[m[32mThis shouldn’t affect you when developing on `localhost`, but if you develop remotely like [described here](https://github.com/facebookincubator/create-react-app/issues/2271), you will see this error in the browser after enabling the `proxy` option:[m
[32m+[m
[32m+[m[32m>Invalid Host header[m
[32m+[m
[32m+[m[32mTo work around it, you can specify your public development host in a file called `.env.development` in the root of your project:[m
[32m+[m
[32m+[m[32m```[m
[32m+[m[32mHOST=mypublicdevhost.com[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mIf you restart the development server now and load the app from the specified host, it should work.[m
[32m+[m
[32m+[m[32mIf you are still having issues or if you’re using a more exotic environment like a cloud editor, you can bypass the host check completely by adding a line to `.env.development.local`. **Note that this is dangerous and exposes your machine to remote code execution from malicious websites:**[m
[32m+[m
[32m+[m[32m```[m
[32m+[m[32m# NOTE: THIS IS DANGEROUS![m
[32m+[m[32m# It exposes your machine to attacks from the websites you visit.[m
[32m+[m[32mDANGEROUSLY_DISABLE_HOST_CHECK=true[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mWe don’t recommend this approach.[m
[32m+[m
[32m+[m[32m### Configuring the Proxy Manually[m
[32m+[m
[32m+[m[32m>Note: this feature is available with `react-scripts@1.0.0` and higher.[m
[32m+[m
[32m+[m[32mIf the `proxy` option is **not** flexible enough for you, you can specify an object in the following form (in `package.json`).<br>[m
[32m+[m[32mYou may also specify any configuration value [`http-proxy-middleware`](https://github.com/chimurai/http-proxy-middleware#options) or [`http-proxy`](https://github.com/nodejitsu/node-http-proxy#options) supports.[m
[32m+[m[32m```js[m
[32m+[m[32m{[m
[32m+[m[32m  // ...[m
[32m+[m[32m  "proxy": {[m
[32m+[m[32m    "/api": {[m
[32m+[m[32m      "target": "<url>",[m
[32m+[m[32m      "ws": true[m
[32m+[m[32m      // ...[m
[32m+[m[32m    }[m
[32m+[m[32m  }[m
[32m+[m[32m  // ...[m
[32m+[m[32m}[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mAll requests matching this path will be proxies, no exceptions. This includes requests for `text/html`, which the standard `proxy` option does not proxy.[m
[32m+[m
[32m+[m[32mIf you need to specify multiple proxies, you may do so by specifying additional entries.[m
[32m+[m[32mYou may also narrow down matches using `*` and/or `**`, to match the path exactly or any subpath.[m
[32m+[m[32m```js[m
[32m+[m[32m{[m
[32m+[m[32m  // ...[m
[32m+[m[32m  "proxy": {[m
[32m+[m[32m    // Matches any request starting with /api[m
[32m+[m[32m    "/api": {[m
[32m+[m[32m      "target": "<url_1>",[m
[32m+[m[32m      "ws": true[m
[32m+[m[32m      // ...[m
[32m+[m[32m    },[m
[32m+[m[32m    // Matches any request starting with /foo[m
[32m+[m[32m    "/foo": {[m
[32m+[m[32m      "target": "<url_2>",[m
[32m+[m[32m      "ssl": true,[m
[32m+[m[32m      "pathRewrite": {[m
[32m+[m[32m        "^/foo": "/foo/beta"[m
[32m+[m[32m      }[m
[32m+[m[32m      // ...[m
[32m+[m[32m    },[m
[32m+[m[32m    // Matches /bar/abc.html but not /bar/sub/def.html[m
[32m+[m[32m    "/bar/*.html": {[m
[32m+[m[32m      "target": "<url_3>",[m
[32m+[m[32m      // ...[m
[32m+[m[32m    },[m
[32m+[m[32m    // Matches /baz/abc.html and /baz/sub/def.html[m
[32m+[m[32m    "/baz/**/*.html": {[m
[32m+[m[32m      "target": "<url_4>"[m
[32m+[m[32m      // ...[m
[32m+[m[32m    }[m
[32m+[m[32m  }[m
[32m+[m[32m  // ...[m
[32m+[m[32m}[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32m### Configuring a WebSocket Proxy[m
[32m+[m
[32m+[m[32mWhen setting up a WebSocket proxy, there are a some extra considerations to be aware of.[m
[32m+[m
[32m+[m[32mIf you’re using a WebSocket engine like [Socket.io](https://socket.io/), you must have a Socket.io server running that you can use as the proxy target. Socket.io will not work with a standard WebSocket server. Specifically, don't expect Socket.io to work with [the websocket.org echo test](http://websocket.org/echo.html).[m
[32m+[m
[32m+[m[32mThere’s some good documentation available for [setting up a Socket.io server](https://socket.io/docs/).[m
[32m+[m
[32m+[m[32mStandard WebSockets **will** work with a standard WebSocket server as well as the websocket.org echo test. You can use libraries like [ws](https://github.com/websockets/ws) for the server, with [native WebSockets in the browser](https://developer.mozilla.org/en-US/docs/Web/API/WebSocket).[m
[32m+[m
[32m+[m[32mEither way, you can proxy WebSocket requests manually in `package.json`:[m
[32m+[m
[32m+[m[32m```js[m
[32m+[m[32m{[m
[32m+[m[32m  // ...[m
[32m+[m[32m  "proxy": {[m
[32m+[m[32m    "/socket": {[m
[32m+[m[32m      // Your compatible WebSocket server[m
[32m+[m[32m      "target": "ws://<socket_url>",[m
[32m+[m[32m      // Tell http-proxy-middleware that this is a WebSocket proxy.[m
[32m+[m[32m      // Also allows you to proxy WebSocket requests without an additional HTTP request[m
[32m+[m[32m      // https://github.com/chimurai/http-proxy-middleware#external-websocket-upgrade[m
[32m+[m[32m      "ws": true[m
[32m+[m[32m      // ...[m
[32m+[m[32m    }[m
[32m+[m[32m  }[m
[32m+[m[32m  // ...[m
[32m+[m[32m}[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32m## Using HTTPS in Development[m
[32m+[m
[32m+[m[32m>Note: this feature is available with `react-scripts@0.4.0` and higher.[m
[32m+[m
[32m+[m[32mYou may require the dev server to serve pages over HTTPS. One particular case where this could be useful is when using [the "proxy" feature](#proxying-api-requests-in-development) to proxy requests to an API server when that API server is itself serving HTTPS.[m
[32m+[m
[32m+[m[32mTo do this, set the `HTTPS` environment variable to `true`, then start the dev server as usual with `npm start`:[m
[32m+[m
[32m+[m[32m#### Windows (cmd.exe)[m
[32m+[m
[32m+[m[32m```cmd[m
[32m+[m[32mset HTTPS=true&&npm start[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32m(Note: the lack of whitespace is intentional.)[m
[32m+[m
[32m+[m[32m#### Linux, macOS (Bash)[m
[32m+[m
[32m+[m[32m```bash[m
[32m+[m[32mHTTPS=true npm start[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mNote that the server will use a self-signed certificate, so your web browser will almost definitely display a warning upon accessing the page.[m
[32m+[m
[32m+[m[32m## Generating Dynamic `<meta>` Tags on the Server[m
[32m+[m
[32m+[m[32mSince Create React App doesn’t support server rendering, you might be wondering how to make `<meta>` tags dynamic and reflect the current URL. To solve this, we recommend to add placeholders into the HTML, like this:[m
[32m+[m
[32m+[m[32m```html[m
[32m+[m[32m<!doctype html>[m
[32m+[m[32m<html lang="en">[m
[32m+[m[32m  <head>[m
[32m+[m[32m    <meta property="og:title" content="__OG_TITLE__">[m
[32m+[m[32m    <meta property="og:description" content="__OG_DESCRIPTION__">[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mThen, on the server, regardless of the backend you use, you can read `index.html` into memory and replace `__OG_TITLE__`, `__OG_DESCRIPTION__`, and any other placeholders with values depending on the current URL. Just make sure to sanitize and escape the interpolated values so that they are safe to embed into HTML![m
[32m+[m
[32m+[m[32mIf you use a Node server, you can even share the route matching logic between the client and the server. However duplicating it also works fine in simple cases.[m
[32m+[m
[32m+[m[32m## Pre-Rendering into Static HTML Files[m
[32m+[m
[32m+[m[32mIf you’re hosting your `build` with a static hosting provider you can use [react-snapshot](https://www.npmjs.com/package/react-snapshot) to generate HTML pages for each route, or relative link, in your application. These pages will then seamlessly become active, or “hydrated”, when the JavaScript bundle has loaded.[m
[32m+[m
[32m+[m[32mThere are also opportunities to use this outside of static hosting, to take the pressure off the server when generating and caching routes.[m
[32m+[m
[32m+[m[32mThe primary benefit of pre-rendering is that you get the core content of each page _with_ the HTML payload—regardless of whether or not your JavaScript bundle successfully downloads. It also increases the likelihood that each route of your application will be picked up by search engines.[m
[32m+[m
[32m+[m[32mYou can read more about [zero-configuration pre-rendering (also called snapshotting) here](https://medium.com/superhighfives/an-almost-static-stack-6df0a2791319).[m
[32m+[m
[32m+[m[32m## Injecting Data from the Server into the Page[m
[32m+[m
[32m+[m[32mSimilarly to the previous section, you can leave some placeholders in the HTML that inject global variables, for example:[m
[32m+[m
[32m+[m[32m```js[m
[32m+[m[32m<!doctype html>[m
[32m+[m[32m<html lang="en">[m
[32m+[m[32m  <head>[m
[32m+[m[32m    <script>[m
[32m+[m[32m      window.SERVER_DATA = __SERVER_DATA__;[m
[32m+[m[32m    </script>[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mThen, on the server, you can replace `__SERVER_DATA__` with a JSON of real data right before sending the response. The client code can then read `window.SERVER_DATA` to use it. **Make sure to [sanitize the JSON before sending it to the client](https://medium.com/node-security/the-most-common-xss-vulnerability-in-react-js-applications-2bdffbcc1fa0) as it makes your app vulnerable to XSS attacks.**[m
[32m+[m
[32m+[m[32m## Running Tests[m
[32m+[m
[32m+[m[32m>Note: this feature is available with `react-scripts@0.3.0` and higher.<br>[m
[32m+[m[32m>[Read the migration guide to learn how to enable it in older projects!](https://github.com/facebookincubator/create-react-app/blob/master/CHANGELOG.md#migrating-from-023-to-030)[m
[32m+[m
[32m+[m[32mCreate React App uses [Jest](https://facebook.github.io/jest/) as its test runner. To prepare for this integration, we did a [major revamp](https://facebook.github.io/jest/blog/2016/09/01/jest-15.html) of Jest so if you heard bad things about it years ago, give it another try.[m
[32m+[m
[32m+[m[32mJest is a Node-based runner. This means that the tests always run in a Node environment and not in a real browser. This lets us enable fast iteration speed and prevent flakiness.[m
[32m+[m
[32m+[m[32mWhile Jest provides browser globals such as `window` thanks to [jsdom](https://github.com/tmpvar/jsdom), they are only approximations of the real browser behavior. Jest is intended to be used for unit tests of your logic and your components rather than the DOM quirks.[m
[32m+[m
[32m+[m[32mWe recommend that you use a separate tool for browser end-to-end tests if you need them. They are beyond the scope of Create React App.[m
[32m+[m
[32m+[m[32m### Filename Conventions[m
[32m+[m
[32m+[m[32mJest will look for test files with any of the following popular naming conventions:[m
[32m+[m
[32m+[m[32m* Files with `.js` suffix in `__tests__` folders.[m
[32m+[m[32m* Files with `.test.js` suffix.[m
[32m+[m[32m* Files with `.spec.js` suffix.[m
[32m+[m
[32m+[m[32mThe `.test.js` / `.spec.js` files (or the `__tests__` folders) can be located at any depth under the `src` top level folder.[m
[32m+[m
[32m+[m[32mWe recommend to put the test files (or `__tests__` folders) next to the code they are testing so that relative imports appear shorter. For example, if `App.test.js` and `App.js` are in the same folder, the test just needs to `import App from './App'` instead of a long relative path. Colocation also helps find tests more quickly in larger projects.[m
[32m+[m
[32m+[m[32m### Command Line Interface[m
[32m+[m
[32m+[m[32mWhen you run `npm test`, Jest will launch in the watch mode. Every time you save a file, it will re-run the tests, just like `npm start` recompiles the code.[m
[32m+[m
[32m+[m[32mThe watcher includes an interactive command-line interface with the ability to run all tests, or focus on a search pattern. It is designed this way so that you can keep it open and enjoy fast re-runs. You can learn the commands from the “Watch Usage” note that the watcher prints after every run:[m
[32m+[m
[32m+[m[32m![Jest watch mode](http://facebook.github.io/jest/img/blog/15-watch.gif)[m
[32m+[m
[32m+[m[32m### Version Control Integration[m
[32m+[m
[32m+[m[32mBy default, when you run `npm test`, Jest will only run the tests related to files changed since the last commit. This is an optimization designed to make your tests run fast regardless of how many tests you have. However it assumes that you don’t often commit the code that doesn’t pass the tests.[m
[32m+[m
[32m+[m[32mJest will always explicitly mention that it only ran tests related to the files changed since the last commit. You can also press `a` in the watch mode to force Jest to run all tests.[m
[32m+[m
[32m+[m[32mJest will always run all tests on a [continuous integration](#continuous-integration) server or if the project is not inside a Git or Mercurial repository.[m
[32m+[m
[32m+[m[32m### Writing Tests[m
[32m+[m
[32m+[m[32mTo create tests, add `it()` (or `test()`) blocks with the name of the test and its code. You may optionally wrap them in `describe()` blocks for logical grouping but this is neither required nor recommended.[m
[32m+[m
[32m+[m[32mJest provides a built-in `expect()` global function for making assertions. A basic test could look like this:[m
[32m+[m
[32m+[m[32m```js[m
[32m+[m[32mimport sum from './sum';[m
[32m+[m
[32m+[m[32mit('sums numbers', () => {[m
[32m+[m[32m  expect(sum(1, 2)).toEqual(3);[m
[32m+[m[32m  expect(sum(2, 2)).toEqual(4);[m
[32m+[m[32m});[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mAll `expect()` matchers supported by Jest are [extensively documented here](http://facebook.github.io/jest/docs/expect.html).<br>[m
[32m+[m[32mYou can also use [`jest.fn()` and `expect(fn).toBeCalled()`](http://facebook.github.io/jest/docs/expect.html#tohavebeencalled) to create “spies” or mock functions.[m
[32m+[m
[32m+[m[32m### Testing Components[m
[32m+[m
[32m+[m[32mThere is a broad spectrum of component testing techniques. They range from a “smoke test” verifying that a component renders without throwing, to shallow rendering and testing some of the output, to full rendering and testing component lifecycle and state changes.[m
[32m+[m
[32m+[m[32mDifferent projects choose different testing tradeoffs based on how often components change, and how much logic they contain. If you haven’t decided on a testing strategy yet, we recommend that you start with creating simple smoke tests for your components:[m
[32m+[m
[32m+[m[32m```js[m
[32m+[m[32mimport React from 'react';[m
[32m+[m[32mimport ReactDOM from 'react-dom';[m
[32m+[m[32mimport App from './App';[m
[32m+[m
[32m+[m[32mit('renders without crashing', () => {[m
[32m+[m[32m  const div = document.createElement('div');[m
[32m+[m[32m  ReactDOM.render(<App />, div);[m
[32m+[m[32m});[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mThis test mounts a component and makes sure that it didn’t throw during rendering. Tests like this provide a lot value with very little effort so they are great as a starting point, and this is the test you will find in `src/App.test.js`.[m
[32m+[m
[32m+[m[32mWhen you encounter bugs caused by changing components, you will gain a deeper insight into which parts of them are worth testing in your application. This might be a good time to introduce more specific tests asserting specific expected output or behavior.[m
[32m+[m
[32m+[m[32mIf you’d like to test components in isolation from the child components they render, we recommend using [`shallow()` rendering API](http://airbnb.io/enzyme/docs/api/shallow.html) from [Enzyme](http://airbnb.io/enzyme/). To install it, run:[m
[32m+[m
[32m+[m[32m```sh[m
[32m+[m[32mnpm install --save enzyme react-test-renderer[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mAlternatively you may use `yarn`:[m
[32m+[m
[32m+[m[32m```sh[m
[32m+[m[32myarn add enzyme react-test-renderer[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mYou can write a smoke test with it too:[m
[32m+[m
[32m+[m[32m```js[m
[32m+[m[32mimport React from 'react';[m
[32m+[m[32mimport { shallow } from 'enzyme';[m
[32m+[m[32mimport App from './App';[m
[32m+[m
[32m+[m[32mit('renders without crashing', () => {[m
[32m+[m[32m  shallow(<App />);[m
[32m+[m[32m});[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mUnlike the previous smoke test using `ReactDOM.render()`, this test only renders `<App>` and doesn’t go deeper. For example, even if `<App>` itself renders a `<Button>` that throws, this test will pass. Shallow rendering is great for isolated unit tests, but you may still want to create some full rendering tests to ensure the components integrate correctly. Enzyme supports [full rendering with `mount()`](http://airbnb.io/enzyme/docs/api/mount.html), and you can also use it for testing state changes and component lifecycle.[m
[32m+[m
[32m+[m[32mYou can read the [Enzyme documentation](http://airbnb.io/enzyme/) for more testing techniques. Enzyme documentation uses Chai and Sinon for assertions but you don’t have to use them because Jest provides built-in `expect()` and `jest.fn()` for spies.[m
[32m+[m
[32m+[m[32mHere is an example from Enzyme documentation that asserts specific output, rewritten to use Jest matchers:[m
[32m+[m
[32m+[m[32m```js[m
[32m+[m[32mimport React from 'react';[m
[32m+[m[32mimport { shallow } from 'enzyme';[m
[32m+[m[32mimport App from './App';[m
[32m+[m
[32m+[m[32mit('renders welcome message', () => {[m
[32m+[m[32m  const wrapper = shallow(<App />);[m
[32m+[m[32m  const welcome = <h2>Welcome to React</h2>;[m
[32m+[m[32m  // expect(wrapper.contains(welcome)).to.equal(true);[m
[32m+[m[32m  expect(wrapper.contains(welcome)).toEqual(true);[m
[32m+[m[32m});[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mAll Jest matchers are [extensively documented here](http://facebook.github.io/jest/docs/expect.html).<br>[m
[32m+[m[32mNevertheless you can use a third-party assertion library like [Chai](http://chaijs.com/) if you want to, as described below.[m
[32m+[m
[32m+[m[32mAdditionally, you might find [jest-enzyme](https://github.com/blainekasten/enzyme-matchers) helpful to simplify your tests with readable matchers. The above `contains` code can be written simpler with jest-enzyme.[m
[32m+[m
[32m+[m[32m```js[m
[32m+[m[32mexpect(wrapper).toContainReact(welcome)[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mTo enable this, install `jest-enzyme`:[m
[32m+[m
[32m+[m[32m```sh[m
[32m+[m[32mnpm install --save jest-enzyme[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mAlternatively you may use `yarn`:[m
[32m+[m
[32m+[m[32m```sh[m
[32m+[m[32myarn add jest-enzyme[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mImport it in [`src/setupTests.js`](#initializing-test-environment) to make its matchers available in every test:[m
[32m+[m
[32m+[m[32m```js[m
[32m+[m[32mimport 'jest-enzyme';[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32m### Using Third Party Assertion Libraries[m
[32m+[m
[32m+[m[32mWe recommend that you use `expect()` for assertions and `jest.fn()` for spies. If you are having issues with them please [file those against Jest](https://github.com/facebook/jest/issues/new), and we’ll fix them. We intend to keep making them better for React, supporting, for example, [pretty-printing React elements as JSX](https://github.com/facebook/jest/pull/1566).[m
[32m+[m
[32m+[m[32mHowever, if you are used to other libraries, such as [Chai](http://chaijs.com/) and [Sinon](http://sinonjs.org/), or if you have existing code using them that you’d like to port over, you can import them normally like this:[m
[32m+[m
[32m+[m[32m```js[m
[32m+[m[32mimport sinon from 'sinon';[m
[32m+[m[32mimport { expect } from 'chai';[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mand then use them in your tests like you normally do.[m
[32m+[m
[32m+[m[32m### Initializing Test Environment[m
[32m+[m
[32m+[m[32m>Note: this feature is available with `react-scripts@0.4.0` and higher.[m
[32m+[m
[32m+[m[32mIf your app uses a browser API that you need to mock in your tests or if you just need a global setup before running your tests, add a `src/setupTests.js` to your project. It will be automatically executed before running your tests.[m
[32m+[m
[32m+[m[32mFor example:[m
[32m+[m
[32m+[m[32m#### `src/setupTests.js`[m
[32m+[m[32m```js[m
[32m+[m[32mconst localStorageMock = {[m
[32m+[m[32m  getItem: jest.fn(),[m
[32m+[m[32m  setItem: jest.fn(),[m
[32m+[m[32m  clear: jest.fn()[m
[32m+[m[32m};[m
[32m+[m[32mglobal.localStorage = localStorageMock[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32m### Focusing and Excluding Tests[m
[32m+[m
[32m+[m[32mYou can replace `it()` with `xit()` to temporarily exclude a test from being executed.<br>[m
[32m+[m[32mSimilarly, `fit()` lets you focus on a specific test without running any other tests.[m
[32m+[m
[32m+[m[32m### Coverage Reporting[m
[32m+[m
[32m+[m[32mJest has an integrated coverage reporter that works well with ES6 and requires no configuration.<br>[m
[32m+[m[32mRun `npm test -- --coverage` (note extra `--` in the middle) to include a coverage report like this:[m
[32m+[m
[32m+[m[32m![coverage report](http://i.imgur.com/5bFhnTS.png)[m
[32m+[m
[32m+[m[32mNote that tests run much slower with coverage so it is recommended to run it separately from your normal workflow.[m
[32m+[m
[32m+[m[32m### Continuous Integration[m
[32m+[m
[32m+[m[32mBy default `npm test` runs the watcher with interactive CLI. However, you can force it to run tests once and finish the process by setting an environment variable called `CI`.[m
[32m+[m
[32m+[m[32mWhen creating a build of your application with `npm run build` linter warnings are not checked by default. Like `npm test`, you can force the build to perform a linter warning check by setting the environment variable `CI`. If any warnings are encountered then the build fails.[m
[32m+[m
[32m+[m[32mPopular CI servers already set the environment variable `CI` by default but you can do this yourself too:[m
[32m+[m
[32m+[m[32m### On CI servers[m
[32m+[m[32m#### Travis CI[m
[32m+[m
[32m+[m[32m1. Following the [Travis Getting started](https://docs.travis-ci.com/user/getting-started/) guide for syncing your GitHub repository with Travis.  You may need to initialize some settings manually in your [profile](https://travis-ci.org/profile) page.[m
[32m+[m[32m1. Add a `.travis.yml` file to your git repository.[m
[32m+[m[32m```[m
[32m+[m[32mlanguage: node_js[m
[32m+[m[32mnode_js:[m
[32m+[m[32m  - 6[m
[32m+[m[32mcache:[m
[32m+[m[32m  directories:[m
[32m+[m[32m    - node_modules[m
[32m+[m[32mscript:[m
[32m+[m[32m  - npm run build[m
[32m+[m[32m  - npm test[m
[32m+[m[32m```[m
[32m+[m[32m1. Trigger your first build with a git push.[m
[32m+[m[32m1. [Customize your Travis CI Build](https://docs.travis-ci.com/user/customizing-the-build/) if needed.[m
[32m+[m
[32m+[m[32m#### CircleCI[m
[32m+[m
[32m+[m[32mFollow [this article](https://medium.com/@knowbody/circleci-and-zeits-now-sh-c9b7eebcd3c1) to set up CircleCI with a Create React App project.[m
[32m+[m
[32m+[m[32m### On your own environment[m
[32m+[m[32m##### Windows (cmd.exe)[m
[32m+[m
[32m+[m[32m```cmd[m
[32m+[m[32mset CI=true&&npm test[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32m```cmd[m
[32m+[m[32mset CI=true&&npm run build[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32m(Note: the lack of whitespace is intentional.)[m
[32m+[m
[32m+[m[32m##### Linux, macOS (Bash)[m
[32m+[m
[32m+[m[32m```bash[m
[32m+[m[32mCI=true npm test[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32m```bash[m
[32m+[m[32mCI=true npm run build[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mThe test command will force Jest to run tests once instead of launching the watcher.[m
[32m+[m
[32m+[m[32m>  If you find yourself doing this often in development, please [file an issue](https://github.com/facebookincubator/create-react-app/issues/new) to tell us about your use case because we want to make watcher the best experience and are open to changing how it works to accommodate more workflows.[m
[32m+[m
[32m+[m[32mThe build command will check for linter warnings and fail if any are found.[m
[32m+[m
[32m+[m[32m### Disabling jsdom[m
[32m+[m
[32m+[m[32mBy default, the `package.json` of the generated project looks like this:[m
[32m+[m
[32m+[m[32m```js[m
[32m+[m[32m  "scripts": {[m
[32m+[m[32m    "start": "react-scripts start",[m
[32m+[m[32m    "build": "react-scripts build",[m
[32m+[m[32m    "test": "react-scripts test --env=jsdom"[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mIf you know that none of your tests depend on [jsdom](https://github.com/tmpvar/jsdom), you can safely remove `--env=jsdom`, and your tests will run faster:[m
[32m+[m
[32m+[m[32m```diff[m
[32m+[m[32m  "scripts": {[m
[32m+[m[32m    "start": "react-scripts start",[m
[32m+[m[32m    "build": "react-scripts build",[m
[32m+[m[32m-   "test": "react-scripts test --env=jsdom"[m
[32m+[m[32m+   "test": "react-scripts test"[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mTo help you make up your mind, here is a list of APIs that **need jsdom**:[m
[32m+[m
[32m+[m[32m* Any browser globals like `window` and `document`[m
[32m+[m[32m* [`ReactDOM.render()`](https://facebook.github.io/react/docs/top-level-api.html#reactdom.render)[m
[32m+[m[32m* [`TestUtils.renderIntoDocument()`](https://facebook.github.io/react/docs/test-utils.html#renderintodocument) ([a shortcut](https://github.com/facebook/react/blob/34761cf9a252964abfaab6faf74d473ad95d1f21/src/test/ReactTestUtils.js#L83-L91) for the above)[m
[32m+[m[32m* [`mount()`](http://airbnb.io/enzyme/docs/api/mount.html) in [Enzyme](http://airbnb.io/enzyme/index.html)[m
[32m+[m
[32m+[m[32mIn contrast, **jsdom is not needed** for the following APIs:[m
[32m+[m
[32m+[m[32m* [`TestUtils.createRenderer()`](https://facebook.github.io/react/docs/test-utils.html#shallow-rendering) (shallow rendering)[m
[32m+[m[32m* [`shallow()`](http://airbnb.io/enzyme/docs/api/shallow.html) in [Enzyme](http://airbnb.io/enzyme/index.html)[m
[32m+[m
[32m+[m[32mFinally, jsdom is also not needed for [snapshot testing](http://facebook.github.io/jest/blog/2016/07/27/jest-14.html).[m
[32m+[m
[32m+[m[32m### Snapshot Testing[m
[32m+[m
[32m+[m[32mSnapshot testing is a feature of Jest that automatically generates text snapshots of your components and saves them on the disk so if the UI output changes, you get notified without manually writing any assertions on the component output. [Read more about snapshot testing.](http://facebook.github.io/jest/blog/2016/07/27/jest-14.html)[m
[32m+[m
[32m+[m[32m### Editor Integration[m
[32m+[m
[32m+[m[32mIf you use [Visual Studio Code](https://code.visualstudio.com), there is a [Jest extension](https://github.com/orta/vscode-jest) which works with Create React App out of the box. This provides a lot of IDE-like features while using a text editor: showing the status of a test run with potential fail messages inline, starting and stopping the watcher automatically, and offering one-click snapshot updates.[m
[32m+[m
[32m+[m[32m![VS Code Jest Preview](https://cloud.githubusercontent.com/assets/49038/20795349/a032308a-b7c8-11e6-9b34-7eeac781003f.png)[m
[32m+[m
[32m+[m[32m## Developing Components in Isolation[m
[32m+[m
[32m+[m[32mUsually, in an app, you have a lot of UI components, and each of them has many different states.[m
[32m+[m[32mFor an example, a simple button component could have following states:[m
[32m+[m
[32m+[m[32m* In a regular state, with a text label.[m
[32m+[m[32m* In the disabled mode.[m
[32m+[m[32m* In a loading state.[m
[32m+[m
[32m+[m[32mUsually, it’s hard to see these states without running a sample app or some examples.[m
[32m+[m
[32m+[m[32mCreate React App doesn’t include any tools for this by default, but you can easily add [Storybook for React](https://storybook.js.org) ([source](https://github.com/storybooks/storybook)) or [React Styleguidist](https://react-styleguidist.js.org/) ([source](https://github.com/styleguidist/react-styleguidist)) to your project. **These are third-party tools that let you develop components and see all their states in isolation from your app**.[m
[32m+[m
[32m+[m[32m![Storybook for React Demo](http://i.imgur.com/7CIAWpB.gif)[m
[32m+[m
[32m+[m[32mYou can also deploy your Storybook or style guide as a static app. This way, everyone in your team can view and review different states of UI components without starting a backend server or creating an account in your app.[m
[32m+[m
[32m+[m[32m### Getting Started with Storybook[m
[32m+[m
[32m+[m[32mStorybook is a development environment for React UI components. It allows you to browse a component library, view the different states of each component, and interactively develop and test components.[m
[32m+[m
[32m+[m[32mFirst, install the following npm package globally:[m
[32m+[m
[32m+[m[32m```sh[m
[32m+[m[32mnpm install -g @storybook/cli[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mThen, run the following command inside your app’s directory:[m
[32m+[m
[32m+[m[32m```sh[m
[32m+[m[32mgetstorybook[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mAfter that, follow the instructions on the screen.[m
[32m+[m
[32m+[m[32mLearn more about React Storybook:[m
[32m+[m
[32m+[m[32m* Screencast: [Getting Started with React Storybook](https://egghead.io/lessons/react-getting-started-with-react-storybook)[m
[32m+[m[32m* [GitHub Repo](https://github.com/storybooks/storybook)[m
[32m+[m[32m* [Documentation](https://storybook.js.org/basics/introduction/)[m
[32m+[m[32m* [Snapshot Testing UI](https://github.com/storybooks/storybook/tree/master/addons/storyshots) with Storybook + addon/storyshot[m
[32m+[m
[32m+[m[32m### Getting Started with Styleguidist[m
[32m+[m
[32m+[m[32mStyleguidist combines a style guide, where all your components are presented on a single page with their props documentation and usage examples, with an environment for developing components in isolation, similar to Storybook. In Styleguidist you write examples in Markdown, where each code snippet is rendered as a live editable playground.[m
[32m+[m
[32m+[m[32mFirst, install Styleguidist:[m
[32m+[m
[32m+[m[32m```sh[m
[32m+[m[32mnpm install --save react-styleguidist[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mAlternatively you may use `yarn`:[m
[32m+[m
[32m+[m[32m```sh[m
[32m+[m[32myarn add react-styleguidist[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mThen, add these scripts to your `package.json`:[m
[32m+[m
[32m+[m[32m```diff[m
[32m+[m[32m   "scripts": {[m
[32m+[m[32m+    "styleguide": "styleguidist server",[m
[32m+[m[32m+    "styleguide:build": "styleguidist build",[m
[32m+[m[32m     "start": "react-scripts start",[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mThen, run the following command inside your app’s directory:[m
[32m+[m
[32m+[m[32m```sh[m
[32m+[m[32mnpm run styleguide[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mAfter that, follow the instructions on the screen.[m
[32m+[m
[32m+[m[32mLearn more about React Styleguidist:[m
[32m+[m
[32m+[m[32m* [GitHub Repo](https://github.com/styleguidist/react-styleguidist)[m
[32m+[m[32m* [Documentation](https://react-styleguidist.js.org/docs/getting-started.html)[m
[32m+[m
[32m+[m[32m## Making a Progressive Web App[m
[32m+[m
[32m+[m[32mBy default, the production build is a fully functional, offline-first[m
[32m+[m[32m[Progressive Web App](https://developers.google.com/web/progressive-web-apps/).[m
[32m+[m
[32m+[m[32mProgressive Web Apps are faster and more reliable than traditional web pages, and provide an engaging mobile experience:[m
[32m+[m
[32m+[m[32m * All static site assets are cached so that your page loads fast on subsequent visits, regardless of network connectivity (such as 2G or 3G). Updates are downloaded in the background.[m
[32m+[m[32m * Your app will work regardless of network state, even if offline. This means your users will be able to use your app at 10,000 feet and on the Subway.[m
[32m+[m[32m * On mobile devices, your app can be added directly to the user's home screen, app icon and all. You can also re-engage users using web **push notifications**. This eliminates the need for the app store.[m
[32m+[m
[32m+[m[32mThe [`sw-precache-webpack-plugin`](https://github.com/goldhand/sw-precache-webpack-plugin)[m
[32m+[m[32mis integrated into production configuration,[m
[32m+[m[32mand it will take care of generating a service worker file that will automatically[m
[32m+[m[32mprecache all of your local assets and keep them up to date as you deploy updates.[m
[32m+[m[32mThe service worker will use a [cache-first strategy](https://developers.google.com/web/fundamentals/instant-and-offline/offline-cookbook/#cache-falling-back-to-network)[m
[32m+[m[32mfor handling all requests for local assets, including the initial HTML, ensuring[m
[32m+[m[32mthat your web app is reliably fast, even on a slow or unreliable network.[m
[32m+[m
[32m+[m[32m### Opting Out of Caching[m
[32m+[m
[32m+[m[32mIf you would prefer not to enable service workers prior to your initial[m
[32m+[m[32mproduction deployment, then remove the call to `serviceWorkerRegistration.register()`[m
[32m+[m[32mfrom [`src/index.js`](src/index.js).[m
[32m+[m
[32m+[m[32mIf you had previously enabled service workers in your production deployment and[m
[32m+[m[32mhave decided that you would like to disable them for all your existing users,[m
[32m+[m[32myou can swap out the call to `serviceWorkerRegistration.register()` in[m
[32m+[m[32m[`src/index.js`](src/index.js) with a call to `serviceWorkerRegistration.unregister()`.[m
[32m+[m[32mAfter the user visits a page that has `serviceWorkerRegistration.unregister()`,[m
[32m+[m[32mthe service worker will be uninstalled. Note that depending on how `/service-worker.js` is served,[m
[32m+[m[32mit may take up to 24 hours for the cache to be invalidated.[m
[32m+[m
[32m+[m[32m### Offline-First Considerations[m
[32m+[m
[32m+[m[32m1. Service workers [require HTTPS](https://developers.google.com/web/fundamentals/getting-started/primers/service-workers#you_need_https),[m
[32m+[m[32malthough to facilitate local testing, that policy[m
[32m+[m[32m[does not apply to `localhost`](http://stackoverflow.com/questions/34160509/options-for-testing-service-workers-via-http/34161385#34161385).[m
[32m+[m[32mIf your production web server does not support HTTPS, then the service worker[m
[32m+[m[32mregistration will fail, but the rest of your web app will remain functional.[m
[32m+[m
[32m+[m[32m1. Service workers are [not currently supported](https://jakearchibald.github.io/isserviceworkerready/)[m
[32m+[m[32min all web browsers. Service worker registration [won't be attempted](src/registerServiceWorker.js)[m
[32m+[m[32mon browsers that lack support.[m
[32m+[m
[32m+[m[32m1. The service worker is only enabled in the [production environment](#deployment),[m
[32m+[m[32me.g. the output of `npm run build`. It's recommended that you do not enable an[m
[32m+[m[32moffline-first service worker in a development environment, as it can lead to[m
[32m+[m[32mfrustration when previously cached assets are used and do not include the latest[m
[32m+[m[32mchanges you've made locally.[m
[32m+[m
[32m+[m[32m1. If you *need* to test your offline-first service worker locally, build[m
[32m+[m[32mthe application (using `npm run build`) and run a simple http server from your[m
[32m+[m[32mbuild directory. After running the build script, `create-react-app` will give[m
[32m+[m[32minstructions for one way to test your production build locally and the [deployment instructions](#deployment) have[m
[32m+[m[32minstructions for using other methods. *Be sure to always use an[m
[32m+[m[32mincognito window to avoid complications with your browser cache.*[m
[32m+[m
[32m+[m[32m1. If possible, configure your production environment to serve the generated[m
[32m+[m[32m`service-worker.js` [with HTTP caching disabled](http://stackoverflow.com/questions/38843970/service-worker-javascript-update-frequency-every-24-hours).[m
[32m+[m[32mIf that's not possible—[GitHub Pages](#github-pages), for instance, does not[m
[32m+[m[32mallow you to change the default 10 minute HTTP cache lifetime—then be aware[m
[32m+[m[32mthat if you visit your production site, and then revisit again before[m
[32m+[m[32m`service-worker.js` has expired from your HTTP cache, you'll continue to get[m
[32m+[m[32mthe previously cached assets from the service worker. If you have an immediate[m
[32m+[m[32mneed to view your updated production deployment, performing a shift-refresh[m
[32m+[m[32mwill temporarily disable the service worker and retrieve all assets from the[m
[32m+[m[32mnetwork.[m
[32m+[m
[32m+[m[32m1. Users aren't always familiar with offline-first web apps. It can be useful to[m
[32m+[m[32m[let the user know](https://developers.google.com/web/fundamentals/instant-and-offline/offline-ux#inform_the_user_when_the_app_is_ready_for_offline_consumption)[m
[32m+[m[32mwhen the service worker has finished populating your caches (showing a "This web[m
[32m+[m[32mapp works offline!" message) and also let them know when the service worker has[m
[32m+[m[32mfetched the latest updates that will be available the next time they load the[m
[32m+[m[32mpage (showing a "New content is available; please refresh." message). Showing[m
[32m+[m[32mthis messages is currently left as an exercise to the developer, but as a[m
[32m+[m[32mstarting point, you can make use of the logic included in [`src/registerServiceWorker.js`](src/registerServiceWorker.js), which[m
[32m+[m[32mdemonstrates which service worker lifecycle events to listen for to detect each[m
[32m+[m[32mscenario, and which as a default, just logs appropriate messages to the[m
[32m+[m[32mJavaScript console.[m
[32m+[m
[32m+[m[32m1. By default, the generated service worker file will not intercept or cache any[m
[32m+[m[32mcross-origin traffic, like HTTP [API requests](#integrating-with-an-api-backend),[m
[32m+[m[32mimages, or embeds loaded from a different domain. If you would like to use a[m
[32m+[m[32mruntime caching strategy for those requests, you can [`eject`](#npm-run-eject)[m
[32m+[m[32mand then configure the[m
[32m+[m[32m[`runtimeCaching`](https://github.com/GoogleChrome/sw-precache#runtimecaching-arrayobject)[m
[32m+[m[32moption in the `SWPrecacheWebpackPlugin` section of[m
[32m+[m[32m[`webpack.config.prod.js`](../config/webpack.config.prod.js).[m
[32m+[m
[32m+[m[32m### Progressive Web App Metadata[m
[32m+[m
[32m+[m[32mThe default configuration includes a web app manifest located at[m
[32m+[m[32m[`public/manifest.json`](public/manifest.json), that you can customize with[m
[32m+[m[32mdetails specific to your web application.[m
[32m+[m
[32m+[m[32mWhen a user adds a web app to their homescreen using Chrome or Firefox on[m
[32m+[m[32mAndroid, the metadata in [`manifest.json`](public/manifest.json) determines what[m
[32m+[m[32micons, names, and branding colors to use when the web app is displayed.[m
[32m+[m[32m[The Web App Manifest guide](https://developers.google.com/web/fundamentals/engage-and-retain/web-app-manifest/)[m
[32m+[m[32mprovides more context about what each field means, and how your customizations[m
[32m+[m[32mwill affect your users' experience.[m
[32m+[m
[32m+[m[32m## Analyzing the Bundle Size[m
[32m+[m
[32m+[m[32m[Source map explorer](https://www.npmjs.com/package/source-map-explorer) analyzes[m
[32m+[m[32mJavaScript bundles using the source maps. This helps you understand where code[m
[32m+[m[32mbloat is coming from.[m
[32m+[m
[32m+[m[32mTo add Source map explorer to a Create React App project, follow these steps:[m
[32m+[m
[32m+[m[32m```sh[m
[32m+[m[32mnpm install --save source-map-explorer[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mAlternatively you may use `yarn`:[m
[32m+[m
[32m+[m[32m```sh[m
[32m+[m[32myarn add source-map-explorer[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mThen in `package.json`, add the following line to `scripts`:[m
[32m+[m
[32m+[m[32m```diff[m
[32m+[m[32m   "scripts": {[m
[32m+[m[32m+    "analyze": "source-map-explorer build/static/js/main.*",[m
[32m+[m[32m     "start": "react-scripts start",[m
[32m+[m[32m     "build": "react-scripts build",[m
[32m+[m[32m     "test": "react-scripts test --env=jsdom",[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mThen to analyze the bundle run the production build then run the analyze[m
[32m+[m[32mscript.[m
[32m+[m
[32m+[m[32m```[m
[32m+[m[32mnpm run build[m
[32m+[m[32mnpm run analyze[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32m## Deployment[m
[32m+[m
[32m+[m[32m`npm run build` creates a `build` directory with a production build of your app. Set up your favourite HTTP server so that a visitor to your site is served `index.html`, and requests to static paths like `/static/js/main.<hash>.js` are served with the contents of the `/static/js/main.<hash>.js` file.[m
[32m+[m
[32m+[m[32m### Static Server[m
[32m+[m
[32m+[m[32mFor environments using [Node](https://nodejs.org/), the easiest way to handle this would be to install [serve](https://github.com/zeit/serve) and let it handle the rest:[m
[32m+[m
[32m+[m[32m```sh[m
[32m+[m[32mnpm install -g serve[m
[32m+[m[32mserve -s build[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mThe last command shown above will serve your static site on the port **5000**. Like many of [serve](https://github.com/zeit/serve)’s internal settings, the port can be adjusted using the `-p` or `--port` flags.[m
[32m+[m
[32m+[m[32mRun this command to get a full list of the options available:[m
[32m+[m
[32m+[m[32m```sh[m
[32m+[m[32mserve -h[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32m### Other Solutions[m
[32m+[m
[32m+[m[32mYou don’t necessarily need a static server in order to run a Create React App project in production. It works just as fine integrated into an existing dynamic one.[m
[32m+[m
[32m+[m[32mHere’s a programmatic example using [Node](https://nodejs.org/) and [Express](http://expressjs.com/):[m
[32m+[m
[32m+[m[32m```javascript[m
[32m+[m[32mconst express = require('express');[m
[32m+[m[32mconst path = require('path');[m
[32m+[m[32mconst app = express();[m
[32m+[m
[32m+[m[32mapp.use(express.static(path.join(__dirname, 'build')));[m
[32m+[m
[32m+[m[32mapp.get('/', function (req, res) {[m
[32m+[m[32m  res.sendFile(path.join(__dirname, 'build', 'index.html'));[m
[32m+[m[32m});[m
[32m+[m
[32m+[m[32mapp.listen(9000);[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mThe choice of your server software isn’t important either. Since Create React App is completely platform-agnostic, there’s no need to explicitly use Node.[m
[32m+[m
[32m+[m[32mThe `build` folder with static assets is the only output produced by Create React App.[m
[32m+[m
[32m+[m[32mHowever this is not quite enough if you use client-side routing. Read the next section if you want to support URLs like `/todos/42` in your single-page app.[m
[32m+[m
[32m+[m[32m### Serving Apps with Client-Side Routing[m
[32m+[m
[32m+[m[32mIf you use routers that use the HTML5 [`pushState` history API](https://developer.mozilla.org/en-US/docs/Web/API/History_API#Adding_and_modifying_history_entries) under the hood (for example, [React Router](https://github.com/ReactTraining/react-router) with `browserHistory`), many static file servers will fail. For example, if you used React Router with a route for `/todos/42`, the development server will respond to `localhost:3000/todos/42` properly, but an Express serving a production build as above will not.[m
[32m+[m
[32m+[m[32mThis is because when there is a fresh page load for a `/todos/42`, the server looks for the file `build/todos/42` and does not find it. The server needs to be configured to respond to a request to `/todos/42` by serving `index.html`. For example, we can amend our Express example above to serve `index.html` for any unknown paths:[m
[32m+[m
[32m+[m[32m```diff[m
[32m+[m[32m app.use(express.static(path.join(__dirname, 'build')));[m
[32m+[m
[32m+[m[32m-app.get('/', function (req, res) {[m
[32m+[m[32m+app.get('/*', function (req, res) {[m
[32m+[m[32m   res.sendFile(path.join(__dirname, 'build', 'index.html'));[m
[32m+[m[32m });[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mIf you’re using [Apache HTTP Server](https://httpd.apache.org/), you need to create a `.htaccess` file in the `public` folder that looks like this:[m
[32m+[m
[32m+[m[32m```[m
[32m+[m[32m    Options -MultiViews[m
[32m+[m[32m    RewriteEngine On[m
[32m+[m[32m    RewriteCond %{REQUEST_FILENAME} !-f[m
[32m+[m[32m    RewriteRule ^ index.html [QSA,L][m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mIt will get copied to the `build` folder when you run `npm run build`.[m[41m [m
[32m+[m
[32m+[m[32mIf you’re using [Apache Tomcat](http://tomcat.apache.org/), you need to follow [this Stack Overflow answer](https://stackoverflow.com/a/41249464/4878474).[m
[32m+[m
[32m+[m[32mNow requests to `/todos/42` will be handled correctly both in development and in production.[m
[32m+[m
[32m+[m[32mOn a production build, and in a browser that supports [service workers](https://developers.google.com/web/fundamentals/getting-started/primers/service-workers),[m
[32m+[m[32mthe service worker will automatically handle all navigation requests, like for[m
[32m+[m[32m`/todos/42`, by serving the cached copy of your `index.html`. This[m
[32m+[m[32mservice worker navigation routing can be configured or disabled by[m
[32m+[m[32m[`eject`ing](#npm-run-eject) and then modifying the[m
[32m+[m[32m[`navigateFallback`](https://github.com/GoogleChrome/sw-precache#navigatefallback-string)[m
[32m+[m[32mand [`navigateFallbackWhitelist`](https://github.com/GoogleChrome/sw-precache#navigatefallbackwhitelist-arrayregexp)[m
[32m+[m[32moptions of the `SWPreachePlugin` [configuration](../config/webpack.config.prod.js).[m
[32m+[m
[32m+[m[32m### Building for Relative Paths[m
[32m+[m
[32m+[m[32mBy default, Create React App produces a build assuming your app is hosted at the server root.<br>[m
[32m+[m[32mTo override this, specify the `homepage` in your `package.json`, for example:[m
[32m+[m
[32m+[m[32m```js[m
[32m+[m[32m  "homepage": "http://mywebsite.com/relativepath",[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mThis will let Create React App correctly infer the root path to use in the generated HTML file.[m
[32m+[m
[32m+[m[32m**Note**: If you are using `react-router@^4`, you can root `<Link>`s using the `basename` prop on any `<Router>`.<br>[m
[32m+[m[32mMore information [here](https://reacttraining.com/react-router/web/api/BrowserRouter/basename-string).<br>[m
[32m+[m[32m<br>[m
[32m+[m[32mFor example:[m
[32m+[m[32m```js[m
[32m+[m[32m<BrowserRouter basename="/calendar"/>[m
[32m+[m[32m<Link to="/today"/> // renders <a href="/calendar/today">[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32m#### Serving the Same Build from Different Paths[m
[32m+[m
[32m+[m[32m>Note: this feature is available with `react-scripts@0.9.0` and higher.[m
[32m+[m
[32m+[m[32mIf you are not using the HTML5 `pushState` history API or not using client-side routing at all, it is unnecessary to specify the URL from which your app will be served. Instead, you can put this in your `package.json`:[m
[32m+[m
[32m+[m[32m```js[m
[32m+[m[32m  "homepage": ".",[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mThis will make sure that all the asset paths are relative to `index.html`. You will then be able to move your app from `http://mywebsite.com` to `http://mywebsite.com/relativepath` or even `http://mywebsite.com/relative/path` without having to rebuild it.[m
[32m+[m
[32m+[m[32m### Azure[m
[32m+[m
[32m+[m[32mSee [this](https://medium.com/@to_pe/deploying-create-react-app-on-microsoft-azure-c0f6686a4321) blog post on how to deploy your React app to [Microsoft Azure](https://azure.microsoft.com/).[m
[32m+[m
[32m+[m[32m### Firebase[m
[32m+[m
[32m+[m[32mInstall the Firebase CLI if you haven’t already by running `npm install -g firebase-tools`. Sign up for a [Firebase account](https://console.firebase.google.com/) and create a new project. Run `firebase login` and login with your previous created Firebase account.[m
[32m+[m
[32m+[m[32mThen run the `firebase init` command from your project’s root. You need to choose the **Hosting: Configure and deploy Firebase Hosting sites** and choose the Firebase project you created in the previous step. You will need to agree with `database.rules.json` being created, choose `build` as the public directory, and also agree to **Configure as a single-page app** by replying with `y`.[m
[32m+[m
[32m+[m[32m```sh[m
[32m+[m[32m    === Project Setup[m
[32m+[m
[32m+[m[32m    First, let's associate this project directory with a Firebase project.[m
[32m+[m[32m    You can create multiple project aliases by running firebase use --add,[m
[32m+[m[32m    but for now we'll just set up a default project.[m
[32m+[m
[32m+[m[32m    ? What Firebase project do you want to associate as default? Example app (example-app-fd690)[m
[32m+[m
[32m+[m[32m    === Database Setup[m
[32m+[m
[32m+[m[32m    Firebase Realtime Database Rules allow you to define how your data should be[m
[32m+[m[32m    structured and when your data can be read from and written to.[m
[32m+[m
[32m+[m[32m    ? What file should be used for Database Rules? database.rules.json[m
[32m+[m[32m    ✔  Database Rules for example-app-fd690 have been downloaded to database.rules.json.[m
[32m+[m[32m    Future modifications to database.rules.json will update Database Rules when you run[m
[32m+[m[32m    firebase deploy.[m
[32m+[m
[32m+[m[32m    === Hosting Setup[m
[32m+[m
[32m+[m[32m    Your public directory is the folder (relative to your project directory) that[m
[32m+[m[32m    will contain Hosting assets to uploaded with firebase deploy. If you[m
[32m+[m[32m    have a build process for your assets, use your build's output directory.[m
[32m+[m
[32m+[m[32m    ? What do you want to use as your public directory? build[m
[32m+[m[32m    ? Configure as a single-page app (rewrite all urls to /index.html)? Yes[m
[32m+[m[32m    ✔  Wrote build/index.html[m
[32m+[m
[32m+[m[32m    i  Writing configuration info to firebase.json...[m
[32m+[m[32m    i  Writing project information to .firebaserc...[m
[32m+[m
[32m+[m[32m    ✔  Firebase initialization complete![m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mNow, after you create a production build with `npm run build`, you can deploy it by running `firebase deploy`.[m
[32m+[m
[32m+[m[32m```sh[m
[32m+[m[32m    === Deploying to 'example-app-fd690'...[m
[32m+[m
[32m+[m[32m    i  deploying database, hosting[m
[32m+[m[32m    ✔  database: rules ready to deploy.[m
[32m+[m[32m    i  hosting: preparing build directory for upload...[m
[32m+[m[32m    Uploading: [==============================          ] 75%✔  hosting: build folder uploaded successfully[m
[32m+[m[32m    ✔  hosting: 8 files uploaded successfully[m
[32m+[m[32m    i  starting release process (may take several minutes)...[m
[32m+[m
[32m+[m[32m    ✔  Deploy complete![m
[32m+[m
[32m+[m[32m    Project Console: https://console.firebase.google.com/project/example-app-fd690/overview[m
[32m+[m[32m    Hosting URL: https://example-app-fd690.firebaseapp.com[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mFor more information see [Add Firebase to your JavaScript Project](https://firebase.google.com/docs/web/setup).[m
[32m+[m
[32m+[m[32m### GitHub Pages[m
[32m+[m
[32m+[m[32m>Note: this feature is available with `react-scripts@0.2.0` and higher.[m
[32m+[m
[32m+[m[32m#### Step 1: Add `homepage` to `package.json`[m
[32m+[m
[32m+[m[32m**The step below is important!**<br>[m
[32m+[m[32m**If you skip it, your app will not deploy correctly.**[m
[32m+[m
[32m+[m[32mOpen your `package.json` and add a `homepage` field:[m
[32m+[m
[32m+[m[32m```js[m
[32m+[m[32m  "homepage": "https://myusername.github.io/my-app",[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mCreate React App uses the `homepage` field to determine the root URL in the built HTML file.[m
[32m+[m
[32m+[m[32m#### Step 2: Install `gh-pages` and add `deploy` to `scripts` in `package.json`[m
[32m+[m
[32m+[m[32mNow, whenever you run `npm run build`, you will see a cheat sheet with instructions on how to deploy to GitHub Pages.[m
[32m+[m
[32m+[m[32mTo publish it at [https://myusername.github.io/my-app](https://myusername.github.io/my-app), run:[m
[32m+[m
[32m+[m[32m```sh[m
[32m+[m[32mnpm install --save gh-pages[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mAlternatively you may use `yarn`:[m
[32m+[m
[32m+[m[32m```sh[m
[32m+[m[32myarn add gh-pages[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mAdd the following scripts in your `package.json`:[m
[32m+[m
[32m+[m[32m```diff[m
[32m+[m[32m  "scripts": {[m
[32m+[m[32m+   "predeploy": "npm run build",[m
[32m+[m[32m+   "deploy": "gh-pages -d build",[m
[32m+[m[32m    "start": "react-scripts start",[m
[32m+[m[32m    "build": "react-scripts build",[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mThe `predeploy` script will run automatically before `deploy` is run.[m
[32m+[m
[32m+[m[32m#### Step 3: Deploy the site by running `npm run deploy`[m
[32m+[m
[32m+[m[32mThen run:[m
[32m+[m
[32m+[m[32m```sh[m
[32m+[m[32mnpm run deploy[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32m#### Step 4: Ensure your project’s settings use `gh-pages`[m
[32m+[m
[32m+[m[32mFinally, make sure **GitHub Pages** option in your GitHub project settings is set to use the `gh-pages` branch:[m
[32m+[m
[32m+[m[32m<img src="http://i.imgur.com/HUjEr9l.png" width="500" alt="gh-pages branch setting">[m
[32m+[m
[32m+[m[32m#### Step 5: Optionally, configure the domain[m
[32m+[m
[32m+[m[32mYou can configure a custom domain with GitHub Pages by adding a `CNAME` file to the `public/` folder.[m
[32m+[m
[32m+[m[32m#### Notes on client-side routing[m
[32m+[m
[32m+[m[32mGitHub Pages doesn’t support routers that use the HTML5 `pushState` history API under the hood (for example, React Router using `browserHistory`). This is because when there is a fresh page load for a url like `http://user.github.io/todomvc/todos/42`, where `/todos/42` is a frontend route, the GitHub Pages server returns 404 because it knows nothing of `/todos/42`. If you want to add a router to a project hosted on GitHub Pages, here are a couple of solutions:[m
[32m+[m
[32m+[m[32m* You could switch from using HTML5 history API to routing with hashes. If you use React Router, you can switch to `hashHistory` for this effect, but the URL will be longer and more verbose (for example, `http://user.github.io/todomvc/#/todos/42?_k=yknaj`). [Read more](https://reacttraining.com/react-router/web/api/Router) about different history implementations in React Router.[m
[32m+[m[32m* Alternatively, you can use a trick to teach GitHub Pages to handle 404 by redirecting to your `index.html` page with a special redirect parameter. You would need to add a `404.html` file with the redirection code to the `build` folder before deploying your project, and you’ll need to add code handling the redirect parameter to `index.html`. You can find a detailed explanation of this technique [in this guide](https://github.com/rafrex/spa-github-pages).[m
[32m+[m
[32m+[m[32m### Heroku[m
[32m+[m
[32m+[m[32mUse the [Heroku Buildpack for Create React App](https://github.com/mars/create-react-app-buildpack).<br>[m
[32m+[m[32mYou can find instructions in [Deploying React with Zero Configuration](https://blog.heroku.com/deploying-react-with-zero-configuration).[m
[32m+[m
[32m+[m[32m#### Resolving Heroku Deployment Errors[m
[32m+[m
[32m+[m[32mSometimes `npm run build` works locally but fails during deploy via Heroku. Following are the most common cases.[m
[32m+[m
[32m+[m[32m##### "Module not found: Error: Cannot resolve 'file' or 'directory'"[m
[32m+[m
[32m+[m[32mIf you get something like this:[m
[32m+[m
[32m+[m[32m```[m
[32m+[m[32mremote: Failed to create a production build. Reason:[m
[32m+[m[32mremote: Module not found: Error: Cannot resolve 'file' or 'directory'[m
[32m+[m[32mMyDirectory in /tmp/build_1234/src[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mIt means you need to ensure that the lettercase of the file or directory you `import` matches the one you see on your filesystem or on GitHub.[m
[32m+[m
[32m+[m[32mThis is important because Linux (the operating system used by Heroku) is case sensitive. So `MyDirectory` and `mydirectory` are two distinct directories and thus, even though the project builds locally, the difference in case breaks the `import` statements on Heroku remotes.[m
[32m+[m
[32m+[m[32m##### "Could not find a required file."[m
[32m+[m
[32m+[m[32mIf you exclude or ignore necessary files from the package you will see a error similar this one:[m
[32m+[m
[32m+[m[32m```[m
[32m+[m[32mremote: Could not find a required file.[m
[32m+[m[32mremote:   Name: `index.html`[m
[32m+[m[32mremote:   Searched in: /tmp/build_a2875fc163b209225122d68916f1d4df/public[m
[32m+[m[32mremote:[m
[32m+[m[32mremote: npm ERR! Linux 3.13.0-105-generic[m
[32m+[m[32mremote: npm ERR! argv "/tmp/build_a2875fc163b209225122d68916f1d4df/.heroku/node/bin/node" "/tmp/build_a2875fc163b209225122d68916f1d4df/.heroku/node/bin/npm" "run" "build"[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mIn this case, ensure that the file is there with the proper lettercase and that’s not ignored on your local `.gitignore` or `~/.gitignore_global`.[m
[32m+[m
[32m+[m[32m### Netlify[m
[32m+[m
[32m+[m[32m**To do a manual deploy to Netlify’s CDN:**[m
[32m+[m
[32m+[m[32m```sh[m
[32m+[m[32mnpm install netlify-cli[m
[32m+[m[32mnetlify deploy[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mChoose `build` as the path to deploy.[m
[32m+[m
[32m+[m[32m**To setup continuous delivery:**[m
[32m+[m
[32m+[m[32mWith this setup Netlify will build and deploy when you push to git or open a pull request:[m
[32m+[m
[32m+[m[32m1. [Start a new netlify project](https://app.netlify.com/signup)[m
[32m+[m[32m2. Pick your Git hosting service and select your repository[m
[32m+[m[32m3. Click `Build your site`[m
[32m+[m
[32m+[m[32m**Support for client-side routing:**[m
[32m+[m
[32m+[m[32mTo support `pushState`, make sure to create a `public/_redirects` file with the following rewrite rules:[m
[32m+[m
[32m+[m[32m```[m
[32m+[m[32m/*  /index.html  200[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mWhen you build the project, Create React App will place the `public` folder contents into the build output.[m
[32m+[m
[32m+[m[32m### Now[m
[32m+[m
[32m+[m[32m[now](https://zeit.co/now) offers a zero-configuration single-command deployment. You can use `now` to deploy your app for free.[m
[32m+[m
[32m+[m[32m1. Install the `now` command-line tool either via the recommended [desktop tool](https://zeit.co/download) or via node with `npm install -g now`.[m
[32m+[m
[32m+[m[32m2. Build your app by running `npm run build`.[m
[32m+[m
[32m+[m[32m3. Move into the build directory by running `cd build`.[m
[32m+[m
[32m+[m[32m4. Run `now --name your-project-name` from within the build directory. You will see a **now.sh** URL in your output like this:[m
[32m+[m
[32m+[m[32m    ```[m
[32m+[m[32m    > Ready! https://your-project-name-tpspyhtdtk.now.sh (copied to clipboard)[m
[32m+[m[32m    ```[m
[32m+[m
[32m+[m[32m    Paste that URL into your browser when the build is complete, and you will see your deployed app.[m
[32m+[m
[32m+[m[32mDetails are available in [this article.](https://zeit.co/blog/unlimited-static)[m
[32m+[m
[32m+[m[32m### S3 and CloudFront[m
[32m+[m
[32m+[m[32mSee this [blog post](https://medium.com/@omgwtfmarc/deploying-create-react-app-to-s3-or-cloudfront-48dae4ce0af) on how to deploy your React app to Amazon Web Services [S3](https://aws.amazon.com/s3) and [CloudFront](https://aws.amazon.com/cloudfront/).[m
[32m+[m
[32m+[m[32m### Surge[m
[32m+[m
[32m+[m[32mInstall the Surge CLI if you haven’t already by running `npm install -g surge`. Run the `surge` command and log in you or create a new account.[m
[32m+[m
[32m+[m[32mWhen asked about the project path, make sure to specify the `build` folder, for example:[m
[32m+[m
[32m+[m[32m```sh[m
[32m+[m[32m       project path: /path/to/project/build[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mNote that in order to support routers that use HTML5 `pushState` API, you may want to rename the `index.html` in your build folder to `200.html` before deploying to Surge. This [ensures that every URL falls back to that file](https://surge.sh/help/adding-a-200-page-for-client-side-routing).[m
[32m+[m
[32m+[m[32m## Advanced Configuration[m
[32m+[m
[32m+[m[32mYou can adjust various development and production settings by setting environment variables in your shell or with [.env](#adding-development-environment-variables-in-env).[m
[32m+[m
[32m+[m[32mVariable | Development | Production | Usage[m
[32m+[m[32m:--- | :---: | :---: | :---[m
[32m+[m[32mBROWSER | :white_check_mark: | :x: | By default, Create React App will open the default system browser, favoring Chrome on macOS. Specify a [browser](https://github.com/sindresorhus/opn#app) to override this behavior, or set it to `none` to disable it completely. If you need to customize the way the browser is launched, you can specify a node script instead. Any arguments passed to `npm start` will also be passed to this script, and the url where your app is served will be the last argument. Your script's file name must have the `.js` extension.[m
[32m+[m[32mHOST | :white_check_mark: | :x: | By default, the development web server binds to `localhost`. You may use this variable to specify a different host.[m
[32m+[m[32mPORT | :white_check_mark: | :x: | By default, the development web server will attempt to listen on port 3000 or prompt you to attempt the next available port. You may use this variable to specify a different port.[m
[32m+[m[32mHTTPS | :white_check_mark: | :x: | When set to `true`, Create React App will run the development server in `https` mode.[m
[32m+[m[32mPUBLIC_URL | :x: | :white_check_mark: | Create React App assumes your application is hosted at the serving web server's root or a subpath as specified in [`package.json` (`homepage`)](#building-for-relative-paths). Normally, Create React App ignores the hostname. You may use this variable to force assets to be referenced verbatim to the url you provide (hostname included). This may be particularly useful when using a CDN to host your application.[m
[32m+[m[32mCI | :large_orange_diamond: | :white_check_mark: | When set to `true`, Create React App treats warnings as failures in the build. It also makes the test runner non-watching. Most CIs set this flag by default.[m
[32m+[m[32mREACT_EDITOR | :white_check_mark: | :x: | When an app crashes in development, you will see an error overlay with clickable stack trace. When you click on it, Create React App will try to determine the editor you are using based on currently running processes, and open the relevant source file. You can [send a pull request to detect your editor of choice](https://github.com/facebookincubator/create-react-app/issues/2636). Setting this environment variable overrides the automatic detection. If you do it, make sure your systems [PATH](https://en.wikipedia.org/wiki/PATH_(variable)) environment variable points to your editor’s bin folder.[m
[32m+[m[32mCHOKIDAR_USEPOLLING | :white_check_mark: | :x: | When set to `true`, the watcher runs in polling mode, as necessary inside a VM. Use this option if `npm start` isn't detecting changes.[m
[32m+[m[32mGENERATE_SOURCEMAP | :x: | :white_check_mark: | When set to `false`, source maps are not generated for a production build. This solves OOM issues on some smaller machines.[m
[32m+[m
[32m+[m[32m## Troubleshooting[m
[32m+[m
[32m+[m[32m### `npm start` doesn’t detect changes[m
[32m+[m
[32m+[m[32mWhen you save a file while `npm start` is running, the browser should refresh with the updated code.<br>[m
[32m+[m[32mIf this doesn’t happen, try one of the following workarounds:[m
[32m+[m
[32m+[m[32m* If your project is in a Dropbox folder, try moving it out.[m
[32m+[m[32m* If the watcher doesn’t see a file called `index.js` and you’re referencing it by the folder name, you [need to restart the watcher](https://github.com/facebookincubator/create-react-app/issues/1164) due to a Webpack bug.[m
[32m+[m[32m* Some editors like Vim and IntelliJ have a “safe write” feature that currently breaks the watcher. You will need to disable it. Follow the instructions in [“Adjusting Your Text Editor”](https://webpack.js.org/guides/development/#adjusting-your-text-editor).[m
[32m+[m[32m* If your project path contains parentheses, try moving the project to a path without them. This is caused by a [Webpack watcher bug](https://github.com/webpack/watchpack/issues/42).[m
[32m+[m[32m* On Linux and macOS, you might need to [tweak system settings](https://webpack.github.io/docs/troubleshooting.html#not-enough-watchers) to allow more watchers.[m
[32m+[m[32m* If the project runs inside a virtual machine such as (a Vagrant provisioned) VirtualBox, create an `.env` file in your project directory if it doesn’t exist, and add `CHOKIDAR_USEPOLLING=true` to it. This ensures that the next time you run `npm start`, the watcher uses the polling mode, as necessary inside a VM.[m
[32m+[m
[32m+[m[32mIf none of these solutions help please leave a comment [in this thread](https://github.com/facebookincubator/create-react-app/issues/659).[m
[32m+[m
[32m+[m[32m### `npm test` hangs on macOS Sierra[m
[32m+[m
[32m+[m[32mIf you run `npm test` and the console gets stuck after printing `react-scripts test --env=jsdom` to the console there might be a problem with your [Watchman](https://facebook.github.io/watchman/) installation as described in [facebookincubator/create-react-app#713](https://github.com/facebookincubator/create-react-app/issues/713).[m
[32m+[m
[32m+[m[32mWe recommend deleting `node_modules` in your project and running `npm install` (or `yarn` if you use it) first. If it doesn't help, you can try one of the numerous workarounds mentioned in these issues:[m
[32m+[m
[32m+[m[32m* [facebook/jest#1767](https://github.com/facebook/jest/issues/1767)[m
[32m+[m[32m* [facebook/watchman#358](https://github.com/facebook/watchman/issues/358)[m
[32m+[m[32m* [ember-cli/ember-cli#6259](https://github.com/ember-cli/ember-cli/issues/6259)[m
[32m+[m
[32m+[m[32mIt is reported that installing Watchman 4.7.0 or newer fixes the issue. If you use [Homebrew](http://brew.sh/), you can run these commands to update it:[m
[32m+[m
[32m+[m[32m```[m
[32m+[m[32mwatchman shutdown-server[m
[32m+[m[32mbrew update[m
[32m+[m[32mbrew reinstall watchman[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mYou can find [other installation methods](https://facebook.github.io/watchman/docs/install.html#build-install) on the Watchman documentation page.[m
[32m+[m
[32m+[m[32mIf this still doesn’t help, try running `launchctl unload -F ~/Library/LaunchAgents/com.github.facebook.watchman.plist`.[m
[32m+[m
[32m+[m[32mThere are also reports that *uninstalling* Watchman fixes the issue. So if nothing else helps, remove it from your system and try again.[m
[32m+[m
[32m+[m[32m### `npm run build` exits too early[m
[32m+[m
[32m+[m[32mIt is reported that `npm run build` can fail on machines with limited memory and no swap space, which is common in cloud environments. Even with small projects this command can increase RAM usage in your system by hundreds of megabytes, so if you have less than 1 GB of available memory your build is likely to fail with the following message:[m
[32m+[m
[32m+[m[32m>  The build failed because the process exited too early. This probably means the system ran out of memory or someone called `kill -9` on the process.[m
[32m+[m
[32m+[m[32mIf you are completely sure that you didn't terminate the process, consider [adding some swap space](https://www.digitalocean.com/community/tutorials/how-to-add-swap-on-ubuntu-14-04) to the machine you’re building on, or build the project locally.[m
[32m+[m
[32m+[m[32m### `npm run build` fails on Heroku[m
[32m+[m
[32m+[m[32mThis may be a problem with case sensitive filenames.[m
[32m+[m[32mPlease refer to [this section](#resolving-heroku-deployment-errors).[m
[32m+[m
[32m+[m[32m### Moment.js locales are missing[m
[32m+[m
[32m+[m[32mIf you use a [Moment.js](https://momentjs.com/), you might notice that only the English locale is available by default. This is because the locale files are large, and you probably only need a subset of [all the locales provided by Moment.js](https://momentjs.com/#multiple-locale-support).[m
[32m+[m
[32m+[m[32mTo add a specific Moment.js locale to your bundle, you need to import it explicitly.<br>[m
[32m+[m[32mFor example:[m
[32m+[m
[32m+[m[32m```js[m
[32m+[m[32mimport moment from 'moment';[m
[32m+[m[32mimport 'moment/locale/fr';[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mIf import multiple locales this way, you can later switch between them by calling `moment.locale()` with the locale name:[m
[32m+[m
[32m+[m[32m```js[m
[32m+[m[32mimport moment from 'moment';[m
[32m+[m[32mimport 'moment/locale/fr';[m
[32m+[m[32mimport 'moment/locale/es';[m
[32m+[m
[32m+[m[32m// ...[m
[32m+[m
[32m+[m[32mmoment.locale('fr');[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mThis will only work for locales that have been explicitly imported before.[m
[32m+[m
[32m+[m[32m### `npm run build` fails to minify[m
[32m+[m
[32m+[m[32mYou may occasionally find a package you depend on needs compiled or ships code for a non-browser environment.<br>[m
[32m+[m[32mThis is considered poor practice in the ecosystem and does not have an escape hatch in Create React App.<br>[m
[32m+[m[32m<br>[m
[32m+[m[32mTo resolve this:[m
[32m+[m[32m1. Open an issue on the dependency's issue tracker and ask that the package be published pre-compiled (retaining ES6 Modules).[m
[32m+[m[32m2. Fork the package and publish a corrected version yourself.[m
[32m+[m[32m3. If the dependency is small enough, copy it to your `src/` folder and treat it as application code.[m
[32m+[m
[32m+[m[32m## Something Missing?[m
[32m+[m
[32m+[m[32mIf you have ideas for more “How To” recipes that should be on this page, [let us know](https://github.com/facebookincubator/create-react-app/issues) or [contribute some!](https://github.com/facebookincubator/create-react-app/edit/master/packages/react-scripts/template/README.md)[m
[1mdiff --git a/package.json b/package.json[m
[1mnew file mode 100644[m
[1mindex 0000000..72ca808[m
[1m--- /dev/null[m
[1m+++ b/package.json[m
[36m@@ -0,0 +1,17 @@[m
[32m+[m[32m{[m
[32m+[m[32m  "name": "test2",[m
[32m+[m[32m  "version": "0.1.0",[m
[32m+[m[32m  "private": true,[m
[32m+[m[32m  "dependencies": {[m
[32m+[m[32m    "react": "^15.6.1",[m
[32m+[m[32m    "react-dom": "^15.6.1",[m
[32m+[m[32m    "react-router-dom": "^4.2.2",[m
[32m+[m[32m    "react-scripts": "1.0.13"[m
[32m+[m[32m  },[m
[32m+[m[32m  "scripts": {[m
[32m+[m[32m    "start": "react-scripts start",[m
[32m+[m[32m    "build": "react-scripts build",[m
[32m+[m[32m    "test": "react-scripts test --env=jsdom",[m
[32m+[m[32m    "eject": "react-scripts eject"[m
[32m+[m[32m  }[m
[32m+[m[32m}[m
[1mdiff --git a/public/favicon.ico b/public/favicon.ico[m
[1mnew file mode 100644[m
[1mindex 0000000..a11777c[m
Binary files /dev/null and b/public/favicon.ico differ
[1mdiff --git a/public/index.html b/public/index.html[m
[1mnew file mode 100644[m
[1mindex 0000000..7bee027[m
[1m--- /dev/null[m
[1m+++ b/public/index.html[m
[36m@@ -0,0 +1,40 @@[m
[32m+[m[32m<!doctype html>[m
[32m+[m[32m<html lang="en">[m
[32m+[m[32m  <head>[m
[32m+[m[32m    <meta charset="utf-8">[m
[32m+[m[32m    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">[m
[32m+[m[32m    <meta name="theme-color" content="#000000">[m
[32m+[m[32m    <!--[m
[32m+[m[32m      manifest.json provides metadata used when your web app is added to the[m
[32m+[m[32m      homescreen on Android. See https://developers.google.com/web/fundamentals/engage-and-retain/web-app-manifest/[m
[32m+[m[32m    -->[m
[32m+[m[32m    <link rel="manifest" href="%PUBLIC_URL%/manifest.json">[m
[32m+[m[32m    <link rel="shortcut icon" href="%PUBLIC_URL%/favicon.ico">[m
[32m+[m[32m    <!--[m
[32m+[m[32m      Notice the use of %PUBLIC_URL% in the tags above.[m
[32m+[m[32m      It will be replaced with the URL of the `public` folder during the build.[m
[32m+[m[32m      Only files inside the `public` folder can be referenced from the HTML.[m
[32m+[m
[32m+[m[32m      Unlike "/favicon.ico" or "favicon.ico", "%PUBLIC_URL%/favicon.ico" will[m
[32m+[m[32m      work correctly both with client-side routing and a non-root public URL.[m
[32m+[m[32m      Learn how to configure a non-root public URL by running `npm run build`.[m
[32m+[m[32m    -->[m
[32m+[m[32m    <title>React App</title>[m
[32m+[m[32m  </head>[m
[32m+[m[32m  <body>[m
[32m+[m[32m    <noscript>[m
[32m+[m[32m      You need to enable JavaScript to run this app.[m
[32m+[m[32m    </noscript>[m
[32m+[m[32m    <div id="root"></div>[m
[32m+[m[32m    <!--[m
[32m+[m[32m      This HTML file is a template.[m
[32m+[m[32m      If you open it directly in the browser, you will see an empty page.[m
[32m+[m
[32m+[m[32m      You can add webfonts, meta tags, or analytics to this file.[m
[32m+[m[32m      The build step will place the bundled scripts into the <body> tag.[m
[32m+[m
[32m+[m[32m      To begin the development, run `npm start` or `yarn start`.[m
[32m+[m[32m      To create a production bundle, use `npm run build` or `yarn build`.[m
[32m+[m[32m    -->[m
[32m+[m[32m  </body>[m
[32m+[m[32m</html>[m
[1mdiff --git a/public/manifest.json b/public/manifest.json[m
[1mnew file mode 100644[m
[1mindex 0000000..be607e4[m
[1m--- /dev/null[m
[1m+++ b/public/manifest.json[m
[36m@@ -0,0 +1,15 @@[m
[32m+[m[32m{[m
[32m+[m[32m  "short_name": "React App",[m
[32m+[m[32m  "name": "Create React App Sample",[m
[32m+[m[32m  "icons": [[m
[32m+[m[32m    {[m
[32m+[m[32m      "src": "favicon.ico",[m
[32m+[m[32m      "sizes": "192x192",[m
[32m+[m[32m      "type": "image/png"[m
[32m+[m[32m    }[m
[32m+[m[32m  ],[m
[32m+[m[32m  "start_url": "./index.html",[m
[32m+[m[32m  "display": "standalone",[m
[32m+[m[32m  "theme_color": "#000000",[m
[32m+[m[32m  "background_color": "#ffffff"[m
[32m+[m[32m}[m
[1mdiff --git a/src/App.css b/src/App.css[m
[1mnew file mode 100644[m
[1mindex 0000000..59ea2bb[m
[1m--- /dev/null[m
[1m+++ b/src/App.css[m
[36m@@ -0,0 +1,28 @@[m
[32m+[m[32m.App {[m
[32m+[m[32m  text-align: center;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.App-logo {[m
[32m+[m[32m  animation: App-logo-spin infinite 20s linear;[m
[32m+[m[32m  height: 100px;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m
[32m+[m
[32m+[m[32m.App-header {[m
[32m+[m[32m  background-color: #FF9999;[m
[32m+[m[32m  height: 150px;[m
[32m+[m[32m  padding: 20px;[m
[32m+[m[32m  color: white;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.App-intro {[m
[32m+[m[32m  font-size: large;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m@keyframes App-logo-spin {[m
[32m+[m[32m  from { transform: rotate(0deg); }[m
[32m+[m[32m  to { transform: rotate(360deg); }[m
[32m+[m[32m}[m
[32m+[m
[32m+[m
[1mdiff --git a/src/App.js b/src/App.js[m
[1mnew file mode 100644[m
[1mindex 0000000..bdb2d07[m
[1m--- /dev/null[m
[1m+++ b/src/App.js[m
[36m@@ -0,0 +1,36 @@[m
[32m+[m[32mimport React, { Component } from 'react';[m
[32m+[m[32mimport logo from './logo.svg';[m
[32m+[m[32mimport './App.css';[m
[32m+[m[32mimport { BrowserRouter, Switch, Route, NavLink } from 'react-router-dom';[m
[32m+[m[32mimport { Input ,Output} from './components';[m
[32m+[m[32mimport {queryString} from 'query-string';[m
[32m+[m
[32m+[m[32mclass App extends Component {[m
[32m+[m[32m  render() {[m
[32m+[m[32m    return ([m
[32m+[m[32m      <BrowserRouter>[m
[32m+[m
[32m+[m[32m      <div className="App">[m
[32m+[m
[32m+[m[32m        <div className="App-header">[m
[32m+[m[32m          <img src={logo} className="App-logo" alt="logo" />[m
[32m+[m[32m          <div>[m
[32m+[m[32m          <ul>[m
[32m+[m[32m            <li><NavLink to="/" activeClassName="active"><h2><font color="#FFFF33">ใส่ข้อมูล</font></h2> </NavLink></li>[m
[32m+[m[32m            <li></li>[m
[32m+[m[32m          </ul></div>[m
[32m+[m[32m        </div>[m
[32m+[m[32m        <div className="App-intro">[m
[32m+[m[32m          <Switch>[m
[32m+[m[32m              <Route path="/" component={Input} exact={true} />[m
[32m+[m[32m              <Route path="/level1/:value" component={Output} exact={true} />[m
[32m+[m[32m          </Switch>[m
[32m+[m[32m        </div>[m
[32m+[m[41m        [m
[32m+[m[32m      </div>[m
[32m+[m[32m      </BrowserRouter>[m
[32m+[m[32m    );[m
[32m+[m[32m  }[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mexport default App;[m
[1mdiff --git a/src/App.test.js b/src/App.test.js[m
[1mnew file mode 100644[m
[1mindex 0000000..b84af98[m
[1m--- /dev/null[m
[1m+++ b/src/App.test.js[m
[36m@@ -0,0 +1,8 @@[m
[32m+[m[32mimport React from 'react';[m
[32m+[m[32mimport ReactDOM from 'react-dom';[m
[32m+[m[32mimport App from './App';[m
[32m+[m
[32m+[m[32mit('renders without crashing', () => {[m
[32m+[m[32m  const div = document.createElement('div');[m
[32m+[m[32m  ReactDOM.render(<App />, div);[m
[32m+[m[32m});[m
[1mdiff --git a/src/components/index.js b/src/components/index.js[m
[1mnew file mode 100644[m
[1mindex 0000000..c7303c9[m
[1m--- /dev/null[m
[1m+++ b/src/components/index.js[m
[36m@@ -0,0 +1,2 @@[m
[32m+[m[32mexport {default as Input} from './input.component';[m
[32m+[m[32mexport {default as Output} from './output.component';[m
\ No newline at end of file[m
[1mdiff --git a/src/components/input.component.js b/src/components/input.component.js[m
[1mnew file mode 100644[m
[1mindex 0000000..10cff06[m
[1m--- /dev/null[m
[1m+++ b/src/components/input.component.js[m
[36m@@ -0,0 +1,26 @@[m
[32m+[m[32mimport React from 'react';[m
[32m+[m[32mimport {  NavLink } from 'react-router-dom';[m
[32m+[m[32mclass Input extends React.Component {[m
[32m+[m	[32m  constructor() {[m
[32m+[m[32m    super();[m
[32m+[m[32m    this.state = { user: "" };[m
[32m+[m
[32m+[m[32m  }[m
[32m+[m
[32m+[m[32m    setAge(e){[m
[32m+[m[32m    var age = e.target.value;[m
[32m+[m[32m    this.setState({user:age});[m
[32m+[m[32m    }[m
[32m+[m[41m  [m
[32m+[m[32m    render(){[m
[32m+[m[32m        return ([m
[32m+[m[32m            <div>[m
[32m+[m[32m        <input type="text" onChange={this.setAge.bind(this)} placeholder="กุรณากรอกข้อมูล" ref="name"/>[m
[32m+[m[32m        <button><NavLink to={{pathname:"/level1/"+this.state.user}} activeClassName="active">ส่งข้อมูล</NavLink></button>[m
[32m+[m[41m      [m
[32m+[m[32m            </div>[m
[32m+[m[32m        );[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mexport default Input;[m
\ No newline at end of file[m
[1mdiff --git a/src/components/output.component.js b/src/components/output.component.js[m
[1mnew file mode 100644[m
[1mindex 0000000..74f547b[m
[1m--- /dev/null[m
[1m+++ b/src/components/output.component.js[m
[36m@@ -0,0 +1,25 @@[m
[32m+[m[32mimport React from 'react';[m
[32m+[m
[32m+[m[32mclass Output extends React.Component {[m
[32m+[m[41m	[m
[32m+[m	[32mconstructor(){[m
[32m+[m[32m    super();[m
[32m+[m[41m    [m
[32m+[m[32m    // console.log(this.props.match.params.value);[m
[32m+[m[41m    [m
[32m+[m[41m  [m	[32m}[m
[32m+[m[32m    render(){[m
[32m+[m[41m    [m	[32m// console.log(this.search.get("id"));[m
[32m+[m[32m        const location = this.props.location;[m
[32m+[m[41m    [m	[32mconst params = this.props.match.params;[m
[32m+[m[32m        return ([m
[32m+[m[32m            <div>[m
[32m+[m[32m                <h1><font color="Black">แสดงข้อมูล</font></h1>[m
[32m+[m[32m                <h2><font color="red">{params.value}</font></h2>[m
[32m+[m[41m                [m
[32m+[m[32m            </div>[m
[32m+[m[32m        );[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mexport default Output;[m
\ No newline at end of file[m
[1mdiff --git a/src/index.css b/src/index.css[m
[1mnew file mode 100644[m
[1mindex 0000000..1c1611f[m
[1m--- /dev/null[m
[1m+++ b/src/index.css[m
[36m@@ -0,0 +1,13 @@[m
[32m+[m[32mbody {[m
[32m+[m[32m  margin: 0;[m
[32m+[m[32m  padding: 0;[m
[32m+[m[32m  font-family: sans-serif;[m
[32m+[m[32m}[m
[32m+[m[32ma{color: #696969;}[m
[32m+[m[32m.active{color:#D11100;}[m
[32m+[m[32mul{list-style: none;padding: 0;margin: 0;}[m
[32m+[m[32mul li{display: inline-block;padding: 10px 15px;}[m
[32m+[m[32mul li:first-child{padding-left: 0;}[m
[32m+[m[32m.leftNavi {float: left;width: 25%;background: #e2e2e2;box-sizing: border-box;padding: 20px 30px;min-width: 250px;}[m
[32m+[m[32m.rightContent {float: left;width: 75%;padding-left: 30px;box-sizing: border-box;min-width: 450px;}[m[41m		[m
[32m+[m[32m.leftNavi ul li{display: block; padding-left: 0;}[m
\ No newline at end of file[m
[1mdiff --git a/src/index.js b/src/index.js[m
[1mnew file mode 100644[m
[1mindex 0000000..fae3e35[m
[1m--- /dev/null[m
[1m+++ b/src/index.js[m
[36m@@ -0,0 +1,8 @@[m
[32m+[m[32mimport React from 'react';[m
[32m+[m[32mimport ReactDOM from 'react-dom';[m
[32m+[m[32mimport './index.css';[m
[32m+[m[32mimport App from './App';[m
[32m+[m[32mimport registerServiceWorker from './registerServiceWorker';[m
[32m+[m
[32m+[m[32mReactDOM.render(<App />, document.getElementById('root'));[m
[32m+[m[32mregisterServiceWorker();[m
[1mdiff --git a/src/logo.svg b/src/logo.svg[m
[1mnew file mode 100644[m
[1mindex 0000000..6b60c10[m
[1m--- /dev/null[m
[1m+++ b/src/logo.svg[m
[36m@@ -0,0 +1,7 @@[m
[32m+[m[32m<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 841.9 595.3">[m
[32m+[m[32m    <g fill="#61DAFB">[m
[32m+[m[32m        <path d="M666.3 296.5c0-32.5-40.7-63.3-103.1-82.4 14.4-63.6 8-114.2-20.2-130.4-6.5-3.8-14.1-5.6-22.4-5.6v22.3c4.6 0 8.3.9 11.4 2.6 13.6 7.8 19.5 37.5 14.9 75.7-1.1 9.4-2.9 19.3-5.1 29.4-19.6-4.8-41-8.5-63.5-10.9-13.5-18.5-27.5-35.3-41.6-50 32.6-30.3 63.2-46.9 84-46.9V78c-27.5 0-63.5 19.6-99.9 53.6-36.4-33.8-72.4-53.2-99.9-53.2v22.3c20.7 0 51.4 16.5 84 46.6-14 14.7-28 31.4-41.3 49.9-22.6 2.4-44 6.1-63.6 11-2.3-10-4-19.7-5.2-29-4.7-38.2 1.1-67.9 14.6-75.8 3-1.8 6.9-2.6 11.5-2.6V78.5c-8.4 0-16 1.8-22.6 5.6-28.1 16.2-34.4 66.7-19.9 130.1-62.2 19.2-102.7 49.9-102.7 82.3 0 32.5 40.7 63.3 103.1 82.4-14.4 63.6-8 114.2 20.2 130.4 6.5 3.8 14.1 5.6 22.5 5.6 27.5 0 63.5-19.6 99.9-53.6 36.4 33.8 72.4 53.2 99.9 53.2 8.4 0 16-1.8 22.6-5.6 28.1-16.2 34.4-66.7 19.9-130.1 62-19.1 102.5-49.9 102.5-82.3zm-130.2-66.7c-3.7 12.9-8.3 26.2-13.5 39.5-4.1-8-8.4-16-13.1-24-4.6-8-9.5-15.8-14.4-23.4 14.2 2.1 27.9 4.7 41 7.9zm-45.8 106.5c-7.8 13.5-15.8 26.3-24.1 38.2-14.9 1.3-30 2-45.2 2-15.1 0-30.2-.7-45-1.9-8.3-11.9-16.4-24.6-24.2-38-7.6-13.1-14.5-26.4-20.8-39.8 6.2-13.4 13.2-26.8 20.7-39.9 7.8-13.5 15.8-26.3 24.1-38.2 14.9-1.3 30-2 45.2-2 15.1 0 30.2.7 45 1.9 8.3 11.9 16.4 24.6 24.2 38 7.6 13.1 14.5 26.4 20.8 39.8-6.3 13.4-13.2 26.8-20.7 39.9zm32.3-13c5.4 13.4 10 26.8 13.8 39.8-13.1 3.2-26.9 5.9-41.2 8 4.9-7.7 9.8-15.6 14.4-23.7 4.6-8 8.9-16.1 13-24.1zM421.2 430c-9.3-9.6-18.6-20.3-27.8-32 9 .4 18.2.7 27.5.7 9.4 0 18.7-.2 27.8-.7-9 11.7-18.3 22.4-27.5 32zm-74.4-58.9c-14.2-2.1-27.9-4.7-41-7.9 3.7-12.9 8.3-26.2 13.5-39.5 4.1 8 8.4 16 13.1 24 4.7 8 9.5 15.8 14.4 23.4zM420.7 163c9.3 9.6 18.6 20.3 27.8 32-9-.4-18.2-.7-27.5-.7-9.4 0-18.7.2-27.8.7 9-11.7 18.3-22.4 27.5-32zm-74 58.9c-4.9 7.7-9.8 15.6-14.4 23.7-4.6 8-8.9 16-13 24-5.4-13.4-10-26.8-13.8-39.8 13.1-3.1 26.9-5.8 41.2-7.9zm-90.5 125.2c-35.4-15.1-58.3-34.9-58.3-50.6 0-15.7 22.9-35.6 58.3-50.6 8.6-3.7 18-7 27.7-10.1 5.7 19.6 13.2 40 22.5 60.9-9.2 20.8-16.6 41.1-22.2 60.6-9.9-3.1-19.3-6.5-28-10.2zM310 490c-13.6-7.8-19.5-37.5-14.9-75.7 1.1-9.4 2.9-19.3 5.1-29.4 19.6 4.8 41 8.5 63.5 10.9 13.5 18.5 27.5 35.3 41.6 50-32.6 30.3-63.2 46.9-84 46.9-4.5-.1-8.3-1-11.3-2.7zm237.2-76.2c4.7 38.2-1.1 67.9-14.6 75.8-3 1.8-6.9 2.6-11.5 2.6-20.7 0-51.4-16.5-84-46.6 14-14.7 28-31.4 41.3-49.9 22.6-2.4 44-6.1 63.6-11 2.3 10.1 4.1 19.8 5.2 29.1zm38.5-66.7c-8.6 3.7-18 7-27.7 10.1-5.7-19.6-13.2-40-22.5-60.9 9.2-20.8 16.6-41.1 22.2-60.6 9.9 3.1 19.3 6.5 28.1 10.2 35.4 15.1 58.3 34.9 58.3 50.6-.1 15.7-23 35.6-58.4 50.6zM320.8 78.4z"/>[m
[32m+[m[32m        <circle cx="420.9" cy="296.5" r="45.7"/>[m
[32m+[m[32m        <path d="M520.5 78.1z"/>[m
[32m+[m[32m    </g>[m
[32m+[m[32m</svg>[m
[1mdiff --git a/src/registerServiceWorker.js b/src/registerServiceWorker.js[m
[1mnew file mode 100644[m
[1mindex 0000000..4a3ccf0[m
[1m--- /dev/null[m
[1m+++ b/src/registerServiceWorker.js[m
[36m@@ -0,0 +1,108 @@[m
[32m+[m[32m// In production, we register a service worker to serve assets from local cache.[m
[32m+[m
[32m+[m[32m// This lets the app load faster on subsequent visits in production, and gives[m
[32m+[m[32m// it offline capabilities. However, it also means that developers (and users)[m
[32m+[m[32m// will only see deployed updates on the "N+1" visit to a page, since previously[m
[32m+[m[32m// cached resources are updated in the background.[m
[32m+[m
[32m+[m[32m// To learn more about the benefits of this model, read https://goo.gl/KwvDNy.[m
[32m+[m[32m// This link also includes instructions on opting out of this behavior.[m
[32m+[m
[32m+[m[32mconst isLocalhost = Boolean([m
[32m+[m[32m  window.location.hostname === 'localhost' ||[m
[32m+[m[32m    // [::1] is the IPv6 localhost address.[m
[32m+[m[32m    window.location.hostname === '[::1]' ||[m
[32m+[m[32m    // 127.0.0.1/8 is considered localhost for IPv4.[m
[32m+[m[32m    window.location.hostname.match([m
[32m+[m[32m      /^127(?:\.(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)){3}$/[m
[32m+[m[32m    )[m
[32m+[m[32m);[m
[32m+[m
[32m+[m[32mexport default function register() {[m
[32m+[m[32m  if (process.env.NODE_ENV === 'production' && 'serviceWorker' in navigator) {[m
[32m+[m[32m    // The URL constructor is available in all browsers that support SW.[m
[32m+[m[32m    const publicUrl = new URL(process.env.PUBLIC_URL, window.location);[m
[32m+[m[32m    if (publicUrl.origin !== window.location.origin) {[m
[32m+[m[32m      // Our service worker won't work if PUBLIC_URL is on a different origin[m
[32m+[m[32m      // from what our page is served on. This might happen if a CDN is used to[m
[32m+[m[32m      // serve assets; see https://github.com/facebookincubator/create-react-app/issues/2374[m
[32m+[m[32m      return;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    window.addEventListener('load', () => {[m
[32m+[m[32m      const swUrl = `${process.env.PUBLIC_URL}/service-worker.js`;[m
[32m+[m
[32m+[m[32m      if (!isLocalhost) {[m
[32m+[m[32m        // Is not local host. Just register service worker[m
[32m+[m[32m        registerValidSW(swUrl);[m
[32m+[m[32m      } else {[m
[32m+[m[32m        // This is running on localhost. Lets check if a service worker still exists or not.[m
[32m+[m[32m        checkValidServiceWorker(swUrl);[m
[32m+[m[32m      }[m
[32m+[m[32m    });[m
[32m+[m[32m  }[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mfunction registerValidSW(swUrl) {[m
[32m+[m[32m  navigator.serviceWorker[m
[32m+[m[32m    .register(swUrl)[m
[32m+[m[32m    .then(registration => {[m
[32m+[m[32m      registration.onupdatefound = () => {[m
[32m+[m[32m        const installingWorker = registration.installing;[m
[32m+[m[32m        installingWorker.onstatechange = () => {[m
[32m+[m[32m          if (installingWorker.state === 'installed') {[m
[32m+[m[32m            if (navigator.serviceWorker.controller) {[m
[32m+[m[32m              // At this point, the old content will have been purged and[m
[32m+[m[32m              // the fresh content will have been added to the cache.[m
[32m+[m[32m              // It's the perfect time to display a "New content is[m
[32m+[m[32m              // available; please refresh." message in your web app.[m
[32m+[m[32m              console.log('New content is available; please refresh.');[m
[32m+[m[32m            } else {[m
[32m+[m[32m              // At this point, everything has been precached.[m
[32m+[m[32m              // It's the perfect time to display a[m
[32m+[m[32m              // "Content is cached for offline use." message.[m
[32m+[m[32m              console.log('Content is cached for offline use.');[m
[32m+[m[32m            }[m
[32m+[m[32m          }[m
[32m+[m[32m        };[m
[32m+[m[32m      };[m
[32m+[m[32m    })[m
[32m+[m[32m    .catch(error => {[m
[32m+[m[32m      console.error('Error during service worker registration:', error);[m
[32m+[m[32m    });[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mfunction checkValidServiceWorker(swUrl) {[m
[32m+[m[32m  // Check if the service worker can be found. If it can't reload the page.[m
[32m+[m[32m  fetch(swUrl)[m
[32m+[m[32m    .then(response => {[m
[32m+[m[32m      // Ensure service worker exists, and that we really are getting a JS file.[m
[32m+[m[32m      if ([m
[32m+[m[32m        response.status === 404 ||[m
[32m+[m[32m        response.headers.get('content-type').indexOf('javascript') === -1[m
[32m+[m[32m      ) {[m
[32m+[m[32m        // No service worker found. Probably a different app. Reload the page.[m
[32m+[m[32m        navigator.serviceWorker.ready.then(registration => {[m
[32m+[m[32m          registration.unregister().then(() => {[m
[32m+[m[32m            window.location.reload();[m
[32m+[m[32m          });[m
[32m+[m[32m        });[m
[32m+[m[32m      } else {[m
[32m+[m[32m        // Service worker found. Proceed as normal.[m
[32m+[m[32m        registerValidSW(swUrl);[m
[32m+[m[32m      }[m
[32m+[m[32m    })[m
[32m+[m[32m    .catch(() => {[m
[32m+[m[32m      console.log([m
[32m+[m[32m        'No internet connection found. App is running in offline mode.'[m
[32m+[m[32m      );[m
[32m+[m[32m    });[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mexport function unregister() {[m
[32m+[m[32m  if ('serviceWorker' in navigator) {[m
[32m+[m[32m    navigator.serviceWorker.ready.then(registration => {[m
[32m+[m[32m      registration.unregister();[m
[32m+[m[32m    });[m
[32m+[m[32m  }[m
[32m+[m[32m}[m
