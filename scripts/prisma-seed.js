const { PrismaClient } = require('@prisma/client');
const {
  users,
  invoices,
  customers,
  revenue,
} = require('../app/lib/placeholder-data.js');
const bcrypt = require('bcrypt');

const prisma = new PrismaClient();

async function seedUsers() {
  try {
    // Insert data into the "users" table
    const insertedUsers = await Promise.all(
      users.map(async (user) => {
        const hashedPassword = await bcrypt.hash(user.password, 10);
        return prisma.user.create({
          data: {
            id: user.id,
            name: user.name,
            email: user.email,
            password: hashedPassword,
          },
        });
      }),
    );

    console.log(`Seeded ${insertedUsers.length} users`);

    return {
      users: insertedUsers,
    };
  } catch (error) {
    console.error('Error seeding users:', error);
    throw error;
  }
}

async function seedInvoices() {
  try {
    // Insert data into the "invoices" table
    const insertedInvoices = await Promise.all(
      invoices.map((invoice) =>
        prisma.invoice.create({
          data: {
            id: invoice.id,
            customer_id: invoice.customer_id,
            amount: invoice.amount,
            status: invoice.status,
            date: invoice.date,
          },
        }),
      ),
    );

    console.log(`Seeded ${insertedInvoices.length} invoices`);

    return {
      invoices: insertedInvoices,
    };
  } catch (error) {
    console.error('Error seeding invoices:', error);
    throw error;
  }
}

async function seedCustomers() {
  try {
    // Insert data into the "customers" table
    const insertedCustomers = await Promise.all(
      customers.map((customer) =>
        prisma.customer.create({
          data: {
            id: customer.id,
            name: customer.name,
            email: customer.email,
            image_url: customer.image_url,
          },
        }),
      ),
    );

    console.log(`Seeded ${insertedCustomers.length} customers`);

    return {
      customers: insertedCustomers,
    };
  } catch (error) {
    console.error('Error seeding customers:', error);
    throw error;
  }
}

async function seedRevenue() {
  try {
    // Insert data into the "revenue" table
    const insertedRevenue = await Promise.all(
      revenue.map((rev) =>
        prisma.revenue.create({
          data: {
            month: rev.month,
            revenue: rev.revenue,
          },
        }),
      ),
    );

    console.log(`Seeded ${insertedRevenue.length} revenue`);

    return {
      revenue: insertedRevenue,
    };
  } catch (error) {
    console.error('Error seeding revenue:', error);
    throw error;
  }
}

async function main() {
  try {
    await seedUsers();
    await seedCustomers();
    await seedInvoices();
    await seedRevenue();
  } catch (error) {
    console.error(
      'An error occurred while attempting to seed the database:',
      error,
    );
  } finally {
    await prisma.$disconnect();
  }
}

main();
