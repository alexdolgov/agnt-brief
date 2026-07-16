// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "./BIFKN314Wrapper.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

interface IERC20Mintable is IERC20 {
    function mint(address to, uint256 amount) external;

    function burnFrom(address from, uint256 amount) external;
}

contract BIFKN314WrapperMintable is BIFKN314Wrapper {
    using SafeERC20 for IERC20;

    event WrapperFactoryUpdated(
        address indexed oldFactory,
        address indexed newFactory
    );

    /**
     * @dev Initializes the contract by calling the constructor of the base contract BIFKN314Wrapper.
     */
    constructor() BIFKN314Wrapper() {}

    /**
     * @dev Updates the wrapper factory address.
     * @param wrapperFactory_ The new address of the wrapper factory.
     * @notice Only the contract owner can call this function.
     * @notice Reverts if the provided address is invalid (address(0)).
     */
    function updateWrapperFactory(address wrapperFactory_) external onlyOwner {
        if (wrapperFactory_ == address(0)) revert InvalidAddress();
        address oldFactory = wrapperFactory;
        wrapperFactory = wrapperFactory_;
        emit WrapperFactoryUpdated(oldFactory, wrapperFactory_);
    }

    /**
     * @dev Wraps a specified amount of tokens from the user's address to the contract's address.
     * @param amount The amount of tokens to be wrapped.
     * Emits a `Wrap` event indicating the successful wrapping of tokens.
     * Reverts if the specified amount is zero or if the user's balance is insufficient.
     * Reverts if the contract's balance of wrapped tokens is insufficient.
     */
    function wrap(
        uint256 amount
    )
        external
        override
        nonReentrant
        whenNotPaused
        returns (uint256 wrappedAmount)
    {
        if (amount == 0) revert AmountMustBeGreaterThanZero();
        if (originalToken.balanceOf(_msgSender()) < amount)
            revert InsufficientBalance();

        // Get initial balance of the contract
        uint256 initialBalance = originalToken.balanceOf(address(this));
        // Transfer original tokens from user to contract
        originalToken.safeTransferFrom(_msgSender(), address(this), amount);
        // Calculate the actual amount received after transfer fees
        uint256 finalBalance = originalToken.balanceOf(address(this));
        uint256 netReceived = finalBalance - initialBalance;

        uint256 adjustedNetReceived = _adjustDecimals(
            netReceived,
            originalTokenDecimals,
            wrappedTokenDecimals
        );

        wrappedAmount = adjustedNetReceived;

        // Mint the equivalent amount of wrapped tokens to the user
        IERC20Mintable(address(wrappedToken)).mint(
            _msgSender(),
            adjustedNetReceived
        );

        emit Wrap(_msgSender(), adjustedNetReceived);
    }

    /**
     * @dev Unwraps a specified amount of wrapped tokens, transferring the original tokens back to the user.
     * @param amount The amount of wrapped tokens to unwrap.
     * Reverts if the specified amount is zero or if the user's balance is insufficient.
     * Reverts if the contract's balance of original tokens is insufficient.
     */
    function unwrap(
        uint256 amount
    )
        external
        override
        nonReentrant
        whenNotPaused
        returns (uint256 unwrappedAmount)
    {
        if (amount == 0) revert AmountMustBeGreaterThanZero();
        if (wrappedToken.balanceOf(_msgSender()) < amount)
            revert InsufficientBalance();

        // Adjust the amount to the original token decimals
        uint256 adjustedAmount = _adjustDecimals(
            amount,
            wrappedTokenDecimals,
            originalTokenDecimals
        );

        if (originalToken.balanceOf(address(this)) < adjustedAmount)
            revert OriginalBalanceShortage();

        unwrappedAmount = adjustedAmount;

        // Burn the wrapped tokens from the user
        IERC20Mintable(address(wrappedToken)).burnFrom(_msgSender(), amount);

        // Transfer the original tokens back to the user
        originalToken.safeTransfer(_msgSender(), adjustedAmount);

        emit Unwrap(_msgSender(), adjustedAmount);
    }
}
