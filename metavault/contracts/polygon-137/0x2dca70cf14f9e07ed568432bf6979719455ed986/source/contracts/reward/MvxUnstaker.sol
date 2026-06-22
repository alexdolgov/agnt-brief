// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import "../libraries/math/SafeMath.sol";
import "../libraries/token/IERC20.sol";
import "../libraries/token/SafeERC20.sol";
import "../libraries/token/TransferHelper.sol";
import "../libraries/utils/ReentrancyGuard.sol";
import "./interfaces/IRewardTracker.sol";
import "../access/Governable.sol";


contract MvxUnstaker is ReentrancyGuard, Governable {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    address public mvx;
    address public esMvx;
    address public bnMvx;

    address public stakedMvxTracker;
    address public bonusMvxTracker;
    address public feeMvxTracker;

    event UnstakeMvx(address account, address token, uint256 amount, uint256 reductionAmount);
    event UnstakeAll(address account, uint256 mvxAmount, uint256 esMvxAmount, uint256 bnMvxAmount);



    constructor(
        address _mvx,
        address _esMvx,
        address _bnMvx,
        address _stakedMvxTracker,
        address _bonusMvxTracker,
        address _feeMvxTracker
    ) public{
        mvx = _mvx;
        esMvx = _esMvx;
        bnMvx = _bnMvx;
        stakedMvxTracker = _stakedMvxTracker;
        bonusMvxTracker = _bonusMvxTracker;
        feeMvxTracker = _feeMvxTracker;
    }


    // to help users who accidentally send their tokens to this contract
    function withdrawToken(
        address _token,
        address _account,
        uint256 _amount
    ) external onlyGov {
        IERC20(_token).safeTransfer(_account, _amount);
    }

    function unstakeMvx(uint256 _amount) external nonReentrant {
        _unstakeMvx(msg.sender, mvx, _amount);
    }

    function unstakeEsMvx(uint256 _amount) external nonReentrant {
        _unstakeMvx(msg.sender, esMvx, _amount);
    }

 
    function _unstakeMvx(
        address _account,
        address _token,
        uint256 _amount
    ) private {
        require(_amount > 0, "Unstaker: invalid _amount");

        uint256 balance = IRewardTracker(stakedMvxTracker).stakedAmounts(_account);

        IRewardTracker(feeMvxTracker).unstakeForAccount(_account, bonusMvxTracker, _amount, _account);
        IRewardTracker(bonusMvxTracker).unstakeForAccount(_account, stakedMvxTracker, _amount, _account);
        IRewardTracker(stakedMvxTracker).unstakeForAccount(_account, _token, _amount, _account);

        uint256 stakedBnMvx = IRewardTracker(feeMvxTracker).depositBalances(_account, bnMvx);
        uint256 reductionAmount;
        if (stakedBnMvx > 0) {
            reductionAmount = stakedBnMvx.mul(_amount).div(balance);
            IRewardTracker(feeMvxTracker).unstakeForAccount(_account, bnMvx, reductionAmount, _account);
        }

        emit UnstakeMvx(_account, _token, _amount, reductionAmount);
    }


    function unstakeAll () external nonReentrant {
        address account = msg.sender;
        require(IRewardTracker(feeMvxTracker).stakedAmounts(account) > 0,"Not enough staked amounts");

        uint256 stakedMvxAmount = IRewardTracker(stakedMvxTracker).depositBalances(account,mvx);
        uint256 stakedEsMvxAmount = IRewardTracker(stakedMvxTracker).depositBalances(account,esMvx);
        uint256 totalStakedMvxAmount = stakedMvxAmount + stakedEsMvxAmount;

        if(totalStakedMvxAmount > 0) {
            IRewardTracker(feeMvxTracker).unstakeForAccount(account, bonusMvxTracker, totalStakedMvxAmount, account);
            IRewardTracker(bonusMvxTracker).unstakeForAccount(account, stakedMvxTracker, totalStakedMvxAmount, account);

            if(stakedMvxAmount > 0)
                IRewardTracker(stakedMvxTracker).unstakeForAccount(account, mvx, stakedMvxAmount, account);
            if(stakedEsMvxAmount > 0)    
                IRewardTracker(stakedMvxTracker).unstakeForAccount(account, esMvx, stakedEsMvxAmount, account);
        }

        uint256 stakedBnMvxAmount = IRewardTracker(feeMvxTracker).depositBalances(account, bnMvx);
        if (stakedBnMvxAmount > 0) {
            IRewardTracker(feeMvxTracker).unstakeForAccount(account, bnMvx, stakedBnMvxAmount, account);
        }

        emit UnstakeAll(account, stakedMvxAmount, stakedEsMvxAmount, stakedBnMvxAmount);
    }



}
