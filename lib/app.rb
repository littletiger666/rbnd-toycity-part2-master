require 'json'
require 'artii'
require 'date'

def start
	setup_files
	create_report
end


def setup_files
	path = File.join(File.dirname(__FILE__), '../data/products.json')
	file = File.read(path)
	$products_hash = JSON.parse(file)
	$report_file = File.new("report.txt", "w+")
end

def create_report
	ascii_art "Sales Report"
	print_date
	print_data
end

def ascii_art (str)
	a = Artii::Base.new
	$report_file.puts a.asciify(str)
end

# Print "Sales Report" in ascii art
# Print today's date
def print_date
	$report_file.puts "Today's Date: #{DateTime.now.strftime('%m/%d/%Y')}"
end

def print_data
	ascii_art "Products"
	make_products_section
	ascii_art "Brands"
	make_brands_section
end
# Print "Products" in ascii art

# For each product in the data set:
def make_products_section
  toy_name
	toy_price
	total_purchases
	total_sales
	average_price
	average_discount
end
	# Print the name of the toy
def toy_name
end
	# Print the retail price of the toy
def toy_price
end
	# Calculate and print the total number of purchases
def total_purchases
end
	# Calculate and print the total amount of sales
def total_sales
end
	# Calculate and print the average price the toy sold for
def average_price
end
	# Calculate and print the average discount (% or $) based off the average sales price
def average_discount
end

# Print "Brands" in ascii art
def make_brands_section
	brand_name
	brand_toy_stock
	average_price_brand
	total_sales_brand
end
# For each brand in the data set:
	# Print the name of the brand
def brand_name
end
	# Count and print the number of the brand's toys we stock
def brand_toy_stock
end
	# Calculate and print the average price of the brand's toys
def average_price_brand
end
	# Calculate and print the total sales volume of all the brand's toys combined
def total_sales_brand
end
start
