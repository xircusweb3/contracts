// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";

contract TokenClaimable is ERC20, ERC20Burnable, Pausable, AccessControl {
  bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
  bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
  uint256 public maxClaimable;
  mapping(address => uint256) private _claims;

  constructor(string memory name_, string memory symbol_) ERC20(name_, symbol_) {
    _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    _grantRole(PAUSER_ROLE, msg.sender);
    _grantRole(MINTER_ROLE, msg.sender);
    maxClaimable = 10_000 * (10 ** decimals()); // 1,000 per address
  }

  function setMaxClaimble(uint256 maxClaimable_) external onlyRole(DEFAULT_ADMIN_ROLE) {
    maxClaimable = maxClaimable_;
  }

  function claim(address to, uint256 amount) external whenNotPaused {
    require(amount <= maxClaimable && (_claims[to] + amount) <= maxClaimable, 'Claimable Exceeded');
    _claims[to] += amount;
    _mint(to, amount);
  }

  function pause() public onlyRole(PAUSER_ROLE) {
    _pause();
  }

  function unpause() public onlyRole(PAUSER_ROLE) {
    _unpause();
  }

  function mint(address to, uint256 amount) public onlyRole(MINTER_ROLE) {
    _mint(to, amount);
  }

  function _beforeTokenTransfer(address from, address to, uint256 amount) internal whenNotPaused override {
    super._beforeTokenTransfer(from, to, amount);
  }
}