// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*

░██╗░░░░░░░██╗░█████╗░░█████╗░░░░░░░███████╗██╗
░██║░░██╗░░██║██╔══██╗██╔══██╗░░░░░░██╔════╝██║
░╚██╗████╗██╔╝██║░░██║██║░░██║█████╗█████╗░░██║
░░████╔═████║░██║░░██║██║░░██║╚════╝██╔══╝░░██║
░░╚██╔╝░╚██╔╝░╚█████╔╝╚█████╔╝░░░░░░██║░░░░░██║
░░░╚═╝░░░╚═╝░░░╚════╝░░╚════╝░░░░░░░╚═╝░░░░░╚═╝

* MIT License
* ===========
*
* Copyright (c) 2024 WOOFi
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in all
* copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.

*/

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

import {TransferHelper} from "@uniswap/v3-periphery/contracts/libraries/TransferHelper.sol";

import {IQuestTokenRewardManager} from "../interfaces/staking/IQuestTokenRewardManager.sol";

contract QuestTokenRewardManager is IQuestTokenRewardManager, Ownable, ReentrancyGuard {
    /* ----- Constants ----- */

    address public constant ETH_PLACEHOLDER = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

    /* ----- Variables ----- */

    // campaignId => isActive
    mapping(uint256 => bool) public isActiveCampaign;

    // campaignId => tokenAddress => userAddress => rewardAmount
    mapping(uint256 => mapping(address => mapping(address => uint256))) private userRewardAmounts;

    // campaignId => tokenAddress => userAddress => isClaimed
    mapping(uint256 => mapping(address => mapping(address => bool))) private isUserClaimed;

    receive() external payable {}

    /* ----- Constructor ----- */

    constructor(address _owner) Ownable(_owner) {}

    // --------------------- Business Functions --------------------- //

    function claim(uint256 _campaignId, address _token) external nonReentrant {
        _claim(_campaignId, _token, msg.sender);
    }

    function claimableInfo(
        uint256 _campaignId,
        address _token,
        address _user
    ) external view returns (bool, uint256) {
        uint256 userRewardAmount = userRewardAmounts[_campaignId][_token][_user];
        bool isClaimable = userRewardAmount > 0 && !isUserClaimed[_campaignId][_token][_user];

        return (isClaimable, isClaimable ? userRewardAmount : 0);
    }

    function claimedInfo(
        uint256 _campaignId,
        address _token,
        address _user
    ) external view returns (bool, uint256) {
        uint256 userRewardAmount = userRewardAmounts[_campaignId][_token][_user];
        bool isClaimed = isUserClaimed[_campaignId][_token][_user];

        return (isClaimed, isClaimed ? userRewardAmount : 0);
    }

    // --------------------- Internal Functions --------------------- //

    function _claim(
        uint256 _campaignId,
        address _token,
        address _user
    ) internal {
        require(isActiveCampaign[_campaignId], "QuestTokenRewardManager: !_campaignId");
        uint256 userRewardAmount = userRewardAmounts[_campaignId][_token][_user];
        if (userRewardAmount > 0 && !isUserClaimed[_campaignId][_token][_user]) {
            isUserClaimed[_campaignId][_token][_user] = true;
            if (_token == ETH_PLACEHOLDER) {
                TransferHelper.safeTransferETH(_user, userRewardAmount);
            } else {
                TransferHelper.safeTransfer(_token, _user, userRewardAmount);
            }
        }
    }

    function _addUser(
        uint256 _campaignId,
        address _token,
        address _user,
        uint256 _rewardAmount
    ) internal {
        userRewardAmounts[_campaignId][_token][_user] = _rewardAmount;
    }

    function _removeUser(
        uint256 _campaignId,
        address _token,
        address _user
    ) internal returns (bool removed) {
        uint256 userRewardAmount = userRewardAmounts[_campaignId][_token][_user];
        if (userRewardAmount == 0) {
            return false;
        }
        userRewardAmounts[_campaignId][_token][_user] = 0;
        if (isUserClaimed[_campaignId][_token][_user]) {
            isUserClaimed[_campaignId][_token][_user] = false;
        }
        return true;
    }

    // --------------------- Admin Functions --------------------- //

    function claim(
        uint256 _campaignId,
        address _token,
        address _user
    ) external onlyOwner {
        _claim(_campaignId, _token, _user);
    }

    function addUsers(
        uint256 _campaignId,
        address _token,
        address[] memory _users,
        uint256[] memory _rewardAmounts
    ) external onlyOwner {
        uint256 len = _users.length;
        for (uint256 i = 0; i < len; ++i) {
            _addUser(_campaignId, _token, _users[i], _rewardAmounts[i]);
        }
    }

    function removeUsers(
        uint256 _campaignId,
        address _token,
        address[] memory _users
    ) external onlyOwner {
        uint256 len = _users.length;
        for (uint256 i = 0; i < len; ++i) {
            _removeUser(_campaignId, _token, _users[i]);
        }
    }

    function addCampaign(uint256 _campaignId) external onlyOwner {
        isActiveCampaign[_campaignId] = true;
    }

    function removeCampaign(uint256 _campaignId) external onlyOwner {
        isActiveCampaign[_campaignId] = false;
    }

    function inCaseTokenGotStuck(address _stuckToken) external onlyOwner {
        if (_stuckToken == ETH_PLACEHOLDER) {
            TransferHelper.safeTransferETH(msg.sender, address(this).balance);
        } else {
            uint256 amount = IERC20(_stuckToken).balanceOf(address(this));
            TransferHelper.safeTransfer(_stuckToken, msg.sender, amount);
        }
    }
}
