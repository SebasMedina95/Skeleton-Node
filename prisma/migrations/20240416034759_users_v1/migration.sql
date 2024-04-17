-- CreateTable
CREATE TABLE "Test" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "Test_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "USERS" (
    "id" SERIAL NOT NULL,
    "document" VARCHAR(30) NOT NULL,
    "name" VARCHAR(150) NOT NULL,
    "email" VARCHAR(150) NOT NULL,
    "emailValidated" BOOLEAN NOT NULL DEFAULT false,
    "password" VARCHAR(70) NOT NULL,
    "role" TEXT[] DEFAULT ARRAY['USER']::TEXT[],
    "status" BOOLEAN NOT NULL DEFAULT true,
    "address" TEXT,
    "numberPhone" TEXT,
    "cellPhone" TEXT,
    "img" TEXT,
    "description" TEXT,

    CONSTRAINT "USERS_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "USERS_document_key" ON "USERS"("document");

-- CreateIndex
CREATE UNIQUE INDEX "USERS_email_key" ON "USERS"("email");
