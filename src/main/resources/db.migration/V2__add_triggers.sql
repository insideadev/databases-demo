CREATE FUNCTION trigger_update()
    RETURNS TRIGGER
    LANGUAGE PLPGSQL
AS $$
BEGIN
    UPDATE students SET updated_datetime = current_date;
END;
$$

CREATE TRIGGER update_trigger
    AFTER UPDATE
    ON students
    FOR EACH STATEMENT
EXECUTE PROCEDURE trigger_update();