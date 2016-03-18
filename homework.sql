Select
   film.title film_title,
   sum(film.rental_rate) film_rate,
   count(inventory.film_id) film_count,
   sum(film.rental_rate) * count(inventory.film_id) 합계
From
   rental, film, inventory
Where
   film.film_id=inventory.film_id
   AND
   inventory.inventory_id=rental.rental_id
Group by
   1
;