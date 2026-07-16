// SPDX-License-Identifier: Proprietary
pragma solidity 0.8.29;

import { ITVS } from "lib/tvs/src/interfaces/ITVS.sol";

/// @title Batch TVS Transfer Contract
/// @author Alluvial Finance Inc.
/// @notice Contract for processing transfer of TVSs to a given address in a batch
contract BatchTVSTransfer {
    /// @notice Emitted when a validator set is transferred
    /// @param tvs The TVS address
    /// @param newOwner The new owner of the TVS
    event TVSTransferred(address indexed tvs, address indexed newOwner);

    /// @notice Event that is emitted when a TVS is transferred and its validators are requested to exit
    /// @param tvs The address of the TVS whose validators are requested to exit
    event TVSExitRequested(address indexed tvs);

    /// @notice Transfer validator sets to a given address
    /// @dev This function provides a one-step transfer of validator sets to a given address
    /// @param validatorSets The list of validator sets to transfer
    /// @param newBeneficiary The address to be set as beneficiary
    /// @param newOwner The address to transfer to
    function transferTVSs(
        address[] calldata validatorSets,
        address newBeneficiary,
        address newOwner,
        bool requestValidatorExits
    )
        external
        virtual
    {
        _transferTVSs(validatorSets, newBeneficiary, newOwner, false, requestValidatorExits);
    }

    /// @notice Internal function to transfer validator sets to a given address
    /// @param _validatorSets The list of validator sets to transfer
    /// @param _newBeneficiary The address to be set as beneficiary
    /// @param _newOwner The address to transfer to
    /// @param _sweep Whether to sweep the validator sets
    /// @param _requestValidatorExits Whether to request the validator sets to be exited
    function _transferTVSs(
        address[] calldata _validatorSets,
        address _newBeneficiary,
        address _newOwner,
        bool _sweep,
        bool _requestValidatorExits
    )
        internal
    {
        uint256 length = _validatorSets.length;
        for (uint256 i = 0; i < length; i++) {
            if (_sweep) {
                ITVS(payable(_validatorSets[i])).sweep(address(0x0), 0);
            }
            if (_requestValidatorExits) {
                emit TVSExitRequested(_validatorSets[i]);
            }
            // Implement the logic to transfer validator sets to _newOwner
            ITVS(payable(_validatorSets[i])).transfer(_newBeneficiary, _newOwner);
            emit TVSTransferred(_validatorSets[i], _newOwner);
        }
    }
}
