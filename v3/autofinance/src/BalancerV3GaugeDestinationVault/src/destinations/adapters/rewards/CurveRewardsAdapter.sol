// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { IERC20 } from "openzeppelin-contracts/token/ERC20/IERC20.sol";

import { Errors } from "src/utils/Errors.sol";
import { RewardAdapter } from "src/destinations/adapters/rewards/RewardAdapter.sol";
import { ILiquidityGaugeV2 } from "src/interfaces/external/curve/ILiquidityGaugeV2.sol";
import { IMinter } from "src/interfaces/external/curve/IMinter.sol";
import { SafeERC20 } from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";

library CurveRewardsAdapter {
    using SafeERC20 for IERC20;

    // solhint-disable-next-line var-name-mixedcase
    uint256 private constant MAX_REWARDS = 8;

    /**
     * @notice Claims all gauge rewards + CRV rewards using the Curve Minter
     * @dev also support Balancer and Beets gauges
     * @dev Claimed tokens sent to msg.sender
     * @dev Calls into external contract. Should be guarded with
     * non-reentrant flags in a used contract.
     * Anyone can claim rewards for us in Curve gauges, so we return total balances
     * @param gauge The gauge to claim rewards from
     * @param minter Minter contract for the protocol
     * @param crv Minted token for the protocol
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

        address account = address(this);
        address[] memory tempRewardTokens = new address[](MAX_REWARDS);
        uint256 rewardsLength = 0;

        // Curve Pool don't have a method to get the reward tokens length
        // so we need to iterate until we get a zero address to know `rewardsLength`
        // All Curve pools have MAX_REWARDS set to 8
        // https://github.com/curvefi/curve-dao-contracts/blob/567927551903f71ce5a73049e077be87111963cc/contracts/gauges/LiquidityGaugeV2.vy#L71
        // solhint-disable-previous-line max-line-length
        for (uint256 ix = 0; ix < MAX_REWARDS;) {
            address rewardToken = rewardPool.reward_tokens(ix);
            unchecked {
                ++ix;
            }
            if (rewardToken == address(0)) {
                break;
            }
            // Sometimes the minted token is also distributed as a reward
            // Since we will add the minted token manually later, we'll skip it for now
            if (rewardToken == crv) {
                continue;
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
            _transferTokens(rewardTokens[i], amountsClaimed[i]);
        }

        // Mint CRV rewards
        uint256 crvBalance = _mintCRV(gauge, minter, crv);
        // Add CRV to the list of rewards
        amountsClaimed[rewardsLength] = crvBalance;
        rewardTokens[rewardsLength] = crv;
        _transferTokens(crv, crvBalance);

        RewardAdapter.emitRewardsClaimed(rewardTokens, amountsClaimed);
    }

    function _transferTokens(address token, uint256 amount) private {
        if (token != address(0) && amount > 0) {
            IERC20(token).safeTransfer(msg.sender, amount);
        }
    }

    // solhint-disable max-line-length
    /**
     * @dev [CURVE/BALANCER] We use try/catch because gauge might not be registered with the Minter.controller yet, so
     * minting might fail.
     * @dev [BEETS] Gauges do not have a CRV like reward token. `minter` and `crv` provided will be 0 in this case. So
     * we return 0.
     * https://github.com/beethovenxfi/beethovenx-token/blob/b2b06fea83973d8a27769bf427bf30b96e2792cc/contracts/gauges/sonic/ChildChainGauge.vy#L559-L561
     * @param gauge The gauge to mint rewards from
     * @param minter The minter to mint rewards from
     * @param crv The CRV token address
     * @return The balance of CRV tokens after minting
     */
    function _mintCRV(address gauge, address minter, address crv) internal returns (uint256) {
        if (minter != address(0)) {
            try IMinter(minter).mint(gauge) { } catch { }
        }
        if (crv != address(0)) {
            return IERC20(crv).balanceOf(address(this));
        }
        return 0;
    }
    // solhint-enable max-line-length
}
