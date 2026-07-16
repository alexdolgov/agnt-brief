// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import "../tokens/MintableBaseToken.sol";

contract NAVI is MintableBaseToken {
    constructor() public MintableBaseToken("NAVI", "NAVI", 0) {
    }

    function id() external pure returns (string memory _name) {
        return "NAVI";
    }
}
