// ============================================================
// FILE: contracts/base/Multicall.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.22;

import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import "../interfaces/IMulticall.sol";

/**
 * @title Multicall
 * @author StakeWise
 * @notice Enables calling multiple methods in a single call to the contract
 */
abstract contract Multicall is IMulticall {
    /// @inheritdoc IMulticall
    function multicall(bytes[] calldata data) external override returns (bytes[] memory results) {
        uint256 dataLength = data.length;
        results = new bytes[](dataLength);
        for (uint256 i = 0; i < dataLength; i++) {
            bytes memory result = Address.functionDelegateCall(address(this), data[i]);
            results[i] = result;
        }
    }
}

// ============================================================
// FILE: contracts/interfaces/IConsolidationsChecker.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.22;

import {IERC5267} from "@openzeppelin/contracts/interfaces/IERC5267.sol";

/**
 * @title IConsolidationsChecker
 * @author StakeWise
 * @notice Defines the interface for the ConsolidationsChecker contract
 */
interface IConsolidationsChecker is IERC5267 {
    /**
     * @notice Verifies the signatures of oracles for validators consolidations. Reverts if the signatures are invalid.
     * @param vault The address of the vault
     * @param validators The concatenation of the validators' data
     * @param signatures The concatenation of the oracles' signatures
     */
    function verifySignatures(address vault, bytes calldata validators, bytes calldata signatures) external;

    /**
     * @notice Function for checking signatures of oracles for validators consolidations
     * @param vault The address of the vault
     * @param validators The concatenation of the validators' data
     * @param signatures The concatenation of the oracles' signatures
     * @return `true` if the signatures are valid, `false` otherwise
     */
    function isValidSignatures(address vault, bytes calldata validators, bytes calldata signatures)
        external
        returns (bool);
}

// ============================================================
// FILE: contracts/interfaces/IDepositDataRegistry.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.22;

import {IKeeperValidators} from "./IKeeperValidators.sol";
import {IKeeperRewards} from "./IKeeperRewards.sol";
import {IMulticall} from "./IMulticall.sol";

/**
 * @title IDepositDataRegistry
 * @author StakeWise
 * @notice Defines the interface for DepositDataRegistry
 */
interface IDepositDataRegistry is IMulticall {
    /**
     * @notice Event emitted on deposit data manager update
     * @param vault The address of the vault
     * @param depositDataManager The address of the new deposit data manager
     */
    event DepositDataManagerUpdated(address indexed vault, address depositDataManager);

    /**
     * @notice Event emitted on deposit data root update
     * @param vault The address of the vault
     * @param depositDataRoot The new deposit data Merkle tree root
     */
    event DepositDataRootUpdated(address indexed vault, bytes32 depositDataRoot);

    /**
     * @notice Event emitted on deposit data migration
     * @param vault The address of the vault
     * @param depositDataRoot The deposit data root
     * @param validatorIndex The index of the next validator to be registered
     * @param depositDataManager The address of the deposit data manager
     */
    event DepositDataMigrated(
        address indexed vault, bytes32 depositDataRoot, uint256 validatorIndex, address depositDataManager
    );

    /**
     * @notice The vault deposit data index
     * @param vault The address of the vault
     * @return validatorIndex The index of the next validator to be registered
     */
    function depositDataIndexes(address vault) external view returns (uint256 validatorIndex);

    /**
     * @notice The vault deposit data root
     * @param vault The address of the vault
     * @return depositDataRoot The deposit data root
     */
    function depositDataRoots(address vault) external view returns (bytes32 depositDataRoot);

    /**
     * @notice The vault deposit data manager. Defaults to the vault admin if not set.
     * @param vault The address of the vault
     * @return depositDataManager The address of the deposit data manager
     */
    function getDepositDataManager(address vault) external view returns (address);

    /**
     * @notice Function for setting the deposit data manager for the vault. Can only be called by the vault admin.
     * @param vault The address of the vault
     * @param depositDataManager The address of the new deposit data manager
     */
    function setDepositDataManager(address vault, address depositDataManager) external;

    /**
     * @notice Function for setting the deposit data root for the vault. Can only be called by the deposit data manager.
     * @param vault The address of the vault
     * @param depositDataRoot The new deposit data Merkle tree root
     */
    function setDepositDataRoot(address vault, bytes32 depositDataRoot) external;

    /**
     * @notice Updates the vault state. Can be used in multicall to update state and register validator(s).
     * @param vault The address of the vault
     * @param harvestParams The harvest params to use for updating the vault state
     */
    function updateVaultState(address vault, IKeeperRewards.HarvestParams calldata harvestParams) external;

    /**
     * @notice Function for registering single validator
     * @param vault The address of the vault
     * @param keeperParams The parameters for getting approval from Keeper oracles
     * @param proof The proof used to verify that the validator is part of the deposit data merkle tree
     */
    function registerValidator(
        address vault,
        IKeeperValidators.ApprovalParams calldata keeperParams,
        bytes32[] calldata proof
    ) external;

    /**
     * @notice Function for registering multiple validators
     * @param vault The address of the vault
     * @param keeperParams The parameters for getting approval from Keeper oracles
     * @param indexes The indexes of the leaves for the merkle tree multi proof verification
     * @param proofFlags The multi proof flags for the merkle tree verification
     * @param proof The proof used for the merkle tree verification
     */
    function registerValidators(
        address vault,
        IKeeperValidators.ApprovalParams calldata keeperParams,
        uint256[] calldata indexes,
        bool[] calldata proofFlags,
        bytes32[] calldata proof
    ) external;

    /**
     * @notice Function for migrating the deposit data of the Vault. Can only be called once by a vault during an upgrade.
     * @param depositDataRoot The current deposit data root
     * @param validatorIndex The current index of the next validator to be registered
     * @param depositDataManager The address of the deposit data manager
     */
    function migrate(bytes32 depositDataRoot, uint256 validatorIndex, address depositDataManager) external;
}

// ============================================================
// FILE: contracts/interfaces/IEthValidatorsRegistry.sol
// ============================================================

// SPDX-License-Identifier: CC0-1.0

pragma solidity ^0.8.22;

import {IValidatorsRegistry} from "./IValidatorsRegistry.sol";

/**
 * @title IEthValidatorsRegistry
 * @author Ethereum Foundation
 * @notice This is the Ethereum validators deposit contract interface.
 *         See https://github.com/ethereum/consensus-specs/blob/v1.2.0/solidity_deposit_contract/deposit_contract.sol.
 *         For more information see the Phase 0 specification under https://github.com/ethereum/consensus-specs.
 */
interface IEthValidatorsRegistry is IValidatorsRegistry {
    /// @notice Submit a Phase 0 DepositData object.
    /// @param pubkey A BLS12-381 public key.
    /// @param withdrawal_credentials Commitment to a public key for withdrawals.
    /// @param signature A BLS12-381 signature.
    /// @param deposit_data_root The SHA-256 hash of the SSZ-encoded DepositData object.
    /// Used as a protection against malformed input.
    function deposit(
        bytes calldata pubkey,
        bytes calldata withdrawal_credentials,
        bytes calldata signature,
        bytes32 deposit_data_root
    ) external payable;
}

// ============================================================
// FILE: contracts/interfaces/IEthVault.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.22;

import {IKeeperRewards} from "./IKeeperRewards.sol";
import {IVaultAdmin} from "./IVaultAdmin.sol";
import {IVaultVersion} from "./IVaultVersion.sol";
import {IVaultFee} from "./IVaultFee.sol";
import {IVaultState} from "./IVaultState.sol";
import {IVaultValidators} from "./IVaultValidators.sol";
import {IVaultEnterExit} from "./IVaultEnterExit.sol";
import {IVaultOsToken} from "./IVaultOsToken.sol";
import {IVaultMev} from "./IVaultMev.sol";
import {IVaultEthStaking} from "./IVaultEthStaking.sol";
import {IMulticall} from "./IMulticall.sol";

/**
 * @title IEthVault
 * @author StakeWise
 * @notice Defines the interface for the EthVault contract
 */
interface IEthVault is
    IVaultAdmin,
    IVaultVersion,
    IVaultFee,
    IVaultState,
    IVaultValidators,
    IVaultEnterExit,
    IVaultOsToken,
    IVaultMev,
    IVaultEthStaking,
    IMulticall
{
    /**
     * @dev Struct for deploying the EthVault contract
     * @param keeper The address of the Keeper contract
     * @param vaultsRegistry The address of the VaultsRegistry contract
     * @param validatorsRegistry The contract address used for registering validators in beacon chain
     * @param validatorsWithdrawals The contract address used for withdrawing validators in beacon chain
     * @param validatorsConsolidations The contract address used for consolidating validators in beacon chain
     * @param consolidationsChecker The contract address used for checking consolidations
     * @param osTokenVaultController The address of the OsTokenVaultController contract
     * @param osTokenConfig The address of the OsTokenConfig contract
     * @param osTokenVaultEscrow The address of the OsTokenVaultEscrow contract
     * @param sharedMevEscrow The address of the shared MEV escrow
     * @param depositDataRegistry The address of the DepositDataRegistry contract
     * @param exitingAssetsClaimDelay The delay after which the assets can be claimed after exiting from staking
     */
    struct EthVaultConstructorArgs {
        address keeper;
        address vaultsRegistry;
        address validatorsRegistry;
        address validatorsWithdrawals;
        address validatorsConsolidations;
        address consolidationsChecker;
        address osTokenVaultController;
        address osTokenConfig;
        address osTokenVaultEscrow;
        address sharedMevEscrow;
        address depositDataRegistry;
        uint64 exitingAssetsClaimDelay;
    }

    /**
     * @dev Struct for initializing the EthVault contract
     * @param capacity The Vault stops accepting deposits after exceeding the capacity
     * @param feePercent The fee percent that is charged by the Vault
     * @param metadataIpfsHash The IPFS hash of the Vault's metadata file
     */
    struct EthVaultInitParams {
        uint256 capacity;
        uint16 feePercent;
        string metadataIpfsHash;
    }

    /**
     * @notice Initializes or upgrades the EthVault contract. Must transfer security deposit during the deployment.
     * @param params The encoded parameters for initializing the EthVault contract
     */
    function initialize(bytes calldata params) external payable;

    /**
     * @notice Deposits assets to the vault and mints OsToken shares to the receiver
     * @param receiver The address to receive the OsToken
     * @param osTokenShares The amount of OsToken shares to mint.
     *        If set to type(uint256).max, max OsToken shares will be minted.
     * @param referrer The address of the referrer
     * @return The amount of OsToken assets minted
     */
    function depositAndMintOsToken(address receiver, uint256 osTokenShares, address referrer)
        external
        payable
        returns (uint256);

    /**
     * @notice Updates the state, deposits assets to the vault and mints OsToken shares to the receiver
     * @param receiver The address to receive the OsToken
     * @param osTokenShares The amount of OsToken shares to mint.
     *        If set to type(uint256).max, max OsToken shares will be minted.
     * @param referrer The address of the referrer
     * @param harvestParams The parameters for the harvest
     * @return The amount of OsToken assets minted
     */
    function updateStateAndDepositAndMintOsToken(
        address receiver,
        uint256 osTokenShares,
        address referrer,
        IKeeperRewards.HarvestParams calldata harvestParams
    ) external payable returns (uint256);
}

// ============================================================
// FILE: contracts/interfaces/IEthVaultFactory.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.22;

/**
 * @title IEthVaultFactory
 * @author StakeWise
 * @notice Defines the interface for the ETH Vault Factory contract
 */
interface IEthVaultFactory {
    /**
     * @notice Event emitted on a Vault creation
     * @param admin The address of the Vault admin
     * @param vault The address of the created Vault
     * @param ownMevEscrow The address of the own MEV escrow contract. Zero address if shared MEV escrow is used.
     * @param params The encoded parameters for initializing the Vault contract
     */
    event VaultCreated(address indexed admin, address indexed vault, address ownMevEscrow, bytes params);

    /**
     * @notice The address of the Vault implementation contract used for proxy creation
     * @return The address of the Vault implementation contract
     */
    function implementation() external view returns (address);

    /**
     * @notice The address of the own MEV escrow contract used for Vault creation
     * @return The address of the MEV escrow contract
     */
    function ownMevEscrow() external view returns (address);

    /**
     * @notice The address of the Vault admin used for Vault creation
     * @return The address of the Vault admin
     */
    function vaultAdmin() external view returns (address);

    /**
     * @notice Create Vault. Must transfer security deposit together with a call.
     * @param params The encoded parameters for initializing the Vault contract
     * @param isOwnMevEscrow Whether to deploy own escrow contract or connect to a smoothing pool for priority fees and MEV rewards
     * @return vault The address of the created Vault
     */
    function createVault(bytes calldata params, bool isOwnMevEscrow) external payable returns (address vault);
}

// ============================================================
// FILE: contracts/interfaces/IKeeperOracles.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.22;

import {IERC5267} from "@openzeppelin/contracts/interfaces/IERC5267.sol";

/**
 * @title IKeeperOracles
 * @author StakeWise
 * @notice Defines the interface for the KeeperOracles contract
 */
interface IKeeperOracles is IERC5267 {
    /**
     * @notice Event emitted on the oracle addition
     * @param oracle The address of the added oracle
     */
    event OracleAdded(address indexed oracle);

    /**
     * @notice Event emitted on the oracle removal
     * @param oracle The address of the removed oracle
     */
    event OracleRemoved(address indexed oracle);

    /**
     * @notice Event emitted on oracles config update
     * @param configIpfsHash The IPFS hash of the new config
     */
    event ConfigUpdated(string configIpfsHash);

    /**
     * @notice Function for verifying whether oracle is registered or not
     * @param oracle The address of the oracle to check
     * @return `true` for the registered oracle, `false` otherwise
     */
    function isOracle(address oracle) external view returns (bool);

    /**
     * @notice Total Oracles
     * @return The total number of oracles registered
     */
    function totalOracles() external view returns (uint256);

    /**
     * @notice Function for adding oracle to the set
     * @param oracle The address of the oracle to add
     */
    function addOracle(address oracle) external;

    /**
     * @notice Function for removing oracle from the set
     * @param oracle The address of the oracle to remove
     */
    function removeOracle(address oracle) external;

    /**
     * @notice Function for updating the config IPFS hash
     * @param configIpfsHash The new config IPFS hash
     */
    function updateConfig(string calldata configIpfsHash) external;
}

// ============================================================
// FILE: contracts/interfaces/IKeeperRewards.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.22;

import {IKeeperOracles} from "./IKeeperOracles.sol";

/**
 * @title IKeeperRewards
 * @author StakeWise
 * @notice Defines the interface for the Keeper contract rewards
 */
interface IKeeperRewards is IKeeperOracles {
    /**
     * @notice Event emitted on rewards update
     * @param caller The address of the function caller
     * @param rewardsRoot The new rewards merkle tree root
     * @param avgRewardPerSecond The new average reward per second
     * @param updateTimestamp The update timestamp used for rewards calculation
     * @param nonce The nonce used for verifying signatures
     * @param rewardsIpfsHash The new rewards IPFS hash
     */
    event RewardsUpdated(
        address indexed caller,
        bytes32 indexed rewardsRoot,
        uint256 avgRewardPerSecond,
        uint64 updateTimestamp,
        uint64 nonce,
        string rewardsIpfsHash
    );

    /**
     * @notice Event emitted on Vault harvest
     * @param vault The address of the Vault
     * @param rewardsRoot The rewards merkle tree root
     * @param totalAssetsDelta The Vault total assets delta since last sync. Can be negative in case of penalty/slashing.
     * @param unlockedMevDelta The Vault execution reward that can be withdrawn from shared MEV escrow. Only used by shared MEV Vaults.
     */
    event Harvested(
        address indexed vault, bytes32 indexed rewardsRoot, int256 totalAssetsDelta, uint256 unlockedMevDelta
    );

    /**
     * @notice Event emitted on rewards min oracles number update
     * @param oracles The new minimum number of oracles required to update rewards
     */
    event RewardsMinOraclesUpdated(uint256 oracles);

    /**
     * @notice A struct containing the last synced Vault's cumulative reward
     * @param assets The Vault cumulative reward earned since the start. Can be negative in case of penalty/slashing.
     * @param nonce The nonce of the last sync
     */
    struct Reward {
        int192 assets;
        uint64 nonce;
    }

    /**
     * @notice A struct containing the last unlocked Vault's cumulative execution reward that can be withdrawn from shared MEV escrow. Only used by shared MEV Vaults.
     * @param assets The shared MEV Vault's cumulative execution reward that can be withdrawn
     * @param nonce The nonce of the last sync
     */
    struct UnlockedMevReward {
        uint192 assets;
        uint64 nonce;
    }

    /**
     * @notice A struct containing parameters for rewards update
     * @param rewardsRoot The new rewards merkle root
     * @param avgRewardPerSecond The new average reward per second
     * @param updateTimestamp The update timestamp used for rewards calculation
     * @param rewardsIpfsHash The new IPFS hash with all the Vaults' rewards for the new root
     * @param signatures The concatenation of the Oracles' signatures
     */
    struct RewardsUpdateParams {
        bytes32 rewardsRoot;
        uint256 avgRewardPerSecond;
        uint64 updateTimestamp;
        string rewardsIpfsHash;
        bytes signatures;
    }

    /**
     * @notice A struct containing parameters for harvesting rewards. Can only be called by Vault.
     * @param rewardsRoot The rewards merkle root
     * @param reward The Vault cumulative reward earned since the start. Can be negative in case of penalty/slashing.
     * @param unlockedMevReward The Vault cumulative execution reward that can be withdrawn from shared MEV escrow. Only used by shared MEV Vaults.
     * @param proof The proof to verify that Vault's reward is correct
     */
    struct HarvestParams {
        bytes32 rewardsRoot;
        int160 reward;
        uint160 unlockedMevReward;
        bytes32[] proof;
    }

    /**
     * @notice Previous Rewards Root
     * @return The previous merkle tree root of the rewards accumulated by the Vaults
     */
    function prevRewardsRoot() external view returns (bytes32);

    /**
     * @notice Rewards Root
     * @return The latest merkle tree root of the rewards accumulated by the Vaults
     */
    function rewardsRoot() external view returns (bytes32);

    /**
     * @notice Rewards Nonce
     * @return The nonce used for updating rewards merkle tree root
     */
    function rewardsNonce() external view returns (uint64);

    /**
     * @notice The last rewards update
     * @return The timestamp of the last rewards update
     */
    function lastRewardsTimestamp() external view returns (uint64);

    /**
     * @notice The minimum number of oracles required to update rewards
     * @return The minimum number of oracles
     */
    function rewardsMinOracles() external view returns (uint256);

    /**
     * @notice The rewards delay
     * @return The delay in seconds between rewards updates
     */
    function rewardsDelay() external view returns (uint256);

    /**
     * @notice Get last synced Vault cumulative reward
     * @param vault The address of the Vault
     * @return assets The last synced reward assets
     * @return nonce The last synced reward nonce
     */
    function rewards(address vault) external view returns (int192 assets, uint64 nonce);

    /**
     * @notice Get last unlocked shared MEV Vault cumulative reward
     * @param vault The address of the Vault
     * @return assets The last synced reward assets
     * @return nonce The last synced reward nonce
     */
    function unlockedMevRewards(address vault) external view returns (uint192 assets, uint64 nonce);

    /**
     * @notice Checks whether Vault must be harvested
     * @param vault The address of the Vault
     * @return `true` if the Vault requires harvesting, `false` otherwise
     */
    function isHarvestRequired(address vault) external view returns (bool);

    /**
     * @notice Checks whether the Vault can be harvested
     * @param vault The address of the Vault
     * @return `true` if Vault can be harvested, `false` otherwise
     */
    function canHarvest(address vault) external view returns (bool);

    /**
     * @notice Checks whether rewards can be updated
     * @return `true` if rewards can be updated, `false` otherwise
     */
    function canUpdateRewards() external view returns (bool);

    /**
     * @notice Checks whether the Vault has registered validators
     * @param vault The address of the Vault
     * @return `true` if Vault is collateralized, `false` otherwise
     */
    function isCollateralized(address vault) external view returns (bool);

    /**
     * @notice Update rewards data
     * @param params The struct containing rewards update parameters
     */
    function updateRewards(RewardsUpdateParams calldata params) external;

    /**
     * @notice Harvest rewards. Can be called only by Vault.
     * @param params The struct containing rewards harvesting parameters
     * @return totalAssetsDelta The total reward/penalty accumulated by the Vault since the last sync
     * @return unlockedMevDelta The Vault execution reward that can be withdrawn from shared MEV escrow. Only used by shared MEV Vaults.
     * @return harvested `true` when the rewards were harvested, `false` otherwise
     */
    function harvest(HarvestParams calldata params)
        external
        returns (int256 totalAssetsDelta, uint256 unlockedMevDelta, bool harvested);

    /**
     * @notice Set min number of oracles for confirming rewards update. Can only be called by the owner.
     * @param _rewardsMinOracles The new min number of oracles for confirming rewards update
     */
    function setRewardsMinOracles(uint256 _rewardsMinOracles) external;
}

// ============================================================
// FILE: contracts/interfaces/IKeeperValidators.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.22;

import {IKeeperRewards} from "./IKeeperRewards.sol";
import {IKeeperOracles} from "./IKeeperOracles.sol";

/**
 * @title IKeeperValidators
 * @author StakeWise
 * @notice Defines the interface for the Keeper validators
 */
interface IKeeperValidators is IKeeperOracles, IKeeperRewards {
    /**
     * @notice Event emitted on validators approval
     * @param vault The address of the Vault
     * @param exitSignaturesIpfsHash The IPFS hash with the validators' exit signatures
     */
    event ValidatorsApproval(address indexed vault, string exitSignaturesIpfsHash);

    /**
     * @notice Event emitted on exit signatures update
     * @param caller The address of the function caller
     * @param vault The address of the Vault
     * @param nonce The nonce used for verifying Oracles' signatures
     * @param exitSignaturesIpfsHash The IPFS hash with the validators' exit signatures
     */
    event ExitSignaturesUpdated(
        address indexed caller, address indexed vault, uint256 nonce, string exitSignaturesIpfsHash
    );

    /**
     * @notice Event emitted on validators min oracles number update
     * @param oracles The new minimum number of oracles required to approve validators
     */
    event ValidatorsMinOraclesUpdated(uint256 oracles);

    /**
     * @notice Get nonce for the next vault exit signatures update
     * @param vault The address of the Vault to get the nonce for
     * @return The nonce of the Vault for updating signatures
     */
    function exitSignaturesNonces(address vault) external view returns (uint256);

    /**
     * @notice Struct for approving registration of one or more validators
     * @param validatorsRegistryRoot The deposit data root used to verify that oracles approved validators
     * @param deadline The deadline for submitting the approval
     * @param validators The concatenation of the validators' public key, signature and deposit data root
     * @param signatures The concatenation of Oracles' signatures
     * @param exitSignaturesIpfsHash The IPFS hash with the validators' exit signatures
     */
    struct ApprovalParams {
        bytes32 validatorsRegistryRoot;
        uint256 deadline;
        bytes validators;
        bytes signatures;
        string exitSignaturesIpfsHash;
    }

    /**
     * @notice The minimum number of oracles required to update validators
     * @return The minimum number of oracles
     */
    function validatorsMinOracles() external view returns (uint256);

    /**
     * @notice Function for approving validators registration
     * @param params The parameters for approving validators registration
     */
    function approveValidators(ApprovalParams calldata params) external;

    /**
     * @notice Function for updating exit signatures for every hard fork
     * @param vault The address of the Vault to update signatures for
     * @param deadline The deadline for submitting signatures update
     * @param exitSignaturesIpfsHash The IPFS hash with the validators' exit signatures
     * @param oraclesSignatures The concatenation of Oracles' signatures
     */
    function updateExitSignatures(
        address vault,
        uint256 deadline,
        string calldata exitSignaturesIpfsHash,
        bytes calldata oraclesSignatures
    ) external;

    /**
     * @notice Function for updating validators min oracles number
     * @param _validatorsMinOracles The new minimum number of oracles required to approve validators
     */
    function setValidatorsMinOracles(uint256 _validatorsMinOracles) external;
}

// ============================================================
// FILE: contracts/interfaces/IMulticall.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later

pragma solidity ^0.8.22;

/**
 * @title Multicall
 * @author Uniswap
 * @notice Adopted from https://github.com/Uniswap/v3-periphery/blob/1d69caf0d6c8cfeae9acd1f34ead30018d6e6400/contracts/base/Multicall.sol
 * @notice Enables calling multiple methods in a single call to the contract
 */
interface IMulticall {
    /**
     * @notice Call multiple functions in the current contract and return the data from all of them if they all succeed
     * @param data The encoded function data for each of the calls to make to this contract
     * @return results The results from each of the calls passed in via data
     */
    function multicall(bytes[] calldata data) external returns (bytes[] memory results);
}

// ============================================================
// FILE: contracts/interfaces/IOsTokenConfig.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.22;

/**
 * @title IOsTokenConfig
 * @author StakeWise
 * @notice Defines the interface for the OsTokenConfig contract
 */
interface IOsTokenConfig {
    /**
     * @notice Emitted when OsToken minting and liquidating configuration values are updated
     * @param vault The address of the vault to update the config for. Will be zero address if it is a default config.
     * @param liqBonusPercent The new liquidation bonus percent value
     * @param liqThresholdPercent The new liquidation threshold percent value
     * @param ltvPercent The new loan-to-value (LTV) percent value
     */
    event OsTokenConfigUpdated(address vault, uint128 liqBonusPercent, uint64 liqThresholdPercent, uint64 ltvPercent);

    /**
     * @notice Emitted when the OsToken redeemer address is updated
     * @param newRedeemer The address of the new redeemer
     */
    event RedeemerUpdated(address newRedeemer);

    /**
     * @notice The OsToken minting and liquidating configuration values
     * @param liqThresholdPercent The liquidation threshold percent used to calculate health factor for OsToken position
     * @param liqBonusPercent The minimal bonus percent that liquidator earns on OsToken position liquidation
     * @param ltvPercent The percent used to calculate how much user can mint OsToken shares
     */
    struct Config {
        uint128 liqBonusPercent;
        uint64 liqThresholdPercent;
        uint64 ltvPercent;
    }

    /**
     * @notice The address of the OsToken redeemer
     * @return The address of the redeemer
     */
    function redeemer() external view returns (address);

    /**
     * @notice Returns the OsToken minting and liquidating configuration values for the vault
     * @param vault The address of the vault to get the config for
     * @return config The OsToken config for the vault
     */
    function getConfig(address vault) external view returns (Config memory config);

    /**
     * @notice Sets the OsToken redeemer address. Can only be called by the owner.
     * @param newRedeemer The address of the new redeemer
     */
    function setRedeemer(address newRedeemer) external;

    /**
     * @notice Updates the OsToken minting and liquidating configuration values. Can only be called by the owner.
     * @param vault The address of the vault. Set to zero address to update the default config.
     * @param config The new OsToken configuration
     */
    function updateConfig(address vault, Config memory config) external;
}

// ============================================================
// FILE: contracts/interfaces/IOsTokenVaultController.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.22;

/**
 * @title IOsTokenVaultController
 * @author StakeWise
 * @notice Defines the interface for the OsTokenVaultController contract
 */
interface IOsTokenVaultController {
    /**
     * @notice Event emitted on minting shares
     * @param vault The address of the Vault
     * @param receiver The address that received the shares
     * @param assets The number of assets collateralized
     * @param shares The number of tokens the owner received
     */
    event Mint(address indexed vault, address indexed receiver, uint256 assets, uint256 shares);

    /**
     * @notice Event emitted on burning shares
     * @param vault The address of the Vault
     * @param owner The address that owns the shares
     * @param assets The total number of assets withdrawn
     * @param shares The total number of shares burned
     */
    event Burn(address indexed vault, address indexed owner, uint256 assets, uint256 shares);

    /**
     * @notice Event emitted on state update
     * @param profitAccrued The profit accrued since the last update
     * @param treasuryShares The number of shares minted for the treasury
     * @param treasuryAssets The number of assets minted for the treasury
     */
    event StateUpdated(uint256 profitAccrued, uint256 treasuryShares, uint256 treasuryAssets);

    /**
     * @notice Event emitted on capacity update
     * @param capacity The amount after which the OsToken stops accepting deposits
     */
    event CapacityUpdated(uint256 capacity);

    /**
     * @notice Event emitted on treasury address update
     * @param treasury The new treasury address
     */
    event TreasuryUpdated(address indexed treasury);

    /**
     * @notice Event emitted on fee percent update
     * @param feePercent The new fee percent
     */
    event FeePercentUpdated(uint16 feePercent);

    /**
     * @notice Event emitted on average reward per second update
     * @param avgRewardPerSecond The new average reward per second
     */
    event AvgRewardPerSecondUpdated(uint256 avgRewardPerSecond);

    /**
     * @notice Event emitted on keeper address update
     * @param keeper The new keeper address
     */
    event KeeperUpdated(address keeper);

    /**
     * @notice The OsToken capacity
     * @return The amount after which the OsToken stops accepting deposits
     */
    function capacity() external view returns (uint256);

    /**
     * @notice The DAO treasury address that receives OsToken fees
     * @return The address of the treasury
     */
    function treasury() external view returns (address);

    /**
     * @notice The fee percent (multiplied by 100)
     * @return The fee percent applied by the OsToken on the rewards
     */
    function feePercent() external view returns (uint64);

    /**
     * @notice The address that can update avgRewardPerSecond
     * @return The address of the keeper contract
     */
    function keeper() external view returns (address);

    /**
     * @notice The average reward per second used to mint OsToken rewards
     * @return The average reward per second earned by the Vaults
     */
    function avgRewardPerSecond() external view returns (uint256);

    /**
     * @notice The fee per share used for calculating the fee for every position
     * @return The cumulative fee per share
     */
    function cumulativeFeePerShare() external view returns (uint256);

    /**
     * @notice The total number of shares controlled by the OsToken
     * @return The total number of shares
     */
    function totalShares() external view returns (uint256);

    /**
     * @notice Total assets controlled by the OsToken
     * @return The total amount of the underlying asset that is "managed" by OsToken
     */
    function totalAssets() external view returns (uint256);

    /**
     * @notice Converts assets to shares
     * @param assets The amount of assets to convert to shares
     * @return shares The amount of OsToken shares obtained when exchanging with the amount of assets provided
     */
    function convertToShares(uint256 assets) external view returns (uint256 shares);

    /**
     * @notice Converts shares to assets
     * @param shares The amount of shares to convert to assets
     * @return assets The amount of assets obtained when exchanging with the amount of OsToken shares provided
     */
    function convertToAssets(uint256 shares) external view returns (uint256 assets);

    /**
     * @notice Updates rewards and treasury fee checkpoint for the OsToken
     */
    function updateState() external;

    /**
     * @notice Mint OsToken shares. Can only be called by the registered vault.
     * @param receiver The address that will receive the shares
     * @param shares The amount of shares to mint
     * @return assets The amount of assets minted
     */
    function mintShares(address receiver, uint256 shares) external returns (uint256 assets);

    /**
     * @notice Burn shares for withdrawn assets. Can only be called by the registered vault.
     * @param owner The address that owns the shares
     * @param shares The amount of shares to burn
     * @return assets The amount of assets withdrawn
     */
    function burnShares(address owner, uint256 shares) external returns (uint256 assets);

    /**
     * @notice Update treasury address. Can only be called by the owner.
     * @param _treasury The new treasury address
     */
    function setTreasury(address _treasury) external;

    /**
     * @notice Update capacity. Can only be called by the owner.
     * @param _capacity The amount after which the OsToken stops accepting deposits
     */
    function setCapacity(uint256 _capacity) external;

    /**
     * @notice Update fee percent. Can only be called by the owner. Cannot be larger than 10 000 (100%).
     * @param _feePercent The new fee percent
     */
    function setFeePercent(uint16 _feePercent) external;

    /**
     * @notice Update keeper address. Can only be called by the owner.
     * @param _keeper The new keeper address
     */
    function setKeeper(address _keeper) external;

    /**
     * @notice Updates average reward per second. Can only be called by the keeper.
     * @param _avgRewardPerSecond The new average reward per second
     */
    function setAvgRewardPerSecond(uint256 _avgRewardPerSecond) external;
}

// ============================================================
// FILE: contracts/interfaces/IOsTokenVaultEscrow.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.22;

import {IMulticall} from "./IMulticall.sol";

/**
 * @title IOsTokenVaultEscrow
 * @author StakeWise
 * @notice Interface for OsTokenVaultEscrow contract
 */
interface IOsTokenVaultEscrow is IMulticall {
    /**
     * @notice Struct to store the escrow position details
     * @param owner The address of the assets owner
     * @param exitedAssets The amount of assets exited and ready to be claimed
     * @param osTokenShares The amount of osToken shares
     * @param cumulativeFeePerShare The cumulative fee per share used to calculate the osToken fee
     */
    struct Position {
        address owner;
        uint96 exitedAssets;
        uint128 osTokenShares;
        uint128 cumulativeFeePerShare;
    }

    /**
     * @notice Event emitted on position creation
     * @param vault The address of the vault
     * @param exitPositionTicket The exit position ticket
     * @param owner The address of the assets owner
     * @param osTokenShares The amount of osToken shares
     * @param cumulativeFeePerShare The cumulative fee per share used to calculate the osToken fee
     */
    event PositionCreated(
        address indexed vault,
        uint256 indexed exitPositionTicket,
        address owner,
        uint256 osTokenShares,
        uint256 cumulativeFeePerShare
    );

    /**
     * @notice Event emitted on assets exit processing
     * @param vault The address of the vault
     * @param caller The address of the caller
     * @param exitPositionTicket The exit position ticket
     * @param exitedAssets The amount of exited assets claimed
     */
    event ExitedAssetsProcessed(
        address indexed vault, address indexed caller, uint256 indexed exitPositionTicket, uint256 exitedAssets
    );

    /**
     * @notice Event emitted on osToken liquidation
     * @param caller The address of the function caller
     * @param vault The address of the vault
     * @param exitPositionTicket The exit position ticket
     * @param receiver The address of the receiver of the liquidated assets
     * @param osTokenShares The amount of osToken shares to liquidate
     * @param receivedAssets The amount of assets received
     */
    event OsTokenLiquidated(
        address indexed caller,
        address indexed vault,
        uint256 indexed exitPositionTicket,
        address receiver,
        uint256 osTokenShares,
        uint256 receivedAssets
    );

    /**
     * @notice Event emitted on osToken redemption
     * @param caller The address of the function caller
     * @param vault The address of the vault
     * @param exitPositionTicket The exit position ticket
     * @param receiver The address of the receiver of the redeemed assets
     * @param osTokenShares The amount of osToken shares to redeem
     * @param receivedAssets The amount of assets received
     */
    event OsTokenRedeemed(
        address indexed caller,
        address indexed vault,
        uint256 indexed exitPositionTicket,
        address receiver,
        uint256 osTokenShares,
        uint256 receivedAssets
    );

