// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import { AccessControlDefaultAdminRulesUpgradeable } from "@openzeppelin/contracts-upgradeable/access/AccessControlDefaultAdminRulesUpgradeable.sol";
import { UUPSUpgradeable } from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import { IAccessControl } from "@openzeppelin/contracts/access/IAccessControl.sol";
import { EnumerableSet } from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import { DoubleEndedQueue } from "@openzeppelin/contracts/utils/structs/DoubleEndedQueue.sol";
import { PaxosBaseAbstract } from "./lib/PaxosBaseAbstract.sol";
import { SlidingWindow } from "./lib/SlidingWindow.sol";

contract SupplyControl is AccessControlDefaultAdminRulesUpgradeable, UUPSUpgradeable {
    using EnumerableSet for EnumerableSet.AddressSet;
    // Access control roles
    // keccak256("SUPPLY_CONTROLLER_MANAGER_ROLE")
    // Can add, update, and remove `SupplyController`s
    bytes32 public constant SUPPLY_CONTROLLER_MANAGER_ROLE =
        0x5d3e9f1ecbcdad7b0da30e7d29c9eddaef83a4502dafe3d2dd85cfdb12e4af10;
    // keccak256("SUPPLY_CONTROLLER_ROLE")
    // Can mint/burn tokens
    bytes32 public constant SUPPLY_CONTROLLER_ROLE = 0x9c00d6f280439b1dfa4da90321e0a3f3c2e87280f4d07fea9fa43ff2cf02df2b;
    // keccak256("TOKEN_CONTRACT_ROLE")
    // Tracks the token contract to protect functions which impact rate limits
    bytes32 public constant TOKEN_CONTRACT_ROLE = 0xd32fd1ee5f4f111da6f27444787e5200ec57a8849509c00ef2998467052b32a3;

    // SUPPLY CONTROL DATA
    mapping(address => SupplyController) internal supplyControllerMap;

    //Used to get all supply controllers
    EnumerableSet.AddressSet internal supplyControllerSet;

    uint256[35] private __gap_SC; // solhint-disable-line var-name-mixedcase

    /**
     * @dev Struct defines a supply controller. Different supply controllers can have different rules.
     * @param rateLimit Contract which handles rate limit logic
     * @param mintAndBurnAddressSet Addresses the {SupplyController} can mint to or burn from
     * @param allowAnyMintAndBurnAddress If true, allows the supply controller to mint to and burn from any address
     */
    struct SupplyController {
        SlidingWindow.Storage slidingWindowStorage;
        EnumerableSet.AddressSet mintAndBurnAddressSet;
        bool allowAnyMintAndBurnAddress;
    }

    /**
     * @dev Struct defines the configuration needed when creating a new supply controller.
     * @param newSupplyController Address of the new supply controller
     * @param limitConfig Limit configuration
     * @param mintAndBurnAddresses Addresses the supply controller can mint to or burn from
     * @param allowAnyMintAndBurnAddress If true, allows the supply controller to mint to and burn from any address
     */
    struct SupplyControllerInitialization {
        address newSupplyController;
        SlidingWindow.LimitConfig limitConfig;
        address[] mintAndBurnAddresses;
        bool allowAnyMintAndBurnAddress;
    }

    /**
     * @dev Emitted when {addSupplyController} is called.
     * @param newSupplyController Address of the new supply controller
     * @param limitAmountPerTx Limit amount per transaction. Checked in `_checkCurrentPeriodAmount`
     * @param limitAmountPerTimePeriod Limit amount for a given `limitTimePeriod`. Checked in `_checkCurrentPeriodAmount`
     * @param limitTimePeriod Time period for which the `limitAmountPerTimePeriod` applies (in seconds)
     * @param mintAndBurnAddressSet Addresses the supply controller can mint to or burn from
     */
    event SupplyControllerAdded(
        address indexed newSupplyController,
        uint256 limitAmountPerTx,
        uint256 limitAmountPerTimePeriod,
        uint256 limitTimePeriod,
        address[] mintAndBurnAddressSet
    );

    /**
     * @dev Emitted when {removeSupplyController} is called.
     * @param oldSupplyController The old supply controller address
     */
    event SupplyControllerRemoved(address indexed oldSupplyController);

    /**
     * @dev Emitted when limit configuration is updated for `supplyController`.
     * Occurs when {updateLimitConfig} is called.
     * @param supplyController Supply controller address
     * @param newLimitConfig New limit configuration
     * @param oldLimitConfig Old limit configuration
     */
    event LimitConfigUpdated(
        address indexed supplyController,
        SlidingWindow.LimitConfig newLimitConfig,
        SlidingWindow.LimitConfig oldLimitConfig
    );

    /**
     * @dev Emitted when `allowAnyMintAndBurnAddress` is updated for `supplyController`.
     * Occurs when {updateAllowAnyMintAndBurnAddress} is called.
     * @param supplyController Supply controller address
     * @param newAllowAnyMintAndBurnAddress New allow config
     * @param oldAllowAnyMintAndBurnAddress Old allow config
     */
    event AllowAnyMintAndBurnAddressUpdated(
        address indexed supplyController,
        bool newAllowAnyMintAndBurnAddress,
        bool oldAllowAnyMintAndBurnAddress
    );

    /**
     * @dev Emitted when `mintAndBurnAddress` is added to `mintAndBurnAddresses` in `supplyController`.
     * Occurs when {addMintAndBurnAddress} is called
     * @param supplyController Supply controller address
     * @param mintAndBurnAddress New address which can be minted to or burned from
     */
    event MintAndBurnAddressAdded(address indexed supplyController, address indexed mintAndBurnAddress);

    /**
     * @dev Emitted when `mintAndBurnAddress` is removed from `mintAndBurnAddresses` in `supplyController`.
     * Occurs when {removeMintAndBurnAddress} is called
     * @param supplyController Supply controller address
     * @param mintAndBurnAddress Address which can no longer be minted to or burned from
     */
    event MintAndBurnAddressRemoved(address indexed supplyController, address indexed mintAndBurnAddress);

    error AccountMissingSupplyControllerRole(address account);
    error AccountAlreadyHasSupplyControllerRole(address account);
    error CannotMintToAddress(address supplyController, address mintToAddress);
    error CannotBurnFromAddress(address supplyController, address burnFromAddress);
    error CannotRemoveNonExistantAddress(address addressToRemove);
    error ZeroAddress();

    /**
     * @dev Modifier which checks that the specified `supplyController` address has the SUPPLY_CONTROLLER_ROLE
     * @param supplyController Supply controller address
     */
    modifier onlySupplyController(address supplyController) {
        if (!hasRole(SUPPLY_CONTROLLER_ROLE, supplyController)) {
            revert AccountMissingSupplyControllerRole(supplyController);
        }
        _;
    }

    /**
     * @dev Modifier which checks that the specified `supplyController` address does not have the SUPPLY_CONTROLLER_ROLE
     * @param supplyController Supply controller address
     */
    modifier notSupplyController(address supplyController) {
        if (hasRole(SUPPLY_CONTROLLER_ROLE, supplyController)) {
            revert AccountAlreadyHasSupplyControllerRole(supplyController);
        }
        _;
    }

    /**
     * @dev Modifier to check for zero address.
     */
    modifier isNonZeroAddress(address addr) {
        if (addr == address(0)) {
            revert ZeroAddress();
        }
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /**
     * @dev Initializer for SupplyControl.
     * Proper order of setting up the contracts:
     *  1. Deploy/reinitialize PaxosToken
     *  2. Deploy SupplyControl with `SupplyControllerInitialization` config
     *  3. Set SupplyControl address in PaxosToken via `setSupplyControl`
     * @param initialOwner Initial owner address
     * @param supplyControllerManager SupplyControllerManager address
     * @param tokenAddress Token contract address
     * @param scInitializationConfig Configuration to initialize a list of supply controllers
     */
    function initialize(
        address initialOwner,
        address supplyControllerManager,
        address tokenAddress,
        SupplyControllerInitialization[] calldata scInitializationConfig
    ) external initializer isNonZeroAddress(supplyControllerManager) isNonZeroAddress(tokenAddress) {
        __AccessControlDefaultAdminRules_init(3 hours, initialOwner);
        __UUPSUpgradeable_init();
        _grantRole(SUPPLY_CONTROLLER_MANAGER_ROLE, supplyControllerManager);
        _grantRole(TOKEN_CONTRACT_ROLE, tokenAddress);
        for (uint256 i = 0; i < scInitializationConfig.length; ) {
            _addSupplyController(scInitializationConfig[i]);
            unchecked {
                i++;
            }
        }
    }

    /**
     * @dev Adds a new supply controller which can be used to control the supply of a token.
     * Can be called externally by the `SUPPLY_CONTROLLER_MANAGER_ROLE`.
     * @param scInitializationConfig Configuration to setup a new supply controller
     */
    function addSupplyController(
        SupplyControllerInitialization calldata scInitializationConfig
    ) external onlyRole(SUPPLY_CONTROLLER_MANAGER_ROLE) {
        _addSupplyController(scInitializationConfig);
    }

    /**
     * @dev Adds a new supply controller which can be used to control the supply of a token.
     * Can only be called internally.
     * @param scInitializationConfig Configuration to setup a new supply controller
     */
    function _addSupplyController(
        SupplyControllerInitialization calldata scInitializationConfig
    )
        internal
        notSupplyController(scInitializationConfig.newSupplyController)
        isNonZeroAddress(scInitializationConfig.newSupplyController)
    {
        SupplyController storage supplyController = supplyControllerMap[scInitializationConfig.newSupplyController];
        supplyController.slidingWindowStorage.limitConfig = scInitializationConfig.limitConfig;
        supplyController.allowAnyMintAndBurnAddress = scInitializationConfig.allowAnyMintAndBurnAddress;
        _addressArrayToSet(scInitializationConfig.mintAndBurnAddresses, supplyController.mintAndBurnAddressSet);
        _grantRole(SUPPLY_CONTROLLER_ROLE, scInitializationConfig.newSupplyController);
        EnumerableSet.add(supplyControllerSet, scInitializationConfig.newSupplyController);
        emit SupplyControllerAdded(
            scInitializationConfig.newSupplyController,
            scInitializationConfig.limitConfig.limitAmountPerTx,
            scInitializationConfig.limitConfig.limitAmountPerTimePeriod,
            scInitializationConfig.limitConfig.limitTimePeriod,
            scInitializationConfig.mintAndBurnAddresses
        );
    }

    /**
     * @dev Removes `oldSupplyController`
     * @param oldSupplyController The old supply controller address
     */
    function removeSupplyController(
        address oldSupplyController
    ) external onlyRole(SUPPLY_CONTROLLER_MANAGER_ROLE) onlySupplyController(oldSupplyController) {
        _revokeRole(SUPPLY_CONTROLLER_ROLE, oldSupplyController);
        SupplyController storage supplyController = supplyControllerMap[oldSupplyController];
        _removeAddressSet(supplyController.mintAndBurnAddressSet);
        EnumerableSet.remove(supplyControllerSet, oldSupplyController);
        delete supplyControllerMap[oldSupplyController];
        emit SupplyControllerRemoved(oldSupplyController);
    }

    /**
     * Update limit configuration
     * @param limitConfig Limit configuration
     */
    function updateLimitConfig(
        address supplyController_,
        SlidingWindow.LimitConfig memory limitConfig
    ) external onlyRole(SUPPLY_CONTROLLER_MANAGER_ROLE) onlySupplyController(supplyController_) {
        SupplyController storage supplyController = supplyControllerMap[supplyController_];
        SlidingWindow.LimitConfig memory oldLimitConfig = supplyController.slidingWindowStorage.limitConfig;
        supplyController.slidingWindowStorage.limitConfig = limitConfig;
        emit LimitConfigUpdated(supplyController_, limitConfig, oldLimitConfig);
    }

    function updateAllowAnyMintAndBurnAddress(
        address supplyController_,
        bool allowAnyMintAndBurnAddress
    ) external onlyRole(SUPPLY_CONTROLLER_MANAGER_ROLE) onlySupplyController(supplyController_) {
        SupplyController storage supplyController = supplyControllerMap[supplyController_];
        bool oldAllowValue = supplyController.allowAnyMintAndBurnAddress;
        supplyController.allowAnyMintAndBurnAddress = allowAnyMintAndBurnAddress;
        emit AllowAnyMintAndBurnAddressUpdated(supplyController_, allowAnyMintAndBurnAddress, oldAllowValue);
    }

    /**
     * @dev Adds `mintAndBurnAddress` to `mintAndBurnAddressSet` in `supplyController`.
     * @param supplyController_ Supply controller address
     * @param mintAndBurnAddress New address which can be minted to or burned from
     */
    function addMintAndBurnAddress(
        address supplyController_,
        address mintAndBurnAddress
    ) external onlyRole(SUPPLY_CONTROLLER_MANAGER_ROLE) onlySupplyController(supplyController_) {
        SupplyController storage supplyController = supplyControllerMap[supplyController_];
        EnumerableSet.add(supplyController.mintAndBurnAddressSet, mintAndBurnAddress);
        emit MintAndBurnAddressAdded(supplyController_, mintAndBurnAddress);
    }

    /**
     * @dev Removes `mintAndBurnAddress` from `mintAndBurnAddressSet` in `supplyController`.
     * @param supplyController_ Supply controller address
     * @param mintAndBurnAddress New address which can be minted to or burned from
     */
    function removeMintAndBurnAddress(
        address supplyController_,
        address mintAndBurnAddress
    ) external onlyRole(SUPPLY_CONTROLLER_MANAGER_ROLE) onlySupplyController(supplyController_) {
        SupplyController storage supplyController = supplyControllerMap[supplyController_];
        if (!EnumerableSet.contains(supplyController.mintAndBurnAddressSet, mintAndBurnAddress)) {
            revert CannotRemoveNonExistantAddress(mintAndBurnAddress);
        }

        EnumerableSet.remove(supplyController.mintAndBurnAddressSet, mintAndBurnAddress);
        emit MintAndBurnAddressRemoved(supplyController_, mintAndBurnAddress);
    }

    /**
     * @dev Gets supply controller configuration
     * @param supplyController_ Supply controller address
     */
    function getSupplyControllerConfig(
        address supplyController_
    )
        external
        view
        returns (
            SlidingWindow.LimitConfig memory limitConfig,
            address[] memory mintAndBurnAddressSet,
            bool allowAnyMintAndBurnAddress
        )
    {
        SupplyController storage supplyController = supplyControllerMap[supplyController_];
        SlidingWindow.LimitConfig memory limitConfig_ = supplyController.slidingWindowStorage.limitConfig;
        address[] memory mintAndBurnAddresses = _getAddressSet(
            supplyControllerMap[supplyController_].mintAndBurnAddressSet
        );
        return (limitConfig_, mintAndBurnAddresses, supplyController.allowAnyMintAndBurnAddress);
    }

    /**
     * @dev Gets all supply controller addresses
     */
    function getAllSupplyControllerAddresses() external view returns (address[] memory) {
        return EnumerableSet.values(supplyControllerSet);
    }

    /**
     * @dev Get remaining amount which can be minted at `timestamp`
     * @param supplyController_ Supply controller address
     * @param timestamp Time to check remaining amount for
     */
    function getRemainingMintAmount(address supplyController_, uint256 timestamp) external view returns (uint256) {
        SupplyController storage supplyController = supplyControllerMap[supplyController_];
        SlidingWindow.Storage storage swStorage = supplyController.slidingWindowStorage;
        return SlidingWindow.getRemainingAmount(timestamp, swStorage);
    }

    /**
     * @dev Function which checks that `mintToAddress` is in the whitelisted map for msg.sender
     * and the amount does not exceed the rate limit
     * @param mintToAddress Mint to address
     * @param amount Amount to check
     * @param sender Supply controller address
     */
    function canMintToAddress(
        address mintToAddress,
        uint256 amount,
        address sender
    ) external onlySupplyController(sender) onlyRole(TOKEN_CONTRACT_ROLE) {
        SupplyController storage supplyController = supplyControllerMap[sender];
        if (_cannotMintOrBurn(supplyController, mintToAddress)) {
            revert CannotMintToAddress(sender, mintToAddress);
        }
        SlidingWindow.Storage storage swStorage = supplyController.slidingWindowStorage;
        SlidingWindow.checkNewEvent(block.timestamp, amount, swStorage);
    }

    /**
     * @dev Function which checks that `burnFromAddress` is in the whitelisted map for msg.sender.
     * Also checks that the `sender` is a supply controller since only a supply controller can burn tokens.
     * @param burnFromAddress Burn from address
     * @param sender Supply controller address
     */
    function canBurnFromAddress(address burnFromAddress, address sender) external view onlySupplyController(sender) {
        SupplyController storage supplyController = supplyControllerMap[sender];
        if (_cannotMintOrBurn(supplyController, burnFromAddress)) {
            revert CannotBurnFromAddress(sender, burnFromAddress);
        }
    }

    /**
     * @dev required by the OZ UUPS module to authorize an upgrade
     * of the contract. Restricted to DEFAULT_ADMIN_ROLE.
     */
    function _authorizeUpgrade(address) internal override onlyRole(DEFAULT_ADMIN_ROLE) {} // solhint-disable-line no-empty-blocks

    function _cannotMintOrBurn(
        SupplyController storage supplyController,
        address address_
    ) private view returns (bool) {
        return
            !supplyController.allowAnyMintAndBurnAddress &&
            !EnumerableSet.contains(supplyController.mintAndBurnAddressSet, address_);
    }

    /**
     * @dev Helper function for setting `mintAndBurnAddressSet`
     * @param _addressArray Array containing mintAndBurn addresses
     * @param addressSet Set which addresses should be added to
     */
    function _addressArrayToSet(address[] calldata _addressArray, EnumerableSet.AddressSet storage addressSet) private {
        for (uint256 i = 0; i < _addressArray.length; ) {
            EnumerableSet.add(addressSet, _addressArray[i]);
            unchecked {
                i++;
            }
        }
    }

    /**
     * @dev Helper function for getting all addresses in `mintAndBurnAddressSet`
     * @param addressSet Set of addresses
     */
    function _getAddressSet(EnumerableSet.AddressSet storage addressSet) private view returns (address[] memory) {
        uint256 length = EnumerableSet.length(addressSet);
        address[] memory addresses = new address[](length);
        for (uint256 i = 0; i < length; ) {
            addresses[i] = EnumerableSet.at(addressSet, i);
            unchecked {
                i++;
            }
        }
        return addresses;
    }

    /**
     * @dev Helper function for removing all addresses from `mintAndBurnAddressSet`
     * @param addressSet Set of addresses
     */
    function _removeAddressSet(EnumerableSet.AddressSet storage addressSet) private {
        uint256 length = EnumerableSet.length(addressSet);
        for (uint256 i = 0; i < length; ) {
            EnumerableSet.remove(addressSet, EnumerableSet.at(addressSet, i));
            unchecked {
                i++;
            }
        }
    }
}
