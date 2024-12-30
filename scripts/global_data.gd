extends Node

var moneyInBank: float = 0
var dirtyCash: float = 0
var cleanCash: float = 0



func add_dirty_cash(amount: float) -> bool:
	dirtyCash += amount
	return true

func clean_cash(amount: float) -> bool:
	if dirtyCash <= 0:
		print("You aint got the dirty cash yo")
		return false
	
	var amountToRemove = 0
	
	#get max
	if amount > dirtyCash:
		amountToRemove = dirtyCash
	else:
		amountToRemove = amount
		
	dirtyCash -= amountToRemove
	cleanCash += amountToRemove
	return true

func deposit_cash(amount: float) -> bool:
	if cleanCash <= 0:
		print("You aint got the clean cash yo")
		return false
	
	var amountToTransfer = 0
	
	if amount > cleanCash:
		amountToTransfer = cleanCash
	else:
		amountToTransfer = amount
	
	cleanCash -= amountToTransfer
	moneyInBank += amountToTransfer
	return true
	

	
