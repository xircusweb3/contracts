// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";
import "@openzeppelin/contracts/utils/cryptography/draft-EIP712.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/draft-ERC721Votes.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract MyToken is ERC721, ERC721Enumerable, ERC721URIStorage, Pausable, AccessControl, ERC721Burnable, EIP712, ERC721Votes {
  using Counters for Counters.Counter;

  bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
  bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
  Counters.Counter private _tokenIdCounter;

  constructor(string memory name, string memory symbol) ERC721(name, symbol) EIP712(name, symbol) {
      _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
      _grantRole(PAUSER_ROLE, msg.sender);
      _grantRole(MINTER_ROLE, msg.sender);
  }

  function pause() public onlyRole(PAUSER_ROLE) {
      _pause();
  }

  function unpause() public onlyRole(PAUSER_ROLE) {
      _unpause();
  }

  function safeMint(address to, string memory uri) public onlyRole(MINTER_ROLE) {
      uint256 tokenId = _tokenIdCounter.current();
      _tokenIdCounter.increment();
      _safeMint(to, tokenId);
      _setTokenURI(tokenId, uri);
  }

  function _beforeTokenTransfer(address from, address to, uint256 tokenId, uint256 batchSize)
      internal
      whenNotPaused
      override(ERC721, ERC721Enumerable)
  {
      super._beforeTokenTransfer(from, to, tokenId, batchSize);
  }

  function _afterTokenTransfer(address from, address to, uint256 tokenId, uint256 batchSize) internal override(ERC721, ERC721Votes) {
    super._afterTokenTransfer(from, to, tokenId, batchSize);
  }

  function _burn(uint256 tokenId) internal override(ERC721, ERC721URIStorage) {
    super._burn(tokenId);
  }

  function tokenURI(uint256 tokenId) public view override(ERC721, ERC721URIStorage) returns (string memory) {
    return super.tokenURI(tokenId);
  }

  function supportsInterface(bytes4 interfaceId) public view override(ERC721, ERC721Enumerable, AccessControl) returns (bool) {
    return super.supportsInterface(interfaceId);
  }
}