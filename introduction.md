

# General information
## Relevance

This study is organized in cooperation with the Science meets Regions event on Energy and Climate Change and Social Effects of Climate Change, organized by Sofia Municipality in March 2019. The premise here is that the study would foster the debate on Sofia&#39;s air quality - one of the biggest environmental issues of the city in later years. As the City of Sofia goes through a phase of vast socio-economic improvement it inevitably encounters the perils of this growth - disregarded environmental effects. While Sofia Municipality has started to implement prevention policies, in general there is lack of public consensus on the issue, based on facts and rational arguments.

Taking on the biggest climate-related challenge of the City of Sofia is not an easy undertaking. It requires multi-domain knowledge and interdisciplinary research approach, while there are many aspects to be studied. The current study focuses on one day prediction of air quality by location which would give most useful application to the citizens, but further research may be conducted on the polluting factors.

 ![](/media/01.png)

Figure 1: Urban population exposure to concentrations above EU standards. Source: (European Environmental Agency, 2017)

## Essence

In Sofia, the air pollution norms set by EU (50 µg/m daily average) were exceeded on 70 days in the heating period from October 2017 to March 2018, per citizens&#39; initiative AirSofia.info. AirSofia measures the air pollution in Sofia using citizen based network of sensors.

In particular, fine particles with diameter less than 10µm mixture of solid particles and liquid droplets found in the air (PM10) are the most dangerous and particularly interesting from research standpoint as the prediction of PM10 is an important issue in control and reduction of pollutants in the air.

 ![](/media/pm10size.png)

Figure 2: Comparative visualization of fine particles with diameter less than 10µm mixture of solid particles and liquid droplets found in the air (PM10) Source: (US EPA, 2017)

## Objectives

The study aims to achieve results in predicting the PM10 high peaks of concentration and forecast the pollution level. Still, to be as accurate as possible and to have maximum coverage of the territory of Sofia, the prediction of those peaks and concentration levels should be within a 24-hour period, using official and citizen network data.

 ![](/media/sofia_info.png)

Figure 3: AirSofia.Info citizen measurement network (AirBG.info/Code Foundation - Bulgaria, 2017-2019).

The ultimate objective of this analysis is to deliver forecast for the next 24 hours per station. The data for each station is a time series sequence therefore at the end of the day we would employ time series analysis.

Firstly there is bias correction of citizen science measurements, checked against the &quot;official&quot; measurement stations.  The official comply with the EU directives on air quality monitoring can be used for regulatory purposes, but are limited in number (only 5 in the whole city). Citizen science stations have very good coverage of the city, but may carry instrumental biases – due to different measurement methods, different interaction with meteorology, etc.

Secondly a prediction model for next-day forecast of PM10 is built, using additional factor from meteorological parameters (from a weather forecast) and topography satellite data. When there are qualitative prediction results, the data is mapped over geo-locations of Sofia.

## Local Context

There are some local community factors to be understood about the study which would shade a different light on the approach (and specifically why is it done the way it is done). The research is as much data oriented as it is public communication oriented. Of course this does not reduce its rigorousness. The aim of the study is to utilize the available data from the civic network stations in order to see and present this as a viable (or not) alternative for measurement.

 ![](/media/aqi.png)

Figure 4: Locations of official measurement stations (World Air Quality Index, 2019).

So in that regard this is a relatively small research oriented towards the general public, and it address some of the hotly discussed topics in the public circles:

1) Wide mistrust by the public to the official predictions (note: the research team does not endorse this type of mistrust in viable scientific results);

2) Popularity of the civic system of air quality sensors is based mostly on the fact that the data is oriented locally (neighborhood by neighborhood), and they give some local context and understanding to for the citizens of Sofia.

3) While no one disputes the vast technical superiority of the official measurement stations over the civic network sensors, the popular opinion is that the five official stations do not meet the needs of the citizens for in-time and on-spot predictions.

 ![](/media/inversia.png)
Figure 5: Inversion and pollution as a result of topography of Sofia (Paspaldzhiev, 2018).

There have been some public concern regarding the sensors in the civic network of stations – all of them use the SDS011 optical sensor (https://airbg.info/). Considering that the research team does not have experts in sensors, a background check has been made on the sensors. The conclusion is that most of the critique towards them is at PM2.5 level, while at PM10 level there are not too many objections to their functioning. For an intensive and technical study see (Laquai, 2017). There is uncertainty of the measurements of these sensors under certain conditions (temperature and moisture) so that the measurements start to drift in one direction. Under such hypothesis a bias-correction algorithm is a must along with all sorts of data cleansing as a standard approach for big data research.

 ![](/media/sensor_assembly.png)

Figure 6. Dissection of a citizen network station (OK Lab Stuttgart, 2017)

Regarding the fact that Copernicus CAMS is already providing PM10 forecasting at EU level, once again the scope of the data there and the prolonged period for data access are not validated by the small size and by the local orientation of the current study. This does not exclude Copernicus CAM as future source of data, especially on the external sources of air pollution.

## Results

1. Bias correction model for the data of citizen science measurements of AirSofia.info, checked against the official measurement stations of EEA. This is a most useful result in itself, making the widely available data usable for research and information purposes.
2. A prediction model for next-day forecast of PM10, using additional factors from meteorological parameters (from a weather forecast) and topography satellite data, mapped over geo-locations of Sofia.
3. An open-source web representation of the research, including methodology, programming code in R for reproducibility, data transformation, numerical simulations, statistical modeling, data visualization, and interactive maps.



## References

AirBG.info/Code Foundation - Bulgaria, 2017-2019. AirSofia.info. [Online] Available at: [http://airsofia.info](http://airsofia.info) [Accessed 15 09 2018].

European Environmental Agency, 2017. Bulgaria – air pollution country fact sheet 2017, s.l.: s.n.

Laquai, B., 2017. Assessment of Measurement Uncertainties for a SDS011 low-cost PM sensor from the Electronic Signal Processing Perspective. [Online] Available at: [https://www.researchgate.net/publication/320290219](https://www.researchgate.net/publication/320290219) [Accessed 10 3 2019].

OK Lab Stuttgart, 2017. LuftDaten.info. [Online] Available at: [https://luftdaten.info/en/home-en/](https://luftdaten.info/en/home-en/) [Accessed 15 3 2019].

Paspaldzhiev, I., 2018. Inversion and pollution as a result of topography of Sofia. Sofia: denkstatt.

US EPA, 2017. Particulate Matter (PM) Basics. [Online] Available at: [https://www.epa.gov/pm-pollution/particulate-matter-pm-basics](https://www.epa.gov/pm-pollution/particulate-matter-pm-basics) [Accessed 15 03 2019].

World Air Quality Index, 2019. Hipodruma, Sofia Air Pollution: Real-time Air Quality Index (AQI). [Online] Available at: [https://aqicn.org/city/bulgaria/sofia/hipodruma/](https://aqicn.org/city/bulgaria/sofia/hipodruma/) [Accessed 15 03 2019].

[__[Acknowledgment]__](README.md) [__[Introduction]__](introduction.md) [__[Methodology]__](methodology.md) [__[Bias correction]__](cleandata.md) [__[Analysis]__](analysis.md) [__[Features]__](features.md) [__[Prediction]__](prediction.md) [__[Summary]__](summary.md)

####### *Purchase Order: A.B610473 on Request to tender: Ares(2018)5990107*
