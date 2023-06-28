import pandas as pd
import streamlit as st
import plotly.express as px
from PIL import Image

st.set_page_config(page_title="Spotify Streams Vs Flight Passenger Count")
st.header("Spotify Streams Vs Flight Passenger Count")
st.subheader("By Andy Nguyen, Ernesto San Miguel, Kyle Mcleod, Luis Martinez, Rashidah Namutebi")

###---
spotify_df = pd.read_csv("Resources/jan2019.csv")
spotify_df2= pd.read_csv("Resources/july2019.csv")
spotify_df3=pd.read_csv("Resources/jan2020.csv")
spotify_df4=pd.read_csv("Resources/july2020.csv")
flight_df = pd.read_csv("Resources/flights_2019-2021.csv")

pie_chart = px.pie(spotify_df,
                   title="Jan-June 2019 Streams",
                   values="Streams",
                   names="Genre")
st.plotly_chart(pie_chart)

pie_chart2 = px.pie(spotify_df2,
                    title= "July-December 2019 Streams",
                    values="Streams",
                    names = "Genre"
                    ) 
st.plotly_chart(pie_chart2)

flight_chart = px.bar(flight_df, x = "Country Name", y="2019",
                      title="Flight Passengers in the year 2019",
                      labels={"Country Name": "Country (Arrival and Departure)",
                              "2019":"Number of Flight Passengers 2019"},
                              color="Country Name"
                      )
st.plotly_chart(flight_chart)

flight_chart2 = px.bar(flight_df,x="Country Name",y="2020",labels={"Country Name":"Country (Arrival and Departure)",
                                                                   "2020":"Number of Flight Passengers 2020"},
                                                                   title="Flight Passengers in the year 2020",
                                                                   color=("Country Name")
                                                                   )
st.plotly_chart(flight_chart2)


bar_chart=px.bar(spotify_df3,
                 title="Jan-June 2020 Streams",
                 x="Genre",
                 y="Streams",
                 color= "Genre"
                 )
st.plotly_chart(bar_chart)

bar_chart2 = px.bar(spotify_df4,
                    title="July-December 2020 Streams",
                    x= "Genre",
                    y="Streams",
                   color="Genre"
                )

st.plotly_chart(bar_chart2)
