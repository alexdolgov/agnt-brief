// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import { ERC20 } from "@openzeppelin-contracts-5.1.0/token/ERC20/ERC20.sol";
import { AccessControlUpgradeable } from "@openzeppelin-contracts-upgradeable-5.1.0/access/AccessControlUpgradeable.sol";
import { Initializable } from "@openzeppelin-contracts-upgradeable-5.1.0/proxy/utils/Initializable.sol";
import { UUPSUpgradeable } from "@openzeppelin-contracts-upgradeable-5.1.0/proxy/utils/UUPSUpgradeable.sol";

import { IBeraPawRewardVaultFactory } from "./interfaces/IBeraPawRewardVaultFactory.sol";
import { BeraPawRewardVault } from "./BeraPawRewardVault.sol";
import { Constants } from "../Constants.sol";

contract BeraPawRewardVaultFactory is Initializable, AccessControlUpgradeable, UUPSUpgradeable, IBeraPawRewardVaultFactory {
    /* ´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /* CONSTANTS */
    /* .•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    bytes32 constant ROLE_GOD = Constants.ROLE_GOD;
    bytes32 constant ROLE_ADMIN = Constants.ROLE_ADMIN;
    bytes32 constant ROLE_CURATOR = Constants.ROLE_CURATOR;

    /* ´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /* STATE */
    /* .•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    mapping(address stakingToken => address berapawRewardVault) public getVault;
    mapping(address berapawRewardVault => address stakingToken) public getStakingToken;
    address[] public allVaults;

    /* ´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /* INITIALIZATION */
    /* .•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _owner) public initializer {
        __AccessControl_init();
        __UUPSUpgradeable_init();

        _setRoleAdmin(ROLE_GOD, ROLE_GOD);
        _setRoleAdmin(ROLE_ADMIN, ROLE_GOD);
        _setRoleAdmin(ROLE_CURATOR, ROLE_ADMIN);

        _grantRole(ROLE_GOD, _owner);
        _grantRole(ROLE_ADMIN, _owner);
    }

    /* ´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /* ADMIN FUNCTIONS */
    /* .•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @inheritdoc IBeraPawRewardVaultFactory
    function createBeraPawRewardVault(address stakingToken) external onlyRole(ROLE_ADMIN) returns (address) {
        address cachedAddress = getVault[stakingToken];
        if (cachedAddress != address(0)) return cachedAddress;

        // Check the code size of the staking token.
        if (stakingToken.code.length == 0) revert NotAContract();

        // Deploy BeraPawRewardVault deterministically with CREATE2 using the stakingToken as salt input.
        bytes32 salt = keccak256(abi.encodePacked(stakingToken));

        bytes memory bytecode = abi.encodePacked(
            type(BeraPawRewardVault).creationCode,
            abi.encode(stakingToken)
        );

        address vault;

        assembly {
            vault := create2(0, add(bytecode, 32), mload(bytecode), salt)
        }

        require(vault != address(0), "CREATE2 failed");

        // Store the vault in the mapping and array.
        getVault[stakingToken] = vault;
        getStakingToken[vault] = stakingToken;
        allVaults.push(vault);
        emit VaultCreated(stakingToken, vault);

        return vault;
    }

    /// @inheritdoc IBeraPawRewardVaultFactory
    function claimResidualReward(address[] memory berapawRewardVaults, address recipient) external onlyRole(ROLE_ADMIN) {
        require(recipient != address(0), ZeroAddress());
        for (uint256 i; i < berapawRewardVaults.length; i++) {
            require(
                getStakingToken[berapawRewardVaults[i]] != address(0),
                InvalidInput()
            );
            BeraPawRewardVault(berapawRewardVaults[i]).getReward(address(this), recipient);
        }
    }

    /* ´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /* PUBLIC FUNCTIONS */
    /* .•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @inheritdoc IBeraPawRewardVaultFactory
    function getMultipleRewards(address[] memory berapawRewardVaults) external {
        for (uint256 i; i < berapawRewardVaults.length; i++) {
            require(
                getStakingToken[berapawRewardVaults[i]] != address(0),
                InvalidInput()
            );
            BeraPawRewardVault(berapawRewardVaults[i]).getRewardForUser(msg.sender);
        }   
    }

    /// @inheritdoc IBeraPawRewardVaultFactory
    function predictBeraPawRewardVaultAddress(address stakingToken) public view returns (address) {
        bytes32 _salt = keccak256(abi.encodePacked(stakingToken));
        bytes memory creationCode = type(BeraPawRewardVault).creationCode;
        bytes memory initCode = abi.encodePacked(creationCode, abi.encode(stakingToken));
        bytes32 computedHash = keccak256(abi.encodePacked(bytes1(0xff), address(this), _salt, keccak256(initCode)));
        return address(uint160(uint256(computedHash)));
    }

    /* ´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /* VIEW FUNCTIONS */
    /* .•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @inheritdoc IBeraPawRewardVaultFactory
    function isGod(address account) external view returns (bool) {
        return hasRole(ROLE_GOD, account);
    }

    /// @inheritdoc IBeraPawRewardVaultFactory
    function isAdmin(address account) external view returns (bool) {
        return hasRole(ROLE_ADMIN, account);
    }

    /// @inheritdoc IBeraPawRewardVaultFactory
    function isCurator(address account) external view returns (bool) {
        return hasRole(ROLE_CURATOR, account);
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyRole(ROLE_GOD) { }
}
