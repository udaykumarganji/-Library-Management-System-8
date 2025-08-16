
-- 1. Stored Procedure: Get all issued books for a given member
DELIMITER //
CREATE PROCEDURE GetIssuedBooksByMember(IN memberName VARCHAR(100))
BEGIN
    SELECT m.Name, b.Title, i.IssueDate, i.ReturnDate
    FROM Members m
    JOIN IssuedBooks i ON m.MemberID = i.MemberID
    JOIN Books b ON i.BookID = b.BookID
    WHERE m.Name = memberName;
END //
DELIMITER ;

-- Example call:
-- CALL GetIssuedBooksByMember('Alice Smith');


-- 2. Stored Function: Get total number of books issued by a member
DELIMITER //
CREATE FUNCTION CountBooksByMember(memberID INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total INT;
    SELECT COUNT(*) INTO total FROM IssuedBooks WHERE MemberID = memberID;
    RETURN total;
END //
DELIMITER ;

-- Example usage:
-- SELECT CountBooksByMember(1);
