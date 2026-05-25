// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.19;

import "../interface/IVesting.sol";
import "./AirDropBase.sol";

/**
 * @title AirDropCappedBase: A base contract for airdrop distribution using a Merkle tree with a capped claim amount
 *        and vesting functionality.
 */
abstract contract AirDropCappedBase is AirDropBase {
    struct VestingParams {
        uint128 claimCap;
        uint64 vestingPeriod;
    }

    mapping(uint256 => VestingParams) public vestingParams;
    address public vesting;

    event VestingChanged(address newRewardPool);

    /**
     * @notice Initializes the contract with the specified token and vesting contract.
     * @param token The address of the token used in airdrops.
     * @param vesting_ The address of the vesting contract.
     */
    function __AirDropCapped_initialize_(
        address token,
        address vesting_
    ) internal virtual initializer {
        __AirDrop_initialize_(token);
        vesting = vesting_;
    }

    /**
     * @notice Owner: Changes the address of the vesting contract.
     * @param newVesting The new address of the vesting contract.
     */
    function changeVesting(address newVesting) external onlyOwner {
        vesting = newVesting;
        emit VestingChanged(newVesting);
    }

    /**
     * @notice Allocates any amount over the claim cap to the vesting contract.
     * @param releaseId The ID of the airdrop release.
     * @param amount The total amount to be allocated.
     * @return The amount up to the claim cap.
     */
    function _allocateOverCap(
        uint256 releaseId,
        uint256 amount
    ) internal returns (uint256) {
        VestingParams storage vestingParams_ = vestingParams[releaseId];
        uint256 claimCap = vestingParams_.claimCap;

        if (amount > claimCap) {
            IVesting.AllocParams[]
                memory allocParams = new IVesting.AllocParams[](1);
            uint128 vestAmount = uint128(amount - claimCap);
            TransferHelper.safeApprove(address(token), vesting, vestAmount);
            allocParams[0] = IVesting.AllocParams({
                investor: msg.sender,
                vestAmount: vestAmount,
                lockupPeriod: 0,
                vestingPeriod: vestingParams_.vestingPeriod,
                instantShare: 0
            });
            IVesting(vesting).allocate(allocParams);
            return claimCap;
        }

        return amount;
    }

    /**
     * @notice Owner: Releases a new airdrop with the specified amount of tokens and vesting parameters.
     * @notice See {AirDropBase-_release}.
     * @param claimCap The maximum amount that can be processed bypassing vesting allocation.
     * @param vestingPeriod The vesting period for any excess tokens.
     */
    function _release(
        bytes32 merkleRoot,
        uint256 amount,
        uint128 claimCap,
        uint64 vestingPeriod
    ) internal returns (uint256 releaseId) {
        releaseId = _release(merkleRoot, amount);
        vestingParams[releaseId] = VestingParams({
            claimCap: claimCap,
            vestingPeriod: vestingPeriod
        });
    }
}
