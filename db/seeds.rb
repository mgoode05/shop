# User.destroy.all
Product.destroy_all
# users = User.create(
#     name: 'Mike Goode', 
#     email: 'goode@gmail.com'
#     )

products = [{
    hat_type: 'Dad Hat',
    price: '3.99',
    quantity: 'TBD',
    quick_strike: true,
    description: 'blah blah blah hoe'},
    {
    hat_type: 'Snapback',
    price: '2.99',
    quantity: 'TBD',
    quick_strike: true,
    description: 'Blah blah blah'}
]

Product.create(products)