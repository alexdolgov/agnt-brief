// SPDX-License-Identifier: MIT
pragma solidity>=0.7.5;
pragma abicoder v2;

// lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol

// OpenZeppelin Contracts (last updated v4.6.0) (token/ERC20/IERC20.sol)

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20 {
    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);

    /**
     * @dev Returns the amount of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 amount) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets `amount` as the allowance of `spender` over the caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 amount) external returns (bool);

    /**
     * @dev Moves `amount` tokens from `from` to `to` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) external returns (bool);
}

// src/ISwap.sol

interface ISwap {
    struct SwapParams {
        address recipient;
        bool zeroForOne;
        int256 amountSpecified;
        uint160 sqrtPriceLimitX96;
        bytes data;
    }

    function swap(SwapParams calldata params) external returns (int256 amount0, int256 amount1);
} 

// src/uniswap/IUniswapV3Router.sol

/// @title Router token swapping functionality
/// @notice Functions for swapping tokens via Uniswap V3
interface IUniswapV3Router  {
    struct ExactInputSingleParams {
        address tokenIn;
        address tokenOut;
        uint24 fee;
        address recipient;
        uint256 amountIn;
        uint256 amountOutMinimum;
        uint160 sqrtPriceLimitX96;
    }

    /// @notice Swaps `amountIn` of one token for as much as possible of another token
    /// @dev Setting `amountIn` to 0 will cause the contract to look up its own balance,
    /// and swap the entire amount, enabling contracts to send tokens before calling this function.
    /// @param params The parameters necessary for the swap, encoded as `ExactInputSingleParams` in calldata
    /// @return amountOut The amount of the received token
    function exactInputSingle(ExactInputSingleParams calldata params) external payable returns (uint256 amountOut);

    struct ExactInputParams {
        bytes path;
        address recipient;
        uint256 amountIn;
        uint256 amountOutMinimum;
    }

    /// @notice Swaps `amountIn` of one token for as much as possible of another along the specified path
    /// @dev Setting `amountIn` to 0 will cause the contract to look up its own balance,
    /// and swap the entire amount, enabling contracts to send tokens before calling this function.
    /// @param params The parameters necessary for the multi-hop swap, encoded as `ExactInputParams` in calldata
    /// @return amountOut The amount of the received token
    function exactInput(ExactInputParams calldata params) external payable returns (uint256 amountOut);

    struct ExactOutputSingleParams {
        address tokenIn;
        address tokenOut;
        uint24 fee;
        address recipient;
        uint256 amountOut;
        uint256 amountInMaximum;
        uint160 sqrtPriceLimitX96;
    }

    /// @notice Swaps as little as possible of one token for `amountOut` of another token
    /// that may remain in the router after the swap.
    /// @param params The parameters necessary for the swap, encoded as `ExactOutputSingleParams` in calldata
    /// @return amountIn The amount of the input token
    function exactOutputSingle(ExactOutputSingleParams calldata params) external payable returns (uint256 amountIn);

    struct ExactOutputParams {
        bytes path;
        address recipient;
        uint256 amountOut;
        uint256 amountInMaximum;
    }

    /// @notice Swaps as little as possible of one token for `amountOut` of another along the specified path (reversed)
    /// that may remain in the router after the swap.
    /// @param params The parameters necessary for the multi-hop swap, encoded as `ExactOutputParams` in calldata
    /// @return amountIn The amount of the input token
    function exactOutput(ExactOutputParams calldata params) external payable returns (uint256 amountIn);
}

// lib/openzeppelin-contracts/contracts/interfaces/IERC20.sol

// OpenZeppelin Contracts v4.4.1 (interfaces/IERC20.sol)

// src/balancer/IFlashLoanRecipient.sol

// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.

// Inspired by Aave Protocol's IFlashLoanReceiver.

interface IFlashLoanRecipient {
    /**
     * @dev When `flashLoan` is called on the Vault, it invokes the `receiveFlashLoan` hook on the recipient.
     *
     * At the time of the call, the Vault will have transferred `amounts` for `tokens` to the recipient. Before this
     * call returns, the recipient must have transferred `amounts` plus `feeAmounts` for each token back to the
     * Vault, or else the entire flash loan will revert.
     *
     * `userData` is the same value passed in the `IVault.flashLoan` call.
     */
    function receiveFlashLoan(
        IERC20[] memory tokens,
        uint256[] memory amounts,
        uint256[] memory feeAmounts,
        bytes memory userData
    ) external;
}

// src/oasis/IArk.sol

/**
 * @title ArkConfig
 * @notice Configuration of the Ark contract
 * @dev This struct stores the current configuration of an Ark, which can be updated during its lifecycle
 */
