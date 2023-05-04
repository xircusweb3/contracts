// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@thirdweb-dev/contracts/base/ERC20Drop.sol";

contract TWTokenDrop is ERC20Drop {
  constructor(string memory _name, string memory _symbol, address _primarySaleRecipient)
    ERC20Drop(_name, _symbol, _primarySaleRecipient)
    {}
}