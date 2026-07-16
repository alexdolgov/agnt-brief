// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.19;

import {ERC20} from "solady/src/tokens/ERC20.sol";

/// @title Token
/// @notice Simple Token to be used in the InflationReceiver contract.
contract Token is ERC20 {
    constructor() {
        _mint(msg.sender, 1e18);
    }

    function name() public pure override returns (string memory) {
        return "SDT Rewards Allocation Pool";
    }

    function symbol() public pure override returns (string memory) {
        return "SDT-REWARDS-POOL";
    }
}
