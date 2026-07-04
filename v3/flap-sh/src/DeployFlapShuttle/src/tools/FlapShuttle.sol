// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

interface IFlapBlackHole {
    function eradicate(address token) external;
}

/**
 * @title FlapShuttle
 * @notice A helper contract to batch eradicate multiple tokens from FlapBlackHole
 * @dev This contract simplifies the process of calling eradicate on multiple tokens
 *      by allowing batch operations instead of individual transactions.
 */
contract FlapShuttle {
    /// @notice The immutable address of the FlapBlackHole contract
    address public constant FLAP_BLACK_HOLE = 0x00576E4Fb32296Cd973A0d413D0379609400DEad;

    /**
     * @notice Eradicates multiple tokens by calling FlapBlackHole's eradicate method for each token
     * @param tokens An array of token addresses to eradicate
     * @dev This function will call eradicate on each token in the array.
     *      The caller must have the BURNER_ROLE on the FlapBlackHole contract.
     *      If any eradicate call fails, the entire transaction will revert.
     */
    function eradicateMultiple(address[] calldata tokens) external {
        IFlapBlackHole blackHole = IFlapBlackHole(FLAP_BLACK_HOLE);
        
        uint256 length = tokens.length;
        for (uint256 i = 0; i < length; i++) {
            blackHole.eradicate(tokens[i]);
        }
    }
}
