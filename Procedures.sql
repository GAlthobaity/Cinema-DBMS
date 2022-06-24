/*  NewMovie: A stored procedure that accept 6 arguments: Movie ID, title, 
genre, age rate, director, and production. This procedure’s purpose is to 
insert new movies to the database. */

Create Or Replace Procedure NewMovie (
MovID Movie. Movie_ID%Type,
 MovTitle Movie.Title%Type,
 MovGen Movie.Genre%Type,
 MovAgeR Movie.AgeRate%Type,
 MovDir Movie.Director%Type,
 MovProd Movie.Production%Type) As
Begin 
Insert Into Movie (Movie_ID, Title, Genre, AgeRate, Director, Production)
Values (MovID, MovTitle, MovGen, MovAgeR, MovDir, MovProd);
End NewMovie;
/
Exec NewMovie(25, 'Red Notice','Action','+13','Rawson T.',null);

--------------------------------------------------------------------

/* UpdateProduct: A stored procedure that accepts 2 arguments: Product ID 
and Price. This Procedure’s purpose is to update products’ price and if 
product is not found, add new product. */

Create Or Replace Procedure UpdateProduct (P_ID Product.Product_ID%Type,
                                           P_Price Product.Unit_Price%Type) as
price number;
Begin 
select unit_price into price
from product
where product_id = p_id;

Update Product
Set Unit_Price = P_Price
Where Product_ID = P_ID;

Exception
WHEN NO_DATA_FOUND THEN
Insert Into Product (Product_ID, Unit_Price)
Values (P_ID, P_Price);
End UpdateProduct;
/

--------------------------------------------------------------------

/* PriceCheck: A stored procedure that accept one argument: minPrice. This 
procedure’s purpose is to print all products ID which price is higher than 
minPrice using a cursor*/

CREATE OR REPLACE PROCEDURE PriceCheck(MinPrice number) AS

CURSOR executive IS
    SELECT product_id, unit_price
    FROM product
    WHERE unit_price > MinPrice;
BEGIN
    dbms_output.put_line('Product_ID'||'  '||'Unit_Price');
    FOR v_cursrec IN executive LOOP
       dbms_output.put_line(v_cursrec.product_id||'            '||v_cursrec.Unit_Price);
    END LOOP;

END PriceCheck;
/
exec PriceCheck(15);
