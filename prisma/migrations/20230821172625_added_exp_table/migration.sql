/*
  Warnings:

  - Added the required column `description` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `nationality` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ratings` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `website_link` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `workplace` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `years_exp` to the `User` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "User" ADD COLUMN     "description" TEXT NOT NULL,
ADD COLUMN     "nationality" TEXT NOT NULL,
ADD COLUMN     "ratings" INTEGER NOT NULL,
ADD COLUMN     "website_link" TEXT NOT NULL,
ADD COLUMN     "workplace" TEXT NOT NULL,
ADD COLUMN     "years_exp" INTEGER NOT NULL;

-- CreateTable
CREATE TABLE "Education" (
    "education_id" SERIAL NOT NULL,
    "profile_id" INTEGER NOT NULL,
    "college_name" TEXT NOT NULL,
    "degree" TEXT NOT NULL,
    "field_of_study" TEXT NOT NULL,
    "start_date" TIMESTAMP(3) NOT NULL,
    "end_date" TIMESTAMP(3) NOT NULL,
    "description" TEXT NOT NULL,

    CONSTRAINT "Education_pkey" PRIMARY KEY ("education_id")
);

-- CreateTable
CREATE TABLE "Achievements" (
    "achievement_id" SERIAL NOT NULL,
    "title" TEXT NOT NULL,
    "timeline" TEXT NOT NULL,
    "profile_id" INTEGER NOT NULL,

    CONSTRAINT "Achievements_pkey" PRIMARY KEY ("achievement_id")
);

-- CreateTable
CREATE TABLE "Experience" (
    "experience_id" SERIAL NOT NULL,
    "profile_id" INTEGER NOT NULL,
    "company" TEXT NOT NULL,
    "experience_headline" TEXT NOT NULL,
    "type" TEXT NOT NULL,
    "start_date" TIMESTAMP(3) NOT NULL,
    "is_current_role" BOOLEAN NOT NULL,
    "end_date" TIMESTAMP(3) NOT NULL,
    "location" TEXT NOT NULL,
    "description" TEXT NOT NULL,

    CONSTRAINT "Experience_pkey" PRIMARY KEY ("experience_id")
);

-- CreateTable
CREATE TABLE "user_skills" (
    "id" SERIAL NOT NULL,
    "profile_id" INTEGER NOT NULL,
    "skill_id" INTEGER NOT NULL,

    CONSTRAINT "user_skills_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Education" ADD CONSTRAINT "Education_profile_id_fkey" FOREIGN KEY ("profile_id") REFERENCES "User"("profile_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Achievements" ADD CONSTRAINT "Achievements_profile_id_fkey" FOREIGN KEY ("profile_id") REFERENCES "User"("profile_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Experience" ADD CONSTRAINT "Experience_profile_id_fkey" FOREIGN KEY ("profile_id") REFERENCES "User"("profile_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "user_skills" ADD CONSTRAINT "user_skills_profile_id_fkey" FOREIGN KEY ("profile_id") REFERENCES "User"("profile_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "user_skills" ADD CONSTRAINT "user_skills_skill_id_fkey" FOREIGN KEY ("skill_id") REFERENCES "Skills"("skill_id") ON DELETE RESTRICT ON UPDATE CASCADE;
