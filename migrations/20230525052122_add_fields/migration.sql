-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Bookingpagelabel" (
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
    "childAgeText" TEXT NOT NULL,
    "userId" TEXT NOT NULL,
    CONSTRAINT "Bookingpagelabel_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_Bookingpagelabel" ("adults", "btn_text", "checkIn", "checkOut", "childAgeText", "children", "childrenAge", "id", "inputPlaceholder", "lang", "rooms", "table_headings", "userId") SELECT "adults", "btn_text", "checkIn", "checkOut", "childAgeText", "children", "childrenAge", "id", "inputPlaceholder", "lang", "rooms", "table_headings", "userId" FROM "Bookingpagelabel";
DROP TABLE "Bookingpagelabel";
ALTER TABLE "new_Bookingpagelabel" RENAME TO "Bookingpagelabel";
CREATE TABLE "new_Tour" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "lang" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "city" TEXT NOT NULL,
    "hotel" TEXT NOT NULL,
    "transport_depart" TEXT NOT NULL,
    "transport_arrive" TEXT NOT NULL,
    "price" TEXT NOT NULL,
    "btn_text" TEXT NOT NULL,
    "userId" TEXT NOT NULL,
    "registeredAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT "Tour_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_Tour" ("btn_text", "city", "hotel", "id", "lang", "name", "price", "registeredAt", "transport_arrive", "transport_depart", "userId") SELECT "btn_text", "city", "hotel", "id", "lang", "name", "price", "registeredAt", "transport_arrive", "transport_depart", "userId" FROM "Tour";
DROP TABLE "Tour";
ALTER TABLE "new_Tour" RENAME TO "Tour";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
