# technical-interview-ruby
Ruby Technical Interview

Setup:
- Install Ruby 2.3 with the bundler gem
```
\curl -sSL https://get.rvm.io | bash -s stable --ruby=2.4 --with-gems="bundler"
```
- Install all required gems
```
bundle install
```
- Clone the repository


### 1. Programming
- Navigate to the `technical-interview-ruby` directory
- Run the following:
```
rspec programming.rb -f doc
```

### 2. Web Front-End Test
- Download and install Chrome browser [https://www.google.co.uk/chrome/browser]
- Download and install the chromedriver [https://chromedriver.storage.googleapis.com/index.html?path=2.30/]
- Move the chromedriver file into a directory other than "Downloads", and add that directory to the $PATH system variable  
- Navigate to the `technical-interview-ruby` directory
- Run the following:
```
bundle exec cucumber -t @ui -f html -o report.html
open report.html
```

### 3. Web Service Test
- Navigate to the `technical-interview-ruby` directory
- Run the following:
```
bundle exec cucumber -t @soap -f html -o report.html
open report.html
```


#### Notes:
- I intentionally didn't include the "Programming" section in a feature file - because I'm only meant to calculate the length of the longest ordered array - not necessarily verify the length. This was essentially a seperate 'tool', which warrants its own script.
- I didn't use the page-object gem for the front end tests because I like to also confirm which page I am on when creating an instance of the Page Object. This ususally requires access to the CMS so that I can confirm for example that "https://en.wikipedia.org/wiki/Main_Page" is the main content page, and not another ordinary content page. That information is usually obtainable due to a page's path or template or specific components on the page.

