select actor_id, director_id from ActorDirector a1 group by actor_id, director_id having count(*) > 2
