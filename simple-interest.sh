#!/bin/bash
# Simple Interest Calculator
# Formula: Simple Interest = (Principal x Rate x Time) / 100

echo "=== Simple Interest Calculator ==="

# Take input from the user
read -p "Enter the principal amount: " principal
read -p "Enter the rate of interest (% per year): " rate
read -p "Enter the time period (in years): " time

# Calculate simple interest
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate the total amount
total=$(echo "scale=2; $principal + $interest" | bc)

# Display the results
echo "-----------------------------------"
echo "Principal         : $principal"
echo "Rate of Interest  : $rate %"
echo "Time Period       : $time years"
echo "Simple Interest   : $interest"
echo "Total Amount      : $total"
echo "-----------------------------------"
