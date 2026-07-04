//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.25;

import {IERC20} from "openzeppelin-contracts/interfaces/IERC20.sol";

interface IBrktETH is IERC20 {
    enum WithdrawalStatus {
        Unset,
        Queued,
        Ready,
        Completed
    }

    struct CollateralInfo {
        address collateral;
        bool whitelisted;
        uint256 totalDeposit;
    }

    error CollateralNotSupported();
    error CollateralNotWhitelisted();
    error CollateralNotBlacklisted();
    error CollateralAlreadyExists();
    error CollateralNotExists();
    error CollateralNotEmpty();
    error DiffArraySize();
    error MaxAmountInExceeded();
    error MaxCollateralsReached();
    error MinAmountOutNotMet();
    error NotEnoughCollateral();
    error SameCollateral();
    error WithdrawalAlreadyQueued();
    error WithdrawalNotReady();
    error ZeroAddress();
    error ZeroAmount();

    event Mint(address indexed user, address token, uint256 colAmount, uint256 brktAmount);
    event Mint(address indexed user, address[] tokens, uint256[] colAmounts, uint256 brktAmount);
    event WithdrawalScheduled(
        address indexed user, address token, uint256 colAmount, uint256 brktAmount, uint256 timestamp, bytes32 salt
    );
    event WithdrawalClaimed(address indexed user, address token, uint256 colAmount, uint256 scheduledTimestamp);

    /// @notice Mints brktETH tokens in exchange for a single collateral token
    /// @param token Address of the collateral token
    /// @param amount Amount of collateral token to deposit
    /// @param minBrktAmount Minimum amount of brktETH to receive
    /// @return brktAmount Amount of brktETH minted
    function mint(address token, uint256 amount, uint256 minBrktAmount) external returns (uint256 brktAmount);
    
    /// @notice Burns brktETH tokens and queues withdrawal of a specific collateral token
    /// @param token Address of the collateral token to receive
    /// @param amount Amount of brktETH to burn
    /// @param minColAmount Minimum amount of collateral token to receive
    /// @param salt A random bytes32 value to prevent hash collisions
    /// @return Amount of collateral token returned
    function burn(address token, uint256 amount, uint256 minColAmount, bytes32 salt) external returns (uint256);

    /// @notice Claims a previously scheduled withdrawal of collateral tokens
    /// @dev This function can only be called after the withdrawal delay has passed
    /// @param token The address of the collateral token to be withdrawn
    /// @param amount The amount of collateral token to be withdrawn
    /// @param salt A random bytes32 value to prevent hash collisions
    /// @param timestamp The timestamp when the withdrawal delay is over
    function claimWithdrawal(address token, uint256 amount, uint256 timestamp, bytes32 salt) external;

    /// @notice Calculates the amount of brktETH that would be minted for a given collateral deposit
    /// @param token Address of the collateral token
    /// @param amount Amount of collateral token
    /// @return Amount of brktETH that would be minted
    function calculateMint(address token, uint256 amount) external view returns (uint256);

    /// @notice Whitelists a collateral token
    /// @param token Address of the collateral token to whitelist
    function whitelistCollateral(address token) external;

    /// @notice Blacklists a collateral token
    /// @param token Address of the collateral token to blacklist
    function blacklistCollateral(address token) external;

    function getBracketRate() external view returns (uint256);

    function getCollateralInfo(address token) external view returns (CollateralInfo memory);

    /// @notice Sets the oracle contract address
    /// @param _oracle New oracle contract address
    function setOracle(address _oracle) external;

    /// @notice Adds a new collateral token
    /// @param token Address of the new collateral token
    function addCollateral(address token) external;

    /// @notice Gets the value in ETH for a given amount of brktETH
    /// @param amount Amount of brktETH
    /// @return Value in ETH
    function getBracketValue(uint256 amount) external view returns (uint256);

    /// @notice Gets the total value of all collateral held by the contract
    /// @return TVL in ETH
    function getTotalValue() external returns (uint256);

    /// @dev Calculates the amount of brktETH to mint for a given value
    /// @param value Value in ETH
    /// @return brktAmount Amount of brktETH to mint
    function calculateMint(uint256 value) external returns (uint256 brktAmount);

    /// @dev Calculates the amount of collateral to return when burning brktETH
    /// @param brktAmount Amount of brktETH to burn
    /// @param token Address of the collateral token to return
    /// @return Amount of collateral token to return
    function calculateBurn(uint256 brktAmount, address token) external returns (uint256);

    /// @notice Computes the hash of a withdrawal request
    /// @dev This hash is used as a unique identifier for each withdrawal request
    /// @param user The address of the user requesting the withdrawal
    /// @param token The address of the token to be withdrawn
    /// @param amount The amount of tokens to be withdrawn
    /// @param time The timestamp when the withdrawal will be available
    /// @param salt A random bytes32 value to prevent hash collisions
    /// @return The keccak256 hash of the encoded withdrawal request parameters
    function hashWithdrawal(address user, address token, uint256 amount, uint256 time, bytes32 salt) external returns (bytes32);

    /// @notice Retrieves the status and hash of a withdrawal request
    /// @dev This function checks the current status of a withdrawal and returns its corresponding hash
    /// @param user The address of the user who initiated the withdrawal
    /// @param token The address of the token to be withdrawn
    /// @param amount The amount of tokens to be withdrawn
    /// @param timestamp The timestamp when the withdrawal was initiated
    /// @param salt A random bytes32 value to prevent hash collisions
    /// @return WithdrawalStatus The current status of the withdrawal (Unset, Queued, Ready, or Completed)
    /// @return bytes32 The unique hash identifying the withdrawal request
    function getWithdrawalStatusAndHash(address user, address token, uint256 amount, uint256 timestamp, bytes32 salt)
        external
        view
        returns (WithdrawalStatus, bytes32);
}
