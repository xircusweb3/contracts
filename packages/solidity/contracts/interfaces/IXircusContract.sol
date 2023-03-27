// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

interface IXircusContract {
  /// @dev Returns the contract version and type
  function contractVersionType() external view returns(uint8, string memory);

  /// @dev Returns the metadata URI of the contract in base64 string
  function contractUri() external view returns (string memory);

  /// @dev Sets the contract uri in base64 string
  function setContractUri(string calldata uri) external;

  /// @dev Returns the platform fee info
  function getPlatformFeeInfo() external view returns(address, uint256);
}