// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract TokenMinterPauser is ERC20, ERC20Burnable, Pausable, Ownable {
  constructor(string memory name_, string memory symbol_) ERC20(name_, symbol_) {}

  function pause() public onlyOwner {
    _pause();
  }

  function unpause() public onlyOwner {
    _unpause();
  }

  function mint(address to, uint256 amount) public onlyOwner {
    _mint(to, amount);
  }

  function _beforeTokenTransfer(address from, address to, uint256 amount) internal whenNotPaused override {
      super._beforeTokenTransfer(from, to, amount);
  }
}