    /**
     * @notice Event emitted on exited assets claim
     * @param receiver The address of the receiver of the exited assets
     * @param vault The address of the vault
     * @param exitPositionTicket The exit position ticket
     * @param osTokenShares The amount of osToken shares burned
     * @param assets The amount of assets claimed
     */
    event ExitedAssetsClaimed(
        address indexed receiver,
        address indexed vault,
        uint256 indexed exitPositionTicket,
        uint256 osTokenShares,
        uint256 assets
    );

    /**
     * @notice Event emitted on liquidation configuration update
     * @param liqThresholdPercent The liquidation threshold percent
     * @param liqBonusPercent The liquidation bonus percent
     */
    event LiqConfigUpdated(uint64 liqThresholdPercent, uint256 liqBonusPercent);

    /**
     * @notice Event emitted on authenticator update
     * @param newAuthenticator The address of the new authenticator
     */
    event AuthenticatorUpdated(address newAuthenticator);

    /**
     * @notice The liquidation threshold percent
     * @return The liquidation threshold percent starting from which the osToken shares can be liquidated
     */
    function liqThresholdPercent() external view returns (uint64);

    /**
     * @notice The liquidation bonus percent
     * @return The liquidation bonus percent paid for liquidating the osToken shares
     */
    function liqBonusPercent() external view returns (uint256);

    /**
     * @notice The address of the authenticator
     * @return The address of the authenticator contract
     */
    function authenticator() external view returns (address);

    /**
     * @notice Get the position details
     * @param vault The address of the vault
     * @param positionTicket The exit position ticket
     * @return owner The address of the assets owner
     * @return exitedAssets The amount of assets exited and ready to be claimed
     * @return osTokenShares The amount of osToken shares
     */
    function getPosition(address vault, uint256 positionTicket) external view returns (address, uint256, uint256);

    /**
     * @notice Registers the new escrow position
     * @param owner The address of the exited assets owner
     * @param exitPositionTicket The exit position ticket
     * @param osTokenShares The amount of osToken shares
     * @param cumulativeFeePerShare The cumulative fee per share used to calculate the osToken fee
     */
    function register(address owner, uint256 exitPositionTicket, uint256 osTokenShares, uint256 cumulativeFeePerShare)
        external;

    /**
     * @notice Claims exited assets from the vault to the escrow
     * @param vault The address of the vault
     * @param exitPositionTicket The exit position ticket
     * @param timestamp The timestamp of the exit
     * @param exitQueueIndex The index of the exit in the queue
     */
    function processExitedAssets(address vault, uint256 exitPositionTicket, uint256 timestamp, uint256 exitQueueIndex)
        external;

    /**
     * @notice Claims the exited assets from the escrow to the owner. Can only be called by the position owner.
     * @param vault The address of the vault
     * @param exitPositionTicket The exit position ticket
     * @param osTokenShares The amount of osToken shares to burn
     * @return claimedAssets The amount of assets claimed
     */
    function claimExitedAssets(address vault, uint256 exitPositionTicket, uint256 osTokenShares)
        external
        returns (uint256 claimedAssets);

    /**
     * @notice Liquidates the osToken shares
     * @param vault The address of the vault
     * @param exitPositionTicket The exit position ticket
     * @param osTokenShares The amount of osToken shares to liquidate
     * @param receiver The address of the receiver of the liquidated assets
     */
    function liquidateOsToken(address vault, uint256 exitPositionTicket, uint256 osTokenShares, address receiver)
        external;

    /**
     * @notice Redeems the osToken shares. Can only be called by the osToken redeemer.
     * @param vault The address of the vault
     * @param exitPositionTicket The exit position ticket
     * @param osTokenShares The amount of osToken shares to redeem
     * @param receiver The address of the receiver of the redeemed assets
     */
    function redeemOsToken(address vault, uint256 exitPositionTicket, uint256 osTokenShares, address receiver)
        external;

    /**
     * @notice Updates the authenticator. Can only be called by the owner.
     * @param newAuthenticator The address of the new authenticator
     */
    function setAuthenticator(address newAuthenticator) external;

    /**
     * @notice Updates the liquidation configuration. Can only be called by the owner.
     * @param _liqThresholdPercent The liquidation threshold percent
     * @param _liqBonusPercent The liquidation bonus percent
     */
    function updateLiqConfig(uint64 _liqThresholdPercent, uint256 _liqBonusPercent) external;
}

// ============================================================
// FILE: contracts/interfaces/IOwnMevEscrow.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.22;

/**
 * @title IOwnMevEscrow
 * @author StakeWise
 * @notice Defines the interface for the OwnMevEscrow contract
 */
interface IOwnMevEscrow {
    /**
     * @notice Event emitted on received MEV
     * @param assets The amount of MEV assets received
     */
    event MevReceived(uint256 assets);

    /**
     * @notice Event emitted on harvest
     * @param assets The amount of assets withdrawn
     */
    event Harvested(uint256 assets);

    /**
     * @notice Vault address
     * @return The address of the vault that owns the escrow
     */
    function vault() external view returns (address payable);

    /**
     * @notice Withdraws MEV accumulated in the escrow. Can be called only by the Vault.
     * @dev IMPORTANT: because control is transferred to the Vault, care must be
     *    taken to not create reentrancy vulnerabilities. The Vault must follow the checks-effects-interactions pattern:
     *    https://docs.soliditylang.org/en/v0.8.22/security-considerations.html#use-the-checks-effects-interactions-pattern
     * @return assets The amount of assets withdrawn
     */
    function harvest() external returns (uint256 assets);
}

// ============================================================
// FILE: contracts/interfaces/ISharedMevEscrow.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.22;

/**
 * @title ISharedMevEscrow
 * @author StakeWise
 * @notice Defines the interface for the SharedMevEscrow contract
 */
interface ISharedMevEscrow {
    /**
     * @notice Event emitted on received MEV
     * @param assets The amount of MEV assets received
     */
    event MevReceived(uint256 assets);

    /**
     * @notice Event emitted on harvest
     * @param caller The function caller
     * @param assets The amount of assets withdrawn
     */
    event Harvested(address indexed caller, uint256 assets);

    /**
     * @notice Withdraws MEV accumulated in the escrow. Can be called only by the Vault.
     * @dev IMPORTANT: because control is transferred to the Vault, care must be
     *    taken to not create reentrancy vulnerabilities. The Vault must follow the checks-effects-interactions pattern:
     *    https://docs.soliditylang.org/en/v0.8.22/security-considerations.html#use-the-checks-effects-interactions-pattern
     * @param assets The amount of assets to withdraw
     */
    function harvest(uint256 assets) external;
}

// ============================================================
// FILE: contracts/interfaces/IValidatorsRegistry.sol
// ============================================================

// SPDX-License-Identifier: CC0-1.0

pragma solidity ^0.8.22;

/**
 * @title IValidatorsRegistry
 * @author Ethereum Foundation
 * @notice The validators deposit contract common interface
 */
interface IValidatorsRegistry {
    /// @notice A processed deposit event.
    event DepositEvent(bytes pubkey, bytes withdrawal_credentials, bytes amount, bytes signature, bytes index);

    /// @notice Query the current deposit root hash.
    /// @return The deposit root hash.
    function get_deposit_root() external view returns (bytes32);
}

// ============================================================
// FILE: contracts/interfaces/IVaultAdmin.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.22;

/**
 * @title IVaultState
 * @author StakeWise
 * @notice Defines the interface for the VaultAdmin contract
 */
interface IVaultAdmin {
    /**
     * @notice Event emitted on metadata ipfs hash update
     * @param caller The address of the function caller
     * @param metadataIpfsHash The new metadata IPFS hash
     */
    event MetadataUpdated(address indexed caller, string metadataIpfsHash);

    /**
     * @notice Event emitted on admin update
     * @param caller The address of the function caller
     * @param newAdmin The new admin address
     */
    event AdminUpdated(address indexed caller, address indexed newAdmin);

    /**
     * @notice The Vault admin
     * @return The address of the Vault admin
     */
    function admin() external view returns (address);

    /**
     * @notice Function for updating the metadata IPFS hash. Can only be called by Vault admin.
     * @param metadataIpfsHash The new metadata IPFS hash
     */
    function setMetadata(string calldata metadataIpfsHash) external;

    /**
     * @notice Function for updating the admin address. Can only be called by Vault current admin.
     * @param newAdmin The new admin address
     */
    function setAdmin(address newAdmin) external;
}

// ============================================================
// FILE: contracts/interfaces/IVaultEnterExit.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.22;

import {IVaultState} from "./IVaultState.sol";

/**
 * @title IVaultEnterExit
 * @author StakeWise
 * @notice Defines the interface for the VaultEnterExit contract
 */
interface IVaultEnterExit is IVaultState {
    /**
     * @notice Event emitted on deposit
     * @param caller The address that called the deposit function
     * @param receiver The address that received the shares
     * @param assets The number of assets deposited by the caller
     * @param shares The number of shares received
     * @param referrer The address of the referrer
     */
    event Deposited(address indexed caller, address indexed receiver, uint256 assets, uint256 shares, address referrer);

    /**
     * @notice Event emitted on redeem
     * @param owner The address that owns the shares
     * @param receiver The address that received withdrawn assets
     * @param assets The total number of withdrawn assets
     * @param shares The total number of withdrawn shares
     */
    event Redeemed(address indexed owner, address indexed receiver, uint256 assets, uint256 shares);

    /**
     * @notice Event emitted on shares added to the exit queue
     * @param owner The address that owns the shares
     * @param receiver The address that will receive withdrawn assets
     * @param positionTicket The exit queue ticket that was assigned to the position
     * @param shares The number of shares that queued for the exit
     */
    event ExitQueueEntered(address indexed owner, address indexed receiver, uint256 positionTicket, uint256 shares);

    /**
     * @notice Event emitted on shares added to the V2 exit queue (deprecated)
     * @param owner The address that owns the shares
     * @param receiver The address that will receive withdrawn assets
     * @param positionTicket The exit queue ticket that was assigned to the position
     * @param shares The number of shares that queued for the exit
     * @param assets The number of assets that queued for the exit
     */
    event V2ExitQueueEntered(
        address indexed owner, address indexed receiver, uint256 positionTicket, uint256 shares, uint256 assets
    );

    /**
     * @notice Event emitted on claim of the exited assets
     * @param receiver The address that has received withdrawn assets
     * @param prevPositionTicket The exit queue ticket received after the `enterExitQueue` call
     * @param newPositionTicket The new exit queue ticket in case not all the shares were withdrawn. Otherwise 0.
     * @param withdrawnAssets The total number of assets withdrawn
     */
    event ExitedAssetsClaimed(
        address indexed receiver, uint256 prevPositionTicket, uint256 newPositionTicket, uint256 withdrawnAssets
    );

    /**
     * @notice Locks shares to the exit queue. The shares continue earning rewards until they will be burned by the Vault.
     * @param shares The number of shares to lock
     * @param receiver The address that will receive assets upon withdrawal
     * @return positionTicket The position ticket of the exit queue. Returns uint256 max if no ticket created.
     */
    function enterExitQueue(uint256 shares, address receiver) external returns (uint256 positionTicket);

    /**
     * @notice Get the exit queue index to claim exited assets from
     * @param positionTicket The exit queue position ticket to get the index for
     * @return The exit queue index that should be used to claim exited assets.
     *         Returns -1 in case such index does not exist.
     */
    function getExitQueueIndex(uint256 positionTicket) external view returns (int256);

    /**
     * @notice Calculates the number of shares and assets that can be claimed from the exit queue.
     * @param receiver The address that will receive assets upon withdrawal
     * @param positionTicket The exit queue ticket received after the `enterExitQueue` call
     * @param timestamp The timestamp when the shares entered the exit queue
     * @param exitQueueIndex The exit queue index at which the shares were burned. It can be looked up by calling `getExitQueueIndex`.
     * @return leftTickets The number of tickets left in the queue
     * @return exitedTickets The number of tickets that have already exited
     * @return exitedAssets The number of assets that can be claimed
     */
    function calculateExitedAssets(address receiver, uint256 positionTicket, uint256 timestamp, uint256 exitQueueIndex)
        external
        view
        returns (uint256 leftTickets, uint256 exitedTickets, uint256 exitedAssets);

    /**
     * @notice Claims assets that were withdrawn by the Vault. It can be called only after the `enterExitQueue` call by the `receiver`.
     * @param positionTicket The exit queue ticket received after the `enterExitQueue` call
     * @param timestamp The timestamp when the assets entered the exit queue
     * @param exitQueueIndex The exit queue index at which the shares were burned.
     *        It can be looked up by calling `getExitQueueIndex`.
     */
    function claimExitedAssets(uint256 positionTicket, uint256 timestamp, uint256 exitQueueIndex) external;

    /**
     * @notice Rescue any assets that are not backing shares when the vault is not collateralized.
     * @dev Can be called only by the admin when the vault is not collateralized.
     */
    function rescueAssets() external;
}

// ============================================================
// FILE: contracts/interfaces/IVaultEthStaking.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.22;

import {IVaultState} from "./IVaultState.sol";
import {IVaultValidators} from "./IVaultValidators.sol";
import {IVaultEnterExit} from "./IVaultEnterExit.sol";
import {IKeeperRewards} from "./IKeeperRewards.sol";
import {IVaultMev} from "./IVaultMev.sol";

/**
 * @title IVaultEthStaking
 * @author StakeWise
 * @notice Defines the interface for the VaultEthStaking contract
 */
interface IVaultEthStaking is IVaultState, IVaultValidators, IVaultEnterExit, IVaultMev {
    /**
     * @notice Deposit ETH to the Vault
     * @param receiver The address that will receive Vault's shares
     * @param referrer The address of the referrer. Set to zero address if not used.
     * @return shares The number of shares minted
     */
    function deposit(address receiver, address referrer) external payable returns (uint256 shares);

    /**
     * @notice Used by MEV escrow to transfer ETH.
     */
    function receiveFromMevEscrow() external payable;

    /**
     * @notice Donate assets to the Vault. Must transfer ETH together with the call.
     */
    function donateAssets() external payable;

    /**
     * @notice Updates Vault state and deposits ETH to the Vault
     * @param receiver The address that will receive Vault's shares
     * @param referrer The address of the referrer. Set to zero address if not used.
     * @param harvestParams The parameters for harvesting Keeper rewards
     * @return shares The number of shares minted
     */
    function updateStateAndDeposit(
        address receiver,
        address referrer,
        IKeeperRewards.HarvestParams calldata harvestParams
    ) external payable returns (uint256 shares);
}

// ============================================================
// FILE: contracts/interfaces/IVaultFee.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.22;

import {IVaultAdmin} from "./IVaultAdmin.sol";

/**
 * @title IVaultFee
 * @author StakeWise
 * @notice Defines the interface for the VaultFee contract
 */
interface IVaultFee is IVaultAdmin {
    /**
     * @notice Event emitted on fee recipient update
     * @param caller The address of the function caller
     * @param feeRecipient The address of the new fee recipient
     */
    event FeeRecipientUpdated(address indexed caller, address indexed feeRecipient);

    /**
     * @notice Event emitted on fee percent update
     * @param caller The address of the function caller
     * @param feePercent The new fee percent
     */
    event FeePercentUpdated(address indexed caller, uint16 feePercent);

    /**
     * @notice The Vault's fee recipient
     * @return The address of the Vault's fee recipient
     */
    function feeRecipient() external view returns (address);

    /**
     * @notice The Vault's fee percent in BPS
     * @return The fee percent applied by the Vault on the rewards
     */
    function feePercent() external view returns (uint16);

    /**
     * @notice Function for updating the fee recipient address. Can only be called by the admin.
     * @param _feeRecipient The address of the new fee recipient
     */
    function setFeeRecipient(address _feeRecipient) external;

    /**
     * @notice Function for updating the fee percent. Can only be called by the admin.
     * @param _feePercent The new fee percent
     */
    function setFeePercent(uint16 _feePercent) external;
}

// ============================================================
// FILE: contracts/interfaces/IVaultMev.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.22;

import {IVaultState} from "./IVaultState.sol";

/**
 * @title IVaultMev
 * @author StakeWise
 * @notice Common interface for the VaultMev contracts
 */
interface IVaultMev is IVaultState {
    /**
     * @notice The contract that accumulates MEV rewards
     * @return The MEV escrow contract address
     */
    function mevEscrow() external view returns (address);
}

// ============================================================
// FILE: contracts/interfaces/IVaultOsToken.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.22;

import {IVaultState} from "./IVaultState.sol";
import {IVaultEnterExit} from "./IVaultEnterExit.sol";

/**
 * @title IVaultOsToken
 * @author StakeWise
 * @notice Defines the interface for the VaultOsToken contract
 */
interface IVaultOsToken is IVaultState, IVaultEnterExit {
    /**
     * @notice Event emitted on minting osToken
     * @param caller The address of the function caller
     * @param receiver The address of the osToken receiver
     * @param assets The amount of minted assets
     * @param shares The amount of minted shares
     * @param referrer The address of the referrer
     */
    event OsTokenMinted(address indexed caller, address receiver, uint256 assets, uint256 shares, address referrer);

    /**
     * @notice Event emitted on burning OsToken
     * @param caller The address of the function caller
     * @param assets The amount of burned assets
     * @param shares The amount of burned shares
     */
    event OsTokenBurned(address indexed caller, uint256 assets, uint256 shares);

    /**
     * @notice Event emitted on osToken position liquidation
     * @param caller The address of the function caller
     * @param user The address of the user liquidated
     * @param receiver The address of the receiver of the liquidated assets
     * @param osTokenShares The amount of osToken shares to liquidate
     * @param shares The amount of vault shares burned
     * @param receivedAssets The amount of assets received
     */
    event OsTokenLiquidated(
        address indexed caller,
        address indexed user,
        address receiver,
        uint256 osTokenShares,
        uint256 shares,
        uint256 receivedAssets
    );

    /**
     * @notice Event emitted on osToken position redemption
     * @param caller The address of the function caller
     * @param user The address of the position owner to redeem from
     * @param receiver The address of the receiver of the redeemed assets
     * @param osTokenShares The amount of osToken shares to redeem
     * @param shares The amount of vault shares burned
     * @param assets The amount of assets received
     */
    event OsTokenRedeemed(
        address indexed caller,
        address indexed user,
        address receiver,
        uint256 osTokenShares,
        uint256 shares,
        uint256 assets
    );

    /**
     * @notice Struct of osToken position
     * @param shares The total number of minted osToken shares. Will increase based on the treasury fee.
     * @param cumulativeFeePerShare The cumulative fee per share
     */
    struct OsTokenPosition {
        uint128 shares;
        uint128 cumulativeFeePerShare;
    }

    /**
     * @notice Get total amount of minted osToken shares
     * @param user The address of the user
     * @return shares The number of minted osToken shares
     */
    function osTokenPositions(address user) external view returns (uint128 shares);

    /**
     * @notice Mints OsToken shares
     * @param receiver The address that will receive the minted OsToken shares
     * @param osTokenShares The number of OsToken shares to mint to the receiver. To mint the maximum amount of shares, use 2^256 - 1.
     * @param referrer The address of the referrer
     * @return assets The number of assets minted to the receiver
     */
    function mintOsToken(address receiver, uint256 osTokenShares, address referrer) external returns (uint256 assets);

    /**
     * @notice Burns osToken shares
     * @param osTokenShares The number of shares to burn
     * @return assets The number of assets burned
     */
    function burnOsToken(uint128 osTokenShares) external returns (uint256 assets);

    /**
     * @notice Liquidates a user position and returns the number of received assets.
     *         Can only be called when health factor is below 1 by the liquidator.
     * @param osTokenShares The number of shares to cover
     * @param owner The address of the position owner to liquidate
     * @param receiver The address of the receiver of the liquidated assets
     */
    function liquidateOsToken(uint256 osTokenShares, address owner, address receiver) external;

    /**
     * @notice Redeems osToken shares for assets. Can only be called when health factor is above redeemFromHealthFactor by the redeemer.
     * @param osTokenShares The number of osToken shares to redeem
     * @param owner The address of the position owner to redeem from
     * @param receiver The address of the receiver of the redeemed assets
     */
    function redeemOsToken(uint256 osTokenShares, address owner, address receiver) external;

    /**
     * @notice Transfers minted osToken shares to the OsTokenVaultEscrow contract, enters the exit queue for staked assets
     * @param osTokenShares The number of osToken shares to transfer
     * @return positionTicket The exit position ticket
     */
    function transferOsTokenPositionToEscrow(uint256 osTokenShares) external returns (uint256 positionTicket);
}

// ============================================================
// FILE: contracts/interfaces/IVaultsRegistry.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.22;

/**
 * @title IVaultsRegistry
 * @author StakeWise
 * @notice Defines the interface for the VaultsRegistry
 */
interface IVaultsRegistry {
    /**
     * @notice Event emitted on a Vault addition
     * @param caller The address that has added the Vault
     * @param vault The address of the added Vault
     */
    event VaultAdded(address indexed caller, address indexed vault);

    /**
     * @notice Event emitted on adding Vault implementation contract
     * @param impl The address of the new implementation contract
     */
    event VaultImplAdded(address indexed impl);

    /**
     * @notice Event emitted on removing Vault implementation contract
     * @param impl The address of the removed implementation contract
     */
    event VaultImplRemoved(address indexed impl);

    /**
     * @notice Event emitted on whitelisting the factory
     * @param factory The address of the whitelisted factory
     */
    event FactoryAdded(address indexed factory);

    /**
     * @notice Event emitted on removing the factory from the whitelist
     * @param factory The address of the factory removed from the whitelist
     */
    event FactoryRemoved(address indexed factory);

    /**
     * @notice Registered Vaults
     * @param vault The address of the vault to check whether it is registered
     * @return `true` for the registered Vault, `false` otherwise
     */
    function vaults(address vault) external view returns (bool);

    /**
     * @notice Registered Vault implementations
     * @param impl The address of the vault implementation
     * @return `true` for the registered implementation, `false` otherwise
     */
    function vaultImpls(address impl) external view returns (bool);

    /**
     * @notice Registered Factories
     * @param factory The address of the factory to check whether it is whitelisted
     * @return `true` for the whitelisted Factory, `false` otherwise
     */
    function factories(address factory) external view returns (bool);

    /**
     * @notice Function for adding Vault to the registry. Can only be called by the whitelisted Factory.
     * @param vault The address of the Vault to add
     */
    function addVault(address vault) external;

    /**
     * @notice Function for adding Vault implementation contract
     * @param newImpl The address of the new implementation contract
     */
    function addVaultImpl(address newImpl) external;

    /**
     * @notice Function for removing Vault implementation contract
     * @param impl The address of the removed implementation contract
     */
    function removeVaultImpl(address impl) external;

    /**
     * @notice Function for adding the factory to the whitelist
     * @param factory The address of the factory to add to the whitelist
     */
    function addFactory(address factory) external;

    /**
     * @notice Function for removing the factory from the whitelist
     * @param factory The address of the factory to remove from the whitelist
     */
    function removeFactory(address factory) external;

    /**
     * @notice Function for initializing the registry. Can only be called once during the deployment.
     * @param _owner The address of the owner of the contract
     */
    function initialize(address _owner) external;
}

// ============================================================
// FILE: contracts/interfaces/IVaultState.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.22;

import {IKeeperRewards} from "./IKeeperRewards.sol";
import {IVaultFee} from "./IVaultFee.sol";

/**
 * @title IVaultState
 * @author StakeWise
 * @notice Defines the interface for the VaultState contract
 */
interface IVaultState is IVaultFee {
    /**
     * @notice Event emitted on checkpoint creation
     * @param shares The number of burned shares
     * @param assets The amount of exited assets
     */
    event CheckpointCreated(uint256 shares, uint256 assets);

    /**
     * @notice Event emitted on minting fee recipient shares
     * @param receiver The address of the fee recipient
     * @param shares The number of minted shares
     * @param assets The amount of minted assets
     */
    event FeeSharesMinted(address receiver, uint256 shares, uint256 assets);

    /**
     * @notice Event emitted when exiting assets are penalized (deprecated)
     * @param penalty The total penalty amount
     */
    event ExitingAssetsPenalized(uint256 penalty);

    /**
     * @notice Event emitted when the assets are donated to the Vault
     * @param sender The address of the sender
     * @param assets The amount of donated assets
     */
    event AssetsDonated(address sender, uint256 assets);

    /**
     * @notice Total assets in the Vault
     * @return The total amount of the underlying asset that is "managed" by Vault
     */
    function totalAssets() external view returns (uint256);

    /**
     * @notice Function for retrieving total shares
     * @return The amount of shares in existence
     */
    function totalShares() external view returns (uint256);

    /**
     * @notice The Vault's capacity
     * @return The amount after which the Vault stops accepting deposits
     */
    function capacity() external view returns (uint256);

    /**
     * @notice Total assets available in the Vault. They can be staked or withdrawn.
     * @return The total amount of withdrawable assets
     */
    function withdrawableAssets() external view returns (uint256);

    /**
     * @notice Get exit queue data
     * @return queuedShares The number of shares in the exit queue
     * @return unclaimedAssets The amount of unclaimed assets in the exit queue
     * @return totalExitingTickets The total number of exiting tickets
     * @return totalExitingAssets The total amount of exiting assets
     * @return totalTickets The total number of tickets in the exit queue
     */
    function getExitQueueData()
        external
        view
        returns (
            uint128 queuedShares,
            uint128 unclaimedAssets,
            uint128 totalExitingTickets,
            uint128 totalExitingAssets,
            uint256 totalTickets
        );

    /**
     * @notice Returns the number of shares held by an account
     * @param account The account for which to look up the number of shares it has, i.e. its balance
     * @return The number of shares held by the account
     */
    function getShares(address account) external view returns (uint256);

    /**
     * @notice Converts assets to shares
     * @param assets The amount of assets to convert to shares
     * @return shares The amount of shares that the Vault would exchange for the amount of assets provided
     */
    function convertToShares(uint256 assets) external view returns (uint256 shares);

    /**
     * @notice Converts shares to assets
     * @param shares The amount of shares to convert to assets
     * @return assets The amount of assets that the Vault would exchange for the amount of shares provided
     */
    function convertToAssets(uint256 shares) external view returns (uint256 assets);

    /**
     * @notice Check whether state update is required
     * @return `true` if state update is required, `false` otherwise
     */
    function isStateUpdateRequired() external view returns (bool);

    /**
     * @notice Updates the total amount of assets in the Vault and its exit queue
     * @param harvestParams The parameters for harvesting Keeper rewards
     */
    function updateState(IKeeperRewards.HarvestParams calldata harvestParams) external;
}

// ============================================================
// FILE: contracts/interfaces/IVaultValidators.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.22;

import {IKeeperValidators} from "./IKeeperValidators.sol";
import {IVaultAdmin} from "./IVaultAdmin.sol";
import {IVaultState} from "./IVaultState.sol";

/**
 * @title IVaultValidators
 * @author StakeWise
 * @notice Defines the interface for VaultValidators contract
 */
interface IVaultValidators is IVaultAdmin, IVaultState {
    /**
     * @notice Event emitted on V1 validator registration
     * @param publicKey The public key of the validator that was registered
     */
    event ValidatorRegistered(bytes publicKey);

    /**
     * @notice Event emitted on V2 validator registration
     * @param publicKey The public key of the validator that was registered
     * @param amount The amount of assets that was registered
     */
    event V2ValidatorRegistered(bytes publicKey, uint256 amount);

    /**
     * @notice Event emitted on validator withdrawal
     * @param publicKey The public key of the validator that was withdrawn
     * @param amount The amount of assets that was withdrawn
     * @param feePaid The amount of fee that was paid
     */
    event ValidatorWithdrawalSubmitted(bytes publicKey, uint256 amount, uint256 feePaid);

    /**
     * @notice Event emitted on validator balance top-up
     * @param publicKey The public key of the validator that was funded
     * @param amount The amount of assets that was funded
     */
    event ValidatorFunded(bytes publicKey, uint256 amount);

    /**
     * @notice Event emitted on validators consolidation
     * @param fromPublicKey The public key of the validator that was consolidated
     * @param toPublicKey The public key of the validator that was consolidated to
     * @param feePaid The amount of fee that was paid
     */
    event ValidatorConsolidationSubmitted(bytes fromPublicKey, bytes toPublicKey, uint256 feePaid);

    /**
     * @notice Event emitted on keys manager address update (deprecated)
     * @param caller The address of the function caller
     * @param keysManager The address of the new keys manager
     */
    event KeysManagerUpdated(address indexed caller, address indexed keysManager);

    /**
     * @notice Event emitted on validators merkle tree root update (deprecated)
     * @param caller The address of the function caller
     * @param validatorsRoot The new validators merkle tree root
     */
    event ValidatorsRootUpdated(address indexed caller, bytes32 indexed validatorsRoot);

    /**
     * @notice Event emitted on validators manager address update
     * @param caller The address of the function caller
     * @param validatorsManager The address of the new validators manager
     */
    event ValidatorsManagerUpdated(address indexed caller, address indexed validatorsManager);

    /**
     * @notice The Vault validators manager address
     * @return The address that can register validators
     */
    function validatorsManager() external view returns (address);

    /**
     * @notice The nonce for the validators manager used for signing
     * @return The nonce for the validators manager
     */
    function validatorsManagerNonce() external view returns (uint256);

    /**
     * @notice Function for checking if the validator is tracked V2 validator
     * @param publicKeyHash The keccak256 hash of the public key of the validator
     * @return Whether the validator is tracked V2 validator
     */
    function v2Validators(bytes32 publicKeyHash) external view returns (bool);

    /**
     * @notice Function for funding single or multiple existing validators
     * @param validators The concatenated validators data
     * @param validatorsManagerSignature The optional signature from the validators manager
     */
    function fundValidators(bytes calldata validators, bytes calldata validatorsManagerSignature) external;

    /**
     * @notice Function for withdrawing single or multiple validators
     * @param validators The concatenated validators data
     * @param validatorsManagerSignature The optional signature from the validators manager
     */
    function withdrawValidators(bytes calldata validators, bytes calldata validatorsManagerSignature)
        external
        payable;

    /**
     * @notice Function for consolidating single or multiple validators
     * @param validators The concatenated validators data
     * @param validatorsManagerSignature The optional signature from the validators manager
     * @param oracleSignatures The optional signatures from the oracles
     */
    function consolidateValidators(
        bytes calldata validators,
        bytes calldata validatorsManagerSignature,
        bytes calldata oracleSignatures
    ) external payable;

    /**
     * @notice Function for registering single or multiple validators
     * @param keeperParams The parameters for getting approval from Keeper oracles
     * @param validatorsManagerSignature The optional signature from the validators manager
     */
    function registerValidators(
        IKeeperValidators.ApprovalParams calldata keeperParams,
        bytes calldata validatorsManagerSignature
    ) external;

    /**
     * @notice Function for updating the validators manager. Can only be called by the admin. Default is the DepositDataRegistry contract.
     * @param _validatorsManager The new validators manager address
     */
    function setValidatorsManager(address _validatorsManager) external;
}

// ============================================================
// FILE: contracts/interfaces/IVaultVersion.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.22;

import {IERC1822Proxiable} from "@openzeppelin/contracts/interfaces/draft-IERC1822.sol";
import {IVaultAdmin} from "./IVaultAdmin.sol";

/**
 * @title IVaultVersion
 * @author StakeWise
 * @notice Defines the interface for VaultVersion contract
 */
interface IVaultVersion is IERC1822Proxiable, IVaultAdmin {
    /**
     * @notice Vault Unique Identifier
     * @return The unique identifier of the Vault
     */
    function vaultId() external pure returns (bytes32);

    /**
     * @notice Version
     * @return The version of the Vault implementation contract
     */
    function version() external pure returns (uint8);

    /**
     * @notice Implementation
     * @return The address of the Vault implementation contract
     */
    function implementation() external view returns (address);
}

// ============================================================
// FILE: contracts/libraries/EIP712Utils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.22;

/**
 * @title EIP712Utils
 * @author StakeWise
 * @notice Includes functionality for calculating EIP712 hashes
 */
library EIP712Utils {
    bytes32 private constant _domainTypeHash =
        keccak256("EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)");
    bytes32 private constant _versionHash = keccak256("1");

    /**
     * @notice Computes the hash of the EIP712 typed data
     * @dev This function is used to compute the hash of the EIP712 typed data
     * @param name The name of the domain
     * @param verifyingContract The address of the verifying contract
     * @return The hash of the EIP712 typed data
     */
    function computeDomainSeparator(string memory name, address verifyingContract) external view returns (bytes32) {
        return keccak256(
            abi.encode(_domainTypeHash, keccak256(bytes(name)), _versionHash, block.chainid, verifyingContract)
        );
    }
}

// ============================================================
// FILE: contracts/libraries/Errors.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.22;

/**
 * @title Errors
 * @author StakeWise
 * @notice Contains all the custom errors
 */
library Errors {
    error AccessDenied();
    error InvalidShares();
    error InvalidAssets();
    error ZeroAddress();
    error CapacityExceeded();
    error InvalidCapacity();
    error InvalidSecurityDeposit();
    error InvalidFeeRecipient();
    error InvalidFeePercent();
    error NotHarvested();
    error NotCollateralized();
    error Collateralized();
    error InvalidProof();
    error LowLtv();
    error InvalidPosition();
    error InvalidHealthFactor();
    error InvalidReceivedAssets();
    error InvalidTokenMeta();
    error UpgradeFailed();
    error InvalidValidators();
    error DeadlineExpired();
    error PermitInvalidSigner();
    error InvalidValidatorsRegistryRoot();
    error InvalidVault();
    error AlreadyAdded();
    error AlreadyRemoved();
    error InvalidOracles();
    error NotEnoughSignatures();
    error InvalidOracle();
    error TooEarlyUpdate();
    error InvalidAvgRewardPerSecond();
    error InvalidRewardsRoot();
    error HarvestFailed();
    error LiquidationDisabled();
    error InvalidLiqThresholdPercent();
    error InvalidLiqBonusPercent();
    error InvalidLtvPercent();
    error InvalidCheckpointIndex();
    error InvalidCheckpointValue();
    error MaxOraclesExceeded();
    error ExitRequestNotProcessed();
    error ValueNotChanged();
    error FlashLoanFailed();
    error CannotTopUpV1Validators();
    error InvalidSignatures();
    error EmptySubVaults();
    error EjectingVaultNotFound();
    error EjectingVault();
    error RepeatedEjectingVault();
    error UnclaimedAssets();
    error InvalidCurator();
    error RewardsNonceIsHigher();
    error InvalidRedeemablePositions();
    error RedeemablePositionsProposed();
    error InvalidDelay();
}

// ============================================================
// FILE: contracts/libraries/ExitQueue.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.22;

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import {Errors} from "./Errors.sol";

