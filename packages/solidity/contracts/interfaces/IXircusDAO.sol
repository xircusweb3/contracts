// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

interface IXircusDAO {
  /// @dev Returns boolean status if DAO
  function isDAO(address account) external returns(bool);

  /// @dev Returns the accumulated voting power
  function votingPower(address account) external returns(uint256);
}