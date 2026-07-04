// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IRevestVeFXS {
    event DepositToken(
        address indexed mintTo, uint256 indexed fnftId, address indexed token, uint256 amountTokens, uint256 expiration
    );

    event DepositAdditionalToken(uint256 indexed fnftId, address indexed token, uint256 amountTokens);

    event TimeLockExtension(uint256 indexed fnftId, uint256 newExpiration);

    event ClaimYield(uint256 indexed fnftId, uint256 indexed token, uint256 amountTokens);
}
