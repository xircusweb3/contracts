// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

interface IXircusMarket {
  struct Market {
    string name;    // Marketplace Name
    string url;     // Marketplace username/handle
    string uri;     // Base64 URI
  }
}