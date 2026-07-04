// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import { IUniswapV2Router02 } from "@uniswap-v2-periphery-1.1.0-beta.0/contracts/interfaces/IUniswapV2Router02.sol";

import { HarvestModule } from "../HarvestModule.sol";

contract BuyBackBurnModule is HarvestModule {
    address constant BURN_ADDRESS = 0x000000000000000000000000000000000000dEaD;
    IUniswapV2Router02 constant KODIAK_V2_ROUTER = IUniswapV2Router02(0xe301E48F77963D3F7DbD2a4796962Bd7f3867Fb4);

    IERC20 public burnToken;

    uint256 public targetRewardVaultBalance;

    constructor(address _polVault, address _burnToken, uint256 _targetRewardVaultBalance) HarvestModule(_polVault) {
        burnToken = IERC20(_burnToken);
        targetRewardVaultBalance = _targetRewardVaultBalance;
    }

    function setTargetRewardVaultBalance(uint256 _targetRewardVaultBalance) external onlyAdmin {
        targetRewardVaultBalance = _targetRewardVaultBalance;
    }

    function harvestCallback(uint256 /*amount*/ ) external override onlyPolVault {
        uint256 balanceLeft = _lbgtBalance();
        uint256 rewardVaultBalance = lbgt.balanceOf(address(rewardVault));

        if (rewardVaultBalance < targetRewardVaultBalance) {
            uint256 refill = targetRewardVaultBalance - rewardVaultBalance;
            uint256 toTransfer = balanceLeft < refill ? balanceLeft : refill;
            if (toTransfer > 0) {
                SafeERC20.safeTransfer(lbgt, address(rewardVault), toTransfer);
                balanceLeft -= toTransfer;
            }
        }

        if (balanceLeft > 0) {
            _buyBack(balanceLeft);
            uint256 burnTokenBalance = burnToken.balanceOf(address(this));
            if (burnTokenBalance > 0) {
                _burn(burnTokenBalance);
            }
        }
    }

    function _buyBack(uint256 amount) internal returns (uint256) {
        if (amount == 0) return 0;

        address[] memory path = new address[](2);
        path[0] = address(lbgt);
        path[1] = address(burnToken);

        // Approve router
        lbgt.approve(address(KODIAK_V2_ROUTER), amount);

        // Execute swap
        uint256[] memory amounts = KODIAK_V2_ROUTER.swapExactTokensForTokens(
            amount,
            0, // As long as harvest is called frequently, this should not be a problem.
            path,
            address(this),
            block.timestamp
        );

        return amounts[1];
    }

    function _burn(uint256 amount) internal {
        SafeERC20.safeTransfer(burnToken, BURN_ADDRESS, amount);
    }
}
