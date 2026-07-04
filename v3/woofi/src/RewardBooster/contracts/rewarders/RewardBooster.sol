// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

/*

░██╗░░░░░░░██╗░█████╗░░█████╗░░░░░░░███████╗██╗
░██║░░██╗░░██║██╔══██╗██╔══██╗░░░░░░██╔════╝██║
░╚██╗████╗██╔╝██║░░██║██║░░██║█████╗█████╗░░██║
░░████╔═████║░██║░░██║██║░░██║╚════╝██╔══╝░░██║
░░╚██╔╝░╚██╔╝░╚█████╔╝╚█████╔╝░░░░░░██║░░░░░██║
░░░╚═╝░░░╚═╝░░░╚════╝░░╚════╝░░░░░░░╚═╝░░░░░╚═╝

*
* MIT License
* ===========
*
* Copyright (c) 2020 WooTrade
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
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import {IRewardBooster} from "../interfaces/IRewardBooster.sol";

import {IRewarder} from "../interfaces/IRewarder.sol";
import {INFTBoosterV2} from "../interfaces/INFTBoosterV2.sol";
import {BaseAdminOperation} from "../BaseAdminOperation.sol";
import {TransferHelper} from "../util/TransferHelper.sol";
import {IWooStakingCompounder} from "../interfaces/IWooStakingCompounder.sol";

contract RewardBooster is IRewardBooster, BaseAdminOperation {
    // BR = Boost Ratio,
    // In unit 10000th: 100: 1%, 5000: 50%
    uint32 public volumeBR;
    uint32 public tvlBR;
    uint32 public autoCompoundBR;
    uint32 public mpWooBR1;
    uint32 public mpWooBR2;
    uint32 public mpWooBR3;

    mapping(address => uint256) public boostRatio;

    struct UserBoostRatioDetail {
        uint32 volRatio;
        uint32 tvlRatio;
        uint32 autoCompoundRatio;
        uint32 nftRatio;
        uint32 mpWooRatio;
        uint32 userTier;
        uint8[3] stakeTokenIds;
    }
    mapping(address => UserBoostRatioDetail) public userBoostRatioDetail;

    uint256 public immutable base; // Default: 10000th, 100: 1%, 5000: 50%

    IRewarder public mpRewarder;

    IWooStakingCompounder public compounder;

    INFTBoosterV2 public nftBooster;

    constructor(address _mpRewarder, address _compounder, address _nftBooster) {
        base = 10000;
        volumeBR = 13000; // 130%
        tvlBR = 13000; // 130%
        autoCompoundBR = 15000; // 150%
        mpWooBR1 = 3000; // 30%
        mpWooBR2 = 5000; // 50%
        mpWooBR3 = 0; // 0%
        mpRewarder = IRewarder(_mpRewarder);
        compounder = IWooStakingCompounder(_compounder);
        nftBooster = INFTBoosterV2(_nftBooster);
    }

    // --------------------- Business Functions --------------------- //

    function getUserStakeTokenIds(address _user) external view returns (uint8[3] memory) {
        return userBoostRatioDetail[_user].stakeTokenIds;
    }

    // --------------------- Admin Functions --------------------- //

    function setUserRatios(
        address[] memory users,
        bool[] memory volFlags,
        bool[] memory tvlFlags,
        uint32[] memory mpWooRatios
    ) external onlyAdmin {
        uint256 ratio;
        UserBoostRatioDetail memory ratioDetail;
        for (uint256 i = 0; i < users.length; ++i) {
            address _user = users[i];
            mpRewarder.updateRewardForUser(_user); // settle the reward for prevous boost ratios
            (ratio, ratioDetail) = _calcRatio(_user, volFlags[i], tvlFlags[i], mpWooRatios[i]);
            userBoostRatioDetail[_user] = ratioDetail;
            boostRatio[_user] = ratio;
            mpRewarder.clearRewardToDebt(_user);
        }
    }

    function migrateUserRatios(address[] memory users, uint256[] memory ratios) external onlyAdmin {
        for (uint256 i = 0; i < users.length; ++i) {
            address _user = users[i];
            boostRatio[_user] = ratios[i];
        }
    }

    function migrateUserRatiosWithFlags(
        address[] memory users,
        bool[] memory volFlags,
        bool[] memory tvlFlags,
        uint32[] memory mpWooRatios
    ) external onlyAdmin {
        uint256 ratio;
        UserBoostRatioDetail memory ratioDetail;
        for (uint256 i = 0; i < users.length; ++i) {
            address _user = users[i];
            (ratio, ratioDetail) = _calcRatio(_user, volFlags[i], tvlFlags[i], mpWooRatios[i]);
            userBoostRatioDetail[_user] = ratioDetail;
            boostRatio[_user] = ratio;
        }
    }

    function _calcRatio(
        address _user,
        bool _volFlag,
        bool _tvlFlag,
        uint32 _mpWooRatio
    ) internal view returns (uint256 ratio, UserBoostRatioDetail memory ratioDetail) {
        uint256 nftRatio;
        uint8[3] memory stakeTokenIds;

        (nftRatio, stakeTokenIds) = nftBooster.boostRatio(_user);

        ratioDetail = UserBoostRatioDetail({
            volRatio: _volFlag ? volumeBR : uint32(base),
            tvlRatio: _tvlFlag ? tvlBR : uint32(base),
            autoCompoundRatio: compounder.contains(_user) ? autoCompoundBR : uint32(base),
            nftRatio: uint32(nftRatio),
            mpWooRatio: _mpWooRatio,
            userTier: uint32(nftBooster.getUserTier(_user)),
            stakeTokenIds: stakeTokenIds
        });

        ratio =
            (uint256(ratioDetail.volRatio) *
                uint256(ratioDetail.tvlRatio) *
                uint256(ratioDetail.nftRatio) *
                uint256(ratioDetail.autoCompoundRatio)) /
            base /
            base /
            nftBooster.base();

        // Adjust final boost ratio based on 1.5x ~ 1.0x thresholds
        if (_volFlag || _tvlFlag || compounder.contains(_user)) {
            // at least one challenge done
            if (ratioDetail.mpWooRatio >= 15000) {
                ratio = (ratio * mpWooBR1) / base; // ratio > 1.5, then adjust to ratio * 30%
            } else if (ratioDetail.mpWooRatio >= 10000) {
                ratio = (ratio * mpWooBR2) / base; // ratio in [1.0, 1.5), then adjust to ratio * 50%
            } else {
                // no adjustment to ratio
            }
        } else {
            if (ratioDetail.mpWooRatio >= 5000) {
                ratio = (ratio * mpWooBR3) / base; // ration > 0.5, then adjust to ratio * BR3
            } else {
                // no adjustment to ratio
            }
        }
    }

    function setMPRewarder(address _rewarder) external onlyAdmin {
        mpRewarder = IRewarder(_rewarder);
        emit SetMPRewarder(_rewarder);
    }

    function setAutoCompounder(address _compounder) external onlyAdmin {
        compounder = IWooStakingCompounder(_compounder);
        emit SetAutoCompounder(_compounder);
    }

    function setNFTBooster(address _nftBooster) external onlyAdmin {
        nftBooster = INFTBoosterV2(_nftBooster);
        emit SetNFTBooster(_nftBooster);
    }

    function setVolumeBR(uint32 _br) external onlyAdmin {
        volumeBR = _br;
        emit SetVolumeBR(_br);
    }

    function setTvlBR(uint32 _br) external onlyAdmin {
        tvlBR = _br;
        emit SetTvlBR(_br);
    }

    function setMPWooBR(uint32 _br1, uint32 _br2, uint32 _br3) external onlyAdmin {
        mpWooBR1 = _br1;
        mpWooBR2 = _br2;
        mpWooBR3 = _br3;
    }

    function setAutoCompoundBR(uint32 _br) external onlyAdmin {
        autoCompoundBR = _br;
        emit SetAutoCompoundBR(_br);
    }
}
