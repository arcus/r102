# Quarto Slides

This directory holds the source code for the slide decks used in the Introduction to R for Clinical Data workshop, co-presented by Arcus Education and the R User Group of the Children's Hospital of Philadelphia.

These slides can be published using the `quarto publish` command, executed in the command line / terminal, *not* in the R console.  

**Tip**: Are you trying to run `quarto publish` on a CHOP-managed computer and getting authorization errors? 
Try running it on another machine; there appears to be something about how CHOP computers are set up that interferes with QuartoPub's authorization. 

## Setting up quarto to update automatically with github actions

I followed the instructions to [use GitHub Actions to automatically publish updates to QuartoPub](https://quarto.org/docs/publishing/quarto-pub.html#github-action). 
When you push changes to `main`, it will automatically trigger a workflow that should update our slide decks on QuartoPub. 

**Important**: We're not asking GitHub to actually execute all the R code (that would be very computationally expensive), so it's important that you use `quarto render` locally on your own computer after making any changes that could affect code output. 
We have [freeze computations](https://quarto.org/docs/publishing/quarto-pub.html#freezing-computations) set up in `_quarto.yml`. 
This means computations in R are done locally only, and the results are stored in `_freeze`. 
That folder needs to be version controlled so it's available on github. 
When you render, it will save the results of all the executed code in the `_freeze` directory. 
When you commit and push the changes you made to your .qmd file, be sure to add any changes to the `_freeze` directory as well. 

## What's in that `_quarto.yml` file?

The `_quarto.yml` file does the following:

- It tells quarto to render every .qmd file when you run `quarto render`; by default it would also attempt to render .rmd and .md files, but we don't want that since there's code in the .rmd exercises files that definitely won't work. 