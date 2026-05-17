SELECT lib.book_id, lib.title, lib.author, lib.genre, lib.publication_year, count(brw.book_id) AS current_borrowers 
FROM library_books lib 
LEFT JOIN borrowing_records brw ON lib.book_id = brw.book_id 
WHERE brw.return_date IS NULL
GROUP BY lib.book_id, lib.total_copies
HAVING lib.total_copies - current_borrowers = 0
ORDER BY current_borrowers DESC, lib.title
