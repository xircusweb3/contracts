// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

interface IXircusRoyaltyBase {
  /// @dev Returns the royalty amount to deduct from salePrice
  function getRoyaltyInfo(
    address collection, 
    uint256 nftId,
    uint256 salePrice
  ) external returns(address[] memory, uint256[] memory, uint256);

  /// @dev Sets the royalty information for NFTs
  function setRoyaltyInfo(
    address collection, 
    uint256 nftId, 
    uint256 royaltyBps,
    uint256 collectorBps,
    address[] memory recipients,
    address[] memory collectors,
    uint256[] memory shareBps
  ) external;
}