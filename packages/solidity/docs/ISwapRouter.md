# ISwapRouter









## Methods

### WETH

```solidity
function WETH() external pure returns (address)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | address | undefined |

### factory

```solidity
function factory() external pure returns (address)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | address | undefined |

### getAmountsOut

```solidity
function getAmountsOut(uint256 amountIn, address[] path) external view returns (uint256[] amounts)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| amountIn | uint256 | undefined |
| path | address[] | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| amounts | uint256[] | undefined |

### swapExactETHForTokensSupportingFeeOnTransferTokens

```solidity
function swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 amountOutMin, address[] path, address to, uint256 deadline) external payable
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| amountOutMin | uint256 | undefined |
| path | address[] | undefined |
| to | address | undefined |
| deadline | uint256 | undefined |

### swapExactTokensForTokensSupportingFeeOnTransferTokens

```solidity
function swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 amountIn, uint256 amountOutMin, address[] path, address to, uint256 deadline) external nonpayable
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| amountIn | uint256 | undefined |
| amountOutMin | uint256 | undefined |
| path | address[] | undefined |
| to | address | undefined |
| deadline | uint256 | undefined |




