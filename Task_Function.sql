
select * from products

CREATE OR REPLACE FUNCTION get_products_listprice(listprice int)
RETURNS varchar AS $$
DECLARE g_p_listprice TEXT;
BEGIN
    if listprice <= 150 THEN g_p_listprice := 'bad';
		elseif listprice <= 200 THEN g_p_listprice := 'good';
		else g_p_listprice := 'excelent';
		end if;
		return g_p_listprice;
END;
$$ LANGUAGE plpgsql;

select get_products_listprice(201)

CREATE OR REPLACE FUNCTION cost_check(cost float)
RETURNS varchar AS $$
DECLARE c_check TEXT;
BEGIN
    if cost <= 53 THEN c_check := 'Poor';
		elseif cost <= 70 THEN c_check := 'Average';
		else c_check := 'Excelent';
		end if;
		return c_check;
END;
$$ LANGUAGE plpgsql;

select * from cost_check(150)