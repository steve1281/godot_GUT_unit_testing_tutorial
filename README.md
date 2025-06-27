

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
