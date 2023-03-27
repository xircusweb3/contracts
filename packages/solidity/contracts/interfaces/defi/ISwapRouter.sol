// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

interface ISwapRouter {
  function factory() external pure returns (address);
  function WETH() external pure returns (address);    
  function swapExactTokensForTokensSupportingFeeOnTransferTokens(
    uint amountIn,
    uint amountOutMin,
    address[] calldata path,
    address to,
    uint deadline
  ) external;
  function swapExactETHForTokensSupportingFeeOnTransferTokens(
    uint amountOutMin,
    address[] calldata path,
    address to,
    uint deadline
  ) external payable;  
  function getAmountsOut(
    uint amountIn, 
    address[] calldata path
  ) external view returns (
    uint[] memory amounts
  );
}
