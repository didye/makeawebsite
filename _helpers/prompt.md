# Web development learner project creation

Generate a beginner-friendly website using the implementation approach best suited to the site purpose. It may use plain HTML/CSS/JavaScript or a framework that builds static files. It will act as a starting point for someone learning web development skills – the implementation should be optimized for comprehension and extensibility by a beginner. 

## Target frameworks

First, use any framework or technology the user explicitly requests. Otherwise, choose based on the site needs:

* For blogs, editorial sites, or sites with several content pages, use Eleventy to demonstrate templates and reusable content.
* For app-like sites that need meaningful client-side interactivity or state, use React with Vite. Configure it to produce a static build; do not add a backend unless requested, the site should by default run without server-side code.
* For small, mostly informational sites where templates or app interactivity add little value, use plain HTML, CSS, and JavaScript.

## Implementation guidelines

* Choose simple implementations that conform to web standards such as the WCAG AA accessibility guidelines.
* Include code comments to help learners understand core functionality, and a README introducing the user to the project.
* Use meaningful but concise names for code components such as variables and functions.
* Include any files necessary to build and run the site locally, such as package.json and config files for any frameworks used if necessary for the implementation.
* Keep the directory structure simple, with minimal nesting.
* Website styles should use rainbow colors, with content that's light-hearted and jokey.
* When images are used, prefer existing public domain or creative commons licensed options with atrribution where necessary.
* Include an MIT LICENSE file.
* Include a `.gitignore` if appropriate.
* Include a `launch.json` file that will enable the user to run the project in VS Code without further configuration. Document the exact VS Code workflow for the project. * Include a `launch.json` file that starts the site (for framework-based sites, the development server). Prefer opening the site in VS Code's embedded browser (Simple Browser or the Integrated Browser) instead of an external one. If that can't be configured reliably in `launch.json`, use `openExternally` and document in the README how to open the running site in the embedded browser, for example by running **Simple Browser: Show** from the Command Palette and entering the local address.
* Ensure that code does not contain broken links or errors that will fire on first run. Links should be to pages or page sections that actually exist.

Place the files in the current project root folder, but don't overwrite the contents of the `.github`, `.devcontainer` or `_helpers` folders. If overwriting the `package.json` ensure that the `deploy` script and `gh-pages` dependencies remain intact.

## Project docs

`README.md` should include:

* Introduction to project with description of what it does and how it works, including an overview of the user experience it creates.
* List of project folders and files with one line explanations of each.
* Required system dependencies such as node, npm.
* Steps required to prepare the environment and run the site, along with a list of any required IDE extensions.
  * For framework-based projects, include the scripts and VS Code configuration needed to build and run the site locally. The launch configuration must work with the selected stack, and the README must give the exact run steps.
  * Include links to docs for frameworks used in the project.
* Steps to publish the website to GitHub Pages, including instructions on pushing to a repo and configuring the Pages settings.

Also include in the project a `TODO.md` file with the title "Extend your new site!" and outlining a suggested first edit for the user to try, with code they can copy and paste straight into the project. The TODO should also include a second suggested edit, but without code so that the learner has to figure out how to make the change themselves. Include a hint for the user in case they get stuck.

In documentation, keep the language inclusive and encouraging.

## References 

Refer to the (legacy) Glitch starter apps for examples of similar projects to use as inspiration for structure and project style, not for copying wholesale:

* https://github.com/glitchdotcom/glitch-hello-website
* https://github.com/glitchdotcom/glitch-hello-eleventy
* https://github.com/glitchdotcom/glitch-hello-react
* https://github.com/glitchdotcom/glitch-in-bio
