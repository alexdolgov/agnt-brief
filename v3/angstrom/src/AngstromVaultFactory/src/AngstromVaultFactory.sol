// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.10;

import { Ownable } from "solady/auth/Ownable.sol";
import { ERC20 } from "solady/tokens/ERC20.sol";
import { SafeTransferLib } from "solady/utils/SafeTransferLib.sol";
import { SSTORE2 } from "solady/utils/SSTORE2.sol";
import { CREATE3 } from "solady/utils/CREATE3.sol";
import { IPoolManager } from "@uniswap/v4-core/src/interfaces/IPoolManager.sol";
import { PoolKey } from "@uniswap/v4-core/src/types/PoolKey.sol";
import { PoolId, PoolIdLibrary } from "@uniswap/v4-core/src/types/PoolId.sol";

import { IAngstromVaultFactory } from "./interfaces/IAngstromVaultFactory.sol";
import { IVault } from "./interfaces/IVault.sol";
import { IVestibule } from "./interfaces/IVestibule.sol";
import { Vault } from "./Vault.sol";
import { Vestibule } from "./Vestibule.sol";
import { Errors } from "./Errors.sol";

using PoolIdLibrary for PoolKey;

/// @notice Factory contract for deploying Angstrom Vaults. An owner-managed whitelisted set of "curators" is allowed to
/// call `createVault()`, which handles deploying and initializing new vaults. Vaults send a portion of their
/// performance and/or management fees to this contract as protocol fees. On vault deployment, these fractions are set
/// to `defaultPerformanceFeeProtocolFractionE6` and `defaultManagementFeeProtocolFractionE6`, respectively, but the
/// owner of this contract can subsequently override these defaults on a per-vault basis. All withdrawals of protocol
/// fees from this contract are also controlled by its owner.
contract AngstromVaultFactory is Ownable, IAngstromVaultFactory {
    event CuratorWhitelistChanged(address indexed curator, bool newState);
    event AngstromVaultCreated(address indexed curator, PoolId pool, ERC20 asset, IVault vault);
    event VestibuleCreated(IVault indexed vault, IVestibule vestibule);
    event DefaultPerformanceFeeProtocolFractionSet(uint256 newDefaultPerformanceFeeProtocolFractionE6);
    event DefaultManagementFeeProtocolFractionSet(uint256 newDefaultManagementFeeProtocolFractionE6);
    event ProtocolRevenueWithdrawn(ERC20 indexed token, address indexed destination, uint256 amount);

    error NotWhitelistedCurator();
    error CreateVaultFailed();
    error MaxFeeProtocolFractionExceeded();
    error InvalidFeeRecipientAddress();

    /// @notice Initcode for new vault deployments (first half).
    /// @dev Stored externally to allow this contract to meet code size limit.
    address public immutable VAULT_INITCODE_POINTER_A;
    /// @notice Initcode for new vault deployments (second half).
    /// @dev Stored externally to allow this contract to meet code size limit.
    address public immutable VAULT_INITCODE_POINTER_B;
    /// @notice Singleton extension contract shared by all vaults, called via delegatecall.
    address public immutable EXTENSION;

    /// @notice UniV4 PoolManager contract.
    IPoolManager public immutable POOL_MANAGER;

    /// @dev Enforced max value of `defaultPerformanceFeeProtocolFractionE6` and `MAXIMUM_PROTOCOL_FEE_SHARE_E6`.
    uint24 internal constant MAXIMUM_PROTOCOL_FEE_SHARE_E6 = 0.5e6;

    /// @inheritdoc IAngstromVaultFactory
    uint24 public defaultPerformanceFeeProtocolFractionE6;

    /// @inheritdoc IAngstromVaultFactory
    uint24 public defaultManagementFeeProtocolFractionE6;

    /// @notice Mapping: Address => whether or not the address is allowed to deploy new vaults.
    mapping(address => bool) internal _whitelist;

    /// @notice Array of all vaults deployed by this contract.
    IVault[] internal _allVaults;

    constructor(
        IPoolManager _poolManager,
        address _extension
    ) {
        require(_extension != address(0), Errors.ZeroAddressDisallowed());
        _initializeOwner(msg.sender);
        POOL_MANAGER = _poolManager;
        EXTENSION = _extension;

        bytes memory initcode = type(Vault).creationCode;
        uint256 half = initcode.length / 2;
        bytes memory partA = new bytes(half);
        bytes memory partB = new bytes(initcode.length - half);
        assembly {
            mcopy(add(partA, 0x20), add(initcode, 0x20), half)
            mcopy(add(partB, 0x20), add(add(initcode, 0x20), half), mload(partB))
        }
        VAULT_INITCODE_POINTER_A = SSTORE2.write(partA);
        VAULT_INITCODE_POINTER_B = SSTORE2.write(partB);
    }

    /// @inheritdoc IAngstromVaultFactory
    function setWhitelist(
        address curator,
        bool status
    ) external onlyOwner {
        _whitelist[curator] = status;

        emit CuratorWhitelistChanged(curator, status);
    }

    /// @inheritdoc IAngstromVaultFactory
    function setDefaultPerformanceFeeProtocolFractionE6(
        uint24 newDefaultPerformanceFeeProtocolFractionE6
    ) external onlyOwner {
        require(
            newDefaultPerformanceFeeProtocolFractionE6 <= MAXIMUM_PROTOCOL_FEE_SHARE_E6,
            MaxFeeProtocolFractionExceeded()
        );
        emit DefaultPerformanceFeeProtocolFractionSet(newDefaultPerformanceFeeProtocolFractionE6);
        defaultPerformanceFeeProtocolFractionE6 = newDefaultPerformanceFeeProtocolFractionE6;
    }

    /// @inheritdoc IAngstromVaultFactory
    function setDefaultManagementFeeProtocolFractionE6(
        uint24 newDefaultManagementFeeProtocolFractionE6
    ) external onlyOwner {
        require(
            newDefaultManagementFeeProtocolFractionE6 <= MAXIMUM_PROTOCOL_FEE_SHARE_E6, MaxFeeProtocolFractionExceeded()
        );
        emit DefaultManagementFeeProtocolFractionSet(newDefaultManagementFeeProtocolFractionE6);
        defaultManagementFeeProtocolFractionE6 = newDefaultManagementFeeProtocolFractionE6;
    }

    /// @inheritdoc IAngstromVaultFactory
    function setVaultPerformanceFeeProtocolFractionE6(
        IVault vault,
        uint24 newPerformanceFeeProtocolFractionE6
    ) external onlyOwner {
        require(newPerformanceFeeProtocolFractionE6 <= MAXIMUM_PROTOCOL_FEE_SHARE_E6, MaxFeeProtocolFractionExceeded());
        vault.setPerformanceFeeProtocolFractionE6(newPerformanceFeeProtocolFractionE6);
    }

    /// @inheritdoc IAngstromVaultFactory
    function setVaultManagementFeeProtocolFractionE6(
        IVault vault,
        uint24 newManagementFeeProtocolFractionE6
    ) external onlyOwner {
        require(newManagementFeeProtocolFractionE6 <= MAXIMUM_PROTOCOL_FEE_SHARE_E6, MaxFeeProtocolFractionExceeded());
        vault.setManagementFeeProtocolFractionE6(newManagementFeeProtocolFractionE6);
    }

    /// @inheritdoc IAngstromVaultFactory
    function withdrawRevenue(
        ERC20 token,
        address destination,
        uint256 amount
    ) external onlyOwner {
        emit ProtocolRevenueWithdrawn(token, destination, amount);
        SafeTransferLib.safeTransfer(address(token), destination, amount);
    }

    /// @inheritdoc IAngstromVaultFactory
    function isWhitelisted(
        address curator
    ) external view returns (bool) {
        return _whitelist[curator];
    }

    /// @inheritdoc IAngstromVaultFactory
    function createVault(
        PoolKey calldata poolKey,
        ERC20 asset,
        uint256 initialEpochLength,
        uint256 initialPerformanceFeeE6,
        uint256 initialManagementFeeAccrualBaseE18,
        address initialPerformanceFeeRecipient,
        address initialMangementFeeRecipient
    ) external returns (IVault vault) {
        require(_whitelist[msg.sender], NotWhitelistedCurator());

        bytes memory vaultInitcode = _buildVaultInitcode(
            msg.sender,
            asset,
            poolKey,
            initialEpochLength,
            initialPerformanceFeeE6,
            initialManagementFeeAccrualBaseE18,
            initialPerformanceFeeRecipient,
            initialMangementFeeRecipient
        );
        assembly {
            vault := create(0, add(vaultInitcode, 0x20), mload(vaultInitcode))
        }
        require(address(vault) != address(0), CreateVaultFailed());
        _deployAndLinkVestibule(vault);

        _allVaults.push(vault);

        emit AngstromVaultCreated(msg.sender, poolKey.toId(), asset, vault);
    }

    /// @inheritdoc IAngstromVaultFactory
    function createVaultDeterministic(
        bytes32 salt,
        PoolKey calldata poolKey,
        ERC20 asset,
        uint256 initialEpochLength,
        uint256 initialPerformanceFeeE6,
        uint256 initialManagementFeeAccrualBaseE18,
        address initialPerformanceFeeRecipient,
        address initialMangementFeeRecipient
    ) external returns (IVault vault) {
        require(_whitelist[msg.sender], NotWhitelistedCurator());

        bytes memory vaultInitcode = _buildVaultInitcode(
            msg.sender,
            asset,
            poolKey,
            initialEpochLength,
            initialPerformanceFeeE6,
            initialManagementFeeAccrualBaseE18,
            initialPerformanceFeeRecipient,
            initialMangementFeeRecipient
        );

        bytes32 effectiveSalt;
        assembly ("memory-safe") {
            mstore(0x00, shl(96, caller()))
            mstore(0x14, salt)
            effectiveSalt := keccak256(0x00, 0x34)
        }
        vault = IVault(CREATE3.deployDeterministic(vaultInitcode, effectiveSalt));
        _deployAndLinkVestibule(vault);

        _allVaults.push(vault);

        emit AngstromVaultCreated(msg.sender, poolKey.toId(), asset, vault);
    }

    /// @inheritdoc IAngstromVaultFactory
    function predictVaultAddress(
        bytes32 salt,
        address deployer
    ) external view returns (address) {
        bytes32 effectiveSalt;
        assembly ("memory-safe") {
            mstore(0x00, shl(96, deployer))
            mstore(0x14, salt)
            effectiveSalt := keccak256(0x00, 0x34)
        }
        return CREATE3.predictDeterministicAddress(effectiveSalt);
    }

    function _buildVaultInitcode(
        address owner,
        ERC20 asset,
        PoolKey calldata poolKey,
        uint256 initialEpochLength,
        uint256 initialPerformanceFeeE6,
        uint256 initialManagementFeeAccrualBaseE18,
        address initialPerformanceFeeRecipient,
        address initialMangementFeeRecipient
    ) internal view returns (bytes memory) {
        bytes memory vaultArgs = abi.encode(
            asset,
            POOL_MANAGER,
            poolKey,
            address(this),
            owner,
            initialEpochLength,
            initialPerformanceFeeE6,
            initialManagementFeeAccrualBaseE18,
            initialPerformanceFeeRecipient,
            initialMangementFeeRecipient,
            EXTENSION
        );
        return
            abi.encodePacked(SSTORE2.read(VAULT_INITCODE_POINTER_A), SSTORE2.read(VAULT_INITCODE_POINTER_B), vaultArgs);
    }

    function _deployAndLinkVestibule(
        IVault vault
    ) internal returns (IVestibule vestibule) {
        vestibule = new Vestibule(vault);
        vault.setVestibule(address(vestibule));
        emit VestibuleCreated(vault, vestibule);
    }

    /// @inheritdoc IAngstromVaultFactory
    function allVaults() external view returns (IVault[] memory) {
        return _allVaults;
    }
}
