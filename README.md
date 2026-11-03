# Workshop materials: Introduction to version control with Git

This repository contains all workshop material: slides, tasks, solutions, further resources.
The materials can be viewed on the [workshop website](https://selinazitrone.github.io/get-started-with-git/).

## Update the course dates

The dates on the start page are loaded from `course-info.json` when the page is opened, so changing them does not require re-rendering the website:

1. Edit the dates in `course-info.json` (root folder).
2. Copy the file to `docs/course-info.json` (the version that is online).
3. Commit and push.

Always edit the root file: rendering the website overwrites `docs/course-info.json` with it.