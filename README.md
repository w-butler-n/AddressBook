# Rails exercise :
Making a small Address Book app with these features:
- CRUD (listing, display, create, edit, delete contacts)
- to upload a picture attached to a contact
- to tag a contact
- to export a contact in PDF format

-------------------------------------------------------------------------------------------------------------------------------------

Install Codebase

Clone the git repository

$ git clone https://github.com/w-butler-n/AddressBook.git
$ cd addressBook
$ bundle


Create database and run migrations

$ rake db:create db:migrate

Note:
go to db/migrate/20160930093613_add_paperclip_to_contact.rb and remove the "#" and save your file.
Then run:
$ rake db:migrate


Run the rails server

$ rails s

View Application

From a web browser access the site via localhost:3000

Test suite

RSpec and Capybara used for Integration and Unit tests

$ rspec