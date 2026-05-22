// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.20;

import {IAevoStaking} from "./interfaces/IAevoStaking.sol";
import {MerkleDistributor} from "./MerkleDistributor.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IERC20, SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

error EndTimeInPast();
error ClaimWindowFinished();
error NoWithdrawDuringClaim();
error NoStakingPermission();

contract MerkleDistributorWithStaking is MerkleDistributor, Ownable {
    using SafeERC20 for IERC20;

    uint256 public immutable endTime;
    IAevoStaking public immutable aevoStaking;

    constructor(address token_, bytes32 merkleRoot_, uint256 endTime_, address aevoStaking_, address beneficiary_) MerkleDistributor(token_, merkleRoot_) Ownable(beneficiary_) {
        if (endTime_ <= block.timestamp) revert EndTimeInPast();
        endTime = endTime_;
        aevoStaking = IAevoStaking(aevoStaking_);
        IERC20(token).safeIncreaseAllowance(aevoStaking_, type(uint256).max);
    }

    function claim(uint256 index, address account, uint256 amount, bool _stake, bytes32[] calldata merkleProof) external {
        if (block.timestamp > endTime) revert ClaimWindowFinished();
        if (_stake && msg.sender != account) revert NoStakingPermission();
        _claim(index, account, amount, merkleProof);
        if(_stake){
            aevoStaking.stakeFor(false, amount, account);
        }else{
            IERC20(token).safeTransfer(account, amount);
        }
    }

    function withdraw() external onlyOwner {
        if (block.timestamp < endTime) revert NoWithdrawDuringClaim();
        IERC20(token).safeTransfer(msg.sender, IERC20(token).balanceOf(address(this)));
    }
}