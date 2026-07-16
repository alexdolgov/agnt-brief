// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.8;

interface IBasePool {
    function receiveRewards(uint256) external payable;

    event EthStake(address _staker, uint256 _stakeAmount, uint256 _mintAmount);
    event EthUnstake(address _sender, uint256 _unstakeAmount, uint256 _ethAmount);
    event Received(address _sender, uint256 _amount);
    event UnstakeAllowedUpdated(bool _oldUnstakeAllowed, bool _unstakeAllowed);
}
