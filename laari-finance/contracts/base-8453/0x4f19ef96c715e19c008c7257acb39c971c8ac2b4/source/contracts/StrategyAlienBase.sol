// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./BaseStrategy.sol";
import "./interface/IAlienBase.sol";

contract StrategyAlienBase is BaseStrategy {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    function initialize(
        address[] memory _addresses,
        uint256 _pid,
        address[] memory _earnedToToken0Path,
        address[] memory _earnedToToken1Path
    ) public virtual initializer {
        BaseStrategy.initialize(
            _addresses, _pid,
            false, true,
            _earnedToToken0Path, _earnedToToken1Path);
    }

    function _vaultDeposit(uint256 _amount)
        internal
        virtual override
        returns (uint256)
    {
        uint256 wantAmt = IERC20(wantAddress).balanceOf(address(this));
        if (wantAmt > 0) {
            IERC20(wantAddress).safeApprove(farmContractAddress, wantAmt);
        }
          IAlienBase(farmContractAddress).deposit(pid, wantAmt);
        return _amount;
    }

    function _vaultWithdraw(uint256 _wantAmt)
        internal
        virtual override
    {
        IAlienBase(farmContractAddress).withdraw(pid, _wantAmt);
    }


    function _vaultHarvest()
        internal
        virtual override
    {
        _vaultWithdraw(0);
    }

    function _vaultUserInfo()
        public
        virtual override
        view
        returns (uint256 shares)

    {
        (shares, , ,) = IAlienBase(farmContractAddress).userInfo(pid, address(this));
    }

    function _vaultPending()
        public
        virtual override
        view
        returns (uint256 pending, uint256 pending1)
    {

        (, , , uint256[] memory pendingAll)= IAlienBase(farmContractAddress).pendingTokens(pid, address(this));
        pending = pendingAll[0];
        pending1 = 0;
        return(pending, pending1);
               
    }

    function _vaultEmergencyWithdraw()
        internal
        virtual override
    {
        IAlienBase(farmContractAddress).emergencyWithdraw(pid);
    }

}