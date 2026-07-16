// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "../EigenLayer/interfaces/IStrategy.sol";
import "./InstantWithdrawal/IWithdrawalBuffer.sol";
import "./IEzRVault.sol";

abstract contract EzRVaultStorageV1 is IEzRVault {
    struct UserWithdrawRequest {
        address withdrawer;
        uint256 lpTokenAmountLocked;
        uint256 createdAt;
    }

    /// @dev scale factor for underlying token as decimals
    uint8 public underlyingDecimals;

    /// @dev Underlying token for vault
    IERC20 public underlying;

    /// @dev EigenLayer Strategy for underlying token
    IStrategy public underlyingStrategy;

    /// @dev min vault cooldown blocks for user withdrawals
    uint256 public vaultCooldownBlocks;

    /// @dev tracks the block number at which cooldownBlocks got updated
    uint256 public cooldownBlocksUpdatedAt;

    /// @dev Track of token shares in withdraw queue of EigenLayer
    uint256 public queuedShares;

    /// @dev mapping to track withdraw request owner with withdrawalRoot key
    mapping(bytes32 => UserWithdrawRequest) public withdrawRequest;

    /// @dev mapping to track emergencyQueued withdrawals
    mapping(bytes32 => bool) public emergencyWithdrawal;

    /// @dev rewards fee on vault
    uint256 public vaultFee;

    /// @dev rewards fee destination specified by vaultOwner
    address public vaultFeeDestination;

    /// @dev destination for non underlying reward tokens
    address public vaultRewardsDestination;

    /// @dev track the pause status of vault
    bool public paused;

    /// @dev track the pauser account address
    address public pauser;
}

abstract contract EzRVaultStorageV2 is EzRVaultStorageV1 {
    /// @dev Track the rewards Claimer account which can submit proofs and call processRewards
    address public rewardsProofSubmitter;
}

abstract contract EzRVaultStorageV3 is EzRVaultStorageV2 {
    struct QueuedWithdrawalInfo {
        uint256 sharesSlashedDelta;
        uint256 initialWithdrawableShares;
    }

    mapping(bytes32 => QueuedWithdrawalInfo) public queuedWithdrawalInfo;

    uint256 public totalQueuedSharesSlashedDelta;
}

abstract contract EzRVaultStorageV4 is EzRVaultStorageV3 {
    /// @dev TVL Limit fo the vault - users will not be able to deposit if TVL exceeds this limit - 0 means no limit
    uint256 public tvlLimit;

    /// @dev Timestamp preventing withdrawals until the period ends - note that this only eforces starting a withdrawal
    /// and does not prevent the claiming an existing withdrawal (in case a rolling bond is used that creates new lock periods)
    uint256 public withdrawUnlockTimestamp;
}

abstract contract EzRVaultStorageV5 is EzRVaultStorageV4 {
    struct AdminWithdrawRequest {
        uint256 shares;
        uint256 createdAt;
    }

    /// @dev The maximum cooldown blocks that can be configured by vault owner
    IWithdrawalBuffer public withdrawalBuffer;

    /// @dev Tracks the address for admin responsible for managing the withdrawal buffer
    address public withdrawalBufferAdmin;

    /// @dev Tracks the withdrawal started by admin
    mapping(bytes32 => AdminWithdrawRequest) public adminWithdrawalRequest;
}
