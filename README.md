# Keeling Curve
## Extrapolation of the famous Keeling curve data to future years

The code herein fits a [Holt-Winters](https://www.otexts.org/fpp/7/5) model to
the famous [Keeling curve](https://scripps.ucsd.edu/programs/keelingcurve/)
data gathered at the Mauna Loa Observatory in Hawai'i. These data, presumably
gathered well away from industry which might inflate the numbers, show us what
the concentration of carbon dioxide in the planet's atmosphere is at any given
time, since the late 1950s. After installing requisite libraries forecast and
imputeTS, you can get my forecast out to the target year specified in
`learn.R`, which is set to 2050 by default, by doing `Rscript learn.R`. As of
this writing, the [raw data hosted on the Scripps CO2 Program
Website](http://scrippsco2.ucsd.edu/data/atmospheric_co2/primary_mlo_co2_record)
(look for `monthly_in_situ_co2_mlo.csv`) end with a monthly measurement for
November of 2017 of 405.17 ppm. My model made the prediction of 405.21. It has
been very accurate so far! Of course, the real test of the model is to see how
well it applies as we get further and further away from where the data used
with R end, in late 2016. The confidence intervals predicted out to 2050 get
wider and wider, which is summarized in a graphic plot, `forecast.png`,
produced after `learn.R` runs. It should look like this:

![Forecast of CO2 ppm out to 2050](https://i.imgur.com/LoSPJfO.png "DDDDD:")

480 ppm by 2050 is a very big deal! DDDDD: And though, while individual
confidence intervals already constructed counterintuitively either contain the
estimated parameter or they don't—there is no probability here and for that you
want a [credible interval](https://en.wikipedia.org/wiki/Credible_interval)—the
lower bound, a whopping 450 ppm, is not encouraging even with this caveat in
mind.

My estimates may end up being wildly wrong some years from now—in either
direction. But I am pretty sure that the overall upward trend will continue for
decades to come. Aggregate human behavior in this area is highly defective and
any solution to our global problems with climate change will involve extensive
modification of the same, and not solely through education as many seem to
believe.
