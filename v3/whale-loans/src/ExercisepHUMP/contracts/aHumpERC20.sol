// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.7.5;

import "./types/Divine.sol";

contract AlphaHUMP is Divine {
    constructor() Divine("Alpha HUMP", "aHUMP", 9) {
        _mint(_owner, 50000000000000);
    }

    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }
}