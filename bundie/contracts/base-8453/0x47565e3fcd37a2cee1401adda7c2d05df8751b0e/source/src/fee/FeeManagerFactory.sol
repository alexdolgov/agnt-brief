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

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {ERC1967Proxy} from "@openzeppelin/contracts/proxy/ERC1967/ERC1967Proxy.sol";
import {FeeManager} from "./FeeManager.sol";
import {UUPSUpgradeable} from "@openzeppelin-upgradeable/contracts/proxy/utils/UUPSUpgradeable.sol";
import {Errors} from "../lib/Errors.sol";

/// @title FeeManagerFactory
/// @author Bundie Team
/// @notice Factory and upgrade manager for the global FeeManager UUPS proxy
/// @dev Deploys and manages a single FeeManager instance using UUPS pattern
///
/// ## Why a factory for FeeManager?
/// FeeManager is a singleton - there's exactly one instance for the entire protocol.
/// The factory pattern:
/// - Simplifies deployment (one transaction deploys implementation + proxy + initialization)
/// - Centralizes upgrade authority
/// - Makes the upgrade process observable via events
///
/// ## UUPS Upgrade Pattern
/// Unlike transparent proxies, UUPS puts upgrade logic in the implementation.
/// This factory calls `upgradeToAndCall()` on the proxy, which delegates to
/// the current implementation's upgrade function.
///
/// ## Ownership Safety
/// - Factory deploys and owns the FeeManager initially
/// - `upgradeFeeManager()` requires factory to still own FeeManager
/// - If ownership transfers away, upgrades stop working (intentional safety)
/// - Ownership can be returned to factory to re-enable upgrades
///
/// ## Immutable Proxy Address
/// The `feeManagerProxy` address never changes. Upgrades change which
/// implementation code the proxy delegates to, not the proxy address.
/// This means all vaults/integrations always use the same address.
contract FeeManagerFactory is Ownable2Step {
    /// @notice Address of the deployed ERC1967 proxy that users/vaults should interact with.
    /// @dev This proxy address is immutable: upgrades change implementation, not proxy.
    address public immutable feeManagerProxy;

    /// @notice Current implementation address that the proxy delegates to.
    /// @dev Stored explicitly to make upgrades observable without reading proxy internals.
    address public currentImplementation;

    event FeeManagerDeployed(address indexed proxy, address indexed implementation);
    event FeeManagerUpgraded(address indexed proxy, address oldImpl, address newImpl);

    /// @notice Deploy FeeManager with UUPS proxy
    /// @dev The factory is set as the initial owner of the FeeManager so upgrades can be coordinated safely.
    ///      Ownership can later be transferred out (e.g., to a multisig), but upgrades require the factory to be owner.
    ///
    /// ## Deployment steps:
    /// 1. Deploy FeeManager implementation contract (done separately, passed as parameter)
    /// 2. Constructor creates ERC1967Proxy with implementation + initialization call
    /// 3. Proxy is now the FeeManager address used by all vaults
    ///
    /// @param initialImplementation Deployed FeeManager implementation contract
    constructor(address initialImplementation) Ownable(msg.sender) {
        _validateImplementation(initialImplementation);

        // Encode the initialize(owner) call that will run on the proxy
        // Setting this factory as owner allows us to coordinate upgrades
        bytes memory initData = abi.encodeWithSelector(FeeManager.initialize.selector, address(this));

        // Deploy ERC1967 proxy with the implementation and initialization call
        // The proxy stores all state; implementation provides the logic
        address proxy = address(new ERC1967Proxy(initialImplementation, initData));

        // Store the proxy address (immutable - never changes)
        feeManagerProxy = proxy;
        // Store the implementation address for tracking
        currentImplementation = initialImplementation;

        // Emit event for off-chain tracking
        emit FeeManagerDeployed(proxy, initialImplementation);
    }

    /// @notice Return the last implementation address recorded by the factory.
    /// @dev This is the cached value from the last upgrade. To get the actual
    ///      implementation from the proxy's storage slot, call the proxy directly.
    /// @return impl Current implementation address
    function getImplementation() external view returns (address impl) {
        return currentImplementation;
    }

    /// @notice Convenience getter for the FeeManager owner (reads through the proxy).
    /// @dev Useful for checking if the factory still owns the FeeManager
    ///      (required for upgrades to work).
    /// @return owner Current owner of the FeeManager proxy
    function getFeeManagerOwner() external view returns (address owner) {
        // Call owner() on the proxy, which delegates to implementation
        return FeeManager(feeManagerProxy).owner();
    }

    /// @notice Upgrade FeeManager implementation
    /// @dev UUPS upgrades execute `upgradeToAndCall` on the proxy, which delegates to the current implementation.
    ///      This function enforces:
    ///      - non-zero, deployed code for new implementation
    ///      - cannot upgrade to the same implementation
    ///      - proxy is still owned by this factory (to prevent unauthorized upgrades)
    ///
    /// ## UUPS upgrade flow:
    /// 1. Factory owner calls this function with new implementation address
    /// 2. We validate the new implementation
    /// 3. We call proxy.upgradeToAndCall(newImpl, "")
    /// 4. Proxy delegatecalls to current implementation's upgradeTo logic
    /// 5. Implementation verifies caller is owner (via _authorizeUpgrade)
    /// 6. Proxy updates its implementation slot to new address
    ///
    /// @param newImplementation Address of the new FeeManager implementation
    function upgradeFeeManager(address newImplementation) external onlyOwner {
        _validateImplementation(newImplementation);

        // Get current implementation for comparison
        address oldImpl = currentImplementation;
        // Prevent upgrading to same implementation (would be a no-op)
        require(newImplementation != oldImpl, Errors.SameImplementation(newImplementation));

        // CRITICAL: Verify factory still owns the FeeManager
        // If ownership was transferred away, upgrades should not work
        address feeManagerOwner = FeeManager(feeManagerProxy).owner();
        require(feeManagerOwner == address(this), Errors.FeeManagerNotOwnedByFactory(feeManagerOwner));

        // Execute the UUPS upgrade via the proxy
        // Empty bytes for the second parameter means no additional call after upgrade
        UUPSUpgradeable(feeManagerProxy).upgradeToAndCall(newImplementation, "");

        // Update our cached implementation address
        currentImplementation = newImplementation;

        // Emit event for off-chain tracking
        emit FeeManagerUpgraded(feeManagerProxy, oldImpl, newImplementation);
    }

    /// @notice Initiate two-step FeeManager ownership transfer
    /// @dev FeeManager uses Ownable2Step: this only initiates the transfer.
    ///      The new owner must call `FeeManager.acceptOwnership()` to complete it.
    ///      Once ownership transfers away from the factory, `upgradeFeeManager()` stops working.
    /// @param newOwner New owner address for the FeeManager
    function transferFeeManagerOwnership(address newOwner) external onlyOwner {
        require(newOwner != address(0), Errors.InvalidAddress());
        require(newOwner != address(this), Errors.CannotTransferToFactory());

        FeeManager(feeManagerProxy).transferOwnership(newOwner);
    }

    /// @notice Validate an implementation address is non-zero and has deployed code
    /// @param impl Implementation address to validate
    function _validateImplementation(address impl) private view {
        require(impl != address(0), Errors.InvalidAddress());
        require(impl.code.length > 0, Errors.ImplementationNotDeployed(impl));
    }
}
