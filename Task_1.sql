use Publishing;

-- 1
Select * from book
where author_id In (2, 4, 7);

-- 2
Select * from book
where pages between 500 and 650;

-- 3
Select NameBook from book
where NameBook like 'c%' or NameBook like 'a%';

-- 4
Select NameBook from book
join themes on themes.id = book.theme_id
where themes.NameTheme <> 'Computer science' and DrawingOfBook >= 20;

-- 5
Select NameBook from book
where PriceOfBook < 30;

-- 6
Select NameBook from book
where NameBook like 'C++%' and NameBook not like '%newbies';

-- 7
Select NameBook, themes.NameTheme, concat(author.firstName,' ', author.LastName) as Author from book
join themes on book.theme_id = themes.id
join author on book.author_id = author.id
where priceOfBook * 100 / pages < 10;

-- 8
Select * from shop
join country on shop.country_id = country.id
where nameCountry = 'Ukraine';