// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

import {AquaLpToken} from "../Aqua/AquaLpToken.sol";
import {PriceOracle} from "../Compound/PriceOracle.sol";
import {AquaVaultSignatureCheck} from "../Aqua/AquaVaultSignatureCheck.sol";

// contract AquaVaultStorage {
// address public nativePool;
// mapping(address => AquaLpToken) public lpTokenByUnderlyingToken;
// // marketMaker_address => token_address => position_balance (positive for long, negative for short)
// mapping(address => mapping(address => int256)) public marketMakerPositions;

// // user_address => token_address[]
// // to keep a list of tokens for each user upon liquidity calculation
// mapping(address => address[]) public accountAssets;

// // user_address => token_address => added or not
// // to avoid traversing the array every time: https://github.com/compound-finance/compound-protocol/blob/master/contracts/Comptroller.sol#L154-L157
// mapping(address => mapping(address => bool)) public accountMembership;

// PriceOracle public oracle;

// uint256[100] private __gap;
// }

contract AquaVaultStorage {
    /// @notice map from underlying address to LP token
    mapping(address => AquaLpToken) public lpTokens;

    address public nativePool;

    address internal signer;

    // trader_address => token => amount
    mapping(address => mapping(address => int)) public positions;

    // nonce => used
    mapping(uint256 => bool) internal isNonceUsed;

    // trader_address => token => amount
    mapping(address => mapping(address => uint)) public aquaCollateral;

    AquaVaultSignatureCheck internal aquaVaultSignatureCheck;

    mapping(address => bool) public isTraders;

    mapping(address => bool) public isLiquidators;

    mapping(address => bool) public isLpTokenBorrowEnabled;

    // trader_address => settler_address
    mapping(address => address) public traderSettlers;

    uint256[50] private __gap;
}
