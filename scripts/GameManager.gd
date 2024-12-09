extends Node

var score = 0 
var grape = 3


@onready var score_label = $ScoreLabel

func add_point(): 
	score += 1
	score_label.text = "You collected " + str(score) + " coins."
