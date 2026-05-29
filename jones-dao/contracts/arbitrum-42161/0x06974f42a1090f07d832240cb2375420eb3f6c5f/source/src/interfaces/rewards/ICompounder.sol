// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.7.6;
pragma abicoder v2;

interface ICompounder {
    // Swap Input
    struct Swap {
        address tokenIn;
        uint256 amountIn;
        address tokenOut;
        uint256 minAmountOut;
        bytes externalData;
    }

    function keeperSwap(Swap calldata _swap) external;

    function compound() external;
    function deposit(uint256 _assets, address _receiver) external returns (uint256);
    function redeem(uint256 _shares, address _receiver) external returns (uint256);

    function previewDeposit(uint256 assets) external view returns (uint256);
    function previewRedeem(uint256 shares) external view returns (uint256);
    function previewCompoundRetention(uint256 amount0, uint256 amount1)
        external
        view
        returns (uint256 amount0AfterRetention, uint256 amount1AfterRetention);

    function name() external view returns (string memory);
    function symbol() external view returns (string memory);
    function decimals() external view returns (uint8);
    function totalSupply() external view returns (uint256);
    function totalAssets() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function transfer(address to, uint256 amount) external returns (bool);
    function allowance(address owner, address spender) external view returns (uint256);
    function approve(address spender, uint256 amount) external returns (bool);
    function transferFrom(address from, address to, uint256 amount) external returns (bool);

    event Compound(uint256 amount0, uint256 amount1, uint256 totalAssets);
    event Deposit(address caller, address receiver, uint256 assets, uint256 shares);
    event Withdraw(address caller, address receiver, uint256, uint256 shares);
    event Retention(
        address indexed receiver,
        uint256 amount0AfterRetention,
        uint256 amount1AfterRetention,
        uint256 retention0,
        uint256 retention1,
        string typeOf
    );
}
