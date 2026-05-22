// SPDX-License-Identifier: AGPL-3.0.
pragma solidity ^0.8.0;

import "../tokens/ISupplyToken.sol";
import "../tokens/IDebtToken.sol";
import "../misc/IBorrowVerifier.sol";

interface IVaultStorage {
    // Vault Storage V1 Errors
    error VS_V1_ONLY_OWNER();

    function owner() external view returns (address);

    function supplyToken() external view returns (ISupplyToken);

    function borrowToken() external view returns (IDebtToken);

    function supplyUnderlying() external view returns (address);

    function borrowUnderlying() external view returns (address);

    function borrowVerifier() external view returns (IBorrowVerifier);

    function withdrawFeeFactor() external view returns (uint256);

    function withdrawFeePeriod() external view returns (uint256);

    function supplyThreshold() external view returns (uint256);

    function liquidationThreshold() external view returns (uint256);

    function targetThreshold() external view returns (uint256);

    function activeFarmStrategy() external view returns (address);

    function activeLenderStrategy() external view returns (address);

    function allowOnBehalfList(address, address) external view returns (bool);

    function onBehalfFunctions(bytes4) external view returns (bool);

    function farmStrategies(address) external view returns (bool);

    function lenderStrategies(address) external view returns (bool);

    function snapshots(uint256) external view returns (uint256, uint256);

    function userSnapshots(address) external view returns (uint256);

    function configurableManager() external view returns (address);

    function swapStrategy() external view returns (address);

    function accessControl() external view returns (address);
}
