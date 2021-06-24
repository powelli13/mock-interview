require 'date'

class Shop
    def initialize(shop_id, shop_name)
        @id = shop_id
        @name = shop_name
    end

    def id
        @id
    end

    def name 
        @name
    end
end

class Order
    def initialize(shop_id, dollar_amount, order_date, fulfilled)
        @shop_id = shop_id
        @amount = dollar_amount
        @order_date = order_date
        @fulfilled = fulfilled
    end

    def shop_id
        @shop_id
    end

    def amount
        @amount
    end

    def order_date
        @order_date
    end

    def fulfilled
        @fulfilled
    end
end

all_shops = [
    Shop.new(1, "Atlantis"),
    Shop.new(2, "Rustic Range"),
    Shop.new(3, "Golden Apple"),
    Shop.new(4, "Cascade Corner")
]

all_orders = [
    Order.new(1, 230, Date.new(2021, 5, 13), true),
    Order.new(1, 145, Date.new(2021, 5, 17), true),
    Order.new(1, 600, Date.new(2021, 6, 12), false),
    Order.new(2, 55, Date.new(2021, 5, 10), true),
    Order.new(2, 39, Date.new(2021, 6, 7), false),
    Order.new(3, 180, Date.new(2021, 5, 5), true),
    Order.new(3, 490, Date.new(2021, 5, 7), true),
    Order.new(3, 1250, Date.new(2021, 5, 12), true),
    Order.new(3, 480, Date.new(2021, 6, 2), true),
    Order.new(3, 535, Date.new(2021, 6, 8), false),
    Order.new(3, 499, Date.new(2021, 6, 18), false),
    Order.new(4, 300, Date.new(2021, 5, 4), true),
    Order.new(4, 275, Date.new(2021, 5, 28), true),
    Order.new(4, 35, Date.new(2021, 6, 4), false),
    Order.new(4, 79, Date.new(2021, 6, 21), false)
]

# Your employer has multiple shops with associated orders.
# In order to get better insights into their sales operations
# you have been tasked with getting some reporting statistics
# from their sales data.

# See class definitions above for data structure.

# 1a. Display the names of the shops

# 1b. Display the sum of the shop's fulfilled orders after the name

# 2. Display the name of the shop that has the largest unfulfilled order

# 3. Display the name of the shop that had the least orders in May of 2021

# Put your code here
#1a
for s in all_shops do
    # 1 a and b
    print s.name
    shop_orders = all_orders.select{|o| o.shop_id == s.id && o.fulfilled == true}
    shop_order_amounts = []
    for o in shop_orders do
        shop_order_amounts.push(o.amount)
    end
    shop_sum = shop_order_amounts.reduce(:+)
    print " "
    print shop_sum
    print "\n"
end
# 2
unfulfilled_orders = all_orders.select{|o| o.fulfilled == false}
biggest_unfulfilled_order = unfulfilled_orders.max{|a, b| a.amount <=> b.amount}

shop_with_biggest = all_shops.select{|s| s.id == biggest_unfulfilled_order.shop_id}.first
print shop_with_biggest.name
print "\n"

# 3 
orders_in_may = all_orders.select{|o| o.order_date.mon == 5}
grouped_in_may = orders_in_may.group_by{|o| o.shop_id}
key_with_lowest = 0
min_order_num = 1000
for gk in grouped_in_may.keys do
    print gk
    print " "
    print grouped_in_may[gk].length
    if grouped_in_may[gk].length < min_order_num then
        min_order_num = grouped_in_may[gk].length
        key_with_lowest = gk
    end
    print "\n"
end

shop_with_lowest = all_shops.select{|s| s.id == key_with_lowest}.first
print shop_with_lowest.name
print "\n"
