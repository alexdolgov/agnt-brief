// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IERC20 {
    function balanceOf(address account) external view returns (uint256);
    function transfer(address to, uint256 amount) external returns (bool);
}

contract Vault {

    address public owner;
    address public constant USDC_ADDRESS = 0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48;

    IERC20 public immutable usdc;

    event ETHWithdrawn(address indexed to, uint256 amount);
    event USDCWithdrawn(address indexed to, uint256 amount);

    error NotOwner();
    error ZeroAmount();
    error InsufficientBalance(uint256 requested, uint256 available);
    error ETHTransferFailed();
    error USDCTransferFailed();

    modifier onlyOwner() {
        if (msg.sender != owner) revert NotOwner();
        _;
    }

    constructor() {
        owner = msg.sender;
        usdc = IERC20(USDC_ADDRESS);
    }

    /// @notice Accept plain ETH transfers into the vault.
    receive() external payable {}

    /// @notice Withdraw ETH to a given address. Only callable by owner.
    /// @param  to      Recipient address.
    /// @param  amount  Amount in wei.
    function withdrawETH(address payable to, uint256 amount) external onlyOwner {
        if (amount == 0) revert ZeroAmount();
        uint256 bal = address(this).balance;
        if (amount > bal) revert InsufficientBalance(amount, bal);

        (bool ok, ) = to.call{value: amount}("");
        if (!ok) revert ETHTransferFailed();

        emit ETHWithdrawn(to, amount);
    }

    /// @notice Withdraw USDC to a given address. Only callable by owner.
    /// @param  to      Recipient address.
    /// @param  amount  Amount in USDC's 6-decimal units.
    function withdrawUSDC(address to, uint256 amount) external onlyOwner {
        if (amount == 0) revert ZeroAmount();
        uint256 bal = usdc.balanceOf(address(this));
        if (amount > bal) revert InsufficientBalance(amount, bal);

        bool ok = usdc.transfer(to, amount);
        if (!ok) revert USDCTransferFailed();

        emit USDCWithdrawn(to, amount);
    }

    /// @notice Returns ETH balance of this contract.
    function ethBalance() external view returns (uint256) {
        return address(this).balance;
    }

    /// @notice Returns USDC balance of this contract.
    function usdcBalance() external view returns (uint256) {
        return usdc.balanceOf(address(this));
    }
}