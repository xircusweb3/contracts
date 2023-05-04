// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@thirdweb-dev/contracts/base/ERC20SignatureMint.sol";

contract TWTokenSignatureMint is ERC20SignatureMint {
  constructor(string memory _name, string memory _symbol, address _primarySaleRecipient) 
    ERC20SignatureMint(_name, _symbol, _primarySaleRecipient) 
    {}
}