// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;
pragma abicoder v2;

import {Ownable} from "@oz/access/Ownable.sol";
import {Create2} from "@oz/utils/Create2.sol";
import {BeaconProxy} from "@oz/proxy/beacon/BeaconProxy.sol";
import {UpgradeableBeacon} from "@oz/proxy/beacon/UpgradeableBeacon.sol";
import {Ownable2StepUpgradeable} from "@ozu/access/Ownable2StepUpgradeable.sol";
import {IERC20, IERC20Metadata} from "@oz/token/ERC20/ERC20.sol";

import {Error} from "@src/lib/Error.sol";
import {BasicVault} from "@src/vault/BasicVault.sol";
import {IVaultFactory} from "@src/interfaces/vault/IVaultFactory.sol";

import {IOwnable} from "@src/interfaces/IOwnable.sol";
import {BasicVaultFactoryStorageV1} from "@src/vault/storage/BasicVaultFactoryStorageV1.sol";

/// @title BasicVaultFactory
/// @author Eddy <hong@manythings.xyz>
/// @notice A beacon contract that creates and manages BasicVault implementation contract and its proxy contracts.
/// @dev Explain to a developer any extra details
contract BasicVaultFactory is IVaultFactory, Ownable2StepUpgradeable, BasicVaultFactoryStorageV1 {
    event VaultDeployed(address indexed instance, uint256 indexed id);
    event HubUpdated(address hub);

    constructor() initializer {}

    function initialize(address owner, address admin, address hub_, address initialVaultImpl) public initializer {
        __Ownable_init();
        _transferOwnership(owner);

        StorageV1 storage $ = _getStorageV1();

        $.beacon = new UpgradeableBeacon(initialVaultImpl);
        $.beacon.transferOwnership(admin);
        $.hub = hub_;
    }

    // Modifiers

    modifier onlyHub() {
        if (_getStorageV1().hub != _msgSender()) {
            revert Error.Unauthorized();
        }

        _;
    }

    // View functions

    function hub() public view returns (address) {
        return address(_getStorageV1().hub);
    }

    function beacon() public view returns (address) {
        return address(_getStorageV1().beacon);
    }

    function isVault(address vault) public view returns (bool) {
        StorageV1 storage $ = _getStorageV1();
        uint256 vaultId = $.vaultIds[vault];
        return $.vaults[vaultId] == vault;
    }

    function vaultCount() public view returns (uint256) {
        return _getStorageV1().vaults.length;
    }

    function getVault(uint256 id) public view returns (address) {
        return _getStorageV1().vaults[id];
    }

    function getVaults(uint256[] memory ids) public view returns (address[] memory) {
        StorageV1 storage $ = _getStorageV1();
        address[] memory vaults = new address[](ids.length);

        for (uint256 i = 0; i < ids.length;) {
            vaults[i] = $.vaults[ids[i]];
            unchecked {
                i += 1;
            }
        }

        return vaults;
    }

    function getVaultsByAsset(address asset) public view returns (address[] memory) {
        return getVaults(_getStorageV1().vaultIdsByAsset[asset]);
    }

    function computeVaultAddr(address asset, string memory name, string memory symbol)
        external
        view
        returns (address)
    {
        (bytes32 salt, bytes memory bytecode) = _calcDeployMetadata(asset, name, symbol);

        return Create2.computeAddress(salt, keccak256(bytecode));
    }

    // External functions

    function createVault(address asset, string memory name, string memory symbol) external onlyHub returns (address) {
        StorageV1 storage $ = _getStorageV1();

        (bytes32 salt, bytes memory bytecode) = _calcDeployMetadata(asset, name, symbol);

        address vault = Create2.computeAddress(salt, keccak256(bytecode));
        if ($.vaultIds[vault] != 0 && $.vaults[$.vaultIds[vault]] != vault) {
            revert Error.DeploymentFailed("vault already exists");
        }

        uint256 vaultId = $.vaults.length;
        $.vaults.push(vault);
        $.vaultIds[vault] = vaultId;
        $.vaultIdsByAsset[asset].push(vaultId);

        address deployedVault = Create2.deploy(0, salt, bytecode);
        if (deployedVault != vault) {
            revert Error.DeploymentFailed("invalid deployed address");
        }
        IOwnable(deployedVault).transferOwnership(owner());

        emit VaultDeployed(vault, vaultId);

        return vault;
    }

    function updateHub(address hub_) external onlyOwner {
        _getStorageV1().hub = hub_;

        emit HubUpdated(hub_);
    }

    // Internal functions

    function _calcDeployMetadata(address asset, string memory name, string memory symbol)
        internal
        view
        returns (bytes32, bytes memory)
    {
        bytes32 salt = keccak256(abi.encode(asset, name, symbol));

        // slither-disable-next-line too-many-digits
        bytes memory bytecode = abi.encodePacked(
            type(BeaconProxy).creationCode,
            abi.encode(
                _getStorageV1().beacon, abi.encodeWithSelector(BasicVault.initialize.selector, asset, name, symbol)
            )
        );

        return (salt, bytecode);
    }
}
