/*
    Copyright (C) 2020 InsurAce.io

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see http://www.gnu.org/licenses/
*/

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.7.3;

import "@openzeppelin/contracts-upgradeable/math/SafeMathUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/SafeERC20Upgradeable.sol";

import {ISecurityMatrix} from "../secmatrix/ISecurityMatrix.sol";
import {IStakingV2Controller} from "../stakingV2/IStakingV2Controller.sol";
import {ICover} from "../cover/ICover.sol";
import {IClaim} from "../claim/IClaim.sol";
import {IReferralProgram} from "../referral/IReferralProgram.sol";
import {Math} from "../common/Math.sol";
import {IRewardController} from "./IRewardController.sol";

contract RewardController is IRewardController, OwnableUpgradeable, PausableUpgradeable, ReentrancyGuardUpgradeable {
    using SafeERC20Upgradeable for IERC20Upgradeable;
    using SafeMathUpgradeable for uint256;
    using AddressUpgradeable for address;

    // the security matrix address
    address public smx;
    // the INSUR token address
    address public insur;
    // the cover address
    address public cover;
    // the claim address
    address public claim;
    // the staking V2 controller address
    address public stakingController;
    // vesting duration
    uint256 public vestingDuration;
    mapping(address => uint256) public vestingVestingAmountPerAccount;
    mapping(address => uint256) public vestingStartBlockPerAccount;
    mapping(address => uint256) public vestingEndBlockPerAccount;
    mapping(address => uint256) public vestingWithdrawableAmountPerAccount;
    mapping(address => uint256) public vestingWithdrawedAmountPerAccount;

    // the referral program address
    address public referralProgram;

    function initialize() public initializer {
        __Ownable_init();
        __Pausable_init();
        __ReentrancyGuard_init();
    }

    function setup(
        address _securityMatrixAddress,
        address _coverAddress,
        address _claimAddress,
        address _referralProgram,
        address _stakingControllerAddress,
        address _insur
    ) external onlyOwner {
        require(_securityMatrixAddress != address(0), "S:1");
        require(_coverAddress != address(0), "S:2");
        require(_claimAddress != address(0), "S:3");
        require(_referralProgram != address(0), "S:4");
        require(_stakingControllerAddress != address(0), "S:5");
        require(_insur != address(0), "S:6");
        smx = _securityMatrixAddress;
        cover = _coverAddress;
        claim = _claimAddress;
        referralProgram = _referralProgram;
        stakingController = _stakingControllerAddress;
        insur = _insur;
        vestingDuration = 1;
    }

    function setupVesting(uint256 _vestingDuration) external onlyOwner {
        vestingDuration = _vestingDuration;
    }

    function pauseAll() external onlyOwner whenNotPaused {
        _pause();
    }

    function unPauseAll() external onlyOwner whenPaused {
        _unpause();
    }

    modifier allowedCaller() {
        require((ISecurityMatrix(smx).isAllowdCaller(address(this), _msgSender())) || (_msgSender() == owner()), "allowedCaller");
        _;
    }

    function _reClacVesting(address _account, uint256 _amount) private {
        require(_amount != 0, "_reClacVesting:1");
        uint256 currentBlock = block.number;
        if (currentBlock >= vestingEndBlockPerAccount[_account]) {
            vestingWithdrawableAmountPerAccount[_account] = vestingWithdrawableAmountPerAccount[_account].add(vestingVestingAmountPerAccount[_account]);
            vestingVestingAmountPerAccount[_account] = _amount;
            vestingStartBlockPerAccount[_account] = currentBlock;
            vestingEndBlockPerAccount[_account] = vestingDuration.add(currentBlock);
        } else if (currentBlock < vestingEndBlockPerAccount[_account] && currentBlock > vestingStartBlockPerAccount[_account]) {
            uint256 delta = currentBlock.sub(vestingStartBlockPerAccount[_account]);
            uint256 duration = vestingEndBlockPerAccount[_account].sub(vestingStartBlockPerAccount[_account]);
            uint256 tempWithdraw = vestingVestingAmountPerAccount[_account].mul(delta).div(duration);
            uint256 remaining = vestingVestingAmountPerAccount[_account].sub(tempWithdraw);
            vestingVestingAmountPerAccount[_account] = remaining.add(_amount);
            vestingStartBlockPerAccount[_account] = currentBlock;
            vestingWithdrawableAmountPerAccount[_account] = tempWithdraw.add(vestingWithdrawableAmountPerAccount[_account]);
            vestingEndBlockPerAccount[_account] = vestingDuration.add(currentBlock);
        } else {
            vestingVestingAmountPerAccount[_account] = _amount.add(vestingVestingAmountPerAccount[_account]);
        }
    }

    function unlockReward(
        address[] memory _tokenList,
        bool _bBuyCoverUnlockedAmt,
        bool _bClaimUnlockedAmt,
        bool _bReferralUnlockedAmt
    ) external whenNotPaused nonReentrant {
        uint256 buyCoverUnlockedAmt = 0;
        if (_bBuyCoverUnlockedAmt) {
            buyCoverUnlockedAmt = ICover(cover).unlockRewardByController(_msgSender(), address(this));
        }
        uint256 claimUnlockedAmt = 0;
        if (_bClaimUnlockedAmt) {
            claimUnlockedAmt = IClaim(claim).unlockRewardByController(_msgSender(), address(this));
        }
        uint256 referralUnlockedAmt = 0;
        if (_bReferralUnlockedAmt) {
            referralUnlockedAmt = IReferralProgram(referralProgram).unlockRewardByController(_msgSender(), address(this));
        }
        uint256 stakingUnlockedAmt = 0;
        if (_tokenList.length != 0) {
            stakingUnlockedAmt = IStakingV2Controller(stakingController).unlockRewardsFromPoolsByController(_msgSender(), address(this), _tokenList);
        }
        uint256 totalRewards = buyCoverUnlockedAmt.add(claimUnlockedAmt).add(referralUnlockedAmt).add(stakingUnlockedAmt);
        require(totalRewards != 0, "unlockReward:1");
        _reClacVesting(_msgSender(), totalRewards);
    }

    function getRewardInfo() public view returns (uint256, uint256) {
        address beneficiary = _msgSender();
        uint256 currentBlock = block.number;
        uint256 withdrawableReward = 0;
        uint256 vestingReward = 0;
        if (currentBlock >= vestingEndBlockPerAccount[beneficiary]) {
            withdrawableReward = vestingVestingAmountPerAccount[beneficiary];
            vestingReward = 0;
        } else if (currentBlock < vestingEndBlockPerAccount[beneficiary] && currentBlock > vestingStartBlockPerAccount[beneficiary]) {
            uint256 delta = currentBlock.sub(vestingStartBlockPerAccount[beneficiary]);
            uint256 duration = vestingEndBlockPerAccount[beneficiary].sub(vestingStartBlockPerAccount[beneficiary]);
            uint256 tempWithdraw = vestingVestingAmountPerAccount[beneficiary].mul(delta).div(duration);
            uint256 remaining = vestingVestingAmountPerAccount[beneficiary].sub(tempWithdraw);
            withdrawableReward = tempWithdraw;
            vestingReward = remaining;
        } else {
            withdrawableReward = 0;
            vestingReward = vestingVestingAmountPerAccount[beneficiary];
        }
        return (withdrawableReward.add(vestingWithdrawableAmountPerAccount[beneficiary]), vestingReward);
    }

    function withdrawReward(uint256 _amount) external whenNotPaused nonReentrant {
        require(_amount > 0, "withdrawR:1");
        address beneficiary = _msgSender();
        uint256 currentBlock = block.number;
        if (currentBlock >= vestingEndBlockPerAccount[beneficiary]) {
            vestingWithdrawableAmountPerAccount[beneficiary] = vestingWithdrawableAmountPerAccount[beneficiary].add(vestingVestingAmountPerAccount[beneficiary]);
            vestingVestingAmountPerAccount[beneficiary] = 0;
            vestingStartBlockPerAccount[beneficiary] = 0;
            vestingEndBlockPerAccount[beneficiary] = 0;
        } else if (currentBlock < vestingEndBlockPerAccount[beneficiary] && currentBlock > vestingStartBlockPerAccount[beneficiary]) {
            uint256 delta = currentBlock.sub(vestingStartBlockPerAccount[beneficiary]);
            uint256 duration = vestingEndBlockPerAccount[beneficiary].sub(vestingStartBlockPerAccount[beneficiary]);
            uint256 tempWithdraw = vestingVestingAmountPerAccount[beneficiary].mul(delta).div(duration);
            uint256 remaining = vestingVestingAmountPerAccount[beneficiary].sub(tempWithdraw);
            vestingVestingAmountPerAccount[beneficiary] = remaining;
            vestingStartBlockPerAccount[beneficiary] = currentBlock;
            vestingWithdrawableAmountPerAccount[beneficiary] = tempWithdraw.add(vestingWithdrawableAmountPerAccount[beneficiary]);
        }
        require(_amount <= vestingWithdrawableAmountPerAccount[beneficiary], "withdrawR:2");
        vestingWithdrawableAmountPerAccount[beneficiary] = vestingWithdrawableAmountPerAccount[beneficiary].sub(_amount);
        vestingWithdrawedAmountPerAccount[beneficiary] = vestingWithdrawedAmountPerAccount[beneficiary].add(_amount);
        IERC20Upgradeable(insur).safeTransfer(beneficiary, _amount);
    }
}
