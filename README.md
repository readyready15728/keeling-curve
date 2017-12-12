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
decades to come. The reason I say that is that begins with the fact that, in
general, ecologically speaking, females are the limiting resource in sexual
reproduction and bear most of the costs of reproduction. Accordingly, females
*choose* males according to *inter alia* competitive ability in providing
resources for offspring.  Notwithstanding claims made by social
constructivists, subject matter experts generally believe much the same thing
applies to *H. sapiens* as applies to the so-called "lower animals". In the
case of human sociobiology, the outcome is the following:

![Forecast of CO2 ppm out to 2050](https://i.imgur.com/LoSPJfO.png "Yep, here it is again DDDDD:")

This is something you don't often hear about when discussing climate change,
save perhaps when male greed is brought up. Even then, its roots in female mate
choice are seldom ever recognized. The most important lesson to draw from all
of this is that lots of meaningless talks and accords will not even be
*Band-Aids* for the problem of climate change and, realistically, it's just
going to get worse and worse and worse every year, unless and until the root
problem is addressed. That root problem is normal human behavior and it can
only ever be solved if said behavior is policed out of existence. As gloomy as
the overall outlook is, there is one cause for optimism: advances in genetic
engineering, AI, robotics, neural interfaces etc. are coming into being just in
time to make the required global police state feasible, with strict control over
population and consumption numbers, that can finally tackle climate change!
:DDDDD Here's to a better future:

![Dialog box from Sid Meier's Alpha Centauri confirming choice to nerve staple unruly citizens](https://i.imgur.com/JlZZyI8.png "Everything went better than expected :DDDDD")
