// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.18;

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

contract Keeper {
    function report(address _strategy) external virtual {}
}

interface ICommon {
    function defaultStrategyReportTrigger(
        address _strategy
    ) external view returns (bool, bytes memory);
}
contract CustomTrigger is CustomStrategyTriggerBase {

    address public constant common = 0xD98C652f02E7B987e0C258a43BCa9999DF5078cF;

    function reportTrigger(address _strategy) external override view returns (bool trigger, bytes memory data) {
        (trigger, data) = ICommon(common).defaultStrategyReportTrigger(_strategy);

        if (trigger) {
            data = abi.encodeCall(Keeper.report, _strategy);
        }
    }
}