// SPDX-License-Identifier: MIT

pragma solidity 0.8.16;

import { IAdapter } from "../../../interfaces/IAdapter.sol";
import { IDelegate } from "../../../interfaces/IDelegate.sol";
import { IBooster } from "../../../interfaces/Aura/IBooster.sol";
import { IAuraRewards } from "../../../interfaces/Aura/IAuraRewards.sol";
import { IERC20, SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract AuraDelegate is IDelegate {
	using SafeERC20 for IERC20;
	IBooster public constant Booster = IBooster(0xA57b8d98dAE62B26Ec3bcC4a365338157060B234);

    function lockableToken(uint256 poolId) external view override returns (IERC20) {
        (address lpToken,,,,,) = Booster.poolInfo(poolId);
        return IERC20(lpToken);
    }

	function lockedAmount(address user, uint256 poolId) external view override returns (uint256) {
        (,,,address rewards,,) = Booster.poolInfo(poolId);
        return IAuraRewards(rewards).balanceOf(user);
    }

    function deposit(address _adapter, uint256 poolId, uint256 amount) external override {
        IAdapter adapter = IAdapter(_adapter);
        adapter.lockableToken(poolId).safeIncreaseAllowance(address(Booster), uint256(amount));
        Booster.deposit(poolId, amount, true);
    }

    function withdraw(address, uint256 poolId, uint256 amount) external override {
        (,,,address rewardsPool,,) = Booster.poolInfo(poolId);
	    IAuraRewards(rewardsPool).withdrawAndUnwrap(amount, false);
    }

    function claimReward(address, address userOfTarget, uint256 poolId) external override {
            (,,,address rewardsPool,,) = Booster.poolInfo(poolId);
            IAuraRewards(rewardsPool).getReward(userOfTarget, true);
        }

    function poolUpdate(address, uint256, uint256) external override {
        revert("not implemented");
    }
}

