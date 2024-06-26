This is the GitHub repository for the workshop series called **R 102: MasteRing Fundamentals in R**, given at the Children's Hospital of Philadelphia (CHOP) by Arcus Education and the CHOP R User Group.

This repository contains the files you need to be able to complete the exercises in each of the workshop sessions.  
Exercises for you to complete are in the [exercises](https://github.com/arcus/r102/tree/main/exercises) folder, and working solutions files are found in [solutions](https://github.com/arcus/r102/tree/main/solutions).

## About this workshop series

Welcome to R102! 
This series is aimed at people who have had a little exposure to the R programming language before, but are still beginners. 
If you've attended a previous [Intro to R for Clinical Data Workshop](https://arcus.github.io/intro-to-r-for-clinical-data/), for example, then these workshops will hopefully be the perfect next step!

If you're brand new to R, you're still welcome to attend but you may find it harder to follow along actively with the code. 

This workshop series is free and does not require any paid software.  
You will need a computer and a robust internet connection, however.

## What are participants saying?

We send out (very brief!) surveys after each workshop to help us to assess what's working well and what isn't. 
We are reading your responses carefully. 
Thank you very much to everyone who has so far taken the time to respond! 

Here are some of the results from our Missing Values in R workshop:

![](for_organizers/prepost_03_completers.png)

If you see that plot and wish you too could get your level of understanding up to "I am confident in my ability to do it" but you missed the workshop, never fear! 
The slides, code, and recordings for each workshop are linked on this page under [workshop sessions](#workshop-sessions) as soon as we have them available. 

## Workshop sessions

**You're welcome to attend the whole series, or just pick the dates/topics that work best for you.** 
Material in later sessions will not require you to have been at earlier sessions.

Use this form to [register to attend one or more workshop sessions](https://redcap.link/R102_Signup).

- **Missing Values in R**
  * Date: 2024-03-04 12pm-1pm ET
  * Watch the [recording of the Missing Values in R workshop](https://www.youtube.com/watch?v=R6RVppJ5qa0)
  * Follow along with the [Missing Values in R slides](https://rosemhartman.quarto.pub/r102/quarto_slides/missing_values_in_r.html#/title-slide)
  * Try the [online tutorial version of Missing Values in R available at DART](https://bit.ly/DART_r_missing_values)
- **Summary Statistics in R**
  * Date:  2024-04-08 12pm-1pm ET
  * Watch the [recording of the Summary Statistics in R workshop](https://www.youtube.com/watch?v=I9K-FZtC-_8)
  * Follow along with the [Summary Statistics in R slides](https://rosemhartman.quarto.pub/r102/quarto_slides/summary_stats_in_r.html#/title-slide)
  * Try the [online tutorial version available at DART](https://liascript.github.io/course/?https://raw.githubusercontent.com/arcus/education_modules/main/r_summary_stats/r_summary_stats.md#1)
- **Reshaping Data with tidyr**
  * Date: 2024-05-06 12pm-1pm ET
  * Follow along with the [Reshaping Data with tidyr slides](https://rosemhartman.quarto.pub/r102/quarto_slides/reshaping_data_with_tidyr.html#/title-slide)
  * Watch the [recording of the Reshaping Data with tidyr workshop](https://www.youtube.com/watch?v=Ii1jwXsvanA)
- **Data Types and Visualizations**
  * Date: 2024-06-03 12pm-1pm ET
  * Follow along with the [Data Types and Visualizations slides](https://rosemhartman.quarto.pub/r102/quarto_slides/data_types_and_viz.html#/title-slide) 
  * Watch the [recording of the Data Types and Visualizations workshop](https://www.youtube.com/watch?v=NltknJ9u0Cg)

For all of the talks, you can [work hands-on with the code and see solutions in our Posit.cloud project](https://posit.cloud/content/7522885)

## Before your first workshop session

Before attending a workshop session, please do the following.  

**Necessary**:

* Create a free [Posit.cloud](https://posit.cloud) account.  We will use this as our training environment and you will have continued access to your code and materials after the workshop, through your account at Posit.cloud.
* Please review our [Code of Conduct](https://github.com/arcus/intro-to-r-for-clinical-data/blob/main/conduct.md).

**Highly Recommended**:

* Install or update the [Google Chrome browser](https://www.google.com/chrome/) on the computer you'll use.  We highly recommend you use Chrome to access our workshop training environment.
* Download and install the latest version of [Teams](https://www.microsoft.com/en-us/microsoft-teams/download-app) (you may also choose to join in a browser).
* Consider installing [R](https://cloud.r-project.org/) and [RStudio Desktop](https://rstudio.com/products/rstudio/download/) on your computer, so you can hit the ground running after the workshop finishes!
* If you haven't already, and you're a CHOP or Penn employee, please consider [joining CHOP's R User Group](http://bit.ly/chopRusers).

On the day of your workshop, we suggest the following:

* If available to you, use two monitors (or another two-screen setup such as a laptop and a tablet or two laptops).
* Follow along in the [slides](https://rosemhartman.quarto.pub/r102/quarto_slides/index.html#/r102-mastering-the-fundamentals-in-r), if you like.

## Where to do the exercises

### Use Posit.cloud

The easiest way to do the workshop exercises is to create a free account at <https://posit.cloud> and then go to [our workshop project](https://posit.cloud/content/7522885) and make your own permanent copy of this project so you can make changes and work with it later.

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
  "rmarkdown",
  "medicaldata",
  "gtsummary"
))
```

## Slides

[Slides](https://rosemhartman.quarto.pub/r102/quarto_slides/index.html#/r102-mastering-the-fundamentals-in-r) of the teaching presentation that accompany each of the workshop sessions are available and you are welcome to follow along or refer back to them at a later date.  
The source code for these slides is included in the directory [quarto_slides](https://github.com/arcus/r102/tree/main/quarto_slides) in this repository.

## License

All of the material in this GitHub repository is copyrighted under the [Creative Commons BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/) copyright to make the material easy to reuse. 
We encourage you to reuse it and adapt it for your own teaching as you like!

## Acknowledgements

Material for some of these sessions was adapted from [DART data science learning modules](https://arcus.github.io/education_modules/educators), a project developed by the Arcus Data Education team at CHOP. 
In particular, the following modules were adapted for workshop sessions: 

- [Missing Values in R](https://bit.ly/DART_r_missing_values)
- [Summary Statistics in R](https://bit.ly/DART_r_summary_stats)

Three cheers for remixing and reusing open education materials! 
