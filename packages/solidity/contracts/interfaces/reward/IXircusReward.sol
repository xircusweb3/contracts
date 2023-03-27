// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

interface IXircusReward {

  event RewardUpdated(
    address indexed rewardToken,
    uint256 indexed rewardSupply
  );

  event Redeemed(
    address indexed account, 
    address indexed rewardToken,
    uint256 indexed rewardAmount
  );

  /// @dev Returns total rewards earned
  /// @dev withdrawn - ((totalRewardSupply * ownedShares) / totalShares)
  function earnedOfAt(address account, address rewardToken) external returns(uint256);

  /// @dev Redeem the reward from the contract
  function redeemOfAt(address account, address rewardToken) external;
}