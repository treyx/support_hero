## [Support-Hero](https://support-hero-app.herokuapp.com)
#### Team Scheduling Application
---

[![Build Status](https://travis-ci.org/treyx/support_hero.svg)](https://travis-ci.org/treyx/support_hero)
[![Code Climate](https://codeclimate.com/github/treyx/support_hero/badges/gpa.svg)](https://codeclimate.com/github/treyx/support_hero)

### Synopsis

The purpose of this application is to store and display the on-duty schedule for a team. The admin can schedule a block of heroes by inputting an array of names into a form. The heroes are allowed to swap or drop shifts as they please.

### Installation Steps

* clone this repository and run `bundle && bundle exec rake db:setup`
* To start a development server run `rails s Puma`
* The development database is seeded with users and shifts
* All passwords are set to `pw` by default
  - admin -- login: `admin` password: `pw`
  - hero -- login: `Boris` passwod: `pw`


* This project is using [Travis](https://travis-ci.org/treyx/support_hero) to build, test, and deploy to Heroku
* To deploy your own production version download the [Heroku Toolbelt](https://toolbelt.heroku.com/) and run `Heroku Create && Heroku Open`


* An array for testing the schedule assignment.
* Login as an admin and navigate to the shift assignment page.
* ```['Sherry', 'Boris', 'Vicente', 'Matte', 'Jack', 'Sherry','Matte', 'Kevin', 'Kevin', 'Vicente', 'Zoe', 'Kevin','Matte', 'Zoe', 'Jay', 'Boris', 'Eadon', 'Sherry','Franky', 'Sherry', 'Matte', 'Franky', 'Franky', 'Kevin','Boris', 'Franky', 'Vicente', 'Luis', 'Eadon', 'Boris','Kevin', 'Matte', 'Jay', 'James', 'Kevin', 'Sherry','Sherry', 'Jack', 'Sherry', 'Jack']```


### Testing

To run the tests just run `bundle exec rspec`

### License

MIT License

Copyright (c) 2015 Trey Tomlinson

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
