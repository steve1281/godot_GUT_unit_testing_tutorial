extends GutTest

var Hero = preload("res://unit_testing/hero.gd")
var hero: Hero


func before_each() -> void:
	hero = Hero.new()
	add_child(hero)
	await get_tree().process_frame   # wait for setup to complete


func after_each() -> void:
	hero.queue_free()

func test_initial_health() -> void:
	# check that a fresh hero has exactly max_health 
	assert_eq(hero.health, hero.max_health, "Hero should start with full health.")


func test_take_damage() -> void:
	# fresh hero takes 30 damage test
	hero.take_damage(30)
	assert_eq(hero.health, hero.max_health - 30, "Health should be reduced by damage amount.")


func test_heal() -> void:
	# take 50 health from player, than add 20 back.
	# hero.take_damage(50)   # this is the original approach - I dislike this because it assumes take_damage works.
	hero.health -= 50        # this approach bypasses code ans sets directly, so we only test one thing.
	hero.heal(20)
	assert_eq(hero.health, hero.max_health -30, "Health should increase by heal amount.")


func test_damage_wrong() -> void:
	# Example of a test that will fail.
	assert_eq(1,1)
	return
	hero.take_damage(30)
	assert_eq(hero.health, hero.max_health - 20, "This test will fail - wrong calculation.")


func test_healing_overflow() ->void:
	# add max_health to a fresh hero instance - this overflows the healing. Check that the Hero does not have more than max health.
	hero.heal(hero.max_health)
	assert_eq(hero.health, hero.max_health, "This test will fail - trying to heal beyond max")