struct ArkConfig {
    /**
     * @notice The address of the commander (typically a FleetCommander contract)
     * @dev The commander has special permissions to manage the Ark
     */
    address commander;
    /**
     * @notice The address of the associated Raft contract
     * @dev The Raft contract handles reward distribution and other protocol-wide functions
     */
    address raft;
    /**
     * @notice The ERC20 token interface for the asset managed by this Ark
     * @dev This allows direct interaction with the token contract
     */
    IERC20 asset;
    /**
     * @notice The current maximum amount of tokens that can be deposited into the Ark
     * @dev This can be adjusted by the commander to manage capacity
     */
    uint256 depositCap;
    /**
     * @notice The current maximum amount of tokens that can be moved from this Ark in a single transaction
     * @dev This can be adjusted to manage liquidity and risk
     */
    uint256 maxRebalanceOutflow;
    /**
     * @notice The current maximum amount of tokens that can be moved to this Ark in a single transaction
     * @dev This can be adjusted to manage inflows and capacity
     */
    uint256 maxRebalanceInflow;
    /**
     * @notice The name of the Ark
     * @dev This is typically set at initialization and not changed
     */
    string name;
    /**
     * @notice Additional details about the Ark
     * @dev This can be used to store additional information about the Ark
     */
    string details;
    /**
     * @notice Whether the Ark requires Keeper data to be passed in with rebalance transactions
     * @dev This flag is used to determine whether Keeper data is required for rebalance transactions
     */
    bool requiresKeeperData;
    /**
     * @notice The maximum percentage of Total Value Locked (TVL) that can be deposited into this Ark
     * @dev This value is represented as a percentage with 18 decimal places (1e18 = 100%)
     *      For example, 0.5e18 represents 50% of TVL
     */
    uint256 maxDepositPercentageOfTVL;
}

interface IArk {
    /**
     * @notice Retrieves the current fleet config
     */
    function getConfig() external view returns (ArkConfig memory);
}

// src/oasis/IRaft.sol

struct BaseAuctionParameters {
    /**
     * @notice The duration of the auction in seconds
     * @dev This value determines how long the auction will run before it can be finalized
     */
    uint40 duration;
    /**
     * @notice The starting price of the auction in payment token decimals
     * @dev This is the highest price at which the auction begins
     */
    uint256 startPrice;
    /**
     * @notice The ending price of the auction in payment token decimals
     * @dev This is the lowest price the auction can reach. The auction ends when this price is hit or when duration is
     * reached
     */
    uint256 endPrice;
    /**
     * @notice The percentage of auctioned tokens to be given as a reward to the auction initiator (kicker)
     * @dev This is represented as a Percentage type, where 100 * 1e18 = 100%
     * @dev This value is used to incentivize the auction initiator to kick off the auction
     * @dev The reward is calculated as a percentage of the total auctioned tokens
     */
    uint256 kickerRewardPercentage;
    /**
     * @notice The type of price decay function to use for the auction
     * @dev This determines how the price changes over time during the auction
     * @dev See DecayFunctions.sol for more information
     */
    uint8 decayType;
}
interface IRaft {
    /**
     * @dev Allows users to buy tokens from an active auction
     * @param ark The address of the Ark contract
     * @param rewardToken The address of the reward token being auctioned
     * @param amount The amount of tokens to purchase
     * @return paymentAmount The amount of payment tokens required to purchase the specified amount of reward tokens
     * @custom:internal-logic
     * - Retrieves the auction data for the specified Ark and reward token
     * - Calls the buyTokens function of the DutchAuctionLibrary
     * - Updates the paymentTokensToBoard mapping
     * - Settles the auction if all tokens are sold
     * @custom:effects
     * - Transfers tokens between the buyer and the contract
     * - Updates the auction state
     * - May settle the auction if all tokens are sold
     * @custom:security-considerations
     * - Ensure proper token transfers and balance updates
     * - Handle potential reentrancy risks
     */
    function buyTokens(
        address ark,
        address rewardToken,
        uint256 amount
    ) external returns (uint256 paymentAmount);

    /**
     * @dev Gets the current price of tokens in an ongoing auction
     * @param ark The address of the Ark contract
     * @param rewardToken The address of the reward token
     * @return The current price of the auction
     * @custom:internal-logic
     * - Retrieves the auction data
     * - Calls the getCurrentPrice function of the DutchAuctionLibrary
     * @custom:effects
     * - No state changes (view function)
     * @custom:security-considerations
     * - Ensure the auction is ongoing when calling this function
     */
    function getCurrentPrice(
        address ark,
        address rewardToken
    ) external view returns (uint256);

