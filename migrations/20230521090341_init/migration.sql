-- CreateTable
CREATE TABLE "Hottour" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "lang" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "descr" TEXT NOT NULL,
    "image" TEXT NOT NULL,
    "btn_text" TEXT NOT NULL,
    "userId" TEXT NOT NULL,
    CONSTRAINT "Hottour_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "Ourrating" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "lang" TEXT NOT NULL,
    "rating" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "descr" TEXT NOT NULL,
    "userId" TEXT NOT NULL,
    CONSTRAINT "Ourrating_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "Maintour" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "lang" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "descr" TEXT NOT NULL,
    "image" TEXT NOT NULL,
    "btn_text" TEXT NOT NULL,
    "userId" TEXT NOT NULL,
    CONSTRAINT "Maintour_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "Demandedtour" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "lang" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "descr" TEXT NOT NULL,
    "image" TEXT NOT NULL,
    "btn_text" TEXT NOT NULL,
    "userId" TEXT NOT NULL,
    CONSTRAINT "Demandedtour_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "City" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "lang" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "userId" TEXT NOT NULL,
    CONSTRAINT "City_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "Bookingpagelabel" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "lang" TEXT NOT NULL,
    "adults" TEXT NOT NULL,
    "children" TEXT NOT NULL,
    "rooms" TEXT NOT NULL,
    "inputPlaceholder" TEXT NOT NULL,
    "checkIn" TEXT NOT NULL,
    "checkOut" TEXT NOT NULL,
    "btn_text" TEXT NOT NULL,
    "childrenAge" TEXT NOT NULL,
    "table_headings" TEXT NOT NULL,
    "userId" TEXT NOT NULL,
    CONSTRAINT "Bookingpagelabel_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "Aboutpageprogress" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "lang" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "percent" TEXT NOT NULL,
    "userId" TEXT NOT NULL,
    CONSTRAINT "Aboutpageprogress_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "Booking" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "email" TEXT NOT NULL,
    "phone" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "city" TEXT NOT NULL,
    "hotel" TEXT NOT NULL,
    "transport_depart" TEXT NOT NULL,
    "transport_arrive" TEXT NOT NULL,
    "selectedCity" TEXT NOT NULL,
    "checkin" TEXT NOT NULL,
    "checkout" TEXT NOT NULL,
    "rooms" TEXT NOT NULL,
    "adults" TEXT NOT NULL,
    "children" TEXT NOT NULL,
    "childageArr" TEXT NOT NULL,
    "isValid" TEXT NOT NULL,
    "userId" TEXT NOT NULL,
    CONSTRAINT "Booking_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
