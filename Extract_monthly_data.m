clc;
clear all;

%% file name

file= ('VNP28C3.A2012032.002.2021266022228.h5'); %% same for J1 files

h5disp(file);  %% To get information about the file %%

%% Read the data %%

x=h5read(file,'/lake_evaporation/');

%% Extract data 

lake_id=x.lake_ID;
longitude= x.lake_longitude;
latitude=x.lake_latitude;
area=x.lake_area;
elevation=x.lake_elevation;
storage=x.lake_storage;
evaporation_rate=x.lake_evap_rate;
evaporation_volume=x.lake_evap_vol;

%% This gives all variable information for each lake id on 2012032 (Feb 2012)

