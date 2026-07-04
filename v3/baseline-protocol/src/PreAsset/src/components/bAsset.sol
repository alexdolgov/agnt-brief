// SPDX-License-Identifier: MIT
pragma solidity =0.8.23;

import {ERC20} from "solmate/tokens/ERC20.sol";
import {BlastClaimer} from "./BlastClaimer.sol";

// Baseline token implementation
contract BAsset is ERC20 {
    address public immutable baseline;

    error InvalidCaller();

    constructor(string memory name_, string memory symbol_) ERC20(name_, symbol_, 18) {
        // start with 0 initial supply and mint it when we deploy Initial Liquidity in the callback
        baseline = msg.sender;
        BlastClaimer.configureGovernor(msg.sender);
    }

    function mint(address to, uint256 amount_) external {
        if (msg.sender != baseline) revert InvalidCaller();
        _mint(to, amount_);
    }

    // Burns all token supply greater than totalSupply
    function burn(uint256 amount_) external {
        if (msg.sender != baseline) revert InvalidCaller();
        _burn(baseline, amount_);
    }
}
