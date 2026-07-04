// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.20;

import {IRecoverable} from "../interfaces/IRecoverable.sol";
import {
    IRewardsDistributorMerkle, IRewardsDistributorBase, PendingRoot, IRewardsBase
} from "../interfaces/IRewards.sol";

import {
    RootAlreadySet,
    RootAlreadyPending,
    RootNotSet,
    NoPendingRoot,
    TimelockNotExpired,
    NotEnoughClaimableAmount,
    InvalidProof
} from "../constants/Errors.sol";

import {RewardsBase} from "./Rewards.sol";

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC165} from "@openzeppelin/contracts/utils/introspection/IERC165.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {MerkleProof} from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";

/// @notice Rewards distributor with merkle proofs for multiple reward tokens
/// @custom:security-contact security@accountable.capital
contract RewardsDistributorMerkle is IRewardsDistributorMerkle, RewardsBase {
    using SafeERC20 for IERC20;

    /// @notice The merkle root of the rewards
    bytes32 public root;

    /// @notice The timelock for the rewards distributor
    uint256 public timelock;

    /// @notice The claimed rewards for an account and asset
    mapping(address account => mapping(address asset => uint256 amount)) public claimed;

    /// @notice The pending root of the rewards distributor
    PendingRoot private _pendingRoot;

    /// @notice Constructor
    /// @param owner_ The owner of the rewards distributor
    /// @param strategy_ The strategy address of the rewards module
    /// @param timelock_ The timelock for the rewards distributor
    constructor(address owner_, address strategy_, uint256 timelock_) RewardsBase(owner_, strategy_) {
        _setTimelock(timelock_);
    }

    /// @inheritdoc IRewardsDistributorMerkle
    function setRoot(bytes32 root_) external onlyOwner {
        if (root_ == root) revert RootAlreadySet();
        _setRoot(root_);
    }

    /// @inheritdoc IRewardsDistributorMerkle
    function submitRoot(bytes32 root_) external onlyUpdater {
        if (root_ == _pendingRoot.root) revert RootAlreadyPending();
        _pendingRoot = PendingRoot({root: root_, validAt: block.timestamp + timelock});

        emit PendingRootSet(msg.sender, root_);
    }

    /// @inheritdoc IRewardsDistributorMerkle
    function acceptRoot() external {
        uint256 validAt = _pendingRoot.validAt;
        if (validAt == 0) revert NoPendingRoot();
        if (block.timestamp < validAt) revert TimelockNotExpired();

        _setRoot(_pendingRoot.root);
    }

    /// @inheritdoc IRewardsDistributorMerkle
    function revokePendingRoot() external onlyUpdater {
        if (_pendingRoot.validAt == 0) revert NoPendingRoot();
        delete _pendingRoot;

        emit PendingRootRevoked(msg.sender);
    }

    /// @inheritdoc IRewardsDistributorMerkle
    function setTimelock(uint256 timelock_) external onlyOwner {
        _setTimelock(timelock_);
    }

    /// @inheritdoc IRewardsDistributorBase
    function claim(address account, address asset, uint256 claimable, bytes32[] calldata proof)
        external
        returns (uint256 amount)
    {
        if (root == bytes32(0)) revert RootNotSet();
        if (
            !MerkleProof.verifyCalldata(
                proof, root, keccak256(bytes.concat(keccak256(abi.encode(account, asset, claimable))))
            )
        ) {
            revert InvalidProof();
        }

        uint256 claimed_ = claimed[account][asset];
        if (!(claimable > claimed_)) revert NotEnoughClaimableAmount();

        amount = claimable - claimed_;
        claimed[account][asset] += amount;

        IERC20(asset).safeTransfer(account, amount);

        emit Claimed(account, asset, amount);
    }

    /// @inheritdoc IERC165
    function supportsInterface(bytes4 interfaceId) public pure override returns (bool) {
        return interfaceId == type(IRewardsDistributorMerkle).interfaceId
            || interfaceId == type(IRewardsBase).interfaceId || interfaceId == type(IRecoverable).interfaceId
            || interfaceId == type(IERC165).interfaceId;
    }

    /// @dev Sets the root
    /// @param root_ The root
    function _setRoot(bytes32 root_) internal {
        bytes32 oldRoot = root;
        root = root_;
        delete _pendingRoot;

        emit RootSet(oldRoot, root_);
    }

    /// @dev Sets the timelock
    /// @param timelock_ The timelock
    function _setTimelock(uint256 timelock_) internal {
        timelock = timelock_;

        emit TimelockSet(timelock_);
    }

    /// @inheritdoc IRewardsDistributorMerkle
    function pendingRoot() public view returns (PendingRoot memory) {
        return _pendingRoot;
    }
}
