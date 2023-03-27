// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

interface IXircusMarketStat {
  struct MarketStat {
    uint256 lApp;       // Listing fee to app
    uint256 lOwner;     // Listing fee to owner
    uint256 lReferral;  // Listing fee to referral
    uint256 tApp;       // Transaction fee to app
    uint256 tOwner;     // Transaction fee to owner
    uint256 tReferral;  // Transaction fee to referral
  }
}