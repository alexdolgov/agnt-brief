// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

// ============================================================
//  Chainlink Data Streams — Core Interfaces
//  Docs: https://docs.chain.link/data-streams
// ============================================================

/// @dev Shared asset type used by FeeManager
library Common {
    struct Asset {
        address assetAddress;
        uint256 amount;
    }
}

/// @notice Entry point for on-chain report verification.
///         Deployed by Chainlink on each supported network.
interface IVerifierProxy {
    /// @param payload          Full signed report bytes from the Data Streams API
    /// @param parameterPayload ABI-encoded fee token address (use LINK or native)
    /// @return verifierResponse ABI-encoded verified report — decode into your schema struct
    function verify(bytes calldata payload, bytes calldata parameterPayload)
        external
        payable
        returns (bytes memory verifierResponse);

    /// @param payloads          Array of full signed report bytes (one per feed)
    /// @param parameterPayload  ABI-encoded fee token address (same for all reports)
    /// @return verifiedReports  Array of ABI-encoded verified reports, same order as payloads
    function verifyBulk(bytes[] calldata payloads, bytes calldata parameterPayload)
        external
        payable
        returns (bytes[] memory verifiedReports);

    function s_feeManager() external view returns (IVerifierFeeManager);
}

/// @notice Calculates and routes verification fees.
interface IVerifierFeeManager {
    /// @param subscriber        Address paying the fee (your contract)
    /// @param unverifiedReport  The raw signed report bytes
    /// @param quoteAddress      Token to pay fees in (LINK or native)
    /// @return fee              Required payment (asset + amount)
    /// @return reward           Reward asset (informational)
    /// @return totalDiscount    Any applicable discount
    function getFeeAndReward(address subscriber, bytes memory unverifiedReport, address quoteAddress)
        external
        returns (Common.Asset memory fee, Common.Asset memory reward, uint256 totalDiscount);

    function i_linkAddress() external view returns (address);
    function i_nativeAddress() external view returns (address);
    function i_rewardManager() external view returns (address);
}

/// @notice Minimal ERC-20 interface (used for LINK fee approval)
interface IERC20 {
    function approve(address spender, uint256 amount) external returns (bool);
    function transfer(address to, uint256 amount) external returns (bool);
    function balanceOf(address account) external view returns (uint256);
}
