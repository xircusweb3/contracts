# IXircusRoyaltyBase









## Methods

### getRoyaltyInfo

```solidity
function getRoyaltyInfo(address collection, uint256 nftId, uint256 salePrice) external nonpayable returns (address[], uint256[], uint256)
```



*Returns the royalty amount to deduct from salePrice*

#### Parameters

| Name | Type | Description |
|---|---|---|
| collection | address | undefined |
| nftId | uint256 | undefined |
| salePrice | uint256 | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | address[] | undefined |
| _1 | uint256[] | undefined |
| _2 | uint256 | undefined |

### setRoyaltyInfo

```solidity
function setRoyaltyInfo(address collection, uint256 nftId, uint256 royaltyBps, uint256 collectorBps, address[] recipients, address[] collectors, uint256[] shareBps) external nonpayable
```



*Sets the royalty information for NFTs*

#### Parameters

| Name | Type | Description |
|---|---|---|
| collection | address | undefined |
| nftId | uint256 | undefined |
| royaltyBps | uint256 | undefined |
| collectorBps | uint256 | undefined |
| recipients | address[] | undefined |
| collectors | address[] | undefined |
| shareBps | uint256[] | undefined |




