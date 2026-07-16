// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/// @title STO: StakeStone Governance Token
contract STO is ERC20 {
    constructor(address _receiver) ERC20("StakeStone", "STO") {
        _mint(_receiver, 1_000_000_000 * 1e18);
    }
}
