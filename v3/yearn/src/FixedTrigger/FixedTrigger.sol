// SPDX-License-Identifier: AGPL-3.0
pragma solidity =0.8.18 >=0.8.18;

// lib/tokenized-strategy-periphery/src/ReportTrigger/CustomStrategyTriggerBase.sol

/**
 *   @title Custom Strategy Trigger Base.
 *   @author Yearn.finance
 */
abstract contract CustomStrategyTriggerBase {
    /**
     * @notice Returns if a strategy should report any accrued profits/losses.
     * @dev This can be used to implement a custom trigger if the default
     * flow is not desired by a strategies management.
     *
     * Should complete any needed checks and then return `true` if the strategy
     * should report and `false` if not.
     *
     * @param _strategy The address of the strategy to check.
     * @return . Bool representing if the strategy is ready to report.
     * @return . Bytes with either the calldata or reason why False.
     */
    function reportTrigger(
        address _strategy
    ) external view virtual returns (bool, bytes memory);
}

// src/periphery/Trigger.sol

interface IStrategy {
    function lastReport() external view returns (uint256);
    function report() external returns (uint256, uint256);
}

interface CommonTrigger {
    function isCurrentBaseFeeAcceptable() external view returns (bool);
}

contract FixedTrigger is CustomStrategyTriggerBase {

    uint256 public timeToTrigger = 5 days;

    address public immutable gov;

    CommonTrigger internal constant commonTrigger = CommonTrigger(0xA045D4dAeA28BA7Bfe234c96eAa03daFae85A147);

    mapping(address => uint256) public overrideTime;

    constructor(address _gov) {
        gov = _gov;
    }

    function reportTrigger(
        address _strategy
    ) external view override returns (bool, bytes memory) {
        if (commonTrigger.isCurrentBaseFeeAcceptable()) {

            uint256 _time = overrideTime[_strategy];

            if (_time == 0) _time = timeToTrigger;

            return (
                // Return true is the full profit unlock time has passed since the last report.
                block.timestamp - IStrategy(_strategy).lastReport() >
                    _time,
                // Return the report function sig as the calldata.
                abi.encodeWithSelector(IStrategy.report.selector)
            );
        } else {
            return (false, bytes("Base Fee"));
        }
    }

    function setTimeToTrigger(uint256 _timeToTrigger) external {
        require(msg.sender == gov);
        require(_timeToTrigger != 0);
        timeToTrigger = _timeToTrigger;
    }

    function setOverrideTime(address _address, uint256 _time) external {
        require(msg.sender == gov);
        overrideTime[_address] = _time;
    }
}