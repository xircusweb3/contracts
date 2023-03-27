// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

interface IXircusCurrency {

  /**
    @param status       Toggle to enable/disable
    @param stable       Automatically sets for stable currencies
    @param hashId       Hash ID
    @param baseFee      Determined by 10 power of the currency decimals
    @param currency     Address of the currency
    @param router       Decentralized Exchange Router v2
    @param out          Output stable token
    @param contributor  Currency lister
    @param timestamp    Listing timestamp
    @param total        Total spent on marketplaces
    @param path         Multi-hop path
   */
  struct Currency {
    bool status;
    bool stable;
    bytes32 hashId;
    uint256 baseFee;
    address currency;
    address router;
    address out;
    address contributor;
    uint256 timestamp;
    uint256 total;
    address[] path;
  }

  /// @dev Gets stable coin baseFee (representing $1)
  function getBaseFee(address currency) external returns(uint256);


  /// @dev Returns the currency reference
  function getCurrency(bytes32 currencyId) external returns(Currency memory);

  /// @dev Returns the native hash id, uses msg.value for payment
  function getNativeHashId() external view returns(bytes32);

  /// @dev Returns the default weth address from chain
  function getWETH() external view returns(address);

  /// @dev Returns the default currency hash id of weth
  function getWETHHashId() external view returns(bytes32);  
}