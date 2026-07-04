// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {AbraStaking} from "./AbraStaking.sol";
import {ud} from "prb-math/UD60x18.sol";

library AbraStakingLibrary {

    error AbraStaking_ZeroAddress();
    error AbraStaking_ZeroAmount();
    error AbraStaking_AmountExceeded(uint amount);
    error AbraStaking_PointsExceeded(uint points);
    error AbraStaking_AccessDenied(address expected, address actual);
    error AbraStaking_IncorrectEnd(uint end, uint epoch);
    error AbraStaking_AlreadyUnstaked(uint lockupId);
    error AbraStaking_Expired(uint lockupId);
    error AbraStaking_LockupNotEnded(uint256 currentTimestamp, uint256 end);
    error AbraStaking_InvalidDuration();
    error AbraStaking_InvalidSplit();
    error AbraStaking_InvalidMerge();

    uint256 constant YEAR_BASE = 12e17;

    function split(
        mapping(address owner => AbraStaking.Lockup[]) storage _lockups,
        address staker,
        uint256 lockupIndex,
        uint256[] calldata parts
    ) external {
        if (parts.length < 2) revert AbraStaking_InvalidSplit();

        uint256 partsSum = 0;
        for (uint i = 0; i < parts.length; i++) {
            if (parts[i] == 0) revert AbraStaking_InvalidSplit();
            partsSum += parts[i];
        }

        AbraStaking.Lockup memory lockup = _lockups[staker][lockupIndex];
        if (lockup.amount == 0) revert AbraStaking_ZeroAmount();
        emit AbraStaking.Unstake(staker, lockup.id, lockupIndex, lockup.amount, lockup.end, lockup.points);

        lockup.end = normalizeEnd(lockup.end);
        uint256 newPointsSum = 0;
        uint256 epoch = AbraStaking(address(this)).epoch();
        for (uint i = 1; i < parts.length; i++) {
            uint128 newAmount = uint128(parts[i] * lockup.amount / partsSum);
            if (newAmount == 0) revert AbraStaking_ZeroAmount();

            lockup.amount -= newAmount;
            uint256 points = calcPoints(newAmount, lockup.end, epoch);
            newPointsSum += points;

            AbraStaking(address(this)).createLockupAndEmitStake(newAmount, lockup.end, points, staker);
        }

        // check and calculate new points
        if (lockup.amount == 0) revert AbraStaking_ZeroAmount();
        uint256 newPoints = calcPoints(lockup.amount, lockup.end, epoch);
        newPointsSum += newPoints;

        // update lockup
        uint256 oldPoints = lockup.points;

        lockup.points = newPoints;

        updateLockupAndEmitStake(_lockups, staker, lockupIndex, lockup, newPointsSum, oldPoints);
    }

    function merge(
        mapping(address owner => AbraStaking.Lockup[]) storage _lockups,
        mapping(uint256 lockupId => AbraStaking.LockupReference) storage _lockupRefs,
        address staker,
        uint256[] calldata lockupIndexes
    ) external {
        if (lockupIndexes.length < 2) revert AbraStaking_InvalidMerge();

        uint128 totalAmount = 0;
        uint256 oldPointsTotal = 0;
        uint32 end = 0;
        bool[] memory usedIndexes = new bool[]( _lockups[staker].length);
        AbraStaking.Lockup memory lockup;
        uint lockupIndex;
        for (uint i = lockupIndexes.length; i > 0; i--) {
            lockupIndex = lockupIndexes[i - 1];
            if (usedIndexes[lockupIndex] == true) {
                revert AbraStaking_InvalidMerge();
            }
            usedIndexes[lockupIndex] = true;

            lockup = _lockups[staker][lockupIndex];
            if (lockup.amount == 0) revert AbraStaking_ZeroAmount();
            totalAmount += lockup.amount;
            oldPointsTotal += lockup.points;
            end = end > lockup.end ? end : lockup.end;

            // first element will be updated
            if (lockupIndex != 0) {
                delete _lockups[staker][lockupIndex]; // Keeps empty in array, so indexes are stable
                delete _lockupRefs[lockup.id];
            }

            emit AbraStaking.Unstake(staker, lockup.id, lockupIndex, lockup.amount, lockup.end, lockup.points);
        }

        // check and calculate new points
        if (totalAmount > type(uint128).max) revert AbraStaking_AmountExceeded(totalAmount);
        end = normalizeEnd(end);
        uint256 newPoints = calcPoints(totalAmount, end, AbraStaking(address(this)).epoch());
        if (newPoints < oldPointsTotal) revert AbraStaking_InvalidMerge();

        // update lockup
        lockup.amount = totalAmount;
        lockup.end = end;
        lockup.points = newPoints;
        updateLockupAndEmitStake(_lockups, staker, lockupIndex, lockup, newPoints, oldPointsTotal);
    }

    function updateLockupAndEmitStake(
        mapping(address owner => AbraStaking.Lockup[]) storage _lockups,
        address staker,
        uint256 lockupIndex,
        AbraStaking.Lockup memory lockup,
        uint256 newPointsTotal,
        uint256 oldPointsTotal
    ) public  {
        _lockups[staker][lockupIndex] = lockup;

        if (newPointsTotal < oldPointsTotal) {
            AbraStaking(address(this)).burn(staker, oldPointsTotal - newPointsTotal);
        } else if ((newPointsTotal > oldPointsTotal)) {
            AbraStaking(address(this)).mint(staker, newPointsTotal - oldPointsTotal);
        }

        emit AbraStaking.Stake(staker, lockup.id, lockupIndex, lockup.amount, lockup.end, lockup.points);
    }

    function calcPoints(uint amount, uint end, uint epoch) public view returns (uint) {
        uint256 endYearpoc = ((end - epoch) * 1e18) / 365 days;
        uint256 multiplier = ud(YEAR_BASE).pow(ud(endYearpoc)).unwrap();
        return (amount * multiplier) / 1e18;
    }

    function normalizeEnd(uint32 end) public view returns (uint32)  {
        uint256 epoch = AbraStaking(address(this)).epoch();
        uint256 start = block.timestamp > epoch ? block.timestamp : epoch;
        uint32 minEnd = uint32(start + AbraStaking(address(this)).minStakeDuration());
        uint32 maxEnd = uint32(start + AbraStaking(address(this)).maxStakeDuration());
        return end < minEnd ? minEnd : (end > maxEnd ? maxEnd : end);  // clamp
    }

}