This directory holds files that are useful for workshop organizers. 
If you're a student, the stuff here probably isn't very interesting for you. 
Still, feel free to look around and learn... or get this workshop off the ground in your context, using these tools to help you.

## Our posit.cloud project

There is a posit.cloud project for this repository, created on Rose Hartman's account (google login).
Updates made in this repository are **not** automatically refelcted in the posit.cloud project. 
To update the project, Rose needs to log in as the owner, and then go to the git panel in RStudio and pull the recent changes. 

## Our slide decks on QuartoPub

This repository is set up to automatically update our slide decks on QuartoPub when changes are pushed to `main`, or when a branch is merged into `main`.
For more details, see [quarto_slides/README](https://github.com/arcus/r102/blob/main/quarto_slides/README.md).

## The registration form on REDCap

The signup form for this series is on REDCap ([pid 65259](https://redcap.chop.edu/redcap_v14.1.2/index.php?pid=65259)). 
There is an R script that uses the REDCap API to pull down registration information and provide a few useful summaries; in order to run it you'll need an API token for that REDCap project. 
(Interested in trying this but not sure how to get started? Check out the DART tutorial on [Using the REDCap API](https://liascript.github.io/course/?https://raw.githubusercontent.com/arcus/education_modules/main/using_redcap_api/using_redcap_api.md) to learn!)

## Other

For examples of parameterized reports to generate workshop emails, see https://github.com/arcus/intro-to-r-for-clinical-data/tree/main/for_organizers 