/**
 * @title ExitQueue
 * @author StakeWise
 * @notice ExitQueue represent checkpoints of burned shares and exited assets
 */
library ExitQueue {
    /**
     * @notice A struct containing checkpoint data
     * @param totalTickets The cumulative number of tickets (shares) exited
     * @param exitedAssets The number of assets that exited in this checkpoint
     */
    struct Checkpoint {
        uint160 totalTickets;
        uint96 exitedAssets;
    }

    /**
     * @notice A struct containing the history of checkpoints data
     * @param checkpoints An array of checkpoints
     */
    struct History {
        Checkpoint[] checkpoints;
    }

    /**
     * @notice Get the latest checkpoint total tickets
     * @param self An array containing checkpoints
     * @return The current total tickets or zero if there are no checkpoints
     */
    function getLatestTotalTickets(History storage self) internal view returns (uint256) {
        uint256 pos = self.checkpoints.length;
        unchecked {
            // cannot underflow as subtraction happens in case pos > 0
            return pos == 0 ? 0 : _unsafeAccess(self.checkpoints, pos - 1).totalTickets;
        }
    }

    /**
     * @notice Get checkpoint index for the burned shares
     * @param self An array containing checkpoints
     * @param positionTicket The position ticket to search the closest checkpoint for
     * @return The checkpoint index or the length of checkpoints array in case there is no such
     */
    function getCheckpointIndex(History storage self, uint256 positionTicket) external view returns (uint256) {
        uint256 high = self.checkpoints.length;
        uint256 low;
        while (low < high) {
            uint256 mid = Math.average(low, high);
            if (_unsafeAccess(self.checkpoints, mid).totalTickets > positionTicket) {
                high = mid;
            } else {
                unchecked {
                    // cannot underflow as mid < high
                    low = mid + 1;
                }
            }
        }
        return high;
    }

    /**
     * @notice Calculates burned shares and exited assets
     * @param self An array containing checkpoints
     * @param checkpointIdx The index of the checkpoint to start calculating from
     * @param positionTicket The position ticket to start calculating exited assets from
     * @param positionShares The number of shares to calculate assets for
     * @return burnedShares The number of shares burned
     * @return exitedAssets The number of assets exited
     */
    function calculateExitedAssets(
        History storage self,
        uint256 checkpointIdx,
        uint256 positionTicket,
        uint256 positionShares
    ) external view returns (uint256 burnedShares, uint256 exitedAssets) {
        uint256 length = self.checkpoints.length;
        // there are no exited assets for such checkpoint index or no shares to burn
        if (checkpointIdx >= length || positionShares == 0) return (0, 0);

        // previous total tickets for calculating how much shares were burned for the period
        uint256 prevTotalTickets;
        unchecked {
            // cannot underflow as subtraction happens in case checkpointIdx > 0
            prevTotalTickets = checkpointIdx == 0 ? 0 : _unsafeAccess(self.checkpoints, checkpointIdx - 1).totalTickets;
        }

        // current total tickets for calculating assets per burned share
        // can be used with _unsafeAccess as checkpointIdx < length
        Checkpoint memory checkpoint = _unsafeAccess(self.checkpoints, checkpointIdx);
        uint256 currTotalTickets = checkpoint.totalTickets;
        uint256 checkpointAssets = checkpoint.exitedAssets;
        // check whether position ticket is in [prevTotalTickets, currTotalTickets) range
        if (positionTicket < prevTotalTickets || currTotalTickets <= positionTicket) {
            revert Errors.InvalidCheckpointIndex();
        }

        if (currTotalTickets > 1 && checkpointAssets == 0 && checkpointIdx + 1 < length) {
            // only single checkpoint created during V2 -> V3 migration can pass this if
            checkpoint = _unsafeAccess(self.checkpoints, checkpointIdx + 1);
            uint256 totalShares = checkpoint.totalTickets - currTotalTickets;
            if (positionShares > totalShares) {
                revert Errors.InvalidShares();
            }
            return (positionShares, Math.mulDiv(positionShares, checkpoint.exitedAssets, totalShares));
        }

        // calculate amount of available shares that will be updated while iterating over checkpoints
        uint256 availableShares;
        unchecked {
            // cannot underflow as positionTicket < currTotalTickets
            availableShares = currTotalTickets - positionTicket;
        }

        // accumulate assets until the number of required shares is collected
        while (true) {
            unchecked {
                // cannot underflow as prevTotalTickets <= positionTicket
                uint256 checkpointShares = currTotalTickets - prevTotalTickets;
                // cannot underflow as positionShares > burnedShares while in the loop
                uint256 sharesDelta = Math.min(availableShares, positionShares - burnedShares);

                // cannot overflow as it is capped with underlying asset total supply
                burnedShares += sharesDelta;
                exitedAssets += Math.mulDiv(sharesDelta, checkpointAssets, checkpointShares);

                // cannot overflow as checkpoints are created max once per day
                checkpointIdx++;
            }

            // stop when required shares collected or reached end of checkpoints list
            if (positionShares <= burnedShares || checkpointIdx >= length) {
                return (burnedShares, exitedAssets);
            }

            // take next checkpoint
            prevTotalTickets = currTotalTickets;
            // can use _unsafeAccess as checkpointIdx < length is checked above
            checkpoint = _unsafeAccess(self.checkpoints, checkpointIdx);
            currTotalTickets = checkpoint.totalTickets;
            checkpointAssets = checkpoint.exitedAssets;

            unchecked {
                // cannot underflow as every next checkpoint total tickets is larger than previous
                availableShares = currTotalTickets - prevTotalTickets;
            }
        }
    }

    /**
     * @notice Pushes a new checkpoint onto a History
     * @param self An array containing checkpoints
     * @param shares The number of shares to add to the latest checkpoint
     * @param assets The number of assets that were exited for this checkpoint
     */
    function push(History storage self, uint256 shares, uint256 assets) internal {
        if (shares == 0) revert Errors.InvalidCheckpointValue();
        Checkpoint memory checkpoint = Checkpoint({
            totalTickets: SafeCast.toUint160(getLatestTotalTickets(self) + shares),
            exitedAssets: SafeCast.toUint96(assets)
        });
        self.checkpoints.push(checkpoint);
    }

    function _unsafeAccess(Checkpoint[] storage self, uint256 pos) private pure returns (Checkpoint storage result) {
        assembly {
            mstore(0, self.slot)
            result.slot := add(keccak256(0, 0x20), pos)
        }
    }
}

// ============================================================
// FILE: contracts/libraries/OsTokenUtils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.22;

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IOsTokenConfig} from "../interfaces/IOsTokenConfig.sol";
import {IOsTokenVaultController} from "../interfaces/IOsTokenVaultController.sol";
import {Errors} from "./Errors.sol";

/**
 * @title OsTokenUtils
 * @author StakeWise
 * @notice Includes functionality for handling osToken redemptions
 */
library OsTokenUtils {
    uint256 private constant _wad = 1e18;
    uint256 private constant _hfLiqThreshold = 1e18;
    uint256 private constant _maxPercent = 1e18;
    uint256 private constant _disabledLiqThreshold = type(uint64).max;

    /**
     * @dev Struct for storing redemption data
     * @param mintedAssets The amount of minted assets
     * @param depositedAssets The amount of deposited assets
     * @param redeemedOsTokenShares The amount of redeemed osToken shares
     * @param availableAssets The amount of available assets
     * @param isLiquidation Whether the redemption is a liquidation
     */
    struct RedemptionData {
        uint256 mintedAssets;
        uint256 depositedAssets;
        uint256 redeemedOsTokenShares;
        uint256 availableAssets;
        bool isLiquidation;
    }

    /**
     * @dev Calculates the amount of received assets during osToken redemption
     * @param osTokenConfig The address of the osToken config contract
     * @param osTokenVaultController The address of the osToken vault controller contract
     * @param data The redemption data
     * @return receivedAssets The amount of received assets
     */
    function calculateReceivedAssets(
        IOsTokenConfig osTokenConfig,
        IOsTokenVaultController osTokenVaultController,
        RedemptionData memory data
    ) external view returns (uint256 receivedAssets) {
        // SLOAD to memory
        IOsTokenConfig.Config memory config = osTokenConfig.getConfig(address(this));

        // calculate received assets
        if (data.isLiquidation) {
            // liquidations are only allowed if the liquidation threshold is not disabled
            if (config.liqThresholdPercent == _disabledLiqThreshold) {
                revert Errors.LiquidationDisabled();
            }
            // check health factor violation in case of liquidation
            if (
                Math.mulDiv(data.depositedAssets * _wad, config.liqThresholdPercent, data.mintedAssets * _maxPercent)
                    >= _hfLiqThreshold
            ) {
                revert Errors.InvalidHealthFactor();
            }
            receivedAssets = Math.mulDiv(
                osTokenVaultController.convertToAssets(data.redeemedOsTokenShares), config.liqBonusPercent, _maxPercent
            );
        } else {
            receivedAssets = osTokenVaultController.convertToAssets(data.redeemedOsTokenShares);
        }

        // check whether received assets are valid
        if (receivedAssets > data.depositedAssets || receivedAssets > data.availableAssets) {
            revert Errors.InvalidReceivedAssets();
        }

        return receivedAssets;
    }
}

// ============================================================
// FILE: contracts/libraries/ValidatorUtils.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.22;

import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {MessageHashUtils} from "@openzeppelin/contracts/utils/cryptography/MessageHashUtils.sol";
import {SignatureChecker} from "@openzeppelin/contracts/utils/cryptography/SignatureChecker.sol";
import {IVaultValidators} from "../interfaces/IVaultValidators.sol";
import {Errors} from "./Errors.sol";

/**
 * @title ValidatorUtils
 * @author StakeWise
 * @notice Includes functionality for managing the validators
 */
library ValidatorUtils {
    bytes32 private constant _validatorsManagerTypeHash =
        keccak256("VaultValidators(bytes32 validatorsRegistryRoot,bytes validators)");
    uint256 private constant _validatorV1DepositLength = 176;
    uint256 private constant _validatorV2DepositLength = 184;
    uint256 private constant _validatorWithdrawalLength = 56;
    uint256 private constant _validatorConsolidationLength = 96;
    uint256 private constant _validatorMinEffectiveBalance = 32 ether;
    uint256 private constant _validatorMaxEffectiveBalance = 2048 ether;

    /*
    * @dev Struct to hold the validator registration data
    * @param publicKey The public key of the validator
    * @param signature The signature of the validator
    * @param withdrawalCredentials The withdrawal credentials of the validator
    * @param depositDataRoot The deposit data root of the validator
    * @param depositAmount The deposit amount of the validator
    */
    struct ValidatorDeposit {
        bytes publicKey;
        bytes signature;
        bytes withdrawalCredentials;
        bytes32 depositDataRoot;
        uint256 depositAmount;
    }

    /**
     * @dev Function to check if the validator signature is valid
     * @param nonce The nonce of the validator
     * @param domainSeparator The domain separator of the validator
     * @param validatorsManager The address of the validators manager
     * @param validators The validators data
     * @param signature The signature of the validator
     * @return Whether the signature is valid
     */
    function isValidManagerSignature(
        bytes32 nonce,
        bytes32 domainSeparator,
        address validatorsManager,
        bytes calldata validators,
        bytes calldata signature
    ) external view returns (bool) {
        bytes32 messageHash = MessageHashUtils.toTypedDataHash(
            domainSeparator, keccak256(abi.encode(_validatorsManagerTypeHash, nonce, keccak256(validators)))
        );
        return SignatureChecker.isValidSignatureNow(validatorsManager, messageHash, signature);
    }

    /**
     * @dev Function to get the validator registration data
     * @param validator The validator data
     * @param isV1Validator Whether the validator is a V1 validator
     * @return validatorDeposit The validator registration data
     */
    function getValidatorDeposit(bytes calldata validator, bool isV1Validator)
        internal
        view
        returns (ValidatorDeposit memory validatorDeposit)
    {
        validatorDeposit.publicKey = validator[:48];
        validatorDeposit.signature = validator[48:144];
        validatorDeposit.depositDataRoot = bytes32(validator[144:176]);

        // get the deposit amount and withdrawal credentials prefix
        bytes1 withdrawalCredsPrefix;
        if (isV1Validator) {
            withdrawalCredsPrefix = 0x01;
            validatorDeposit.depositAmount = _validatorMinEffectiveBalance;
        } else {
            withdrawalCredsPrefix = 0x02;
            // extract amount from data, convert gwei to wei by multiplying by 1 gwei
            validatorDeposit.depositAmount = (uint256(uint64(bytes8(validator[176:184]))) * 1 gwei);
        }
        validatorDeposit.withdrawalCredentials = abi.encodePacked(withdrawalCredsPrefix, bytes11(0x0), address(this));
    }

    /**
     * @dev Function to get the type of validators
     * @param validatorsLength The length of the validators data
     * @return isV1Validators Whether the validators are V1 validators
     */
    function getIsV1Validators(uint256 validatorsLength) internal pure returns (bool) {
        bool isV1Validators = validatorsLength % _validatorV1DepositLength == 0;
        bool isV2Validators = validatorsLength % _validatorV2DepositLength == 0;
        if (validatorsLength == 0 || (isV1Validators && isV2Validators) || (!isV1Validators && !isV2Validators)) {
            revert Errors.InvalidValidators();
        }

        return isV1Validators;
    }

    /**
     * @dev Function to get the validator registrations
     * @param v2Validators The mapping of public key hashes to registration status
     * @param validators The validators data
     * @param isTopUp Whether the registration is a top-up
     * @return validatorDeposits The array of validator registrations
     */
    function getValidatorDeposits(
        mapping(bytes32 publicKeyHash => bool isRegistered) storage v2Validators,
        bytes calldata validators,
        bool isTopUp
    ) external returns (ValidatorDeposit[] memory validatorDeposits) {
        // check validators length is valid
        uint256 validatorsLength = validators.length;
        bool isV1Validators = getIsV1Validators(validatorsLength);

        // top up is only allowed for V2 validators
        if (isTopUp && isV1Validators) {
            revert Errors.CannotTopUpV1Validators();
        }

        uint256 _validatorDepositLength = (isV1Validators ? _validatorV1DepositLength : _validatorV2DepositLength);
        uint256 validatorsCount = validatorsLength / _validatorDepositLength;

        uint256 startIndex;
        validatorDeposits = new ValidatorDeposit[](validatorsCount);
        for (uint256 i = 0; i < validatorsCount;) {
            ValidatorDeposit memory valDeposit =
                getValidatorDeposit(validators[startIndex:startIndex + _validatorDepositLength], isV1Validators);

            if (isTopUp) {
                // check whether validator is tracked in case of the top-up
                if (!v2Validators[keccak256(valDeposit.publicKey)]) {
                    revert Errors.InvalidValidators();
                }
                // add registration data to the array
                validatorDeposits[i] = valDeposit;
                emit IVaultValidators.ValidatorFunded(valDeposit.publicKey, valDeposit.depositAmount);
                unchecked {
                    // cannot realistically overflow
                    ++i;
                    startIndex += _validatorDepositLength;
                }
                continue;
            }

            // check the registration amount
            if (
                valDeposit.depositAmount > _validatorMaxEffectiveBalance
                    || valDeposit.depositAmount < _validatorMinEffectiveBalance
            ) {
                revert Errors.InvalidAssets();
            }

            // mark v2 validator public key as tracked
            if (isV1Validators) {
                emit IVaultValidators.ValidatorRegistered(valDeposit.publicKey);
            } else {
                v2Validators[keccak256(valDeposit.publicKey)] = true;
                emit IVaultValidators.V2ValidatorRegistered(valDeposit.publicKey, valDeposit.depositAmount);
            }

            // add registration data to the array
            validatorDeposits[i] = valDeposit;

            unchecked {
                // cannot realistically overflow
                ++i;
                startIndex += _validatorDepositLength;
            }
        }
    }

    /**
     * @dev Function to withdraw the validators
     * @param validators The validators data
     * @param validatorsWithdrawals The address of the validators withdrawals contract
     */
    function withdrawValidators(bytes calldata validators, address validatorsWithdrawals) external {
        // check validators length is valid
        uint256 validatorsCount = validators.length / _validatorWithdrawalLength;
        unchecked {
            if (validatorsCount == 0 || validators.length % _validatorWithdrawalLength != 0) {
                revert Errors.InvalidValidators();
            }
        }

        uint256 startIndex;
        uint256 totalFeeAssets = msg.value;
        for (uint256 i = 0; i < validatorsCount;) {
            bytes calldata validator = validators[startIndex:startIndex + _validatorWithdrawalLength];
            bytes calldata publicKey = validator[:48];

            // convert gwei to wei by multiplying by 1 gwei
            uint256 withdrawnAmount = (uint256(uint64(bytes8(validator[48:56]))) * 1 gwei);
            uint256 feePaid = uint256(bytes32(Address.functionStaticCall(validatorsWithdrawals, "")));

            // submit validator withdrawal
            Address.functionCallWithValue(validatorsWithdrawals, validator, feePaid);
            totalFeeAssets -= feePaid;
            emit IVaultValidators.ValidatorWithdrawalSubmitted(publicKey, withdrawnAmount, feePaid);

            unchecked {
                // cannot realistically overflow
                ++i;
                startIndex += _validatorWithdrawalLength;
            }
        }

        // send the remaining assets to the caller
        if (totalFeeAssets > 0) {
            Address.sendValue(payable(msg.sender), totalFeeAssets);
        }
    }

    /**
     * @dev Internal function for consolidating validators
     * @param validator The validator data
     * @param validatorsConsolidations The address of the validators consolidations contract
     * @param fromPublicKey The public key of the validator that was consolidated
     * @param toPublicKey The public key of the validator that was consolidated to
     * @param feePaid The amount of fee that was paid
     */
    function consolidateValidator(bytes calldata validator, address validatorsConsolidations)
        internal
        returns (bytes calldata fromPublicKey, bytes calldata toPublicKey, uint256 feePaid)
    {
        fromPublicKey = validator[:48];
        toPublicKey = validator[48:96];
        feePaid = uint256(bytes32(Address.functionStaticCall(validatorsConsolidations, "")));

        Address.functionCallWithValue(validatorsConsolidations, validator, feePaid);
    }

    /**
     * @dev Function to consolidate the validators
     * @param v2Validators The mapping of public key hashes to registration status
     * @param validators The validators data
     * @param consolidationsApproved Whether the consolidations are approved
     * @param validatorsConsolidations The address of the validators consolidations contract
     */
    function consolidateValidators(
        mapping(bytes32 publicKeyHash => bool isRegistered) storage v2Validators,
        bytes calldata validators,
        bool consolidationsApproved,
        address validatorsConsolidations
    ) external {
        // Check validators length is valid
        uint256 validatorsCount = validators.length / _validatorConsolidationLength;
        unchecked {
            if (validatorsCount == 0 || validators.length % _validatorConsolidationLength != 0) {
                revert Errors.InvalidValidators();
            }
        }

        uint256 totalFeeAssets = msg.value;

        // Process each validator
        uint256 startIndex;
        for (uint256 i = 0; i < validatorsCount;) {
            // consolidate validators
            (bytes calldata sourcePublicKey, bytes calldata destPublicKey, uint256 feePaid) = consolidateValidator(
                validators[startIndex:startIndex + _validatorConsolidationLength], validatorsConsolidations
            );

            // check whether the destination public key is tracked or approved
            bytes32 destPubKeyHash = keccak256(destPublicKey);
            if (consolidationsApproved) {
                v2Validators[destPubKeyHash] = true;
            } else if (!v2Validators[destPubKeyHash]) {
                revert Errors.InvalidValidators();
            }

            // Update fees and emit event
            unchecked {
                // cannot realistically overflow
                totalFeeAssets -= feePaid;
                startIndex += _validatorConsolidationLength;
                ++i;
            }

            // emit event
            emit IVaultValidators.ValidatorConsolidationSubmitted(sourcePublicKey, destPublicKey, feePaid);
        }

        // refund unused fees
        if (totalFeeAssets > 0) {
            Address.sendValue(payable(msg.sender), totalFeeAssets);
        }
    }
}

// ============================================================
// FILE: contracts/vaults/ethereum/EthVault.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.22;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {IEthVault} from "../../interfaces/IEthVault.sol";
import {IEthVaultFactory} from "../../interfaces/IEthVaultFactory.sol";
import {IKeeperRewards} from "../../interfaces/IKeeperRewards.sol";
import {Multicall} from "../../base/Multicall.sol";
import {VaultValidators} from "../modules/VaultValidators.sol";
import {VaultAdmin} from "../modules/VaultAdmin.sol";
import {VaultFee} from "../modules/VaultFee.sol";
import {VaultVersion, IVaultVersion} from "../modules/VaultVersion.sol";
import {VaultImmutables} from "../modules/VaultImmutables.sol";
import {VaultState} from "../modules/VaultState.sol";
import {VaultEnterExit, IVaultEnterExit} from "../modules/VaultEnterExit.sol";
import {VaultOsToken} from "../modules/VaultOsToken.sol";
import {VaultEthStaking} from "../modules/VaultEthStaking.sol";
import {VaultMev} from "../modules/VaultMev.sol";

/**
 * @title EthVault
 * @author StakeWise
 * @notice Defines the Ethereum staking Vault
 */
