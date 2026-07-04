// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;
import "@openzeppelin/contracts/utils/introspection/IERC165.sol";

interface IRestrictedSwap is IERC165 {
    /**
     * @title Data Structures
     */
    enum SwapStatus {
        SellConfigured,
        BuyConfigured,
        Complete,
        Canceled
    }

    struct Swap {
        address restrictedTokenSender;
        address quoteTokenSender;
        address quoteToken;
        uint256 restrictedTokenAmount;
        uint256 quoteTokenAmount;
        SwapStatus status;
    }

    /**
     * @title Functions
     */

    /**
     *  @dev Configure swap and emit an event with new swap number
     *  @param restrictedTokenAmount the required amount for the erc1404Sender to send
     *  @param quoteToken the address of an erc1404 or erc20 that will be swapped
     *  @param token2Address the address that is approved to fund quoteToken
     *  @param quoteTokenAmount the required amount of quoteToken to swap
     */
    function configureSell(
        uint256 restrictedTokenAmount,
        address quoteToken,
        address token2Address,
        uint256 quoteTokenAmount
    ) external;

    /**
     *  @dev Configure swap and emit an event with new swap number
     *  @param restrictedTokenAmount the required amount for the erc1404Sender to send
     *  @param restrictedTokenSender restricted token sender
     *  @param quoteToken the address of an erc1404 or erc20 that will be swapped
     *  @param quoteTokenAmount the required amount of quoteToken to swap
     */
    function configureBuy(
        uint256 restrictedTokenAmount,
        address restrictedTokenSender,
        address quoteToken,
        uint256 quoteTokenAmount
    ) external;

    /**
     *  @dev Complete swap with quote token
     *  @param swapNumber swap number
     */
    function completeSwapWithQuoteToken(uint256 swapNumber) external;

    /**
     *  @dev Complete swap with restricted token
     *  @param swapNumber swap number
     */
    function completeSwapWithRestrictedToken(uint256 swapNumber) external;

    /**
     *  @dev cancel swap
     *  @param swapNumber swap number
     */
    function cancelSwap(uint256 swapNumber) external;

    /**
     * @dev Returns the swap status if exists
     * @param swapNumber swap number
     * @return SwapStatus status of the swap record
     */
    function swapStatus(uint256 swapNumber) external view returns (SwapStatus);

    /****************************
     * Events
     ****************************/

    /// @notice This event is emitted when swap is canceled
    /// @param sender address of canceler
    /// @param swapNumber swap number
    event SwapCanceled(address indexed sender, uint256 indexed swapNumber);

    /// @notice This event is emitted when swap is configured
    /// @param swapNumber swap number
    /// @param restrictedTokenSender address of restricted token sender
    /// @param restrictedTokenAmount amount of restricted token
    /// @param quoteToken address of quote token
    /// @param quoteTokenSender address of quote token sender
    /// @param quoteTokenAmount amount of quote token
    event SwapConfigured(
        uint256 indexed swapNumber,
        address indexed restrictedTokenSender,
        uint256 restrictedTokenAmount,
        address quoteToken,
        address indexed quoteTokenSender,
        uint256 quoteTokenAmount
    );

    /// @notice This event is emitted when swap is completed
    /// @param swapNumber swap number
    /// @param restrictedTokenSender address of restricted token sender
    /// @param restrictedTokenAmount amount of restricted token
    /// @param quoteTokenSender address of quote token
    /// @param quoteToken address of quote token
    /// @param quoteTokenAmount amount of quote token
    event SwapComplete(
        uint256 indexed swapNumber,
        address indexed restrictedTokenSender,
        uint256 restrictedTokenAmount,
        address indexed quoteTokenSender,
        address quoteToken,
        uint256 quoteTokenAmount
    );

    /// @notice This event is emitted when a swaps is paused or unpaused
    /// @param isPausedSwaps true if swaps are paused, false if unpaused
    event SwapPausedState(bool isPausedSwaps);
}
