// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

import {Controller} from "./abstract/Controller.sol";
import {ReentrancyGuard} from "./abstract/ReentrancyGuard.sol";
import {Rebase, AuxRebase} from "./library/AuxRebase.sol";
import {IERC20Custom} from "./interface/IERC20Custom.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20 as IERC20Safe} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/**
 * @title StoutVault
 * @dev Token vault with rebase and share tracking
 * @notice Multi-token vault with share accounting
 */
contract StoutVault is Controller, ReentrancyGuard {
    using AuxRebase for Rebase;
    /*//////////////////////////////////////////////////////////////
                        CONSTANTS & STATE VARIABLES
    //////////////////////////////////////////////////////////////*/
    /// @notice Minimum share balance to prevent dust accumulation
    /// @dev Prevents extremely small share balances that could cause computational issues
    uint256 private constant MINIMUM_SHARE_BALANCE = 1000;
    /// @notice Tracks total rebase information for each token
    /// @dev Maps token address to its total rebase state
    mapping(IERC20Custom => Rebase) public totals;
    /// @notice Tracks individual account balances for each token
    /// @dev Nested mapping: token address → account address → share balance
    mapping(IERC20Custom => mapping(address => uint256)) public balanceOf;
    /*//////////////////////////////////////////////////////////////
                                EVENTS
    //////////////////////////////////////////////////////////////*/
    /// @notice Emitted when tokens are deposited into the vault
    event Deposited(
        IERC20Custom indexed token,
        address indexed from,
        address indexed to,
        uint256 amount,
        uint256 share
    );
    /// @notice Emitted when tokens are withdrawn from the vault
    event Withdrawn(
        IERC20Custom indexed token,
        address indexed from,
        address indexed to,
        uint256 amount,
        uint256 share
    );
    /// @notice Emitted when shares are transferred between accounts
    event Transferred(
        IERC20Custom indexed token,
        address indexed from,
        address indexed to,
        uint256 share
    );
    /*//////////////////////////////////////////////////////////////
                            CUSTOM ERRORS
    //////////////////////////////////////////////////////////////*/
    /// @notice Thrown when an operation would result in an empty vault
    error CannotBeEmpty();
    /// @notice Thrown when an invalid skim operation is attempted
    error InvalidSkim();
    /// @notice Thrown when an unauthorized account attempts an action
    error NotAllowed(address msgSender, address from);
    /// @notice Thrown when no tokens are available for an operation
    error NoTokens();
    /// @notice Thrown when a receiver address is not set
    error ReceiverNotSet();
    /*//////////////////////////////////////////////////////////////
                            ACCESS CONTROL
    //////////////////////////////////////////////////////////////*/
    /// @notice Restricts actions to authorized accounts
    /// @dev Allows actions from:
    /// · The account itself
    /// · The vault contract
    /// · Authorized controllers
    modifier allowed(address from) {
        if (
            from != _msgSender() &&
            from != address(this) &&
            !isController(_msgSender())
        ) {
            revert NotAllowed(_msgSender(), from);
        }
        _;
    }

    /*//////////////////////////////////////////////////////////////
                            CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/
    /// @notice Initializes the vault with default configuration
    constructor() {
        _configure();
    }

    /*//////////////////////////////////////////////////////////////
                        DEPOSIT MANAGEMENT
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Deposits tokens into the vault
     * @param token_ Token to deposit
     * @param from Source address of tokens
     * @param to Recipient address for shares
     * @param amount Amount of tokens to deposit
     * @param share Optional share amount to deposit
     *
     * @dev Flexible deposit mechanism supporting:
     * · Automatic share calculation
     * · Minimum share balance enforcement
     * · Skim and direct deposit modes
     *
     * Requirements:
     * · Non-zero receiver address
     * · Valid token and amount
     * · Sufficient token balance
     *
     * Effects:
     * · Updates share and total balances
     * · Transfers tokens to vault
     * · Emits Deposited event
     */
    function deposit(
        IERC20Custom token_,
        address from,
        address to,
        uint256 amount,
        uint256 share
    )
        external
        nonReentrant
        allowed(from)
        returns (uint256 amountIn, uint256 shareIn)
    {
        if (to == address(0)) revert ReceiverNotSet();
        IERC20Custom token = token_;
        _onBeforeDeposit(token, from, to, amount, share);
        Rebase memory total = totals[token];
        if (total.elastic == 0 && token.totalSupply() == 0) revert NoTokens();
        if (share == 0) {
            share = total.toBase(amount, false);
            if (total.base + share < MINIMUM_SHARE_BALANCE) {
                return (0, 0);
            }
        } else {
            amount = total.toElastic(share, true);
        }
        if (
            from == address(this) &&
            amount > _tokenBalanceOf(token) - total.elastic
        ) {
            revert InvalidSkim();
        }
        balanceOf[token][to] += share;
        total.base += share;
        total.elastic += amount;
        totals[token] = total;
        // Only transfer if the source is not the vault itself
        if (from != address(this)) {
            SafeERC20.safeTransferFrom(
                IERC20Safe(address(token)),
                from,
                address(this),
                amount
            );
        }
        emit Deposited(token, from, to, amount, share);
        return (amount, share);
    }

    /*//////////////////////////////////////////////////////////////
                        WITHDRAWAL MANAGEMENT
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Withdraws tokens from the vault
     * @param token_ Token to withdraw
     * @param from Source address of shares
     * @param to Recipient address for tokens
     * @param amount Optional token amount to withdraw
     * @param share Share amount to withdraw
     *
     * @dev Flexible withdrawal mechanism supporting:
     * · Automatic amount calculation
     * · Minimum share balance preservation
     *
     * Requirements:
     * · Non-zero receiver address
     * · Sufficient share balance
     * · Maintains minimum share balance
     *
     * Effects:
     * · Updates share and total balances
     * · Transfers tokens from vault
     * · Emits Withdrawn event
     */
    function withdraw(
        IERC20Custom token_,
        address from,
        address to,
        uint256 amount,
        uint256 share
    )
        external
        nonReentrant
        allowed(from)
        returns (uint256 amountOut, uint256 shareOut)
    {
        if (to == address(0)) revert ReceiverNotSet();
        IERC20Custom token = token_;
        Rebase memory total = totals[token];
        if (share == 0) {
            share = total.toBase(amount, true);
        } else {
            amount = total.toElastic(share, false);
        }
        balanceOf[token][from] -= share;
        total.elastic -= amount;
        total.base -= share;
        if (total.base > 0 && total.base < MINIMUM_SHARE_BALANCE) {
            revert CannotBeEmpty();
        }
        totals[token] = total;
        SafeERC20.safeTransfer(IERC20Safe(address(token)), to, amount);
        emit Withdrawn(token, from, to, amount, share);
        return (amount, share);
    }

    /*//////////////////////////////////////////////////////////////
                         TRANSFER MANAGEMENT
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Transfers shares between addresses
     * @param token Token to transfer
     * @param from Source address
     * @param to Recipient address
     * @param share Share amount to transfer
     *
     * @dev Allows direct share transfers with:
     * · Access control
     * · Zero-address prevention
     *
     * Requirements:
     * · Sufficient share balance
     * · Non-zero receiver address
     *
     * Effects:
     * · Updates account balances
     * · Emits Transferred event
     */
    function transfer(
        IERC20Custom token,
        address from,
        address to,
        uint256 share
    ) external nonReentrant allowed(from) {
        if (to == address(0)) revert ReceiverNotSet();
        balanceOf[token][from] -= share;
        balanceOf[token][to] += share;
        emit Transferred(token, from, to, share);
    }

    /**
     * @notice Transfers shares to multiple recipients
     * @param token Token to transfer
     * @param from Source address
     * @param tos Recipient addresses
     * @param shares Share amounts to transfer
     *
     * @dev Batch transfer mechanism supporting:
     * · Multiple recipient transfers
     * · Efficient share distribution
     *
     * Requirements:
     * · Sufficient total share balance
     * · Non-zero first receiver address
     *
     * Effects:
     * · Updates multiple account balances
     * · Emits multiple Transferred events
     */
    function transferMultiple(
        IERC20Custom token,
        address from,
        address[] calldata tos,
        uint256[] calldata shares
    ) external nonReentrant allowed(from) {
        if (tos[0] == address(0)) revert ReceiverNotSet();
        uint256 totalAmount;
        uint256 len = tos.length;
        for (uint256 i; i < len; i++) {
            address to = tos[i];
            balanceOf[token][to] += shares[i];
            totalAmount += shares[i];
            emit Transferred(token, from, to, shares[i]);
        }
        balanceOf[token][from] -= totalAmount;
    }

    /*//////////////////////////////////////////////////////////////
                         CONVERSION UTILITIES
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Converts token amount to shares
     * @param token Token to convert
     * @param amount Token amount to convert
     * @param roundUp Whether to round up the share calculation
     * @return share Calculated share amount
     *
     * @dev Precise share calculation based on current rebase state
     */
    function toShare(
        IERC20Custom token,
        uint256 amount,
        bool roundUp
    ) external view returns (uint256 share) {
        share = totals[token].toBase(amount, roundUp);
    }

    /**
     * @notice Converts shares to token amount
     * @param token Token to convert
     * @param share Share amount to convert
     * @param roundUp Whether to round up the amount calculation
     * @return amount Calculated token amount
     *
     * @dev Precise amount calculation based on current rebase state
     */
    function toAmount(
        IERC20Custom token,
        uint256 share,
        bool roundUp
    ) external view returns (uint256 amount) {
        amount = totals[token].toElastic(share, roundUp);
    }

    /*//////////////////////////////////////////////////////////////
                         PRIVATE CONFIGURATION HOOKS
    //////////////////////////////////////////////////////////////*/
    /// @notice Optional configuration method for derived contracts
    function _configure() internal virtual {}

    /// @notice Optional pre-deposit hook for derived contracts
    function _onBeforeDeposit(
        IERC20Custom token,
        address from,
        address to,
        uint256 amount,
        uint256 share
    ) internal virtual {}

    /// @notice Gets the current token balance of the vault
    function _tokenBalanceOf(
        IERC20Custom token
    ) private view returns (uint256 amount) {
        amount = token.balanceOf(address(this));
    }
}
