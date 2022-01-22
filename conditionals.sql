SELECT COUNT(book_id),
	SUM(IF(`year`< 1950, 1,0)) AS '<1950',
	SUM(IF(`year` >= 1950 AND `year` < 1990, 0,1)) AS '>1990',
	SUM(IF(`year` >= 1990 AND `year` < 2000, 1,0)) AS '<2000',
	SUM(IF(`year` >= 2000, 1,0)) AS '<hoy'
	FROM books;