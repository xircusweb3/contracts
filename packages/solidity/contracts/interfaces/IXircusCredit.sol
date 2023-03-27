// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

interface IXircusCredit {
  
  /// @dev Returns the latest credit balance of an account
  function getCredits(address account) external view returns(uint256);

  /// @dev Increase the credit of this account
  function increaseCredits(address account, uint256 quantity) external;

  /// @dev Decrease the credit of this account
  function decreaseCredits(address account, uint256 quantity) external;  
}