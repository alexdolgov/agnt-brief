// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

import {ConfigRegistry} from "../ConfigRegistry.sol";
import {IPerpPnlView} from "../interfaces/IPerpPnlView.sol";
import {IAccountValuesLens} from "./IAccountValuesLens.sol";

// Minimal view interface into PositionsManager used by the lens
interface IPMViews {
    struct Balance {
        uint256 avail;
        uint256 hold;
    }
    function debt(
        address user,
        address asset
    )
        external
        view
        returns (uint256 principal, uint256 indexAtOpenWad);
    function userSupplyIndexWad(address user, address asset) external view returns (uint256);
    function config() external view returns (ConfigRegistry);
    function engines(address m) external view returns (bool);
    function ftDustThreshold() external view returns (uint256);
    function ftRequiredCashBuffer() external view returns (uint256);
    function perpPnlView() external view returns (IPerpPnlView);
    function perpPnlMaxAge() external view returns (uint32);
    function noncesTyped(address user, bytes32 typehash) external view returns (uint256);
    function valuesLens() external view returns (IAccountValuesLens);
    function withdrawPaused(address asset) external view returns (bool);
    function systemTokenFT() external view returns (address);
    function supplyCap(address asset) external view returns (uint256);
    function DOMAIN_SEPARATOR() external view returns (bytes32);
    function userInterestSettledUnits(
        address user,
        address asset
    )
        external
        view
        returns (uint256);
    function userSupplyIdxAtSettleWad(
        address user,
        address asset
    )
        external
        view
        returns (uint256);
    function userFtPerInterestIndexWad(
        address user,
        address asset
    )
        external
        view
        returns (uint256);
    function astate(address asset)
        external
        view
        returns (
            uint256 borrowIndexWad,
            uint256 lastAccrual,
            uint256 cash,
            uint256 borrows,
            uint256 reserves,
            uint256 supplyIndexWad,
            uint256 totalSupplied,
            uint256 supplierInterestAccrued,
            uint256 ftPerInterestIndexWad,
            uint256 ftIndexAtEpochOpenWad,
            uint256 lastSupplyIndexSettledWad,
            uint256 prevSupplyIndexSettledWad,
            uint256 settlementBaseUnits,
            uint256 settlementUnitsSettled,
            uint64 settleEpoch,
            uint256 idlePrincipal
        );
}
