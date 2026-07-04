// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface ICToken is IERC20 {
    function accrueInterest() external returns (uint256);

    function balanceOfUnderlying(address owner) external returns (uint256);

    function borrowBalanceCurrent(address account) external returns (uint256);

    function borrowBalanceStored(address account) external view returns (uint256);

    function exchangeRateStored() external view returns (uint256);

    function getAccountSnapshot(address account) external view returns (uint256, uint256, uint256, uint256);

    function borrow(uint256 borrowAmount) external returns (uint256);

    function mint() external payable; // For ETH

    function mint(uint256 mintAmount) external returns (uint256); // For ERC20

    function redeem(uint256 redeemTokens) external returns (uint256);

    function redeemUnderlying(uint256 redeemAmount) external returns (uint256);

    function repayBorrow() external payable; // For ETH

    function repayBorrow(uint256 repayAmount) external returns (uint256); // For ERC20

    function getCash() external view returns (uint256);

    function underlying() external view returns (IERC20);

    function comptroller() external view returns (address);

    function totalBorrows() external view returns (uint256);

    function borrowRatePerBlock() external view returns (uint256);
}

interface IComptroller {
    function claimComp(address holder) external;

    function enterMarkets(address[] memory cTokens) external returns (uint256[] memory);

    function exitMarket(address cToken) external returns (uint256);

    function compAccrued(address holder) external view returns (uint256);

    function getAccountLiquidity(address account) external view returns (uint256, uint256, uint256);

    function markets(
        address market
    ) external view returns (bool isListed, uint256 collateralFactorMantissa, bool isCompted);

    function oracle() external view returns (address);

    function borrowCaps(address market) external view returns (uint256);

    function compSupplySpeeds(address cToken) external view returns (uint256);

    function getCompAddress() external view returns (IERC20);
}
