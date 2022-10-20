select genre_name, COUNT(*) from genre g
join executor_genre eg on g.genre_id = eg.genre_id 
group by genre_name
order by COUNT(*);

select album_name, COUNT(*) from album a 
join track t on a.album_id = t.album_id 
where a.album_year between 2019 and 2020
group by album_name;

select a.album_name, AVG(t.duration) from album a 
join track t on a.album_id = t.album_id
group by album_name
order by AVG(t.duration);

select e.executor_name from executor e 
join executor_album ea on e.executor_id = ea.executor_id 
join album a on ea.album_id = a.album_id 
where not (e.executor_name = (select e.executor_name from executor e 
join executor_album ea on e.executor_id = ea.executor_id 
join album a on ea.album_id = a.album_id 
where a.album_year = 2020))
order by e.executor_name;

select c.collection_name from collection c 
join track_collection tc on c.collection_id = tc.collection_id 
join track t on tc.track_id = t.track_id 
join album a on t.album_id = a.album_id 
join executor_album ea on a.album_id = ea.album_id 
join executor e on ea.executor_id = e.executor_id 
where e.executor_name = 'Linkin Park';

select a.album_name, COUNT(*)  from album a 
join executor_album ea on a.album_id = ea.album_id 
join executor_genre eg on ea.executor_id = eg.executor_id 
join genre g on eg.genre_id = g.genre_id 
group by a.album_name
having COUNT(*) > 1;

select t.track_name, tc.collection_id  from track t 
left join track_collection tc on t.track_id = tc.track_id 
where tc.collection_id is null;

select e.executor_name, t.duration  from executor e 
join executor_album ea on e.executor_id = ea.executor_id 
join track t on ea.album_id = t.album_id 
where t.duration = (select MIN(t2.duration) from track t2);

select a.album_name, COUNT(t.track_id) from album a 
join track t on a.album_id = t.album_id 
group by a.album_name 
having COUNT(t.track_id) = (select COUNT(t.track_id) from album a 
join track t on a.album_id = t.album_id 
group by a.album_name
order by COUNT(t.track_id)
limit 1);


