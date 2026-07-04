// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

import "./EzRVaultsFactoryStorage.sol";
import "@openzeppelin/contracts/proxy/beacon/BeaconProxy.sol";
import "./Errors/Errors.sol";
import "./EzRVault/IEzRVault.sol";
import "./EzRVault/EzRVault.sol";

contract EzRVaultsFactory is Initializable, EzRVaultsFactoryStorageV1 {
    struct VaultConfig {
        address underlying;
        address strategy;
        address vaultOwner;
        address vaultFeeDestination;
        address rewardsDestination;
        uint256 vaultCooldown;
        uint256 vaultFee;
        string name;
        string symbol;
    }

    event EzRVaultCreated(
        bytes32 indexed vaultId,
        address indexed vaultAddress,
        address underlyingToken,
        address underlyingStrategy,
        string name,
        string symbol
    );

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(IBeacon _beacon) public initializer {
        if (address(_beacon) == address(0)) revert InvalidZeroInput();
        beacon = _beacon;
    }

    function createVault(VaultConfig calldata config) external returns (address) {
        bytes32 vaultId = keccak256(
            abi.encodePacked(config.name, config.symbol, config.underlying, config.strategy)
        );
        if (address(vaults[vaultId]) != address(0)) revert VaultAlreadyCreated();
        BeaconProxy ezRVault = new BeaconProxy(
            address(beacon),
            abi.encodeWithSelector(
                EzRVault.initialize.selector,
                config.name,
                config.symbol,
                config.underlying,
                config.strategy,
                config.vaultOwner,
                config.vaultCooldown,
                config.vaultFee,
                config.vaultFeeDestination,
                config.rewardsDestination
            )
        );

        // record vault created
        vaults[vaultId] = IEzRVault(address(ezRVault));

        emit EzRVaultCreated(
            vaultId,
            address(ezRVault),
            config.underlying,
            config.strategy,
            config.name,
            config.symbol
        );

        return address(ezRVault);
    }
}
