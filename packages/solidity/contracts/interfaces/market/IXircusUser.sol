// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

interface IXircusUser {
  struct User {
    address inviter;  // Invited the user
    uint256 reward;   // Rewards received by user
    uint256 credits;  // Prepaid listing credits by user
    uint256[] assets; // Listing IDs
  }
}