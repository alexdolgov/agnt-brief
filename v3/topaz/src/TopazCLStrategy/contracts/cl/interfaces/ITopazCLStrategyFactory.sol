// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

/// @notice Shared access-control + config registry that every TopazCLStrategy
///         reads (keeper, rebalancer whitelist, global pause, native, fee sink).
interface ITopazCLStrategyFactory {
    function native() external view returns (address);

    function keeper() external view returns (address);

    function feeRecipient() external view returns (address);

    function globalPause() external view returns (bool);

    function rebalancers(address account) external view returns (bool);
}
