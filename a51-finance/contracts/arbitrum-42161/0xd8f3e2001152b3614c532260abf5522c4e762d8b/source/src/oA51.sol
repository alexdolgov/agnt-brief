// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.13;

import { Owned } from "solmate/auth/Owned.sol";
import { ERC20 } from "solmate/tokens/ERC20.sol";
import { SafeTransferLib } from "solmate/utils/SafeTransferLib.sol";
import { FixedPointMathLib } from "solmate/utils/FixedPointMathLib.sol";

import { IOracle } from "./interfaces/IOracle.sol";

/// @title Options Token
/// @notice Options token representing the right to purchase the underlying token
/// at an oracle-specified rate. Similar to call options but with a variable strike
/// price that's always at a certain discount to the market price.
/// @dev Assumes the underlying token and the payment token both use 18 decimals.
contract oA51 is ERC20, Owned {
    using SafeTransferLib for ERC20;
    using FixedPointMathLib for uint256;

    error oA51__PastDeadline();
    error oA51__SlippageTooHigh();

    event SetOracle(IOracle indexed newOracle);
    event SetTreasury(address indexed newTreasury);
    event Exercise(address indexed sender, address indexed recipient, uint256 amount, uint256 paymentAmount);

    /// @notice The oracle contract that provides the current price to purchase
    /// the underlying token while exercising options (the strike price)
    IOracle public oracle;

    /// @notice The treasury address which receives tokens paid during redemption
    address public treasury;

    /// @notice The token paid by the options token holder during redemption
    ERC20 public immutable paymentToken;

    /// @notice The underlying token purchased during redemption
    ERC20 public immutable underlyingToken;

    constructor(
        string memory _name,
        string memory _symbol,
        address _owner,
        ERC20 _paymentToken,
        ERC20 _underlyingToken,
        IOracle _oracle,
        address _treasury,
        address _recipientOfOptionsToken,
        uint256 _amountToMintOptionsToken
    )
        ERC20(_name, _symbol, 18)
        Owned(_owner)
    {
        paymentToken = _paymentToken;
        underlyingToken = _underlyingToken;
        oracle = _oracle;
        treasury = _treasury;

        // mint options tokens fixed supply
        _mint(_recipientOfOptionsToken, _amountToMintOptionsToken);

        emit SetOracle(_oracle);
        emit SetTreasury(_treasury);
    }

    /// @notice Exercises options tokens to purchase the underlying tokens.
    /// @dev The options tokens are not burnt but sent to address(0) to avoid messing up the
    /// inflation schedule.
    /// The oracle may revert if it cannot give a secure result.
    /// @param amount The amount of options tokens to exercise
    /// @param maxPaymentAmount The maximum acceptable amount to pay. Used for slippage protection.
    /// @param recipient The recipient of the purchased underlying tokens
    /// @return paymentAmount The amount paid to the treasury to purchase the underlying tokens
    function exercise(
        uint256 amount,
        uint256 maxPaymentAmount,
        address recipient
    )
        external
        virtual
        returns (uint256 paymentAmount)
    {
        return _exercise(amount, maxPaymentAmount, recipient);
    }

    /// @notice Exercises options tokens to purchase the underlying tokens.
    /// @dev The options tokens are not burnt but sent to address(0) to avoid messing up the
    /// inflation schedule.
    /// The oracle may revert if it cannot give a secure result.
    /// @param amount The amount of options tokens to exercise
    /// @param maxPaymentAmount The maximum acceptable amount to pay. Used for slippage protection.
    /// @param recipient The recipient of the purchased underlying tokens
    /// @param deadline The Unix timestamp (in seconds) after which the call will revert
    /// @return paymentAmount The amount paid to the treasury to purchase the underlying tokens
    function exercise(
        uint256 amount,
        uint256 maxPaymentAmount,
        address recipient,
        uint256 deadline
    )
        external
        virtual
        returns (uint256 paymentAmount)
    {
        if (block.timestamp > deadline) revert oA51__PastDeadline();
        return _exercise(amount, maxPaymentAmount, recipient);
    }

    /// @notice Sets the oracle contract. Only callable by the owner.
    /// @param oracle_ The new oracle contract
    function setOracle(IOracle oracle_) external onlyOwner {
        oracle = oracle_;
        emit SetOracle(oracle_);
    }

    /// @notice Sets the treasury address. Only callable by the owner.
    /// @param treasury_ The new treasury address
    function setTreasury(address treasury_) external onlyOwner {
        treasury = treasury_;
        emit SetTreasury(treasury_);
    }

    function _exercise(
        uint256 amount,
        uint256 maxPaymentAmount,
        address recipient
    )
        internal
        virtual
        returns (uint256 paymentAmount)
    {
        // skip if amount is zero
        if (amount == 0) return 0;

        // transfer options tokens from msg.sender to address(0)
        // we transfer instead of burn because TokenAdmin cares about totalSupply
        // which we don't want to change in order to follow the emission schedule
        transfer(address(0), amount);

        // transfer payment tokens from msg.sender to the treasury
        paymentAmount = amount.mulWadUp(oracle.getPrice());
        if (paymentAmount > maxPaymentAmount) revert oA51__SlippageTooHigh();
        paymentToken.safeTransferFrom(msg.sender, treasury, paymentAmount);

        // transfer underlying tokens to recipient
        underlyingToken.safeTransfer(recipient, amount);

        emit Exercise(msg.sender, recipient, amount, paymentAmount);
    }
}
