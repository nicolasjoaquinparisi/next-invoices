-- CreateTable
CREATE TABLE "User" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Customer" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "image_url" TEXT NOT NULL,

    CONSTRAINT "Customer_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Invoice" (
    "id" SERIAL NOT NULL,
    "customer_id" INTEGER NOT NULL,
    "amount" INTEGER NOT NULL,
    "date" TEXT NOT NULL,
    "status" TEXT NOT NULL,

    CONSTRAINT "Invoice_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Revenue" (
    "month" TEXT NOT NULL,
    "revenue" INTEGER NOT NULL,

    CONSTRAINT "Revenue_pkey" PRIMARY KEY ("month")
);

-- CreateTable
CREATE TABLE "LatestInvoice" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "image_url" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "amount" TEXT NOT NULL,

    CONSTRAINT "LatestInvoice_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "LatestInvoiceRaw" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "image_url" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "amount" INTEGER NOT NULL,

    CONSTRAINT "LatestInvoiceRaw_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "InvoicesTable" (
    "id" SERIAL NOT NULL,
    "customer_id" INTEGER NOT NULL,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "image_url" TEXT NOT NULL,
    "date" TEXT NOT NULL,
    "amount" INTEGER NOT NULL,
    "status" TEXT NOT NULL,

    CONSTRAINT "InvoicesTable_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CustomersTable" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "image_url" TEXT NOT NULL,
    "total_invoices" INTEGER NOT NULL,
    "total_pending" INTEGER NOT NULL,
    "total_paid" INTEGER NOT NULL,

    CONSTRAINT "CustomersTable_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "FormattedCustomersTable" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "image_url" TEXT NOT NULL,
    "total_invoices" INTEGER NOT NULL,
    "total_pending" TEXT NOT NULL,
    "total_paid" TEXT NOT NULL,

    CONSTRAINT "FormattedCustomersTable_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CustomerField" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "CustomerField_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "InvoiceForm" (
    "id" SERIAL NOT NULL,
    "customer_id" INTEGER NOT NULL,
    "amount" INTEGER NOT NULL,
    "status" TEXT NOT NULL,

    CONSTRAINT "InvoiceForm_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");
