# Votes







*This is a base abstract contract that tracks voting units, which are a measure of voting power that can be transferred, and provides a system of vote delegation, where an account can delegate its voting units to a sort of &quot;representative&quot; that will pool delegated voting units from different accounts and can then use it to vote in decisions. In fact, voting units _must_ be delegated in order to count as actual votes, and an account has to delegate those votes to itself if it wishes to participate in decisions and does not have a trusted representative. This contract is often combined with a token contract such that voting units correspond to token units. For an example, see {ERC721Votes}. The full history of delegate votes is tracked on-chain so that governance protocols can consider votes as distributed at a particular block number to protect against flash loans and double voting. The opt-in delegate system makes the cost of this history tracking optional. When using this module the derived contract must implement {_getVotingUnits} (for example, make it return {ERC721-balanceOf}), and can use {_transferVotingUnits} to track a change in the distribution of those units (in the previous example, it would be included in {ERC721-_beforeTokenTransfer}). _Available since v4.5._*

## Methods

### DOMAIN_SEPARATOR

```solidity
function DOMAIN_SEPARATOR() external view returns (bytes32)
```



*Returns the contract&#39;s {EIP712} domain separator.*


#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | bytes32 | undefined |

### delegate

```solidity
function delegate(address delegatee) external nonpayable
```



*Delegates votes from the sender to `delegatee`.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| delegatee | address | undefined |

### delegateBySig

```solidity
function delegateBySig(address delegatee, uint256 nonce, uint256 expiry, uint8 v, bytes32 r, bytes32 s) external nonpayable
```



*Delegates votes from signer to `delegatee`.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| delegatee | address | undefined |
| nonce | uint256 | undefined |
| expiry | uint256 | undefined |
| v | uint8 | undefined |
| r | bytes32 | undefined |
| s | bytes32 | undefined |

### delegates

```solidity
function delegates(address account) external view returns (address)
```



*Returns the delegate that `account` has chosen.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| account | address | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | address | undefined |

### getPastTotalSupply

```solidity
function getPastTotalSupply(uint256 blockNumber) external view returns (uint256)
```



*Returns the total supply of votes available at the end of a past block (`blockNumber`). NOTE: This value is the sum of all available votes, which is not necessarily the sum of all delegated votes. Votes that have not been delegated are still part of total supply, even though they would not participate in a vote. Requirements: - `blockNumber` must have been already mined*

#### Parameters

| Name | Type | Description |
|---|---|---|
| blockNumber | uint256 | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined |

### getPastVotes

```solidity
function getPastVotes(address account, uint256 blockNumber) external view returns (uint256)
```



*Returns the amount of votes that `account` had at the end of a past block (`blockNumber`). Requirements: - `blockNumber` must have been already mined*

#### Parameters

| Name | Type | Description |
|---|---|---|
| account | address | undefined |
| blockNumber | uint256 | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined |

### getVotes

```solidity
function getVotes(address account) external view returns (uint256)
```



*Returns the current amount of votes that `account` has.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| account | address | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined |

### nonces

```solidity
function nonces(address owner) external view returns (uint256)
```



*Returns an address nonce.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| owner | address | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined |



## Events

### DelegateChanged

```solidity
event DelegateChanged(address indexed delegator, address indexed fromDelegate, address indexed toDelegate)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| delegator `indexed` | address | undefined |
| fromDelegate `indexed` | address | undefined |
| toDelegate `indexed` | address | undefined |

### DelegateVotesChanged

```solidity
event DelegateVotesChanged(address indexed delegate, uint256 previousBalance, uint256 newBalance)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| delegate `indexed` | address | undefined |
| previousBalance  | uint256 | undefined |
| newBalance  | uint256 | undefined |



