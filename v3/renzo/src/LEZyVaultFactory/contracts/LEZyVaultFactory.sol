// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

import { OwnableUpgradeable } from "@openzeppelin-upgrades/contracts/access/OwnableUpgradeable.sol";
import { BeaconProxy } from "@openzeppelin/contracts/proxy/beacon/BeaconProxy.sol";
import "./LEZyVaultFactoryStorage.sol";
import "./LEZyVault/LEZyVault.sol";

/**
 * @title LEZyVaultFactory
 * @author Renzo Protocol
 * @notice Factory contract for deploying new LEZyVault instances using the beacon proxy pattern
 * @dev This contract manages the creation of new vaults and maintains a registry of deployed vaults
 */
contract LEZyVaultFactory is OwnableUpgradeable, LEZyVaultFactoryStorageV1 {
    /**
     * @notice Configuration parameters for creating a new vault
     * @param asset The ERC20 token address that the vault will accept as deposits
     * @param name The name of the vault token
     * @param symbol The symbol of the vault token
     * @param roleManager The RoleManager contract address for access control
     * @param owner The initial owner of the vault
     * @param feeRecipient The address that will receive performance fees
     * @param feeBps The performance fee in basis points (10000 = 100%)
     * @param withdrawCoolDownPeriod The cooldown period in seconds for withdrawals
     */
    struct VaultConfig {
        address asset;
        string name;
        string symbol;
        address roleManager;
        address owner;
        address feeRecipient;
        uint256 feeBps;
        uint256 withdrawCoolDownPeriod;
    }

    /**
     * @notice Emitted when a new LEZyVault is created
     * @param vaultId The unique identifier of the vault
     * @param vaultAddress The address of the newly deployed vault
     * @param vaultConfig The configuration used to create the vault
     */
    event LEZyVaultCreated(bytes32 vaultId, address vaultAddress, VaultConfig vaultConfig);

    /**
     * @notice Emitted when the vault beacon is set
     * @param beacon The address of the vault beacon
     */
    event VaultBeaconSet(address indexed beacon);

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Initializes the factory contract
     * @param _vaultBeacon The beacon contract address for vault implementation
     * @param _owner The initial owner of the factory
     */
    function initialize(IBeacon _vaultBeacon, address _owner) public initializer {
        if (address(_vaultBeacon) == address(0) || _owner == address(0)) revert InvalidZeroInput();
        vaultBeacon = _vaultBeacon;
        _transferOwnership(_owner);

        // Emit event for beacon configuration
        emit VaultBeaconSet(address(_vaultBeacon));
    }

    /**
     * @notice Creates a new LEZyVault instance
     * @dev The vault ID is generated from asset, name, and symbol to ensure uniqueness
     * @param _vaultConfig The configuration parameters for the new vault
     * @return The address of the newly created vault
     */
    function createVault(VaultConfig calldata _vaultConfig) external onlyOwner returns (address) {
        bytes32 vaultId = keccak256(
            abi.encodePacked(_vaultConfig.asset, _vaultConfig.name, _vaultConfig.symbol)
        );

        if (address(vaults[vaultId]) != address(0)) revert VaultAlreadyCreated();
        BeaconProxy lezyVault = new BeaconProxy(
            address(vaultBeacon),
            abi.encodeWithSelector(
                LEZyVault.initialize.selector,
                _vaultConfig.asset,
                _vaultConfig.name,
                _vaultConfig.symbol,
                _vaultConfig.roleManager,
                _vaultConfig.owner,
                _vaultConfig.feeRecipient,
                _vaultConfig.feeBps,
                _vaultConfig.withdrawCoolDownPeriod
            )
        );

        // record the vault
        vaults[vaultId] = ILEZyVault(address(lezyVault));

        emit LEZyVaultCreated(vaultId, address(lezyVault), _vaultConfig);

        return address(lezyVault);
    }
}
