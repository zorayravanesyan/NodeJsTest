1.
npm i -g express-generator
express -h
express --no-view

2.
npm i dotenv concurrently
npm i -D nodemon

3.
package.json => "server": "nodemon ./bin/www"
npm run server

4.
create controller


5. 
ORM prizma https://www.prisma.io/docs/getting-started/quickstart
npm install prisma --save-dev OR -D
npx prisma init --datasource-provider sqlite

6.
schema.prisma
npx prisma migrate dev --name init

7.
npx prisma studio


8.
create prisma-client.js
npm i bcrypt
npm i jsonwebtoken


9.
npx prisma migrate dev change-field OR npx prisma migrate dev --name add-fields
change address name





# HomePage`
# Slider
# HotTours
# OurRatings
# MainTours 
# DemandedTours 


# BookingPage
# city
# booking_page_labels
# tours
# bookings - lang chuni
# about_page_progresses
# tourdetailpagelabel