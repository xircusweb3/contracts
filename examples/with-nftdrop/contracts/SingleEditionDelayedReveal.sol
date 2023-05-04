// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@thirdweb-dev/contracts/base/ERC721DelayedReveal.sol";

contract SingleEditionDelayedReveal is ERC721DelayedReveal {
  constructor(
    string memory _name,
    string memory _symbol,
    address _royaltyRecipient,
    uint128 _royaltyBps
  ) ERC721DelayedReveal(_name, _symbol, _royaltyRecipient, _royaltyBps) {}
}