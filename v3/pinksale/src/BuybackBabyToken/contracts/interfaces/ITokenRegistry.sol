// SPDX-License-Identifier: MIT
pragma solidity =0.8.4;

import "../BaseToken.sol";

interface ITokenRegistry {
    function register(
        address owner,
        TokenType tokenType,
        uint256 version
    ) external;
}

