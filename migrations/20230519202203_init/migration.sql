-- CreateTable
CREATE TABLE "Slider" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "lang" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "image" TEXT NOT NULL,
    "btn_text" TEXT NOT NULL,
    "userId" TEXT NOT NULL,
    CONSTRAINT "Slider_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
