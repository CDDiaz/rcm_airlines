User.destroy_all
u1 = User.create :name => 'Mo', :admin => true
u2 = User.create :name => 'Cd', :admin => true
u3 = User.create :name => 'Ro', :admin => true
u4 = User.create :name => 'Mai', :admin => true
u5 = User.create :name => 'Bob'
u6 = User.create :name => 'Jil'

puts "#{ User.count } users"

Airplane.destroy_all
a1 = Airplane.create :name => '747', :row => '4', :column => '24'
a2 = Airplane.create :name => '737', :row => '3', :column => '20'
a3 = Airplane.create :name => '320', :row => '4', :column => '26'
a4 = Airplane.create :name => '330', :row => '5', :column => '28'
a5 = Airplane.create :name => '757', :row => '3', :column => '18'


puts "#{ Airplane.count } airplanes"

Flight.destroy_all
f1 =Flight.create :flight_number => '23', :origin => 'Sydney', :destination => 'Brisbane', :date => '2021-09-20'
f2 =Flight.create :flight_number => '87', :origin => 'Perth', :destination => 'Sydney', :date => '2021-09-21'
f3 =Flight.create :flight_number => '09', :origin => 'Brisbane', :destination => 'Melbourne', :date => '2021-09-22'
f4= Flight.create :flight_number => '24', :origin => 'Melbourne', :destination => 'Perth', :date => '2021-09-23'
f5= Flight.create :flight_number => '13', :origin => 'Melbourne', :destination => 'Sydney', :date => '2021-09-24'
f6= Flight.create :flight_number => '07', :origin => 'Perth', :destination => 'Brisbane', :date => '2021-09-25'
puts "#{ Flight.count } flights"

Reservation.destroy_all
r1 = Reservation.create :seat => '3 A'
r2 = Reservation.create :seat => '7 B'
r3 = Reservation.create :seat => '12 C'
r4 = Reservation.create :seat => '15 A'
r5 = Reservation.create :seat => '5 D'

puts "#{ Reservation.count } reservation"

# Associations ##################################################

puts "Airplanes and flights"
a1.flights << f1
a2.flights << f2
a3.flights << f3
a4.flights << f4
a5.flights << f5 << f6


puts "Flights and reservations"
f1.reservations << r1
f2.reservations << r2
f3.reservations << r3 << r5
f4.reservations << r4


puts "Users and reservations"

u1.reservations << r1
u2.reservations << r2
u3.reservations << r3
u4.reservations << r4
u5.reservations << r5
