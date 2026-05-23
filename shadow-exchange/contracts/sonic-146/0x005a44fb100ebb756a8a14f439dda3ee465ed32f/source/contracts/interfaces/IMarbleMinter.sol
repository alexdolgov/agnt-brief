// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.0;

import {IMinter} from "./IMinter.sol";

interface IMarbleMinter is IMinter {
    /// @notice migrate gauges for Marble Zone Migration
    function migration(address[] calldata gauges) external;

    /// @notice sets up fee redirection for new legacy gauges
    function postCreateLegacyGaugeHook(address pool) external;

    /// @notice redirects legacy pair fees to new feeRecipients
    function redirectFees(uint256 start, uint256 batchSize) external;

    /// @notice allows governance to rescue tokens (pair fees without gauges)
    function rescueTokens(address token, uint256 amount) external;

    /// @notice allows governance to change Access Hub
    function setAccessHub(address _accessHub) external;

    /// @notice allows governance to change Operator
    function setOperator(address _operator) external;
}
