/*
  Warnings:

  - The primary key for the `Customer` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `CustomerField` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `CustomersTable` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `FormattedCustomersTable` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `Invoice` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `InvoiceForm` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `InvoicesTable` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `LatestInvoice` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `LatestInvoiceRaw` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `User` table will be changed. If it partially fails, the table could be left without primary key constraint.

*/
-- AlterTable
ALTER TABLE "Customer" DROP CONSTRAINT "Customer_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "Customer_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Customer_id_seq";

-- AlterTable
ALTER TABLE "CustomerField" DROP CONSTRAINT "CustomerField_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "CustomerField_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "CustomerField_id_seq";

-- AlterTable
ALTER TABLE "CustomersTable" DROP CONSTRAINT "CustomersTable_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "CustomersTable_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "CustomersTable_id_seq";

-- AlterTable
ALTER TABLE "FormattedCustomersTable" DROP CONSTRAINT "FormattedCustomersTable_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "FormattedCustomersTable_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "FormattedCustomersTable_id_seq";

-- AlterTable
ALTER TABLE "Invoice" DROP CONSTRAINT "Invoice_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "customer_id" SET DATA TYPE TEXT,
ADD CONSTRAINT "Invoice_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Invoice_id_seq";

-- AlterTable
ALTER TABLE "InvoiceForm" DROP CONSTRAINT "InvoiceForm_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "customer_id" SET DATA TYPE TEXT,
ADD CONSTRAINT "InvoiceForm_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "InvoiceForm_id_seq";

-- AlterTable
ALTER TABLE "InvoicesTable" DROP CONSTRAINT "InvoicesTable_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "customer_id" SET DATA TYPE TEXT,
ADD CONSTRAINT "InvoicesTable_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "InvoicesTable_id_seq";

-- AlterTable
ALTER TABLE "LatestInvoice" DROP CONSTRAINT "LatestInvoice_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "LatestInvoice_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "LatestInvoice_id_seq";

-- AlterTable
ALTER TABLE "LatestInvoiceRaw" DROP CONSTRAINT "LatestInvoiceRaw_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "LatestInvoiceRaw_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "LatestInvoiceRaw_id_seq";

-- AlterTable
ALTER TABLE "User" DROP CONSTRAINT "User_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "User_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "User_id_seq";
