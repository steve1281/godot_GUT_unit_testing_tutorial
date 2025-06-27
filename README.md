

Learning about UNIT testing in Godot.  

Reference:
	
Based on watching youtube video: [How to unit test with GUT](https://www.youtube.com/watch?v=h5HmdD0cAps)  by kahanscious
(I have no affiliation, just admiration, with video. Please watch it for details)


Notes on unit tests in general.  Most langauges have a way of calling and running code you have written to see if the behaviur is as expected.
Examples include:
	- Java - JUnit
	- JavaScript - Jest
	- C# - MSTest
	- pytest or unittest
	- etc

Setting up GUT:
	- create a folder called "test"  (need to investigate this, not sure why we need this yet)
	- create a folder called "unit_testing" (a place to keep your code as per this video)
	- AssetLib, search for and install GUT by bitwes
	- Project Settings - Plugins - Enable 
	- Restart

Add a file in unit_testing called hero.gd
Add a file in test called test_hero.gd
NOTE: test_ is an important part of GUT (similair to other testing frameworks)

Need to extend from *GutTest*

Some tweaks to the Config he recommends:
	- exit on finish
	- Font to Default, size 10
	- Include Subdirs, select res://test (note:  you can set this up to taste)

Add test (see code) note that the tests are prefixes with *_test*  

"Run All"  - will run all the tests

I got an error: *ERROR: res://addons/gut/gui/RunAtCursor.gd:61 - Invalid access to property or key 'inner_class' on a base object of type 'Nil'.*
when I ran it the first time, but it was OK on the second.  

Restart project, and see if the error returns ...  It appears to be OK.



After putting the tests as per video, you can Run All ans see the output.
The output looks like a *pytest* run:
	
	```
	

res://test/test_hero.gd
* test_initial_health
* test_take_damage
* test_heal
* test_damage_wrong
	[Failed]:  [70] expected to equal [80]:  This test will fail - wrong calculation.
	  at line 32
* test_healing_overflow
	[Failed]:  [100] expected to equal [150]:  This test will fail - trying to heal beyond max
	  at line 36
[WARNING]:  Test script has 2 unfreed children.  Increase log level for more details.
3/5 passed.




==============================================
= Run Summary
==============================================

res://test/test_hero.gd
- test_damage_wrong
	[Failed]:  [70] expected to equal [80]:  This test will fail - wrong calculation.
		  at line 32
- test_healing_overflow
	[Failed]:  [100] expected to equal [150]:  This test will fail - trying to heal beyond max
		  at line 36

---- Totals ----
Warnings          1

Scripts           1
Tests             5
  Passing         3
  Failing         2
Asserts           5
Time              0.121s


---- 2 failing tests ----

```
