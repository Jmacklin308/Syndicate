extends Node

#Labels
var label_totalCashInBank : Label;
var label_cleanCashOnHand : Label; 
var label_dirtyCashOnHand : Label; 


func _ready() -> void:
	randomize()

	#load labels
	label_cleanCashOnHand = $"../Label_CashOnHand"
	label_dirtyCashOnHand = $"../Label_DirtyCash"
	label_totalCashInBank = $"../Label_TotalInBank"
	
func _process(delta: float) -> void:
	update_labels()

	
func update_labels():
	label_totalCashInBank.text = "Bank: $" + "%.2f" % GlobalData.moneyInBank
	label_cleanCashOnHand.text = "Clean Cash: $" + "%.2f" % GlobalData.cleanCash
	label_dirtyCashOnHand.text = "Dirty Cash: $" + "%.2f" % GlobalData.dirtyCash
