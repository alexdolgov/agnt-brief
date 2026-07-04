// SPDX-License-Identifier: MIT

pragma solidity 0.8.16;

import { IAdapter } from "../../../interfaces/IAdapter.sol";
import { ICVX } from "../../../interfaces/Convex/ICVX.sol";
import { IBooster } from "../../../interfaces/Aura/IBooster.sol";
import { IAuraRewards } from "../../../interfaces/Aura/IAuraRewards.sol";
import { IERC20, SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract AuraAdapter is IAdapter {
	using SafeERC20 for IERC20;

	ICVX public constant AURA = ICVX(0xC0c293ce456fF0ED870ADd98a0828Dd4d2903DBF);
	IERC20 public constant BAL = IERC20(0xba100000625a3754423978a60c9317c58a424e3D);
    IERC20 public constant WETH = IERC20(0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2);
	IBooster public constant Booster = IBooster(0xA57b8d98dAE62B26Ec3bcC4a365338157060B234);

	// Target info 
    function rewardTokenCount() public view override returns (uint256) {
        return 2;
    }

    function rewardToken(uint256 id) public view override returns (IERC20) {
	    IERC20[2] memory rewards = [BAL, AURA];
        return rewards[id];
    }

	function poolCount() external view override returns (uint256) {
        return Booster.poolLength();
    }

	function defaultToken() external view override returns (IERC20) {
        return WETH;
    }

	// Pool info
    function lockableToken(uint256 poolId) external view override returns (IERC20) {
        (address lpToken,,,,,) = Booster.poolInfo(poolId);
        return IERC20(lpToken);
    }

	function lockedAmount(address user, uint256 poolId) external view override returns (uint256) {
        (,,,address rewards,,) = Booster.poolInfo(poolId);
        return IAuraRewards(rewards).balanceOf(user);
    }


    function earnedReward(address, uint256, address, uint256) external view override returns (uint256) {
        revert("not implemented");
    }

	// Service methods
    function poolAddress(uint256) external view override returns (address) {
        return address(Booster);
    }
}
