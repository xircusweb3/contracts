// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;
import "./IXircusCurrency.sol";

interface IXircusCurrencyBase is IXircusCurrency {

  /// @dev Emitted when new non-stable currency is added
  event CurrencyUpdated(
    bytes32 indexed hashId, 
    address indexed currency, 
    address indexed contributor
  );

  /// @dev Emitted when base fee for stable currency is changed
  event BaseFeeChanged(
    bytes32 indexed hashId,
    address indexed currency, 
    uint256 fee
  );

  /// @dev Adds new currency
  function addCurrency(address currency, address router, address[] memory path) external;

  /// @dev Sets the stable currency baseFee
  function setBaseFee(address currency, uint256 fee) external;
}