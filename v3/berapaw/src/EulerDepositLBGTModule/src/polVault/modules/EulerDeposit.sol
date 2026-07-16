// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import { IERC4626 } from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";

import { HarvestModule } from "../HarvestModule.sol";

contract EulerDepositLBGTModule is HarvestModule {
    IERC4626 public constant eLBGT  = IERC4626(0x4eB3351066494852a03ffBBDE40a9776380Ce20D);
    uint256 public constant BASIS_POINT_SCALE = 1e4;

    uint256 public rewardVaultSplit;

    constructor(address _polVault, uint256 _rewardVaultSplit) HarvestModule(_polVault) {
        require(_rewardVaultSplit <= BASIS_POINT_SCALE, "Invalid reward vault split");
        rewardVaultSplit = _rewardVaultSplit;
    }

    function setRewardVaultSplit(uint256 _rewardVaultSplit) external onlyAdmin {
        require(_rewardVaultSplit <= BASIS_POINT_SCALE, "Invalid reward vault split");
        rewardVaultSplit = _rewardVaultSplit;
    }

    function harvestCallback(uint256 /*amount*/ ) external override onlyPolVault {
        uint256 balance = _lbgtBalance();
        uint256 rewardVaultAmount = Math.mulDiv(balance, rewardVaultSplit, BASIS_POINT_SCALE);
        uint256 eulerAmount = balance - rewardVaultAmount;
        if (rewardVaultAmount > 0) {
            SafeERC20.safeTransfer(lbgt, address(rewardVault), rewardVaultAmount);
        }
        if (eulerAmount > 0) {
            lbgt.approve(address(eLBGT), eulerAmount);
            eLBGT.deposit(eulerAmount, address(polVault));
        }
    }
}
