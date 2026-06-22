// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.0;

interface IMarket {

    event UpdateIncreasePositionStatus(address sender, uint256 pairIndex, bool enabled);
    event UpdateDecreasePositionStatus(address sender, uint256 pairIndex, bool enabled);
    event UpdateOrderStatus(address sender, uint256 pairIndex, bool enabled);
    event UpdateAddLiquidityStatus(address sender, uint256 pairIndex, bool enabled);
    event UpdateRemoveLiquidityStatus(address sender, uint256 pairIndex, bool enabled);
    event SetEnterBacktracker(address sender, bool enter);

    struct OperationStatus {
        bool increasePositionDisabled;
        bool decreasePositionDisabled;
        bool orderDisabled;
        bool addLiquidityDisabled;
        bool removeLiquidityDisabled;
    }

    function enterBacktracker() external view returns (bool);

    function getOperationStatus(uint256 pairIndex) external view returns (OperationStatus memory);
}
