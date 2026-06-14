// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "../interfaces/IDecubateMasterChef.sol";
import "../interfaces/IDCBVault.sol";
import "../interfaces/ILinearPool.sol";

contract VoteContract is Ownable {
    IDecubateMasterChef public compoundStakingContract;
    IDCBVault public compounderContract;
    ILinearPool public linearStakingContract;
    address CGPTAddress;
    uint256 voteRate;

    //steps 
    uint256 bronze;
    uint256 silver;
    uint256 gold;
    uint256 diamond;

    using SafeMath for uint256;

    constructor(
        address _compoundStakingContract,
        address _compounderContract,
        address _linearStakingContract,
        uint256 _voteRate
    ) 
    {
        compoundStakingContract = IDecubateMasterChef(_compoundStakingContract);
        compounderContract = IDCBVault(_compounderContract);
        linearStakingContract = ILinearPool(_linearStakingContract);
        voteRate = _voteRate;
        CGPTAddress = 0x9840652DC04fb9db2C43853633f0F62BE6f00f98;

        bronze=20000;
        silver=50000;
        gold=100000;
        diamond=200000;
    }
    function setVoteRate(uint256 newRate) external onlyOwner {
        voteRate = newRate;
    }

    function getVotingPower(address addr) public view returns (uint256 amount) {
        uint256 tempAmt;

        //V1 Staking
        uint256 len_1 = compoundStakingContract.poolLength();

        for (uint256 i = 0; i < len_1; i++) {
            (, uint256 localPeriodDays, , , , , address token) = compoundStakingContract.poolInfo(i);

            if (token == CGPTAddress) {
                (, , tempAmt, ) = compounderContract.users(i, addr);
                uint256 pw; //Power according to the localPeriodDayss
                if(localPeriodDays==15) pw=10;
                else if(localPeriodDays==45) pw=10;
                else if(localPeriodDays==180) pw=15;
                else if(localPeriodDays==365) pw=20;
                amount = amount.add(tempAmt.mul(pw));
            }
        }

        //V2 Staking
        uint256 len_2 = linearStakingContract.linearPoolLength();
        
        for (uint256 i = 0; i< len_2; i++) {
            tempAmt = linearStakingContract.linearBalanceOf(i, addr);
            uint256 lockDuration = linearStakingContract.linearPoolInfo(i).lockDuration;
            lockDuration = lockDuration.div(86400);
            uint256 pw;
            if(lockDuration==45) pw=10;
            else if(lockDuration==90) pw=13;
            else if(lockDuration==180) pw=15;
            else if(lockDuration==365) pw=20;
            amount = amount.add(tempAmt.mul(pw));
        }

        return
            amount.mul(voteRate).div(
                10 ** 5
            );
    }

    function getUserTier(address addr) public view returns (string memory tier) {
        uint256 points=getVotingPower(addr).div(1e18);
        if(points>=diamond) tier="Diamond";
        else if(points>=gold) tier="Gold";
        else if(points>=silver) tier="Silver";
        else if(points>=bronze) tier="Bronze";
        else tier="None";
    }

    function changeTierPoints(uint256 bronze_, uint256 silver_, uint256 gold_, uint256 diamond_) public onlyOwner {
        bronze=bronze_;
        silver=silver_;
        gold=gold_;
        diamond=diamond_;
    }
}
