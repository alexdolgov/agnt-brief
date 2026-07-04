// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;

import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts/proxy/beacon/BeaconProxy.sol";
import "@openzeppelin/contracts/proxy/beacon/IBeacon.sol";

import "../interfaces/ICollateralVaultFactory.sol";
import "../interfaces/ICollateralVault.sol";

/// @notice Factory responsible for deploying new ERC721 vaults and to act as a middleman
/// between single {CollateralVault}s and the {Controller}.
/// Deploys new {CollateralVault}s in a permissionless way using beacon proxies.
contract CollateralVaultFactory is
    AccessControlUpgradeable,
    IBeacon,
    ICollateralVaultFactory
{
    error InvalidImplementation(address implementation);
    error InvalidCollection(address collection);

    event CollateralVaultImplementationChanged(
        address newImplementation,
        address oldImplementation
    );
    event CollateralVaultDeployed(
        address indexed vault,
        address indexed collection
    );

    bytes32 public constant CONTROLLER_ROLE = keccak256("CONTROLLER_ROLE");

    /// @notice The current {CollateralVault} implementation address
    address public implementation;

    /// @dev Initializer function
    /// @param _vaultImplementation The initial {CollateralVault} implementation address
    function initialize(address _vaultImplementation) external initializer {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        setVaultImplementation(_vaultImplementation);
    }

    /// @return The owner of the specified NFT, zero address if not deposited
    /// @param _collection The collection address of the NFT
    /// @param _nftIndex The index of the NFT
    function ownerOf(
        address _collection,
        uint256 _nftIndex
    ) external view returns (address) {
        address _addr = vaultAddress(_collection);
        if (_addr.code.length == 0) return address(0);

        return ICollateralVault(_addr).ownerOf(_nftIndex);
    }

    /// @return The {CollateralVault} address for the specified collection
    /// @param _collection The collection address
    function vaultAddress(address _collection) public view returns (address) {
        bytes32 _hash = keccak256(
            abi.encodePacked(
                bytes1(0xff),
                address(this),
                bytes32(abi.encode(_collection)),
                keccak256(
                    abi.encodePacked(
                        type(BeaconProxy).creationCode,
                        abi.encode(
                            address(this),
                            _vaultInitializer(_collection)
                        )
                    )
                )
            )
        );

        return address(uint160(uint256(_hash)));
    }

    /// @notice Function called by the controller to deposit NFTs to use as collateral
    /// @param _collection The collection address of the NFT to deposit
    /// @param _nftIndex The index of the NFT to deposit
    /// @param _owner The owner of the NFT to deposit
    function depositCollateral(
        address _collection,
        uint256 _nftIndex,
        address _owner
    ) external onlyRole(CONTROLLER_ROLE) {
        address _addr = vaultAddress(_collection);
        if (_addr.code.length == 0) _newVault(_collection);

        ICollateralVault(_addr).depositCollateral(_nftIndex, _owner);
    }

    /// @notice Function called by the controller to withdraw NFTs
    /// @param _collection The collection address of the NFT to withdraw
    /// @param _nftIndex The index of the NFT to withdraw
    /// @param _recipient The address to send the NFT to
    function withdrawCollateral(
        address _collection,
        uint256 _nftIndex,
        address _recipient
    ) external onlyRole(CONTROLLER_ROLE) {
        address _addr = vaultAddress(_collection);
        if (_addr.code.length == 0) revert InvalidCollection(_collection);

        ICollateralVault(_addr).withdrawCollateral(_nftIndex, _recipient);
    }

    /// @notice Allows the admin to change the implementation for all {CollateralVault}s
    /// @param _newImplementation The new implementation address
    function setVaultImplementation(
        address _newImplementation
    ) public onlyRole(DEFAULT_ADMIN_ROLE) {
        if (
            _newImplementation == address(0) ||
            _newImplementation.code.length == 0
        ) revert InvalidImplementation(_newImplementation);

        emit CollateralVaultImplementationChanged(
            _newImplementation,
            implementation
        );

        implementation = _newImplementation;
    }

    /// @dev Deploys a new {CollateralVault} beacon proxy for the specified collection using CREATE2
    /// and calls the initializer function
    function _newVault(address _collection) internal {
        address _address = address(
            new BeaconProxy{ salt: bytes32(abi.encode(_collection)) }(
                address(this),
                _vaultInitializer(_collection)
            )
        );

        emit CollateralVaultDeployed(_address, _collection);
    }

    //The implementation of this function can never be changed after deployment,
    //or else it would break the address calculation for previously deployed vaults
    function _vaultInitializer(
        address _collection
    ) internal view returns (bytes memory) {
        return
            abi.encodeWithSelector(
                ICollateralVault.initialize.selector,
                _collection,
                address(this)
            );
    }
}
