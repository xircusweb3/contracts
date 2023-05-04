# IXircusCurrencyBase









## Methods

### addCurrency

```solidity
function addCurrency(address currency, address router, address[] path) external nonpayable
```



*Adds new currency*

#### Parameters

| Name | Type | Description |
|---|---|---|
| currency | address | undefined |
| router | address | undefined |
| path | address[] | undefined |

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

### setBaseFee

```solidity
function setBaseFee(address currency, uint256 fee) external nonpayable
```



*Sets the stable currency baseFee*

#### Parameters

| Name | Type | Description |
|---|---|---|
| currency | address | undefined |
| fee | uint256 | undefined |



## Events

### BaseFeeChanged

```solidity
event BaseFeeChanged(bytes32 indexed hashId, address indexed currency, uint256 fee)
```



*Emitted when base fee for stable currency is changed*

#### Parameters

| Name | Type | Description |
|---|---|---|
| hashId `indexed` | bytes32 | undefined |
| currency `indexed` | address | undefined |
| fee  | uint256 | undefined |

### CurrencyUpdated

```solidity
event CurrencyUpdated(bytes32 indexed hashId, address indexed currency, address indexed contributor)
```



*Emitted when new non-stable currency is added*

#### Parameters

| Name | Type | Description |
|---|---|---|
| hashId `indexed` | bytes32 | undefined |
| currency `indexed` | address | undefined |
| contributor `indexed` | address | undefined |



