// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/Pausable.sol";
import "@openzeppelin/contracts/utils/Context.sol";

contract BIFKN314Wrapper is Context, ReentrancyGuard, Pausable {
    using SafeERC20 for IERC20;

    IERC20 public originalToken;
    IERC20 public wrappedToken;
    address public owner;
    address public wrapperFactory;

    uint8 public originalTokenDecimals;
    uint8 public wrappedTokenDecimals;
    uint8 public constant DEFAULT_DECIMALS = 18;

    event Wrap(address indexed user, uint256 amount);
    event Unwrap(address indexed user, uint256 amount);
    event EmergencyWithdraw(IERC20 token, uint256 amount, address to);
    event EmergencyWithdrawNative(address to, uint256 amount);

    error AlreadyInitialized();
    error Unauthorized();
    error AmountMustBeGreaterThanZero();
    error InvalidAddress();
    error WrappedBalanceShortage();
    error OriginalBalanceShortage();
    error InsufficientBalance();

    modifier onlyOwner() {
        if (_msgSender() != owner) revert Unauthorized();
        _;
    }

    modifier onlyWrapperFactory() {
        if (_msgSender() != wrapperFactory) revert Unauthorized();
        _;
    }

    constructor() {
        owner = _msgSender();
    }

    /**
     * @dev Sets the wrapper factory address.
     *
     * Requirements:
     * - `wrapperFactory_` cannot be the zero address.
     * - The wrapper factory address can only be set once.
     *
     * @param wrapperFactory_ The address of the wrapper factory contract.
     * @param owner_ The address of the owner who is setting the wrapper factory.
     */
    function setWrapperFactory(
        address wrapperFactory_,
        address owner_
    ) external {
        if (wrapperFactory_ == address(0)) revert InvalidAddress();
        if (wrapperFactory != address(0)) revert AlreadyInitialized();

        wrapperFactory = wrapperFactory_;
        owner = owner_;
    }

    /**
     * @dev Sets the original and wrapped tokens for the wrapper contract.
     * Can only be called by the wrapper factory contract.
     * Reverts if the original and wrapped tokens have already been initialized.
     * @param _originalToken The address of the original token contract.
     * @param _wrappedToken The address of the wrapped token contract.
     */
    function setTokens(
        IERC20 _originalToken,
        IERC20 _wrappedToken
    ) external onlyWrapperFactory {
        if (
            address(originalToken) != address(0) &&
            address(wrappedToken) != address(0)
        ) revert AlreadyInitialized();

        originalToken = _originalToken;
        wrappedToken = _wrappedToken;

        // Safely attempt to get the decimals of the original and wrapped tokens
        originalTokenDecimals = _getDecimals(originalToken);
        wrappedTokenDecimals = _getDecimals(wrappedToken);
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
        virtual
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

        if (wrappedToken.balanceOf(address(this)) < adjustedNetReceived)
            revert WrappedBalanceShortage();

        wrappedAmount = adjustedNetReceived;

        // Transfer the actual received amount of original tokens as wrapped tokens to user
        wrappedToken.safeTransfer(_msgSender(), adjustedNetReceived);

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
        virtual
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

        // Transfer wrapped tokens from user to contract
        wrappedToken.safeTransferFrom(_msgSender(), address(this), amount);

        // Transfer original tokens back to user
        originalToken.safeTransfer(_msgSender(), adjustedAmount);

        emit Unwrap(_msgSender(), adjustedAmount);
    }

    /**
     * @dev Allows the contract owner to withdraw native tokens to a specified address in case of an emergency.
     * @param to The address to which the native tokens will be transferred.
     * @param amount The amount of native tokens to be transferred.
     */
    function emergencyWithdrawNative(
        address to,
        uint256 amount
    ) external onlyOwner {
        payable(to).transfer(amount);

        emit EmergencyWithdrawNative(to, amount);
    }

    /**
     * @dev Transfers the ownership of the contract to a new address.
     * @param _owner The address of the new owner.
     * @notice Only the current owner can call this function.
     * @notice The new owner cannot be set to the zero address.
     */
    function transferOwnership(address _owner) external onlyOwner {
        if (_owner == address(0)) revert InvalidAddress();
        owner = _owner;
    }

    /**
     * @notice Allows the current owner to renounce ownership of the contract.
     * @dev Sets the owner address to the zero address, effectively making the contract ownerless.
     *      This action is irreversible and should be used with caution.
     * @custom:modifier onlyOwner This function can only be called by the current owner.
     */
    function renounceOwnership() external onlyOwner {
        owner = address(0);
    }

    /**
     * @dev Pauses the contract.
     *
     * Requirements:
     * - The caller must be the owner of the contract.
     */
    function pause() external onlyOwner {
        _pause();
    }

    /**
     * @dev Unpauses the contract, allowing certain functions to be called again.
     * Can only be called by the contract owner.
     */
    function unpause() external onlyOwner {
        _unpause();
    }

    /**
     * @dev Adjusts the token amount based on the difference in decimals, rounding down.
     * This function aims to minimize precision loss during the conversion.
     * @param amount The amount of tokens to adjust.
     * @param fromDecimals The decimal places of the source token.
     * @param toDecimals The decimal places of the target token.
     * @return The adjusted token amount.
     */
    function _adjustDecimals(
        uint256 amount,
        uint8 fromDecimals,
        uint8 toDecimals
    ) internal pure returns (uint256) {
        if (fromDecimals == toDecimals) {
            return amount;
        } else if (fromDecimals > toDecimals) {
            uint256 factor = 10 ** (fromDecimals - toDecimals);
            return amount / factor; // Rounding down
        } else {
            uint256 factor = 10 ** (toDecimals - fromDecimals);
            return amount * factor;
        }
    }

    /**
     * @dev Retrieves the decimals of a token in a safe manner.
     * If the token does not implement `decimals()`, a default value is used.
     * @param token The ERC20 token to retrieve the decimals for.
     * @return The number of decimals of the token.
     */
    function _getDecimals(IERC20 token) internal view returns (uint8) {
        // Try to call decimals() and catch potential failures
        (bool success, bytes memory data) = address(token).staticcall(
            abi.encodeWithSignature("decimals()")
        );
        // Check if the call was successful and the data length is 32 bytes
        if (success && data.length == 32) {
            return abi.decode(data, (uint8));
        } else {
            // Fallback to default decimals if the call fails or returns incorrect data
            return DEFAULT_DECIMALS;
        }
    }

    /**
     * @dev Allows the owner to update the decimals for the original token.
     * This function can be useful if the decimals retrieval mechanism fails or needs correction.
     * @param _originalTokenDecimals The new decimals value for the original token.
     * @notice Only the contract owner can call this function.
     */
    function updateOriginalTokenDecimals(
        uint8 _originalTokenDecimals
    ) external onlyOwner {
        originalTokenDecimals = _originalTokenDecimals;
    }
}
