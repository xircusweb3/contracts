// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

interface IXircusEmergency {

  /// @dev Performs a withdrawal, altcoin if token address is present, and native if zero address
  function sweep(address token) external;
}