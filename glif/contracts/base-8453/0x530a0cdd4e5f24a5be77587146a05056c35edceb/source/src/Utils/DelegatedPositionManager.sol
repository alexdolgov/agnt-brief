// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {FixedPointMathLib} from "@solmate/utils/FixedPointMathLib.sol";
import {IICNProtocolMini} from "@src/Interfaces/IICNProtocolMini.sol";

library DelegatedPositionManager {
    using FixedPointMathLib for uint256;

    function _claimRewards(IICNProtocolMini icnp, IERC20 asset, uint256 rewardIdx) internal returns (uint256) {
        uint256 contractBalance = asset.balanceOf(address(this));

        icnp.claimDelegationRewards(rewardIdx);

        return asset.balanceOf(address(this)) - contractBalance;
    }
}
