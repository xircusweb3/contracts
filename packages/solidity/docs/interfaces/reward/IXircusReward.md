# IXircusReward









## Methods

### earnedOfAt

```solidity
function earnedOfAt(address account, address rewardToken) external nonpayable returns (uint256)
```



*Returns total rewards earnedwithdrawn - ((totalRewardSupply * ownedShares) / totalShares)*

#### Parameters

| Name | Type | Description |
|---|---|---|
| account | address | undefined |
| rewardToken | address | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined |

### redeemOfAt

```solidity
function redeemOfAt(address account, address rewardToken) external nonpayable
```



*Redeem the reward from the contract*

#### Parameters

| Name | Type | Description |
|---|---|---|
| account | address | undefined |
| rewardToken | address | undefined |



## Events

### Redeemed

```solidity
event Redeemed(address indexed account, address indexed rewardToken, uint256 indexed rewardAmount)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| account `indexed` | address | undefined |
| rewardToken `indexed` | address | undefined |
| rewardAmount `indexed` | uint256 | undefined |

### RewardUpdated

```solidity
event RewardUpdated(address indexed rewardToken, uint256 indexed rewardSupply)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| rewardToken `indexed` | address | undefined |
| rewardSupply `indexed` | uint256 | undefined |



