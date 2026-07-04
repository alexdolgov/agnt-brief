// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import { IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { IERC20Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import { IERC165 } from "@openzeppelin/contracts/utils/introspection/IERC165.sol";

import { IDebtToken } from "./IDebtToken.sol";
import { IPegStabilityModulePriceProtection } from "./IPegStabilityModulePriceProtection.sol";

/// @title IPegStabilityModule_Initializer
/// @notice Interface for initializing the Peg Stability Module
interface IPegStabilityModule_Initializer {
    struct InitializeParams {
        address admin;
        address pegToken;
        address debtToken;
        address treasury;
        uint256 mintFee;
        uint256 redeemFee;
        uint256 mintCap;
        uint256 mintFloor;
        address priceFeed;
        uint256 maxPriceDeviation; // Max allowed price deviation from $1 (1e18 = 100%)
        address[] configAdmins;
        address[] pausers;
        address[] initialBypass;
    }

    /// @notice Initialize the Peg Stability Module with the provided parameters
    /// @param params The initialization parameters
    // function initialize(InitializeParams calldata params) external;
}

/// @title IPegStabilityModule
/// @notice Main interface for the Peg Stability Module
interface IPegStabilityModule is IPegStabilityModulePriceProtection, IERC165 {
    struct ThrottleState {
        uint256 maxAmount;
        uint48 refillDuration;
        uint256 available;
        uint256 refillRate;
        uint48 lastUpdated;
    }

    struct Permissions {
        bool registered;
        bool isFeeExempt;
        bool canBypassPause;
        bool canBypassThrottle;
    }

    // Admin Functions --------------------------------------------------------------------------------------------------------

    /// @notice Updates the treasury address where fees are sent
    /// @param newTreasury The new treasury address
    function setTreasury(address newTreasury) external;

    /// @notice Updates the fee charged when minting debt tokens
    /// @param newFee The new mint fee (1e18 = 100%)
    function setMintFee(uint256 newFee) external;

    /// @notice Updates the fee charged when redeeming debt tokens
    /// @param newFee The new redeem fee (1e18 = 100%)
    function setRedeemFee(uint256 newFee) external;

    /// @notice Updates the maximum amount of debt tokens that can be outstanding
    /// @param newCap The new mint cap
    function setMintCap(uint256 newCap) external;

    /// @notice Updates the minimum debt token amount required for redeeming
    /// @param newFloor The new debt floor
    function setDebtFloor(uint256 newFloor) external;

    /// @notice Updates the mint throttle, which uses a linear refill model to limit debt token minting rate.
    /// @param newMaxDebtAmount Maximum debt token amount (18 decimals) that can be minted before throttle depletes (0 disables)
    /// @param newRefillDuration Seconds required for the throttle to fully refill (0 disables)
    function setMintThrottle(uint256 newMaxDebtAmount, uint48 newRefillDuration) external;

    /// @notice Updates the redeem throttle, which uses a linear refill model to limit debt token redemption rate.
    /// @param newMaxDebtAmount Maximum debt token amount (18 decimals) that can be redeemed before throttle depletes (0 disables)
    /// @param newRefillDuration Seconds required for the throttle to fully refill (0 disables)
    function setRedeemThrottle(uint256 newMaxDebtAmount, uint48 newRefillDuration) external;

    /// @notice Toggles whether fee proceeds remain collateralized inside the PSM (minting debt to the treasury)
    /// @param shouldCollateralize True to retain peg fees and mint debt to the treasury, false to transfer peg fees out
    function setCollateralizeFees(bool shouldCollateralize) external;

    /// @notice Configures permissions for a specific account
    /// @param account The account to set permissions for
    /// @param isFeeExempt Whether the account is exempt from fees
    /// @param canBypassPause Whether the account can bypass pause
    function setPermissions(address account, bool isFeeExempt, bool canBypassPause, bool canBypassThrottle) external;

    /// @notice Returns the address at the specified index in the permissions accounts array
    /// @param index The index of the account to retrieve
    /// @return The address at the specified index
    function permissionsAccounts(uint256 index) external view returns (address);

