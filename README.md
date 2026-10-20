# Logistics and Supply Chain Database Project

This repository contains a relational database schema and queries created for a university Database Systems course exercise.

## Database Overview

The database (`logistics_db`) models a logistics and supply chain network, transformed from a relational flight-tracking system. It covers core transport operations, including shipping companies, cargo deliveries, driver assignments, warehouses, safety inspections, and client accounts.

## Database Structure

The project includes the following main tables:
* `shipping_companies`: Carrier names and tracking details.
* `personnel`: Drivers, crew, and staff roles.
* `shipments`: Core table tracking cargo type, origin, destination, and schedules.
* `shipment_personnel`: Junction table mapping staff to specific shipments.
* `docks`: Loading bays and security clearances.
* `warehouses`: Storage locations and depot contacts.
* `quality_checks` and `quality_checks_log`: Vehicle maintenance checks and inspection logs.
* `clients`: Customer account information and billing data.
* `personnel_briefings`: Staff training and operational safety meetings.

## Environment and Execution

The database was set up, imported, and run using **phpMyAdmin** with a MySQL backend. All database scripts and analysis queries are written in pure SQL and can be executed via the SQL interface in phpMyAdmin.
