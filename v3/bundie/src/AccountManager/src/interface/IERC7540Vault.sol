// SPDX-License-Identifier: MIT
//
//        ██████╗ ██╗   ██╗███╗   ██╗██████╗ ██╗███████╗
//        ██╔══██╗██║   ██║████╗  ██║██╔══██╗██║██╔════╝
//        ██████╔╝██║   ██║██╔██╗ ██║██║  ██║██║█████╗  
//        ██╔══██╗██║   ██║██║╚██╗██║██║  ██║██║██╔══╝  
//        ██████╔╝╚██████╔╝██║ ╚████║██████╔╝██║███████╗
//        ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝╚═════╝ ╚═╝╚══════╝
//
//        Cross-Chain Yield Aggregation Protocol
//
pragma solidity 0.8.34;

/// @title IERC7540Vault
/// @notice Interface for ERC-7540 asynchronous vault operations
/// @dev ERC-7540 extends ERC-4626 with asynchronous request/claim patterns.
///      Supports both request functions (initiate async operations) and
///      claim functions (settle fulfilled requests).
///
///      ## Lifecycle
///      1. Controller calls `requestDeposit()` / `requestRedeem()` to initiate
///      2. Vault operator fulfills the request off-chain
///      3. Controller calls `deposit()` / `mint()` to claim shares/assets
///
///      ## Controller Model
///      Per ERC-7540 spec, the overloaded `deposit(assets, receiver, controller)` and
///      `mint(shares, receiver, controller)` MUST revert unless msg.sender is equal
///      to controller or an operator approved by controller.
interface IERC7540Vault {
    /// @notice Request an asynchronous deposit
    /// @param assets Amount of assets to deposit
    /// @param controller The controller address for the request
    /// @param owner The owner of the assets being deposited
    /// @return requestId Unique identifier for tracking the deposit request
    function requestDeposit(uint256 assets, address controller, address owner) external returns (uint256 requestId);

    /// @notice Request an asynchronous redemption
    /// @param shares Amount of shares to redeem
    /// @param controller The controller address for the request
    /// @param owner The owner of the shares being redeemed
    /// @return requestId Unique identifier for tracking the redemption request
    function requestRedeem(uint256 shares, address controller, address owner) external returns (uint256 requestId);

    /// @notice Claim shares from a fulfilled deposit request (ERC-7540 overloaded deposit)
    /// @dev MUST revert unless msg.sender == controller or is an approved operator.
    ///      The controller must have a pending fulfilled deposit request.
    /// @param assets Amount of assets to claim shares for
    /// @param receiver Address to receive the shares
    /// @param controller The controller who initiated the deposit request
    /// @return shares Amount of shares received
    function deposit(uint256 assets, address receiver, address controller) external returns (uint256 shares);

    /// @notice Claim shares from a fulfilled deposit request by share amount (ERC-7540 overloaded mint)
    /// @dev MUST revert unless msg.sender == controller or is an approved operator.
    /// @param shares Amount of shares to claim
    /// @param receiver Address to receive the shares
    /// @param controller The controller who initiated the deposit request
    /// @return assets Amount of assets consumed
    function mint(uint256 shares, address receiver, address controller) external returns (uint256 assets);

    /// @notice Query the claimable assets for a fulfilled deposit request
    /// @dev Returns 0 if the request has not been fulfilled yet.
    /// @param requestId The request identifier from requestDeposit
    /// @param controller The controller address for the request
    /// @return assets Amount of assets that can be claimed via deposit()
    function claimableDepositRequest(uint256 requestId, address controller) external view returns (uint256 assets);

    /// @notice Cancel a pending deposit request (OPTIONAL per ERC-7540 spec)
    /// @dev Not all vaults support this. Reverts if the vault doesn't implement it.
    ///      After cancellation, assets are returned to the controller by the vault.
    /// @param requestId The request to cancel
    /// @param controller The controller who initiated the request
    function cancelDepositRequest(uint256 requestId, address controller) external;

    /// @notice Query the claimable shares for a fulfilled redeem request
    /// @dev Returns 0 if the request has not been fulfilled yet.
    /// @param requestId The request identifier from requestRedeem
    /// @param controller The controller address for the request
    /// @return shares Amount of shares that have been processed (assets claimable via withdraw/redeem)
    function claimableRedeemRequest(uint256 requestId, address controller) external view returns (uint256 shares);

    /// @notice Claim assets from a fulfilled redeem request (ERC-7540 overloaded redeem)
    /// @dev MUST revert unless msg.sender == controller or is an approved operator.
    ///      The controller must have a pending fulfilled redeem request.
    /// @param shares Amount of shares to claim assets for
    /// @param receiver Address to receive the assets
    /// @param controller The controller who initiated the redeem request
    /// @return assets Amount of assets received
    function redeem(uint256 shares, address receiver, address controller) external returns (uint256 assets);

    /// @notice Cancel a pending redeem request (OPTIONAL per ERC-7540 spec)
    /// @dev Not all vaults support this. Reverts if the vault doesn't implement it.
    ///      After cancellation, shares are returned to the controller by the vault.
    /// @param requestId The request to cancel
    /// @param controller The controller who initiated the request
    function cancelRedeemRequest(uint256 requestId, address controller) external;
}
