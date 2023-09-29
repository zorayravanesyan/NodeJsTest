-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Booking" (
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
    "registeredAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT "Booking_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_Booking" ("adults", "checkin", "checkout", "childageArr", "children", "city", "email", "hotel", "id", "isValid", "name", "phone", "rooms", "selectedCity", "transport_arrive", "transport_depart", "userId") SELECT "adults", "checkin", "checkout", "childageArr", "children", "city", "email", "hotel", "id", "isValid", "name", "phone", "rooms", "selectedCity", "transport_arrive", "transport_depart", "userId" FROM "Booking";
DROP TABLE "Booking";
ALTER TABLE "new_Booking" RENAME TO "Booking";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
