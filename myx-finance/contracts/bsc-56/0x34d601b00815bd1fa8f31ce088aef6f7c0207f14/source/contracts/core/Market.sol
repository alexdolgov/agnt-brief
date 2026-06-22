// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.19;

import "../libraries/Upgradeable.sol";
import "../interfaces/IAddressesProvider.sol";
import "../interfaces/IMarket.sol";

contract Market is IMarket, Upgradeable {

    mapping(uint256 => OperationStatus) public operationStatus;
    bool public enterBacktracker;

    function initialize(
        IAddressesProvider addressProvider
    ) public initializer {
        ADDRESS_PROVIDER = addressProvider;
        enterBacktracker = false;
    }

    function updateIncreasePositionStatus(uint256 pairIndex, bool enabled) external onlyPoolAdmin {
        operationStatus[pairIndex].increasePositionDisabled = !enabled;
        emit UpdateIncreasePositionStatus(msg.sender, pairIndex, enabled);
    }

    function updateDecreasePositionStatus(uint256 pairIndex, bool enabled) external onlyPoolAdmin {
        operationStatus[pairIndex].decreasePositionDisabled = !enabled;
        emit UpdateDecreasePositionStatus(msg.sender, pairIndex, enabled);
    }

    function updateOrderStatus(uint256 pairIndex, bool enabled) external onlyPoolAdmin {
        operationStatus[pairIndex].orderDisabled = !enabled;
        emit UpdateOrderStatus(msg.sender, pairIndex, enabled);
    }

    function updateAddLiquidityStatus(uint256 pairIndex, bool enabled) external onlyPoolAdmin {
        operationStatus[pairIndex].addLiquidityDisabled = !enabled;
        emit UpdateAddLiquidityStatus(msg.sender, pairIndex, enabled);
    }

    function updateRemoveLiquidityStatus(uint256 pairIndex, bool enabled) external onlyPoolAdmin {
        operationStatus[pairIndex].removeLiquidityDisabled = !enabled;
        emit UpdateRemoveLiquidityStatus(msg.sender, pairIndex, enabled);
    }

    function setEnterBacktracker(bool enter) external onlyPoolAdmin {
        enterBacktracker = enter;
        emit SetEnterBacktracker(msg.sender, enter);
    }

    function getOperationStatus(uint256 pairIndex) external view returns (OperationStatus memory) {
        return operationStatus[pairIndex];
    }
}
