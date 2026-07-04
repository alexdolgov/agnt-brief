// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import "../tokens/MintableBaseToken.sol";

contract RAP is MintableBaseToken {
    constructor() public MintableBaseToken("RAP", "RAP", 0) {
    }

    function id() external pure returns (string memory _name) {
        return "RAP";
    }
}
