// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { UUPSUpgradeable } from "@openzeppelin-contracts-upgradeable-5.1.0/proxy/utils/UUPSUpgradeable.sol";
import { AccessControlUpgradeable } from "@openzeppelin-contracts-upgradeable-5.1.0/access/AccessControlUpgradeable.sol";

import { StakingRewards } from "../base/StakingRewards.sol";
import { IStakingRewards } from "../base/IStakingRewards.sol";
import { Constants } from "../Constants.sol";

/// @title LPStakingRewards
/// @author BeraPaw (Adapted from Berachain Team)
/// @notice A contract for staking LP tokens tokens and receive rewards for it.
contract LPStakingRewards is AccessControlUpgradeable, UUPSUpgradeable, StakingRewards {
    using SafeERC20 for IERC20;

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                        CONSTANTS                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    bytes32 public constant ROLE_GOD = Constants.ROLE_GOD;
    bytes32 public constant ROLE_ADMIN = Constants.ROLE_ADMIN;

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                         INITIALIZER                        */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _stakingToken, address _rewardToken, address _owner) external initializer {
        __StakingRewards_init(_stakingToken, _rewardToken, 3 days);

        _setRoleAdmin(ROLE_GOD, ROLE_GOD);
        _setRoleAdmin(ROLE_ADMIN, ROLE_GOD);

        _grantRole(ROLE_GOD, _owner);
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                       ADMIN FUNCTIONS                      */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    function _authorizeUpgrade(address newImplementation) internal override onlyRole(ROLE_GOD) { }

    function depositReward(uint256 reward) external onlyRole(ROLE_ADMIN) {
        SafeERC20.safeTransferFrom(rewardToken, _msgSender(), address(this), reward);
        _notifyRewardAmount(reward);
    }

    function setRewardsDuration(uint256 _rewardsDuration) external onlyRole(ROLE_GOD) {
        _setRewardsDuration(_rewardsDuration);
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                  STATE MUTATING FUNCTIONS                  */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    function stake(uint256 amount) external {
        _stake(msg.sender, amount);
    }

    function withdraw(uint256 amount) external {
        _withdraw(msg.sender, amount);
    }

    function getReward(address recipient) external returns (uint256) {
        return _getReward(msg.sender, recipient);
    }
}
