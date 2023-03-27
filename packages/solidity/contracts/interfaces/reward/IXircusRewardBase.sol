// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

import "./IXircusReward.sol";

interface IXircusRewardBase is IXircusReward {

  /// @dev This reward token will be set by the 
  function setRewardToken(bool status, address token, uint256 rewardSupply) external;
}