-- AlterTable
ALTER TABLE "Experience" ALTER COLUMN "end_date" DROP NOT NULL;

-- CreateTable
CREATE TABLE "Photos" (
    "photo_id" SERIAL NOT NULL,
    "link" TEXT NOT NULL,

    CONSTRAINT "Photos_pkey" PRIMARY KEY ("photo_id")
);

-- CreateTable
CREATE TABLE "Videos" (
    "video_id" SERIAL NOT NULL,
    "link" TEXT NOT NULL,

    CONSTRAINT "Videos_pkey" PRIMARY KEY ("video_id")
);

-- CreateTable
CREATE TABLE "Media" (
    "media_id" SERIAL NOT NULL,
    "profile_id" INTEGER NOT NULL,
    "photo_id" INTEGER NOT NULL,
    "video_id" INTEGER NOT NULL,

    CONSTRAINT "Media_pkey" PRIMARY KEY ("media_id")
);

-- CreateTable
CREATE TABLE "Languages" (
    "language_id" SERIAL NOT NULL,
    "language" TEXT NOT NULL,

    CONSTRAINT "Languages_pkey" PRIMARY KEY ("language_id")
);

-- CreateTable
CREATE TABLE "user_language" (
    "id" SERIAL NOT NULL,
    "profile_id" INTEGER NOT NULL,
    "language_id" INTEGER NOT NULL,

    CONSTRAINT "user_language_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Review" (
    "review_id" SERIAL NOT NULL,
    "profile_id" INTEGER NOT NULL,
    "text" TEXT NOT NULL,
    "rating" INTEGER NOT NULL,
    "posted_user_id" INTEGER NOT NULL,

    CONSTRAINT "Review_pkey" PRIMARY KEY ("review_id")
);

-- AddForeignKey
ALTER TABLE "Media" ADD CONSTRAINT "Media_profile_id_fkey" FOREIGN KEY ("profile_id") REFERENCES "User"("profile_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Media" ADD CONSTRAINT "Media_photo_id_fkey" FOREIGN KEY ("photo_id") REFERENCES "Photos"("photo_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Media" ADD CONSTRAINT "Media_video_id_fkey" FOREIGN KEY ("video_id") REFERENCES "Videos"("video_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "user_language" ADD CONSTRAINT "user_language_profile_id_fkey" FOREIGN KEY ("profile_id") REFERENCES "User"("profile_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "user_language" ADD CONSTRAINT "user_language_language_id_fkey" FOREIGN KEY ("language_id") REFERENCES "Languages"("language_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Review" ADD CONSTRAINT "Review_profile_id_fkey" FOREIGN KEY ("profile_id") REFERENCES "User"("profile_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Review" ADD CONSTRAINT "Review_posted_user_id_fkey" FOREIGN KEY ("posted_user_id") REFERENCES "User"("profile_id") ON DELETE RESTRICT ON UPDATE CASCADE;
