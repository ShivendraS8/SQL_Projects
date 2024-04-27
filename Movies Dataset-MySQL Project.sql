use etl1;
/*
1.Retrieve the names of all the Bollywood movies which are of drama
genre in the dataset.
*/
select 
	Movie_Name
    ,Genre
from movies_dataset
where Genre='drama';

/*
2.Retrieve the names of all the Bollywood movies of Amir Khan in the
dataset.
*/

select 
	Movie_Name
    ,Lead_Star
from movies_dataset
where Lead_Star = 'Aamir Khan';

/*
3.Retrieve the names of all the Bollywood movies which are directed
by RamGopal Verma in the dataset.
*/

select 
	Movie_Name
    ,Director
from movies_dataset
where Director = 'Ram Gopal Verma';

/*
4.Retrieve the names of all the Bollywood movies which have been
released over more than 1000 number of screens in the dataset.
*/

select 
	Movie_Name
    ,Number_of_Screens
from movies_dataset
where Number_of_Screens >1000;

/*
5.Retrieve the names of all the Bollywood movies which have
generated Revenue(INR) more than 700000000 in the dataset.
*/

select 
	Movie_Name
    ,Revenue
from movies_dataset
where Revenue >700000000;

/*
6.Retrieve the names of all the Bollywood movies which have budget
less than 1cr in the dataset.
*/

select 
	Movie_Name
    ,Budget
from movies_dataset
where Budget < 10000000;

/*
7.Retrieve the names of all the Bollywood movies which are flop in
the dataset.
*/

select 
	Movie_Name
    ,Budget
    ,Revenue
    ,(Budget-Revenue) as Loss
from movies_dataset
where Budget > Revenue ;

/*
8.Retrieve the names and profit of all the Bollywood movies in the
dataset.
*/

select 
	Movie_Name
    ,Budget
    ,Revenue
    ,(Revenue-Budget) as Profit
from movies_dataset
where Budget < Revenue ;

/*
9.Retrieve the names and loss of all the Bollywood movies in the
dataset.
*/

select 
	Movie_Name
    ,Budget
    ,Revenue
    ,(Budget-Revenue) as Loss
from movies_dataset
where Budget > Revenue ;

/*
10. Retrieve the names of all the Bollywood movies which have been
released on holidays in the dataset.
*/

select 
	Movie_Name
    ,Release_Period
from movies_dataset
where Release_Period = 'Holiday';

/*
11. Retrieve the names of all the Bollywood movies which have lead
star as Akshay Kumar and directed by Priyadarshan in the dataset.
*/

select 
	Movie_Name
    ,Lead_Star
    ,Director
from movies_dataset
where Director = 'Priyadarshan'
and Lead_Star = 'Akshay Kumar';

/*
12. Retrieve the names of all the Bollywood movies starting with ‘a’
in the dataset.
*/
select 
	Movie_Name
from movies_dataset
where UPPER(Movie_Name) like 'A%';

/*
13. Retrieve the names of all the Bollywood movies ending with ‘a’ in
the dataset.
*/

select 
	Movie_Name
from movies_dataset
where UPPER(Movie_Name) like '%A';

/*
14. Retrieve the names of all the Bollywood movies having ‘a’ at
second place of the name in the dataset.
*/

select 
	Movie_Name
from movies_dataset
where UPPER(Movie_Name) like '_A%';

/*
15. Retrieve the names of all the Bollywood movies having music of
amit trivedi the dataset.
*/

select 
	Movie_Name
    ,Music_Director
from movies_dataset
where Music_Director = 'Amit Trivedi';

/*
16. Retrieve the names of all the comedy movies of Akshay Kumar in
the dataset.
*/

select 
	Movie_Name
    ,Genre
    ,Lead_Star
from movies_dataset
where Genre = 'Comedy'
and Lead_Star = 'Akshay Kumar';

/*
17. Retrieve the names of movies and star name starring khan in the
dataset.
*/

select 
	Movie_Name
    ,Lead_Star
from movies_dataset
where UPPER(Lead_Star) like '%KHAN%';

/*
18. Retrieve all the information of movies race and race2 in the
dataset.
*/
select 
	*
from movies_dataset
where Movie_Name IN ('RACE','RACE 2');

/*
19. Retrieve the names of all the thriller Bollywood movies in the
dataset.
*/

select 
	Movie_Name
    ,Genre
from movies_dataset
where Genre = 'thriller';

/*
20. Retrieve the names and budget of all the Bollywood movies
according to the highest budget to lowest budget in the dataset.
*/

select 
	Movie_Name
    ,Budget
from movies_dataset
order by Budget desc;

/*
21. Retrieve the names and budget of top 5 Bollywood movies with
highest budget in the dataset.
*/

select 
	Movie_Name
    ,Budget
from movies_dataset
order by Budget desc
limit 5;

/*
22. Retrieve the names of top 10 Bollywood movies with highest
revenue generation in the dataset.
*/

select 
	Movie_Name
    ,Revenue
from movies_dataset
order by Revenue desc
limit 10;


/*
23. Retrieve the names of top 5 movies of salman khan in the
dataset.
*/

select 
	Movie_Name
    ,Lead_star
from movies_dataset
where Lead_Star = 'Salman Khan'
limit 5;

/*
24. Retrieve the names of top 5 floped movies in the dataset.
*/

select 
	Movie_Name
    ,Budget
    ,Revenue
    ,(Budget-Revenue) as Loss
from movies_dataset
where Budget > Revenue 
order by Loss desc
limit 5;

/*
25. Retrieve the names of top 5 hit movies in the dataset.
*/

select 
	Movie_Name
    ,Budget
    ,Revenue
    ,(Revenue-Budget) as Profit
from movies_dataset
where Budget < Revenue 
order by Profit desc
limit 5;

/*
26. Which is the second movie released on maximum screens.
*/

select 
	Movie_Name
    ,Number_of_Screens
from movies_dataset
order by Number_of_Screens desc
limit 1 offset 1;

/*
27. Which is the 10th movie with highest budget.
*/

select 
	Movie_Name
    ,Budget
from movies_dataset
order by Budget desc
limit 1 offset 9;

/*
28. Which is the 2nd movie of Amitabh Bachchan with highest
budget.
*/

select 
	Movie_Name
    ,Budget
    ,Lead_Star
from movies_dataset
where Lead_Star = 'Amitabh Bachchan'
order by Budget desc
limit 1 offset 1;


/*
29. Which are the flopped movies of Akshay Kumar.
*/

select 
	Movie_Name
    ,Lead_Star
    ,Budget
    ,Revenue
    ,(Budget-Revenue) as Loss
from movies_dataset
where Budget > Revenue 
and Lead_Star = 'Akshay Kumar';

/*
30. With which director Sharukh Khan have given the biggest hit
*/

select 
	Movie_Name
    ,Lead_Star
    ,Director
    ,Budget
    ,Revenue
    ,(Revenue-Budget) as Profit
from movies_dataset
where Budget < Revenue
and Lead_Star = 'Shahrukh Khan'
order by Profit desc
limit 1;

