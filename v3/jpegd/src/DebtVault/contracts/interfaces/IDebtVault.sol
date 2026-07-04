// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

interface IDebtVault {
    function borrow(
        uint256 positionId,
        address positionOwner,
        uint256 amount
    ) external;

    function repay(
        uint256 positionId,
        address positionOwner,
        uint256 amount
    ) external returns (bool);

    function liquidate(uint256 positionId, address liquidator) external;

    function getPositionDebt(
        uint256 positionId
    ) external view returns (uint256);

    function collect(address recepient) external;
}
