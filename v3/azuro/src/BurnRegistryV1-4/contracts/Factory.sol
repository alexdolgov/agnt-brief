// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.28;

import "./interface/IAccess.sol";
import "./interface/IAzuroBet.sol";
import "./interface/ILiveCore.sol";
import "./interface/ILP.sol";
import "./interface/IOwnable.sol";
import "./interface/IVault.sol";
import "@openzeppelin/contracts/proxy/beacon/BeaconProxy.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

/// @title Azuro Liquidity Pool factory
contract Factory is OwnableUpgradeable {
    struct CoreBeacons {
        address core;
        address azuroBet;
    }

    /*
      daoFee share of the profits due to the DAO
      dataProviderFee share of the profits due to Data Provider
      affiliateFee share of the profits due to Affiliates
    */
    struct FeeValues {
        uint64 daoFee;
        uint64 dataProviderFee;
        uint64 affiliateFee;
    }

    address public accessBeacon;
    address public lpBeacon;
    address public vaultBeacon;
    mapping(string => CoreBeacons) public coreBeacons; // Core type name -> beacons

    mapping(address => bool) public registeredLPs;

    event CoreTypeUpdated(
        string indexed coreType,
        address coreBeacon,
        address azuroBetBeacon
    );
    event NewCore(
        address indexed lp,
        address indexed core,
        string indexed coreType
    );
    event NewPool(
        address indexed lp,
        address indexed core,
        string indexed coreType,
        address access,
        address vault,
        address token,
        address azuroBet
    );

    error UnknownCoreType();
    error UnknownLP();

    function initialize(
        address accessBeacon_,
        address lpBeacon_,
        address vaultBeacon_
    ) external virtual initializer {
        __Ownable_init_unchained(msg.sender);
        accessBeacon = accessBeacon_;
        lpBeacon = lpBeacon_;
        vaultBeacon = vaultBeacon_;
    }

    /**
     * @notice Owner: Update or disable Core type.
     * @param  coreType Core type name
     * @param  coreBeacon address of Core beacon, pass as zero address to disable the Core type
     * @param  azuroBetBeacon address of AzuroBet beacon that will be used in the Core type
     */
    function updateCoreType(
        string calldata coreType,
        address coreBeacon,
        address azuroBetBeacon
    ) external onlyOwner {
        coreBeacons[coreType] = CoreBeacons(coreBeacon, azuroBetBeacon);

        emit CoreTypeUpdated(coreType, coreBeacon, azuroBetBeacon);
    }

    /**
     * @notice Deploy and tune new Liquidity Pool.
     * @param  token token in which bets will be made
     * @param  minDepo minimum liquidity deposit
     * @param  daoFee share of the profits due to the DAO
     * @param  dataProviderFee share of the profits due to Data Provider
     * @param  affiliateFee share of the profits due to Affiliates
     * @param  coreType name of the Core type to plug in first
     */
    function createPool(
        address token,
        uint128 minDepo,
        uint64 daoFee,
        uint64 dataProviderFee,
        uint64 affiliateFee,
        string calldata coreType
    ) external {
        address vaultAddress = address(new BeaconProxy(vaultBeacon, ""));
        IVault vault = IVault(vaultAddress);
        vault.initialize(token);

        address lpAddress = _createPool(
            vaultAddress,
            minDepo,
            FeeValues({
                daoFee: daoFee,
                dataProviderFee: dataProviderFee,
                affiliateFee: affiliateFee
            }),
            coreType
        );

        vault.changeAdmin(lpAddress);
        IOwnable(address(vault)).transferOwnership(msg.sender);
    }

    /**
     * @notice Deploy and tune new Liquidity Pool with already deployed Vault.
     * @notice Do not forget to change the admin address in the Vault to the deployed LP address.
     * @param  vault deployed Liquidity Vault contract.
     * @param  minDepo minimum liquidity deposit
     * @param  daoFee share of the profits due to the DAO
     * @param  dataProviderFee share of the profits due to Data Provider
     * @param  affiliateFee share of the profits due to Affiliates
     * @param  coreType name of the Core type to plug in first
     */
    function createPoolWithDeployedVault(
        address vault,
        uint128 minDepo,
        uint64 daoFee,
        uint64 dataProviderFee,
        uint64 affiliateFee,
        string calldata coreType
    ) external {
        _createPool(
            vault,
            minDepo,
            FeeValues({
                daoFee: daoFee,
                dataProviderFee: dataProviderFee,
                affiliateFee: affiliateFee
            }),
            coreType
        );
    }

    /**
     * @notice Liquidity Pool owner: Plug new Core to the Liquidity Pool.
     * @param  lp address of owned Liquidity Pool
     * @param  coreType name of Core type to plug in
     */
    function plugCore(address lp, string calldata coreType) external {
        checkLP(lp);
        ILP(lp).checkOwner(msg.sender);

        (address coreAddress, ) = _plugCore(lp, coreType);

        emit NewCore(lp, coreAddress, coreType);
    }

    function checkLP(address lp) public view {
        if (!registeredLPs[lp]) revert UnknownLP();
    }

    /**
     * @notice Deploy and tune new Liquidity Pool.
     * @param  vault deployed Liquidity Vault contract.
     * @param  minDepo minimum liquidity deposit
     * @param  feeValues see structure FeeValues
     * @param  coreType name of the Core type to plug in first
     */
    function _createPool(
        address vault,
        uint128 minDepo,
        FeeValues memory feeValues,
        string calldata coreType
    ) internal returns (address lpAddress) {
        address accessAddress = address(new BeaconProxy(accessBeacon, ""));
        IAccess(accessAddress).initialize("Azuro Access token", "ACCESS");
        IOwnable(accessAddress).transferOwnership(msg.sender);

        lpAddress = address(new BeaconProxy(lpBeacon, ""));
        ILP(lpAddress).initialize(
            accessAddress,
            vault,
            msg.sender,
            msg.sender,
            minDepo,
            feeValues.daoFee,
            feeValues.dataProviderFee,
            feeValues.affiliateFee
        );
        IOwnable(lpAddress).transferOwnership(msg.sender);
        registeredLPs[lpAddress] = true;

        (address coreAddress, address azuroBetAddress) = _plugCore(
            lpAddress,
            coreType
        );

        emit NewPool(
            lpAddress,
            coreAddress,
            coreType,
            accessAddress,
            vault,
            IVault(vault).token(),
            azuroBetAddress
        );
    }

    /**
     * @notice Plug new Core to the Liquidity Pool.
     * @param  lp address of registered Liquidity Pool
     * @param  coreType Core type name
     * @return coreAddress address of new plugged core
     */
    function _plugCore(
        address lp,
        string calldata coreType
    ) internal returns (address coreAddress, address azuroBetAddress) {
        CoreBeacons memory beacons = _getBeacons(coreType);
        coreAddress = address(new BeaconProxy(beacons.core, ""));
        ILiveCore core = ILiveCore(coreAddress);

        azuroBetAddress = address(new BeaconProxy(beacons.azuroBet, ""));
        IAzuroBet azuroBet = IAzuroBet(azuroBetAddress);

        core.initialize(azuroBetAddress, lp);
        IOwnable(address(core)).transferOwnership(msg.sender);

        azuroBet.initialize(coreAddress);
        IOwnable(address(azuroBet)).transferOwnership(msg.sender);

        ILP(lp).addCore(coreAddress);
    }

    /**
     * @notice Get beacons for Core `coreType`.
     */
    function _getBeacons(
        string calldata coreType
    ) internal view returns (CoreBeacons storage beacons) {
        beacons = coreBeacons[coreType];
        if (beacons.core == address(0)) revert UnknownCoreType();
    }
}
