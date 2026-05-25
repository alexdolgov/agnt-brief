// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.19;

import "./base/AirDropCappedBase.sol";
import "./interface/IRewardPool.sol";

/**
 * @title AirDropCappedDelayed: A contract for airdrop distribution using a Merkle tree with capped delayed claim and
 *        vesting functionality.
 */
contract AirDropCappedDelayed is AirDropCappedBase {
    struct ClaimData {
        uint256 releaseId;
        bytes32[] merkleProof;
        uint256 amount;
        bool transferClaimToRewardPool;
    }

    mapping(uint256 => uint256) public claimUnlockTimestamps;
    address public rewardPool;

    event Released(
        uint256 indexed releaseId,
        bytes32 merleRoot,
        uint256 amount,
        uint256 releaseAt,
        uint128 claimCap,
        uint64 vestingPeriod
    );
    event RewardPoolChanged(address newRewardPool);
    error ClaimIsLocked(uint256 releaseId, uint256 secondsUntilUnlock);

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Initializes the contract with the specified token.
     * @param token The address of the token used in airdrops.
     * @param rewardPool_ The address of the RewardPool contract that will be used for staking.
     */
    function initialize(
        address token,
        address vesting_,
        address rewardPool_
    ) external virtual initializer {
        __AirDropCapped_initialize_(token, vesting_);
        rewardPool = rewardPool_;
    }

    /**
     * @notice Owner: Changes the address of the RewardPool contract.
     * @param newRewardPool The new address of the RewardPool contract.
     */
    function changeRewardPool(address newRewardPool) external onlyOwner {
        rewardPool = newRewardPool;
        emit RewardPoolChanged(newRewardPool);
    }

    /**
     * @notice Claims tokens from a specified airdrop release or stakes them directly into the reward pool.
     * @notice See {AirDropCappedBase-_resolve}.
     * @param  transferClaimToRewardPool indicates whether the claimed tokens should be sent to RewardPool (true) or claimed (false).
     */
    function claim(
        uint256 releaseId,
        bytes32[] calldata merkleProof,
        uint256 amount,
        bool transferClaimToRewardPool
    ) public {
        _resolve(releaseId, merkleProof, amount);

        uint256 remainingAmount = _allocateOverCap(releaseId, amount);
        if (remainingAmount > 0) {
            if (transferClaimToRewardPool) {
                address rewardPool_ = rewardPool;
                TransferHelper.safeApprove(
                    address(token),
                    rewardPool_,
                    remainingAmount
                );
                IRewardPool(rewardPool_).stakeFor(
                    msg.sender,
                    uint96(remainingAmount)
                );
            } else {
                uint256 claimUnlockTimestamp = claimUnlockTimestamps[releaseId];
                if (block.timestamp < claimUnlockTimestamp)
                    revert ClaimIsLocked(
                        releaseId,
                        claimUnlockTimestamp - block.timestamp
                    );

                TransferHelper.safeTransfer(
                    address(token),
                    msg.sender,
                    remainingAmount
                );
            }
        }

        emit Claimed(releaseId, msg.sender, amount);
    }

    /**
     * @notice Batch claims tokens from multiple airdrop releases.
     * @param data An array of ClaimData containing releaseId, merkleProof, amount and staking indicator for each claim.
     */
    function claimBatch(ClaimData[] calldata data) external {
        for (uint256 i = 0; i < data.length; ++i) {
            claim(
                data[i].releaseId,
                data[i].merkleProof,
                data[i].amount,
                data[i].transferClaimToRewardPool
            );
        }
    }

    /**
     * @notice Owner: Releases a new airdrop with the specified amount of tokens and release timestamp.
     * @notice See {AirDropBase-_release}.
     * @notice claimUnlockTimestamp The timestamp until which the claim will be available only to the staking contract.
     * @param claimCap The maximum amount that can be claimed immediately.
     * @param vestingPeriod The vesting period for any excess tokens.
     */
    function release(
        bytes32 merkleRoot,
        uint256 amount,
        uint256 claimUnlockTimestamp,
        uint128 claimCap,
        uint64 vestingPeriod
    ) external returns (uint256 releaseId) {
        releaseId = _release(merkleRoot, amount, claimCap, vestingPeriod);
        claimUnlockTimestamps[releaseId] = claimUnlockTimestamp;
        emit Released(
            releaseId,
            merkleRoot,
            amount,
            claimUnlockTimestamp,
            claimCap,
            vestingPeriod
        );
    }

    /**
     * @notice Checks the eligibility of an account for a specified airdrop release.
     * @param account The address to check eligibility for.
     * @param releaseId The ID of the airdrop release.
     * @param merkleProof The Merkle proof verifying the claim.
     * @param amount The amount of tokens to claim.
     * @return secondsUntilUnlock The remaining time until the release can be claimed, or 0 if already available.
     */
    function checkEligibility(
        address account,
        uint256 releaseId,
        bytes32[] calldata merkleProof,
        uint256 amount
    ) external view returns (uint256 secondsUntilUnlock) {
        _checkEligibility(account, releaseId, merkleProof, amount);

        uint256 claimUnlockTimestamp = claimUnlockTimestamps[releaseId];
        return
            claimUnlockTimestamp > block.timestamp
                ? claimUnlockTimestamp - block.timestamp
                : 0;
    }
}
