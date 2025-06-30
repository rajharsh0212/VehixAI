/*
  Warnings:

  - You are about to drop the column `city` on the `DealershipInfo` table. All the data in the column will be lost.
  - You are about to drop the column `country` on the `DealershipInfo` table. All the data in the column will be lost.
  - You are about to drop the column `logoUrl` on the `DealershipInfo` table. All the data in the column will be lost.
  - You are about to drop the column `postalCode` on the `DealershipInfo` table. All the data in the column will be lost.
  - You are about to drop the column `state` on the `DealershipInfo` table. All the data in the column will be lost.
  - You are about to drop the column `website` on the `DealershipInfo` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "DealershipInfo" DROP COLUMN "city",
DROP COLUMN "country",
DROP COLUMN "logoUrl",
DROP COLUMN "postalCode",
DROP COLUMN "state",
DROP COLUMN "website",
ALTER COLUMN "name" SET DEFAULT 'VehixAI Motors',
ALTER COLUMN "address" SET DEFAULT '69 Car Street, Autoville, CA 69420',
ALTER COLUMN "phone" SET DEFAULT '+1 (555) 123-4567',
ALTER COLUMN "email" SET DEFAULT 'contact@vehixai.com';

-- CreateTable
CREATE TABLE "WorkingHour" (
    "id" TEXT NOT NULL,
    "dealershipId" TEXT NOT NULL,
    "dayOfWeek" TEXT NOT NULL,
    "openTime" TEXT NOT NULL,
    "closeTime" TEXT NOT NULL,
    "isClosed" BOOLEAN NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL
);
