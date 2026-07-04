// SPDX-License-Identifier: Unlicense
pragma solidity =0.8.27;

/// @title AgentKeyToolkit: A library that stores common variables for Agent Key tokens.
library AgentKeyToolkit {
    /// @dev 100% to 1 d.p.
    uint256 public constant PERCENT_DENOMINATOR = 1000;

    /// @dev Maximum trade fee of 5%
    uint8 public constant MAX_TRADE_FEE_PERCENT = 50;
    /// @dev Maximum success fee of 5%
    uint8 public constant MAX_SUCCESS_FEE = 50;
    /// @dev Maximum value for the maximum % initial buy
    uint16 public constant MAX_INITIAL_BUY_PERCENT = 900;

    uint256 public constant INITIAL_REAL_TOKEN = 21_000_000 ether;
    uint256 public constant FINAL_REAL_TOKEN = 4_344_900 ether;
    uint256 private constant OFFSET = 1_533_000 ether;
    uint256 public constant INITIAL_VIRTUAL_TOKEN = INITIAL_REAL_TOKEN + OFFSET;
    uint256 public constant FINAL_VIRTUAL_TOKEN = FINAL_REAL_TOKEN + OFFSET;
}
