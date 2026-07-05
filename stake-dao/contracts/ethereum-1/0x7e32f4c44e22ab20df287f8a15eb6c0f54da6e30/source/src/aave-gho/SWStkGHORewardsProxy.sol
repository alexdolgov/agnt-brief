// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.20;

import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IRewardsProxy} from "../utils/interfaces/IRewardsProxy.sol";
import {IStakeToken} from "./interfaces/IStakeToken.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract SWStkGHORewardsProxy is IRewardsProxy {
    using SafeERC20 for IERC20;

    address public immutable GHO;
    address public immutable stkGHO;

    constructor(address _GHO, address _stkGHO) {
        GHO = _GHO;
        stkGHO = _stkGHO;
    }

    /// @dev See {IRewardsProxy-claimRewards}.
    function claimRewards(bytes calldata data) external {
        address _rewardsReceiver = abi.decode(data, (address));

        // claim AAVE rewards from stkGHO
        IStakeToken(stkGHO).claimRewards(_rewardsReceiver, type(uint256).max);

        // transfer GHO rewards airdropped from Angle
        uint256 ghoBalance = IERC20(GHO).balanceOf(address(this));
        if (ghoBalance > 0) {
            IERC20(GHO).safeTransfer(_rewardsReceiver, ghoBalance);
        }
    }
}
