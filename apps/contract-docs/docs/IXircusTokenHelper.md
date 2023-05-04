# IXircusTokenHelper









## Methods

### getSafeQuantity

```solidity
function getSafeQuantity(enum IXircusTokenEnum.TokenType tokenType, uint256 quantity) external view returns (uint256)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| tokenType | enum IXircusTokenEnum.TokenType | undefined |
| quantity | uint256 | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined |

### getTokenType

```solidity
function getTokenType(address token) external view returns (enum IXircusTokenEnum.TokenType)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| token | address | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | enum IXircusTokenEnum.TokenType | undefined |

### verifyAllowance

```solidity
function verifyAllowance(address account, address allowanceFor, address token, uint256 amount) external view returns (bool)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| account | address | undefined |
| allowanceFor | address | undefined |
| token | address | undefined |
| amount | uint256 | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | bool | undefined |

### verifyApproval

```solidity
function verifyApproval(address owner, address approvalFor, address collection, uint256 nftId, uint256 quantity) external view returns (bool)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| owner | address | undefined |
| approvalFor | address | undefined |
| collection | address | undefined |
| nftId | uint256 | undefined |
| quantity | uint256 | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | bool | undefined |

### verifyOwnership

```solidity
function verifyOwnership(address owner, address collection, uint256 nftId) external view returns (bool)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| owner | address | undefined |
| collection | address | undefined |
| nftId | uint256 | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | bool | undefined |




