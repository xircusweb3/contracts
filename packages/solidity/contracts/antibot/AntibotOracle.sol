// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

import "@openzeppelin/contracts/access/AccessControlEnumerable.sol";

/// @title DAOs can share 
contract AntibotOracle is AccessControlEnumerable {

  address[] private _bots;

  constructor() {
    _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
  }
}