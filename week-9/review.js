// pseudocode:
// create a structure where grocery list(s) and actionable tasks for list(s) will be stored 
// create function that will make a new list
// create a function to add list items with quantity to list. When item is initially added , make default quantity = 1.
// create function that removes items from list. Function should accept one parameter which will be an item name. Item and quantity will be removed completely.
// create function that will alter only the quantity of specified list item. 
//  cerate function that will print list to the screen in an organized, readable fashion.

// Initial Solution:

// create a structure where list items and quantities and actionable tasks will be stored :

var groceryListCreator = {
  
}


var groceryListCreator = {
// create function that will make a new list  
  newList: function(listName) {
     groceryListCreator[listName] = {};
  },
// create a function to add list items with quantity to list. When item is initially added , make default quantity = 1:
  addItem: function(listName,item, quantity) {
   groceryListCreator[listName][item] = quantity;
    if(quantity === undefined) {
     groceryListCreator[listName][item]= 1;
    }
   else {
     groceryListCreator[listName][item] = quantity;
   }
  },
// create function that removes items from list. Function should accept one parameter which will be an item name. Item and quantity will be removed completely
  deleteItem: function(listName,item) {
    delete groceryListCreator[listName][item];
  },
//  create function that will print list to the screen in an organized, readable fashion.
  printList: function(listName) {
    for(var item in groceryListCreator[listName]) {
      console.log("item:" + item + " Quantity:" + groceryListCreator[listName][item]);
    }
  }  
}


groceryListCreator.newList("myList");
groceryListCreator.addItem("myList","beef");
groceryListCreator.addItem("myList","shuga",5);

console.log(groceryListCreator.myList);
groceryListCreator.printList("myList")
// console.log(groceryListCreator.myList)

// Reflections
// Q:What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
// A:This Challenge helped solidify my working knowledge of how to effectively structure objects in and nested data structures in JS. It also helped me get a better grasp on for-in loops for iterating over properties in objects.

// Q:What was the most difficult part of this challenge?
// A:I think the most difficult part was strategically planning the layout of this program in terms of flow control and in a way that would be most user friendly.

// Q:Did an array or object make more sense to use and why?
// An object made more sense for this challenge because I needed a structure that could hold property names paired with values.
