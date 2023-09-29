-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Tour" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "lang" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "city" TEXT NOT NULL,
    "hotel" TEXT NOT NULL,
    "transport_depart" TEXT NOT NULL,
    "transport_arrive" TEXT NOT NULL,
    "userId" TEXT NOT NULL,
    "registeredAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT "Tour_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_Tour" ("city", "hotel", "id", "lang", "name", "transport_arrive", "transport_depart", "userId") SELECT "city", "hotel", "id", "lang", "name", "transport_arrive", "transport_depart", "userId" FROM "Tour";
DROP TABLE "Tour";
ALTER TABLE "new_Tour" RENAME TO "Tour";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
