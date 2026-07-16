// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {ITicketsCounter, IUniswapV2Pair, ILockableStaking} from './Interfaces.sol';
import {LpStaking} from './LpStaking.sol';
import {Staking} from '../StakingB.sol';
import {Staking_OLD} from '../StakingB_OLD.sol';
import {Ownable} from '@openzeppelin/contracts/access/Ownable.sol';

contract TicketsCounter is Ownable, ITicketsCounter {
    LpStaking public lpStaking;
    Staking public staking;
    Staking_OLD public stakingOld;
    uint256 public STAKED_PER_TICKET = 100 ether;

    bool zlwIsToken0;
    IUniswapV2Pair public lp;

    constructor(
        LpStaking lpStaking_,
        Staking staking_,
        Staking_OLD stakingOld_,
        address ZLWToken
    ) {
        lpStaking = lpStaking_;
        staking = staking_;
        stakingOld = stakingOld_;

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
        try this.seeStaked_OLD(who, drawDate) returns (uint256 stakedOld) {
            totalStaked += stakedOld;
        } catch {}

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
        (Staking.Stake[] memory stakes, ) = staking.myStakes(who);
        for (uint256 i = 0; i < stakes.length; i++) {
            if (stakes[i].finalTimestamp >= drawDate) {
                total += stakes[i].amount;
            }
        }
    }

    function seeStaked_OLD(address who, uint256 drawDate) public view returns (uint256 total) {
        (Staking_OLD.Stake[] memory stakes, ) = stakingOld.myStakes(who);
        uint8[3] memory rates_OLD = [106, 121, 140];
        uint24[3] memory periods_OLD = [30 days, 90 days, 150 days];
        for (uint256 i = 0; i < stakes.length; i++) {
            Staking_OLD.Stake memory stake = stakes[i];
            if (stake.timestamp + periods_OLD[stake.class] >= drawDate) {
                total += ((stake.finalAmount * 100) / rates_OLD[stake.class]);
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
