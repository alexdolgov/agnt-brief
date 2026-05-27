// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import "./UnitToken.sol";  // Assume this is in the same directory

contract UnitPlasma is UnitToken {
    function tokenName() internal pure override returns (string memory) {
        return "Unit Plasma";
    }

    function tokenSymbol() internal pure override returns (string memory) {
        return "UXPL";
    }

    function systemAddress() internal pure override returns (address) {
        return 0x2000000000000000000000000000000000000157;
    }

    function tokenSupply() internal pure override returns (uint256) {
        return 10000000000;
    }

    function tokenDecimals() internal pure override returns (uint8) {
        return 18;
    }
}