// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.9;

import {IERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";

interface IStakingCore {

    /* ========== ENUMERABLE VALUES ========== */

    enum RewardCategory{
        Fee,
        Validator,
        EarlyStage,
        Investment
    }

    /* ========== CORE FUNCTIONS ========== */

    function stakeToken() external view returns(IERC20Upgradeable);
    function stakeBalance(address account) external view returns(uint256);
    function isStaking(address account) external view returns (bool);

    function stakeFor(address receiver, uint256 amount, bool collectFee) external;
    function unstakeFrom(address staker, address receiver, uint256 amount, bool collectFee) external;

    function addReward(address token, uint8 category, uint256 amount, uint256 duration) external;

    function migrate(address staker, address newStaking) external;
    function receiveMigration(address receiver, uint256 amount) external;

}
