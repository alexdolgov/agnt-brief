// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";

import { Gauge } from "./Gauge.sol";
import { Launchpad } from "./Launchpad.sol";
import { LaunchpadToken } from "./LaunchpadToken.sol";
import { ReferralHandler } from "./ReferralHandler.sol";


/**
 * --------------------------------------------------------------------------------
 *
 * @title   Referral Router
 * @notice  Atomically set referral and trade tokens
 * @author  BowTiedPickle
 *
 * --------------------------------------------------------------------------------
 */
contract ReferralRouter is Ownable {
    ////////////////////////////////////////////////////////////////////////////////
    // CONSTANTS AND IMMUTABLES
    ////////////////////////////////////////////////////////////////////////////////

    /// @dev The zero referral code is reserved for referral nonexistence
    bytes32 public constant ZERO_REFERRAL_CODE = bytes32(0);
    /// @dev The protocol referral code is reserved for protocol fees
    bytes32 public constant PROTOCOL_REFERRAL_CODE = ~bytes32(0);

    /// @notice Launchpad contract
    Launchpad public immutable launchpad;

    ////////////////////////////////////////////////////////////////////////////////
    // CONFIGURATION
    ////////////////////////////////////////////////////////////////////////////////

    /// @notice Referral handler contract
    ReferralHandler public referralHandler;

    ////////////////////////////////////////////////////////////////////////////////
    // CONSTRUCTOR
    ////////////////////////////////////////////////////////////////////////////////

    /**
     * @param   _launchpad  Launchpad contract
     */
    constructor(Launchpad _launchpad) Ownable(msg.sender) {
        if (address(_launchpad) == address(0)) revert ReferralRouter__ZeroAddress();
        launchpad = _launchpad;
    }

    ////////////////////////////////////////////////////////////////////////////////
    // TRADE TOKENS
    ////////////////////////////////////////////////////////////////////////////////

    /**
     * @notice  Buy an exact amount of tokens
     * @dev     Allowable slippage is defined by msg.value
     * @param   token       Token address
     * @param   amountOut   Amount of tokens to buy
     * @param   code        Referral code to set, bytes32(0) to leave unchanged
     */
    function buyExactTokens(address token, uint256 amountOut, bytes32 code) external payable {
        address gauge = launchpad.tokenToGauge(token);
        if (gauge == address(0)) revert ReferralRouter__InvalidToken();

        bytes32 existingReferral = referralHandler.getReferralCode(msg.sender);
        if (code != ZERO_REFERRAL_CODE && existingReferral == ZERO_REFERRAL_CODE) {
            referralHandler.setReferral(msg.sender, code);
        } else if (code == ZERO_REFERRAL_CODE && existingReferral == ZERO_REFERRAL_CODE) {
            referralHandler.setReferral(msg.sender, PROTOCOL_REFERRAL_CODE);
        }

        Gauge(gauge).buyExactTokens{ value: msg.value }(msg.sender, amountOut);
    }

    /**
     * @notice  Sell an exact amount of tokens
     * @param   token           Token address
     * @param   amountIn        Amount of tokens to sell
     * @param   minAmountOut    Minimum amount of ETH to receive
     * @param   code            Referral code to set, bytes32(0) to leave unchanged
     */
    function sellExactTokens(address token, uint256 amountIn, uint256 minAmountOut, bytes32 code) external {
        address gauge = launchpad.tokenToGauge(token);
        if (gauge == address(0)) revert ReferralRouter__InvalidToken();

        bytes32 existingReferral = referralHandler.getReferralCode(msg.sender);
        if (code != ZERO_REFERRAL_CODE && existingReferral == ZERO_REFERRAL_CODE) {
            referralHandler.setReferral(msg.sender, code);
        } else if (code == ZERO_REFERRAL_CODE && existingReferral == ZERO_REFERRAL_CODE) {
            referralHandler.setReferral(msg.sender, PROTOCOL_REFERRAL_CODE);
        }

        LaunchpadToken(token).transferFrom(msg.sender, address(this), amountIn);
        LaunchpadToken(token).approve(gauge, amountIn);
        Gauge(gauge).sellExactTokens(msg.sender, amountIn, minAmountOut);
    }

    /**
     * @notice  Buy the maximum amount of tokens for an exact ETH input
     * @param   token           Token address
     * @param   minAmountOut    Minimum amount of tokens to receive
     * @param   code            Referral code to set, bytes32(0) to leave unchanged
     */
    function buyExactEth(address token, uint256 minAmountOut, bytes32 code) external payable {
        address gauge = launchpad.tokenToGauge(token);
        if (gauge == address(0)) revert ReferralRouter__InvalidToken();

        bytes32 existingReferral = referralHandler.getReferralCode(msg.sender);
        if (code != ZERO_REFERRAL_CODE && existingReferral == ZERO_REFERRAL_CODE) {
            referralHandler.setReferral(msg.sender, code);
        } else if (code == ZERO_REFERRAL_CODE && existingReferral == ZERO_REFERRAL_CODE) {
            referralHandler.setReferral(msg.sender, PROTOCOL_REFERRAL_CODE);
        }

        Gauge(gauge).buyExactEth{ value: msg.value }(msg.sender, minAmountOut);
    }

    /**
     * @notice  Sell the minimum amount of tokens for an exact ETH output
     * @param   token       Token address
     * @param   amountOut   Amount of ETH to receive
     * @param   maxInput    Maximum amount of tokens to sell
     * @param   code        Referral code to set, bytes32(0) to leave unchanged
     */
    function sellExactEth(address token, uint256 amountOut, uint256 maxInput, bytes32 code) external {
        address gauge = launchpad.tokenToGauge(token);
        if (gauge == address(0)) revert ReferralRouter__InvalidToken();

        bytes32 existingReferral = referralHandler.getReferralCode(msg.sender);
        if (code != ZERO_REFERRAL_CODE && existingReferral == ZERO_REFERRAL_CODE) {
            referralHandler.setReferral(msg.sender, code);
        } else if (code == ZERO_REFERRAL_CODE && existingReferral == ZERO_REFERRAL_CODE) {
            referralHandler.setReferral(msg.sender, PROTOCOL_REFERRAL_CODE);
        }

        (uint256 amountIn, ) = Gauge(gauge).quoteSellExactEth(amountOut);
        LaunchpadToken(token).transferFrom(msg.sender, address(this), amountIn);
        LaunchpadToken(token).approve(gauge, amountIn);
        Gauge(gauge).sellExactEth(msg.sender, amountOut, maxInput);
    }

    ////////////////////////////////////////////////////////////////////////////////
    // ADMINISTRATION
    ////////////////////////////////////////////////////////////////////////////////

    /**
     * @notice  Set the referral handler
     * @param   _referralHandler    The new referral handler
     */
    function setReferralHandler(ReferralHandler _referralHandler) external onlyOwner {
        if (address(_referralHandler) == address(0)) revert ReferralRouter__ZeroAddress();

        emit ReferralHandlerSet(address(_referralHandler), address(referralHandler));

        referralHandler = _referralHandler;
    }

    ////////////////////////////////////////////////////////////////////////////////
    // ERRORS
    ////////////////////////////////////////////////////////////////////////////////

    error ReferralRouter__ZeroAddress();
    error ReferralRouter__InvalidToken();

    ////////////////////////////////////////////////////////////////////////////////
    // EVENTS
    ////////////////////////////////////////////////////////////////////////////////

    event ReferralHandlerSet(address newReferralHandler, address oldReferralHandler);
}