    /**
     * @notice Struct representing the configuration of a Dutch auction
     * @dev This struct contains all the fixed parameters set at auction creation
     */
    struct AuctionConfig {
        IERC20 auctionToken; // The token being auctioned
        IERC20 paymentToken; // The token used for payment
        uint40 startTime; // The start time of the auction
        uint40 endTime; // The end time of the auction
        uint8 auctionTokenDecimals; // The number of decimals for the auction token
        uint8 paymentTokenDecimals; // The number of decimals for the payment token
        address auctionKicker; // The address that initiated the auction
        address unsoldTokensRecipient; // The address to receive any unsold tokens
        uint40 id; // The unique identifier of the auction
        uint8 decayType; // The type of price decay for the auction
        uint256 startPrice; // The starting price of the auctioned token
        uint256 endPrice; // The ending price of the auctioned token
        uint256 totalTokens; // The total number of tokens being auctioned
        uint256 kickerRewardAmount; // The amount of tokens reserved as kicker reward
    }

    /**
     * @notice Struct representing the dynamic state of a Dutch auction
     * @dev This struct contains all the variables that change during the auction's lifecycle
     */
    struct AuctionState {
        uint256 remainingTokens; // The number of tokens remaining to be sold
        bool isFinalized; // Whether the auction has been finalized
    }

    /**
     * @notice Struct representing a complete Dutch auction
     * @dev This struct combines the fixed configuration and dynamic state of an auction
     */
    struct Auction {
        AuctionConfig config;
        AuctionState state;
    }

    //         /// @notice Mapping of ongoing auctions for each Ark and reward token
    //     mapping(address ark => mapping(address rewardToken => DutchAuctionLibrary.Auction))
    //         public auctions;

    function auctions(
        address ark,
        address rewardToken
    ) external view returns (Auction memory);

    function harvestAndStartAuction(
        address ark,
        bytes calldata rewardData
    ) external;

    function arkAuctionParameters(
        address ark,
        address rewardToken
    ) external view returns (BaseAuctionParameters memory);
}

// src/balancer/IVault.sol

// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.

/**
 * @dev Full external interface for the Vault core contract - no external or public methods exist in the contract that
 * don't override one of these declarations.
 */
interface IVault {
    /**
     * @dev Performs a 'flash loan', sending tokens to `recipient`, executing the `receiveFlashLoan` hook on it,
     * and then reverting unless the tokens plus a proportional protocol fee have been returned.
     *
     * The `tokens` and `amounts` arrays must have the same length, and each entry in these indicates the loan amount
     * for each token contract. `tokens` must be sorted in ascending order.
     *
     * The 'userData' field is ignored by the Vault, and forwarded as-is to `recipient` as part of the
     * `receiveFlashLoan` call.
     *
     * Emits `FlashLoan` events.
     */
    function flashLoan(
        IFlashLoanRecipient recipient,
        IERC20[] memory tokens,
        uint256[] memory amounts,
        bytes memory userData
    ) external;
}

// src/AuctionBrr.sol

/**
 * @title AuctionBrr
 * @notice Handles flash loan arbitrage between Raft protocol and Uniswap V3
 * @dev Implements flash loan functionality from Balancer
 */