    /// @notice Pauses all mint and redeem operations
    function pause() external;

    /// @notice Resumes all mint and redeem operations
    function unpause() external;

    // State Variables --------------------------------------------------------------------------------------------------------

    /// @notice Returns the protocol debt token contract
    /// @return The debt token contract
    function debtToken() external view returns (IDebtToken);

    /// @notice Returns the peg token contract (e.g., USDC)
    /// @return The peg token contract
    function pegToken() external view returns (IERC20Metadata);

    /// @notice Returns the address where fees are collected
    /// @return The treasury address
    function treasury() external view returns (address);

    /// @notice Returns the current fee rate for minting operations
    /// @return The mint fee (1e18 = 100%)
    function mintFee() external view returns (uint256);

    /// @notice Returns the current fee rate for redeem operations
    /// @return The redeem fee (1e18 = 100%)
    function redeemFee() external view returns (uint256);

    /// @notice Returns the maximum amount of debt tokens that can be outstanding
    /// @return The mint cap
    function mintCap() external view returns (uint256);

    /// @notice Returns the minimum debt token amount required for redeeming
    /// @return The debt floor
    function debtFloor() external view returns (uint256);

    /// @notice Returns the current amount of debt tokens in circulation
    /// @return The outstanding debt amount
    function outstandingDebt() external view returns (uint256);

    /// @notice Returns the total amount of debt tokens minted since deployment
    /// @return The lifetime minted amount
    function lifetimeMinted() external view returns (uint256);

    /// @notice Returns the total amount of debt tokens redeemed since deployment
    /// @return The lifetime redeemed amount
    function lifetimeRedeemed() external view returns (uint256);

    /// @notice Returns the total amount of fees collected since deployment
    /// @return The lifetime fees collected
    function lifetimeFeesCollected() external view returns (uint256);

    /// @notice Returns the full mint throttle configuration
    function getMintThrottle() external view returns (ThrottleState memory state);

    /// @notice Returns the full redeem throttle configuration
    function getRedeemThrottle() external view returns (ThrottleState memory state);

    /// @notice Returns the currently available mint capacity (after linear refill)
    function mintThrottleAvailable() external view returns (uint256);

    /// @notice Returns the currently available redeem capacity (after linear refill)
    function redeemThrottleAvailable() external view returns (uint256);

    // Mint Functions --------------------------------------------------------------------------------------------------------

    /// @notice Exchanges peg tokens for debt tokens at 1:1 ratio (minus fees)
    /// @param pegAmount The amount of peg tokens to exchange
    function mint(uint256 pegAmount) external;

    /// @notice Simulates a mint operation to show expected outputs without executing
    /// @param pegAmount The amount of peg tokens the user is depositing
    /// @param account The account performing the mint
    /// @return debtReceived The debt tokens the user would receive (after fee deduction from peg input)
    /// @return pegTokenFee The peg token fee retained by the protocol
    function previewMint(uint256 pegAmount, address account) external view returns (uint256 debtReceived, uint256 pegTokenFee);

    // Redeem Functions --------------------------------------------------------------------------------------------------------

    /// @notice Exchanges debt tokens for peg tokens at 1:1 ratio (minus fees)
    /// @param debtAmount The amount of debt tokens to exchange
    function redeem(uint256 debtAmount) external;

    /// @notice Simulates a redeem operation to show expected outputs without executing
    /// @param debtAmount The amount of debt tokens the user is returning
    /// @param account The account performing the redeem
    /// @return pegReceived The peg tokens the user would receive (after fee deduction)
    /// @return pegTokenFee The peg token fee retained by the protocol
    function previewRedeem(uint256 debtAmount, address account) external view returns (uint256 pegReceived, uint256 pegTokenFee);
}

/// @title IPegStabilityModule_WithInit
/// @notice Interface that combines the main PSM interface with initialization capabilities
interface IPegStabilityModule_WithInit is IPegStabilityModule, IPegStabilityModule_Initializer {
    // This interface inherits all functions from both parent interfaces
}
