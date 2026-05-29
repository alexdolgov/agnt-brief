// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

interface IController {
    function openPosition() external;

    function closePosition(uint256 _positionId) external;

    function borrow(
        address _asset,
        uint256 _positionId,
        uint256 _amount
    ) external;

    function repay(
        address _asset,
        uint256 _positionId,
        uint256 _amount
    ) external;

    function deposit(
        address asset,
        uint256 positionId,
        uint256 amount
    ) external;

    function depositToNewPosition(address _asset, uint256 _amount) external;

    function withdraw(
        address asset,
        uint256 positionId,
        uint256 amount
    ) external;

    function liquidate(uint256 positionId, address receiver) external;

    function getAvailableCredit(
        uint256 positionId
    ) external view returns (uint256);
}
