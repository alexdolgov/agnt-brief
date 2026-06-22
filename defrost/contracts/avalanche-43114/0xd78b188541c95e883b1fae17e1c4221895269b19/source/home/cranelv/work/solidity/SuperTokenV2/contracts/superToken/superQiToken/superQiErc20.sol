// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity ^0.7.0;
import "../superQiTokenImpl/superQiErc20Impl.sol";
import "../baseSuperToken.sol";
// lendingAaveErc20 is a combination of super aave ERC20 token and lending pool.
//
// This contract will benefit from mining income and loan interest income.
contract superQiErc20 is baseSuperToken,superQiErc20Impl {
    constructor(address multiSignature,address origin0,address origin1,address _stakeToken,
    address payable _swapHelper,address payable _feePool)
        baseSuperToken(multiSignature,origin0,origin1,_swapHelper,_feePool) superQiErc20Impl(_stakeToken) {
        setTokenInfo("Super ","S");
    }
    function setReward(uint256 index,uint8 _reward,bool _bClosed,address _rewardToken,uint256 _sellLimit)  external onlyOrigin {
        setBenqiRewardToken(index,_reward,_bClosed,_rewardToken,_sellLimit);
    }
}