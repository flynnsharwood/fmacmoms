<!-- # Website

This website is built using [Docusaurus](https://docusaurus.io/), a modern static website generator.

## Installation

```bash
yarn
```

## Local Development

```bash
yarn start
```

This command starts a local development server and opens up a browser window. Most changes are reflected live without having to restart the server.

## Build

```bash
yarn build
```

This command generates static content into the `build` directory and can be served using any static contents hosting service.

## Deployment

Using SSH:

```bash
USE_SSH=true yarn deploy
```

Not using SSH:

```bash
GIT_USER=<Your GitHub username> yarn deploy
```

If you are using GitHub pages for hosting, this command is a convenient way to build the website and push to the `gh-pages` branch. -->


These are mostly the moms for 24 batch meets, or 23+24 meets.
The mom files are in /docs/23 + 24 batch/


A list of gdocs that might be useful

- [Making innaug more engaging](https://docs.google.com/document/d/1M_YM8oaRmSlYgdSCRUuvd_43TG71Zfrq1YU4U3ANODI/edit?usp=sharing)

basically used docusaurus to make it easy to browse fmac moms.


if you want to push changes AND update the site. 

`git add . && git commit -m "too lazy to add message" && git push && npm run build && npm run deploy` 