contract EthVault is
    VaultImmutables,
    Initializable,
    VaultAdmin,
    VaultVersion,
    VaultFee,
    VaultState,
    VaultValidators,
    VaultEnterExit,
    VaultOsToken,
    VaultMev,
    VaultEthStaking,
    Multicall,
    IEthVault
{
    uint8 private constant _version = 5;

    /**
     * @dev Constructor
     * @dev Since the immutable variable value is stored in the bytecode,
     *      its value would be shared among all proxies pointing to a given contract instead of each proxy’s storage.
     * @param args The arguments for initializing the EthVault contract
     */
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor(EthVaultConstructorArgs memory args)
        VaultImmutables(args.keeper, args.vaultsRegistry)
        VaultValidators(
            args.depositDataRegistry,
            args.validatorsRegistry,
            args.validatorsWithdrawals,
            args.validatorsConsolidations,
            args.consolidationsChecker
        )
        VaultEnterExit(args.exitingAssetsClaimDelay)
        VaultOsToken(args.osTokenVaultController, args.osTokenConfig, args.osTokenVaultEscrow)
        VaultMev(args.sharedMevEscrow)
    {
        _disableInitializers();
    }

    /// @inheritdoc IEthVault
    function initialize(bytes calldata params) external payable virtual override reinitializer(_version) {
        // if admin is already set, it's an upgrade from version 4 to 5
        if (admin != address(0)) {
            __EthVault_upgrade();
            return;
        }

        // initialize deployed vault
        __EthVault_init(
            IEthVaultFactory(msg.sender).vaultAdmin(),
            IEthVaultFactory(msg.sender).ownMevEscrow(),
            abi.decode(params, (EthVaultInitParams))
        );
    }

    /// @inheritdoc IEthVault
    function depositAndMintOsToken(address receiver, uint256 osTokenShares, address referrer)
        public
        payable
        override
        returns (uint256)
    {
        deposit(msg.sender, referrer);
        return mintOsToken(receiver, osTokenShares, referrer);
    }

    /// @inheritdoc IEthVault
    function updateStateAndDepositAndMintOsToken(
        address receiver,
        uint256 osTokenShares,
        address referrer,
        IKeeperRewards.HarvestParams calldata harvestParams
    ) external payable override returns (uint256) {
        updateState(harvestParams);
        return depositAndMintOsToken(receiver, osTokenShares, referrer);
    }

    /// @inheritdoc IVaultEnterExit
    function enterExitQueue(uint256 shares, address receiver)
        public
        virtual
        override(IVaultEnterExit, VaultEnterExit, VaultOsToken)
        returns (uint256 positionTicket)
    {
        return super.enterExitQueue(shares, receiver);
    }

    /// @inheritdoc VaultVersion
    function vaultId() public pure virtual override(IVaultVersion, VaultVersion) returns (bytes32) {
        return keccak256("EthVault");
    }

    /// @inheritdoc IVaultVersion
    function version() public pure virtual override(IVaultVersion, VaultVersion) returns (uint8) {
        return _version;
    }

    /**
     * @dev Upgrades the EthVault contract
     */
    function __EthVault_upgrade() internal {
        __VaultValidators_upgrade();
    }

    /**
     * @dev Initializes the EthVault contract
     * @param admin The address of the admin of the Vault
     * @param ownMevEscrow The address of the MEV escrow owned by the Vault. Zero address if shared MEV escrow is used.
     * @param params The decoded parameters for initializing the EthVault contract
     */
    function __EthVault_init(address admin, address ownMevEscrow, EthVaultInitParams memory params)
        internal
        onlyInitializing
    {
        __VaultAdmin_init(admin, params.metadataIpfsHash);
        // fee recipient is initially set to admin address
        __VaultFee_init(admin, params.feePercent);
        __VaultState_init(params.capacity);
        __VaultValidators_init();
        __VaultMev_init(ownMevEscrow);
        __VaultEthStaking_init();
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[50] private __gap;
}

// ============================================================
// FILE: contracts/vaults/modules/VaultAdmin.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.22;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {IVaultAdmin} from "../../interfaces/IVaultAdmin.sol";
import {Errors} from "../../libraries/Errors.sol";

/**
 * @title VaultAdmin
 * @author StakeWise
 * @notice Defines the admin functionality for the Vault
 */
abstract contract VaultAdmin is Initializable, IVaultAdmin {
    /// @inheritdoc IVaultAdmin
    address public override admin;

    /// @inheritdoc IVaultAdmin
    function setMetadata(string calldata metadataIpfsHash) external override {
        _checkAdmin();
        emit MetadataUpdated(msg.sender, metadataIpfsHash);
    }

    /// @inheritdoc IVaultAdmin
    function setAdmin(address newAdmin) external override {
        _checkAdmin();
        _setAdmin(newAdmin);
    }

    /**
     * @dev Internal method for checking whether the caller is admin
     */
    function _checkAdmin() internal view {
        if (msg.sender != admin) revert Errors.AccessDenied();
    }

    /**
     * @dev Internal method for updating the admin
     * @param newAdmin The address of the new admin
     */
    function _setAdmin(address newAdmin) private {
        if (newAdmin == address(0)) revert Errors.ZeroAddress();
        if (newAdmin == admin) revert Errors.ValueNotChanged();
        admin = newAdmin;
        emit AdminUpdated(msg.sender, newAdmin);
    }

    /**
     * @dev Initializes the VaultAdmin contract
     * @param _admin The address of the Vault admin
     */
    function __VaultAdmin_init(address _admin, string memory metadataIpfsHash) internal onlyInitializing {
        _setAdmin(_admin);
        emit MetadataUpdated(msg.sender, metadataIpfsHash);
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[50] private __gap;
}

// ============================================================
// FILE: contracts/vaults/modules/VaultEnterExit.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.22;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IVaultEnterExit} from "../../interfaces/IVaultEnterExit.sol";
import {ExitQueue} from "../../libraries/ExitQueue.sol";
import {Errors} from "../../libraries/Errors.sol";
import {VaultImmutables} from "./VaultImmutables.sol";
import {VaultState} from "./VaultState.sol";

/**
 * @title VaultEnterExit
 * @author StakeWise
 * @notice Defines the functionality for entering and exiting the Vault
 */
abstract contract VaultEnterExit is VaultImmutables, Initializable, VaultState, IVaultEnterExit {
    using ExitQueue for ExitQueue.History;

    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    uint256 private immutable _exitingAssetsClaimDelay;

    /**
     * @dev Constructor
     * @dev Since the immutable variable value is stored in the bytecode,
     *      its value would be shared among all proxies pointing to a given contract instead of each proxy’s storage.
     * @param exitingAssetsClaimDelay The minimum delay after which the assets can be claimed after joining the exit queue
     */
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor(uint256 exitingAssetsClaimDelay) {
        _exitingAssetsClaimDelay = exitingAssetsClaimDelay;
    }

    /// @inheritdoc IVaultEnterExit
    function getExitQueueIndex(uint256 positionTicket) external view override returns (int256) {
        uint256 checkpointIdx = _exitQueue.getCheckpointIndex(positionTicket);
        return checkpointIdx < _exitQueue.checkpoints.length ? int256(checkpointIdx) : -1;
    }

    /// @inheritdoc IVaultEnterExit
    function enterExitQueue(uint256 shares, address receiver)
        public
        virtual
        override
        returns (uint256 positionTicket)
    {
        return _enterExitQueue(msg.sender, shares, receiver);
    }

    /// @inheritdoc IVaultEnterExit
    function calculateExitedAssets(address receiver, uint256 positionTicket, uint256 timestamp, uint256 exitQueueIndex)
        public
        view
        override
        returns (uint256 leftTickets, uint256 exitedTickets, uint256 exitedAssets)
    {
        uint256 exitingTickets = _exitRequests[keccak256(abi.encode(receiver, timestamp, positionTicket))];
        if (exitingTickets == 0) return (0, 0, 0);

        // calculate exited tickets and assets
        (exitedTickets, exitedAssets) = _exitQueue.calculateExitedAssets(exitQueueIndex, positionTicket, exitingTickets);
        leftTickets = exitingTickets - exitedTickets;
        if (leftTickets == 1) {
            // if only one ticket is left round it to zero
            leftTickets = 0;
            exitedTickets += 1; // round up exited tickets
        }
    }

    /// @inheritdoc IVaultEnterExit
    function claimExitedAssets(uint256 positionTicket, uint256 timestamp, uint256 exitQueueIndex) external override {
        // calculate exited tickets and assets
        (uint256 leftTickets, uint256 exitedTickets, uint256 exitedAssets) =
            calculateExitedAssets(msg.sender, positionTicket, timestamp, exitQueueIndex);
        if (block.timestamp < timestamp + _exitingAssetsClaimDelay || exitedTickets == 0 || exitedAssets == 0) {
            revert Errors.ExitRequestNotProcessed();
        }

        // update unclaimed assets
        _unclaimedAssets -= SafeCast.toUint128(exitedAssets);

        // clean up current exit request
        delete _exitRequests[keccak256(abi.encode(msg.sender, timestamp, positionTicket))];

        // skip creating new position for the tickets rounding error
        uint256 newPositionTicket;
        if (leftTickets > 1) {
            // update user's queue position
            newPositionTicket = positionTicket + exitedTickets;
            _exitRequests[keccak256(abi.encode(msg.sender, timestamp, newPositionTicket))] = leftTickets;
        }

        // transfer assets to the receiver
        _transferVaultAssets(msg.sender, exitedAssets);
        emit ExitedAssetsClaimed(msg.sender, positionTicket, newPositionTicket, exitedAssets);
    }

    /// @inheritdoc IVaultEnterExit
    function rescueAssets() external override {
        _checkAdmin();

        // rescue works only when the vault is not collateralized, i.e. does not have validators
        if (_isCollateralized()) {
            revert Errors.Collateralized();
        }

        // calculate amount of assets to rescue, exclude all the assets backing shares
        uint256 rescuedAssets = _vaultAssets() - _totalAssets;

        // transfer to admin
        _transferVaultAssets(msg.sender, rescuedAssets);
    }

    /**
     * @dev Internal function that must be used to process user deposits
     * @param to The address to mint shares to
     * @param assets The number of assets deposited
     * @param referrer The address of the referrer. Set to zero address if not used.
     * @return shares The total amount of shares minted
     */
    function _deposit(address to, uint256 assets, address referrer) internal virtual returns (uint256 shares) {
        _checkHarvested();
        if (to == address(0)) revert Errors.ZeroAddress();
        if (assets == 0) revert Errors.InvalidAssets();

        uint256 totalAssetsAfter;
        unchecked {
            // cannot overflow as it is capped with underlying asset total supply
            totalAssetsAfter = _totalAssets + assets;
        }
        if (totalAssetsAfter > capacity()) revert Errors.CapacityExceeded();

        // calculate amount of shares to mint
        shares = _convertToShares(assets, Math.Rounding.Ceil);

        // update state
        _totalAssets = SafeCast.toUint128(totalAssetsAfter);
        _mintShares(to, shares);

        emit Deposited(msg.sender, to, assets, shares, referrer);
    }

    /**
     * @dev Internal function for sending user shares to the exit queue
     * @param user The address of the user
     * @param shares The number of shares to send to exit queue
     * @param receiver The address that will receive the assets
     * @return positionTicket The position ticket in the exit queue. Returns max uint256 if no ticket is created.
     */
    function _enterExitQueue(address user, uint256 shares, address receiver)
        internal
        virtual
        returns (uint256 positionTicket)
    {
        if (shares == 0) revert Errors.InvalidShares();
        if (receiver == address(0)) revert Errors.ZeroAddress();
        if (!_isCollateralized()) {
            // calculate amount of assets to burn
            uint256 assets = convertToAssets(shares);
            if (assets == 0) revert Errors.InvalidAssets();

            // update total assets
            _totalAssets -= SafeCast.toUint128(assets);

            // burn owner shares
            _burnShares(user, shares);

            // transfer assets to the receiver
            _transferVaultAssets(receiver, assets);

            emit Redeemed(user, receiver, assets, shares);

            // no ticket is created, return max value
            return type(uint256).max;
        }

        // SLOAD to memory
        uint256 queuedShares = _queuedShares;

        // calculate position ticket
        positionTicket = _exitQueue.getLatestTotalTickets() + _totalExitingTickets + queuedShares;

        // add to the exit requests
        _exitRequests[keccak256(abi.encode(receiver, block.timestamp, positionTicket))] = shares;

        // reverts if owner does not have enough shares
        _balances[user] -= shares;

        unchecked {
            // cannot overflow as it is capped with _totalShares
            _queuedShares = SafeCast.toUint128(queuedShares + shares);
        }

        emit ExitQueueEntered(user, receiver, positionTicket, shares);
    }

    /**
     * @dev Internal function for transferring assets from the Vault to the receiver
     * @dev IMPORTANT: because control is transferred to the receiver, care must be
     *    taken to not create reentrancy vulnerabilities. The Vault must follow the checks-effects-interactions pattern:
     *    https://docs.soliditylang.org/en/v0.8.22/security-considerations.html#use-the-checks-effects-interactions-pattern
     * @param receiver The address that will receive the assets
     * @param assets The number of assets to transfer
     */
    function _transferVaultAssets(address receiver, uint256 assets) internal virtual;

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[50] private __gap;
}

// ============================================================
// FILE: contracts/vaults/modules/VaultEthStaking.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.22;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {IEthValidatorsRegistry} from "../../interfaces/IEthValidatorsRegistry.sol";
import {IKeeperRewards} from "../../interfaces/IKeeperRewards.sol";
import {IVaultEthStaking} from "../../interfaces/IVaultEthStaking.sol";
import {Errors} from "../../libraries/Errors.sol";
import {ValidatorUtils} from "../../libraries/ValidatorUtils.sol";
import {VaultValidators} from "./VaultValidators.sol";
import {VaultState} from "./VaultState.sol";
import {VaultEnterExit} from "./VaultEnterExit.sol";
import {VaultMev} from "./VaultMev.sol";

/**
 * @title VaultEthStaking
 * @author StakeWise
 * @notice Defines the Ethereum staking functionality for the Vault
 */
abstract contract VaultEthStaking is
    Initializable,
    VaultState,
    VaultValidators,
    VaultEnterExit,
    VaultMev,
    IVaultEthStaking
{
    uint256 private constant _securityDeposit = 1e9;

    /// @inheritdoc IVaultEthStaking
    function deposit(address receiver, address referrer) public payable virtual override returns (uint256 shares) {
        return _deposit(receiver, msg.value, referrer);
    }

    /// @inheritdoc IVaultEthStaking
    function updateStateAndDeposit(
        address receiver,
        address referrer,
        IKeeperRewards.HarvestParams calldata harvestParams
    ) public payable virtual override returns (uint256 shares) {
        updateState(harvestParams);
        return deposit(receiver, referrer);
    }

    /**
     * @dev Function for depositing using fallback function
     */
    receive() external payable virtual {
        _deposit(msg.sender, msg.value, address(0));
    }

    /// @inheritdoc IVaultEthStaking
    function receiveFromMevEscrow() external payable override {
        if (msg.sender != mevEscrow()) revert Errors.AccessDenied();
    }

    /// @inheritdoc IVaultEthStaking
    function donateAssets() external payable override {
        _checkCollateralized();
        if (msg.value == 0) {
            revert Errors.InvalidAssets();
        }
        _donatedAssets += msg.value;
        emit AssetsDonated(msg.sender, msg.value);
    }

    /// @inheritdoc VaultValidators
    function _registerValidators(ValidatorUtils.ValidatorDeposit[] memory deposits) internal virtual override {
        uint256 depositsCount = deposits.length;
        uint256 availableAssets = withdrawableAssets();
        for (uint256 i = 0; i < depositsCount;) {
            ValidatorUtils.ValidatorDeposit memory depositData = deposits[i];
            // deposit to the validators registry
            IEthValidatorsRegistry(_validatorsRegistry).deposit{value: depositData.depositAmount}(
                depositData.publicKey,
                depositData.withdrawalCredentials,
                depositData.signature,
                depositData.depositDataRoot
            );

            // will revert if not enough assets
            availableAssets -= depositData.depositAmount;

            unchecked {
                // cannot realistically overflow
                ++i;
            }
        }
    }

    /// @inheritdoc VaultState
    function _vaultAssets() internal view virtual override returns (uint256) {
        return address(this).balance;
    }

    /// @inheritdoc VaultEnterExit
    function _transferVaultAssets(address receiver, uint256 assets) internal virtual override nonReentrant {
        return Address.sendValue(payable(receiver), assets);
    }

    /**
     * @dev Initializes the VaultEthStaking contract
     */
    function __VaultEthStaking_init() internal onlyInitializing {
        // see https://github.com/OpenZeppelin/openzeppelin-contracts/issues/3706
        if (msg.value < _securityDeposit) revert Errors.InvalidSecurityDeposit();
        _deposit(address(this), msg.value, address(0));
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[50] private __gap;
}

// ============================================================
// FILE: contracts/vaults/modules/VaultFee.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.22;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {IVaultFee} from "../../interfaces/IVaultFee.sol";
import {Errors} from "../../libraries/Errors.sol";
import {VaultAdmin} from "./VaultAdmin.sol";
import {VaultImmutables} from "./VaultImmutables.sol";

/**
 * @title VaultFee
 * @author StakeWise
 * @notice Defines the fee functionality for the Vault
 */
abstract contract VaultFee is VaultImmutables, Initializable, VaultAdmin, IVaultFee {
    uint256 internal constant _maxFeePercent = 10_000; // @dev 100.00 %
    uint256 private constant _feeUpdateDelay = 3 days;
    uint256 private constant _feeUpdateMultiplier = 120;
    uint256 private constant _feeUpdateBase = 100;

    /// @inheritdoc IVaultFee
    address public override feeRecipient;

    /// @inheritdoc IVaultFee
    uint16 public override feePercent;

    uint64 private _lastUpdateTimestamp;

    /// @inheritdoc IVaultFee
    function setFeeRecipient(address _feeRecipient) external override {
        _checkAdmin();
        _setFeeRecipient(_feeRecipient);
    }

    /// @inheritdoc IVaultFee
    function setFeePercent(uint16 _feePercent) external override {
        _checkAdmin();
        _setFeePercent(_feePercent, false);
    }

    /**
     * @dev Internal function for updating the fee recipient externally or from the initializer
     * @param _feeRecipient The address of the new fee recipient
     */
    function _setFeeRecipient(address _feeRecipient) private {
        _checkHarvested();
        if (_feeRecipient == address(0)) revert Errors.InvalidFeeRecipient();
        if (_feeRecipient == feeRecipient) revert Errors.ValueNotChanged();

        // update fee recipient address
        feeRecipient = _feeRecipient;
        emit FeeRecipientUpdated(msg.sender, _feeRecipient);
    }

    /**
     * @dev Internal function for updating the fee percent
     * @param _feePercent The new fee percent
     * @param isVaultCreation Flag indicating whether the fee percent is set during the vault creation
     */
    function _setFeePercent(uint16 _feePercent, bool isVaultCreation) private {
        _checkHarvested();
        if (_feePercent > _maxFeePercent) revert Errors.InvalidFeePercent();

        if (!isVaultCreation) {
            if (_lastUpdateTimestamp + _feeUpdateDelay > block.timestamp) {
                revert Errors.TooEarlyUpdate();
            }

            // check that the fee percent can be increase only by 20% at a time
            // if the current fee is 0, then it cannot exceed 1% initially
            uint256 currentFeePercent = feePercent;
            uint256 maxFeePercent =
                currentFeePercent > 0 ? (currentFeePercent * _feeUpdateMultiplier) / _feeUpdateBase : _feeUpdateBase;
            if (maxFeePercent < _feePercent) {
                revert Errors.InvalidFeePercent();
            }
        }

        // update fee percent
        feePercent = _feePercent;
        _lastUpdateTimestamp = uint64(block.timestamp);
        emit FeePercentUpdated(msg.sender, _feePercent);
    }

    /**
     * @dev Initializes the VaultFee contract
     * @param _feeRecipient The address of the fee recipient
     * @param _feePercent The fee percent that is charged by the Vault
     */
    function __VaultFee_init(address _feeRecipient, uint16 _feePercent) internal onlyInitializing {
        _setFeeRecipient(_feeRecipient);
        _setFeePercent(_feePercent, true);
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[50] private __gap;
}

// ============================================================
// FILE: contracts/vaults/modules/VaultImmutables.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.22;

import {IKeeperRewards} from "../../interfaces/IKeeperRewards.sol";
import {Errors} from "../../libraries/Errors.sol";

/**
 * @title VaultImmutables
 * @author StakeWise
 * @notice Defines the Vault common immutable variables and check functions.
 */
abstract contract VaultImmutables {
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    address internal immutable _keeper;

    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    address internal immutable _vaultsRegistry;

    /**
     * @dev Constructor
     * @dev Since the immutable variable value is stored in the bytecode,
     *      its value would be shared among all proxies pointing to a given contract instead of each proxy’s storage.
     * @param keeper The address of the Keeper contract
     * @param vaultsRegistry The address of the VaultsRegistry contract
     */
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor(address keeper, address vaultsRegistry) {
        _keeper = keeper;
        _vaultsRegistry = vaultsRegistry;
    }

    /**
     * @dev Internal method for checking whether the vault is harvested
     */
    function _checkHarvested() internal view virtual {
        if (IKeeperRewards(_keeper).isHarvestRequired(address(this))) revert Errors.NotHarvested();
    }

    /**
     * @dev Internal method for checking whether the vault is collateralized
     */
    function _checkCollateralized() internal view {
        if (!_isCollateralized()) revert Errors.NotCollateralized();
    }

    /**
     * @dev Returns whether the vault is collateralized
     * @return true if the vault is collateralized
     */
    function _isCollateralized() internal view virtual returns (bool) {
        return IKeeperRewards(_keeper).isCollateralized(address(this));
    }
}

// ============================================================
// FILE: contracts/vaults/modules/VaultMev.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.22;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {IKeeperRewards} from "../../interfaces/IKeeperRewards.sol";
import {ISharedMevEscrow} from "../../interfaces/ISharedMevEscrow.sol";
import {IOwnMevEscrow} from "../../interfaces/IOwnMevEscrow.sol";
import {IVaultMev} from "../../interfaces/IVaultMev.sol";
import {VaultState} from "./VaultState.sol";

/**
 * @title VaultMev
 * @author StakeWise
 * @notice Defines the Vaults' MEV functionality
 */
abstract contract VaultMev is Initializable, VaultState, IVaultMev {
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    address private immutable _sharedMevEscrow;
    address private _ownMevEscrow;

    /**
     * @dev Constructor
     * @dev Since the immutable variable value is stored in the bytecode,
     *      its value would be shared among all proxies pointing to a given contract instead of each proxy’s storage.
     * @param sharedMevEscrow The address of the shared MEV escrow
     */
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor(address sharedMevEscrow) {
        _sharedMevEscrow = sharedMevEscrow;
    }

    /// @inheritdoc IVaultMev
    function mevEscrow() public view override returns (address) {
        // SLOAD to memory
        address ownMevEscrow = _ownMevEscrow;
        return ownMevEscrow != address(0) ? ownMevEscrow : _sharedMevEscrow;
    }

    /// @inheritdoc VaultState
    function _harvestAssets(IKeeperRewards.HarvestParams calldata harvestParams)
        internal
        virtual
        override
        returns (int256 totalAssetsDelta, bool harvested)
    {
        uint256 unlockedMevDelta;
        (totalAssetsDelta, unlockedMevDelta, harvested) = IKeeperRewards(_keeper).harvest(harvestParams);

        // harvest execution rewards only when consensus rewards were harvested
        if (!harvested) return (totalAssetsDelta, harvested);

        // SLOAD to memory
        address _mevEscrow = mevEscrow();
        if (_mevEscrow == _sharedMevEscrow) {
            if (unlockedMevDelta > 0) {
                // withdraw assets from shared escrow only in case reward is positive
                ISharedMevEscrow(_mevEscrow).harvest(unlockedMevDelta);
            }
        } else {
            // execution rewards are always equal to what was accumulated in own MEV escrow
            totalAssetsDelta += int256(IOwnMevEscrow(_mevEscrow).harvest());
        }
    }

    /**
     * @dev Initializes the VaultMev contract
     * @param ownMevEscrow The address of the own MEV escrow contract
     */
    function __VaultMev_init(address ownMevEscrow) internal onlyInitializing {
        if (ownMevEscrow != address(0)) _ownMevEscrow = ownMevEscrow;
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[50] private __gap;
}

// ============================================================
// FILE: contracts/vaults/modules/VaultOsToken.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.22;

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import {IOsTokenVaultController} from "../../interfaces/IOsTokenVaultController.sol";
import {IOsTokenConfig} from "../../interfaces/IOsTokenConfig.sol";
import {IVaultOsToken} from "../../interfaces/IVaultOsToken.sol";
import {IOsTokenVaultEscrow} from "../../interfaces/IOsTokenVaultEscrow.sol";
import {Errors} from "../../libraries/Errors.sol";
import {VaultImmutables} from "./VaultImmutables.sol";
import {VaultEnterExit, IVaultEnterExit} from "./VaultEnterExit.sol";
import {VaultState} from "./VaultState.sol";
import {OsTokenUtils} from "../../libraries/OsTokenUtils.sol";

/**
 * @title VaultOsToken
 * @author StakeWise
 * @notice Defines the functionality for minting OsToken
 */
abstract contract VaultOsToken is VaultImmutables, VaultState, VaultEnterExit, IVaultOsToken {
    uint256 private constant _maxPercent = 1e18;

    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    IOsTokenVaultController private immutable _osTokenVaultController;

    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    IOsTokenConfig private immutable _osTokenConfig;

    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    IOsTokenVaultEscrow private immutable _osTokenVaultEscrow;

    mapping(address => OsTokenPosition) private _positions;

    /**
     * @dev Constructor
     * @dev Since the immutable variable value is stored in the bytecode,
     *      its value would be shared among all proxies pointing to a given contract instead of each proxy’s storage.
     * @param osTokenVaultController The address of the OsTokenVaultController contract
     * @param osTokenConfig The address of the OsTokenConfig contract
     * @param osTokenVaultEscrow The address of the OsTokenVaultEscrow contract
     */
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor(address osTokenVaultController, address osTokenConfig, address osTokenVaultEscrow) {
        _osTokenVaultController = IOsTokenVaultController(osTokenVaultController);
        _osTokenConfig = IOsTokenConfig(osTokenConfig);
        _osTokenVaultEscrow = IOsTokenVaultEscrow(osTokenVaultEscrow);
    }

    /// @inheritdoc IVaultOsToken
    function osTokenPositions(address user) public view override returns (uint128 shares) {
        OsTokenPosition memory position = _positions[user];
        if (position.shares != 0) _syncPositionFee(position);
        return position.shares;
    }

    /// @inheritdoc IVaultOsToken
    function mintOsToken(address receiver, uint256 osTokenShares, address referrer)
        public
        virtual
        override
        returns (uint256 assets)
    {
        return _mintOsToken(msg.sender, receiver, osTokenShares, referrer);
    }

    /// @inheritdoc IVaultOsToken
    function burnOsToken(uint128 osTokenShares) external override returns (uint256 assets) {
        // burn osToken shares
        assets = _osTokenVaultController.burnShares(msg.sender, osTokenShares);

        // fetch user position
        OsTokenPosition memory position = _positions[msg.sender];
        if (position.shares == 0) revert Errors.InvalidPosition();
        _syncPositionFee(position);

        // update osToken position
        position.shares -= osTokenShares;
        _positions[msg.sender] = position;

        // emit event
        emit OsTokenBurned(msg.sender, assets, osTokenShares);
    }

    /// @inheritdoc IVaultOsToken
    function liquidateOsToken(uint256 osTokenShares, address owner, address receiver) external override {
        (uint256 burnedShares, uint256 receivedAssets) = _redeemOsToken(owner, receiver, osTokenShares, true);
        emit OsTokenLiquidated(msg.sender, owner, receiver, osTokenShares, burnedShares, receivedAssets);
    }

    /// @inheritdoc IVaultOsToken
    function redeemOsToken(uint256 osTokenShares, address owner, address receiver) external override {
        if (msg.sender != _osTokenConfig.redeemer()) revert Errors.AccessDenied();
        (uint256 burnedShares, uint256 receivedAssets) = _redeemOsToken(owner, receiver, osTokenShares, false);
        emit OsTokenRedeemed(msg.sender, owner, receiver, osTokenShares, burnedShares, receivedAssets);
    }

    /// @inheritdoc IVaultOsToken
    function transferOsTokenPositionToEscrow(uint256 osTokenShares)
        external
        override
        returns (uint256 positionTicket)
    {
        // check whether vault assets are up to date
        _checkHarvested();

        // fetch user osToken position
        OsTokenPosition memory position = _positions[msg.sender];
        if (position.shares == 0) revert Errors.InvalidPosition();

        // sync accumulated fee
        _syncPositionFee(position);
        if (position.shares < osTokenShares) revert Errors.InvalidShares();

        // calculate shares to enter the exit queue
        uint256 exitShares = _balances[msg.sender];
        if (position.shares != osTokenShares) {
            // calculate exit shares
            exitShares = Math.mulDiv(exitShares, osTokenShares, position.shares);
            // update osToken position
            unchecked {
                // cannot underflow because position.shares >= osTokenShares
                position.shares -= SafeCast.toUint128(osTokenShares);
            }
            _positions[msg.sender] = position;
        } else {
            // all the assets are sent to the exit queue, remove position
            delete _positions[msg.sender];
        }

        // enter the exit queue
        positionTicket = super.enterExitQueue(exitShares, address(_osTokenVaultEscrow));

        // transfer to escrow
        _osTokenVaultEscrow.register(msg.sender, positionTicket, osTokenShares, position.cumulativeFeePerShare);
    }

    /// @inheritdoc IVaultEnterExit
    function enterExitQueue(uint256 shares, address receiver)
        public
        virtual
        override(IVaultEnterExit, VaultEnterExit)
        returns (uint256 positionTicket)
    {
        positionTicket = super.enterExitQueue(shares, receiver);
        _checkOsTokenPosition(msg.sender);
    }

    /**
     * @dev Internal function for minting osToken shares
     * @param owner The owner of the osToken position
     * @param receiver The receiver of the osToken shares
     * @param osTokenShares The amount of osToken shares to mint
     * @param referrer The address of the referrer
     * @return assets The amount of assets minted
     */
    function _mintOsToken(address owner, address receiver, uint256 osTokenShares, address referrer)
        internal
        returns (uint256 assets)
    {
        _checkCollateralized();
        _checkHarvested();

        // fetch user position
        OsTokenPosition memory position = _positions[owner];
        if (position.shares != 0) {
            _syncPositionFee(position);
        } else {
            position.cumulativeFeePerShare = SafeCast.toUint128(_osTokenVaultController.cumulativeFeePerShare());
        }

        // calculate max osToken shares that user can mint
        uint256 userMaxOsTokenShares = _calcMaxOsTokenShares(convertToAssets(_balances[owner]));
        if (osTokenShares == type(uint256).max) {
            if (userMaxOsTokenShares <= position.shares) {
                return 0;
            }
            // calculate max OsToken shares that can be minted
            unchecked {
                // cannot underflow because position.shares < userMaxOsTokenShares
                osTokenShares = userMaxOsTokenShares - position.shares;
            }
        }

        // mint osToken shares to the receiver
        assets = _osTokenVaultController.mintShares(receiver, osTokenShares);

        // add minted shares to the position
        position.shares += SafeCast.toUint128(osTokenShares);

        // calculate and validate LTV
        if (userMaxOsTokenShares < position.shares) {
            revert Errors.LowLtv();
        }

        // update state
        _positions[owner] = position;

        // emit event
        emit OsTokenMinted(owner, receiver, assets, osTokenShares, referrer);
    }

    /**
     * @dev Internal function for redeeming and liquidating osToken shares
     * @param owner The minter of the osToken shares
     * @param receiver The receiver of the assets
     * @param osTokenShares The amount of osToken shares to redeem or liquidate
     * @param isLiquidation Whether the liquidation or redemption is being performed
     * @return burnedShares The amount of shares burned
     * @return receivedAssets The amount of assets received
     */
    function _redeemOsToken(address owner, address receiver, uint256 osTokenShares, bool isLiquidation)
        private
        returns (uint256 burnedShares, uint256 receivedAssets)
    {
        if (receiver == address(0)) revert Errors.ZeroAddress();
        _checkHarvested();

        // update osToken state for gas efficiency
        _osTokenVaultController.updateState();

        // fetch user position
        OsTokenPosition memory position = _positions[owner];
        if (position.shares == 0) revert Errors.InvalidPosition();
        _syncPositionFee(position);

        // calculate received assets
        receivedAssets = OsTokenUtils.calculateReceivedAssets(
            _osTokenConfig,
            _osTokenVaultController,
            OsTokenUtils.RedemptionData({
                mintedAssets: _osTokenVaultController.convertToAssets(position.shares),
                depositedAssets: convertToAssets(_balances[owner]),
                redeemedOsTokenShares: osTokenShares,
                availableAssets: withdrawableAssets(),
                isLiquidation: isLiquidation
            })
        );

        // reduce osToken supply
        _osTokenVaultController.burnShares(msg.sender, osTokenShares);

        // update osToken position
        position.shares -= SafeCast.toUint128(osTokenShares);
        _positions[owner] = position;

        burnedShares = convertToShares(receivedAssets);

        // update total assets
        _totalAssets -= SafeCast.toUint128(receivedAssets);

        // burn owner shares
        _burnShares(owner, burnedShares);

        // transfer assets to the receiver
        _transferVaultAssets(receiver, receivedAssets);
    }

    /**
     * @dev Internal function for syncing the osToken fee
     * @param position The position to sync the fee for
     */
    function _syncPositionFee(OsTokenPosition memory position) private view {
        // fetch current cumulative fee per share
        uint256 cumulativeFeePerShare = _osTokenVaultController.cumulativeFeePerShare();

        // check whether fee is already up to date
        if (cumulativeFeePerShare == position.cumulativeFeePerShare) return;

        // add treasury fee to the position
        position.shares =
            SafeCast.toUint128(Math.mulDiv(position.shares, cumulativeFeePerShare, position.cumulativeFeePerShare));
        position.cumulativeFeePerShare = SafeCast.toUint128(cumulativeFeePerShare);
    }

    /**
     * @notice Internal function for checking position validity. Reverts if it is invalid.
     * @param user The address of the user
     */
    function _checkOsTokenPosition(address user) internal view {
        // fetch user position
        OsTokenPosition memory position = _positions[user];
        if (position.shares == 0) return;

        // check whether vault assets are up to date
        _checkHarvested();

        // sync fee
        _syncPositionFee(position);

        // calculate and validate position LTV
        if (_calcMaxOsTokenShares(convertToAssets(_balances[user])) < position.shares) {
            revert Errors.LowLtv();
        }
    }

    /**
     * @dev Internal function for calculating the maximum amount of osToken shares that can be minted
     * @param assets The amount of assets to convert to osToken shares
     * @return maxOsTokenShares The maximum amount of osToken shares that can be minted
     */
    function _calcMaxOsTokenShares(uint256 assets) internal view returns (uint256) {
        uint256 maxOsTokenAssets = Math.mulDiv(assets, _osTokenConfig.getConfig(address(this)).ltvPercent, _maxPercent);
        return _osTokenVaultController.convertToShares(maxOsTokenAssets);
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[50] private __gap;
}

// ============================================================
// FILE: contracts/vaults/modules/VaultState.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.22;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IVaultState} from "../../interfaces/IVaultState.sol";
import {IKeeperRewards} from "../../interfaces/IKeeperRewards.sol";
import {ExitQueue} from "../../libraries/ExitQueue.sol";
import {Errors} from "../../libraries/Errors.sol";
import {VaultImmutables} from "./VaultImmutables.sol";
import {VaultFee} from "./VaultFee.sol";

/**
 * @title VaultState
 * @author StakeWise
 * @notice Defines Vault's state manipulation
 */
abstract contract VaultState is VaultImmutables, Initializable, VaultFee, IVaultState {
    using ExitQueue for ExitQueue.History;

    uint128 internal _totalShares;
    uint128 internal _totalAssets;

    uint128 internal _queuedShares;
    uint128 internal _unclaimedAssets;
    ExitQueue.History internal _exitQueue;

    mapping(bytes32 => uint256) internal _exitRequests;
    mapping(address => uint256) internal _balances;

    uint256 private _capacity;

    uint128 internal _totalExitingAssets; // deprecated
    uint128 internal _totalExitingTickets; // deprecated
    uint256 internal _totalExitedTickets; // deprecated
    uint256 internal _donatedAssets;

    /// @inheritdoc IVaultState
    function totalShares() external view override returns (uint256) {
        return _totalShares;
    }

    /// @inheritdoc IVaultState
    function totalAssets() external view override returns (uint256) {
        return _totalAssets;
    }

    /// @inheritdoc IVaultState
    function getExitQueueData()
        external
        view
        override
        returns (
            uint128 queuedShares,
            uint128 unclaimedAssets,
            uint128 totalExitingTickets,
            uint128 totalExitingAssets,
            uint256 totalTickets
        )
    {
        return (
            _queuedShares,
            _unclaimedAssets,
            _totalExitingTickets,
            _totalExitingAssets,
            _exitQueue.getLatestTotalTickets()
        );
    }

    /// @inheritdoc IVaultState
    function getShares(address account) external view override returns (uint256) {
        return _balances[account];
    }

    /// @inheritdoc IVaultState
    function convertToShares(uint256 assets) public view override returns (uint256 shares) {
        return _convertToShares(assets, Math.Rounding.Floor);
    }

    /// @inheritdoc IVaultState
    function convertToAssets(uint256 shares) public view override returns (uint256 assets) {
        uint256 totalShares_ = _totalShares;
        return totalShares_ == 0 ? shares : Math.mulDiv(shares, _totalAssets, totalShares_);
    }

    /// @inheritdoc IVaultState
    function capacity() public view override returns (uint256) {
        // SLOAD to memory
        uint256 capacity_ = _capacity;

        // if capacity is not set, it is unlimited
        return capacity_ == 0 ? type(uint256).max : capacity_;
    }

    /// @inheritdoc IVaultState
    function withdrawableAssets() public view override returns (uint256) {
        uint256 vaultAssets = _vaultAssets();
        unchecked {
            // calculate assets that are reserved by users who queued for exit
            // cannot overflow as it is capped with underlying asset total supply
            uint256 reservedAssets = convertToAssets(_queuedShares) + _totalExitingAssets + _unclaimedAssets;
            return vaultAssets > reservedAssets ? vaultAssets - reservedAssets : 0;
        }
    }

    /// @inheritdoc IVaultState
    function isStateUpdateRequired() external view virtual override returns (bool) {
        return IKeeperRewards(_keeper).isHarvestRequired(address(this));
    }

    /// @inheritdoc IVaultState
    function updateState(IKeeperRewards.HarvestParams calldata harvestParams) public virtual override {
        // process total assets delta  since last update
        (int256 totalAssetsDelta, bool harvested) = _harvestAssets(harvestParams);

        if (harvested) {
            // SLOAD to memory
            uint256 donatedAssets = _donatedAssets;
            if (donatedAssets > 0) {
                _donatedAssets = 0;
                totalAssetsDelta += int256(donatedAssets);
            }
        }

        // process total assets delta if it has changed
        _processTotalAssetsDelta(totalAssetsDelta);

        // update exit queue every time new update is harvested
        if (harvested) _updateExitQueue();
    }

    /**
     * @dev Internal function for processing rewards and penalties
     * @param totalAssetsDelta The number of assets earned or lost
     */
    function _processTotalAssetsDelta(int256 totalAssetsDelta) internal virtual {
        // skip processing if there is no change in assets
        if (totalAssetsDelta == 0) return;

        // SLOAD to memory
        uint256 newTotalAssets = _totalAssets;
        if (totalAssetsDelta < 0) {
            // the delta is negative, meaning that the vault lost assets
            uint256 penalty = uint256(-totalAssetsDelta);

            // SLOAD to memory
            uint256 totalExitingAssets = _totalExitingAssets;
            if (totalExitingAssets > 0) {
                // apply penalty to exiting assets
                uint256 exitingAssetsPenalty =
                    Math.mulDiv(penalty, totalExitingAssets, totalExitingAssets + newTotalAssets);

                // apply penalty to total exiting assets
                unchecked {
                    // cannot underflow as exitingAssetsPenalty <= penalty
                    penalty -= exitingAssetsPenalty;
                }
                _totalExitingAssets = SafeCast.toUint128(totalExitingAssets - exitingAssetsPenalty);
                emit ExitingAssetsPenalized(exitingAssetsPenalty);
            }

            // subtract penalty from total assets (excludes exiting assets)
            if (penalty > 0) {
                _totalAssets = SafeCast.toUint128(newTotalAssets - penalty);
            }
            return;
        }

        // convert assets delta as it is positive
        uint256 profitAssets = uint256(totalAssetsDelta);
        newTotalAssets += profitAssets;

        // update state
        _totalAssets = SafeCast.toUint128(newTotalAssets);

        // calculate admin fee recipient assets
        uint256 feeRecipientAssets = Math.mulDiv(profitAssets, feePercent, _maxFeePercent);
        if (feeRecipientAssets == 0) return;

        // SLOAD to memory
        uint256 totalShares_ = _totalShares;

        // calculate fee recipient's shares
        uint256 feeRecipientShares;
        if (totalShares_ == 0) {
            feeRecipientShares = feeRecipientAssets;
        } else {
            unchecked {
                feeRecipientShares = Math.mulDiv(feeRecipientAssets, totalShares_, newTotalAssets - feeRecipientAssets);
            }
        }

        // SLOAD to memory
        address _feeRecipient = feeRecipient;
        // mint shares to the fee recipient
        _mintShares(_feeRecipient, feeRecipientShares);
        emit FeeSharesMinted(_feeRecipient, feeRecipientShares, feeRecipientAssets);
    }

    /**
     * @dev Internal function that must be used to process exit queue
     * @dev Make sure that sufficient time passed between exit queue updates (at least 12 hours).
     *      Currently it's restricted by the keeper's harvest interval
     * @return burnedShares The total amount of burned shares
     */
    function _updateExitQueue() internal virtual returns (uint256 burnedShares) {
        // calculate assets that can be used to process the exit requests
        uint256 availableAssets = _vaultAssets() - _unclaimedAssets;
        if (availableAssets == 0) return 0;

        // SLOAD to memory
        uint256 totalExitingAssets = _totalExitingAssets;
        if (totalExitingAssets > 0) {
            // wait for all the exiting assets from v2 to be processed
            if (availableAssets < totalExitingAssets) return 0;

            // SLOAD to memory
            uint256 totalExitingTickets = _totalExitingTickets;

            // push checkpoint so that exited assets could be claimed
            _exitQueue.push(totalExitingTickets, totalExitingAssets);
            emit CheckpointCreated(totalExitingTickets, totalExitingAssets);

            unchecked {
                // cannot underflow as _totalExitingAssets <= availableAssets
                availableAssets -= totalExitingAssets;
            }

            // update state
            _unclaimedAssets += SafeCast.toUint128(totalExitingAssets);
            _totalExitingTickets = 0;
            _totalExitingAssets = 0;
        }

        // SLOAD to memory
        uint256 queuedShares = _queuedShares;
        if (queuedShares == 0 || availableAssets == 0) return 0;

        // calculate the amount of assets that can be exited
        uint256 exitedAssets = Math.min(availableAssets, convertToAssets(queuedShares));
        if (exitedAssets == 0) return 0;

        // calculate the amount of shares that can be burned
        burnedShares = convertToShares(exitedAssets);
        if (burnedShares == 0) return 0;

        // update queued shares and unclaimed assets
        _queuedShares = SafeCast.toUint128(queuedShares - burnedShares);
        _unclaimedAssets += SafeCast.toUint128(exitedAssets);

        // push checkpoint so that exited assets could be claimed
        _exitQueue.push(burnedShares, exitedAssets);
        emit CheckpointCreated(burnedShares, exitedAssets);

        // update state
        _totalShares -= SafeCast.toUint128(burnedShares);
        _totalAssets -= SafeCast.toUint128(exitedAssets);
    }

    /**
     * @dev Internal function for minting shares
     * @param owner The address of the owner to mint shares to
     * @param shares The number of shares to mint
     */
    function _mintShares(address owner, uint256 shares) internal virtual {
        // update total shares
        _totalShares += SafeCast.toUint128(shares);

        // mint shares
        unchecked {
            // cannot overflow because the sum of all user
            // balances can't exceed the max uint256 value
            _balances[owner] += shares;
        }
    }

    /**
     * @dev Internal function for burning shares
     * @param owner The address of the owner to burn shares for
     * @param shares The number of shares to burn
     */
    function _burnShares(address owner, uint256 shares) internal virtual {
        // burn shares
        _balances[owner] -= shares;

        // update total shares
        unchecked {
            // cannot underflow because the sum of all shares can't exceed the _totalShares
            _totalShares -= SafeCast.toUint128(shares);
        }
    }

    /**
     * @dev Internal conversion function (from assets to shares) with support for rounding direction.
     */
    function _convertToShares(uint256 assets, Math.Rounding rounding) internal view returns (uint256 shares) {
        uint256 totalShares_ = _totalShares;
        // Will revert if assets > 0, totalShares > 0 and _totalAssets = 0.
        // That corresponds to a case where any asset would represent an infinite amount of shares.
        return (assets == 0 || totalShares_ == 0) ? assets : Math.mulDiv(assets, totalShares_, _totalAssets, rounding);
    }

    /**
     * @dev Internal function for harvesting Vaults' new assets
     * @return totalAssetsDelta The total assets delta after harvest
     * @return harvested `true` when the rewards were harvested, `false` otherwise
     */
    function _harvestAssets(IKeeperRewards.HarvestParams calldata harvestParams)
        internal
        virtual
        returns (int256 totalAssetsDelta, bool harvested);

    /**
     * @dev Internal function for retrieving the total assets stored in the Vault.
     *      NB! Assets can be forcibly sent to the vault, the returned value must be used with caution
     * @return The total amount of assets stored in the Vault
     */
    function _vaultAssets() internal view virtual returns (uint256);

    /**
     * @dev Initializes the VaultState contract
     * @param capacity_ The amount after which the Vault stops accepting deposits
     */
    function __VaultState_init(uint256 capacity_) internal onlyInitializing {
        if (capacity_ == 0) revert Errors.InvalidCapacity();
        // skip setting capacity if it is unlimited
        if (capacity_ != type(uint256).max) _capacity = capacity_;
    }

    /**
     * @dev Upgrades the VaultState contract
     */
    function __VaultState_upgrade() internal onlyInitializing {
        // SLOAD to memory
        uint256 totalExitedTickets = _totalExitedTickets;
        uint256 exitQueueTicket = _exitQueue.getLatestTotalTickets();
        if (exitQueueTicket < totalExitedTickets) {
            uint256 exitedTickets;
            unchecked {
                // cannot underflow as latestTicket >= exitQueueTicket
                exitedTickets = totalExitedTickets - exitQueueTicket;
            }
            _exitQueue.push(exitedTickets, 0);
            emit CheckpointCreated(exitedTickets, 0);
        }
        _totalExitedTickets = 0;

        // SLOAD to memory
        // create checkpoint for exiting assets for uncollateralized vaults
        uint256 totalExitingAssets = _totalExitingAssets;
        if (!_isCollateralized() && totalExitingAssets > 0) {
            uint256 availableAssets = _vaultAssets() - _unclaimedAssets;
            if (availableAssets < totalExitingAssets) {
                revert Errors.InvalidAssets();
            }
            // SLOAD to memory
            uint256 totalExitingTickets = _totalExitingTickets;

            // push checkpoint so that exited assets could be claimed
            _exitQueue.push(totalExitingTickets, totalExitingAssets);
            emit CheckpointCreated(totalExitingTickets, totalExitingAssets);

            // update state
            _unclaimedAssets += SafeCast.toUint128(totalExitingAssets);
            _totalExitingTickets = 0;
            _totalExitingAssets = 0;
        }
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[47] private __gap;
}

// ============================================================
// FILE: contracts/vaults/modules/VaultValidators.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.22;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {IKeeperValidators} from "../../interfaces/IKeeperValidators.sol";
import {IVaultValidators} from "../../interfaces/IVaultValidators.sol";
import {IConsolidationsChecker} from "../../interfaces/IConsolidationsChecker.sol";
import {IDepositDataRegistry} from "../../interfaces/IDepositDataRegistry.sol";
import {Errors} from "../../libraries/Errors.sol";
import {ValidatorUtils} from "../../libraries/ValidatorUtils.sol";
import {EIP712Utils} from "../../libraries/EIP712Utils.sol";
import {VaultImmutables} from "./VaultImmutables.sol";
import {VaultAdmin} from "./VaultAdmin.sol";
import {VaultState} from "./VaultState.sol";

/**
 * @title VaultValidators
 * @author StakeWise
 * @notice Defines the validators functionality for the Vault
 */
abstract contract VaultValidators is
    VaultImmutables,
    Initializable,
    ReentrancyGuardUpgradeable,
    VaultAdmin,
    VaultState,
    IVaultValidators
{
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    address private immutable _depositDataRegistry;

    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    uint256 private immutable _initialChainId;

    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    address internal immutable _validatorsRegistry;

    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    address private immutable _validatorsWithdrawals;

    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    address private immutable _validatorsConsolidations;

    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    address private immutable _consolidationsChecker;

    /// deprecated. Deposit data management is moved to DepositDataRegistry contract
    bytes32 private __deprecated__validatorsRoot;

    /// deprecated. Deposit data management is moved to DepositDataRegistry contract
    uint256 private __deprecated__validatorIndex;

    /// @inheritdoc IVaultValidators
    address public override validatorsManager;

    bytes32 private _initialDomainSeparator;

    /// @inheritdoc IVaultValidators
    mapping(bytes32 publicKeyHash => bool isRegistered) public override v2Validators;

    /// @inheritdoc IVaultValidators
    uint256 public override validatorsManagerNonce;

    /**
     * @dev Constructor
     * @dev Since the immutable variable value is stored in the bytecode,
     *      its value would be shared among all proxies pointing to a given contract instead of each proxy’s storage.
     * @param depositDataRegistry The address of the deposit data registry contract
     * @param validatorsRegistry The contract address used for registering validators in beacon chain
     * @param validatorsWithdrawals The contract address used for withdrawing validators in beacon chain
     * @param validatorsConsolidations The contract address used for consolidating validators in beacon chain
     * @param consolidationsChecker The contract address used for verifying consolidation approvals
     */
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor(
        address depositDataRegistry,
        address validatorsRegistry,
        address validatorsWithdrawals,
        address validatorsConsolidations,
        address consolidationsChecker
    ) {
        _initialChainId = block.chainid;
        _depositDataRegistry = depositDataRegistry;
        _validatorsRegistry = validatorsRegistry;
        _validatorsWithdrawals = validatorsWithdrawals;
        _validatorsConsolidations = validatorsConsolidations;
        _consolidationsChecker = consolidationsChecker;
    }

    /// @inheritdoc IVaultValidators
    function registerValidators(
        IKeeperValidators.ApprovalParams calldata keeperParams,
        bytes calldata validatorsManagerSignature
    ) external override {
        // check whether oracles have approve validators registration
        IKeeperValidators(_keeper).approveValidators(keeperParams);

        // check vault is up to date
        _checkHarvested();

        // check access
        if (
            !_isValidatorsManager(
                keeperParams.validators, keeperParams.validatorsRegistryRoot, validatorsManagerSignature
            )
        ) {
            revert Errors.AccessDenied();
        }

        // get validator deposits
        ValidatorUtils.ValidatorDeposit[] memory validatorDeposits =
            ValidatorUtils.getValidatorDeposits(v2Validators, keeperParams.validators, false);

        // register validators
        _registerValidators(validatorDeposits);
    }

    /// @inheritdoc IVaultValidators
    function fundValidators(bytes calldata validators, bytes calldata validatorsManagerSignature) external override {
        // check vault is up to date
        _checkHarvested();

        // check access
        if (!_isValidatorsManager(validators, bytes32(validatorsManagerNonce), validatorsManagerSignature)) {
            revert Errors.AccessDenied();
        }

        // get validator deposits
        ValidatorUtils.ValidatorDeposit[] memory validatorDeposits =
            ValidatorUtils.getValidatorDeposits(v2Validators, validators, true);

        // top up validators
        _registerValidators(validatorDeposits);
    }

    /// @inheritdoc IVaultValidators
    function withdrawValidators(bytes calldata validators, bytes calldata validatorsManagerSignature)
        external
        payable
        override
        nonReentrant
    {
        _checkCollateralized();
        if (!_isValidatorsManager(validators, bytes32(validatorsManagerNonce), validatorsManagerSignature)) {
            revert Errors.AccessDenied();
        }
        ValidatorUtils.withdrawValidators(validators, _validatorsWithdrawals);
    }

    /// @inheritdoc IVaultValidators
    function consolidateValidators(
        bytes calldata validators,
        bytes calldata validatorsManagerSignature,
        bytes calldata oracleSignatures
    ) external payable override nonReentrant {
        _checkCollateralized();
        if (!_isValidatorsManager(validators, bytes32(validatorsManagerNonce), validatorsManagerSignature)) {
            revert Errors.AccessDenied();
        }

        // Check for oracle approval if signatures provided
        bool consolidationsApproved = false;
        if (oracleSignatures.length > 0) {
            // Check whether oracles have approved validators consolidation
            IConsolidationsChecker(_consolidationsChecker).verifySignatures(address(this), validators, oracleSignatures);
            consolidationsApproved = true;
        }

        ValidatorUtils.consolidateValidators(
            v2Validators, validators, consolidationsApproved, _validatorsConsolidations
        );
    }

    /// @inheritdoc IVaultValidators
    function setValidatorsManager(address _validatorsManager) external override {
        _checkAdmin();
        if (_validatorsManager == validatorsManager) {
            revert Errors.ValueNotChanged();
        }

        // update validatorsManager address
        validatorsManager = _validatorsManager;
        emit ValidatorsManagerUpdated(msg.sender, _validatorsManager);
    }

    /**
     * @dev Internal function for registering validators
     * @param deposits The validators registration data
     */
    function _registerValidators(ValidatorUtils.ValidatorDeposit[] memory deposits) internal virtual;

    /**
     * @dev Internal function for checking whether the caller is the validators manager.
     *      If the valid signature is provided, update the nonce.
     * @param validators The concatenated validators data
     * @param nonce The nonce of the signature
     * @param validatorsManagerSignature The optional signature from the validators manager
     * @return true if the caller is the validators manager
     */
    function _isValidatorsManager(bytes calldata validators, bytes32 nonce, bytes calldata validatorsManagerSignature)
        internal
        returns (bool)
    {
        // SLOAD to memory
        address _validatorsManager = validatorsManager;
        if (_validatorsManager == address(0) || validators.length == 0) {
            return false;
        }

        if (validatorsManagerSignature.length == 0) {
            // if no signature is provided, check if the caller is the validators manager
            return msg.sender == _validatorsManager;
        }

        // check signature
        bytes32 domainSeparator =
            block.chainid == _initialChainId ? _initialDomainSeparator : _computeVaultValidatorsDomain();
        bool isValidSignature = ValidatorUtils.isValidManagerSignature(
            nonce, domainSeparator, _validatorsManager, validators, validatorsManagerSignature
        );

        // update signature nonce
        if (isValidSignature) {
            unchecked {
                // cannot realistically overflow
                validatorsManagerNonce += 1;
            }
        }

        return isValidSignature;
    }

    /**
     * @notice Computes the hash of the EIP712 typed data
     * @dev This function is used to compute the hash of the EIP712 typed data
     * @return The hash of the EIP712 typed data
     */
    function _computeVaultValidatorsDomain() private view returns (bytes32) {
        return EIP712Utils.computeDomainSeparator("VaultValidators", address(this));
    }

    /**
     * @dev Upgrades the VaultValidators contract
     */
    function __VaultValidators_upgrade() internal onlyInitializing {
        __VaultValidators_init_common();

        // migrate deposit data variables to DepositDataRegistry contract
        if (__deprecated__validatorsRoot != bytes32(0)) {
            IDepositDataRegistry(_depositDataRegistry).migrate(
                __deprecated__validatorsRoot, __deprecated__validatorIndex, validatorsManager
            );
            delete __deprecated__validatorIndex;
            delete __deprecated__validatorsRoot;
            delete validatorsManager;
        }
        if (validatorsManager == address(0)) {
            validatorsManager = _depositDataRegistry;
        }
    }

    /**
     * @dev Initializes the VaultValidators contract
     */
    function __VaultValidators_init() internal onlyInitializing {
        __VaultValidators_init_common();
    }

    /**
     * @dev Common initialization for gas optimization
     */
    function __VaultValidators_init_common() private {
        __ReentrancyGuard_init();
        // initialize domain separator
        bytes32 newInitialDomainSeparator = _computeVaultValidatorsDomain();
        if (newInitialDomainSeparator != _initialDomainSeparator) {
            _initialDomainSeparator = newInitialDomainSeparator;
        }
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[47] private __gap;
}

// ============================================================
// FILE: contracts/vaults/modules/VaultVersion.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.22;

import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {ERC1967Utils} from "@openzeppelin/contracts/proxy/ERC1967/ERC1967Utils.sol";
import {IVaultsRegistry} from "../../interfaces/IVaultsRegistry.sol";
import {IVaultVersion} from "../../interfaces/IVaultVersion.sol";
import {Errors} from "../../libraries/Errors.sol";
import {VaultAdmin} from "./VaultAdmin.sol";
import {VaultImmutables} from "./VaultImmutables.sol";

/**
 * @title VaultVersion
 * @author StakeWise
 * @notice Defines the versioning functionality for the Vault
 */
abstract contract VaultVersion is VaultImmutables, Initializable, UUPSUpgradeable, VaultAdmin, IVaultVersion {
    bytes4 private constant _initSelector = bytes4(keccak256("initialize(bytes)"));

    /// @inheritdoc IVaultVersion
    function implementation() external view override returns (address) {
        return ERC1967Utils.getImplementation();
    }

    /// @inheritdoc UUPSUpgradeable
    function upgradeToAndCall(address newImplementation, bytes memory data) public payable override onlyProxy {
        super.upgradeToAndCall(newImplementation, abi.encodeWithSelector(_initSelector, data));
    }

    /// @inheritdoc UUPSUpgradeable
    function _authorizeUpgrade(address newImplementation) internal view override {
        _checkAdmin();
        if (
            newImplementation == address(0) || ERC1967Utils.getImplementation() == newImplementation // cannot reinit the same implementation
                || IVaultVersion(newImplementation).vaultId() != vaultId() // vault must be of the same type
                || IVaultVersion(newImplementation).version() != version() + 1 // vault cannot skip versions between
                || !IVaultsRegistry(_vaultsRegistry).vaultImpls(newImplementation) // new implementation must be registered
        ) {
            revert Errors.UpgradeFailed();
        }
    }

    /// @inheritdoc IVaultVersion
    function vaultId() public pure virtual override returns (bytes32);

    /// @inheritdoc IVaultVersion
    function version() public pure virtual override returns (uint8);

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[50] private __gap;
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/proxy/utils/Initializable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.3.0) (proxy/utils/Initializable.sol)

pragma solidity ^0.8.20;

/**
 * @dev This is a base contract to aid in writing upgradeable contracts, or any kind of contract that will be deployed
 * behind a proxy. Since proxied contracts do not make use of a constructor, it's common to move constructor logic to an
 * external initializer function, usually called `initialize`. It then becomes necessary to protect this initializer
 * function so it can only be called once. The {initializer} modifier provided by this contract will have this effect.
 *
 * The initialization functions use a version number. Once a version number is used, it is consumed and cannot be
 * reused. This mechanism prevents re-execution of each "step" but allows the creation of new initialization steps in
 * case an upgrade adds a module that needs to be initialized.
 *
 * For example:
 *
 * [.hljs-theme-light.nopadding]
 * ```solidity
 * contract MyToken is ERC20Upgradeable {
 *     function initialize() initializer public {
 *         __ERC20_init("MyToken", "MTK");
 *     }
 * }
 *
 * contract MyTokenV2 is MyToken, ERC20PermitUpgradeable {
 *     function initializeV2() reinitializer(2) public {
 *         __ERC20Permit_init("MyToken");
 *     }
 * }
 * ```
 *
 * TIP: To avoid leaving the proxy in an uninitialized state, the initializer function should be called as early as
 * possible by providing the encoded function call as the `_data` argument to {ERC1967Proxy-constructor}.
 *
 * CAUTION: When used with inheritance, manual care must be taken to not invoke a parent initializer twice, or to ensure
 * that all initializers are idempotent. This is not verified automatically as constructors are by Solidity.
 *
 * [CAUTION]
 * ====
 * Avoid leaving a contract uninitialized.
 *
 * An uninitialized contract can be taken over by an attacker. This applies to both a proxy and its implementation
 * contract, which may impact the proxy. To prevent the implementation contract from being used, you should invoke
 * the {_disableInitializers} function in the constructor to automatically lock it when it is deployed:
 *
 * [.hljs-theme-light.nopadding]
 * ```
 * /// @custom:oz-upgrades-unsafe-allow constructor
 * constructor() {
 *     _disableInitializers();
 * }
 * ```
 * ====
 */
abstract contract Initializable {
    /**
     * @dev Storage of the initializable contract.
     *
     * It's implemented on a custom ERC-7201 namespace to reduce the risk of storage collisions
     * when using with upgradeable contracts.
     *
     * @custom:storage-location erc7201:openzeppelin.storage.Initializable
     */
    struct InitializableStorage {
        /**
         * @dev Indicates that the contract has been initialized.
         */
        uint64 _initialized;
        /**
         * @dev Indicates that the contract is in the process of being initialized.
         */
        bool _initializing;
    }

    // keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.Initializable")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant INITIALIZABLE_STORAGE = 0xf0c57e16840df040f15088dc2f81fe391c3923bec73e23a9662efc9c229c6a00;

    /**
     * @dev The contract is already initialized.
     */
    error InvalidInitialization();

    /**
     * @dev The contract is not initializing.
     */
    error NotInitializing();

    /**
     * @dev Triggered when the contract has been initialized or reinitialized.
     */
    event Initialized(uint64 version);

    /**
     * @dev A modifier that defines a protected initializer function that can be invoked at most once. In its scope,
     * `onlyInitializing` functions can be used to initialize parent contracts.
     *
     * Similar to `reinitializer(1)`, except that in the context of a constructor an `initializer` may be invoked any
     * number of times. This behavior in the constructor can be useful during testing and is not expected to be used in
     * production.
     *
     * Emits an {Initialized} event.
     */
    modifier initializer() {
        // solhint-disable-next-line var-name-mixedcase
        InitializableStorage storage $ = _getInitializableStorage();

        // Cache values to avoid duplicated sloads
        bool isTopLevelCall = !$._initializing;
        uint64 initialized = $._initialized;

        // Allowed calls:
        // - initialSetup: the contract is not in the initializing state and no previous version was
        //                 initialized
        // - construction: the contract is initialized at version 1 (no reinitialization) and the
        //                 current contract is just being deployed
        bool initialSetup = initialized == 0 && isTopLevelCall;
        bool construction = initialized == 1 && address(this).code.length == 0;

        if (!initialSetup && !construction) {
            revert InvalidInitialization();
        }
        $._initialized = 1;
        if (isTopLevelCall) {
            $._initializing = true;
        }
        _;
        if (isTopLevelCall) {
            $._initializing = false;
            emit Initialized(1);
        }
    }

    /**
     * @dev A modifier that defines a protected reinitializer function that can be invoked at most once, and only if the
     * contract hasn't been initialized to a greater version before. In its scope, `onlyInitializing` functions can be
     * used to initialize parent contracts.
     *
     * A reinitializer may be used after the original initialization step. This is essential to configure modules that
     * are added through upgrades and that require initialization.
     *
     * When `version` is 1, this modifier is similar to `initializer`, except that functions marked with `reinitializer`
     * cannot be nested. If one is invoked in the context of another, execution will revert.
     *
     * Note that versions can jump in increments greater than 1; this implies that if multiple reinitializers coexist in
     * a contract, executing them in the right order is up to the developer or operator.
     *
     * WARNING: Setting the version to 2**64 - 1 will prevent any future reinitialization.
     *
     * Emits an {Initialized} event.
     */
    modifier reinitializer(uint64 version) {
        // solhint-disable-next-line var-name-mixedcase
        InitializableStorage storage $ = _getInitializableStorage();

        if ($._initializing || $._initialized >= version) {
            revert InvalidInitialization();
        }
        $._initialized = version;
        $._initializing = true;
        _;
        $._initializing = false;
        emit Initialized(version);
    }

    /**
     * @dev Modifier to protect an initialization function so that it can only be invoked by functions with the
     * {initializer} and {reinitializer} modifiers, directly or indirectly.
     */
    modifier onlyInitializing() {
        _checkInitializing();
        _;
    }

    /**
     * @dev Reverts if the contract is not in an initializing state. See {onlyInitializing}.
     */
    function _checkInitializing() internal view virtual {
        if (!_isInitializing()) {
            revert NotInitializing();
        }
    }

    /**
     * @dev Locks the contract, preventing any future reinitialization. This cannot be part of an initializer call.
     * Calling this in the constructor of a contract will prevent that contract from being initialized or reinitialized
     * to any version. It is recommended to use this to lock implementation contracts that are designed to be called
     * through proxies.
     *
     * Emits an {Initialized} event the first time it is successfully executed.
     */
    function _disableInitializers() internal virtual {
        // solhint-disable-next-line var-name-mixedcase
        InitializableStorage storage $ = _getInitializableStorage();

        if ($._initializing) {
            revert InvalidInitialization();
        }
        if ($._initialized != type(uint64).max) {
            $._initialized = type(uint64).max;
            emit Initialized(type(uint64).max);
        }
    }

    /**
     * @dev Returns the highest version that has been initialized. See {reinitializer}.
     */
    function _getInitializedVersion() internal view returns (uint64) {
        return _getInitializableStorage()._initialized;
    }

    /**
     * @dev Returns `true` if the contract is currently initializing. See {onlyInitializing}.
     */
    function _isInitializing() internal view returns (bool) {
        return _getInitializableStorage()._initializing;
    }

    /**
     * @dev Pointer to storage slot. Allows integrators to override it with a custom storage location.
     *
     * NOTE: Consider following the ERC-7201 formula to derive storage locations.
     */
    function _initializableStorageSlot() internal pure virtual returns (bytes32) {
        return INITIALIZABLE_STORAGE;
    }

    /**
     * @dev Returns a pointer to the storage namespace.
     */
    // solhint-disable-next-line var-name-mixedcase
    function _getInitializableStorage() private pure returns (InitializableStorage storage $) {
        bytes32 slot = _initializableStorageSlot();
        assembly {
            $.slot := slot
        }
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/proxy/utils/UUPSUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.3.0) (proxy/utils/UUPSUpgradeable.sol)

pragma solidity ^0.8.22;

import {IERC1822Proxiable} from "@openzeppelin/contracts/interfaces/draft-IERC1822.sol";
import {ERC1967Utils} from "@openzeppelin/contracts/proxy/ERC1967/ERC1967Utils.sol";
import {Initializable} from "./Initializable.sol";

/**
 * @dev An upgradeability mechanism designed for UUPS proxies. The functions included here can perform an upgrade of an
 * {ERC1967Proxy}, when this contract is set as the implementation behind such a proxy.
 *
 * A security mechanism ensures that an upgrade does not turn off upgradeability accidentally, although this risk is
 * reinstated if the upgrade retains upgradeability but removes the security mechanism, e.g. by replacing
 * `UUPSUpgradeable` with a custom implementation of upgrades.
 *
 * The {_authorizeUpgrade} function must be overridden to include access restriction to the upgrade mechanism.
 */
abstract contract UUPSUpgradeable is Initializable, IERC1822Proxiable {
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    address private immutable __self = address(this);

    /**
     * @dev The version of the upgrade interface of the contract. If this getter is missing, both `upgradeTo(address)`
     * and `upgradeToAndCall(address,bytes)` are present, and `upgradeTo` must be used if no function should be called,
     * while `upgradeToAndCall` will invoke the `receive` function if the second argument is the empty byte string.
     * If the getter returns `"5.0.0"`, only `upgradeToAndCall(address,bytes)` is present, and the second argument must
     * be the empty byte string if no function should be called, making it impossible to invoke the `receive` function
     * during an upgrade.
     */
    string public constant UPGRADE_INTERFACE_VERSION = "5.0.0";

    /**
     * @dev The call is from an unauthorized context.
     */
    error UUPSUnauthorizedCallContext();

    /**
     * @dev The storage `slot` is unsupported as a UUID.
     */
    error UUPSUnsupportedProxiableUUID(bytes32 slot);

    /**
     * @dev Check that the execution is being performed through a delegatecall call and that the execution context is
     * a proxy contract with an implementation (as defined in ERC-1967) pointing to self. This should only be the case
     * for UUPS and transparent proxies that are using the current contract as their implementation. Execution of a
     * function through ERC-1167 minimal proxies (clones) would not normally pass this test, but is not guaranteed to
     * fail.
     */
    modifier onlyProxy() {
        _checkProxy();
        _;
    }

    /**
     * @dev Check that the execution is not being performed through a delegate call. This allows a function to be
     * callable on the implementing contract but not through proxies.
     */
    modifier notDelegated() {
        _checkNotDelegated();
        _;
    }

    function __UUPSUpgradeable_init() internal onlyInitializing {
    }

    function __UUPSUpgradeable_init_unchained() internal onlyInitializing {
    }
    /**
     * @dev Implementation of the ERC-1822 {proxiableUUID} function. This returns the storage slot used by the
     * implementation. It is used to validate the implementation's compatibility when performing an upgrade.
     *
     * IMPORTANT: A proxy pointing at a proxiable contract should not be considered proxiable itself, because this risks
     * bricking a proxy that upgrades to it, by delegating to itself until out of gas. Thus it is critical that this
     * function revert if invoked through a proxy. This is guaranteed by the `notDelegated` modifier.
     */
    function proxiableUUID() external view virtual notDelegated returns (bytes32) {
        return ERC1967Utils.IMPLEMENTATION_SLOT;
    }

    /**
     * @dev Upgrade the implementation of the proxy to `newImplementation`, and subsequently execute the function call
     * encoded in `data`.
     *
     * Calls {_authorizeUpgrade}.
     *
     * Emits an {Upgraded} event.
     *
     * @custom:oz-upgrades-unsafe-allow-reachable delegatecall
     */
    function upgradeToAndCall(address newImplementation, bytes memory data) public payable virtual onlyProxy {
        _authorizeUpgrade(newImplementation);
        _upgradeToAndCallUUPS(newImplementation, data);
    }

    /**
     * @dev Reverts if the execution is not performed via delegatecall or the execution
     * context is not of a proxy with an ERC-1967 compliant implementation pointing to self.
     */
    function _checkProxy() internal view virtual {
        if (
            address(this) == __self || // Must be called through delegatecall
            ERC1967Utils.getImplementation() != __self // Must be called through an active proxy
        ) {
            revert UUPSUnauthorizedCallContext();
        }
    }

    /**
     * @dev Reverts if the execution is performed via delegatecall.
     * See {notDelegated}.
     */
    function _checkNotDelegated() internal view virtual {
        if (address(this) != __self) {
            // Must not be called through delegatecall
            revert UUPSUnauthorizedCallContext();
        }
    }

    /**
     * @dev Function that should revert when `msg.sender` is not authorized to upgrade the contract. Called by
     * {upgradeToAndCall}.
     *
     * Normally, this function will use an xref:access.adoc[access control] modifier such as {Ownable-onlyOwner}.
     *
     * ```solidity
     * function _authorizeUpgrade(address) internal onlyOwner {}
     * ```
     */
    function _authorizeUpgrade(address newImplementation) internal virtual;

    /**
     * @dev Performs an implementation upgrade with a security check for UUPS proxies, and additional setup call.
     *
     * As a security check, {proxiableUUID} is invoked in the new implementation, and the return value
     * is expected to be the implementation slot in ERC-1967.
     *
     * Emits an {IERC1967-Upgraded} event.
     */
    function _upgradeToAndCallUUPS(address newImplementation, bytes memory data) private {
        try IERC1822Proxiable(newImplementation).proxiableUUID() returns (bytes32 slot) {
            if (slot != ERC1967Utils.IMPLEMENTATION_SLOT) {
                revert UUPSUnsupportedProxiableUUID(slot);
            }
            ERC1967Utils.upgradeToAndCall(newImplementation, data);
        } catch {
            // The implementation is not UUPS
            revert ERC1967Utils.ERC1967InvalidImplementation(newImplementation);
        }
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/utils/ReentrancyGuardUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (utils/ReentrancyGuard.sol)

pragma solidity ^0.8.20;
import {Initializable} from "../proxy/utils/Initializable.sol";

/**
 * @dev Contract module that helps prevent reentrant calls to a function.
 *
 * Inheriting from `ReentrancyGuard` will make the {nonReentrant} modifier
 * available, which can be applied to functions to make sure there are no nested
 * (reentrant) calls to them.
 *
 * Note that because there is a single `nonReentrant` guard, functions marked as
 * `nonReentrant` may not call one another. This can be worked around by making
 * those functions `private`, and then adding `external` `nonReentrant` entry
 * points to them.
 *
 * TIP: If EIP-1153 (transient storage) is available on the chain you're deploying at,
 * consider using {ReentrancyGuardTransient} instead.
 *
 * TIP: If you would like to learn more about reentrancy and alternative ways
 * to protect against it, check out our blog post
 * https://blog.openzeppelin.com/reentrancy-after-istanbul/[Reentrancy After Istanbul].
 */
abstract contract ReentrancyGuardUpgradeable is Initializable {
    // Booleans are more expensive than uint256 or any type that takes up a full
    // word because each write operation emits an extra SLOAD to first read the
    // slot's contents, replace the bits taken up by the boolean, and then write
    // back. This is the compiler's defense against contract upgrades and
    // pointer aliasing, and it cannot be disabled.

    // The values being non-zero value makes deployment a bit more expensive,
    // but in exchange the refund on every call to nonReentrant will be lower in
    // amount. Since refunds are capped to a percentage of the total
    // transaction's gas, it is best to keep them low in cases like this one, to
    // increase the likelihood of the full refund coming into effect.
    uint256 private constant NOT_ENTERED = 1;
    uint256 private constant ENTERED = 2;

    /// @custom:storage-location erc7201:openzeppelin.storage.ReentrancyGuard
    struct ReentrancyGuardStorage {
        uint256 _status;
    }

    // keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.ReentrancyGuard")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant ReentrancyGuardStorageLocation = 0x9b779b17422d0df92223018b32b4d1fa46e071723d6817e2486d003becc55f00;

    function _getReentrancyGuardStorage() private pure returns (ReentrancyGuardStorage storage $) {
        assembly {
            $.slot := ReentrancyGuardStorageLocation
        }
    }

    /**
     * @dev Unauthorized reentrant call.
     */
    error ReentrancyGuardReentrantCall();

    function __ReentrancyGuard_init() internal onlyInitializing {
        __ReentrancyGuard_init_unchained();
    }

    function __ReentrancyGuard_init_unchained() internal onlyInitializing {
        ReentrancyGuardStorage storage $ = _getReentrancyGuardStorage();
        $._status = NOT_ENTERED;
    }

    /**
     * @dev Prevents a contract from calling itself, directly or indirectly.
     * Calling a `nonReentrant` function from another `nonReentrant`
     * function is not supported. It is possible to prevent this from happening
     * by making the `nonReentrant` function external, and making it call a
     * `private` function that does the actual work.
     */
    modifier nonReentrant() {
        _nonReentrantBefore();
        _;
        _nonReentrantAfter();
    }

    function _nonReentrantBefore() private {
        ReentrancyGuardStorage storage $ = _getReentrancyGuardStorage();
        // On the first call to nonReentrant, _status will be NOT_ENTERED
        if ($._status == ENTERED) {
            revert ReentrancyGuardReentrantCall();
        }

        // Any calls to nonReentrant after this point will fail
        $._status = ENTERED;
    }

    function _nonReentrantAfter() private {
        ReentrancyGuardStorage storage $ = _getReentrancyGuardStorage();
        // By storing the original value once again, a refund is triggered (see
        // https://eips.ethereum.org/EIPS/eip-2200)
        $._status = NOT_ENTERED;
    }

    /**
     * @dev Returns true if the reentrancy guard is currently set to "entered", which indicates there is a
     * `nonReentrant` function in the call stack.
     */
    function _reentrancyGuardEntered() internal view returns (bool) {
        ReentrancyGuardStorage storage $ = _getReentrancyGuardStorage();
        return $._status == ENTERED;
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/interfaces/draft-IERC1822.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (interfaces/draft-IERC1822.sol)

pragma solidity ^0.8.20;

/**
 * @dev ERC-1822: Universal Upgradeable Proxy Standard (UUPS) documents a method for upgradeability through a simplified
 * proxy whose upgrades are fully controlled by the current implementation.
 */
interface IERC1822Proxiable {
    /**
     * @dev Returns the storage slot that the proxiable contract assumes is being used to store the implementation
     * address.
     *
     * IMPORTANT: A proxy pointing at a proxiable contract should not be considered proxiable itself, because this risks
     * bricking a proxy that upgrades to it, by delegating to itself until out of gas. Thus it is critical that this
     * function revert if invoked through a proxy.
     */
    function proxiableUUID() external view returns (bytes32);
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/interfaces/IERC1271.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.3.0) (interfaces/IERC1271.sol)

pragma solidity ^0.8.20;

/**
 * @dev Interface of the ERC-1271 standard signature validation method for
 * contracts as defined in https://eips.ethereum.org/EIPS/eip-1271[ERC-1271].
 */
interface IERC1271 {
    /**
     * @dev Should return whether the signature provided is valid for the provided data
     * @param hash      Hash of the data to be signed
     * @param signature Signature byte array associated with `hash`
     */
    function isValidSignature(bytes32 hash, bytes memory signature) external view returns (bytes4 magicValue);
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/interfaces/IERC1967.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/IERC1967.sol)

pragma solidity ^0.8.20;

/**
 * @dev ERC-1967: Proxy Storage Slots. This interface contains the events defined in the ERC.
 */
interface IERC1967 {
    /**
     * @dev Emitted when the implementation is upgraded.
     */
    event Upgraded(address indexed implementation);

    /**
     * @dev Emitted when the admin account has changed.
     */
    event AdminChanged(address previousAdmin, address newAdmin);

    /**
     * @dev Emitted when the beacon is changed.
     */
    event BeaconUpgraded(address indexed beacon);
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/interfaces/IERC5267.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/IERC5267.sol)

pragma solidity ^0.8.20;

interface IERC5267 {
    /**
     * @dev MAY be emitted to signal that the domain could have changed.
     */
    event EIP712DomainChanged();

    /**
     * @dev returns the fields and values that describe the domain separator used by this contract for EIP-712
     * signature.
     */
    function eip712Domain()
        external
        view
        returns (
            bytes1 fields,
            string memory name,
            string memory version,
            uint256 chainId,
            address verifyingContract,
            bytes32 salt,
            uint256[] memory extensions
        );
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/proxy/beacon/IBeacon.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (proxy/beacon/IBeacon.sol)

pragma solidity ^0.8.20;

/**
 * @dev This is the interface that {BeaconProxy} expects of its beacon.
 */
interface IBeacon {
    /**
     * @dev Must return an address that can be used as a delegate call target.
     *
     * {UpgradeableBeacon} will check that this address is a contract.
     */
    function implementation() external view returns (address);
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/proxy/ERC1967/ERC1967Utils.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.2.0) (proxy/ERC1967/ERC1967Utils.sol)

pragma solidity ^0.8.22;

import {IBeacon} from "../beacon/IBeacon.sol";
import {IERC1967} from "../../interfaces/IERC1967.sol";
import {Address} from "../../utils/Address.sol";
import {StorageSlot} from "../../utils/StorageSlot.sol";

/**
 * @dev This library provides getters and event emitting update functions for
 * https://eips.ethereum.org/EIPS/eip-1967[ERC-1967] slots.
 */
library ERC1967Utils {
    /**
     * @dev Storage slot with the address of the current implementation.
     * This is the keccak-256 hash of "eip1967.proxy.implementation" subtracted by 1.
     */
    // solhint-disable-next-line private-vars-leading-underscore
    bytes32 internal constant IMPLEMENTATION_SLOT = 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc;

    /**
     * @dev The `implementation` of the proxy is invalid.
     */
    error ERC1967InvalidImplementation(address implementation);

    /**
     * @dev The `admin` of the proxy is invalid.
     */
    error ERC1967InvalidAdmin(address admin);

    /**
     * @dev The `beacon` of the proxy is invalid.
     */
    error ERC1967InvalidBeacon(address beacon);

    /**
     * @dev An upgrade function sees `msg.value > 0` that may be lost.
     */
    error ERC1967NonPayable();

    /**
     * @dev Returns the current implementation address.
     */
    function getImplementation() internal view returns (address) {
        return StorageSlot.getAddressSlot(IMPLEMENTATION_SLOT).value;
    }

    /**
     * @dev Stores a new address in the ERC-1967 implementation slot.
     */
    function _setImplementation(address newImplementation) private {
        if (newImplementation.code.length == 0) {
            revert ERC1967InvalidImplementation(newImplementation);
        }
        StorageSlot.getAddressSlot(IMPLEMENTATION_SLOT).value = newImplementation;
    }

    /**
     * @dev Performs implementation upgrade with additional setup call if data is nonempty.
     * This function is payable only if the setup call is performed, otherwise `msg.value` is rejected
     * to avoid stuck value in the contract.
     *
     * Emits an {IERC1967-Upgraded} event.
     */
    function upgradeToAndCall(address newImplementation, bytes memory data) internal {
        _setImplementation(newImplementation);
        emit IERC1967.Upgraded(newImplementation);

        if (data.length > 0) {
            Address.functionDelegateCall(newImplementation, data);
        } else {
            _checkNonPayable();
        }
    }

    /**
     * @dev Storage slot with the admin of the contract.
     * This is the keccak-256 hash of "eip1967.proxy.admin" subtracted by 1.
     */
    // solhint-disable-next-line private-vars-leading-underscore
    bytes32 internal constant ADMIN_SLOT = 0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103;

    /**
     * @dev Returns the current admin.
     *
     * TIP: To get this value clients can read directly from the storage slot shown below (specified by ERC-1967) using
     * the https://eth.wiki/json-rpc/API#eth_getstorageat[`eth_getStorageAt`] RPC call.
     * `0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103`
     */
    function getAdmin() internal view returns (address) {
        return StorageSlot.getAddressSlot(ADMIN_SLOT).value;
    }

    /**
     * @dev Stores a new address in the ERC-1967 admin slot.
     */
    function _setAdmin(address newAdmin) private {
        if (newAdmin == address(0)) {
            revert ERC1967InvalidAdmin(address(0));
        }
        StorageSlot.getAddressSlot(ADMIN_SLOT).value = newAdmin;
    }

    /**
     * @dev Changes the admin of the proxy.
     *
     * Emits an {IERC1967-AdminChanged} event.
     */
    function changeAdmin(address newAdmin) internal {
        emit IERC1967.AdminChanged(getAdmin(), newAdmin);
        _setAdmin(newAdmin);
    }

    /**
     * @dev The storage slot of the UpgradeableBeacon contract which defines the implementation for this proxy.
     * This is the keccak-256 hash of "eip1967.proxy.beacon" subtracted by 1.
     */
    // solhint-disable-next-line private-vars-leading-underscore
    bytes32 internal constant BEACON_SLOT = 0xa3f0ad74e5423aebfd80d3ef4346578335a9a72aeaee59ff6cb3582b35133d50;

    /**
     * @dev Returns the current beacon.
     */
    function getBeacon() internal view returns (address) {
        return StorageSlot.getAddressSlot(BEACON_SLOT).value;
    }

    /**
     * @dev Stores a new beacon in the ERC-1967 beacon slot.
     */
    function _setBeacon(address newBeacon) private {
        if (newBeacon.code.length == 0) {
            revert ERC1967InvalidBeacon(newBeacon);
        }

        StorageSlot.getAddressSlot(BEACON_SLOT).value = newBeacon;

        address beaconImplementation = IBeacon(newBeacon).implementation();
        if (beaconImplementation.code.length == 0) {
            revert ERC1967InvalidImplementation(beaconImplementation);
        }
    }

    /**
     * @dev Change the beacon and trigger a setup call if data is nonempty.
     * This function is payable only if the setup call is performed, otherwise `msg.value` is rejected
     * to avoid stuck value in the contract.
     *
     * Emits an {IERC1967-BeaconUpgraded} event.
     *
     * CAUTION: Invoking this function has no effect on an instance of {BeaconProxy} since v5, since
     * it uses an immutable beacon without looking at the value of the ERC-1967 beacon slot for
     * efficiency.
     */
    function upgradeBeaconToAndCall(address newBeacon, bytes memory data) internal {
        _setBeacon(newBeacon);
        emit IERC1967.BeaconUpgraded(newBeacon);

        if (data.length > 0) {
            Address.functionDelegateCall(IBeacon(newBeacon).implementation(), data);
        } else {
            _checkNonPayable();
        }
    }

    /**
     * @dev Reverts if `msg.value` is not zero. It can be used to avoid `msg.value` stuck in the contract
     * if an upgrade doesn't perform an initialization call.
     */
    function _checkNonPayable() private {
        if (msg.value > 0) {
            revert ERC1967NonPayable();
        }
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/utils/Address.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.2.0) (utils/Address.sol)

pragma solidity ^0.8.20;

import {Errors} from "./Errors.sol";

/**
 * @dev Collection of functions related to the address type
 */
library Address {
    /**
     * @dev There's no code at `target` (it is not a contract).
     */
    error AddressEmptyCode(address target);

    /**
     * @dev Replacement for Solidity's `transfer`: sends `amount` wei to
     * `recipient`, forwarding all available gas and reverting on errors.
     *
     * https://eips.ethereum.org/EIPS/eip-1884[EIP1884] increases the gas cost
     * of certain opcodes, possibly making contracts go over the 2300 gas limit
     * imposed by `transfer`, making them unable to receive funds via
     * `transfer`. {sendValue} removes this limitation.
     *
     * https://consensys.net/diligence/blog/2019/09/stop-using-soliditys-transfer-now/[Learn more].
     *
     * IMPORTANT: because control is transferred to `recipient`, care must be
     * taken to not create reentrancy vulnerabilities. Consider using
     * {ReentrancyGuard} or the
     * https://solidity.readthedocs.io/en/v0.8.20/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].
     */
    function sendValue(address payable recipient, uint256 amount) internal {
        if (address(this).balance < amount) {
            revert Errors.InsufficientBalance(address(this).balance, amount);
        }

        (bool success, bytes memory returndata) = recipient.call{value: amount}("");
        if (!success) {
            _revert(returndata);
        }
    }

    /**
     * @dev Performs a Solidity function call using a low level `call`. A
     * plain `call` is an unsafe replacement for a function call: use this
     * function instead.
     *
     * If `target` reverts with a revert reason or custom error, it is bubbled
     * up by this function (like regular Solidity function calls). However, if
     * the call reverted with no returned reason, this function reverts with a
     * {Errors.FailedCall} error.
     *
     * Returns the raw returned data. To convert to the expected return value,
     * use https://solidity.readthedocs.io/en/latest/units-and-global-variables.html?highlight=abi.decode#abi-encoding-and-decoding-functions[`abi.decode`].
     *
     * Requirements:
     *
     * - `target` must be a contract.
     * - calling `target` with `data` must not revert.
     */
    function functionCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but also transferring `value` wei to `target`.
     *
     * Requirements:
     *
     * - the calling contract must have an ETH balance of at least `value`.
     * - the called Solidity function must be `payable`.
     */
    function functionCallWithValue(address target, bytes memory data, uint256 value) internal returns (bytes memory) {
        if (address(this).balance < value) {
            revert Errors.InsufficientBalance(address(this).balance, value);
        }
        (bool success, bytes memory returndata) = target.call{value: value}(data);
        return verifyCallResultFromTarget(target, success, returndata);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a static call.
     */
    function functionStaticCall(address target, bytes memory data) internal view returns (bytes memory) {
        (bool success, bytes memory returndata) = target.staticcall(data);
        return verifyCallResultFromTarget(target, success, returndata);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a delegate call.
     */
    function functionDelegateCall(address target, bytes memory data) internal returns (bytes memory) {
        (bool success, bytes memory returndata) = target.delegatecall(data);
        return verifyCallResultFromTarget(target, success, returndata);
    }

    /**
     * @dev Tool to verify that a low level call to smart-contract was successful, and reverts if the target
     * was not a contract or bubbling up the revert reason (falling back to {Errors.FailedCall}) in case
     * of an unsuccessful call.
     */
    function verifyCallResultFromTarget(
        address target,
        bool success,
        bytes memory returndata
    ) internal view returns (bytes memory) {
        if (!success) {
            _revert(returndata);
        } else {
            // only check if target is a contract if the call was successful and the return data is empty
            // otherwise we already know that it was a contract
            if (returndata.length == 0 && target.code.length == 0) {
                revert AddressEmptyCode(target);
            }
            return returndata;
        }
    }

    /**
     * @dev Tool to verify that a low level call was successful, and reverts if it wasn't, either by bubbling the
     * revert reason or with a default {Errors.FailedCall} error.
     */
    function verifyCallResult(bool success, bytes memory returndata) internal pure returns (bytes memory) {
        if (!success) {
            _revert(returndata);
        } else {
            return returndata;
        }
    }

    /**
     * @dev Reverts with returndata if present. Otherwise reverts with {Errors.FailedCall}.
     */
    function _revert(bytes memory returndata) private pure {
        // Look for revert reason and bubble it up if present
        if (returndata.length > 0) {
            // The easiest way to bubble the revert reason is using memory via assembly
            assembly ("memory-safe") {
                let returndata_size := mload(returndata)
                revert(add(32, returndata), returndata_size)
            }
        } else {
            revert Errors.FailedCall();
        }
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/utils/cryptography/ECDSA.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (utils/cryptography/ECDSA.sol)

pragma solidity ^0.8.20;

/**
 * @dev Elliptic Curve Digital Signature Algorithm (ECDSA) operations.
 *
 * These functions can be used to verify that a message was signed by the holder
 * of the private keys of a given address.
 */
library ECDSA {
    enum RecoverError {
        NoError,
        InvalidSignature,
        InvalidSignatureLength,
        InvalidSignatureS
    }

    /**
     * @dev The signature derives the `address(0)`.
     */
    error ECDSAInvalidSignature();

    /**
     * @dev The signature has an invalid length.
     */
    error ECDSAInvalidSignatureLength(uint256 length);

    /**
     * @dev The signature has an S value that is in the upper half order.
     */
    error ECDSAInvalidSignatureS(bytes32 s);

    /**
     * @dev Returns the address that signed a hashed message (`hash`) with `signature` or an error. This will not
     * return address(0) without also returning an error description. Errors are documented using an enum (error type)
     * and a bytes32 providing additional information about the error.
     *
     * If no error is returned, then the address can be used for verification purposes.
     *
     * The `ecrecover` EVM precompile allows for malleable (non-unique) signatures:
     * this function rejects them by requiring the `s` value to be in the lower
     * half order, and the `v` value to be either 27 or 28.
     *
     * IMPORTANT: `hash` _must_ be the result of a hash operation for the
     * verification to be secure: it is possible to craft signatures that
     * recover to arbitrary addresses for non-hashed data. A safe way to ensure
     * this is by receiving a hash of the original message (which may otherwise
     * be too long), and then calling {MessageHashUtils-toEthSignedMessageHash} on it.
     *
     * Documentation for signature generation:
     * - with https://web3js.readthedocs.io/en/v1.3.4/web3-eth-accounts.html#sign[Web3.js]
     * - with https://docs.ethers.io/v5/api/signer/#Signer-signMessage[ethers]
     */
    function tryRecover(
        bytes32 hash,
        bytes memory signature
    ) internal pure returns (address recovered, RecoverError err, bytes32 errArg) {
        if (signature.length == 65) {
            bytes32 r;
            bytes32 s;
            uint8 v;
            // ecrecover takes the signature parameters, and the only way to get them
            // currently is to use assembly.
            assembly ("memory-safe") {
                r := mload(add(signature, 0x20))
                s := mload(add(signature, 0x40))
                v := byte(0, mload(add(signature, 0x60)))
            }
            return tryRecover(hash, v, r, s);
        } else {
            return (address(0), RecoverError.InvalidSignatureLength, bytes32(signature.length));
        }
    }

    /**
     * @dev Returns the address that signed a hashed message (`hash`) with
     * `signature`. This address can then be used for verification purposes.
     *
     * The `ecrecover` EVM precompile allows for malleable (non-unique) signatures:
     * this function rejects them by requiring the `s` value to be in the lower
     * half order, and the `v` value to be either 27 or 28.
     *
     * IMPORTANT: `hash` _must_ be the result of a hash operation for the
     * verification to be secure: it is possible to craft signatures that
     * recover to arbitrary addresses for non-hashed data. A safe way to ensure
     * this is by receiving a hash of the original message (which may otherwise
     * be too long), and then calling {MessageHashUtils-toEthSignedMessageHash} on it.
     */
    function recover(bytes32 hash, bytes memory signature) internal pure returns (address) {
        (address recovered, RecoverError error, bytes32 errorArg) = tryRecover(hash, signature);
        _throwError(error, errorArg);
        return recovered;
    }

    /**
     * @dev Overload of {ECDSA-tryRecover} that receives the `r` and `vs` short-signature fields separately.
     *
     * See https://eips.ethereum.org/EIPS/eip-2098[ERC-2098 short signatures]
     */
    function tryRecover(
        bytes32 hash,
        bytes32 r,
        bytes32 vs
    ) internal pure returns (address recovered, RecoverError err, bytes32 errArg) {
        unchecked {
            bytes32 s = vs & bytes32(0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff);
            // We do not check for an overflow here since the shift operation results in 0 or 1.
            uint8 v = uint8((uint256(vs) >> 255) + 27);
            return tryRecover(hash, v, r, s);
        }
    }

    /**
     * @dev Overload of {ECDSA-recover} that receives the `r and `vs` short-signature fields separately.
     */
    function recover(bytes32 hash, bytes32 r, bytes32 vs) internal pure returns (address) {
        (address recovered, RecoverError error, bytes32 errorArg) = tryRecover(hash, r, vs);
        _throwError(error, errorArg);
        return recovered;
    }

    /**
     * @dev Overload of {ECDSA-tryRecover} that receives the `v`,
     * `r` and `s` signature fields separately.
     */
    function tryRecover(
        bytes32 hash,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) internal pure returns (address recovered, RecoverError err, bytes32 errArg) {
        // EIP-2 still allows signature malleability for ecrecover(). Remove this possibility and make the signature
        // unique. Appendix F in the Ethereum Yellow paper (https://ethereum.github.io/yellowpaper/paper.pdf), defines
        // the valid range for s in (301): 0 < s < secp256k1n ÷ 2 + 1, and for v in (302): v ∈ {27, 28}. Most
        // signatures from current libraries generate a unique signature with an s-value in the lower half order.
        //
        // If your library generates malleable signatures, such as s-values in the upper range, calculate a new s-value
        // with 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBAAEDCE6AF48A03BBFD25E8CD0364141 - s1 and flip v from 27 to 28 or
        // vice versa. If your library also generates signatures with 0/1 for v instead 27/28, add 27 to v to accept
        // these malleable signatures as well.
        if (uint256(s) > 0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5D576E7357A4501DDFE92F46681B20A0) {
            return (address(0), RecoverError.InvalidSignatureS, s);
        }

        // If the signature is valid (and not malleable), return the signer address
        address signer = ecrecover(hash, v, r, s);
        if (signer == address(0)) {
            return (address(0), RecoverError.InvalidSignature, bytes32(0));
        }

        return (signer, RecoverError.NoError, bytes32(0));
    }

    /**
     * @dev Overload of {ECDSA-recover} that receives the `v`,
     * `r` and `s` signature fields separately.
     */
    function recover(bytes32 hash, uint8 v, bytes32 r, bytes32 s) internal pure returns (address) {
        (address recovered, RecoverError error, bytes32 errorArg) = tryRecover(hash, v, r, s);
        _throwError(error, errorArg);
        return recovered;
    }

    /**
     * @dev Optionally reverts with the corresponding custom error according to the `error` argument provided.
     */
    function _throwError(RecoverError error, bytes32 errorArg) private pure {
        if (error == RecoverError.NoError) {
            return; // no error: do nothing
        } else if (error == RecoverError.InvalidSignature) {
            revert ECDSAInvalidSignature();
        } else if (error == RecoverError.InvalidSignatureLength) {
            revert ECDSAInvalidSignatureLength(uint256(errorArg));
        } else if (error == RecoverError.InvalidSignatureS) {
            revert ECDSAInvalidSignatureS(errorArg);
        }
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/utils/cryptography/MessageHashUtils.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.3.0) (utils/cryptography/MessageHashUtils.sol)

pragma solidity ^0.8.20;

import {Strings} from "../Strings.sol";

/**
 * @dev Signature message hash utilities for producing digests to be consumed by {ECDSA} recovery or signing.
 *
 * The library provides methods for generating a hash of a message that conforms to the
 * https://eips.ethereum.org/EIPS/eip-191[ERC-191] and https://eips.ethereum.org/EIPS/eip-712[EIP 712]
 * specifications.
 */
library MessageHashUtils {
    /**
     * @dev Returns the keccak256 digest of an ERC-191 signed data with version
     * `0x45` (`personal_sign` messages).
     *
     * The digest is calculated by prefixing a bytes32 `messageHash` with
     * `"\x19Ethereum Signed Message:\n32"` and hashing the result. It corresponds with the
     * hash signed when using the https://ethereum.org/en/developers/docs/apis/json-rpc/#eth_sign[`eth_sign`] JSON-RPC method.
     *
     * NOTE: The `messageHash` parameter is intended to be the result of hashing a raw message with
     * keccak256, although any bytes32 value can be safely used because the final digest will
     * be re-hashed.
     *
     * See {ECDSA-recover}.
     */
    function toEthSignedMessageHash(bytes32 messageHash) internal pure returns (bytes32 digest) {
        assembly ("memory-safe") {
            mstore(0x00, "\x19Ethereum Signed Message:\n32") // 32 is the bytes-length of messageHash
            mstore(0x1c, messageHash) // 0x1c (28) is the length of the prefix
            digest := keccak256(0x00, 0x3c) // 0x3c is the length of the prefix (0x1c) + messageHash (0x20)
        }
    }

    /**
     * @dev Returns the keccak256 digest of an ERC-191 signed data with version
     * `0x45` (`personal_sign` messages).
     *
     * The digest is calculated by prefixing an arbitrary `message` with
     * `"\x19Ethereum Signed Message:\n" + len(message)` and hashing the result. It corresponds with the
     * hash signed when using the https://ethereum.org/en/developers/docs/apis/json-rpc/#eth_sign[`eth_sign`] JSON-RPC method.
     *
     * See {ECDSA-recover}.
     */
    function toEthSignedMessageHash(bytes memory message) internal pure returns (bytes32) {
        return
            keccak256(bytes.concat("\x19Ethereum Signed Message:\n", bytes(Strings.toString(message.length)), message));
    }

    /**
     * @dev Returns the keccak256 digest of an ERC-191 signed data with version
     * `0x00` (data with intended validator).
     *
     * The digest is calculated by prefixing an arbitrary `data` with `"\x19\x00"` and the intended
     * `validator` address. Then hashing the result.
     *
     * See {ECDSA-recover}.
     */
    function toDataWithIntendedValidatorHash(address validator, bytes memory data) internal pure returns (bytes32) {
        return keccak256(abi.encodePacked(hex"19_00", validator, data));
    }

    /**
     * @dev Variant of {toDataWithIntendedValidatorHash-address-bytes} optimized for cases where `data` is a bytes32.
     */
    function toDataWithIntendedValidatorHash(
        address validator,
        bytes32 messageHash
    ) internal pure returns (bytes32 digest) {
        assembly ("memory-safe") {
            mstore(0x00, hex"19_00")
            mstore(0x02, shl(96, validator))
            mstore(0x16, messageHash)
            digest := keccak256(0x00, 0x36)
        }
    }

    /**
     * @dev Returns the keccak256 digest of an EIP-712 typed data (ERC-191 version `0x01`).
     *
     * The digest is calculated from a `domainSeparator` and a `structHash`, by prefixing them with
     * `\x19\x01` and hashing the result. It corresponds to the hash signed by the
     * https://eips.ethereum.org/EIPS/eip-712[`eth_signTypedData`] JSON-RPC method as part of EIP-712.
     *
     * See {ECDSA-recover}.
     */
    function toTypedDataHash(bytes32 domainSeparator, bytes32 structHash) internal pure returns (bytes32 digest) {
        assembly ("memory-safe") {
            let ptr := mload(0x40)
            mstore(ptr, hex"19_01")
            mstore(add(ptr, 0x02), domainSeparator)
            mstore(add(ptr, 0x22), structHash)
            digest := keccak256(ptr, 0x42)
        }
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/utils/cryptography/SignatureChecker.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (utils/cryptography/SignatureChecker.sol)

pragma solidity ^0.8.20;

import {ECDSA} from "./ECDSA.sol";
import {IERC1271} from "../../interfaces/IERC1271.sol";

/**
 * @dev Signature verification helper that can be used instead of `ECDSA.recover` to seamlessly support both ECDSA
 * signatures from externally owned accounts (EOAs) as well as ERC-1271 signatures from smart contract wallets like
 * Argent and Safe Wallet (previously Gnosis Safe).
 */
library SignatureChecker {
    /**
     * @dev Checks if a signature is valid for a given signer and data hash. If the signer is a smart contract, the
     * signature is validated against that smart contract using ERC-1271, otherwise it's validated using `ECDSA.recover`.
     *
     * NOTE: Unlike ECDSA signatures, contract signatures are revocable, and the outcome of this function can thus
     * change through time. It could return true at block N and false at block N+1 (or the opposite).
     */
    function isValidSignatureNow(address signer, bytes32 hash, bytes memory signature) internal view returns (bool) {
        if (signer.code.length == 0) {
            (address recovered, ECDSA.RecoverError err, ) = ECDSA.tryRecover(hash, signature);
            return err == ECDSA.RecoverError.NoError && recovered == signer;
        } else {
            return isValidERC1271SignatureNow(signer, hash, signature);
        }
    }

    /**
     * @dev Checks if a signature is valid for a given signer and data hash. The signature is validated
     * against the signer smart contract using ERC-1271.
     *
     * NOTE: Unlike ECDSA signatures, contract signatures are revocable, and the outcome of this function can thus
     * change through time. It could return true at block N and false at block N+1 (or the opposite).
     */
    function isValidERC1271SignatureNow(
        address signer,
        bytes32 hash,
        bytes memory signature
    ) internal view returns (bool) {
        (bool success, bytes memory result) = signer.staticcall(
            abi.encodeCall(IERC1271.isValidSignature, (hash, signature))
        );
        return (success &&
            result.length >= 32 &&
            abi.decode(result, (bytes32)) == bytes32(IERC1271.isValidSignature.selector));
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/utils/Errors.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (utils/Errors.sol)

pragma solidity ^0.8.20;

/**
 * @dev Collection of common custom errors used in multiple contracts
 *
 * IMPORTANT: Backwards compatibility is not guaranteed in future versions of the library.
 * It is recommended to avoid relying on the error API for critical functionality.
 *
 * _Available since v5.1._
 */
library Errors {
    /**
     * @dev The ETH balance of the account is not enough to perform the operation.
     */
    error InsufficientBalance(uint256 balance, uint256 needed);

    /**
     * @dev A call to an address target failed. The target may have reverted.
     */
    error FailedCall();

    /**
     * @dev The deployment failed.
     */
    error FailedDeployment();

    /**
     * @dev A necessary precompile is missing.
     */
    error MissingPrecompile(address);
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/utils/math/Math.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.3.0) (utils/math/Math.sol)

pragma solidity ^0.8.20;

import {Panic} from "../Panic.sol";
import {SafeCast} from "./SafeCast.sol";

/**
 * @dev Standard math utilities missing in the Solidity language.
 */
library Math {
    enum Rounding {
        Floor, // Toward negative infinity
        Ceil, // Toward positive infinity
        Trunc, // Toward zero
        Expand // Away from zero
    }

    /**
     * @dev Return the 512-bit addition of two uint256.
     *
     * The result is stored in two 256 variables such that sum = high * 2²⁵⁶ + low.
     */
    function add512(uint256 a, uint256 b) internal pure returns (uint256 high, uint256 low) {
        assembly ("memory-safe") {
            low := add(a, b)
            high := lt(low, a)
        }
    }

    /**
     * @dev Return the 512-bit multiplication of two uint256.
     *
     * The result is stored in two 256 variables such that product = high * 2²⁵⁶ + low.
     */
    function mul512(uint256 a, uint256 b) internal pure returns (uint256 high, uint256 low) {
        // 512-bit multiply [high low] = x * y. Compute the product mod 2²⁵⁶ and mod 2²⁵⁶ - 1, then use
        // the Chinese Remainder Theorem to reconstruct the 512 bit result. The result is stored in two 256
        // variables such that product = high * 2²⁵⁶ + low.
        assembly ("memory-safe") {
            let mm := mulmod(a, b, not(0))
            low := mul(a, b)
            high := sub(sub(mm, low), lt(mm, low))
        }
    }

    /**
     * @dev Returns the addition of two unsigned integers, with a success flag (no overflow).
     */
    function tryAdd(uint256 a, uint256 b) internal pure returns (bool success, uint256 result) {
        unchecked {
            uint256 c = a + b;
            success = c >= a;
            result = c * SafeCast.toUint(success);
        }
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, with a success flag (no overflow).
     */
    function trySub(uint256 a, uint256 b) internal pure returns (bool success, uint256 result) {
        unchecked {
            uint256 c = a - b;
            success = c <= a;
            result = c * SafeCast.toUint(success);
        }
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, with a success flag (no overflow).
     */
    function tryMul(uint256 a, uint256 b) internal pure returns (bool success, uint256 result) {
        unchecked {
            uint256 c = a * b;
            assembly ("memory-safe") {
                // Only true when the multiplication doesn't overflow
                // (c / a == b) || (a == 0)
                success := or(eq(div(c, a), b), iszero(a))
            }
            // equivalent to: success ? c : 0
            result = c * SafeCast.toUint(success);
        }
    }

    /**
     * @dev Returns the division of two unsigned integers, with a success flag (no division by zero).
     */
    function tryDiv(uint256 a, uint256 b) internal pure returns (bool success, uint256 result) {
        unchecked {
            success = b > 0;
            assembly ("memory-safe") {
                // The `DIV` opcode returns zero when the denominator is 0.
                result := div(a, b)
            }
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers, with a success flag (no division by zero).
     */
    function tryMod(uint256 a, uint256 b) internal pure returns (bool success, uint256 result) {
        unchecked {
            success = b > 0;
            assembly ("memory-safe") {
                // The `MOD` opcode returns zero when the denominator is 0.
                result := mod(a, b)
            }
        }
    }

    /**
     * @dev Unsigned saturating addition, bounds to `2²⁵⁶ - 1` instead of overflowing.
     */
    function saturatingAdd(uint256 a, uint256 b) internal pure returns (uint256) {
        (bool success, uint256 result) = tryAdd(a, b);
        return ternary(success, result, type(uint256).max);
    }

    /**
     * @dev Unsigned saturating subtraction, bounds to zero instead of overflowing.
     */
    function saturatingSub(uint256 a, uint256 b) internal pure returns (uint256) {
        (, uint256 result) = trySub(a, b);
        return result;
    }

    /**
     * @dev Unsigned saturating multiplication, bounds to `2²⁵⁶ - 1` instead of overflowing.
     */
    function saturatingMul(uint256 a, uint256 b) internal pure returns (uint256) {
        (bool success, uint256 result) = tryMul(a, b);
        return ternary(success, result, type(uint256).max);
    }

    /**
     * @dev Branchless ternary evaluation for `a ? b : c`. Gas costs are constant.
     *
     * IMPORTANT: This function may reduce bytecode size and consume less gas when used standalone.
     * However, the compiler may optimize Solidity ternary operations (i.e. `a ? b : c`) to only compute
     * one branch when needed, making this function more expensive.
     */
    function ternary(bool condition, uint256 a, uint256 b) internal pure returns (uint256) {
        unchecked {
            // branchless ternary works because:
            // b ^ (a ^ b) == a
            // b ^ 0 == b
            return b ^ ((a ^ b) * SafeCast.toUint(condition));
        }
    }

    /**
     * @dev Returns the largest of two numbers.
     */
    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return ternary(a > b, a, b);
    }

    /**
     * @dev Returns the smallest of two numbers.
     */
    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return ternary(a < b, a, b);
    }

    /**
     * @dev Returns the average of two numbers. The result is rounded towards
     * zero.
     */
    function average(uint256 a, uint256 b) internal pure returns (uint256) {
        // (a + b) / 2 can overflow.
        return (a & b) + (a ^ b) / 2;
    }

    /**
     * @dev Returns the ceiling of the division of two numbers.
     *
     * This differs from standard division with `/` in that it rounds towards infinity instead
     * of rounding towards zero.
     */
    function ceilDiv(uint256 a, uint256 b) internal pure returns (uint256) {
        if (b == 0) {
            // Guarantee the same behavior as in a regular Solidity division.
            Panic.panic(Panic.DIVISION_BY_ZERO);
        }

        // The following calculation ensures accurate ceiling division without overflow.
        // Since a is non-zero, (a - 1) / b will not overflow.
        // The largest possible result occurs when (a - 1) / b is type(uint256).max,
        // but the largest value we can obtain is type(uint256).max - 1, which happens
        // when a = type(uint256).max and b = 1.
        unchecked {
            return SafeCast.toUint(a > 0) * ((a - 1) / b + 1);
        }
    }

    /**
     * @dev Calculates floor(x * y / denominator) with full precision. Throws if result overflows a uint256 or
     * denominator == 0.
     *
     * Original credit to Remco Bloemen under MIT license (https://xn--2-umb.com/21/muldiv) with further edits by
     * Uniswap Labs also under MIT license.
     */
    function mulDiv(uint256 x, uint256 y, uint256 denominator) internal pure returns (uint256 result) {
        unchecked {
            (uint256 high, uint256 low) = mul512(x, y);

            // Handle non-overflow cases, 256 by 256 division.
            if (high == 0) {
                // Solidity will revert if denominator == 0, unlike the div opcode on its own.
                // The surrounding unchecked block does not change this fact.
                // See https://docs.soliditylang.org/en/latest/control-structures.html#checked-or-unchecked-arithmetic.
                return low / denominator;
            }

            // Make sure the result is less than 2²⁵⁶. Also prevents denominator == 0.
            if (denominator <= high) {
                Panic.panic(ternary(denominator == 0, Panic.DIVISION_BY_ZERO, Panic.UNDER_OVERFLOW));
            }

            ///////////////////////////////////////////////
            // 512 by 256 division.
            ///////////////////////////////////////////////

            // Make division exact by subtracting the remainder from [high low].
            uint256 remainder;
            assembly ("memory-safe") {
                // Compute remainder using mulmod.
                remainder := mulmod(x, y, denominator)

                // Subtract 256 bit number from 512 bit number.
                high := sub(high, gt(remainder, low))
                low := sub(low, remainder)
            }

            // Factor powers of two out of denominator and compute largest power of two divisor of denominator.
            // Always >= 1. See https://cs.stackexchange.com/q/138556/92363.

            uint256 twos = denominator & (0 - denominator);
            assembly ("memory-safe") {
                // Divide denominator by twos.
                denominator := div(denominator, twos)

                // Divide [high low] by twos.
                low := div(low, twos)

                // Flip twos such that it is 2²⁵⁶ / twos. If twos is zero, then it becomes one.
                twos := add(div(sub(0, twos), twos), 1)
            }

            // Shift in bits from high into low.
            low |= high * twos;

            // Invert denominator mod 2²⁵⁶. Now that denominator is an odd number, it has an inverse modulo 2²⁵⁶ such
            // that denominator * inv ≡ 1 mod 2²⁵⁶. Compute the inverse by starting with a seed that is correct for
            // four bits. That is, denominator * inv ≡ 1 mod 2⁴.
            uint256 inverse = (3 * denominator) ^ 2;

            // Use the Newton-Raphson iteration to improve the precision. Thanks to Hensel's lifting lemma, this also
            // works in modular arithmetic, doubling the correct bits in each step.
            inverse *= 2 - denominator * inverse; // inverse mod 2⁸
            inverse *= 2 - denominator * inverse; // inverse mod 2¹⁶
            inverse *= 2 - denominator * inverse; // inverse mod 2³²
            inverse *= 2 - denominator * inverse; // inverse mod 2⁶⁴
            inverse *= 2 - denominator * inverse; // inverse mod 2¹²⁸
            inverse *= 2 - denominator * inverse; // inverse mod 2²⁵⁶

            // Because the division is now exact we can divide by multiplying with the modular inverse of denominator.
            // This will give us the correct result modulo 2²⁵⁶. Since the preconditions guarantee that the outcome is
            // less than 2²⁵⁶, this is the final result. We don't need to compute the high bits of the result and high
            // is no longer required.
            result = low * inverse;
            return result;
        }
    }

    /**
     * @dev Calculates x * y / denominator with full precision, following the selected rounding direction.
     */
    function mulDiv(uint256 x, uint256 y, uint256 denominator, Rounding rounding) internal pure returns (uint256) {
        return mulDiv(x, y, denominator) + SafeCast.toUint(unsignedRoundsUp(rounding) && mulmod(x, y, denominator) > 0);
    }

    /**
     * @dev Calculates floor(x * y >> n) with full precision. Throws if result overflows a uint256.
     */
    function mulShr(uint256 x, uint256 y, uint8 n) internal pure returns (uint256 result) {
        unchecked {
            (uint256 high, uint256 low) = mul512(x, y);
            if (high >= 1 << n) {
                Panic.panic(Panic.UNDER_OVERFLOW);
            }
            return (high << (256 - n)) | (low >> n);
        }
    }

    /**
     * @dev Calculates x * y >> n with full precision, following the selected rounding direction.
     */
    function mulShr(uint256 x, uint256 y, uint8 n, Rounding rounding) internal pure returns (uint256) {
        return mulShr(x, y, n) + SafeCast.toUint(unsignedRoundsUp(rounding) && mulmod(x, y, 1 << n) > 0);
    }

    /**
     * @dev Calculate the modular multiplicative inverse of a number in Z/nZ.
     *
     * If n is a prime, then Z/nZ is a field. In that case all elements are inversible, except 0.
     * If n is not a prime, then Z/nZ is not a field, and some elements might not be inversible.
     *
     * If the input value is not inversible, 0 is returned.
     *
     * NOTE: If you know for sure that n is (big) a prime, it may be cheaper to use Fermat's little theorem and get the
     * inverse using `Math.modExp(a, n - 2, n)`. See {invModPrime}.
     */
    function invMod(uint256 a, uint256 n) internal pure returns (uint256) {
        unchecked {
            if (n == 0) return 0;

            // The inverse modulo is calculated using the Extended Euclidean Algorithm (iterative version)
            // Used to compute integers x and y such that: ax + ny = gcd(a, n).
            // When the gcd is 1, then the inverse of a modulo n exists and it's x.
            // ax + ny = 1
            // ax = 1 + (-y)n
            // ax ≡ 1 (mod n) # x is the inverse of a modulo n

            // If the remainder is 0 the gcd is n right away.
            uint256 remainder = a % n;
            uint256 gcd = n;

            // Therefore the initial coefficients are:
            // ax + ny = gcd(a, n) = n
            // 0a + 1n = n
            int256 x = 0;
            int256 y = 1;

            while (remainder != 0) {
                uint256 quotient = gcd / remainder;

                (gcd, remainder) = (
                    // The old remainder is the next gcd to try.
                    remainder,
                    // Compute the next remainder.
                    // Can't overflow given that (a % gcd) * (gcd // (a % gcd)) <= gcd
                    // where gcd is at most n (capped to type(uint256).max)
                    gcd - remainder * quotient
                );

                (x, y) = (
                    // Increment the coefficient of a.
                    y,
                    // Decrement the coefficient of n.
                    // Can overflow, but the result is casted to uint256 so that the
                    // next value of y is "wrapped around" to a value between 0 and n - 1.
                    x - y * int256(quotient)
                );
            }

            if (gcd != 1) return 0; // No inverse exists.
            return ternary(x < 0, n - uint256(-x), uint256(x)); // Wrap the result if it's negative.
        }
    }

    /**
     * @dev Variant of {invMod}. More efficient, but only works if `p` is known to be a prime greater than `2`.
     *
     * From https://en.wikipedia.org/wiki/Fermat%27s_little_theorem[Fermat's little theorem], we know that if p is
     * prime, then `a**(p-1) ≡ 1 mod p`. As a consequence, we have `a * a**(p-2) ≡ 1 mod p`, which means that
     * `a**(p-2)` is the modular multiplicative inverse of a in Fp.
     *
     * NOTE: this function does NOT check that `p` is a prime greater than `2`.
     */
    function invModPrime(uint256 a, uint256 p) internal view returns (uint256) {
        unchecked {
            return Math.modExp(a, p - 2, p);
        }
    }

    /**
     * @dev Returns the modular exponentiation of the specified base, exponent and modulus (b ** e % m)
     *
     * Requirements:
     * - modulus can't be zero
     * - underlying staticcall to precompile must succeed
     *
     * IMPORTANT: The result is only valid if the underlying call succeeds. When using this function, make
     * sure the chain you're using it on supports the precompiled contract for modular exponentiation
     * at address 0x05 as specified in https://eips.ethereum.org/EIPS/eip-198[EIP-198]. Otherwise,
     * the underlying function will succeed given the lack of a revert, but the result may be incorrectly
     * interpreted as 0.
     */
    function modExp(uint256 b, uint256 e, uint256 m) internal view returns (uint256) {
        (bool success, uint256 result) = tryModExp(b, e, m);
        if (!success) {
            Panic.panic(Panic.DIVISION_BY_ZERO);
        }
        return result;
    }

    /**
     * @dev Returns the modular exponentiation of the specified base, exponent and modulus (b ** e % m).
     * It includes a success flag indicating if the operation succeeded. Operation will be marked as failed if trying
     * to operate modulo 0 or if the underlying precompile reverted.
     *
     * IMPORTANT: The result is only valid if the success flag is true. When using this function, make sure the chain
     * you're using it on supports the precompiled contract for modular exponentiation at address 0x05 as specified in
     * https://eips.ethereum.org/EIPS/eip-198[EIP-198]. Otherwise, the underlying function will succeed given the lack
     * of a revert, but the result may be incorrectly interpreted as 0.
     */
    function tryModExp(uint256 b, uint256 e, uint256 m) internal view returns (bool success, uint256 result) {
        if (m == 0) return (false, 0);
        assembly ("memory-safe") {
            let ptr := mload(0x40)
            // | Offset    | Content    | Content (Hex)                                                      |
            // |-----------|------------|--------------------------------------------------------------------|
            // | 0x00:0x1f | size of b  | 0x0000000000000000000000000000000000000000000000000000000000000020 |
            // | 0x20:0x3f | size of e  | 0x0000000000000000000000000000000000000000000000000000000000000020 |
            // | 0x40:0x5f | size of m  | 0x0000000000000000000000000000000000000000000000000000000000000020 |
            // | 0x60:0x7f | value of b | 0x<.............................................................b> |
            // | 0x80:0x9f | value of e | 0x<.............................................................e> |
            // | 0xa0:0xbf | value of m | 0x<.............................................................m> |
            mstore(ptr, 0x20)
            mstore(add(ptr, 0x20), 0x20)
            mstore(add(ptr, 0x40), 0x20)
            mstore(add(ptr, 0x60), b)
            mstore(add(ptr, 0x80), e)
            mstore(add(ptr, 0xa0), m)

            // Given the result < m, it's guaranteed to fit in 32 bytes,
            // so we can use the memory scratch space located at offset 0.
            success := staticcall(gas(), 0x05, ptr, 0xc0, 0x00, 0x20)
            result := mload(0x00)
        }
    }

    /**
     * @dev Variant of {modExp} that supports inputs of arbitrary length.
     */
    function modExp(bytes memory b, bytes memory e, bytes memory m) internal view returns (bytes memory) {
        (bool success, bytes memory result) = tryModExp(b, e, m);
        if (!success) {
            Panic.panic(Panic.DIVISION_BY_ZERO);
        }
        return result;
    }

    /**
     * @dev Variant of {tryModExp} that supports inputs of arbitrary length.
     */
    function tryModExp(
        bytes memory b,
        bytes memory e,
        bytes memory m
    ) internal view returns (bool success, bytes memory result) {
        if (_zeroBytes(m)) return (false, new bytes(0));

        uint256 mLen = m.length;

        // Encode call args in result and move the free memory pointer
        result = abi.encodePacked(b.length, e.length, mLen, b, e, m);

        assembly ("memory-safe") {
            let dataPtr := add(result, 0x20)
            // Write result on top of args to avoid allocating extra memory.
            success := staticcall(gas(), 0x05, dataPtr, mload(result), dataPtr, mLen)
            // Overwrite the length.
            // result.length > returndatasize() is guaranteed because returndatasize() == m.length
            mstore(result, mLen)
            // Set the memory pointer after the returned data.
            mstore(0x40, add(dataPtr, mLen))
        }
    }

    /**
     * @dev Returns whether the provided byte array is zero.
     */
    function _zeroBytes(bytes memory byteArray) private pure returns (bool) {
        for (uint256 i = 0; i < byteArray.length; ++i) {
            if (byteArray[i] != 0) {
                return false;
            }
        }
        return true;
    }

    /**
     * @dev Returns the square root of a number. If the number is not a perfect square, the value is rounded
     * towards zero.
     *
     * This method is based on Newton's method for computing square roots; the algorithm is restricted to only
     * using integer operations.
     */
    function sqrt(uint256 a) internal pure returns (uint256) {
        unchecked {
            // Take care of easy edge cases when a == 0 or a == 1
            if (a <= 1) {
                return a;
            }

            // In this function, we use Newton's method to get a root of `f(x) := x² - a`. It involves building a
            // sequence x_n that converges toward sqrt(a). For each iteration x_n, we also define the error between
            // the current value as `ε_n = | x_n - sqrt(a) |`.
            //
            // For our first estimation, we consider `e` the smallest power of 2 which is bigger than the square root
            // of the target. (i.e. `2**(e-1) ≤ sqrt(a) < 2**e`). We know that `e ≤ 128` because `(2¹²⁸)² = 2²⁵⁶` is
            // bigger than any uint256.
            //
            // By noticing that
            // `2**(e-1) ≤ sqrt(a) < 2**e → (2**(e-1))² ≤ a < (2**e)² → 2**(2*e-2) ≤ a < 2**(2*e)`
            // we can deduce that `e - 1` is `log2(a) / 2`. We can thus compute `x_n = 2**(e-1)` using a method similar
            // to the msb function.
            uint256 aa = a;
            uint256 xn = 1;

            if (aa >= (1 << 128)) {
                aa >>= 128;
                xn <<= 64;
            }
            if (aa >= (1 << 64)) {
                aa >>= 64;
                xn <<= 32;
            }
            if (aa >= (1 << 32)) {
                aa >>= 32;
                xn <<= 16;
            }
            if (aa >= (1 << 16)) {
                aa >>= 16;
                xn <<= 8;
            }
            if (aa >= (1 << 8)) {
                aa >>= 8;
                xn <<= 4;
            }
            if (aa >= (1 << 4)) {
                aa >>= 4;
                xn <<= 2;
            }
            if (aa >= (1 << 2)) {
                xn <<= 1;
            }

            // We now have x_n such that `x_n = 2**(e-1) ≤ sqrt(a) < 2**e = 2 * x_n`. This implies ε_n ≤ 2**(e-1).
            //
            // We can refine our estimation by noticing that the middle of that interval minimizes the error.
            // If we move x_n to equal 2**(e-1) + 2**(e-2), then we reduce the error to ε_n ≤ 2**(e-2).
            // This is going to be our x_0 (and ε_0)
            xn = (3 * xn) >> 1; // ε_0 := | x_0 - sqrt(a) | ≤ 2**(e-2)

            // From here, Newton's method give us:
            // x_{n+1} = (x_n + a / x_n) / 2
            //
            // One should note that:
            // x_{n+1}² - a = ((x_n + a / x_n) / 2)² - a
            //              = ((x_n² + a) / (2 * x_n))² - a
            //              = (x_n⁴ + 2 * a * x_n² + a²) / (4 * x_n²) - a
            //              = (x_n⁴ + 2 * a * x_n² + a² - 4 * a * x_n²) / (4 * x_n²)
            //              = (x_n⁴ - 2 * a * x_n² + a²) / (4 * x_n²)
            //              = (x_n² - a)² / (2 * x_n)²
            //              = ((x_n² - a) / (2 * x_n))²
            //              ≥ 0
            // Which proves that for all n ≥ 1, sqrt(a) ≤ x_n
            //
            // This gives us the proof of quadratic convergence of the sequence:
            // ε_{n+1} = | x_{n+1} - sqrt(a) |
            //         = | (x_n + a / x_n) / 2 - sqrt(a) |
            //         = | (x_n² + a - 2*x_n*sqrt(a)) / (2 * x_n) |
            //         = | (x_n - sqrt(a))² / (2 * x_n) |
            //         = | ε_n² / (2 * x_n) |
            //         = ε_n² / | (2 * x_n) |
            //
            // For the first iteration, we have a special case where x_0 is known:
            // ε_1 = ε_0² / | (2 * x_0) |
            //     ≤ (2**(e-2))² / (2 * (2**(e-1) + 2**(e-2)))
            //     ≤ 2**(2*e-4) / (3 * 2**(e-1))
            //     ≤ 2**(e-3) / 3
            //     ≤ 2**(e-3-log2(3))
            //     ≤ 2**(e-4.5)
            //
            // For the following iterations, we use the fact that, 2**(e-1) ≤ sqrt(a) ≤ x_n:
            // ε_{n+1} = ε_n² / | (2 * x_n) |
            //         ≤ (2**(e-k))² / (2 * 2**(e-1))
            //         ≤ 2**(2*e-2*k) / 2**e
            //         ≤ 2**(e-2*k)
            xn = (xn + a / xn) >> 1; // ε_1 := | x_1 - sqrt(a) | ≤ 2**(e-4.5)  -- special case, see above
            xn = (xn + a / xn) >> 1; // ε_2 := | x_2 - sqrt(a) | ≤ 2**(e-9)    -- general case with k = 4.5
            xn = (xn + a / xn) >> 1; // ε_3 := | x_3 - sqrt(a) | ≤ 2**(e-18)   -- general case with k = 9
            xn = (xn + a / xn) >> 1; // ε_4 := | x_4 - sqrt(a) | ≤ 2**(e-36)   -- general case with k = 18
            xn = (xn + a / xn) >> 1; // ε_5 := | x_5 - sqrt(a) | ≤ 2**(e-72)   -- general case with k = 36
            xn = (xn + a / xn) >> 1; // ε_6 := | x_6 - sqrt(a) | ≤ 2**(e-144)  -- general case with k = 72

            // Because e ≤ 128 (as discussed during the first estimation phase), we know have reached a precision
            // ε_6 ≤ 2**(e-144) < 1. Given we're operating on integers, then we can ensure that xn is now either
            // sqrt(a) or sqrt(a) + 1.
            return xn - SafeCast.toUint(xn > a / xn);
        }
    }

    /**
     * @dev Calculates sqrt(a), following the selected rounding direction.
     */
    function sqrt(uint256 a, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = sqrt(a);
            return result + SafeCast.toUint(unsignedRoundsUp(rounding) && result * result < a);
        }
    }

    /**
     * @dev Return the log in base 2 of a positive value rounded towards zero.
     * Returns 0 if given 0.
     */
    function log2(uint256 x) internal pure returns (uint256 r) {
        // If value has upper 128 bits set, log2 result is at least 128
        r = SafeCast.toUint(x > 0xffffffffffffffffffffffffffffffff) << 7;
        // If upper 64 bits of 128-bit half set, add 64 to result
        r |= SafeCast.toUint((x >> r) > 0xffffffffffffffff) << 6;
        // If upper 32 bits of 64-bit half set, add 32 to result
        r |= SafeCast.toUint((x >> r) > 0xffffffff) << 5;
        // If upper 16 bits of 32-bit half set, add 16 to result
        r |= SafeCast.toUint((x >> r) > 0xffff) << 4;
        // If upper 8 bits of 16-bit half set, add 8 to result
        r |= SafeCast.toUint((x >> r) > 0xff) << 3;
        // If upper 4 bits of 8-bit half set, add 4 to result
        r |= SafeCast.toUint((x >> r) > 0xf) << 2;

        // Shifts value right by the current result and use it as an index into this lookup table:
        //
        // | x (4 bits) |  index  | table[index] = MSB position |
        // |------------|---------|-----------------------------|
        // |    0000    |    0    |        table[0] = 0         |
        // |    0001    |    1    |        table[1] = 0         |
        // |    0010    |    2    |        table[2] = 1         |
        // |    0011    |    3    |        table[3] = 1         |
        // |    0100    |    4    |        table[4] = 2         |
        // |    0101    |    5    |        table[5] = 2         |
        // |    0110    |    6    |        table[6] = 2         |
        // |    0111    |    7    |        table[7] = 2         |
        // |    1000    |    8    |        table[8] = 3         |
        // |    1001    |    9    |        table[9] = 3         |
        // |    1010    |   10    |        table[10] = 3        |
        // |    1011    |   11    |        table[11] = 3        |
        // |    1100    |   12    |        table[12] = 3        |
        // |    1101    |   13    |        table[13] = 3        |
        // |    1110    |   14    |        table[14] = 3        |
        // |    1111    |   15    |        table[15] = 3        |
        //
        // The lookup table is represented as a 32-byte value with the MSB positions for 0-15 in the last 16 bytes.
        assembly ("memory-safe") {
            r := or(r, byte(shr(r, x), 0x0000010102020202030303030303030300000000000000000000000000000000))
        }
    }

    /**
     * @dev Return the log in base 2, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log2(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log2(value);
            return result + SafeCast.toUint(unsignedRoundsUp(rounding) && 1 << result < value);
        }
    }

    /**
     * @dev Return the log in base 10 of a positive value rounded towards zero.
     * Returns 0 if given 0.
     */
    function log10(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >= 10 ** 64) {
                value /= 10 ** 64;
                result += 64;
            }
            if (value >= 10 ** 32) {
                value /= 10 ** 32;
                result += 32;
            }
            if (value >= 10 ** 16) {
                value /= 10 ** 16;
                result += 16;
            }
            if (value >= 10 ** 8) {
                value /= 10 ** 8;
                result += 8;
            }
            if (value >= 10 ** 4) {
                value /= 10 ** 4;
                result += 4;
            }
            if (value >= 10 ** 2) {
                value /= 10 ** 2;
                result += 2;
            }
            if (value >= 10 ** 1) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 10, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log10(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log10(value);
            return result + SafeCast.toUint(unsignedRoundsUp(rounding) && 10 ** result < value);
        }
    }

    /**
     * @dev Return the log in base 256 of a positive value rounded towards zero.
     * Returns 0 if given 0.
     *
     * Adding one to the result gives the number of pairs of hex symbols needed to represent `value` as a hex string.
     */
    function log256(uint256 x) internal pure returns (uint256 r) {
        // If value has upper 128 bits set, log2 result is at least 128
        r = SafeCast.toUint(x > 0xffffffffffffffffffffffffffffffff) << 7;
        // If upper 64 bits of 128-bit half set, add 64 to result
        r |= SafeCast.toUint((x >> r) > 0xffffffffffffffff) << 6;
        // If upper 32 bits of 64-bit half set, add 32 to result
        r |= SafeCast.toUint((x >> r) > 0xffffffff) << 5;
        // If upper 16 bits of 32-bit half set, add 16 to result
        r |= SafeCast.toUint((x >> r) > 0xffff) << 4;
        // Add 1 if upper 8 bits of 16-bit half set, and divide accumulated result by 8
        return (r >> 3) | SafeCast.toUint((x >> r) > 0xff);
    }

    /**
     * @dev Return the log in base 256, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log256(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log256(value);
            return result + SafeCast.toUint(unsignedRoundsUp(rounding) && 1 << (result << 3) < value);
        }
    }

    /**
     * @dev Returns whether a provided rounding mode is considered rounding up for unsigned integers.
     */
    function unsignedRoundsUp(Rounding rounding) internal pure returns (bool) {
        return uint8(rounding) % 2 == 1;
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/utils/math/SafeCast.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (utils/math/SafeCast.sol)
// This file was procedurally generated from scripts/generate/templates/SafeCast.js.

pragma solidity ^0.8.20;

/**
 * @dev Wrappers over Solidity's uintXX/intXX/bool casting operators with added overflow
 * checks.
 *
 * Downcasting from uint256/int256 in Solidity does not revert on overflow. This can
 * easily result in undesired exploitation or bugs, since developers usually
 * assume that overflows raise errors. `SafeCast` restores this intuition by
 * reverting the transaction when such an operation overflows.
 *
 * Using this library instead of the unchecked operations eliminates an entire
 * class of bugs, so it's recommended to use it always.
 */
library SafeCast {
    /**
     * @dev Value doesn't fit in an uint of `bits` size.
     */
    error SafeCastOverflowedUintDowncast(uint8 bits, uint256 value);

    /**
     * @dev An int value doesn't fit in an uint of `bits` size.
     */
    error SafeCastOverflowedIntToUint(int256 value);

    /**
     * @dev Value doesn't fit in an int of `bits` size.
     */
    error SafeCastOverflowedIntDowncast(uint8 bits, int256 value);

    /**
     * @dev An uint value doesn't fit in an int of `bits` size.
     */
    error SafeCastOverflowedUintToInt(uint256 value);

    /**
     * @dev Returns the downcasted uint248 from uint256, reverting on
     * overflow (when the input is greater than largest uint248).
     *
     * Counterpart to Solidity's `uint248` operator.
     *
     * Requirements:
     *
     * - input must fit into 248 bits
     */
    function toUint248(uint256 value) internal pure returns (uint248) {
        if (value > type(uint248).max) {
            revert SafeCastOverflowedUintDowncast(248, value);
        }
        return uint248(value);
    }

    /**
     * @dev Returns the downcasted uint240 from uint256, reverting on
     * overflow (when the input is greater than largest uint240).
     *
     * Counterpart to Solidity's `uint240` operator.
     *
     * Requirements:
     *
     * - input must fit into 240 bits
     */
    function toUint240(uint256 value) internal pure returns (uint240) {
        if (value > type(uint240).max) {
            revert SafeCastOverflowedUintDowncast(240, value);
        }
        return uint240(value);
    }

    /**
     * @dev Returns the downcasted uint232 from uint256, reverting on
     * overflow (when the input is greater than largest uint232).
     *
     * Counterpart to Solidity's `uint232` operator.
     *
     * Requirements:
     *
     * - input must fit into 232 bits
     */
    function toUint232(uint256 value) internal pure returns (uint232) {
        if (value > type(uint232).max) {
            revert SafeCastOverflowedUintDowncast(232, value);
        }
        return uint232(value);
    }

    /**
     * @dev Returns the downcasted uint224 from uint256, reverting on
     * overflow (when the input is greater than largest uint224).
     *
     * Counterpart to Solidity's `uint224` operator.
     *
     * Requirements:
     *
     * - input must fit into 224 bits
     */
    function toUint224(uint256 value) internal pure returns (uint224) {
        if (value > type(uint224).max) {
            revert SafeCastOverflowedUintDowncast(224, value);
        }
        return uint224(value);
    }

    /**
     * @dev Returns the downcasted uint216 from uint256, reverting on
     * overflow (when the input is greater than largest uint216).
     *
     * Counterpart to Solidity's `uint216` operator.
     *
     * Requirements:
     *
     * - input must fit into 216 bits
     */
    function toUint216(uint256 value) internal pure returns (uint216) {
        if (value > type(uint216).max) {
            revert SafeCastOverflowedUintDowncast(216, value);
        }
        return uint216(value);
    }

    /**
     * @dev Returns the downcasted uint208 from uint256, reverting on
     * overflow (when the input is greater than largest uint208).
     *
     * Counterpart to Solidity's `uint208` operator.
     *
     * Requirements:
     *
     * - input must fit into 208 bits
     */
    function toUint208(uint256 value) internal pure returns (uint208) {
        if (value > type(uint208).max) {
            revert SafeCastOverflowedUintDowncast(208, value);
        }
        return uint208(value);
    }

    /**
     * @dev Returns the downcasted uint200 from uint256, reverting on
     * overflow (when the input is greater than largest uint200).
     *
     * Counterpart to Solidity's `uint200` operator.
     *
     * Requirements:
     *
     * - input must fit into 200 bits
     */
    function toUint200(uint256 value) internal pure returns (uint200) {
        if (value > type(uint200).max) {
            revert SafeCastOverflowedUintDowncast(200, value);
        }
        return uint200(value);
    }

    /**
     * @dev Returns the downcasted uint192 from uint256, reverting on
     * overflow (when the input is greater than largest uint192).
     *
     * Counterpart to Solidity's `uint192` operator.
     *
     * Requirements:
     *
     * - input must fit into 192 bits
     */
    function toUint192(uint256 value) internal pure returns (uint192) {
        if (value > type(uint192).max) {
            revert SafeCastOverflowedUintDowncast(192, value);
        }
        return uint192(value);
    }

    /**
     * @dev Returns the downcasted uint184 from uint256, reverting on
     * overflow (when the input is greater than largest uint184).
     *
     * Counterpart to Solidity's `uint184` operator.
     *
     * Requirements:
     *
     * - input must fit into 184 bits
     */
    function toUint184(uint256 value) internal pure returns (uint184) {
        if (value > type(uint184).max) {
            revert SafeCastOverflowedUintDowncast(184, value);
        }
        return uint184(value);
    }

    /**
     * @dev Returns the downcasted uint176 from uint256, reverting on
     * overflow (when the input is greater than largest uint176).
     *
     * Counterpart to Solidity's `uint176` operator.
     *
     * Requirements:
     *
     * - input must fit into 176 bits
     */
    function toUint176(uint256 value) internal pure returns (uint176) {
        if (value > type(uint176).max) {
            revert SafeCastOverflowedUintDowncast(176, value);
        }
        return uint176(value);
    }

    /**
     * @dev Returns the downcasted uint168 from uint256, reverting on
     * overflow (when the input is greater than largest uint168).
     *
     * Counterpart to Solidity's `uint168` operator.
     *
     * Requirements:
     *
     * - input must fit into 168 bits
     */
    function toUint168(uint256 value) internal pure returns (uint168) {
        if (value > type(uint168).max) {
            revert SafeCastOverflowedUintDowncast(168, value);
        }
        return uint168(value);
    }

    /**
     * @dev Returns the downcasted uint160 from uint256, reverting on
     * overflow (when the input is greater than largest uint160).
     *
     * Counterpart to Solidity's `uint160` operator.
     *
     * Requirements:
     *
     * - input must fit into 160 bits
     */
    function toUint160(uint256 value) internal pure returns (uint160) {
        if (value > type(uint160).max) {
            revert SafeCastOverflowedUintDowncast(160, value);
        }
        return uint160(value);
    }

    /**
     * @dev Returns the downcasted uint152 from uint256, reverting on
     * overflow (when the input is greater than largest uint152).
     *
     * Counterpart to Solidity's `uint152` operator.
     *
     * Requirements:
     *
     * - input must fit into 152 bits
     */
    function toUint152(uint256 value) internal pure returns (uint152) {
        if (value > type(uint152).max) {
            revert SafeCastOverflowedUintDowncast(152, value);
        }
        return uint152(value);
    }

    /**
     * @dev Returns the downcasted uint144 from uint256, reverting on
     * overflow (when the input is greater than largest uint144).
     *
     * Counterpart to Solidity's `uint144` operator.
     *
     * Requirements:
     *
     * - input must fit into 144 bits
     */
    function toUint144(uint256 value) internal pure returns (uint144) {
        if (value > type(uint144).max) {
            revert SafeCastOverflowedUintDowncast(144, value);
        }
        return uint144(value);
    }

    /**
     * @dev Returns the downcasted uint136 from uint256, reverting on
     * overflow (when the input is greater than largest uint136).
     *
     * Counterpart to Solidity's `uint136` operator.
     *
     * Requirements:
     *
     * - input must fit into 136 bits
     */
    function toUint136(uint256 value) internal pure returns (uint136) {
        if (value > type(uint136).max) {
            revert SafeCastOverflowedUintDowncast(136, value);
        }
        return uint136(value);
    }

    /**
     * @dev Returns the downcasted uint128 from uint256, reverting on
     * overflow (when the input is greater than largest uint128).
     *
     * Counterpart to Solidity's `uint128` operator.
     *
     * Requirements:
     *
     * - input must fit into 128 bits
     */
    function toUint128(uint256 value) internal pure returns (uint128) {
        if (value > type(uint128).max) {
            revert SafeCastOverflowedUintDowncast(128, value);
        }
        return uint128(value);
    }

    /**
     * @dev Returns the downcasted uint120 from uint256, reverting on
     * overflow (when the input is greater than largest uint120).
     *
     * Counterpart to Solidity's `uint120` operator.
     *
     * Requirements:
     *
     * - input must fit into 120 bits
     */
    function toUint120(uint256 value) internal pure returns (uint120) {
        if (value > type(uint120).max) {
            revert SafeCastOverflowedUintDowncast(120, value);
        }
        return uint120(value);
    }

    /**
     * @dev Returns the downcasted uint112 from uint256, reverting on
     * overflow (when the input is greater than largest uint112).
     *
     * Counterpart to Solidity's `uint112` operator.
     *
     * Requirements:
     *
     * - input must fit into 112 bits
     */
    function toUint112(uint256 value) internal pure returns (uint112) {
        if (value > type(uint112).max) {
            revert SafeCastOverflowedUintDowncast(112, value);
        }
        return uint112(value);
    }

    /**
     * @dev Returns the downcasted uint104 from uint256, reverting on
     * overflow (when the input is greater than largest uint104).
     *
     * Counterpart to Solidity's `uint104` operator.
     *
     * Requirements:
     *
     * - input must fit into 104 bits
     */
    function toUint104(uint256 value) internal pure returns (uint104) {
        if (value > type(uint104).max) {
            revert SafeCastOverflowedUintDowncast(104, value);
        }
        return uint104(value);
    }

    /**
     * @dev Returns the downcasted uint96 from uint256, reverting on
     * overflow (when the input is greater than largest uint96).
     *
     * Counterpart to Solidity's `uint96` operator.
     *
     * Requirements:
     *
     * - input must fit into 96 bits
     */
    function toUint96(uint256 value) internal pure returns (uint96) {
        if (value > type(uint96).max) {
            revert SafeCastOverflowedUintDowncast(96, value);
        }
        return uint96(value);
    }

    /**
     * @dev Returns the downcasted uint88 from uint256, reverting on
     * overflow (when the input is greater than largest uint88).
     *
     * Counterpart to Solidity's `uint88` operator.
     *
     * Requirements:
     *
     * - input must fit into 88 bits
     */
    function toUint88(uint256 value) internal pure returns (uint88) {
        if (value > type(uint88).max) {
            revert SafeCastOverflowedUintDowncast(88, value);
        }
        return uint88(value);
    }

    /**
     * @dev Returns the downcasted uint80 from uint256, reverting on
     * overflow (when the input is greater than largest uint80).
     *
     * Counterpart to Solidity's `uint80` operator.
     *
     * Requirements:
     *
     * - input must fit into 80 bits
     */
    function toUint80(uint256 value) internal pure returns (uint80) {
        if (value > type(uint80).max) {
            revert SafeCastOverflowedUintDowncast(80, value);
        }
        return uint80(value);
    }

    /**
     * @dev Returns the downcasted uint72 from uint256, reverting on
     * overflow (when the input is greater than largest uint72).
     *
     * Counterpart to Solidity's `uint72` operator.
     *
     * Requirements:
     *
     * - input must fit into 72 bits
     */
    function toUint72(uint256 value) internal pure returns (uint72) {
        if (value > type(uint72).max) {
            revert SafeCastOverflowedUintDowncast(72, value);
        }
        return uint72(value);
    }

    /**
     * @dev Returns the downcasted uint64 from uint256, reverting on
     * overflow (when the input is greater than largest uint64).
     *
     * Counterpart to Solidity's `uint64` operator.
     *
     * Requirements:
     *
     * - input must fit into 64 bits
     */
    function toUint64(uint256 value) internal pure returns (uint64) {
        if (value > type(uint64).max) {
            revert SafeCastOverflowedUintDowncast(64, value);
        }
        return uint64(value);
    }

    /**
     * @dev Returns the downcasted uint56 from uint256, reverting on
     * overflow (when the input is greater than largest uint56).
     *
     * Counterpart to Solidity's `uint56` operator.
     *
     * Requirements:
     *
     * - input must fit into 56 bits
     */
    function toUint56(uint256 value) internal pure returns (uint56) {
        if (value > type(uint56).max) {
            revert SafeCastOverflowedUintDowncast(56, value);
        }
        return uint56(value);
    }

    /**
     * @dev Returns the downcasted uint48 from uint256, reverting on
     * overflow (when the input is greater than largest uint48).
     *
     * Counterpart to Solidity's `uint48` operator.
     *
     * Requirements:
     *
     * - input must fit into 48 bits
     */
    function toUint48(uint256 value) internal pure returns (uint48) {
        if (value > type(uint48).max) {
            revert SafeCastOverflowedUintDowncast(48, value);
        }
        return uint48(value);
    }

    /**
     * @dev Returns the downcasted uint40 from uint256, reverting on
     * overflow (when the input is greater than largest uint40).
     *
     * Counterpart to Solidity's `uint40` operator.
     *
     * Requirements:
     *
     * - input must fit into 40 bits
     */
    function toUint40(uint256 value) internal pure returns (uint40) {
        if (value > type(uint40).max) {
            revert SafeCastOverflowedUintDowncast(40, value);
        }
        return uint40(value);
    }

    /**
     * @dev Returns the downcasted uint32 from uint256, reverting on
     * overflow (when the input is greater than largest uint32).
     *
     * Counterpart to Solidity's `uint32` operator.
     *
     * Requirements:
     *
     * - input must fit into 32 bits
     */
    function toUint32(uint256 value) internal pure returns (uint32) {
        if (value > type(uint32).max) {
            revert SafeCastOverflowedUintDowncast(32, value);
        }
        return uint32(value);
    }

    /**
     * @dev Returns the downcasted uint24 from uint256, reverting on
     * overflow (when the input is greater than largest uint24).
     *
     * Counterpart to Solidity's `uint24` operator.
     *
     * Requirements:
     *
     * - input must fit into 24 bits
     */
    function toUint24(uint256 value) internal pure returns (uint24) {
        if (value > type(uint24).max) {
            revert SafeCastOverflowedUintDowncast(24, value);
        }
        return uint24(value);
    }

    /**
     * @dev Returns the downcasted uint16 from uint256, reverting on
     * overflow (when the input is greater than largest uint16).
     *
     * Counterpart to Solidity's `uint16` operator.
     *
     * Requirements:
     *
     * - input must fit into 16 bits
     */
    function toUint16(uint256 value) internal pure returns (uint16) {
        if (value > type(uint16).max) {
            revert SafeCastOverflowedUintDowncast(16, value);
        }
        return uint16(value);
    }

    /**
     * @dev Returns the downcasted uint8 from uint256, reverting on
     * overflow (when the input is greater than largest uint8).
     *
     * Counterpart to Solidity's `uint8` operator.
     *
     * Requirements:
     *
     * - input must fit into 8 bits
     */
    function toUint8(uint256 value) internal pure returns (uint8) {
        if (value > type(uint8).max) {
            revert SafeCastOverflowedUintDowncast(8, value);
        }
        return uint8(value);
    }

    /**
     * @dev Converts a signed int256 into an unsigned uint256.
     *
     * Requirements:
     *
     * - input must be greater than or equal to 0.
     */
    function toUint256(int256 value) internal pure returns (uint256) {
        if (value < 0) {
            revert SafeCastOverflowedIntToUint(value);
        }
        return uint256(value);
    }

    /**
     * @dev Returns the downcasted int248 from int256, reverting on
     * overflow (when the input is less than smallest int248 or
     * greater than largest int248).
     *
     * Counterpart to Solidity's `int248` operator.
     *
     * Requirements:
     *
     * - input must fit into 248 bits
     */
    function toInt248(int256 value) internal pure returns (int248 downcasted) {
        downcasted = int248(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(248, value);
        }
    }

    /**
     * @dev Returns the downcasted int240 from int256, reverting on
     * overflow (when the input is less than smallest int240 or
     * greater than largest int240).
     *
     * Counterpart to Solidity's `int240` operator.
     *
     * Requirements:
     *
     * - input must fit into 240 bits
     */
    function toInt240(int256 value) internal pure returns (int240 downcasted) {
        downcasted = int240(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(240, value);
        }
    }

    /**
     * @dev Returns the downcasted int232 from int256, reverting on
     * overflow (when the input is less than smallest int232 or
     * greater than largest int232).
     *
     * Counterpart to Solidity's `int232` operator.
     *
     * Requirements:
     *
     * - input must fit into 232 bits
     */
    function toInt232(int256 value) internal pure returns (int232 downcasted) {
        downcasted = int232(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(232, value);
        }
    }

    /**
     * @dev Returns the downcasted int224 from int256, reverting on
     * overflow (when the input is less than smallest int224 or
     * greater than largest int224).
     *
     * Counterpart to Solidity's `int224` operator.
     *
     * Requirements:
     *
     * - input must fit into 224 bits
     */
    function toInt224(int256 value) internal pure returns (int224 downcasted) {
        downcasted = int224(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(224, value);
        }
    }

    /**
     * @dev Returns the downcasted int216 from int256, reverting on
     * overflow (when the input is less than smallest int216 or
     * greater than largest int216).
     *
     * Counterpart to Solidity's `int216` operator.
     *
     * Requirements:
     *
     * - input must fit into 216 bits
     */
    function toInt216(int256 value) internal pure returns (int216 downcasted) {
        downcasted = int216(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(216, value);
        }
    }

    /**
     * @dev Returns the downcasted int208 from int256, reverting on
     * overflow (when the input is less than smallest int208 or
     * greater than largest int208).
     *
     * Counterpart to Solidity's `int208` operator.
     *
     * Requirements:
     *
     * - input must fit into 208 bits
     */
    function toInt208(int256 value) internal pure returns (int208 downcasted) {
        downcasted = int208(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(208, value);
        }
    }

    /**
     * @dev Returns the downcasted int200 from int256, reverting on
     * overflow (when the input is less than smallest int200 or
     * greater than largest int200).
     *
     * Counterpart to Solidity's `int200` operator.
     *
     * Requirements:
     *
     * - input must fit into 200 bits
     */
    function toInt200(int256 value) internal pure returns (int200 downcasted) {
        downcasted = int200(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(200, value);
        }
    }

    /**
     * @dev Returns the downcasted int192 from int256, reverting on
     * overflow (when the input is less than smallest int192 or
     * greater than largest int192).
     *
     * Counterpart to Solidity's `int192` operator.
     *
     * Requirements:
     *
     * - input must fit into 192 bits
     */
    function toInt192(int256 value) internal pure returns (int192 downcasted) {
        downcasted = int192(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(192, value);
        }
    }

    /**
     * @dev Returns the downcasted int184 from int256, reverting on
     * overflow (when the input is less than smallest int184 or
     * greater than largest int184).
     *
     * Counterpart to Solidity's `int184` operator.
     *
     * Requirements:
     *
     * - input must fit into 184 bits
     */
    function toInt184(int256 value) internal pure returns (int184 downcasted) {
        downcasted = int184(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(184, value);
        }
    }

    /**
     * @dev Returns the downcasted int176 from int256, reverting on
     * overflow (when the input is less than smallest int176 or
     * greater than largest int176).
     *
     * Counterpart to Solidity's `int176` operator.
     *
     * Requirements:
     *
     * - input must fit into 176 bits
     */
    function toInt176(int256 value) internal pure returns (int176 downcasted) {
        downcasted = int176(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(176, value);
        }
    }

    /**
     * @dev Returns the downcasted int168 from int256, reverting on
     * overflow (when the input is less than smallest int168 or
     * greater than largest int168).
     *
     * Counterpart to Solidity's `int168` operator.
     *
     * Requirements:
     *
     * - input must fit into 168 bits
     */
    function toInt168(int256 value) internal pure returns (int168 downcasted) {
        downcasted = int168(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(168, value);
        }
    }

    /**
     * @dev Returns the downcasted int160 from int256, reverting on
     * overflow (when the input is less than smallest int160 or
     * greater than largest int160).
     *
     * Counterpart to Solidity's `int160` operator.
     *
     * Requirements:
     *
     * - input must fit into 160 bits
     */
    function toInt160(int256 value) internal pure returns (int160 downcasted) {
        downcasted = int160(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(160, value);
        }
    }

    /**
     * @dev Returns the downcasted int152 from int256, reverting on
     * overflow (when the input is less than smallest int152 or
     * greater than largest int152).
     *
     * Counterpart to Solidity's `int152` operator.
     *
     * Requirements:
     *
     * - input must fit into 152 bits
     */
    function toInt152(int256 value) internal pure returns (int152 downcasted) {
        downcasted = int152(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(152, value);
        }
    }

    /**
     * @dev Returns the downcasted int144 from int256, reverting on
     * overflow (when the input is less than smallest int144 or
     * greater than largest int144).
     *
     * Counterpart to Solidity's `int144` operator.
     *
     * Requirements:
     *
     * - input must fit into 144 bits
     */
    function toInt144(int256 value) internal pure returns (int144 downcasted) {
        downcasted = int144(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(144, value);
        }
    }

    /**
     * @dev Returns the downcasted int136 from int256, reverting on
     * overflow (when the input is less than smallest int136 or
     * greater than largest int136).
     *
     * Counterpart to Solidity's `int136` operator.
     *
     * Requirements:
     *
     * - input must fit into 136 bits
     */
    function toInt136(int256 value) internal pure returns (int136 downcasted) {
        downcasted = int136(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(136, value);
        }
    }

    /**
     * @dev Returns the downcasted int128 from int256, reverting on
     * overflow (when the input is less than smallest int128 or
     * greater than largest int128).
     *
     * Counterpart to Solidity's `int128` operator.
     *
     * Requirements:
     *
     * - input must fit into 128 bits
     */
    function toInt128(int256 value) internal pure returns (int128 downcasted) {
        downcasted = int128(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(128, value);
        }
    }

    /**
     * @dev Returns the downcasted int120 from int256, reverting on
     * overflow (when the input is less than smallest int120 or
     * greater than largest int120).
     *
     * Counterpart to Solidity's `int120` operator.
     *
     * Requirements:
     *
     * - input must fit into 120 bits
     */
    function toInt120(int256 value) internal pure returns (int120 downcasted) {
        downcasted = int120(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(120, value);
        }
    }

    /**
     * @dev Returns the downcasted int112 from int256, reverting on
     * overflow (when the input is less than smallest int112 or
     * greater than largest int112).
     *
     * Counterpart to Solidity's `int112` operator.
     *
     * Requirements:
     *
     * - input must fit into 112 bits
     */
    function toInt112(int256 value) internal pure returns (int112 downcasted) {
        downcasted = int112(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(112, value);
        }
    }

    /**
     * @dev Returns the downcasted int104 from int256, reverting on
     * overflow (when the input is less than smallest int104 or
     * greater than largest int104).
     *
     * Counterpart to Solidity's `int104` operator.
     *
     * Requirements:
     *
     * - input must fit into 104 bits
     */
    function toInt104(int256 value) internal pure returns (int104 downcasted) {
        downcasted = int104(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(104, value);
        }
    }

    /**
     * @dev Returns the downcasted int96 from int256, reverting on
     * overflow (when the input is less than smallest int96 or
     * greater than largest int96).
     *
     * Counterpart to Solidity's `int96` operator.
     *
     * Requirements:
     *
     * - input must fit into 96 bits
     */
    function toInt96(int256 value) internal pure returns (int96 downcasted) {
        downcasted = int96(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(96, value);
        }
    }

    /**
     * @dev Returns the downcasted int88 from int256, reverting on
     * overflow (when the input is less than smallest int88 or
     * greater than largest int88).
     *
     * Counterpart to Solidity's `int88` operator.
     *
     * Requirements:
     *
     * - input must fit into 88 bits
     */
    function toInt88(int256 value) internal pure returns (int88 downcasted) {
        downcasted = int88(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(88, value);
        }
    }

    /**
     * @dev Returns the downcasted int80 from int256, reverting on
     * overflow (when the input is less than smallest int80 or
     * greater than largest int80).
     *
     * Counterpart to Solidity's `int80` operator.
     *
     * Requirements:
     *
     * - input must fit into 80 bits
     */
    function toInt80(int256 value) internal pure returns (int80 downcasted) {
        downcasted = int80(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(80, value);
        }
    }

    /**
     * @dev Returns the downcasted int72 from int256, reverting on
     * overflow (when the input is less than smallest int72 or
     * greater than largest int72).
     *
     * Counterpart to Solidity's `int72` operator.
     *
     * Requirements:
     *
     * - input must fit into 72 bits
     */
    function toInt72(int256 value) internal pure returns (int72 downcasted) {
        downcasted = int72(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(72, value);
        }
    }

    /**
     * @dev Returns the downcasted int64 from int256, reverting on
     * overflow (when the input is less than smallest int64 or
     * greater than largest int64).
     *
     * Counterpart to Solidity's `int64` operator.
     *
     * Requirements:
     *
     * - input must fit into 64 bits
     */
    function toInt64(int256 value) internal pure returns (int64 downcasted) {
        downcasted = int64(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(64, value);
        }
    }

    /**
     * @dev Returns the downcasted int56 from int256, reverting on
     * overflow (when the input is less than smallest int56 or
     * greater than largest int56).
     *
     * Counterpart to Solidity's `int56` operator.
     *
     * Requirements:
     *
     * - input must fit into 56 bits
     */
    function toInt56(int256 value) internal pure returns (int56 downcasted) {
        downcasted = int56(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(56, value);
        }
    }

    /**
     * @dev Returns the downcasted int48 from int256, reverting on
     * overflow (when the input is less than smallest int48 or
     * greater than largest int48).
     *
     * Counterpart to Solidity's `int48` operator.
     *
     * Requirements:
     *
     * - input must fit into 48 bits
     */
    function toInt48(int256 value) internal pure returns (int48 downcasted) {
        downcasted = int48(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(48, value);
        }
    }

    /**
     * @dev Returns the downcasted int40 from int256, reverting on
     * overflow (when the input is less than smallest int40 or
     * greater than largest int40).
     *
     * Counterpart to Solidity's `int40` operator.
     *
     * Requirements:
     *
     * - input must fit into 40 bits
     */
    function toInt40(int256 value) internal pure returns (int40 downcasted) {
        downcasted = int40(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(40, value);
        }
    }

    /**
     * @dev Returns the downcasted int32 from int256, reverting on
     * overflow (when the input is less than smallest int32 or
     * greater than largest int32).
     *
     * Counterpart to Solidity's `int32` operator.
     *
     * Requirements:
     *
     * - input must fit into 32 bits
     */
    function toInt32(int256 value) internal pure returns (int32 downcasted) {
        downcasted = int32(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(32, value);
        }
    }

    /**
     * @dev Returns the downcasted int24 from int256, reverting on
     * overflow (when the input is less than smallest int24 or
     * greater than largest int24).
     *
     * Counterpart to Solidity's `int24` operator.
     *
     * Requirements:
     *
     * - input must fit into 24 bits
     */
    function toInt24(int256 value) internal pure returns (int24 downcasted) {
        downcasted = int24(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(24, value);
        }
    }

    /**
     * @dev Returns the downcasted int16 from int256, reverting on
     * overflow (when the input is less than smallest int16 or
     * greater than largest int16).
     *
     * Counterpart to Solidity's `int16` operator.
     *
     * Requirements:
     *
     * - input must fit into 16 bits
     */
    function toInt16(int256 value) internal pure returns (int16 downcasted) {
        downcasted = int16(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(16, value);
        }
    }

    /**
     * @dev Returns the downcasted int8 from int256, reverting on
     * overflow (when the input is less than smallest int8 or
     * greater than largest int8).
     *
     * Counterpart to Solidity's `int8` operator.
     *
     * Requirements:
     *
     * - input must fit into 8 bits
     */
    function toInt8(int256 value) internal pure returns (int8 downcasted) {
        downcasted = int8(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(8, value);
        }
    }

    /**
     * @dev Converts an unsigned uint256 into a signed int256.
     *
     * Requirements:
     *
     * - input must be less than or equal to maxInt256.
     */
    function toInt256(uint256 value) internal pure returns (int256) {
        // Note: Unsafe cast below is okay because `type(int256).max` is guaranteed to be positive
        if (value > uint256(type(int256).max)) {
            revert SafeCastOverflowedUintToInt(value);
        }
        return int256(value);
    }

    /**
     * @dev Cast a boolean (false or true) to a uint256 (0 or 1) with no jump.
     */
    function toUint(bool b) internal pure returns (uint256 u) {
        assembly ("memory-safe") {
            u := iszero(iszero(b))
        }
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/utils/math/SignedMath.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (utils/math/SignedMath.sol)

pragma solidity ^0.8.20;

import {SafeCast} from "./SafeCast.sol";

/**
 * @dev Standard signed math utilities missing in the Solidity language.
 */
library SignedMath {
    /**
     * @dev Branchless ternary evaluation for `a ? b : c`. Gas costs are constant.
     *
     * IMPORTANT: This function may reduce bytecode size and consume less gas when used standalone.
     * However, the compiler may optimize Solidity ternary operations (i.e. `a ? b : c`) to only compute
     * one branch when needed, making this function more expensive.
     */
    function ternary(bool condition, int256 a, int256 b) internal pure returns (int256) {
        unchecked {
            // branchless ternary works because:
            // b ^ (a ^ b) == a
            // b ^ 0 == b
            return b ^ ((a ^ b) * int256(SafeCast.toUint(condition)));
        }
    }

    /**
     * @dev Returns the largest of two signed numbers.
     */
    function max(int256 a, int256 b) internal pure returns (int256) {
        return ternary(a > b, a, b);
    }

    /**
     * @dev Returns the smallest of two signed numbers.
     */
    function min(int256 a, int256 b) internal pure returns (int256) {
        return ternary(a < b, a, b);
    }

    /**
     * @dev Returns the average of two signed numbers without overflow.
     * The result is rounded towards zero.
     */
    function average(int256 a, int256 b) internal pure returns (int256) {
        // Formula from the book "Hacker's Delight"
        int256 x = (a & b) + ((a ^ b) >> 1);
        return x + (int256(uint256(x) >> 255) & (a ^ b));
    }

    /**
     * @dev Returns the absolute unsigned value of a signed value.
     */
    function abs(int256 n) internal pure returns (uint256) {
        unchecked {
            // Formula from the "Bit Twiddling Hacks" by Sean Eron Anderson.
            // Since `n` is a signed integer, the generated bytecode will use the SAR opcode to perform the right shift,
            // taking advantage of the most significant (or "sign" bit) in two's complement representation.
            // This opcode adds new most significant bits set to the value of the previous most significant bit. As a result,
            // the mask will either be `bytes32(0)` (if n is positive) or `~bytes32(0)` (if n is negative).
            int256 mask = n >> 255;

            // A `bytes32(0)` mask leaves the input unchanged, while a `~bytes32(0)` mask complements it.
            return uint256((n + mask) ^ mask);
        }
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/utils/Panic.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (utils/Panic.sol)

pragma solidity ^0.8.20;

/**
 * @dev Helper library for emitting standardized panic codes.
 *
 * ```solidity
 * contract Example {
 *      using Panic for uint256;
 *
 *      // Use any of the declared internal constants
 *      function foo() { Panic.GENERIC.panic(); }
 *
 *      // Alternatively
 *      function foo() { Panic.panic(Panic.GENERIC); }
 * }
 * ```
 *
 * Follows the list from https://github.com/ethereum/solidity/blob/v0.8.24/libsolutil/ErrorCodes.h[libsolutil].
 *
 * _Available since v5.1._
 */
// slither-disable-next-line unused-state
library Panic {
    /// @dev generic / unspecified error
    uint256 internal constant GENERIC = 0x00;
    /// @dev used by the assert() builtin
    uint256 internal constant ASSERT = 0x01;
    /// @dev arithmetic underflow or overflow
    uint256 internal constant UNDER_OVERFLOW = 0x11;
    /// @dev division or modulo by zero
    uint256 internal constant DIVISION_BY_ZERO = 0x12;
    /// @dev enum conversion error
    uint256 internal constant ENUM_CONVERSION_ERROR = 0x21;
    /// @dev invalid encoding in storage
    uint256 internal constant STORAGE_ENCODING_ERROR = 0x22;
    /// @dev empty array pop
    uint256 internal constant EMPTY_ARRAY_POP = 0x31;
    /// @dev array out of bounds access
    uint256 internal constant ARRAY_OUT_OF_BOUNDS = 0x32;
    /// @dev resource error (too large allocation or too large array)
    uint256 internal constant RESOURCE_ERROR = 0x41;
    /// @dev calling invalid internal function
    uint256 internal constant INVALID_INTERNAL_FUNCTION = 0x51;

    /// @dev Reverts with a panic code. Recommended to use with
    /// the internal constants with predefined codes.
    function panic(uint256 code) internal pure {
        assembly ("memory-safe") {
            mstore(0x00, 0x4e487b71)
            mstore(0x20, code)
            revert(0x1c, 0x24)
        }
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/utils/StorageSlot.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (utils/StorageSlot.sol)
// This file was procedurally generated from scripts/generate/templates/StorageSlot.js.

pragma solidity ^0.8.20;

/**
 * @dev Library for reading and writing primitive types to specific storage slots.
 *
 * Storage slots are often used to avoid storage conflict when dealing with upgradeable contracts.
 * This library helps with reading and writing to such slots without the need for inline assembly.
 *
 * The functions in this library return Slot structs that contain a `value` member that can be used to read or write.
 *
 * Example usage to set ERC-1967 implementation slot:
 * ```solidity
 * contract ERC1967 {
 *     // Define the slot. Alternatively, use the SlotDerivation library to derive the slot.
 *     bytes32 internal constant _IMPLEMENTATION_SLOT = 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc;
 *
 *     function _getImplementation() internal view returns (address) {
 *         return StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value;
 *     }
 *
 *     function _setImplementation(address newImplementation) internal {
 *         require(newImplementation.code.length > 0);
 *         StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value = newImplementation;
 *     }
 * }
 * ```
 *
 * TIP: Consider using this library along with {SlotDerivation}.
 */
library StorageSlot {
    struct AddressSlot {
        address value;
    }

    struct BooleanSlot {
        bool value;
    }

    struct Bytes32Slot {
        bytes32 value;
    }

    struct Uint256Slot {
        uint256 value;
    }

    struct Int256Slot {
        int256 value;
    }

    struct StringSlot {
        string value;
    }

    struct BytesSlot {
        bytes value;
    }

    /**
     * @dev Returns an `AddressSlot` with member `value` located at `slot`.
     */
    function getAddressSlot(bytes32 slot) internal pure returns (AddressSlot storage r) {
        assembly ("memory-safe") {
            r.slot := slot
        }
    }

    /**
     * @dev Returns a `BooleanSlot` with member `value` located at `slot`.
     */
    function getBooleanSlot(bytes32 slot) internal pure returns (BooleanSlot storage r) {
        assembly ("memory-safe") {
            r.slot := slot
        }
    }

    /**
     * @dev Returns a `Bytes32Slot` with member `value` located at `slot`.
     */
    function getBytes32Slot(bytes32 slot) internal pure returns (Bytes32Slot storage r) {
        assembly ("memory-safe") {
            r.slot := slot
        }
    }

    /**
     * @dev Returns a `Uint256Slot` with member `value` located at `slot`.
     */
    function getUint256Slot(bytes32 slot) internal pure returns (Uint256Slot storage r) {
        assembly ("memory-safe") {
            r.slot := slot
        }
    }

    /**
     * @dev Returns a `Int256Slot` with member `value` located at `slot`.
     */
    function getInt256Slot(bytes32 slot) internal pure returns (Int256Slot storage r) {
        assembly ("memory-safe") {
            r.slot := slot
        }
    }

    /**
     * @dev Returns a `StringSlot` with member `value` located at `slot`.
     */
    function getStringSlot(bytes32 slot) internal pure returns (StringSlot storage r) {
        assembly ("memory-safe") {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `StringSlot` representation of the string storage pointer `store`.
     */
    function getStringSlot(string storage store) internal pure returns (StringSlot storage r) {
        assembly ("memory-safe") {
            r.slot := store.slot
        }
    }

    /**
     * @dev Returns a `BytesSlot` with member `value` located at `slot`.
     */
    function getBytesSlot(bytes32 slot) internal pure returns (BytesSlot storage r) {
        assembly ("memory-safe") {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `BytesSlot` representation of the bytes storage pointer `store`.
     */
    function getBytesSlot(bytes storage store) internal pure returns (BytesSlot storage r) {
        assembly ("memory-safe") {
            r.slot := store.slot
        }
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/utils/Strings.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.3.0) (utils/Strings.sol)

pragma solidity ^0.8.20;

import {Math} from "./math/Math.sol";
import {SafeCast} from "./math/SafeCast.sol";
import {SignedMath} from "./math/SignedMath.sol";

/**
 * @dev String operations.
 */
library Strings {
    using SafeCast for *;

    bytes16 private constant HEX_DIGITS = "0123456789abcdef";
    uint8 private constant ADDRESS_LENGTH = 20;
    uint256 private constant SPECIAL_CHARS_LOOKUP =
        (1 << 0x08) | // backspace
            (1 << 0x09) | // tab
            (1 << 0x0a) | // newline
            (1 << 0x0c) | // form feed
            (1 << 0x0d) | // carriage return
            (1 << 0x22) | // double quote
            (1 << 0x5c); // backslash

    /**
     * @dev The `value` string doesn't fit in the specified `length`.
     */
    error StringsInsufficientHexLength(uint256 value, uint256 length);

    /**
     * @dev The string being parsed contains characters that are not in scope of the given base.
     */
    error StringsInvalidChar();

    /**
     * @dev The string being parsed is not a properly formatted address.
     */
    error StringsInvalidAddressFormat();

    /**
     * @dev Converts a `uint256` to its ASCII `string` decimal representation.
     */
    function toString(uint256 value) internal pure returns (string memory) {
        unchecked {
            uint256 length = Math.log10(value) + 1;
            string memory buffer = new string(length);
            uint256 ptr;
            assembly ("memory-safe") {
                ptr := add(buffer, add(32, length))
            }
            while (true) {
                ptr--;
                assembly ("memory-safe") {
                    mstore8(ptr, byte(mod(value, 10), HEX_DIGITS))
                }
                value /= 10;
                if (value == 0) break;
            }
            return buffer;
        }
    }

    /**
     * @dev Converts a `int256` to its ASCII `string` decimal representation.
     */
    function toStringSigned(int256 value) internal pure returns (string memory) {
        return string.concat(value < 0 ? "-" : "", toString(SignedMath.abs(value)));
    }

    /**
     * @dev Converts a `uint256` to its ASCII `string` hexadecimal representation.
     */
    function toHexString(uint256 value) internal pure returns (string memory) {
        unchecked {
            return toHexString(value, Math.log256(value) + 1);
        }
    }

    /**
     * @dev Converts a `uint256` to its ASCII `string` hexadecimal representation with fixed length.
     */
    function toHexString(uint256 value, uint256 length) internal pure returns (string memory) {
        uint256 localValue = value;
        bytes memory buffer = new bytes(2 * length + 2);
        buffer[0] = "0";
        buffer[1] = "x";
        for (uint256 i = 2 * length + 1; i > 1; --i) {
            buffer[i] = HEX_DIGITS[localValue & 0xf];
            localValue >>= 4;
        }
        if (localValue != 0) {
            revert StringsInsufficientHexLength(value, length);
        }
        return string(buffer);
    }

    /**
     * @dev Converts an `address` with fixed length of 20 bytes to its not checksummed ASCII `string` hexadecimal
     * representation.
     */
    function toHexString(address addr) internal pure returns (string memory) {
        return toHexString(uint256(uint160(addr)), ADDRESS_LENGTH);
    }

    /**
     * @dev Converts an `address` with fixed length of 20 bytes to its checksummed ASCII `string` hexadecimal
     * representation, according to EIP-55.
     */
    function toChecksumHexString(address addr) internal pure returns (string memory) {
        bytes memory buffer = bytes(toHexString(addr));

        // hash the hex part of buffer (skip length + 2 bytes, length 40)
        uint256 hashValue;
        assembly ("memory-safe") {
            hashValue := shr(96, keccak256(add(buffer, 0x22), 40))
        }

        for (uint256 i = 41; i > 1; --i) {
            // possible values for buffer[i] are 48 (0) to 57 (9) and 97 (a) to 102 (f)
            if (hashValue & 0xf > 7 && uint8(buffer[i]) > 96) {
                // case shift by xoring with 0x20
                buffer[i] ^= 0x20;
            }
            hashValue >>= 4;
        }
        return string(buffer);
    }

    /**
     * @dev Returns true if the two strings are equal.
     */
    function equal(string memory a, string memory b) internal pure returns (bool) {
        return bytes(a).length == bytes(b).length && keccak256(bytes(a)) == keccak256(bytes(b));
    }

    /**
     * @dev Parse a decimal string and returns the value as a `uint256`.
     *
     * Requirements:
     * - The string must be formatted as `[0-9]*`
     * - The result must fit into an `uint256` type
     */
    function parseUint(string memory input) internal pure returns (uint256) {
        return parseUint(input, 0, bytes(input).length);
    }

    /**
     * @dev Variant of {parseUint-string} that parses a substring of `input` located between position `begin` (included) and
     * `end` (excluded).
     *
     * Requirements:
     * - The substring must be formatted as `[0-9]*`
     * - The result must fit into an `uint256` type
     */
    function parseUint(string memory input, uint256 begin, uint256 end) internal pure returns (uint256) {
        (bool success, uint256 value) = tryParseUint(input, begin, end);
        if (!success) revert StringsInvalidChar();
        return value;
    }

    /**
     * @dev Variant of {parseUint-string} that returns false if the parsing fails because of an invalid character.
     *
     * NOTE: This function will revert if the result does not fit in a `uint256`.
     */
    function tryParseUint(string memory input) internal pure returns (bool success, uint256 value) {
        return _tryParseUintUncheckedBounds(input, 0, bytes(input).length);
    }

    /**
     * @dev Variant of {parseUint-string-uint256-uint256} that returns false if the parsing fails because of an invalid
     * character.
     *
     * NOTE: This function will revert if the result does not fit in a `uint256`.
     */
    function tryParseUint(
        string memory input,
        uint256 begin,
        uint256 end
    ) internal pure returns (bool success, uint256 value) {
        if (end > bytes(input).length || begin > end) return (false, 0);
        return _tryParseUintUncheckedBounds(input, begin, end);
    }

    /**
     * @dev Implementation of {tryParseUint-string-uint256-uint256} that does not check bounds. Caller should make sure that
     * `begin <= end <= input.length`. Other inputs would result in undefined behavior.
     */
    function _tryParseUintUncheckedBounds(
        string memory input,
        uint256 begin,
        uint256 end
    ) private pure returns (bool success, uint256 value) {
        bytes memory buffer = bytes(input);

        uint256 result = 0;
        for (uint256 i = begin; i < end; ++i) {
            uint8 chr = _tryParseChr(bytes1(_unsafeReadBytesOffset(buffer, i)));
            if (chr > 9) return (false, 0);
            result *= 10;
            result += chr;
        }
        return (true, result);
    }

    /**
     * @dev Parse a decimal string and returns the value as a `int256`.
     *
     * Requirements:
     * - The string must be formatted as `[-+]?[0-9]*`
     * - The result must fit in an `int256` type.
     */
    function parseInt(string memory input) internal pure returns (int256) {
        return parseInt(input, 0, bytes(input).length);
    }

    /**
     * @dev Variant of {parseInt-string} that parses a substring of `input` located between position `begin` (included) and
     * `end` (excluded).
     *
     * Requirements:
     * - The substring must be formatted as `[-+]?[0-9]*`
     * - The result must fit in an `int256` type.
     */
    function parseInt(string memory input, uint256 begin, uint256 end) internal pure returns (int256) {
        (bool success, int256 value) = tryParseInt(input, begin, end);
        if (!success) revert StringsInvalidChar();
        return value;
    }

    /**
     * @dev Variant of {parseInt-string} that returns false if the parsing fails because of an invalid character or if
     * the result does not fit in a `int256`.
     *
     * NOTE: This function will revert if the absolute value of the result does not fit in a `uint256`.
     */
    function tryParseInt(string memory input) internal pure returns (bool success, int256 value) {
        return _tryParseIntUncheckedBounds(input, 0, bytes(input).length);
    }

    uint256 private constant ABS_MIN_INT256 = 2 ** 255;

    /**
     * @dev Variant of {parseInt-string-uint256-uint256} that returns false if the parsing fails because of an invalid
     * character or if the result does not fit in a `int256`.
     *
     * NOTE: This function will revert if the absolute value of the result does not fit in a `uint256`.
     */
    function tryParseInt(
        string memory input,
        uint256 begin,
        uint256 end
    ) internal pure returns (bool success, int256 value) {
        if (end > bytes(input).length || begin > end) return (false, 0);
        return _tryParseIntUncheckedBounds(input, begin, end);
    }

    /**
     * @dev Implementation of {tryParseInt-string-uint256-uint256} that does not check bounds. Caller should make sure that
     * `begin <= end <= input.length`. Other inputs would result in undefined behavior.
     */
    function _tryParseIntUncheckedBounds(
        string memory input,
        uint256 begin,
        uint256 end
    ) private pure returns (bool success, int256 value) {
        bytes memory buffer = bytes(input);

        // Check presence of a negative sign.
        bytes1 sign = begin == end ? bytes1(0) : bytes1(_unsafeReadBytesOffset(buffer, begin)); // don't do out-of-bound (possibly unsafe) read if sub-string is empty
        bool positiveSign = sign == bytes1("+");
        bool negativeSign = sign == bytes1("-");
        uint256 offset = (positiveSign || negativeSign).toUint();

        (bool absSuccess, uint256 absValue) = tryParseUint(input, begin + offset, end);

        if (absSuccess && absValue < ABS_MIN_INT256) {
            return (true, negativeSign ? -int256(absValue) : int256(absValue));
        } else if (absSuccess && negativeSign && absValue == ABS_MIN_INT256) {
            return (true, type(int256).min);
        } else return (false, 0);
    }

    /**
     * @dev Parse a hexadecimal string (with or without "0x" prefix), and returns the value as a `uint256`.
     *
     * Requirements:
     * - The string must be formatted as `(0x)?[0-9a-fA-F]*`
     * - The result must fit in an `uint256` type.
     */
    function parseHexUint(string memory input) internal pure returns (uint256) {
        return parseHexUint(input, 0, bytes(input).length);
    }

    /**
     * @dev Variant of {parseHexUint-string} that parses a substring of `input` located between position `begin` (included) and
     * `end` (excluded).
     *
     * Requirements:
     * - The substring must be formatted as `(0x)?[0-9a-fA-F]*`
     * - The result must fit in an `uint256` type.
     */
    function parseHexUint(string memory input, uint256 begin, uint256 end) internal pure returns (uint256) {
        (bool success, uint256 value) = tryParseHexUint(input, begin, end);
        if (!success) revert StringsInvalidChar();
        return value;
    }

    /**
     * @dev Variant of {parseHexUint-string} that returns false if the parsing fails because of an invalid character.
     *
     * NOTE: This function will revert if the result does not fit in a `uint256`.
     */
    function tryParseHexUint(string memory input) internal pure returns (bool success, uint256 value) {
        return _tryParseHexUintUncheckedBounds(input, 0, bytes(input).length);
    }

    /**
     * @dev Variant of {parseHexUint-string-uint256-uint256} that returns false if the parsing fails because of an
     * invalid character.
     *
     * NOTE: This function will revert if the result does not fit in a `uint256`.
     */
    function tryParseHexUint(
        string memory input,
        uint256 begin,
        uint256 end
    ) internal pure returns (bool success, uint256 value) {
        if (end > bytes(input).length || begin > end) return (false, 0);
        return _tryParseHexUintUncheckedBounds(input, begin, end);
    }

    /**
     * @dev Implementation of {tryParseHexUint-string-uint256-uint256} that does not check bounds. Caller should make sure that
     * `begin <= end <= input.length`. Other inputs would result in undefined behavior.
     */
    function _tryParseHexUintUncheckedBounds(
        string memory input,
        uint256 begin,
        uint256 end
    ) private pure returns (bool success, uint256 value) {
        bytes memory buffer = bytes(input);

        // skip 0x prefix if present
        bool hasPrefix = (end > begin + 1) && bytes2(_unsafeReadBytesOffset(buffer, begin)) == bytes2("0x"); // don't do out-of-bound (possibly unsafe) read if sub-string is empty
        uint256 offset = hasPrefix.toUint() * 2;

        uint256 result = 0;
        for (uint256 i = begin + offset; i < end; ++i) {
            uint8 chr = _tryParseChr(bytes1(_unsafeReadBytesOffset(buffer, i)));
            if (chr > 15) return (false, 0);
            result *= 16;
            unchecked {
                // Multiplying by 16 is equivalent to a shift of 4 bits (with additional overflow check).
                // This guarantees that adding a value < 16 will not cause an overflow, hence the unchecked.
                result += chr;
            }
        }
        return (true, result);
    }

    /**
     * @dev Parse a hexadecimal string (with or without "0x" prefix), and returns the value as an `address`.
     *
     * Requirements:
     * - The string must be formatted as `(0x)?[0-9a-fA-F]{40}`
     */
    function parseAddress(string memory input) internal pure returns (address) {
        return parseAddress(input, 0, bytes(input).length);
    }

    /**
     * @dev Variant of {parseAddress-string} that parses a substring of `input` located between position `begin` (included) and
     * `end` (excluded).
     *
     * Requirements:
     * - The substring must be formatted as `(0x)?[0-9a-fA-F]{40}`
     */
    function parseAddress(string memory input, uint256 begin, uint256 end) internal pure returns (address) {
        (bool success, address value) = tryParseAddress(input, begin, end);
        if (!success) revert StringsInvalidAddressFormat();
        return value;
    }

    /**
     * @dev Variant of {parseAddress-string} that returns false if the parsing fails because the input is not a properly
     * formatted address. See {parseAddress-string} requirements.
     */
    function tryParseAddress(string memory input) internal pure returns (bool success, address value) {
        return tryParseAddress(input, 0, bytes(input).length);
    }

    /**
     * @dev Variant of {parseAddress-string-uint256-uint256} that returns false if the parsing fails because input is not a properly
     * formatted address. See {parseAddress-string-uint256-uint256} requirements.
     */
    function tryParseAddress(
        string memory input,
        uint256 begin,
        uint256 end
    ) internal pure returns (bool success, address value) {
        if (end > bytes(input).length || begin > end) return (false, address(0));

        bool hasPrefix = (end > begin + 1) && bytes2(_unsafeReadBytesOffset(bytes(input), begin)) == bytes2("0x"); // don't do out-of-bound (possibly unsafe) read if sub-string is empty
        uint256 expectedLength = 40 + hasPrefix.toUint() * 2;

        // check that input is the correct length
        if (end - begin == expectedLength) {
            // length guarantees that this does not overflow, and value is at most type(uint160).max
            (bool s, uint256 v) = _tryParseHexUintUncheckedBounds(input, begin, end);
            return (s, address(uint160(v)));
        } else {
            return (false, address(0));
        }
    }

    function _tryParseChr(bytes1 chr) private pure returns (uint8) {
        uint8 value = uint8(chr);

        // Try to parse `chr`:
        // - Case 1: [0-9]
        // - Case 2: [a-f]
        // - Case 3: [A-F]
        // - otherwise not supported
        unchecked {
            if (value > 47 && value < 58) value -= 48;
            else if (value > 96 && value < 103) value -= 87;
            else if (value > 64 && value < 71) value -= 55;
            else return type(uint8).max;
        }

        return value;
    }

    /**
     * @dev Escape special characters in JSON strings. This can be useful to prevent JSON injection in NFT metadata.
     *
     * WARNING: This function should only be used in double quoted JSON strings. Single quotes are not escaped.
     *
     * NOTE: This function escapes all unicode characters, and not just the ones in ranges defined in section 2.5 of
     * RFC-4627 (U+0000 to U+001F, U+0022 and U+005C). ECMAScript's `JSON.parse` does recover escaped unicode
     * characters that are not in this range, but other tooling may provide different results.
     */
    function escapeJSON(string memory input) internal pure returns (string memory) {
        bytes memory buffer = bytes(input);
        bytes memory output = new bytes(2 * buffer.length); // worst case scenario
        uint256 outputLength = 0;

        for (uint256 i; i < buffer.length; ++i) {
            bytes1 char = bytes1(_unsafeReadBytesOffset(buffer, i));
            if (((SPECIAL_CHARS_LOOKUP & (1 << uint8(char))) != 0)) {
                output[outputLength++] = "\\";
                if (char == 0x08) output[outputLength++] = "b";
                else if (char == 0x09) output[outputLength++] = "t";
                else if (char == 0x0a) output[outputLength++] = "n";
                else if (char == 0x0c) output[outputLength++] = "f";
                else if (char == 0x0d) output[outputLength++] = "r";
                else if (char == 0x5c) output[outputLength++] = "\\";
                else if (char == 0x22) {
                    // solhint-disable-next-line quotes
                    output[outputLength++] = '"';
                }
            } else {
                output[outputLength++] = char;
            }
        }
        // write the actual length and deallocate unused memory
        assembly ("memory-safe") {
            mstore(output, outputLength)
            mstore(0x40, add(output, shl(5, shr(5, add(outputLength, 63)))))
        }

        return string(output);
    }

    /**
     * @dev Reads a bytes32 from a bytes array without bounds checking.
     *
     * NOTE: making this function internal would mean it could be used with memory unsafe offset, and marking the
     * assembly block as such would prevent some optimizations.
     */
    function _unsafeReadBytesOffset(bytes memory buffer, uint256 offset) private pure returns (bytes32 value) {
        // This is not memory safe in the general case, but all calls to this private function are within bounds.
        assembly ("memory-safe") {
            value := mload(add(buffer, add(0x20, offset)))
        }
    }
}
