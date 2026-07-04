//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.24;

interface ILending {
    function lend(uint256 _borrowed, address _receiver) external returns (bool status);

    function repayDebt(uint256 leverage, uint256 _amountPaid) external returns (bool);

    function getTotalDebt() external view returns (uint256);

    function updateTotalDebt(uint256 profit) external returns (uint256);

    function totalAssets() external view returns (uint256);

    function totalDebt() external view returns (uint256);

    function balanceOfUSDC() external view returns (uint256);

    function getUtilizationRate() external view returns (uint256);
}
