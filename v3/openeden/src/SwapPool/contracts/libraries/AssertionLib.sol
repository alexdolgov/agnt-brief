// SPDX-License-Identifier: Business Source License 1.1
pragma solidity ^0.8.22;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {ITreasury} from "../interfaces/ITreasury.sol";
import {ValidationLib} from "./ValidationLib.sol";

/**
 * @title AssertionLib
 * @notice Zero-balance assertion logic extracted from SwapPool
 * @dev Provides unrolled assertion functions to avoid loop-based external calls
 */
library AssertionLib {
    /// @dev Fixed-size container for up to 8 token addresses
    struct TokenList {
        address[8] tokens;
        uint8 len;
    }

    /// @dev Detailed error identifying which assertion failed
    error ZeroBalanceAssertionFailed(uint256 index, address token, uint256 balance);

    /**
     * @notice Build a fixed-size TokenList from a dynamic array
     * @param tokens Dynamic array of token addresses
     * @param maxTokens Maximum allowed tokens (for bounds checking)
     * @return out TokenList struct with tokens and length
     */
    function buildTokenList(
        address[] memory tokens,
        uint256 maxTokens
    ) internal pure returns (TokenList memory out) {
        uint256 len = tokens.length;
        if (len == 0) {
            out.len = 0;
            return out;
        }
        if (len > maxTokens) revert("TOO_MANY_TOKENS");
        for (uint256 i = 0; i < len; i++) {
            out.tokens[i] = tokens[i];
        }
        // Safe cast: len <= maxTokens <= 8, which fits in uint8 (max 255)
        // forge-lint: disable-next-line(unsafe-typecast)
        out.len = uint8(len);
    }

    /**
     * @notice Assert zero balances for tokens from a dynamic array
     * @param tokens Array of token addresses to check
     * @param maxTokens Maximum allowed tokens
     * @param treasury Treasury address
     * @param contractHeldTreasury Whether contract holds treasury funds
     * @param tokenHeldInContract Mapping of per-token custody flags
     */
    function assertZeroBalancesFromArray(
        address[] memory tokens,
        uint256 maxTokens,
        address treasury,
        bool contractHeldTreasury,
        mapping(address => bool) storage tokenHeldInContract,
        address pool
    ) internal view {
        if (tokens.length == 0) return;
        TokenList memory list = buildTokenList(tokens, maxTokens);
        assertZeroBalances(list, treasury, contractHeldTreasury, tokenHeldInContract, pool);
    }

    /**
     * @notice Assert zero balances for tokens in a TokenList (unrolled for gas efficiency)
     * @param list TokenList containing addresses to check
     * @param treasury Treasury address
     * @param contractHeldTreasury Whether contract holds treasury funds
     * @param tokenHeldInContract Mapping of per-token custody flags
     */
    function assertZeroBalances(
        TokenList memory list,
        address treasury,
        bool contractHeldTreasury,
        mapping(address => bool) storage tokenHeldInContract,
        address pool
    ) internal view {
        uint8 len = list.len;
        if (len == 0) return;

        // Unrolled for gas efficiency and to avoid loop-based external calls
        if (len >= 1)
            checkOneZero(
                0,
                list.tokens[0],
                treasury,
                contractHeldTreasury,
                tokenHeldInContract,
                pool
            );
        if (len >= 2)
            checkOneZero(
                1,
                list.tokens[1],
                treasury,
                contractHeldTreasury,
                tokenHeldInContract,
                pool
            );
        if (len >= 3)
            checkOneZero(
                2,
                list.tokens[2],
                treasury,
                contractHeldTreasury,
                tokenHeldInContract,
                pool
            );
        if (len >= 4)
            checkOneZero(
                3,
                list.tokens[3],
                treasury,
                contractHeldTreasury,
                tokenHeldInContract,
                pool
            );
        if (len >= 5)
            checkOneZero(
                4,
                list.tokens[4],
                treasury,
                contractHeldTreasury,
                tokenHeldInContract,
                pool
            );
        if (len >= 6)
            checkOneZero(
                5,
                list.tokens[5],
                treasury,
                contractHeldTreasury,
                tokenHeldInContract,
                pool
            );
        if (len >= 7)
            checkOneZero(
                6,
                list.tokens[6],
                treasury,
                contractHeldTreasury,
                tokenHeldInContract,
                pool
            );
        if (len >= 8)
            checkOneZero(
                7,
                list.tokens[7],
                treasury,
                contractHeldTreasury,
                tokenHeldInContract,
                pool
            );
    }

    /**
     * @notice Check that a single token has zero balance in treasury
     * @param index Index of token in list (for error reporting)
     * @param token Token address to check
     * @param treasury Treasury address
     * @param contractHeldTreasury Whether contract holds treasury funds
     * @param tokenHeldInContract Mapping of per-token custody flags
     */
    function checkOneZero(
        uint256 index,
        address token,
        address treasury,
        bool contractHeldTreasury,
        mapping(address => bool) storage tokenHeldInContract,
        address pool
    ) internal view {
        if (token == address(0)) return;
        ValidationLib.validateAddress(token);

        uint256 bal;
        if (contractHeldTreasury || tokenHeldInContract[token]) {
            bal = IERC20(token).balanceOf(pool);
        } else if (ValidationLib.isContract(treasury)) {
            bal = ITreasury(treasury).getTokenBalance(token);
        } else {
            bal = IERC20(token).balanceOf(treasury);
        }

        if (bal != 0) revert ZeroBalanceAssertionFailed(index, token, bal);
    }
}
