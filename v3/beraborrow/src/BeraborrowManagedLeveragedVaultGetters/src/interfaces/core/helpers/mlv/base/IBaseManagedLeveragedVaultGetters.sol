// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {IBaseManagedLeveragedVault} from "src/interfaces/core/mlv/base/IBaseManagedLeveragedVault.sol";

interface IBaseManagedLeveragedVaultGetters {
    error PositionOutOfTargetCR(uint256 currentICR, uint256 targetICR, uint256 maxDelta);
    error TotalAssetsDeviation(uint256 prevTotalAssets, uint256 newTotalAssets, uint256 maxDelta);
    error VaultSlippage(uint256 expected, uint256 actual);

    function getPrice(address token) external view returns (uint256);
    function vault() external view returns (IBaseManagedLeveragedVault);
    function getCollateralBalance() external view returns (uint256);
    function getCollateralValue() external view returns (uint256);
    function getCollateralValue(uint256 amount) external view returns (uint256);
    function getDebtBalance() external view returns (uint256);
    function getDebtValue() external view returns (uint256);
    function getDebtValue(uint256 amount) external view returns (uint256);
    function getCurrentPositionICR() external view returns (uint256);
    function getTargetICR() external view returns (uint256);
    function entryFeeInBP(uint256 amount, address caller) external view returns (uint256);
    function exitFeeInBP(uint256 amount, address caller) external view returns (uint256);
    function checkInvariantICR(uint256 currentICR, uint256 targetICR, IBaseManagedLeveragedVault.Tolerance tolerance) external view;
    function checkMaxOperationCost(address inputToken, uint256 amountToSwap, uint256 prevTotalAssets) external view;
    function computeNetColl(uint256 nectSurplusInAssets, uint256 collToReceive, uint256 prevTotalAssets) external view returns (uint256 netColl);
}