## Mars Rover
This project solves a coding problem called Mars Rover, which mimics the navigation of rover squad onto a plateau on Mars.

## Motivation
This code is submitted as a part of the ThoughtWorks Tech Test.

## Build status
[![Build Status](https://travis-ci.com/m-budryte/Mars_Rover.svg?branch=master)](https://travis-ci.com/m-budryte/Mars_Rover)

## Tech/framework used
**Built with**
- Ruby 2.6.0

**Linter**
- Rubocop 0.67.2

## Features
Current version allows to provide instructions to the rover squad, launch them and receive the string with rovers' final locations.

## Installation

After downloading this repo, navigate to its root and run the following command:

```
bundle install
```

/Make sure you have bundler 2.0.0+ installed/
/If you receive errors, try the following:/

```
gem update --system
gem install bundler
bundle install
```


## Tests
This project uses RSpec testing library. It also uses `simplecov` for code coverage. The total code coverage is shown in the console and the details for each file can be found in the `/coverage/index.html` file.

To run tests:

```
rspec
```

Here is the latest info for test coverage:
![Alt text](CodeCoverage.png?raw=true "Code Coverage Screenshot")

## How to use?
- The input for rovers is loaded into Control_unit object, using `.load_instructions(instructions_string)` method
- The instruction are parsed, using `.parse_instructions` method
- The squad is launched, using `.launch_squad` method. When the rover stops, it reports its final location.

To try the program in action, open `playground.rb` file and edit the input string according to your preference. The instructions in the file will guide you along.

Then open console and run
```
ruby playground.rb
```
The output of the console will be the information on the final location of the rovers.


**NB: there is some input used inside the tests as well**
