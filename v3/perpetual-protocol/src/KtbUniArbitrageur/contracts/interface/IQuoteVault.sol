// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.7.6;
pragma abicoder v2;

interface IQuoteVaultEvent {
    // EIP4626
    /// @param amount_18 amount with decimals = 18
    event Deposit(address indexed caller, address indexed owner, uint256 amount_18, uint256 share);

    event Withdraw(
        address indexed caller,
        address indexed receiver,
        address indexed owner,
        uint256 assets,
        uint256 shares
    );

    event Swap(
        address indexed sender,
        address tokenIn,
        address tokenOut,
        uint256 amountIn,
        uint256 amountOut,
        address indexed to
    );
}

interface IQuoteVault is IQuoteVaultEvent {
    struct SwapExactInputParams {
        address tokenIn;
        address tokenOut;
        address recipient;
        uint256 deadline;
        uint256 amountIn;
        uint256 amountOutMinimum;
        uint160 sqrtPriceLimitX96;
    }

    struct SwapExactOutputParams {
        address tokenIn;
        address tokenOut;
        address recipient;
        uint256 deadline;
        uint256 amountOut;
        uint256 amountInMaximum;
        uint160 sqrtPriceLimitX96;
    }

    function deposit(uint256 amount, address receiver) external returns (uint256 shares);

    function redeem(uint256 shares, address receiver) external returns (uint256);

    function swapExactInput(SwapExactInputParams calldata params) external returns (uint256);

    function swapExactOutput(SwapExactOutputParams calldata params) external returns (uint256);
}
