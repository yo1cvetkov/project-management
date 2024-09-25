/*
  Warnings:

  - You are about to drop the column `assingedUserId` on the `Task` table. All the data in the column will be lost.
  - You are about to drop the column `profilePictureUlr` on the `User` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "Task" DROP CONSTRAINT "Task_assingedUserId_fkey";

-- AlterTable
ALTER TABLE "Task" DROP COLUMN "assingedUserId",
ADD COLUMN     "assignedUserId" INTEGER;

-- AlterTable
ALTER TABLE "User" DROP COLUMN "profilePictureUlr",
ADD COLUMN     "profilePictureUrl" TEXT;

-- AddForeignKey
ALTER TABLE "Task" ADD CONSTRAINT "Task_assignedUserId_fkey" FOREIGN KEY ("assignedUserId") REFERENCES "User"("userId") ON DELETE SET NULL ON UPDATE CASCADE;
