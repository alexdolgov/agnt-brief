// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.8;

import "src/libraries/Errors.sol";
import "src/interfaces/IWithdrawalRequest.sol";
import "openzeppelin-contracts-upgradeable/proxy/utils/Initializable.sol";

/**
 * @title Withdrawal request contract
 * @author NodeDAO
 * @notice Provides basic functions for withdrawal orders.
 * Used for asynchronous withdrawal requests in liquidity staking pools.
 */
abstract contract WithdrawalRequest is Initializable, IWithdrawalRequest {
    struct WithdrawalInfo {
        uint96 withdrawalHeight;
        uint96 withdrawalExchange;
        uint64 isClaim;
        uint128 withdrawalAmount;
        uint128 claimAmount;
    }

    uint256 public withdrawalDelayBlocks;
    // 10 days
    uint256 public constant MAX_WITHDRAWAL_DELAY_BLOCKS = 72000;

    mapping(address => WithdrawalInfo[]) internal withdrawalQueue;
    uint256 public totalWithdrawalAmount;

    function __WithdrawalRequest_init(uint256 _withdrawalDelayBlocks) internal onlyInitializing {
        withdrawalDelayBlocks = _withdrawalDelayBlocks;
    }

    /**
     * @notice Query all withdrawals of the recipient
     * @param _receiver fund recipient
     */
    function getUserWithdrawals(address _receiver) public view returns (WithdrawalInfo[] memory) {
        return withdrawalQueue[_receiver];
    }

    function _getWithdrawal(address _receiver, uint256 _requestId) internal view returns (WithdrawalInfo memory) {
        return withdrawalQueue[_receiver][_requestId];
    }

    /**
     * @notice Check if the withdrawal can be claimed
     * @param _receiver fund recipient
     * @param _requestId withdrawal request id
     */
    function canClaimWithdrawal(address _receiver, uint256 _requestId) public view returns (bool) {
        WithdrawalInfo[] memory _userWithdrawals = withdrawalQueue[_receiver];
        if (_requestId >= _userWithdrawals.length) {
            revert Errors.InvalidLength();
        }

        if (block.number < _userWithdrawals[_requestId].withdrawalHeight + withdrawalDelayBlocks) {
            return false;
        }

        return true;
    }

    /**
     * @notice Create withdrawal request
     * @param _receiver fund recipient
     * @param _withdrawalAmount withdrawal amount
     */
    function _requestWithdrawals(
        address _receiver,
        uint256 _withdrawalAmount,
        uint256 _withdrawalExchange,
        uint256 _claimAmount
    ) internal {
        uint256 _blockNumber = block.number;
        withdrawalQueue[_receiver].push(
            WithdrawalInfo({
                withdrawalHeight: uint96(_blockNumber),
                withdrawalExchange: uint96(_withdrawalExchange),
                withdrawalAmount: uint128(_withdrawalAmount),
                claimAmount: uint128(_claimAmount),
                isClaim: 0
            })
        );
        totalWithdrawalAmount += _withdrawalAmount;
        emit WithdrawalsRequest(_receiver, _withdrawalAmount, _blockNumber);
    }

    /**
     * @notice Claim withdrawal
     * @param _receiver fund recipient
     * @param _requestId withdrawal request id
     */
    function _claimWithdrawals(address _receiver, uint256 _requestId) internal {
        WithdrawalInfo memory _userWithdrawal = withdrawalQueue[_receiver][_requestId];
        if (_userWithdrawal.withdrawalAmount == 0 || _userWithdrawal.isClaim != 0) {
            revert Errors.InvalidRequestId();
        }

        withdrawalQueue[_receiver][_requestId] = WithdrawalInfo({
            withdrawalHeight: _userWithdrawal.withdrawalHeight,
            withdrawalExchange: _userWithdrawal.withdrawalExchange,
            withdrawalAmount: _userWithdrawal.withdrawalAmount,
            claimAmount: _userWithdrawal.claimAmount,
            isClaim: 1
        });

        totalWithdrawalAmount -= _userWithdrawal.withdrawalAmount;
        emit WithdrawalsClaimed(_receiver, _requestId, _userWithdrawal.claimAmount);
    }

    /**
     * @notice update withdarawal delay block number
     * @param _withdrawalDelayBlocks new delay block number
     */
    function _setWithdrawalDelayBlocks(uint256 _withdrawalDelayBlocks) internal {
        if (_withdrawalDelayBlocks > MAX_WITHDRAWAL_DELAY_BLOCKS) {
            revert Errors.DelayTooLarge();
        }

        emit WithdrawalDelayChanged(withdrawalDelayBlocks, _withdrawalDelayBlocks);
        withdrawalDelayBlocks = _withdrawalDelayBlocks;
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[50] private __gap;
}
