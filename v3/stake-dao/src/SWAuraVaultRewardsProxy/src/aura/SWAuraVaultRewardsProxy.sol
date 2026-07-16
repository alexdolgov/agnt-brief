// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.20;

import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IRewardsProxy} from "../utils/interfaces/IRewardsProxy.sol";
import {IBaseRewardPool} from "./interfaces/IBaseRewardPool.sol";
import {IVirtualBalanceRewardPool} from "./interfaces/IVirtualBalanceRewardPool.sol";
import {IStashToken} from "./interfaces/IStashToken.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract SWAuraVaultRewardsProxy is IRewardsProxy {
    using SafeERC20 for IERC20;

    address public immutable auraDepositVault;
    address public immutable rewardToken;
    address public immutable AURA;

    constructor(address _AURA, address _auraDepositVault) {
        AURA = _AURA;
        auraDepositVault = _auraDepositVault;
        rewardToken = IBaseRewardPool(auraDepositVault).rewardToken();
    }

    /// @dev See {IRewardsProxy-claimRewards}.
    function claimRewards(bytes calldata data) external {
        address _rewardsReceiver = abi.decode(data, (address));

        uint256 extraRewardsLength = IBaseRewardPool(auraDepositVault).extraRewardsLength();

        // claim BAL + AURA + extra rewards
        IBaseRewardPool(auraDepositVault).getReward();

        // transfer extra rewards if any
        for (uint256 i; i < extraRewardsLength; ++i) {
            address extraReward = IBaseRewardPool(auraDepositVault).extraRewards(i);
            address extraRewardStashToken = IVirtualBalanceRewardPool(extraReward).rewardToken();
            address extraRewardBaseToken = IStashToken(extraRewardStashToken).baseToken();

            uint256 ertBal = IERC20(extraRewardBaseToken).balanceOf(address(this));
            if (ertBal > 0) {
                IERC20(extraRewardBaseToken).safeTransfer(_rewardsReceiver, ertBal);
            }
        }

        // transfer BAL rewards if any
        uint256 rtBal = IERC20(rewardToken).balanceOf(address(this));
        if (rtBal > 0) {
            IERC20(rewardToken).safeTransfer(_rewardsReceiver, rtBal);
        }

        // transfer AURA rewards if any and not already claimed
        uint256 auraBal = IERC20(AURA).balanceOf(address(this));
        if (auraBal > 0) {
            IERC20(AURA).safeTransfer(_rewardsReceiver, auraBal);
        }
    }
}
