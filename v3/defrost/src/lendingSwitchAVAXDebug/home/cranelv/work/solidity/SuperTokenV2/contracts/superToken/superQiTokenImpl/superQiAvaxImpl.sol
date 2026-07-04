// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity >=0.7.0 <0.8.0;

import "./superQiTokenImpl.sol";
import "../../modules/ReentrancyGuard.sol";
// This contract handles swapping to and from superQiAvax.
abstract contract superQiAvaxImpl is superQiTokenImpl,ReentrancyGuard {
    using SafeERC20 for IERC20;
    using SafeMath for uint256;
    
    constructor(address _lendingToken) superQiTokenImpl(_lendingToken){
        asset = IERC20(address(WAVAX));
    }
    function onDeposit(address account,uint256 _amount,uint64 _fee)internal virtual override returns(uint256){
        asset.safeTransferFrom(account, address(this), _amount);
        return qiSupply(_fee);
    }

    function onWithdraw(address account,uint256 _amount)internal virtual override returns(uint256){
        uint256 success = ICEther(address(qiToken)).redeemUnderlying(_amount);
        require(success == 0, "benqi redeem error");
        WAVAX.deposit{value : _amount}();
        asset.safeTransfer(account, _amount);
        return _amount;
    }
    function qiWithdraw()internal{
        uint256 success = ICErc20(address(qiToken)).redeem(qiToken.balanceOf(address(this)));
        require(success == 0, "benqi redeem error");
        WAVAX.deposit{value:address(this).balance}();
    }
    function qiSupply(uint256 _fee) internal returns (uint256){
        uint256 balance = WAVAX.balanceOf(address(this));
        WAVAX.withdraw(balance);
        if(balance > 0){
            uint256 fee = balance.mul(_fee)/calDecimals;
            if(fee > 0){
                _safeTransferETH(feePool,fee);
            }
            balance = balance.sub(fee);
            ICEther(address(qiToken)).mint{value:balance}();
            return balance;
        }
        return 0;
    }
    function onCompound() internal virtual override{
        claimRewards();
        uint256 balance = asset.balanceOf(address(this));
        if(balance > 0){ 
            //WAVAX.withdraw(balance);
            qiSupply(feeRate[compoundFeeID]);
        }
    }
}