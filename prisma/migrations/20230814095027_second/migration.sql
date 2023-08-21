/*
  Warnings:

  - You are about to drop the `skills` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "skills";

-- CreateTable
CREATE TABLE "Skills" (
    "skill_id" SERIAL NOT NULL,
    "skill_name" TEXT NOT NULL,

    CONSTRAINT "Skills_pkey" PRIMARY KEY ("skill_id")
);

-- CreateTable
CREATE TABLE "Profession" (
    "profession_id" SERIAL NOT NULL,
    "profession_name" TEXT NOT NULL,

    CONSTRAINT "Profession_pkey" PRIMARY KEY ("profession_id")
);

-- CreateTable
CREATE TABLE "User" (
    "profile_id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "profession_id" INTEGER NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("profile_id")
);

-- AddForeignKey
ALTER TABLE "User" ADD CONSTRAINT "User_profession_id_fkey" FOREIGN KEY ("profession_id") REFERENCES "Profession"("profession_id") ON DELETE RESTRICT ON UPDATE CASCADE;
