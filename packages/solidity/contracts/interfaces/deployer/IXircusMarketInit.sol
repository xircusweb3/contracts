// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

interface IXircusMarketInit {
  function initialize(
    address owner, 
    bytes memory data, 
    uint256 credits
  ) external; // initialize
}