// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

/// @title Xircus Extension Intialize Interface
/// @author Xircus
/// @notice Used by contract extension modules

interface IXircusExtInit {
  function initialize(
    address owner, 
    address deployed, 
    bytes memory data
  ) external;
}