// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

import "./IXircusTokenEnum.sol";

interface IXircusTokenHelper is IXircusTokenEnum {
  function getTokenType(address token) external view returns(TokenType);
  function getSafeQuantity(TokenType tokenType, uint256 quantity) external view returns(uint256);
  function verifyAllowance(address account, address allowanceFor, address token, uint256 amount) external view returns(bool);
  function verifyApproval(address owner, address approvalFor, address collection, uint256 nftId, uint256 quantity) external view returns(bool);
  function verifyOwnership(address owner, address collection, uint256 nftId) external view returns(bool);
}