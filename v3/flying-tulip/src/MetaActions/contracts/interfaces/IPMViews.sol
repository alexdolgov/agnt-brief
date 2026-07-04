// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

import {IConfigRegistry} from "./IConfigRegistry.sol";
import {IAccountValuesLens} from "./IAccountValuesLens.sol";

// Minimal view interface into PositionsManager used by the lens
interface IPMViews {
    function debtShares(address user, address asset) external view returns (uint256 shares);
    function totalDebtShares(address asset) external view returns (uint256);
    function config() external view returns (IConfigRegistry);
    function engines(address m) external view returns (bool);
    function valuesLens() external view returns (IAccountValuesLens);
    function withdrawPaused(address asset) external view returns (bool);
    function depositPaused(address asset) external view returns (bool);
    function borrowPaused(address asset) external view returns (bool);
    function supplyCap(address asset) external view returns (uint256);
    function borrowCap(address asset) external view returns (uint256);
    function DOMAIN_SEPARATOR() external view returns (bytes32);
    function DOMAIN_CHAIN_ID() external view returns (uint256);
    function admin() external view returns (address);
    function metaModules(address module) external view returns (bool);
    function noncesTyped(address user, bytes32 typehash) external view returns (uint256);
    function engineHeld(address user, address engine, address asset) external view returns (uint256);
    function collateral(
        address user,
        address asset
    )
        external
        view
        returns (
            uint256 avail,
            uint256 hold,
            uint40 lastT,
            uint32 lastSettledEpoch,
            uint256 openSupplyTime
        );
    function epochs(
        address asset,
        uint32 epochId
    )
        external
        view
        returns (
            uint40 t_end,
            uint256 S_end,
            uint256 rateRay,
            uint256 X_end,
            uint256 interest,
            uint256 supplyTime
        );
    function astate(address asset)
        external
        view
        returns (
            uint256 borrowIndexWad,
            uint256 cash,
            uint256 borrows,
            uint256 totalSupplied,
            uint256 reserves,
            uint256 totalSuppliedTime,
            uint40 lastAccrual,
            uint32 epoch
        );
}
