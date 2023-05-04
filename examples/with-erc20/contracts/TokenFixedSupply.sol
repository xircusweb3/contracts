// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/draft-ERC20Permit.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract TokenFixedSupply is ERC20, ERC20Permit, Ownable {
  constructor(string memory name_, string memory symbol_, uint256 initialSupply) ERC20(name_, symbol_) ERC20Permit(name_) {
    _mint(msg.sender, initialSupply * 10 ** decimals());
  }
}