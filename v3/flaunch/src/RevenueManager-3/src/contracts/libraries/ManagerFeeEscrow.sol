// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {PoolId} from '@uniswap/v4-core/src/types/PoolId.sol';

import {IFeeEscrow} from '@flaunch-interfaces/IFeeEscrow.sol';
import {ITreasuryManager} from '@flaunch-interfaces/ITreasuryManager.sol';


library ManagerFeeEscrow {

    function isFeeEscrow(address _address) internal view returns (bool) {
        address[] memory feeEscrows = ITreasuryManager(address(this)).feeEscrowRegistry().feeEscrows();
        for (uint i; i < feeEscrows.length; ++i) {
            if (_address == feeEscrows[i]) {
                return true;
            }
        }
        return false;
    }

    function feeEscrowBalance(address _manager) internal view returns (uint balance_) {
        address[] memory feeEscrows = ITreasuryManager(address(this)).feeEscrowRegistry().feeEscrows();
        for (uint i; i < feeEscrows.length; ++i) {
            balance_ += IFeeEscrow(feeEscrows[i]).balances(_manager);
        }
    }

    function totalPoolFees(PoolId _poolId) internal view returns (uint balance_) {
        address[] memory feeEscrows = ITreasuryManager(address(this)).feeEscrowRegistry().feeEscrows();
        for (uint i; i < feeEscrows.length; ++i) {
            balance_ += IFeeEscrow(feeEscrows[i]).totalFeesAllocated(_poolId);
        }
    }

}