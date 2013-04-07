# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
checking = PaymentMethod.create(name: 'Checking')
credit = PaymentMethod.create(name: 'Credit Card')
oldCredit = PaymentMethod.create(name: 'Old Credit Card', active: false)
cash = PaymentMethod.create(name: 'Cash')

creditCardBill = PaymentCategory.create(name: 'Credit Card Bill')
restaurant = PaymentCategory.create(name: 'Restaurants')
vacation = PaymentCategory.create(name: 'Vacation')
gas = PaymentCategory.create(name: 'Gas')

newPayments = []

# beginning balance, no category
balance = Payment.create(amount: 20000, purchaseDate: '1-Jan-2013', description: 'Beginning balance')
balance.paymentMethod = checking
newPayments << balance

bbq = Payment.create(amount: -27.34, purchaseDate: '13-Mar-2013', description: 'BBQ')
bbq.paymentCategories = [restaurant]
bbq.paymentMethod = credit
newPayments << bbq

# example with multiple categories, additional credit card payment
gasVac = Payment.create(amount: -50, purchaseDate: '1-Apr-2013', description: 'Gas during ski trip')
gasVac.paymentCategories = [gas, vacation]
gasVac.paymentMethod = credit
newPayments << gasVac

# additional payment under :gas category
gasWork = Payment.create(amount: -25, purchaseDate: '2-Feb-2013', description: 'Gas on way to work')
gasWork.paymentCategories = [gas]
gasWork.paymentMethod = cash
newPayments << gasWork

# Pay credit card bill, should have today's date. 
bill = Payment.create(amount: -50, description: 'Pay restaurant purchase')
bill.paymentCategories = [creditCardBill]
bill.paymentMethod = checking
bill.hasSalesTax = false
newPayments << bill

newPayments.each {|p| p.save()}