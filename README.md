# Rails Notes coding challenge
**Rails Notes coding challenge** is a coding challenge for Rails developers applying for a job at Pangea Technology.

## Scenario
So here you are! You decided to apply for a job at Pangea and now we are asking you to help us create a Notes App in Rails.

The app should have basic authentication with email and password.
You don't have to store any other information about the user.
Every user can sign up and create notes.
A note has a **title** and a **body**.

The user should be able to see a list of his notes, create new notes and should be able to edit them.

He should be able to collaborate with his friends and edit his notes with them through a link (like in Google Docs).
The user has to see the live updates, however not necessarily the cursors or any other thing. Only the text should change.

Bonus: Add two types of links (view only, view and edit)
Only editing is mandatory.

You don't have to spend a lot of time on styling.
An input field for the title and a text field for the body are enough for the note.
The body should be plain text without markup. (bold, italic etc. are not necessary)

The focus here is on your backend skills.

## Technical specifications
Ruby version: 2.7.0
Rails version: '>= 6.0.0'

## Mission
- [x] Generate a rails app
- [x] Copy this README.md to your app
- [x] add user authentication to your app
- [x] Create CRUD for the notes
- [x] Add collaboration feature
- [x] Add a guide in this readme under Project Setup on how to run your project. Also add which database you used.
- [x] Push your code to Github
- [x] Submit your git repository to hr@pangea-technology.com and describe your changes precisely

## Bonus
- [x] Add view only option to collaboration link
- [x] Add the email of users collaborating on the note now with the current user
- [x] Add text search to the app which searches in all notes


## Please note
- Pay attention to your code style and structure, don't ignore the eslint hints.
- Don't pay special attention for design and styling (the functionality is enough)
- Please commit your changes often and write good and precise commit messages

## Feel free to
- Use whatever frontend you like (erb,haml or frontend frameworks) or even split backend and frontend


## Project setup

#### prerequisites
* Yarn installed
* Webpacker installed

You can use this [link](https://stackoverflow.com/a/58252546/8436554) for making it easy for you to install the environment.

#### problems you may face
If you faced `Increasing-the-amount-of-inotify-watchers` while trying to access the `http://localhost:3000`,
follow this [link](https://github.com/guard/listen/wiki/Increasing-the-amount-of-inotify-watchers) to solve it.

#### steps
* clone repo `git clone https://github.com/AmrAdelKhalil/notes_app.git`
* change directory to the repo
* make sure the `prerequisites` are installed and the yarn is updated
* run `bundle install`
* run `rake db:create`
* run rake `db:migrate`
* run the server using `rails s`

#### DB
* I used `sqlite` the default which comes with rails

#### More info
* You can start using `localhost:3000/users/sign_up` where you can make a new user
* You can create new Note after that you can show it and find the two types of link `view` and `edit`
* The hyperlink pages are using ajax requests, So wait for 5 seconds and the collaborators will be updated
* Making changes will also be reflected within 3 seconds.

#### Things to be enhanced
* I can enhance the getting collaborators info by storing this in a cahce (like Redis)
* Using a background job to clear the collaboration table which will enhance the way we save important
data and not to remove the old data (keeping the collaborators table small as possible)
