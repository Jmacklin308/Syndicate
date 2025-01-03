extends Node

#helpers
var totalSellers : int = 0


#helper functions
func add_seller(amount: int) -> bool:
	totalSellers += amount 
	return true
