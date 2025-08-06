Feature: deposit
  As a customer
  I want to deposit money to my account using ATM

Background:
  Given a customer with id 1 and pin 111 with balance 100 exists
  When I login to ATM with id 1 and pin 111

Scenario: Deposit valid amount
  When I deposit 50 to ATM
  Then my account balance is 150

Scenario: Deposit zero amount
  When I deposit 0 to ATM
  When my account balance is 100