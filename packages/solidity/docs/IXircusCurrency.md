# IXircusCurrency









## Methods

### getBaseFee

```solidity
function getBaseFee(address currency) external nonpayable returns (uint256)
```



*Gets stable coin baseFee (representing $1)*

#### Parameters

| Name | Type | Description |
|---|---|---|
| currency | address | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined |

### getCurrency

```solidity
function getCurrency(bytes32 currencyId) external nonpayable returns (struct IXircusCurrency.Currency)
```



*Returns the currency reference*

#### Parameters

| Name | Type | Description |
|---|---|---|
| currencyId | bytes32 | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | IXircusCurrency.Currency | undefined |

### getNativeHashId

```solidity
function getNativeHashId() external view returns (bytes32)
```



*Returns the native hash id, uses msg.value for payment*


#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | bytes32 | undefined |

### getWETH

```solidity
function getWETH() external view returns (address)
```



*Returns the default weth address from chain*


#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | address | undefined |

### getWETHHashId

```solidity
function getWETHHashId() external view returns (bytes32)
```



*Returns the default currency hash id of weth*


#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | bytes32 | undefined |