contract AuctionBrr is IFlashLoanRecipient {
    // ============ Constants ============

    /// @notice Balancer vault address
    address constant BALANCER = 0xBA12222222228d8Ba445958a75a0704d566BF2C8;

    /// @notice Default Uniswap V3 pool fee (1%)
    uint24 constant DEFAULT_POOL_FEE = 10000;
    uint24 constant TO_WETH_FEE = 3000;
    uint24 constant USDC_TO_WETH_FEE = 500;

    // ============ Immutables ============

    /// @notice Uniswap V3 router address
    address immutable router;

    /// @notice Owner address who receives profits
    address immutable owner;

    /// @notice Raft protocol interface
    IRaft public immutable raft;

    /// @notice WETH address
    address immutable weth;

    uint256 public profitThreshold;

    // ============ Events ============

    event TokensPurchased(
        address indexed ark,
        address indexed rewardToken,
        uint256 amount,
        uint256 profit
    );

    // ============ Errors ============

    error UnauthorizedCallback();
    error InsufficientProfit();
    error InvalidAddress();
    error InvalidAmount();
    error AuctionEnded();
    error Unauthorized();
    // ============ Constructor ============

    constructor(address _raft, address _router, address _weth) {
        if (_raft == address(0) || _router == address(0))
            revert InvalidAddress();

        raft = IRaft(_raft);
        router = _router;
        owner = msg.sender;
        profitThreshold = 102;
        weth = _weth;
    }

    modifier onlyOwner() {
        if (msg.sender != owner) revert Unauthorized();
        _;
    }

    // ============ External Functions ============

    /**
     * @notice Initiates a flash loan to execute the arbitrage
     * @param ark The ARK token address
     * @param rewardToken The token to receive as reward
     */
    function buyTokens(address ark, address rewardToken) external {
        IRaft.Auction memory auction = raft.auctions(ark, rewardToken);
        uint256 amountToBuy = auction.config.totalTokens;
        if (amountToBuy == 0) revert AuctionEnded();

        address buyToken = address(IArk(ark).getConfig().asset);
        uint256 currentPrice = raft.getCurrentPrice(ark, rewardToken);
        uint256 expectedCost = (amountToBuy * currentPrice) / 1e18;

        _initiateFlashLoan(
            buyToken,
            ark,
            rewardToken,
            amountToBuy,
            expectedCost
        );
    }

    /**
     * @notice Handles the flash loan callback
     * @dev Only callable by Balancer vault
     */
    function receiveFlashLoan(
        IERC20[] memory tokens,
        uint256[] memory amounts,
        uint256[] memory feeAmounts,
        bytes memory userData
    ) external override {
        if (msg.sender != BALANCER) revert UnauthorizedCallback();

        (
            address buyToken,
            address ark,
            address rewardToken,
            uint256 amount
        ) = abi.decode(userData, (address, address, address, uint256));

        _executeArbitrage(
            tokens[0],
            amounts[0],
            feeAmounts[0],
            buyToken,
            ark,
            rewardToken,
            amount
        );
    }

    // ============ Internal Functions ============

    /**
     * @dev Initiates the flash loan from Balancer
     */
    function _initiateFlashLoan(
        address buyToken,
        address ark,
        address rewardToken,
        uint256 amountToBuy,
        uint256 expectedCost
    ) internal {
        uint256[] memory amounts = new uint256[](1);
        amounts[0] = expectedCost + 1;
        IERC20[] memory tokens = new IERC20[](1);
        tokens[0] = IERC20(buyToken);

        bytes memory userData = abi.encode(
            buyToken,
            ark,
            rewardToken,
            amountToBuy
        );

        IVault(BALANCER).flashLoan(this, tokens, amounts, userData);
    }

    /**
     * @dev Executes the arbitrage logic
     */
    function _executeArbitrage(
        IERC20 token,
        uint256 amount,
        uint256 fee,
        address buyToken,
        address ark,
        address rewardToken,
        uint256 purchaseAmount
    ) internal {
        // Buy tokens from Raft
        token.approve(address(raft), amount);
        raft.buyTokens(ark, rewardToken, purchaseAmount);

        // Swap tokens on Uniswap
        uint256 boughtAmount = IERC20(rewardToken).balanceOf(address(this));
        _executeUniswapSwap(rewardToken, buyToken, boughtAmount, amount + fee);

        // Handle repayment and profit distribution
        _handleRepaymentAndProfit(token, amount, fee);

        emit TokensPurchased(
            ark,
            rewardToken,
            purchaseAmount,
            token.balanceOf(address(this))
        );
    }

    /**
     * @dev Executes the Uniswap swap
     */
    function _executeUniswapSwap(
        address rewardToken,
        address buyToken,
        uint256 amountIn,
        uint256 minAmountOut
    ) internal {
        IERC20(rewardToken).approve(router, amountIn);
        bytes memory path;
        if (buyToken == weth) {
            path = abi.encodePacked(rewardToken, TO_WETH_FEE, weth);
        } else {
            path = abi.encodePacked(
                rewardToken,
                TO_WETH_FEE,
                weth,
                USDC_TO_WETH_FEE,
                buyToken
            );
        }

        IUniswapV3Router.ExactInputParams memory params = IUniswapV3Router
            .ExactInputParams({
                path: path,
                recipient: address(this),
                amountIn: amountIn,
                amountOutMinimum: minAmountOut
            });

        IUniswapV3Router(router).exactInput(params);
    }

    /**
     * @dev Handles flash loan repayment and profit distribution
     */
    function _handleRepaymentAndProfit(
        IERC20 token,
        uint256 amount,
        uint256 fee
    ) internal {
        uint256 finalBalance = token.balanceOf(address(this));
        uint256 amountToRepay = amount + fee;

        if (finalBalance <= (amountToRepay * profitThreshold) / 100)
            revert InsufficientProfit();

        uint256 profit = finalBalance - amountToRepay;

        token.transfer(msg.sender, amountToRepay);
        token.transfer(owner, profit);
    }

    function setProfitThreshold(uint256 _profitThreshold) external onlyOwner {
        profitThreshold = _profitThreshold;
    }
}