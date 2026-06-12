// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.20;

import {RouterCommandsUtilities} from "src/libraries/RouterCommandsUtilities.sol";

/**
 * @title IKyberSwapModule
 * @notice Interface for the KyberSwapModule contract that handles KyberSwap operations
 */
interface IKyberSwapModule {
    // ============ Events ============

    /**
     * @dev Emitted when the KyberSwap router address is changed
     * @param previousKyberRouter The previous router address
     * @param newKyberRouter The new router address
     */
    event KyberRouterChange(address indexed previousKyberRouter, address indexed newKyberRouter);

    // ============ Errors ============

    /**
     * @dev Error thrown for invalid addresses
     */
    error AddressError();

    /**
     * @dev Error thrown for invalid amounts
     */
    error AmountError();

    /**
     * @dev Error thrown when KyberSwap call fails
     */
    error KyberCallFailed();

    /**
     * @dev Error thrown when KyberSwap router is not set
     */
    error KyberRouterNotSet();

    /**
     * @dev Error thrown when minimum balance requirement is not met
     * @param token The token address
     * @param owner The owner address
     * @param actualBalance The actual balance
     * @param requiredMinimum The required minimum balance
     */
    error MinimumBalanceNotReached(address token, address owner, uint256 actualBalance, uint256 requiredMinimum);

    // ============ Configuration Functions ============

    /**
     * @notice Retrieves the current KyberSwap router address
     * @dev Returns the router address stored in the KyberSwap module storage
     * @return The address of the current KyberSwap router contract
     */
    function getKyberRouter() external view returns (address);

    /**
     * @notice Updates the KyberSwap router address used for swaps
     * @dev Only callable by authorized addresses (restricted modifier)
     *      Emits KyberRouterChange event before updating the storage
     * @param _kyberRouter The new KyberSwap router contract address
     * @custom:security Requires restricted access control
     * @custom:events Emits KyberRouterChange(oldRouter, newRouter)
     */
    function setKyberRouter(address _kyberRouter) external;

    // ============ Swap Functions ============

    /**
     * @dev Executes a swap using KyberSwap
     * @param tokenIn The address of the input token
     * @param amountIn The amount of input token
     * @param tokenOut The address of the output token
     * @param minAmountOut The minimum amount of output token (unused in implementation)
     * @param targetData The data to be sent to the KyberSwap router
     */
    function kyberSwap(
        address tokenIn,
        uint256 amountIn,
        address tokenOut,
        uint256 minAmountOut,
        bytes calldata targetData
    ) external payable;

    // ============ Utility Functions ============

    /**
     * @dev Checks if a token balance meets the required minimum value and reverts if not
     * @param token The ERC20 token contract address to check balance for
     * @param owner The address whose token balance will be checked
     * @param minValue The minimum required token balance
     * @notice Reverts with MinimumBalanceNotReached error if the balance is below the minimum
     */
    function assertMinBalance(address token, address owner, uint256 minValue) external view;

    // ============ Preview Functions ============

    /**
     * @dev Preview function for KYBER_SWAP command
     * @param _inputs The encoded input parameters
     * @param _spot Whether to use spot pricing (unused in this implementation)
     * @param balances The current token balances
     * @return rate The calculated rate
     * @return balances The updated token balances
     */
    function previewKyberSwap(bytes memory _inputs, bool _spot, RouterCommandsUtilities.TokenBalance[] memory balances)
        external
        view
        returns (uint256, RouterCommandsUtilities.TokenBalance[] memory);

    /**
     * @dev Preview function for ASSERT_MIN_BALANCE command
     * @param _inputs The encoded input parameters (unused)
     * @param _spot Whether to use spot pricing (unused)
     * @param balances The current token balances
     * @return rate Always returns RAY_UNIT (1.0)
     * @return balances The unchanged token balances
     */
    function previewAssertMinBalance(
        bytes calldata _inputs,
        bool _spot,
        RouterCommandsUtilities.TokenBalance[] memory balances
    ) external pure returns (uint256, RouterCommandsUtilities.TokenBalance[] memory);
}
