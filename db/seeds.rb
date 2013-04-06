# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
checking = PaymentMethod.create(name: 'Checking')
credit = PaymentMethod.create(name: 'Credit Card')
cash = PaymentMethod.create(name: 'Cash')

creditCardBill = PaymentCategory.create(name: 'Credit Card Bill')
restaurant = PaymentCategory.create(name: 'Restaurants')
vacation = PaymentCategory.create(name: 'Vacation')
gas = PaymentCategory.create(name: 'Gas')

payments = []

# beginning balance, no category
balance = Payment.create(amount: 20000, purchaseDate: '1-Jan-2013', description: 'Beginning balance')
balance.paymentMethod = checking
payments << balance

bbq = Payment.create(amount: -27.34, purchaseDate: '13-Mar-2013', description: 'BBQ')
bbq.paymentCategory = restaurant
bbq.paymentMethod = credit
payments << bbq

# example with multiple categories, additional credit card payment
gasVac = Payment.create(amount: -50, purchaseDate: '1-Apr-2013', description: 'Gas during ski trip')
gasVac.paymentCategory = [gas, vacation]
gasVac.paymentMethod = credit
payments << gasVac

# additional payment under :gas category
gasWork = Payment.create(amount: -25, purchaseDate: '2-Feb-2013', description: 'Gas on way to work')
gasWork.paymentCategory = gas
gasWork.paymentNethod = cash
payments << gasWork

# Pay credit card bill
bill = Payment.create(amount: -50, puchaseDate: '30-Mar-2013', description: 'Pay restaurant purchase')
bill.paymentCategory = creditCardBill
bill.paymentMethod = checking
payments << bill

payments.each{|p| p.save()}