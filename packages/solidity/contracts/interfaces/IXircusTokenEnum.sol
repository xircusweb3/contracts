// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

interface IXircusTokenEnum {
  enum TokenType { 
    UNKNOWN,
    ERC20, 
    ERC721, 
    ERC1155
  }
}