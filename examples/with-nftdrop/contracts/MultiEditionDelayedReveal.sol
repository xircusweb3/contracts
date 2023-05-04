// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@thirdweb-dev/contracts/base/ERC1155DelayedReveal.sol";

contract MultiEditionDelayedReveal is ERC1155DelayedReveal {
  constructor(
    string memory _name,
    string memory _symbol,
    address _royaltyRecipient,
    uint128 _royaltyBps
  ) ERC1155DelayedReveal(_name, _symbol, _royaltyRecipient, _royaltyBps) {}
}