SELECT
	p.productname,
	p.categoryid,
	SUM(od.quantityordered * od.quotedprice) AS totalsales
FROM
	products p
INNER JOIN order_details od ON
	od.productnumber = p.productnumber
GROUP BY
	p.productname,
	p.categoryid
HAVING
	(SUM(od.QuotedPrice * od.QuantityOrdered) > (
	SELECT
		AVG(SumCategory)
	FROM
		(
		SELECT
			p2.categoryid,
			SUM(od2.quotedprice * od2.quantityordered) AS SumCategory
		FROM
			products AS p2
		INNER JOIN order_details AS od2 ON
			p2.productnumber = od2.productnumber
		GROUP BY
			p2.categoryid,
			p2.productnumber) AS s
	WHERE
		s.categoryid = p.categoryid
	GROUP BY
		categoryid ))