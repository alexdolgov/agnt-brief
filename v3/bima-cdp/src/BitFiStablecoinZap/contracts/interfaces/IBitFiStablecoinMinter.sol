// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./IBitFiStablecoin.sol";

interface IBitFiStablecoinMinter {
    function underlying() external view returns (IERC20);
    function bfUSD() external view returns (IBitFiStablecoin);
    function previewMint(uint256 underlyingAmount, address user) external view returns (uint256 bfUSDAmount, uint256 feeAmount);
    function mint(uint256 underlyingAmount, address to, uint256 minBfUSDAmount) external returns (uint256 bfUSDAmount);
}
