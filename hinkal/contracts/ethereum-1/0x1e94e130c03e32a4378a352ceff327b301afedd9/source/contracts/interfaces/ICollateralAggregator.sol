// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

interface ICollateralAggregator {
    function deposit(
        address asset,
        uint256 positionId,
        address positionOwner,
        uint256 amount
    ) external;

    function withdraw(
        address asset,
        uint256 positionId,
        address positionOwner,
        uint256 amount
    ) external;

    function seizeCollateral(uint256 positionId, address liquidator) external;

    function getPositionCollaterals(
        uint256 _positionId
    ) external view returns (address[] memory);

    function getCreditLimit(
        uint256 _positionId
    ) external view returns (uint256);

    function previewWithdrawalCreditLimitETH(
        uint256 _positionId,
        address _witdrawAsset,
        uint256 _withdrawAmount
    ) external view returns (uint256);

    function getLiquidationThreshold(
        uint256 _positionId
    ) external view returns (uint256);
}
