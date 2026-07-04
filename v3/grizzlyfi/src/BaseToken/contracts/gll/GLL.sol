// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import "../tokens/MintableBaseToken.sol";

contract GLL is MintableBaseToken {
    constructor() public MintableBaseToken("Grizzly Perp LP", "GLL", 0) {}

    function id() external pure returns (string memory _name) {
        return "GLL";
    }
}
