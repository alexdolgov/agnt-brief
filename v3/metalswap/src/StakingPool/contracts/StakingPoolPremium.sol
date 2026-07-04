// "SPDX-License-Identifier: UNLICENSED"

pragma solidity ^0.8.7;

import './StakingPool.sol';
abstract contract StakingPoolPremium is StakingPool {
    /* ========== STATE VARIABLES ========== */

    uint16 public slotNumber;
    uint256 public forSlotAmount;
    uint16 public takenSlots;

    function finalizePoolCreation(
        uint256 _startStaking,
        uint256 periodInSec,
        uint256 amountOfRewardsTokensToSend,
        uint16 _slotNumber,
        uint256 _forSlotAmount
    )  public override   onlyGovernance nonReentrant {
        require(
            finalized == false,
            "Error: Staking Pool must be paused in order to finalize!"
        );
        require(
            amountOfRewardsTokensToSend > 0,
            "Error: The creator must send some reward tokens to the pool in order to create it"
        );
        require(
            stakingToken.transferFrom(
                msg.sender,
                address(this),
                amountOfRewardsTokensToSend
            ),
            "Error: Reward tokens trasnfer error, cannot create pool"
        );

        startStaking = _startStaking;

        endStaking = _startStaking + periodInSec;

        slotNumber = _slotNumber;
        forSlotAmount = _forSlotAmount;
        rewardTokensAmount = amountOfRewardsTokensToSend;

        paused = false;
        finalized = true;

        emit RewardAdded(amountOfRewardsTokensToSend);
    }

    function stake(uint256 userInput)
        public  override 
        nonReentrant
        checkPoolOpen
        checkStakingUnpaused
    {
        require(userInput > 0, "Error: Cannot stake 0");
        require(
            takenSlots + userInput <= slotNumber,
            "Error: slot are full"
        );

        takenSlots = takenSlots + uint16(userInput);
        uint256 amount = userInput * forSlotAmount;

        require(
            stakingToken.transferFrom(msg.sender, address(this), amount),
            "Error during token transfer"
        );

        tokensStakedPerUser[msg.sender] += amount;

        uint256 weightedAverage = calcWeightedAverage(amount);
        userWeightedAverage[msg.sender] += weightedAverage;

        poolWeightedAverage += weightedAverage;
        stakedTokensTotal += amount;

        emit Staked(msg.sender, amount);
    }

    /* ========== VIEWS ========== */


    function getTakenSlots() public view returns (uint16) {
        return takenSlots;
    }

    function getSlotInfo() public view returns (uint256 forSlotAmountInfo,uint16 slotNumberInfo) {
        return (forSlotAmount,slotNumber);
    }
}
