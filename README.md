# r102
Materials, code, and slides for R 102 level trainings


# Intro to R for Clinical Data

This is the GitHub repository for the workshop called Introduction to R for Clinical Data, given at the Children's Hospital of Philadelphia (CHOP) by Arcus Education and the CHOP R User Group.  

This repository contains the files you need to be able to complete the exercises in the workshop.  
Exercises for you to complete are in the [exercises](exercises) folder, and working solutions files are found in [solutions](solutions).

This workshop is aimed at people who have never used R or RStudio and is appropriate for brand new beginners.  
In it, you'll learn the basics of R, RStudio / Posit, and Quarto / R Markdown.  
You'll work with fabricated clinical data and learn to ingest, visualize, reshape, and communicate findings, all using the R language.  

Not interested in clinical data?  
If you work with any kind of tabular (table-shaped, with rows and columns) data, like data in spreadsheets, you might find this workshop useful.  

This workshop is free and does not require any paid software.  
You will need a computer and a robust internet connection, however.

## Before the Workshop

Before the workshop, please do the following.  

**Necessary**:

* Create a free [Posit.cloud](https://posit.cloud) account.  We will use this as our training environment and you will have continued access to your code and materials after the workshop, through your account at Posit.cloud.
* Please review our [Code of Conduct](conduct.md).

**Highly Recommended**:

* Install or update the [Google Chrome browser](https://www.google.com/chrome/) on the computer you'll use.  We highly recommend you use Chrome to access our workshop training environment.
* Download and install the latest version of [Teams](https://www.microsoft.com/en-us/microsoft-teams/download-app) (you may also choose to join in a browser).
* To help us better understand our learners, please complete the [pre-course survey](survey.link). We appreciate it!
* Consider installing [R](https://cloud.r-project.org/) and [RStudio Desktop](https://rstudio.com/products/rstudio/download/) on your computer, so you can hit the ground running after the workshop finishes!
* If you haven't already, and you're a CHOP or Penn employee, please consider [joining CHOP's R User Group](http://bit.ly/chopRusers).

On the day of the workshop, we suggest the following:

* If available to you, use two monitors (or another two-screen setup such as a laptop and a tablet or two laptops).
* Follow along in the [slides](slides.link), if you like.

## Where to do the exercises

### Use Posit.cloud

The easiest way to do the workshop exercises is to create a free account at <https://posit.cloud> and then go to [our workshop project](https://posit.cloud/content/6121691) and make your own permanent copy of this project so you can make changes and work with it later.

Alternately, in Posit Cloud you can also add a new project and select "New Project from Git Repository" and enter the url of this repository, namely <https://github.com/arcus/r102>.

### Use Your Own R/RStudio

If you want, you can install R and RStudio Desktop for free on your computer, following the [instructions Posit offers](https://posit.co/download/rstudio-desktop/).  Then you can either:

* Use File > New Project to create a new project from version control and add the URL of this repository (namely, <https://github.com/arcus/r102>)
* Download the files in this repository (the green "Code" button will allow you to download a zip file of this repository's contents) and then use File > New Project > Existing Directory to create an R project in the directory where you stashed those files.

## Dependencies

The files here depend on several R libraries, which you can install using the following command:

```r
install.packages(c(
  "tidyverse",
  "rmarkdown"
))
```

## Slides

[Slides](slides.link) of the teaching presentation that accompany the workshop are available and you are welcome to follow along or refer back to them at a later date.  
The source code for these slides is included in the directory [quarto_slides](quarto_slides) in this repository.

## License

All of the material in this GitHub repository is copyrighted under the [Creative Commons BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/) copyright to make the material easy to reuse. 
We encourage you to reuse it and adapt it for your own teaching as you like!

## Acknowledgements
