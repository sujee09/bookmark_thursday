# Bookmark Manager

As a user,
So I can see everything I have bookmarked,
I want to be able to list all bookmarks.

![Bookmark Manager domain model](./diagram.png)



To setup the database you'll need to do the following:
Connect to psql
Create the database using the psql command CREATE DATABASE bookmark_manager;
Connect to the database using the pqsl command \c bookmark_manager;
Run the query saved in the file 01_create_bookmarks_table.sql