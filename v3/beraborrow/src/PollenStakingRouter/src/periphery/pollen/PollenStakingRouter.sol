// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.17;

import {ISPollen} from "src/interfaces/dao/ISPollen.sol";
import {IVotingEscrowPollen} from "src/dao/ve/VotingEscrow/VotingEscrowPollen.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IUserVeLockStakingRewards} from "src/interfaces/dao/IUserVeLockStakingRewards.sol";

/**
 * @title 
 * @notice router contract to heveLp users deposit and withdraw from pollen -> spollen -> vePOLLEN
 * and from vePOLLEN -> spollen -> pollen
 */
contract PollenStakingRouter {
    using SafeERC20 for IERC20;

    IERC20 public immutable pollen;
    ISPollen public immutable spollen;
    IERC20 public immutable lp;
    IVotingEscrowPollen public immutable veSPollen;
    IVotingEscrowPollen public immutable veLp;

    constructor(address _spollen, address _vePollen, address _pollen, address _veLp, address _lp) {
        spollen = ISPollen(_spollen);
        veSPollen = IVotingEscrowPollen(_vePollen);
        veLp = IVotingEscrowPollen(_veLp);
        pollen = IERC20(_pollen);
        lp = IERC20(_lp);
    }

    function deposit(uint128 amount, uint128 lockDuration, address targetToken) external {
        _validateTargetToken(targetToken);

        address user = msg.sender;
        
        if (targetToken == address(veLp)) {
            IERC20(lp).safeTransferFrom(user, address(this), amount);

            IERC20(lp).approve(address(veLp), amount);
        } else {
            pollen.safeTransferFrom(user, address(this), amount);

            pollen.approve(address(spollen), amount);
            spollen.depositFor(address(this), amount);

            spollen.approve(address(veSPollen), amount); 
        }

        IVotingEscrowPollen(targetToken).increaseLockPosition(
            amount, 
            lockDuration, 
            user
        );
    }

    /**
    * @notice Function to unstake and withdraw from vePollen
    * @param minAmountOut minimum amount to receive (use 0 for full withdrawal)
    * @param targetToken the staking token to withdraw from (sPOLLEN or veLp token)
    */
    function withdraw(uint minAmountOut, address targetToken) external {
       _validateTargetToken(targetToken);

        address user = msg.sender;

        IVotingEscrowPollen votingEscrow = IVotingEscrowPollen(targetToken);
        address userVeLockStakingRewards = votingEscrow.userToStakingRewards(user);

        if (userVeLockStakingRewards != address(0)) {
            IUserVeLockStakingRewards(userVeLockStakingRewards).claimForVeLock();
        }

        uint128 amount = votingEscrow.withdraw(user);

        if (amount < minAmountOut) revert("PollenRouter: Insufficient amount out");

        if (votingEscrow == veLp) {
            IERC20(lp).safeTransfer(user, amount);
        } else {
            spollen.withdrawTo(user, amount);
        }
    }

    function previewUserPenalty(address user, address targetToken) external view returns (uint128) {
        _validateTargetToken(targetToken);
            
        return IVotingEscrowPollen(targetToken).getPenaltyInBp(user);
    }

    /**
     * @notice Internal function to validate staking token address
     * @param targetToken The token address to validate
     * @dev Reverts if the staking token is not valid
     */
    function _validateTargetToken(address targetToken) internal view {
        require(
            targetToken == address(veLp) || 
            targetToken == address(veSPollen), 
            "PollenRouter: Invalid token"
        );
    }

}