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
	assert_eq(hero.health, hero.max_health, "Hero should start with full health.")
