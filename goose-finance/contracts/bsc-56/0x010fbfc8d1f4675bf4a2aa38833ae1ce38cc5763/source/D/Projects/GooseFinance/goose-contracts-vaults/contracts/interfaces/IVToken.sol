// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.0;

import '@openzeppelin/contracts/token/ERC20/IERC20.sol';

interface IVToken is IERC20 {
    function redeem(uint256 redeemTokens) external returns (uint256);
    function redeemUnderlying(uint256 redeemAmount) external returns (uint256);
    function borrow(uint256 borrowAmount) external returns (uint256);
    function repayBorrow(uint256 repayAmount) external returns (uint256);
    function balanceOfUnderlying(address owner) external returns (uint256);
    function accrueInterest() external returns (uint);
    function borrowBalanceCurrent(address account) external returns (uint256);

    function exchangeRateStored() external view returns (uint256);
    function totalBorrows() external view returns (uint256);
    function totalReserves() external view returns (uint256);
    function getCash() external view returns (uint256);
}