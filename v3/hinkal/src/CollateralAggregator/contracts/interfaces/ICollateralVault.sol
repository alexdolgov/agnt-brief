// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

interface ICollateralVault {
    function deposit(
        uint256 positionId,
        address positionOwner,
        uint256 amount
    ) external;

    function withdraw(
        uint256 positionId,
        address positionOwner,
        uint256 amount
    ) external returns (bool);

    function seizeCollateral(uint256 positionId, address liquidator) external;

    function getPositionCollateral(
        uint256 positionId
    ) external view returns (uint256);
}
