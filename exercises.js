class Shop {
  constructor(id, name) {
    this.id = id;
    this.name = name;
  }
}

class Order {
  constructor(shopId, amount, month, fulfilled) {
    this.shopId = shopId;
    this.amount = amount;
    this.month = month;
    this.fulfilled = fulfilled;
  }
}

const allShops = [
  new Shop(1, "Atlantis"),
  new Shop(2, "Rustic Range"),
  new Shop(3, "Golden Apple"),
  new Shop(4, "Cascade Corner")
];

const allOrders = [
  new Order(1, 230, 5, true),
  new Order(1, 145, 5, true),
  new Order(1, 600, 6, false),
  new Order(2, 55, 5, true),
  new Order(2, 39, 6, false),
  new Order(3, 180, 5, true),
  new Order(3, 490, 5, true),
  new Order(3, 1250, 5, true),
  new Order(3, 480, 6, true),
  new Order(3, 535, 6, false),
  new Order(3, 499, 6, false),
  new Order(4, 300, 5, true),
  new Order(4, 275, 5, true),
  new Order(4, 35, 6, false),
  new Order(4, 79, 6, false)
];




// Your employer has multiple shops with associated orders.
// In order to get better insights into their sales operations
// you have been tasked with getting some reporting statistics
// from their sales data.

// Use `node ./exercises.js` to run your solution.
// Use `console.log()` to display answers.

// See class definitions above for data structure.

// Put your code here

// 1a. Display the names of the shops

// 1b. Display the sum of the shop's fulfilled orders after the name

// 2. Display the name of the shop that has the largest unfulfilled order

// 3. Display the name of the shop that had the least orders in May
