// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { UUPSUpgradeable } from "@openzeppelin-contracts-upgradeable-5.1.0/proxy/utils/UUPSUpgradeable.sol";
import { AccessControlUpgradeable } from "@openzeppelin-contracts-upgradeable-5.1.0/access/AccessControlUpgradeable.sol";

import { StakingRewards } from "../base/StakingRewards.sol";
import { IStakingRewards } from "../base/IStakingRewards.sol";
import { ILBGTStakingRewards } from "./ILBGTStakingRewards.sol";
import { Constants } from "../Constants.sol";

/// @title LBGTStakingRewards
/// @author BeraPaw (Adapted from Berachain Team)
/// @notice A contract for staking LP and receiving LBGT for staking LP tokens.
contract LBGTStakingRewards is ILBGTStakingRewards, AccessControlUpgradeable, UUPSUpgradeable, StakingRewards {
    using SafeERC20 for IERC20;

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                        CONSTANTS                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    bytes32 public constant ROLE_GOD = Constants.ROLE_GOD;
    // bytes32 public constant ROLE_ADMIN = Constants.ROLE_ADMIN;

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                           STATE                            */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    address public lpStakingRewards;

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                         MODIFIERS                          */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    modifier onlyLpStakingRewards() {
        require(msg.sender == lpStakingRewards, OnlyLpStakingRewards());
        _;
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                         INITIALIZER                        */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _lpStakingRewards, address _owner) external initializer {
        __StakingRewards_init(_lpStakingRewards, Constants.LBGT, 1 days);

        _setRoleAdmin(ROLE_GOD, ROLE_GOD);
        // _setRoleAdmin(ROLE_ADMIN, ROLE_GOD);

        _grantRole(ROLE_GOD, _owner);
        lpStakingRewards = _lpStakingRewards;
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                       ADMIN FUNCTIONS                      */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    function _authorizeUpgrade(address newImplementation) internal override onlyRole(ROLE_GOD) { }

    function setRewardsDuration(uint256 _rewardsDuration) external onlyRole(ROLE_GOD) {
        _setRewardsDuration(_rewardsDuration);
    }

    function setLpStakingRewards(address _lpStakingRewards) external onlyRole(ROLE_GOD) {
        lpStakingRewards = _lpStakingRewards;
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                  STATE MUTATING FUNCTIONS                  */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    function stake(address account, uint256 amount) external onlyLpStakingRewards {
        _stake(account, amount);
    }

    function unstake(address account, uint256 amount) external onlyLpStakingRewards {
        _withdraw(account, amount);
    }

    function depositReward(uint256 reward) external onlyLpStakingRewards {
        SafeERC20.safeTransferFrom(rewardToken, _msgSender(), address(this), reward);
        _notifyRewardAmount(reward);
    }

    function getRewardFor(address account, address recipient) external onlyLpStakingRewards returns (uint256) {
        return _getReward(account, recipient);
    }

    function getReward(address recipient) external returns (uint256) {
        return _getReward(msg.sender, recipient);
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                          OVERRIDES                         */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    // The contract only tracks rewards so no token transfer
    function _safeTransferStakeToken(address to, uint256 amount) internal override { }

    // The contract only tracks rewards so no token transfer
    function _safeTransferFromStakeToken(address from, uint256 amount) internal override { }
}
