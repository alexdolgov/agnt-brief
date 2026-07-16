pragma solidity 0.7.6;
pragma abicoder v2;

// SPDX-License-Identifier: GPL-3.0-or-later
// Deployed with donations via Gitcoin GR9




import './abstracts/TwapLPTokenRewarder.sol';

contract TwapLPTokenRewarderTokenTransfer is TwapLPTokenRewarder {
    using SafeMath for uint256;
    using SafeMath for int256;
    using TransferHelper for address;

    constructor(address _token) TwapLPTokenRewarder(_token) {}

    function sendReward(uint256 amount, address to) internal override {
        token.safeTransfer(to, amount);
    }
}
