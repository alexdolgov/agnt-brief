// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "./SilverLswManager.sol";
import "./SilverLswTaskManager.sol";

/**
 * @title GaugeTaskExecutor
 * @author github.com/SifexPro
 * @notice This contract is dedicated to Gelato tasks related to a specific gauge
 */
contract GaugeTaskExecutor {
    SilverLswManager public immutable manager;
    SilverLswTaskManager public immutable taskManager;
    address public immutable poolGauge;

    enum TaskType { SNAPSHOT, BREAK_LIQUIDITY }

    constructor(address _poolGauge) {
        require(_poolGauge != address(0), "Zero address");
        manager = SilverLswManager(payable(msg.sender));
        taskManager = manager.taskManager();
        poolGauge = _poolGauge;
    }

    function execute(TaskType taskType) external {
        require(msg.sender == taskManager.dedicatedMsgSender(), "Unauthorized executor caller");

        if (taskType == TaskType.SNAPSHOT) {
            manager.calcVotedGaugeData(poolGauge);
        } else {
            manager.breakLiquidityAndCompound(poolGauge);
        }
    }
}