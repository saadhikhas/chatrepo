select name, contact from ambulances where location = 'Dothan, AL' and servicing = false;
select location, count(location) from ambulances where servicing = false group by location;
update ambulances set current_destination = '' where servicing = false;

select * from blood_banks;

select distinct(location) from hospitals;
select name, location from hospitals where location = 'Geneva, AL';
select id from hospitals where location = 'Geneva, AL';

select content from reviews where city='Geneva' and hospital_id=(
	select id from hospitals where name='Wiregrass Medical Center'
)

insert into reviews values((select max(id)+1 from reviews), 'Geneva', 
	(select id from hospitals where name='Wiregrass Medical Center'), 'Excellent, trained doctors')
	
select * from ambulances order by id;

select * from ambulance_reviews;

select id from ambulances where name = 'Champion EMS'
insert into ambulance_reviews values(1, 'Dothan', 1, 'Comfortable')
delete from ambulance_reviews where content = 'Superfast service'

select * from hospitals;
select * from hospitals where location = 'Birmingham, AL';

select * from blood_donors;

select name, blood_groups[1] from blood_banks where location = 'California';
select blood_groups[1] from blood_banks where id = 1;
select distinct(location) from blood_banks;