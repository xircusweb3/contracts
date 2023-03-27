// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

interface IXircusConfig {
  
  struct Config {
    bool visibility;        // Contract Visibility
    bool hasProvider;       // Toggle Graph Provider
    uint256 listFee;        // Listing Fee for Storage, min of $1
    uint256 txFee;          // Transaction Fee, min of 1%
    uint256 duration;       // Maximum Listing Duration
    uint256 cooldown;       // Snapshot Cooldown (useful for snapshot base contracts)
    uint256 lastSnapshot;   // Last Snapshot
  }

  function setConfig(Config memory) external;

  event ConfigChanged(string indexed name, Config indexed config);
  // event FeesChanged(uint256 indexed listFee, uint256 indexed txFee);
}