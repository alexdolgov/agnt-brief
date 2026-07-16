// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.20;

import {IRecoverable} from "./IRecoverable.sol";
import {IERC165} from "@openzeppelin/contracts/utils/introspection/IERC165.sol";

/// @notice Pending root for rewards distribution
struct PendingRoot {
    /// @notice The root of the merkle tree
    bytes32 root;
    /// @notice The timestamp when the root is valid at
    uint256 validAt;
}

/// @notice Reward struct
struct Reward {
    /// @notice The total amount of reward assets without accrued rewards
    uint256 totalWithoutRewards;
    /// @notice The total amount of reward assets borrowed
    /// @dev This amount is an always increasing counter
    uint256 totalBorrowed;
    /// @notice The total amount of reward assets repaid
    /// @dev This amount is an always increasing counter
    /// @dev The delta between repaid and borrowed can be used to calculate performance
    /// @dev Greater repaid amount means a positive performance that returned profits to the strategy
    /// @dev In cases of negative delta, the offset from accrued rewards can compensate for the negative returns
    uint256 totalRepaid;
}

/// @notice The type of rewards distribution
/// @dev Used for integrators to determine the type of rewards distribution
enum RewardsType {
    /// @notice No rewards distribution
    None,
    /// @notice Rewards distribution via merkle proofs
    Merkle,
    /// @notice Rewards distribution via strategy
    Strategy
}

/// @notice Base interface for rewards modules
interface IRewardsBase is IRecoverable, IERC165 {
    /// @notice Emitted when rewards are locked
    /// @param amount The amount of rewards locked
    /// @param asset The address of the asset being locked
    /// @param owner The address of the asset owner
    event RewardLocked(uint256 amount, address indexed asset, address indexed owner);

    /// @notice Emitted when rewards are borrowed
    /// @param amount The amount of rewards borrowed
    /// @param asset The address of the asset being borrowed
    /// @param receiver The address of the receiver
    event RewardBorrowed(uint256 amount, address indexed asset, address indexed receiver);

    /// @notice Emitted when rewards are repaid
    /// @param amount The amount of rewards repaid
    /// @param asset The address of the asset being repaid
    /// @param owner The address of the owner of the rewards
    event RewardRepaid(uint256 amount, address indexed asset, address indexed owner);

    /// @notice Emitted when rewards are added
    /// @param amount The amount of rewards added
    /// @param asset The address of the asset being added
    /// @param owner The address of the asset owner
    event RewardAdded(uint256 amount, address indexed asset, address indexed owner);

    /// @notice Emitted when an updater is set
    /// @param updater The address of the updater
    /// @param allowed Whether the updater is allowed
    event UpdaterSet(address indexed updater, bool allowed);

    /// @notice Locks underlying rewards in the rewards module
    /// @param amount The amount of rewards to lock
    /// @param asset The address of the asset being locked
    /// @param owner The address of the asset owner
    /// @dev This MUST be a strategy downstream authorized call
    /// @dev This MUST revert for rewards distributions that don't require locked underlying asset
    function lock(uint256 amount, address asset, address owner) external;

    /// @notice Borrows underlying rewards from the rewards module
    /// @param amount The amount of rewards to borrow
    /// @param asset The address of the asset being borrowed
    /// @param receiver The address of the receiver
    function borrow(uint256 amount, address asset, address receiver) external;

    /// @notice Repays underlying rewards to the rewards module
    /// @param amount The amount of rewards to repay
    /// @param asset The address of the asset being repaid
    /// @param owner The address of the owner of the rewards
    function repay(uint256 amount, address asset, address owner) external;

    /// @notice Adds rewards to the rewards module
    /// @param amounts The amounts of rewards to add
    /// @param assets The addresses of the assets being added
    /// @param owner The address of the owner of the rewards
    function addRewards(uint256[] calldata amounts, address[] calldata assets, address owner) external;

    /// @notice Adds a reward to the rewards module
    /// @param amount The amount of rewards to add
    /// @param asset The address of the asset being added
    /// @param owner The address of the owner of the rewards
    /// @dev This assumes the root will be set independently
    function addReward(uint256 amount, address asset, address owner) external;

    /// @notice Returns the total value locked in the rewards module
    /// @return tvl The total value locked in the rewards module
    function rewardState(address asset) external view returns (Reward memory);

    /// @notice Sets an updater
    /// @param updater The address of the updater
    /// @param allowed Whether the updater is allowed
    function setUpdater(address updater, bool allowed) external;

    /// @notice Returns the strategy address
    /// @return strategy The strategy address
    function strategy() external view returns (address);

    /// @notice Returns whether an updater is allowed
    /// @param updater The address of the updater
    /// @return allowed Whether the updater is allowed
    function updaters(address updater) external view returns (bool);

    /// @notice Returns the total rewards for an asset
    /// @param asset The address of the asset
    /// @return totalRewards The total rewards for an asset
    function totalRewards(address asset) external view returns (uint256);
}

/// @notice Base interface for rewards distributor
interface IRewardsDistributorBase {
    /// @notice Emitted when a user claims rewards
    /// @param account The address of the user who claims rewards
    /// @param asset The address of the asset being claimed
    /// @param amount The amount of rewards claimed
    event Claimed(address indexed account, address indexed asset, uint256 amount);

    /// @notice Claims available rewards
    /// @param account The address of the user who claims rewards
    /// @param asset The address of the asset being claimed
    /// @param claimable The amount of rewards claimable
    /// @param proof The proof of the merkle tree
    /// @return amount The amount of rewards claimed
    /// @dev Can be an authorized call depending on distribution model
    function claim(address account, address asset, uint256 claimable, bytes32[] calldata proof)
        external
        returns (uint256 amount);

    /// @notice Returns the amount of rewards claimed for an account and asset
    /// @param account The address of the user who claims rewards
    /// @param asset The address of the asset being claimed
    /// @return amount The amount of rewards claimed
    function claimed(address account, address asset) external view returns (uint256 amount);
}

/// @notice Interface for rewards distributor with merkle proofs
interface IRewardsDistributorMerkle is IRewardsDistributorBase {
    /// @notice Emitted when the root is set
    /// @param oldRoot The old root
    /// @param newRoot The new root
    event RootSet(bytes32 indexed oldRoot, bytes32 indexed newRoot);

    /// @notice Emitted when the timelock is set
    /// @param timelock The timelock
    event TimelockSet(uint256 timelock);

    /// @notice Emitted when a pending root is set
    /// @param updater The address of the updater who set the pending root
    /// @param root The root of the pending root
    event PendingRootSet(address indexed updater, bytes32 indexed root);

    /// @notice Emitted when a pending root is revoked
    /// @param updater The address of the updater who revoked the pending root
    event PendingRootRevoked(address indexed updater);

    /// @notice Sets the root
    /// @param root The root
    function setRoot(bytes32 root) external;

    /// @notice Submits a pending root
    /// @param root The root
    function submitRoot(bytes32 root) external;

    /// @notice Accepts a pending root
    function acceptRoot() external;

    /// @notice Revokes a pending root
    function revokePendingRoot() external;

    /// @notice Sets the timelock
    /// @param timelock The timelock
    function setTimelock(uint256 timelock) external;

    /// @notice Returns the root
    /// @return root The root
    function root() external view returns (bytes32);

    /// @notice Returns the pending root
    /// @return pendingRoot The pending root
    function pendingRoot() external view returns (PendingRoot memory);

    /// @notice Returns the timelock
    /// @return timelock The timelock
    function timelock() external view returns (uint256);
}

interface IRewardsDistributorStrategy is IRewardsDistributorBase {}
