// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

interface IDackieV3PoolOwnerActions {
    function setFeeProtocol(uint32 feeProtocol0, uint32 feeProtocol1) external;

    function collectProtocol(
        address recipient,
        uint128 amount0Requested,
        uint128 amount1Requested
    ) external returns (uint128 amount0, uint128 amount1);

    function claimYieldAll(address recipient, uint256 _wethA, uint256 _usdbA)
    external
    returns (uint256 wethB, uint256 usdbB, uint256 gas);
}
