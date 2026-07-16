// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.17;

import {IVeToken} from "src/interfaces/dao/ve/IVeToken.sol";

import {MiniHelpers} from "src/libraries/ve/MiniHelpers.sol";
import {WeekMath} from "src/libraries/ve/WeekMath.sol";
import "src/libraries/ve/VeBalanceLib.sol";

/**
 * @title VotingEscrowTokenBase
 * @author Beraborrow
 * @notice Base contract for voting escrow tokens.
 *         This contract is based out of Pendle's implementation of veToken:
 *         https://github.com/pendle-finance/pendle-core-v2-public/blob/main/contracts/LiquidityMining/VotingEscrow/VotingEscrowTokenBase.sol
 *         The cross-chain messaging logic has been removed. The max lock period has been halved.
 */
abstract contract VotingEscrowTokenBase is IVeToken {
    using VeBalanceLib for VeBalance;
    using VeBalanceLib for LockedPosition;

    uint128 public constant WEEK = 1 weeks;
    uint128 public constant MAX_LOCK_TIME = 39 weeks;
    uint128 public constant MIN_LOCK_TIME = 2 weeks;

    VeBalance internal _totalSupply;

    mapping(address => LockedPosition) public positionData;

    constructor() {}

    function balanceOf(address user) public view virtual returns (uint128) {
        return positionData[user].convertToVeBalance().getCurrentValue();
    }

    function totalSupplyStored() public view virtual returns (uint128) {
        return _totalSupply.getCurrentValue();
    }

    function totalSupplyCurrent() public virtual returns (uint128);

    function _isPositionExpired(address user) internal view returns (bool) {
        return MiniHelpers.isCurrentlyExpired(positionData[user].expiry);
    }

    function totalSupplyAndBalanceCurrent(
        address user
    ) external returns (uint128, uint128) {
        return (totalSupplyCurrent(), balanceOf(user));
    }
}
