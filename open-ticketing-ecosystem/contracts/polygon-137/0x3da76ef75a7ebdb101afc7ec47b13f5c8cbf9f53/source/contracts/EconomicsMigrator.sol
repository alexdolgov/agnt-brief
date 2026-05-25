// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import { IEconomicsMigrator } from "./interfaces/IEconomicsMigrator.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { Address } from "@openzeppelin/contracts/utils/Address.sol";
import { IRegistry } from "./interfaces/IRegistry.sol";
import { IEconomicsFactory } from "./interfaces/IEconomicsFactory.sol";
import { IUpgradeableBeacon } from "./interfaces/IUpgradeableBeacon.sol";
import { ITransparentUpgradeableProxy } from "./interfaces/ITransparentUpgradeableProxy.sol";
import { ITransferOwnership } from "../test/foundry/ITransferOwnership.sol";

contract EconomicsMigrator is IEconomicsMigrator, Ownable {
    using Address for address;
    IRegistry public registry;
    IERC20 public opnToken;
    IERC20 public getOldFuelToken;
    address public economicsFactory;
    address public beaconEconomicsFactory;
    address public beaconEventFactory;
    uint256 public constant MIGRATION_SCALE = 1000;

    // Migration Configurations
    address public implementationAddressNewFactory;
    address public implementationAddressNewEconomics;
    address public topUpAddress;
    address public fuelCollectorAddress;
    address public returnOwnershipTo;
    address public fuelBridgeReceiverAddress;
    address public protocolFeeDestination;
    address public stakingContractAddress;
    address public treasuryFeeDestination;
    address public implementationAddressNewEventImplementation;

    constructor(
        address _owner,
        address _opnTokenAddress,
        address _getOldFuelTokenAddress,
        address _registryAddress,
        address _beaconEconomicsFactory,
        address _beaconEventFactory
    ) Ownable() {
        opnToken = IERC20(_opnTokenAddress);
        getOldFuelToken = IERC20(_getOldFuelTokenAddress);
        registry = IRegistry(_registryAddress);
        beaconEconomicsFactory = _beaconEconomicsFactory;
        beaconEventFactory = _beaconEventFactory;
        _transferOwnership(_owner);
    }

    // Modifiers

    modifier onlyEconomicsFactory() {
        require(msg.sender == economicsFactory, "EconomicsMigrator: caller is not the economics factory");
        _;
    }

    // Configuration functions

    function configureMigration(
        address _topUpAddress,
        address _fuelCollectorAddress,
        address _returnOwnershipTo,
        address _fuelBridgeReceiverAddress,
        address _protocolFeeDestination,
        address _stakingContractAddress,
        address _implementationAddressNewFactory,
        address _implementationAddressNewEconomics,
        address _treasuryFeeDestination,
        address _economicsFactory,
        address _implementationAddressNewEventImplementation
    ) external onlyOwner {
        topUpAddress = _topUpAddress;
        fuelCollectorAddress = _fuelCollectorAddress;
        returnOwnershipTo = _returnOwnershipTo;
        fuelBridgeReceiverAddress = _fuelBridgeReceiverAddress;
        protocolFeeDestination = _protocolFeeDestination;
        stakingContractAddress = _stakingContractAddress;
        implementationAddressNewFactory = _implementationAddressNewFactory;
        implementationAddressNewEconomics = _implementationAddressNewEconomics;
        treasuryFeeDestination = _treasuryFeeDestination;
        economicsFactory = _economicsFactory;
        implementationAddressNewEventImplementation = _implementationAddressNewEventImplementation;
    }

    function migrateAtomically() external onlyOwner {
        _upgrade_economics_code();
        _upgrade_factory_code();
        _upgrade_event_factory_code();
        _callMigrateAll();
        _configureRegistry();
        _returnOwnership();
        emit MigrationCompleted();
    }

    function _callMigrateAll() internal {
        IEconomicsFactory(economicsFactory).migrateAllEconomicsContracts(
            address(this),
            address(opnToken),
            fuelCollectorAddress
        );
        emit AllMigrationCalled();
    }

    function _configureRegistry() internal {
        // call setTopUp
        registry.setTopUp(topUpAddress);
        // call setFuelCollector
        registry.setFuelCollector(fuelCollectorAddress);
        // call setProtocolFeeDestination
        registry.setProtocolFeeDestination(protocolFeeDestination);
        // call. setFuelBridgeReceiverAddress
        registry.setFuelBridgeReceiverAddress(fuelBridgeReceiverAddress);
        // call setStakingContractAddress
        registry.setStakingContractAddress(stakingContractAddress);
        // call setTreasuryFeeDestination
        registry.setTreasuryFeeDestination(treasuryFeeDestination);
        // call setFuelToken in EconomicsFactory
        IEconomicsFactory(economicsFactory).setFuelToken(address(opnToken));

        emit RegistryConfigured(
            topUpAddress,
            fuelCollectorAddress,
            protocolFeeDestination,
            fuelBridgeReceiverAddress,
            stakingContractAddress,
            treasuryFeeDestination
        );
    }

    function _upgrade_economics_code() internal {
        IUpgradeableBeacon beacon = IUpgradeableBeacon(beaconEconomicsFactory);
        address implementationBefore = beacon.implementation();
        beacon.upgradeTo(implementationAddressNewEconomics);
        address implementationAfter_ = beacon.implementation();
        require(implementationAfter_ != implementationBefore, "EconomicsMigrator: upgrade failed");
        require(implementationAfter_ == implementationAddressNewEconomics, "EconomicsMigrator: upgrade failed");

        emit EconomicsUpgraded(implementationBefore, implementationAfter_);
    }

    function _upgrade_event_factory_code() internal {
        IUpgradeableBeacon beacon = IUpgradeableBeacon(beaconEventFactory);
        address implementationBefore = beacon.implementation();
        beacon.upgradeTo(implementationAddressNewEventImplementation);
        address implementationAfter_ = beacon.implementation();
        require(implementationAfter_ != implementationBefore, "EconomicsMigrator: upgrade failed");
        require(
            implementationAfter_ == implementationAddressNewEventImplementation,
            "EconomicsMigrator: upgrade failed"
        );
        emit EventFactoryUpgraded(implementationBefore, implementationAfter_);
    }

    function _upgrade_factory_code() internal {
        ITransparentUpgradeableProxy proxy = ITransparentUpgradeableProxy(economicsFactory);
        bytes memory data = abi.encodeCall(IEconomicsFactory.initialize, ());
        proxy.upgradeToAndCall(implementationAddressNewFactory, data);
        IEconomicsFactory newFactory = IEconomicsFactory(economicsFactory);
        require(newFactory.wasUpgradeSuccessFull(), "EconomicsMigrator: upgrade failed");
        emit FactoryUpgraded();
    }

    function _returnOwnership() internal {
        // call transferOwnership without interface
        ITransferOwnership(address(economicsFactory)).transferOwnership(returnOwnershipTo);

        // teturn ownership of beacon to returnOwnershipTo
        ITransferOwnership(address(beaconEconomicsFactory)).transferOwnership(returnOwnershipTo);

        // return ownership of registery to returnOwnershipTo
        ITransferOwnership(address(registry)).transferOwnership(returnOwnershipTo);

        // return ownership of beacon of event factory to returnOwnershipTo
        ITransferOwnership(address(beaconEventFactory)).transferOwnership(returnOwnershipTo);
    }

    // Operational functions

    /**
     * @dev Migrates the GET to OPN for a integrators economics contract
     * @param _economicsContractIntegrator The address of the integrator (Economics contract)
     * @param _getAmount The amount of GET to migrate (balance of the Economics contract)
     * @return _opnAmount The amount of OPN transferred to the integrators economics contract
     */
    function migrateForIntegrator(
        address _economicsContractIntegrator,
        uint256 _getAmount
    ) external override onlyEconomicsFactory returns (uint256 _opnAmount) {
        // check if the contract has enough OPN to migrate
        uint256 _opnBalance = opnToken.balanceOf(address(this));
        _opnAmount = _getAmount * MIGRATION_SCALE;
        require(_opnBalance >= _opnAmount, "EconomicsMigrator: insufficient balance to migrate");
        // transfer the OPN tokens to the integrators Economics contract
        opnToken.transfer(_economicsContractIntegrator, _opnAmount);
        // if there is a GET balance on this contract, transfer it to the owner of this contract
        uint256 _getBalance = getOldFuelToken.balanceOf(address(this));
        emit MigrationInitiated(_economicsContractIntegrator, _getAmount, _opnAmount);
        return _opnAmount;
    }

    // Configuration functions

    function setEconomicsFactory(address _economicsFactory) external override onlyOwner {
        economicsFactory = _economicsFactory;
        emit EconomicsFactorySet(_economicsFactory);
    }

    function withdrawalOpnToOwner(uint256 _amount) external override onlyOwner {
        opnToken.transfer(owner(), _amount);
        emit WithdrawalOpnToOwner(_amount);
    }

    function withdrawalAllOpnToOwner() external override onlyOwner {
        uint256 _opnBalance = opnToken.balanceOf(address(this));
        opnToken.transfer(owner(), _opnBalance);
        emit WithdrawalOpnToOwner(_opnBalance);
    }

    function withdrawAllGetToOwner() external override onlyOwner {
        uint256 _getBalance = getOldFuelToken.balanceOf(address(this));
        getOldFuelToken.transfer(owner(), _getBalance);
        emit WithdrawalGETToOwner(_getBalance);
    }

    function functionCallBackup(address _target, bytes memory _data) external override onlyOwner {
        _target.functionCall(_data);
    }
}
