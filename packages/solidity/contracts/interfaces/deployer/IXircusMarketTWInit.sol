// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

interface IXircusMarketTWInit {
  function initialize(
    address owner,
    string memory contractURI,
    address[] memory forwarders,
    address platformFeeRecipient,
    uint256 platformFeeBps
  ) external;
}