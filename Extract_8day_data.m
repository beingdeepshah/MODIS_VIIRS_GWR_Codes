clc;
clear all;

%%   Select the file  %%

file = ('VNP28C2.A2022081.002.2023142052715.h5'); 

h5disp(file);  %% To get information about the file %%

%% read the data

x=h5read(file,'/lakes/');

%% Extract data

lake_id=x.lake_ID;
longitude= x.lake_longitude;
latitude=x.lake_latitude;
area=x.lake_area;
elevation=x.lake_elevation;
storage=x.lake_storage;

%% This gives all variable information for each lake id on 2022081 (Julian date)