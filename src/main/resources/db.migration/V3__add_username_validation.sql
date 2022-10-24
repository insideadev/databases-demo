alter table students
    add constraint check_name
        check (name NOT LIKE '%@%' AND name NOT LIKE '%#%'AND name NOT LIKE '%$%');