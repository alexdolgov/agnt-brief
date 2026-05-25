// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "./libraries/IAddressStoreUtils.sol";
import "./libraries/IPairsStorageUtils.sol";
import "./libraries/IReferralsUtils.sol";
import "./libraries/IFeeTiersUtils.sol";
import "./libraries/IPriceImpactUtils.sol";

/**
 * @custom:version 7
 */
interface IGNSMultiCollatDiamond is
    IAddressStoreUtils,
    IPairsStorageUtils,
    IReferralsUtils,
    IFeeTiersUtils,
    IPriceImpactUtils
{
    // mux copied from IGNSPairsStorage
    function pairs(uint256 _index) external view returns (Pair memory);

    function pairsCount() external view returns (uint256);

    function pairFeed(uint256 _pairIndex) external view returns (Feed memory);

    function pairSpreadP(uint256 _pairIndex) external view returns (uint256);

    function pairMinLeverage(uint256 _pairIndex) external view returns (uint256);

    function pairOpenFeeP(uint256 _pairIndex) external view returns (uint256);

    function pairCloseFeeP(uint256 _pairIndex) external view returns (uint256);

    function pairOracleFeeP(uint256 _pairIndex) external view returns (uint256);

    function pairNftLimitOrderFeeP(uint256 _pairIndex) external view returns (uint256);

    function pairMinLevPosUsd(uint256 _pairIndex) external view returns (uint256);

    function groups(uint256 _index) external view returns (Group memory);

    function groupsCount() external view returns (uint256);

    function fees(uint256 _index) external view returns (Fee memory);

    function feesCount() external view returns (uint256);

    function pairsBackend(uint256 _index) external view returns (Pair memory, Group memory, Fee memory);

    function pairMaxLeverage(uint256 _pairIndex) external view returns (uint256);

    function pairCustomMaxLeverage(uint256 _pairIndex) external view returns (uint256);

    function getAllPairsRestrictedMaxLeverage() external view returns (uint256[] memory);
}
