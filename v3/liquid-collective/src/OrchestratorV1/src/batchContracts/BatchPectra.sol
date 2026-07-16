// SPDX-License-Identifier: Proprietary
pragma solidity 0.8.29;

import { ITVS } from "tvs/interfaces/ITVS.sol";

/// @title BatchPectra
/// @author Alluvial Finance Inc.
/// @notice Contract for processing withdrawal requests for multiple validator sets in a batch
contract BatchPectra {
    /// @notice Error emitted when two arrays have different lengths
    error ArrayLengthMismatch();

    /// @notice Emitted when the fees sent are less than the total fee paid for withdrawal requests
    /// @param _feesReceived The amount of fees received
    /// @param _totalFeePaid The total fee paid
    error InsufficientFeesReceived(uint256 _feesReceived, uint256 _totalFeePaid);

    /// @notice Emitted when a withdrawal request is made
    /// @param _validatorWithdrawSelections Array of validator withdraw selections
    /// @param _maxFee Max fee the user is willing to pay per withdrawal request
    event WithdrawalRequested(ValidatorWithdrawSelection[] _validatorWithdrawSelections, uint256 _maxFee);

    /// @notice Selection of validators to withdraw from for a given validator set
    struct ValidatorWithdrawSelection {
        address _validatorSetAddress; // Address of the validator set
        bytes[] _publicKeys; // The list of public keys to withdraw from
        uint64[] _amount; // The amount in gwei to withdraw from a validator
    }

    /// @notice Withdraws from multiple validator sets in a single transaction
    /// @param validatorWithdrawSelections Array of withdrawal selections containing validator set addresses and
    /// withdrawal details
    /// @param _maxFeePerRequest Max fee the user is willing to pay per withdrawal request
    /// @dev This function enables batch withdrawals from different validator sets
    function withdrawFromValidatorSets(
        ValidatorWithdrawSelection[] calldata validatorWithdrawSelections,
        uint256 _maxFeePerRequest
    )
        external
        payable
    {
        _withdrawFromValidatorSets(validatorWithdrawSelections, msg.sender, _maxFeePerRequest);
    }

    /// @notice Internal function to handle validator withdrawal logic
    /// @param _validatorWithdrawSelections Array of withdrawal selections to process
    /// @param _excessFeeRecipient Address to receive excess fees
    /// @param _maxFeePerRequest Max fee the user is willing to pay per withdrawal request
    function _withdrawFromValidatorSets(
        ValidatorWithdrawSelection[] calldata _validatorWithdrawSelections,
        address _excessFeeRecipient,
        uint256 _maxFeePerRequest
    )
        internal
        virtual
    {
        uint256 feesReceived = msg.value;
        uint256 totalFeePaid;
        uint256 totalFeePerRequest;
        for (uint256 i = 0; i < _validatorWithdrawSelections.length; i++) {
            if (_validatorWithdrawSelections[i]._publicKeys.length != _validatorWithdrawSelections[i]._amount.length) {
                revert ArrayLengthMismatch();
            }
            totalFeePerRequest = _maxFeePerRequest * _validatorWithdrawSelections[i]._publicKeys.length;
            // Since we want to ensure that there is enough gas to process all the withdrawal requests,
            // we multiply the max fee per request by the number of withdrawal requests.
            ITVS(payable(_validatorWithdrawSelections[i]._validatorSetAddress)).withdraw{ value: totalFeePerRequest }(
                _validatorWithdrawSelections[i]._publicKeys,
                _validatorWithdrawSelections[i]._amount,
                _maxFeePerRequest,
                _excessFeeRecipient
            );
            totalFeePaid += totalFeePerRequest;
        }
        if (totalFeePaid > feesReceived) {
            revert InsufficientFeesReceived(feesReceived, totalFeePaid);
        }
        emit WithdrawalRequested(_validatorWithdrawSelections, _maxFeePerRequest);
    }
}
