// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity 0.8.17;

import { Ownable } from "openzeppelin-contracts/access/Ownable.sol";
import { IERC20Metadata } from "openzeppelin-contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { SafeERC20 } from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";

/* solhint-disable max-line-length */

//slither-disable-next-line name-reused
interface IBooster {
    function earmarkRewards(uint256 _pid) external returns (bool);
}

interface IRewarder {
    function currentRewards() external view returns (uint256);
    function queuedRewards() external view returns (uint256);
    function periodFinish() external view returns (uint256);
    function extraRewardsLength() external view returns (uint256);
    function extraRewards(uint256) external view returns (address);
}

contract IncentiveHarvester is Ownable {
    using SafeERC20 for IERC20Metadata;

    error UnknownError();
    error ParamsLengthMismatch();
    error EthTransferFailed();

    event TokensRecovered(address[] tokens, uint256[] amounts, address[] destinations);

    /**
     * @notice Run the Convex/Aura Booster's earmarkRewards function to harvest rewards from Curve/Balancer
     * @param booster The Convex/Aura Booster contract.
     * @param pid The pool ID.
     * @param rewarder The Convex/Aura Rewarder contract.
     * @return A boolean indicating if some rewards were harvested or not.
     */
    function harvest(IBooster booster, uint256 pid, IRewarder rewarder) public returns (bool) {
        uint256 extraRewardsLength = rewarder.extraRewardsLength();
        uint256 rewardersLength = extraRewardsLength + 1;

        // Build the rewarders array to include the main rewarder and all the extra rewarders.
        IRewarder[] memory rewarders = new IRewarder[](rewardersLength);
        rewarders[0] = rewarder;
        for (uint256 i = 0; i < extraRewardsLength; ++i) {
            rewarders[i + 1] = IRewarder(rewarder.extraRewards(i));
        }

        uint256[] memory currentRewardsBefore = new uint256[](rewardersLength);
        uint256[] memory queuedRewardsBefore = new uint256[](rewardersLength);
        uint256[] memory periodFinishBefore = new uint256[](rewardersLength);

        for (uint256 i = 0; i < rewardersLength; ++i) {
            currentRewardsBefore[i] = rewarders[i].currentRewards();
            queuedRewardsBefore[i] = rewarders[i].queuedRewards();
            periodFinishBefore[i] = rewarders[i].periodFinish();
        }

        // The `earmarkRewards()` call:
        // harvests rewards from Curve and distributes them to Convex which queue the rewards (queueNewRewards).

        // slither-disable-next-line unused-return
        try booster.earmarkRewards(pid) {
            bool rewardsHarvested = false;
            uint256 i = 0;

            // If at least one rewarder has harvested rewards, it's enough to consider that a success
            do {
                uint256 currentRewardsAfter = rewarders[i].currentRewards();
                uint256 queuedRewardsAfter = rewarders[i].queuedRewards();
                uint256 periodFinishAfter = rewarders[i].periodFinish();

                // When new rewards are queued (via queueNewRewards), they are either:
                // 1. Added to queuedRewards, increasing the queuedRewards value.
                // 2. Added to currentRewards, increasing both periodFinish and currentRewards values.
                rewardsHarvested = (
                    periodFinishAfter > periodFinishBefore[i] && currentRewardsAfter > currentRewardsBefore[i]
                ) || (queuedRewardsAfter > queuedRewardsBefore[i]);

                unchecked {
                    ++i;
                }
            } while (!rewardsHarvested && i < rewardersLength);

            return rewardsHarvested;

            // Expected errors are handled below and unexpected ones are forwarded. ⬇️
        } catch Error(string memory reason) {
            // Handle the specific "crvChange" error from Convex's ExtraRewardStashV3 contract.
            // This error indicates that no rewards were claimed.
            // Reference:
            // https://github.com/convex-eth/platform/blob/55fee02bc5471b6f32c3cec65384bc98c898b020/contracts/contracts/ExtraRewardStashV3.sol#L106
            if (keccak256(abi.encodePacked(reason)) == keccak256(abi.encodePacked("crvChange"))) {
                return false;
            } else {
                // Revert with the original error message otherwise
                revert(reason);
            }
        } catch (bytes memory reason) {
            if (reason.length > 0) {
                // Forward the custom error

                // slither-disable-start assembly
                // solhint-disable-next-line no-inline-assembly
                assembly {
                    revert(add(32, reason), mload(reason))
                }
                //slither-disable-end assembly
            } else {
                revert UnknownError();
            }
        }
    }

    /**
     * @notice Recover tokens and/or ETH from the contract.
     * @param tokens The tokens to recover.
     * @param amounts The amounts to recover.
     * @param destinations The destinations to send the recovered tokens to.
     */
    //slither-disable-start missing-zero-check,low-level-calls,missing-zero-address-validation
    function recover(
        address[] calldata tokens,
        uint256[] calldata amounts,
        address[] calldata destinations
    ) external onlyOwner {
        uint256 len = tokens.length;

        if (amounts.length != len || destinations.length != len) {
            revert ParamsLengthMismatch();
        }

        emit TokensRecovered(tokens, amounts, destinations);

        for (uint256 i = 0; i < len; ++i) {
            (address tokenAddress, uint256 amount, address destination) = (tokens[i], amounts[i], destinations[i]);

            if (tokenAddress != 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE) {
                IERC20Metadata(tokenAddress).safeTransfer(destination, amount);
            } else {
                // solhint-disable-next-line avoid-low-level-calls
                (bool success,) = payable(destination).call{ value: amount }("");
                if (!success) {
                    revert EthTransferFailed();
                }
            }
        }
    }
    //slither-disable-end missing-zero-check,low-level-calls,missing-zero-address-validation
}
