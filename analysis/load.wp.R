load.wp <- function(e, g, fn.df='analysis/data/wallpapers-on-databrary.csv', save=TRUE, img.dir='img/'){
  # Loads selected wallpaper image from Databrary
  require(dplyr)
  require(png)
  
  z = paste(img.dir, paste(g, e, sep="-"), ".png", sep="")
  if (file.exists(z)){
    p <- readPNG(z)
  } else {
    # Load data frame of wallpaper identifiers, filter and select
    wp.db <- read.csv(fn.df, header=TRUE)
    s <- wp.db %>% filter(group==tolower(g))
    slot <- s[e,'slot']
    asset <- s[e,'asset']
    
    # Build URL and download
    url <- paste('https://nyu.databrary.org/slot', slot, '-/asset', asset, 'download?inline=true', sep='/')
    if (save) {
      z = paste(img.dir, paste(g, e, sep="-"), ".png", sep="")
      download.file(url, z)
      p <- readPNG(z)
      sprintf('Saved to %s', z)
    } else {
      z = tempfile()
      download.file(url, z)
      p <- readPNG(z)
      file.remove(z)
    }
  }
  p
}