
def shopping_list
{
    :sweets => ["soda", "candy", "potato chips"],
    :protein => {
        :meat => ["chicken", "fish", "steak"],
        :other => ["eggs", "nuts","beans"]
    },
    :dairy => ["milk", "yogurt", "cheese"],
    :fruits => ["bananas", "oranges", "apples", "grapes"],
    :vegetables => ["cabbage", "broccoli", "tomatoes", "carrots"],
    :grains => ["crackers", "rice", "bread", "pasta", "cereal"]
}
end

def vegetarian_ingredients
	list = shopping_list
	list[:protein].delete(:meat)
	list[:protein][:other].delete("eggs")
	list
end

def ketogenic_ingredients
	list = shopping_list
	list.delete(:sweets)
	list[:dairy].delete("milk")
	list[:dairy].delete("yogurt")
	list.delete(:fruits)
	list.delete(:grains)
	list
end

def mediterranean_ingredients
	list = shopping_list
	list.delete(:sweets)	
	list[:protein][:meat].delete("steak")
	list[:protein][:other].delete("beans")
	list[:protein][:other].delete("eggs")
	list
end




def vegan_ingredients
	list = shopping_list
	list[:protein].delete(:meat)
	list[:protein][:other].delete("eggs")
	list.delete(:dairy)	

	list
end

def remove_allergens(allergen)
	allergen_list = allergen
	# list[:protein].delete(:meat)
	allergen_list[:protein][:other].delete("nuts")
	allergen_list
	# binding.pry
end