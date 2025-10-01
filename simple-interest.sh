#!/bin/bash
# Simple Interest Calculator
# Author: [Your Name]
# Date: $(date +%Y-%m-%d)

echo "Simple Interest Calculator"
echo "========================="

# Get input from user
echo "Enter the principal amount:"
read principal

echo "Enter the annual rate of interest (in %):"
read rate

echo "Enter the time period (in years):"
read time

# Calculate simple interest
simple_interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc -l)

# Display result
echo ""
echo "Principal Amount: $principal"
echo "Rate of Interest: $rate%"
echo "Time Period: $time years"
echo "Simple Interest: $simple_interest"

# Calculate total amount
total_amount=$(echo "scale=2; $principal + $simple_interest" | bc -l)
echo "Total Amount: $total_amount"
