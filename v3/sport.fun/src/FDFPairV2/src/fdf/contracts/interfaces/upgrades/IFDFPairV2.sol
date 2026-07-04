// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {IFDFPair} from "../IFDFPair.sol";

/**
 * @title IFDFPairV2
 * @notice Interface for FDFPairV2 contract with player-to-player swap functionality
 * @dev Extends IFDFPair with new V2 features
 */
interface IFDFPairV2 is IFDFPair {
    
    function SWAP_TOKENS_SIG() external pure returns (bytes4);

    // ═══════════════════════════════════════════════════════════════════════════════════
    // EVENTS
    // ═══════════════════════════════════════════════════════════════════════════════════
    
    /**
     * @notice Emitted when tokens are swapped between two player pools
     * @param swapper Address initiating the swap
     * @param recipient Address receiving the output tokens
     * @param playerTokenIdsIn Array of player token IDs being sold
     * @param playerTokenAmountsIn Array of amounts of input tokens
     * @param playerTokenIdsOut Array of player token IDs being bought
     * @param playerTokenAmountsOut Array of amounts of output tokens received
     * @param currencyReceivedArr Array of currency received
     * @param sellFeeAmounts Array of sell fees paid
     */
    event TokensSwapped(
        address indexed swapper,
        address indexed recipient,
        uint256[] playerTokenIdsIn,
        uint256[] playerTokenAmountsIn,
        uint256[] playerTokenIdsOut,
        uint256[] playerTokenAmountsOut,
        uint256[] currencyReceivedArr,
        uint256[] sellFeeAmounts
    );

    // ═══════════════════════════════════════════════════════════════════════════════════
    // STRUCTS
    // ═══════════════════════════════════════════════════════════════════════════════════
    
    /**
     * @notice Parameters for swapping player tokens
     * @dev Used in swapTokens function
     */
    struct SwapTokensParams {
        uint256[] playerTokenIdsIn;      // Array of player token IDs to sell
        uint256[] playerTokenAmountsIn;  // Array of amounts to sell
        uint256[] playerTokenIdsOut;     // Array of player token IDs to buy
        uint256[] playerTokenAmountsOut; // Array of minimum amounts to receive
        uint256 deadline;                // Transaction deadline timestamp
        address recipient;               // Address to receive output tokens (address(0) = msg.sender)
        bytes signature;                 // EIP-712 signature for authorization
        uint256 nonce;                   // Unique nonce for replay protection
    }

    // ═══════════════════════════════════════════════════════════════════════════════════
    // VIEW FUNCTIONS
    // ═══════════════════════════════════════════════════════════════════════════════════

    /**
     * @notice Get the expected output amounts and fees for a token swap operation
     * @dev Simulates the swap operation without executing it
     * @param _playerTokenIdsIn Array of player token IDs to sell
     * @param _playerTokenAmountsIn Array of amounts to sell
     * @param _playerTokenIdsOut Array of player token IDs to buy
     * @return amountsToReceive Array of output token amounts that will be received
     * @return feeAmounts Array of fee amounts (only applied on sell operation)
     * @return feeRates Array of fee rates (only applied on sell operation)
     * @return feeTypes Array of fee types (only applied on sell operation)
     */
    function getSwapPrice(
        uint256[] memory _playerTokenIdsIn,
        uint256[] memory _playerTokenAmountsIn,
        uint256[] memory _playerTokenIdsOut
    ) external view returns (uint256[] memory amountsToReceive, uint256[] memory feeAmounts, uint256[] memory feeRates, uint8[] memory feeTypes);
}
