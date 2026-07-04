// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

interface IDebtAggregator {
    function borrow(
        address _asset,
        uint256 _positionId,
        address _positionOwner,
        uint256 _amount
    ) external;

    function repay(
        address _asset,
        uint256 _positionId,
        address _positionOwner,
        uint256 _amount
    ) external;

    function liquidate(uint256 positionId, address liquidator) external;

    function getDebt(uint256 _positionId) external view returns (uint256);

    function getAssetETHValue(
        address _asset,
        uint256 _amount
    ) external view returns (uint256);
}
