insert into address values(1,"USA","Miami","33101","Street-7");
insert into address values(2,"USA","Miami","33101","Street-15");
insert into address values(3,"USA","Miami","33101","Street-3");
insert into address values(4,"USA","Miami","33101","Street-6");
insert into address values(5,"USA","Miami","33101","Street-11");
insert into address values(6,"USA","Miami","33101","Street-12");
insert into address values(7,"USA","Miami","33101","Street-5");
insert into address values(8,"USA","Miami","33101","Street-4");
insert into address values(9,"USA","Miami","33101","Street-8");

select * from address;


insert into  bloodbank values (1,"A+",20,"A+ blood is ready for emergency use",1);
insert into  bloodbank values (2,"B-",12,"B- blood is available in huge amount",2);
insert into  bloodbank values (3,"O-",15,"O- blood is facing shortage",2);
insert into  bloodbank values (4,"B+",30,"B+ blood is available in huge amount",3);
insert into  bloodbank values (5,"O+",30,"O+ blood is ready for emergency use",3);

select * from bloodbank;


insert into donor values (1,"Smaran","2022-02-15","0012132412",8);
insert into donor values (2,"Akhil","2022-02-20","0012547892",8);
insert into donor values (3,"Ashwan","2022-03-05","001678452",8);
insert into donor values (4,"Mounika","2022-02-20","0012547892",9);
insert into donor values (5,"Pavan","2022-03-05","001678452",9);

select * from donor;


insert into hospital values (1,"City Hospital","001214124",5,4);
insert into hospital values (2,"Health Care Hospital","001651291",4,4);
insert into hospital values (3,"City Hospital","001112233",3,5);
insert into hospital values (4,"Doctors Hospital","001246345",2,5);
insert into hospital values (5,"People Care Hospital","001644374",1,5);

select * from hospital;


insert into patient values (1,"Aravind","2022-02-15","0016871242",1,6);
insert into patient values (2,"Vardhan","2022-02-20","0019861331",2,6);
insert into patient values (3,"Sai Harsha","2022-03-05","0019823837",3,7);
insert into patient values (4,"Sampath","2022-02-22","0013253262",4,7);
insert into patient values (5,"Raghavendra","2022-03-10","0012346532",5,7);

select * from patient;


insert into blood values (1,"A+",13,80,1,1);
insert into blood values (2,"B-",11,70,2,2);
insert into blood values (3,"O-",12,50,3,3);
insert into blood values (4,"B+",27,120,4,4);
insert into blood values (5,"O+",3,412,5,5);

select * from blood;


