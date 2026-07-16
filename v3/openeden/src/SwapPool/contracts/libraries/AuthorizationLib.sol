// SPDX-License-Identifier: Business Source License 1.1
pragma solidity ^0.8.22;

/**
 * @title AuthorizationLib
 * @notice Authorization query logic extracted from SwapPool
 * @dev Provides view functions for checking trader and pair authorization
 * @dev Note: Uses inline struct definition matching SwapPool.TokenPairData
 */
library AuthorizationLib {
    /**
     * @notice Check if trader is allowed to swap a token pair
     * @param isAuthorized Whether the pair is authorized
     * @param enforceTraderAuth Whether trader authorization is enforced
     * @param authorizedTraders Mapping of authorized traders for this pair
     * @param trader Trader address to check
     * @return True if trader is allowed to swap this pair
     */
    function isTraderAllowed(
        bool isAuthorized,
        bool enforceTraderAuth,
        mapping(address => bool) storage authorizedTraders,
        address trader
    ) internal view returns (bool) {
        return isAuthorized && (!enforceTraderAuth || authorizedTraders[trader]);
    }

    /**
     * @notice Check if a token pair is authorized for swapping
     * @param isAuthorized Whether the pair is authorized
     * @return True if the token pair is authorized
     */
    function isTokenPairAuthorized(bool isAuthorized) internal pure returns (bool) {
        return isAuthorized;
    }

    /**
     * @notice Check if a trader is specifically authorized for a token pair
     * @param authorizedTraders Mapping of authorized traders for this pair
     * @param trader Trader address to check
     * @return True if the trader is authorized
     */
    function isTraderAuthorized(
        mapping(address => bool) storage authorizedTraders,
        address trader
    ) internal view returns (bool) {
        return authorizedTraders[trader];
    }
}
