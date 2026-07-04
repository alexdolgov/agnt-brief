// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.28;

import {IERC20} from "./IERC20.sol";
import {ISettler} from "./ISettler.sol";
import {PriceOracle} from "../PriceOracle.sol";
import {UserLib} from "../User.sol";
import {TokenLib} from "../Token.sol";
import {GatewayLib} from "../GatewayLib.sol";

/// @title Gateway Interface for StandX Protocol
/// @notice Handles deposits, withdrawals, and yield claims for the StandX protocol
interface IGateway {
    event Mint(address indexed user, uint256 mintAmount, uint256 dusdAmount);
    event WithdrawRequest(address indexed user, uint256 amount, uint256 id);
    event Withdraw(address indexed user, uint256 amount, uint256 id);
    event ClaimYield(address indexed user, uint256 amount);
    event UpdateTokenList(IERC20 indexed token);

    /// @notice Deposit tokens to mint DUSD
    /// @param token Token to deposit (USDT or USDC)
    /// @param amount Amount of tokens to deposit
    /// @param oracle Price oracle data for conversion rate
    function deposit(
        IERC20 token,
        uint256 amount,
        PriceOracle.Oracle memory oracle
    ) external;

    /// @notice Request to withdraw tokens by burning DUSD
    /// @param targetToken Token to receive (USDT or USDC)
    /// @param dusdAmount Amount of DUSD to burn
    function withdrawRequest(IERC20 targetToken, uint256 dusdAmount) external;

    /// @notice Complete a withdrawal request
    /// @param id ID of the withdrawal request
    /// @param oracle Price oracle data for conversion rate
    function withdraw(uint256 id, PriceOracle.Oracle memory oracle) external;

    /// @notice Claim yield rewards
    /// @param signedClaim Signed claim data for verification
    function claimYield(
        GatewayLib.SignedYieldClaim memory signedClaim
    ) external;

    /// @notice Get user information
    /// @param user Address of the user
    /// @return User information including withdrawal requests and claim status
    function getUserInfo(
        address user
    ) external view returns (UserLib.User memory);

    /// @notice Get the current state of the gateway
    /// @return Current gateway state
    function getState() external view returns (GatewayLib.State memory);

    /// @notice Get token configuration
    /// @param token Address of the token
    /// @return Token configuration including enabled status and fees
    function getToken(
        address token
    ) external view returns (TokenLib.Token memory);
}
