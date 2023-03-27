// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

interface IXircusRestriction {
  struct Restriction {
    bool lister;    // Toggle for whitelisting lister address
    bool prepaid;   // Toggle for requiring prepaid balance
    bool asset;     // Toggle for whitelisting curated assets
    bool currency;  // Toggle for whitelisting acceptable currencies
  }
}