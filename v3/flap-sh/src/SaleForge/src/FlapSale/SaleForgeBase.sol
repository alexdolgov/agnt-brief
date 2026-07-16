// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import {ISaleForge, ISaleForgeTypes} from "../interfaces/FlapSale/ISaleForge.sol";
import {PortalCommon} from "../PortalCommon.sol";
import {AccessControlUpgradeable} from "@openzeppelin-contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {EnumerableSetUpgradeable} from "@openzeppelin-contracts-upgradeable/utils/structs/EnumerableSetUpgradeable.sol";
import {EnumerableMapUpgradeable} from "@openzeppelin-contracts-upgradeable/utils/structs/EnumerableMapUpgradeable.sol";
import {AddressUpgradeable} from "@openzeppelin-contracts-upgradeable/utils/AddressUpgradeable.sol";

/// @title SaleForgeBase
/// @notice Storage layer for SaleForge - contains all storage variables, immutables, types, and constructor
/// @dev Separated from SaleForgeCore to reduce compilation dependencies for the dispatcher
abstract contract SaleForgeBase is PortalCommon, AccessControlUpgradeable, ISaleForgeTypes {
    //
    // Errors (only ones not in ISaleForge)
    //
    error CallReverted();
    error FeatureDisabled();

    using EnumerableSetUpgradeable for EnumerableSetUpgradeable.AddressSet;
    using EnumerableMapUpgradeable for EnumerableMapUpgradeable.AddressToUintMap;
    using AddressUpgradeable for address payable;

    //
    // Roles
    //
    bytes32 public constant GUARDIAN_ROLE = keccak256("GUARDIAN_ROLE");

    //
    // Immutables
    //
    /// @notice Flap Bonding Curve Protocol Entrypoint
    address internal immutable PORTAL;

    /// @notice Address of the MultiDexRouter for DEX operations and swaps
    address internal immutable MULTI_DEX_ROUTER;

    /// @notice Duration in seconds for finalizing a sale after reaching hard cap (typically: 24 hours)
    uint256 internal immutable FINALIZE_DEADLINE_DURATION;

    /// @notice Address that receives fees collected from FlapSales
    address internal immutable FSALE_FEE_RECEIVER;

    /// @notice Fee rate in basis points charged on quote token amounts from Dev's quote amount (e.g., 100 = 1%)
    uint256 internal immutable FSALE_QUOTE_FEE;

    /// @notice Creation fee in wei charged when creating a new FlapSale
    uint256 internal immutable FSALE_CREATION_FEE;

    /// @notice The Flap Bonding Curve Fee Profile to be applied to tokens created via FlapSales
    FlapFeeProfile internal immutable FSALE_FLAP_FEE_PROFILE;

    /// @notice Implementation contract address for SaleProxy minimal proxies
    address internal immutable SALE_PROXY_IMPLEMENTATION;

    /// @notice  WETH address
    address internal immutable WETH_ADDRESS;

    /// @notice FlapBlackHole address for burning tokens
    address internal immutable FLAP_BLACK_HOLE;

    /// @notice Whether whitelist enforcement is enabled globally for this SaleForge instance
    /// @dev When true, sales can only be created with whitelist enabled and cannot toggle it off
    ///      When false, behaves as before (sales can have whitelist on/off and toggle freely with restrictions)
    bool internal immutable ENFORCE_WHITELIST;

    //
    // Facets
    //
    /// @dev The SaleForgeLens facet
    address internal immutable SALE_FORGE_LENS;

    /// @dev The SaleForgeLauncher facet
    address internal immutable SALE_FORGE_LAUNCHER;

    /// @dev The SaleForgeParticipation facet
    address internal immutable SALE_FORGE_PARTICIPATION;

    /// @dev The SaleForgeFinalize facet
    address internal immutable SALE_FORGE_FINALIZE;

    //
    // Structs
    //

    /// @dev Mutable state information about a FlapSale
    /// @notice Contains all mutable parameters that can change during sale lifecycle
    struct SaleInfoPacked {
        // slot0
        uint8 enableWhitelist; // 8bit: whitelist enabled - can be toggled with restrictions
        SaleState state; // 8bit:  Current sale state (dynamically calculated)
        uint80 unused0; // 80bit: reserved for future use
        address pointerToImmutable; // 160bit: pointer to SaleImmutableInfo struct stored in another contract using SSTORE2
        // slot 1
        uint128 totalRaised; // Total amount raised so far in quote token
        uint64 finalizeDeadline; // 64bit: deadline for finalizing after reaching hard cap
        uint64 nextIndexToProcess; // 64bit: index of the next participant for token distribution
        // slot 2
        string meta; // IPFS CID for sale metadata - can be updated before sale starts
    }

    //
    // Storage
    //

    /// @dev Mapping from token address to sale info (packed for gas optimization)
    mapping(address => SaleInfoPacked) internal sales;

    /// @dev Mapping from token address to participant info (using AddressToUintMap for gas optimization)
    mapping(address => EnumerableMapUpgradeable.AddressToUintMap) internal participants;

    /// @dev Mapping from token address to whitelist (using AddressSet for gas optimization)
    mapping(address => EnumerableSetUpgradeable.AddressSet) internal whitelist;

    /// @notice Constructor parameters for SaleForgeBase
    struct ConstructorParams {
        address portal;
        address multiDexRouter;
        uint256 finalizeDeadlineDuration;
        address feeReceiver;
        uint256 quoteFeeBps;
        uint256 creationFeeBps;
        FlapFeeProfile flapFeeProfile;
        address wethAddress;
        address saleProxyImplementation;
        address flapBlackHole;
        bool enforceWhitelist;
        // Facets
        address saleForgeLens;
        address saleForgeLauncher;
        address saleForgeParticipation;
        address saleForgeFinalize;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor(ConstructorParams memory params)
        PortalCommon(0, 0, 0, 0) // We never use FEE_GLOBAL_DEFAULT, so initialize with 0
    {
        // Validate that flapFeeProfile is not FEE_GLOBAL_DEFAULT
        require(
            params.flapFeeProfile != FlapFeeProfile.FEE_GLOBAL_DEFAULT,
            "SaleForge: flapFeeProfile cannot be FEE_GLOBAL_DEFAULT"
        );

        // Validate that flapBlackHole is not the zero address
        require(params.flapBlackHole != address(0), "SaleForge: flapBlackHole cannot be zero address");

        PORTAL = params.portal;
        MULTI_DEX_ROUTER = params.multiDexRouter;
        FINALIZE_DEADLINE_DURATION = params.finalizeDeadlineDuration;
        FSALE_FEE_RECEIVER = params.feeReceiver;
        FSALE_QUOTE_FEE = params.quoteFeeBps;
        FSALE_CREATION_FEE = params.creationFeeBps;
        FSALE_FLAP_FEE_PROFILE = params.flapFeeProfile;
        WETH_ADDRESS = params.wethAddress;
        SALE_PROXY_IMPLEMENTATION = params.saleProxyImplementation;
        FLAP_BLACK_HOLE = params.flapBlackHole;
        ENFORCE_WHITELIST = params.enforceWhitelist;

        // Set facets
        SALE_FORGE_LENS = params.saleForgeLens;
        SALE_FORGE_LAUNCHER = params.saleForgeLauncher;
        SALE_FORGE_PARTICIPATION = params.saleForgeParticipation;
        SALE_FORGE_FINALIZE = params.saleForgeFinalize;
    }

    //
    // Delegation Helper Functions
    //

    /**
     * @dev Delegates the current call to the specified implementation contract.
     * Uses `delegatecall` to forward the call, preserving the caller's context.
     * Reverts if the delegatecall fails.
     * @param impl The address of the implementation contract to delegate the call to.
     */
    function _delegateToImpl(address impl) internal {
        if (impl == address(0)) {
            revert FeatureDisabled();
        }
        assembly {
            calldatacopy(0, 0, calldatasize())
            let result := delegatecall(gas(), impl, 0, calldatasize(), 0, 0)
            returndatacopy(0, 0, returndatasize())
            switch result
            case 0 { revert(0, returndatasize()) }
            default { return(0, returndatasize()) }
        }
    }

    /**
     * @dev Delegates the current view call to the specified implementation contract.
     * Uses `staticcall` to forward the call as read-only.
     * Reverts if the staticcall fails.
     * @param impl The address of the implementation contract to delegate the call to.
     */
    function _delegateToImplView(address impl) internal view {
        if (impl == address(0)) {
            revert FeatureDisabled();
        }
        (bool success, bytes memory result) =
            address(this).staticcall(abi.encodeWithSelector(this.inspect.selector, msg.data));

        if (!success) {
            _revert(result);
        }

        assembly ("memory-safe") {
            return(add(result, 0x60), mload(add(result, 0x40)))
        }
    }

    /// @notice Helper for view function delegation
    /// @dev This function is called via staticcall from _delegateToImplView
    function inspect(bytes memory data) external returns (bytes memory) {
        bytes4 selector;
        assembly ("memory-safe") {
            selector := shl(224, shr(224, mload(add(data, 32))))
        }

        address target;
        if (
            selector == ISaleForge.getSaleInfo.selector || selector == ISaleForge.isWhitelisted.selector
                || selector == ISaleForge.getWhitelist.selector || selector == ISaleForge.getParticipantInfo.selector
                || selector == ISaleForge.getParticipantCount.selector || selector == ISaleForge.getParticipants.selector
                || selector == ISaleForge.simulateEconomics.selector
                || selector == ISaleForge.getTokenDistributionProgress.selector
        ) {
            target = SALE_FORGE_LENS;
        } else {
            revert FeatureDisabled();
        }

        (bool success, bytes memory returndata) = target.delegatecall(data);
        if (!success) {
            _revert(returndata);
        }
        return returndata;
    }

    /// @dev _revert with returnData
    function _revert(bytes memory returndata) internal pure {
        if (returndata.length > 0) {
            assembly ("memory-safe") {
                let returndata_size := mload(returndata)
                revert(add(32, returndata), returndata_size)
            }
        } else {
            revert CallReverted();
        }
    }

    // mainly for receiving dust weis refunded from Portal
    receive() external payable {
        // if msg.sender is not portal, we should revert
        if (msg.sender != address(PORTAL)) {
            revert OnlyPortal();
        }
    }
}
