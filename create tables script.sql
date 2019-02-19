create table districts
( 
district_code integer,
district_name varchar(40),
constraint pk_district_code primary key  (district_code)
);
-----------------------------------------------------------
create table Neighborhoods
( 
Neighborhood_code integer,
Neighborhood_name varchar(100),
constraint pk_Neighborhood_code primary key  (Neighborhood_code)
);
----------------------------------------------------------
create table Neighborhoods_districts_map
(
Neighborhood_code integer,
district_code integer,
constraint pk_nghb_dist_map primary key (Neighborhood_code ,district_code ),
constraint fk_neighborhood_code_ndm FOREIGN KEY(Neighborhood_code) references Neighborhoods(Neighborhood_code) on delete RESTRICT,
constraint fk_districts_code_ndm FOREIGN KEY(district_code) references districts(district_code) on delete RESTRICT
);
----------------------------------------------------------
create table births
(
year integer,
neighborhood_code integer,
gender varchar(10),
count integer,
constraint	pk_birts primary key (year,neighborhood_code,gender),
constraint fk_neighborhood_code_birth FOREIGN KEY(neighborhood_code) references Neighborhoods(Neighborhood_code) on delete RESTRICT
);
----------------------------------------------------------
create table deaths
(
year integer,
neighborhood_code integer,
age varchar(10),
count integer,
constraint	pk_deaths primary key (year,neighborhood_code,age),
constraint fk_neighborhood_code_deaths FOREIGN KEY(neighborhood_code) references Neighborhoods(Neighborhood_code) on delete RESTRICT
);