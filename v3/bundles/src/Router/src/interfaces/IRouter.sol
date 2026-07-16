// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title Router Interface for Antfarm Protocol
/// @notice Interface for handling token swaps with ETH on Antfarm Protocol
/// @dev Implements core swap functionality and estimation methods
interface IRouter {
    error Router__Expired();
    error Router__IdenticalAddresses();
    error Router__AddressZero();
    error Router__ZeroAmount();
    error Router__InsufficientLiquidity();
    error Router__InsufficientInputAmount();
    error Router__InsufficientOutputAmount();
    error Router__ETHTransferFailed();
    error Router__InsufficientBalance();
    error Router__InsufficientATFBalance();
    error Router__TransferFailed();

    event SwapExecuted(
        address indexed sender,
        address indexed tokenIn,
        address indexed tokenOut,
        uint256 amountIn,
        uint256 amountOut
    );

    /// @notice Returns the factory contract address
    /// @return Address of the factory contract
    function factory() external view returns (address);

    /// @notice Returns the Antfarm token address
    /// @return Address of the Antfarm token
    function antfarmToken() external view returns (address);

    /// @notice Returns the WETH token address
    /// @return Address of the WETH token
    function weth() external view returns (address);

    /// @notice Returns the oracle pair address
    /// @return Address of the oracle pair
    function oraclePair() external view returns (address);

    /// @notice Allows the contract to receive ETH
    receive() external payable;

    /// @notice Swaps an exact amount of ETH for tokens
    /// @param _output The token address to receive
    /// @param _fee The fee tier of the pool
    /// @param _to The recipient address for the output tokens
    /// @param _deadline The timestamp by which the transaction must be executed
    /// @param _amountOutMin The minimum amount of output tokens to receive
    /// @return _amountOut The actual amount of output tokens received
    function swapExactETHForTokens(
        address _output,
        uint16 _fee,
        address _to,
        uint256 _deadline,
        uint256 _amountOutMin
    ) external payable returns (uint256 _amountOut);

    /// @notice Swaps an exact amount of tokens for ETH
    /// @param _input The token address to spend
    /// @param _fee The fee tier of the pool
    /// @param _to The recipient address for the ETH
    /// @param _deadline The timestamp by which the transaction must be executed
    /// @param _amountIn The amount of input tokens to spend
    /// @param _amountOutMin The minimum amount of ETH to receive
    /// @return _amountOut The actual amount of ETH received
    function swapExactTokensForETH(
        address _input,
        uint16 _fee,
        address _to,
        uint256 _deadline,
        uint256 _amountIn,
        uint256 _amountOutMin
    ) external returns (uint256 _amountOut);

    /// @notice Swaps ETH for an exact amount of tokens
    /// @dev Refunds excess ETH if too much is sent
    /// @param _output The token address to receive
    /// @param _fee The fee tier of the pool
    /// @param _to The recipient address for the tokens
    /// @param _deadline The timestamp by which the transaction must be executed
    /// @param _amountOut The exact amount of output tokens to receive
    /// @return _amountIn The amount of ETH spent
    function swapETHForExactTokens(
        address _output,
        uint16 _fee,
        address _to,
        uint256 _deadline,
        uint256 _amountOut
    ) external payable returns (uint256 _amountIn);

    /// @notice Estimates the output amount of tokens for an exact ETH input
    /// @param _output The token address to receive
    /// @param _fee The fee tier of the pool
    /// @param _amountIn The amount of ETH to swap
    /// @return estimatedOut The estimated amount of output tokens
    function estimateExactETHForTokens(
        address _output,
        uint16 _fee,
        uint256 _amountIn
    ) external view returns (uint256 estimatedOut);

    /// @notice Estimates the output amount of ETH for an exact token input
    /// @param _input The token address to spend
    /// @param _fee The fee tier of the pool
    /// @param _amountIn The amount of input tokens
    /// @return estimatedOut The estimated amount of ETH
    function estimateExactTokensForETH(
        address _input,
        uint16 _fee,
        uint256 _amountIn
    ) external view returns (uint256 estimatedOut);

    /// @notice Estimates the input amount of ETH needed for an exact token output
    /// @param _output The token address to receive
    /// @param _fee The fee tier of the pool
    /// @param _amountOut The exact amount of output tokens desired
    /// @return estimatedIn The estimated amount of ETH needed
    function estimateETHForExactTokens(
        address _output,
        uint16 _fee,
        uint256 _amountOut
    ) external view returns (uint256 estimatedIn);

    /// @notice Deposits ATF tokens
    /// @param amount The amount of ATF tokens to deposit
    function depositATF(uint256 amount) external;

    /// @notice Withdraws ATF tokens
    /// @param amount The amount of ATF tokens to withdraw
    function withdrawATF(uint256 amount) external;

    /// @notice Gets the deposit amount for a user
    /// @param user The address of the user
    /// @return The deposit amount for the user
    function getDeposit(address user) external view returns (uint256);

    /// @notice Returns the deposit amount for a user
    /// @param user The address of the user
    /// @return The deposit amount for the user
    function userDeposits(address user) external view returns (uint256);
}
