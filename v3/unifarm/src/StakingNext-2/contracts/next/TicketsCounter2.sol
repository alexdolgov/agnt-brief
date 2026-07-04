// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {ITicketsCounter, IUniswapV2Pair, ILockableStaking} from './Interfaces.sol';
import {LpStaking} from './LpStaking.sol';
import {StakingNext} from './StakingNext.sol';
import {Ownable} from '@openzeppelin/contracts/access/Ownable.sol';

contract TicketsCounter2 is Ownable, ITicketsCounter {
    LpStaking public lpStaking;
    StakingNext public _staking;
    uint256 public STAKED_PER_TICKET = 100 ether;

    bool zlwIsToken0;
    IUniswapV2Pair public lp;

    constructor(
        LpStaking lpStaking_,
        StakingNext staking_,
        address ZLWToken
    ) {
        lpStaking = lpStaking_;
        _staking = staking_;

        lp = IUniswapV2Pair(address(lpStaking.stakingToken()));
        if (lp.token0() == ZLWToken) zlwIsToken0 = true;
        else require(lp.token1() == ZLWToken, 'WRONG ZLW/LP');
    }

    function lpToZlw(uint256 lpAmount) public view returns (uint256) {
        (uint112 lpReserve0, uint112 lpReserve1, ) = lp.getReserves();
        uint256 zlwReserve = zlwIsToken0 ? lpReserve0 : lpReserve1;
        return (lpAmount * zlwReserve * 2) / lp.totalSupply();
    }

    function countTickets(address who, uint256 drawDate)
        external
        view
        override
        returns (
            uint256 tickets,
            ILockableStaking[] memory lockableStakings,
            uint256[] memory lockableAmounts
        )
    {
        uint256 totalStaked = seeStaked(who, drawDate);

        (uint256 lpStaked, uint256 zlwEquivalent) = seeStaked_LP(who);
        if (zlwEquivalent < STAKED_PER_TICKET) {
            lockableStakings = new ILockableStaking[](0);
            lockableAmounts = new uint256[](0);
        } else {
            lockableStakings = new ILockableStaking[](1);
            lockableStakings[0] = lpStaking;
            lockableAmounts = new uint256[](1);
            lockableAmounts[0] = lpStaked;
        }
        totalStaked += zlwEquivalent;
        tickets = totalStaked / STAKED_PER_TICKET;
    }

    function seeStaked(address who, uint256 drawDate) public view returns (uint256 total) {
        (StakingNext.Stake[] memory stakes, ) = _staking.stakesOf(who);
        for (uint256 i = 0; i < stakes.length; i++) {
            if (stakes[i].finish >= drawDate) {
                total += stakes[i].amount;
            }
        }
    }

    function seeStaked_LP(address user) public view returns (uint256 lpStaked, uint256 zlwEquivalent) {
        lpStaked = lpStaking.balanceOf(user);
        zlwEquivalent = lpToZlw(lpStaked);
    }

    function setStakedPerTicket(uint256 amount) external onlyOwner {
        STAKED_PER_TICKET = amount;
    }
}
