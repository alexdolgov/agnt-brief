// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

import {MultiFeeDistribution} from "./MultiFeeDistribution.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract ReadRecoverTransferRemoveReward is Ownable {
	using SafeERC20 for IERC20;

	address public immutable revManagement;
	address public immutable mfd;
	address public immutable admin;

	constructor(address revManagement_, address mfd_, address admin_) {
		require(revManagement_ != address(0), "zeroAddress");
		require(mfd_ != address(0), "zeroAddress");
		require(admin_ != address(0), "zeroAddress");

		revManagement = revManagement_;
		mfd = mfd_;
		admin = admin_;

		_transferOwnership(admin);
	}

	function readRecoverTransferAndRemoveReward(IERC20[] memory rewardTokens) public onlyOwner {
		uint256 len = rewardTokens.length;
		for (uint256 i = 0; i < len; i++) {
			readRecoverTransferAndRemoveReward(rewardTokens[i]);
		}
	}

	function readRecoverTransferAndRemoveReward(IERC20 rewardToken) public onlyOwner {
		MultiFeeDistribution mfdContract = MultiFeeDistribution(mfd);
		require(mfdContract.owner() == address(this), "needToSetAsOwnerTemp");
		if (!mfdContract.minters(address(this))) {
			address[] memory thisMinter = new address[](1);
			thisMinter[0] = address(this);
			mfdContract.setMinters(thisMinter);
		}
		uint256 balance = rewardToken.balanceOf(mfd);
		require(balance != 0, "NoRewardsInMFD");
		mfdContract.recoverERC20(address(rewardToken), balance);
		rewardToken.safeTransfer(revManagement, balance);
		mfdContract.removeReward(address(rewardToken));
		uint256 newbalance = rewardToken.balanceOf(mfd);
		require(newbalance == 0, "failedToCleanReward");
	}

	function allDone() public onlyOwner {
		Ownable(mfd).transferOwnership(admin);
		require(Ownable(mfd).owner() == admin, "failedToTransferToAdmin");
	}
}
