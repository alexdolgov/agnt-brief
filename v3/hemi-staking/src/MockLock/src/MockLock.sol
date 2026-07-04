// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.29;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract MockLock is AccessControl {
    using SafeERC20 for IERC20Metadata;

    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

    IERC20Metadata public immutable token;

    // Custom errors
    error AddressIsZero();
    error AmountMustBeGreaterThanZero();
    error InsufficientBalance();
    error TimeLockNotExpired();

    constructor(address token_, address owner_) {
        if (token_ == address(0)) revert AddressIsZero();
        if (owner_ == address(0)) revert AddressIsZero();

        _grantRole(DEFAULT_ADMIN_ROLE, owner_);
        token = IERC20Metadata(token_);
    }

    /**
     * @dev Returns the name of the token.
     */
    function name() public view returns (string memory) {
        return token.name();
    }

    /**
     * @dev Returns the symbol of the token.
     */
    function symbol() public view returns (string memory) {
        return token.symbol();
    }

    /**
     * @dev Returns the number of decimals places of the token.
     */
    function decimals() public view returns (uint8) {
        return token.decimals();
    }

    /**
     * @dev Returns the total supply of the token.
     */
    function totalSupply() public view returns (uint256) {
        return token.totalSupply();
    }

    /**
     * @dev Returns the balance of the token of an account.
     */
    function balanceOf(address account) public view returns (uint256) {
        return token.balanceOf(account);
    }

    /**
     * @dev Mints the token to an account.
     * @param to_ The address to mint the token to
     * @param amount_ The amount of token to mint
     */
    function mint(address to_, uint256 amount_) external onlyRole(MINTER_ROLE) {
        if (to_ == address(0)) revert AddressIsZero();
        if (amount_ == 0) revert AmountMustBeGreaterThanZero();
        if (token.balanceOf(address(this)) < amount_) revert InsufficientBalance();

        token.safeTransfer(to_, amount_);
    }
}
