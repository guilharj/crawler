SELECT count(1) FROM "Items" where name= 'item';
SELECT count(1), data ->> 'locationCity'  FROM "Items" where name= 'item' group by data ->> 'locationCity' order by count(1) desc;


SELECT data->> 'model' , AVG(TO_NUMBER(right(data ->> 'price',-4),'999G9999G99')) , count(1) FROM "Items" where name='item' group by data->> 'model'  order by count(1) desc LIMIT 1000;

