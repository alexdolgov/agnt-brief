/// SPDX-License-Identifier: MIT
pragma solidity <0.9.0;

import {Roles} from "../helpers/Roles.sol";
import {STOFactoryUpgradeable} from "./STOFactoryUpgradeable.sol";
import {Errors} from "../helpers/Errors.sol";
import {IBeacon} from "../helpers/BeaconProxy.sol";
import {ISTOToken} from "../interfaces/ISTOToken.sol";
import {AccessControlEnumerableUpgradeable, AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlEnumerableUpgradeable.sol";
import {IPriceAndSwapManager} from "../helpers/PriceAndSwapManager.sol";

/// @title STOFactoryManaged wrapper around STOFactoryUpgradeable contract to add access control and roles
/// @custom:security-contact tech@brickken.com
contract STOFactoryManagedUpgradeable is
    STOFactoryUpgradeable,
    AccessControlEnumerableUpgradeable
{
    mapping(address tokenizer => uint256 credits)
        private tokenizationCredits_OLD_SLOT;

    /// @custom:oz-upgrades-unsafe-allow constructor
    /// @dev constructor to set immutable variables
    constructor(
        address _router,
        address _priceAndSwapManager
    ) STOFactoryUpgradeable(_router, _priceAndSwapManager) {}

    /// @dev Method to initialize the contract. If further initializations are needed, the reinitializer modifier should be changed with the newer version
    /// @dev future initializations will not re-set the roles and will skip the roles assignments. If contract is already initialized once, only the DEFAULT_ADMIN_ROLE can call this function.
    function initialize(
        address beaconToken,
        address beaconEscrow,
        address vault,
        address admin,
        address offchainSigner,
        uint8 version
    ) external reinitializer(version) {
        __AccessControlEnumerable_init();
        __STOFactory_init();

        if (admin == address(0)) revert Errors.NotZeroAddress();

        if (
            getRoleMemberCount(AccessControlUpgradeable.DEFAULT_ADMIN_ROLE) !=
            0 &&
            !hasRole(AccessControlUpgradeable.DEFAULT_ADMIN_ROLE, _msgSender())
        ) revert Errors.UserIsNotAdmin(_msgSender());

        if (
            getRoleMemberCount(AccessControlUpgradeable.DEFAULT_ADMIN_ROLE) == 0
        ) {
            _grantRole(AccessControlUpgradeable.DEFAULT_ADMIN_ROLE, admin);
            _grantRole(Roles.FACTORY_PAUSER_ROLE, admin);
            _grantRole(Roles.FACTORY_OFFCHAIN_REPORTER_ROLE, offchainSigner);
        }

        if (vault == address(0)) revert Errors.NotZeroAddress();

        brickkenVault = vault;
        stoBeaconToken = beaconToken;
        stoBeaconEscrow = beaconEscrow;
    }

    /// @dev Method to pause the factory. Only FACTORY_PAUSER_ROLE can call this function.
    function pauseFactory()
        external
        whenNotPaused
        onlyRole(Roles.FACTORY_PAUSER_ROLE)
    {
        _pause();
    }

    /// @dev Method to unpause the factory. Only FACTORY_PAUSER_ROLE can call this function.
    function unpauseFactory()
        external
        whenPaused
        onlyRole(Roles.FACTORY_PAUSER_ROLE)
    {
        _unpause();
    }

    /// @dev Method to deploy a new tokenization (escrow + token).
    /// @param config Configuration of the token to be deployed,
    /// @param offchainReport the offchain report struct
    /// @param permit the permit signature struct if any
    function newTokenization(
        TokenizationConfig calldata config,
        OffchainReport calldata offchainReport,
        PermitStruct calldata permit
    ) external whenNotPaused {
        /// By default each new token and escrow is owned by Brickken. Adminship can be handed over at any moment.
        (address stoToken, address stoEscrow) = _newTokenization(
            config,
            offchainReport,
            permit,
            getRoleMember(AccessControlUpgradeable.DEFAULT_ADMIN_ROLE, 0) // admin
        );

        // Setup the escrow as a valid minter
        ISTOToken(stoToken).addMinter(stoEscrow);

        // Renounce being minter admin, permission given termporary to set the escrow as a minter
        ISTOToken(stoToken).renounceRole(
            Roles.TOKEN_MINTER_ADMIN_ROLE,
            address(this)
        );

        emit NewTokenization(idSTOs, stoTokens[idSTOs], stoEscrows[idSTOs]);
    }

    /// @dev Method to change configured parameters within the contract. Only DEFAULT_ADMIN_ROLE can call this function.
    /// @param vault this will change where fees are sent
    /// @param beaconToken this will change the beacon token used for new tokenizations
    /// @param beaconEscrow this will change the beacon escrow used for new tokenizations
    /// @param allowedEscrows escrows whose status must be changed in the PriceAndSwapManager
    /// @param allowedEscrowsStatuses statuses to be applied to the above escrows
    function changeConfig(
        address vault,
        address beaconToken,
        address beaconEscrow,
        address[] calldata allowedEscrows,
        bool[] calldata allowedEscrowsStatuses
    ) external onlyRole(AccessControlUpgradeable.DEFAULT_ADMIN_ROLE) {
        uint256 length = allowedEscrows.length;

        if (length != allowedEscrowsStatuses.length)
            revert Errors.LengthsMismatch();

        _changeConfig(vault, beaconToken, beaconEscrow);

        for (uint256 i; i < length; ) {
            if (allowedEscrows[i] == address(0)) revert Errors.NotZeroAddress();
            IPriceAndSwapManager(priceAndSwapManager).setAllowed(
                allowedEscrows[i],
                allowedEscrowsStatuses[i]
            );
            unchecked {
                ++i;
            }
        }
    }

    /// @dev Method to validate the offchain report
    /// @param offchainReport Configuration of the offchain report
    function _validateOffchainReport(
        OffchainReport memory offchainReport
    ) internal view override returns (address signer) {
        signer = super._validateOffchainReport(offchainReport);
        if (!hasRole(Roles.FACTORY_OFFCHAIN_REPORTER_ROLE, signer)) {
            revert Errors.InvalidSigner(signer);
        }
    }

    /// @dev Override OpenZeppelin contracts function to restrict upgradeability to only accounts with the DEFAULT_ADMIN_ROLE
    function _authorizeUpgrade(
        address newImplementation
    )
        internal
        view
        override
        onlyRole(AccessControlUpgradeable.DEFAULT_ADMIN_ROLE)
    {}

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[49] private __gap;
}
