// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title IBondingCurve
 * @author Camelot
 * @notice Interface for the bonding curve contract managing buy and sell operations for BCTokens.
 */
interface IBondingCurve {
    /**
     * @notice Failed to send ETH when minting or burning tokens.
     */
    error FailedToSendETH();

    /**
     * @notice Amount of tokens must be greater than zero or sell `amountOut` cannot exceed coin `TVL()`.
     */
    error InvalidAmount();

    /**
     * @notice Only `FACTORY` owner or bonding curve can call.
     */
    error InvalidCaller();

    /**
     * @notice Token address of buy or sell functions does not belong to a factory deployed BCToken.
     */
    error InvalidToken();

    /**
     * @notice The fee cannot exceed max value.
     */
    error MaxFeeExceeded(uint256 maxFee);

    /**
     * @notice Amount of tokens to be received is not enough.
     */
    error SlippageTooHigh();

    /**
     * @notice Protocol is paused and action cannot be performed.
     */
    error ProtocolPaused();

    /**
     * @notice Emitted when a given token is purchased.
     * @param user Address of the user buying token.
     * @param token Address of the token purchased.
     * @param amount Amount of ETH spent to purchase tokens.
     * @param amountOut Amount of tokens received.
     * @param totalSupply Current total supply of coin.
     * @param marketCap Current market cap of coin.
     * @param price Current price of coin.
     * @param reserveBalance Amount of ETH as reserves in coin.
     */
    event Buy(
        address indexed user,
        address indexed token,
        uint256 amount,
        uint256 amountOut,
        uint256 totalSupply,
        uint256 marketCap,
        uint256 price,
        uint256 reserveBalance
    );

    /**
     * @notice Emitted when a given token reaches the LP stage.
     * @param token Address of the token that reached LP stage.
     * @param pool Address of the pool created for the token.
     */
    event LPSeeded(address indexed token, address indexed pool);

    /**
     * @notice Emitted when a given token is sold.
     * @param user Address of the user selling token.
     * @param token Address of the token sold.
     * @param amount Amount of tokens sold.
     * @param amountOut Amount of ETH received by selling tokens.
     * @param totalSupply Current total supply of coin.
     * @param marketCap Current market cap of coin.
     * @param price Current price of coin.
     * @param reserveBalance Amount of ETH as reserves in coin.
     */
    event Sell(
        address indexed user,
        address indexed token,
        uint256 amount,
        uint256 amountOut,
        uint256 totalSupply,
        uint256 marketCap,
        uint256 price,
        uint256 reserveBalance
    );

    /**
     * @notice Emitted when the fee charged on buy/sell orders is updated.
     * @param fee The fee charged (in BPS).
     */
    event TxFeeUpdated(uint256 fee);

    /**
     * @notice Emitted when the referral manager is updated.
     * @param referralManager The new referral manager address.
     */
    event ReferralManagerUpdated(address indexed referralManager);

    /**
     * @notice Returns the bonding curve's formula address.
     * @return The address of the bonding curve formula contract.
     */
    function formula() external view returns (address);

    /**
     * @notice Lets user buy a specific token.
     *
     * @param token Address of the token to purchase. MUST be a valid BCToken.
     * @param affiliate Address of the affiliate (referrer). If not address(0), sets up referral.
     * @param expectedOut Amount of tokens expected to receive.
     *
     * @return The amount of tokens acquired.
     */
    function buy(address token, address affiliate, uint256 expectedOut) external payable returns (uint256);

    /**
     * @notice Lets user sell a specific token.
     *
     * @param token Address of the token to sell. MUST be a valid BCToken.
     * @param affiliate Address of the affiliate (referrer). If not address(0), sets up referral.
     * @param amount Amount of token to sell.
     * @param expectedOut Minimum amount expected by selling.
     *
     * @return The amount of ETH received.
     */
    function sell(address token, address affiliate, uint256 amount, uint256 expectedOut) external returns (uint256);

    /**
     * @notice Returns the amount of tokens to be received by spending amount of ETH.
     *
     * @param token Address of the token to buy.
     * @param amount Amount of ETH to spend buying token.
     *
     * @return The amount of tokens to be received.
     */
    function getAmountOutBuy(address token, uint256 amount) external view returns (uint256);

    /**
     * @notice View utility function that returns the amount of tokens to be received by spending amount of ETH capped by the supply left (`MAX_SUPPLY - totalSupply`).
     *
     * @param token Address of the token to buy.
     * @param amount Amount of ETH to spend buying token.
     *
     * @return The amount of tokens to be received.
     */
    function getAmountOutBuySupplyCapped(address token, uint256 amount) external view returns (uint256);

    /**
     * @notice Returns the amount of ETH to be received by selling amount of tokens.
     *
     * @param token Address of the token to buy.
     * @param amount Amount of tokens to sell of token.
     *
     * @return The amount of ETH to be received.
     */
    function getAmountOutSell(address token, uint256 amount) external view returns (uint256);

    /**
     * @notice Withdraws ETH fees to owner of the protocol.
     *
     * @param amount Amount of ETH to withdraw.
     */
    function withdraw(uint256 amount) external;

    /**
     * @notice Updates the buy/sell fee charged on orders by the protocol.
     *
     * @param _fee The fee to be charged (in BPS).
     */
    function setTxFee(uint256 _fee) external;

    /**
     * @notice Sets the referral manager address.
     *
     * @param _referralManager The new referral manager address.
     */
    function setReferralManager(address _referralManager) external;

    /**
     * @notice Returns the referral manager address.
     * @return The address of the referral manager.
     */
    function referralManager() external view returns (address);
}
