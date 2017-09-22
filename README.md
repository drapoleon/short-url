Short URL generator
-----------------------------------------------------------------------------------------------------------------------------
This rails app takes in a URL (address in 'address bar') and generates a corresponding shorter URL which can be later used at any place over internet.

Getting Started

To clone the repository:
-----------------------------------------------------------------------------------------------------------------------------
1.On GitHub, navigate to the main page of the repository.

2.Under the repository name, click Clone or download.

3.In the Clone with HTTPs section, click  to copy the clone URL for the repository.

4.Open Terminal.(or Command Prompt with Ruby on Rails/Gitbash for windows users)

5.Change the current working directory to the location where you want the cloned directory to be made.

6.Type git clone, and then paste the URL you copied in Step 2.

7.Press Enter. Your local clone will be created.


Prerequisites
-----------------------------------------------------------------------------------------------------------------------------
This projects needs

Ruby 2.4.0
Rails 5.1.4
Postgresql for database

to start with.Please make sure you using correct version if you are using 'rvm'.

Installing
-----------------------------------------------------------------------------------------------------------------------------
1.Once you have cloned the repository, change your working directory in terminal to the one with same name as repository.

2. Make sure you have same version as mentioned above.

3. Run 'bundle install' to install all the dependencies and libraries used for the project.

4. Run 'rake db:create' (for postgresql) then 'rake db:migrate' in terminal. 

5. Run 'rails server'/ 'rails s' in terminal.

6. Open 'localhost:3000' on web browser.
