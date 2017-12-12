library(forecast)
library(imputeTS)

options(digits=5)

co2 <- read.csv('co2.csv')
target.year <- 2050

# Replace -99.99 with actual NA and impute missing values
co2$CO2[co2$CO2 == -99.99] <- NA
co2$CO2 <- na.interpolation(co2$CO2)

co2.ts <- ts(co2$CO2, start = c(1958, 1), end = c(2016, 10), freq = 12)

# This was for testing the model
#
# train.test.split <- 0.9 
# split.index <- round(length(co2.ts) * train.test.split)
# co2.train.ts <- window(co2.ts, start = c(1958, 1), end = c(1958, split.index))
# co2.test.ts <- window(co2.ts, start = c(1958, split.index + 1), end = c(1958, length(co2.ts)))
#
# fit <- ets(co2.train.ts, model = 'AAA')
# predictions <- forecast(fit, length(co2.test.ts), level = 0)
# print(accuracy(predictions$mean, co2.test.ts))

fit <- ets(co2.ts, model = 'AAA')
# Makes predictions all the way out to December of target year
predictions <- forecast(fit, 12 * (target.year - 2016) + 2, level = 0.95)

print(predictions)

png(filename='forecast.png')
plot(predictions,
     axes=F,
     main = '',
     xlab = 'Time',
     ylab = 'CO2 (ppm)',
     xlim = c(1958, target.year),
     shaded = TRUE,
     shadecols=c('light blue'))
legend('topleft',
       legend=c('Historical Data',
                'Predicted Data',
                '95% CI'),
       fill=c(NA, NA, 'light blue'),
       col=c('black', 'blue', NA),
       lty=c(1, 1, NA),
       lwd=c(1, 2, NA),
       border=c(NA, NA, 'black'),
       inset=0.01)
axis(side = 1,
     at=seq(1960, target.year, 10))
# 2000 is plainly excessive for most values of target.year but that's alright
# because the plot will automatically truncate the y-axis in these cases
axis(side = 2,
     at=seq(300, 2000, 25)) 
dev.off()
