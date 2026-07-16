// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {PoolId} from '@uniswap/v4-core/src/types/PoolId.sol';

import {IFeeEscrow} from '@flaunch-interfaces/IFeeEscrow.sol';
import {ITreasuryManager} from '@flaunch-interfaces/ITreasuryManager.sol';


library ManagerFeeEscrow {

    /**
     * Checks if the specified address is a valid fee escrow.
     *
     * @param _address The address to check
     *
     * @return bool True if the address is a valid fee escrow, false otherwise
     */
    function isFeeEscrow(address _address) internal view returns (bool) {
        address[] memory feeEscrows = ITreasuryManager(address(this)).feeEscrowRegistry().feeEscrows();
        for (uint i; i < feeEscrows.length; ++i) {
            if (_address == feeEscrows[i]) {
                return true;
            }
        }
        return false;
    }

    /**
     * Returns the balance of the specified manager from all valid fee escrows.
     *
     * @param _manager The manager to check the balance of
     *
     * @return balance_ The balance of the specified manager from all valid fee escrows
     */
    function feeEscrowBalance(address _manager) internal view returns (uint balance_) {
        address[] memory feeEscrows = ITreasuryManager(address(this)).feeEscrowRegistry().feeEscrows();
        for (uint i; i < feeEscrows.length; ++i) {
            balance_ += IFeeEscrow(feeEscrows[i]).balances(_manager);
        }
    }

    /**
     * Returns the total fees allocated to the specified pool from all valid fee escrows.
     *
     * @param _poolId The pool to check the total fees of
     *
     * @return balance_ The total fees allocated to the specified pool from all valid fee escrows
     */
    function totalPoolFees(PoolId _poolId) internal view returns (uint balance_) {
        address[] memory feeEscrows = ITreasuryManager(address(this)).feeEscrowRegistry().feeEscrows();
        for (uint i; i < feeEscrows.length; ++i) {
            balance_ += IFeeEscrow(feeEscrows[i]).totalFeesAllocated(_poolId);
        }
    }

}