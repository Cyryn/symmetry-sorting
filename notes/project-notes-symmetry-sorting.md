# project-notes-symmetry-sorting

This is the project notes file for the symmetry sorting project. Notes are in reverse chronological order.  

## 2016-06-21-03:03

- ars started methods section of paper located at: [symm-manuscript2016.md](https://github.com/gilmore-lab/symmetry-sorting/blob/master/pubs/symm-manuscript2016.md)  

## 2016-03-27-12:24

- ROG decided to try the image-wise dot product on the wallpapers.
- Hierarchical clustering on the full-scale wallpapers using the image-wise dot product is in [HTML](https://rawgit.com/gilmore-lab/symmetry-sorting/master/dotprod-hclust-analysis.html) and [Rmd](../dotprod-hclust-analsis.Rmd).
- 2d MDS on the full-scale wallpapers using the image-wise dot product is in [HTML]https://rawgit.com/gilmore-lab/symmetry-sorting/master/dotprod-mds-analysis.html) and [Rmd](../dotprod-mds-analsis.Rmd).
- ROG sees the virtue in writing a function that takes as parameters the image evaluation function, the spatial scaling factor, the cluster algorithm, and the wallpaper group.
- ROG created template .Rmd file, [wallpaper-image-metrics-analysis.Rmd](../wallpaper-image-metrics-analysis.Rmd) and new function, [fit.plot.cluster.R](../analysis/fit.plot.cluster.R) that parameterizes the cluster analysis and plotting. The functions can be extended and tweaked, but the basic functionality is there.

## 2016-03-21-18:19

- ROG wrote new function to subsample wallpapers, [sub.sample.wp.R](../analysis/sub.sample.R)
- ROG made [compute.image.metric.R](../analysis/compute.image.R) more generic. It now takes both an image summary function (e.g. ssim, image.dot.prod) and a scale factor (for sub-sampling) as parameters.
- Sub-sampling central region of wallpapers should be a better measure of similarity. This won't be inflated by the large grayscale surrounds.
- Ran out of time to run and test these.

## 2016-03-21-15:32

- Project meeting with ROG and MS.
- Investigate how Ss categorized, strategies. Maybe group Ss by similar strategies.
- Thought about ways to sort raw data matrices to visualize categories of groups. Tried sorting by set size, to some effect.
- MS has heard of Isomap.
- Agreed to try different spatial scaling analysis for SSIM.
- Can we reconstruct presentation order of stimuli from paper records. For each participant, enter 1-5 for presentation order of each wallpaper.
- Should also try k-means clustering.

## 2016-03-21-09:55

- ROG read Kriegeskorte et al., <http://dx.doi.org/10.1016/j.tics.2013.06.007> on representational geometry.
  - How to order, sort representational dissimilarity matrices to help visualize patterns within them?
- ROG will try to get and skim Kriegeskorte's book: "Visual population codes : toward a common multivariate framework for cell recording and functional imaging" from Pattee; also Gardenfors' book, "Conceptual Spaces: The Geometry of Thought" from the Engineering Library.
- ROG read Dong et al., <http://doi.org/10.1145/2578726.2578762>.
  - Did Alasdair send "Does Free- sorting Provide a Good Estimate of Visual Similarity"? Might want to try Isomap clustering, <http://isomap.stanford.edu/>. There appears to be an R package to do this called isopam, <https://cran.r-project.org/web/packages/isopam/isopam.pdf>.
- ROG grabbed the Kriegeskorte book.

## 2016-03-15-08:09

- ROG added MDS analysis to Jaccard indices: [jaccard-mds-analysis.Rmd](../jaccard-mds-analysis.Rmd), [HTML](https://rawgit.com/gilmore-lab/symmetry-sorting/master/jaccard-mds-analysis.html)

## 2016-03-14-17:19

- ROG conducted preliminary analysis of SSIM values on wallpaper groups. See [ssim-analyis.Rmd](../ssim-analysis.Rmd) or [HTML](https://rawgit.com/gilmore-lab/symmetry-sorting/master/ssim-analysis.html).
- ROG created separate file with Jaccard index analyses, [jaccard-analysis.Rmd](../jaccard-analysis.Rmd) or [HTML](https://rawgit.com/gilmore-lab/symmetry-sorting/master/jaccard-analysis.html)
- ROG also created multidimensional scaling analysis of SSIM values in [mds-analysis.Rmd](../ssim-mds-analysis.Rmd) or [HTML](https://rawgit.com/gilmore-lab/symmetry-sorting/master/ssim-mds-analysis.html)

## 2016-03-14-16:02

- Rick Gilmore and Michelle Shade met.
- Wrote [ssim.R](analysis/ssim.R) function to compute structural similarity measure for two image matrices.
- Discussed plan for reading [Dong et al.](http://doi.org/10.1145/2578726.2578762) and [Yamins et al](http://doi.org/10.1038/nn.4244) papers for next Monday 3/21.
- ROG will work on computing SSIM values for all stimulus pairs in preparation for cluster analysis.
- ROG will investigate multidimensional scaling options.

## 2016-03-11-1130

- Skype conference with Tony Norcia, Alasdair Cooke, Michelle Shade, and Rick Gilmore. Presented [this report](https://rawgit.com/gilmore-lab/symmetry-sorting/master/analysis-planning.html)
- Sort plot of individual participants by the mean or median set size to show who is a lumper and who is a splitter.
- ROG will investigate [PSNR](https://en.wikipedia.org/wiki/Peak_signal-to-noise_ratio), [SSIM](https://en.wikipedia.org/wiki/Structural_similarity), and other image similarity measures. Goal is to compute these and compare them to behavioral/sorting data.
- Alasdair sent reference to paper by [Dong et al.](http://doi.org/10.1145/2578726.2578762) that compares various metrics. He will send other references.
- Agreed to explore conversation with Dan Yamins -- see [Yamins & DiCarlo 2016 ](http://doi.org/10.1038/nn.4244) -- about how convolutional network layers similiarity matrices compare to human performance.
- Also investigate Kriegeskorte work on representational similarity matrices.
- ROG and Alasdair will talk separately to follow up.
- Special issue of "Symmetry in Vision" has **2016-08-31 submssion deadline**. [Details](http://www.mdpi.com/journal/symmetry/special_issues/symmetry_vision).

## 2016-03-06

- rog added hclust-based hierarchical clustering plots to analysis-planning.Rmd.
- "list-fied" several functions (make.nsets.df, make.jaccard.df) for readability.

## 2016-03-05-14:21

- rog created new [analysis-planning.Rmd](../analysis-planning.Rmd) file in preparation for meeting with AMN and AC later this week.

## 2016-03-04-1740

- rog modified load.wp.R to write images from Databrary to img/ by default.
- Tested show-wallpapers.Rmd, but it hangs.

## 2016-03-02-12:34

- rog refactored project directory.

## 2016-02-08-15:00

- Rick and Michelle Shade met to discuss data analysis.
- Wrote two functions to compute jaccard indices over data for a single symmetry group.

## 2015-11-03-08:40
- Data from 20 participants were collected by ars17 and Michelle between 9/29/15 and 11/2/15.
- Total participants = 22
- 21 Female, 1 Male
- data file, Raw_Sorting_Data_151102.xlsx uploaded to git hub by ars17
- participant data found on google drive psubrainlab@gmail.com > My Drive > participants > symm-session-log

## 2015-09-22-09:40

- Run participant (ars17) 8001
- Enter data into excel file

## 2015-09-21-11:37

- ars17 copied the  excel file for the raw data to: https://github.com/gilmore-lab/symmetry-sorting/Raw_Sorting_Data_150915.xlsx

- This is the file includes previous data and will include all future data.

## 2015-09-17-09:12

- rogilmore created this project notes file and pushed it to GitHub.
