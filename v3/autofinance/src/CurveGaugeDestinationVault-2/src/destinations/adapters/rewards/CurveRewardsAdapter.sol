// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { IERC20 } from "openzeppelin-contracts/token/ERC20/IERC20.sol";

import { Errors } from "src/utils/Errors.sol";
import { RewardAdapter } from "src/destinations/adapters/rewards/RewardAdapter.sol";
import { ILiquidityGaugeV2 } from "src/interfaces/external/curve/ILiquidityGaugeV2.sol";
import { IMinter } from "src/interfaces/external/curve/IMinter.sol";

library CurveRewardsAdapter {
    // solhint-disable-next-line var-name-mixedcase
    uint256 private constant MAX_REWARDS = 8;

    /**
     * @notice Claims all pool rewards + gauge CRV rewards using the Curve Minter
     * @dev Calls into external contract. Should be guarded with
     * non-reentrant flags in a used contract.
     * Anyone can claim rewards for us in Curve gauges, so we return total balances
     * @param gauge The gauge to claim rewards from
     * @return amountsClaimed Quantity of reward tokens
     * @return rewardTokens Addresses of claimed reward tokens
     */
    function claimRewards(
        address gauge,
        address minter,
        address crv
    ) public returns (uint256[] memory amountsClaimed, address[] memory rewardTokens) {
        Errors.verifyNotZero(gauge, "gauge");
        ILiquidityGaugeV2 rewardPool = ILiquidityGaugeV2(gauge);

        // Mint CRV rewards first
        _mintCRV(gauge, minter);

        address account = address(this);
        address[] memory tempRewardTokens = new address[](MAX_REWARDS);
        uint256 rewardsLength = 0;

        // Curve Pool don't have a method to get the reward tokens length
        // so we need to iterate until we get a zero address to know `rewardsLength`
        // All Curve pools have MAX_REWARDS set to 8
        // https://github.com/curvefi/curve-dao-contracts/blob/567927551903f71ce5a73049e077be87111963cc/contracts/gauges/LiquidityGaugeV2.vy#L71
        // solhint-disable-previous-line max-line-length
        while (rewardsLength < MAX_REWARDS) {
            address rewardToken = rewardPool.reward_tokens(rewardsLength);
            if (rewardToken == address(0)) {
                break;
            }
            tempRewardTokens[rewardsLength] = rewardToken;
            ++rewardsLength;
        }

        // +1 for CRV rewards
        rewardTokens = new address[](rewardsLength + 1);
        amountsClaimed = new uint256[](rewardsLength + 1);

        // Claim rewards
        rewardPool.claim_rewards(account);

        // Get final balances after claim
        for (uint256 i; i < rewardsLength; ++i) {
            amountsClaimed[i] = IERC20(tempRewardTokens[i]).balanceOf(account);
            rewardTokens[i] = tempRewardTokens[i];
        }

        // Add CRV to the list of rewards
        amountsClaimed[rewardsLength] = IERC20(crv).balanceOf(account);
        rewardTokens[rewardsLength] = crv;

        RewardAdapter.emitRewardsClaimed(rewardTokens, amountsClaimed);
    }

    /**
     * @notice gauge might not be registered with the Minter.controller and minting might fail
     * @param gauge The gauge to mint rewards from
     * @param minter The minter to mint rewards from
     */
    function _mintCRV(address gauge, address minter) internal {
        try IMinter(minter).mint(gauge) { } catch { }
    }
}
