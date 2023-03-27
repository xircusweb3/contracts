// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TierRewardERC20 is ERC20 {
  constructor(uint256 initialSupply) ERC20("Tier", "TR") {
    _mint(msg.sender, initialSupply);
  }
}