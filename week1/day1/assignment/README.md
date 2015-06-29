# Week One, Day One: Generate some lipsum

## Description

From time to time, you're going to want some filler text for mockups and things.

Today's assignment is to create a command line generator for various types of lipsum - or filler text.

## Objectives

* Write some Ruby.
* Make a script that can be run from the command line.
* Understand control flow and variables.
* Strings.

## Details

### Deliverables & requirements

* A ruby file called `lipsum_generator.rb` that can be run from the command line using `ruby lipsum_generator.rb <argument>`.
* When run, it will return different paragraphs of lipsum based on the argument.
* There should be at least three different options for the produced lipsum.
* If no argument is given, or if the argument is unrecognized, it should display a helpful message to the user, and perhaps list of the available options.

### Hard mode

Sometimes, I might want more than one paragraph of dummy text. Make it so I can pass a second argument for how many paragraphs of text I want. It should still run with no second argument and default to a single paragraph.

### Nightmare mode

Hard mode, plus:

* Make it so I can run it directly without the `ruby` in front. As in: `lipsum_generator.rb <argument> <argument>`
* Make it so it also copies the text to my clipboard. Hint: Take a look at the [`system` method](http://ruby-doc.org/core-2.2.0/Kernel.html#method-i-system). On a Mac, `pbcopy` copies whatever is passed to it to your clipboard.

## Possible Lipsums

Rather than write the dummy text yourself, I suggest you grab them from any of the following:

* [The Old Fashioned](http://www.lipsum.com)
* [Hipster](http://hipsum.co)
* [Samuel L. Ipsum](http://slipsum.com)
* [Fillerama](http://chrisvalleskey.com/fillerama/)
* [NotLoremIpsum](http://notloremipsum.com)

Of note: We just want the text here, not any HTML. So, strip any `<p></p>` tags before you add it to your script. For hard mode and on, don't worry about getting fancy, just spit out the same paragraph multiple times.
