// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

import "./IXircusSnapshotBase.sol";

interface IXircusSnapshot is IXircusSnapshotBase {
  function balanceOfAt(address account, uint256 snapshotId) external returns(uint256); 
  function totalSupplyAt(uint256 snapshotId) external returns(uint256); 
}