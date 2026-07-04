// SPDX-License-Identifier: Proprietary
pragma solidity 0.8.29;

import { ITVSUpgradeable } from "lib/tvs/src/TVSUpgradeable/interfaces/ITVSUpgradeable.sol";

/// @title Batch Set TVS Contract
/// @author Alluvial Finance Inc.
/// @notice This contract allows for the batch setting of beneficiaries and beacon for multiple validator sets
contract BatchSetTVS {
    /// @notice External function to set the beneficiary for multiple validator sets
    /// @dev This function allows for the batch setting of beneficiaries for a list of validator sets
    /// @param validatorSets The list of validator sets to set the beneficiary for
    /// @param beneficiary The address to set as the beneficiary
    function setTVSBeneficiary(address[] calldata validatorSets, address beneficiary) external {
        _setTVSBeneficiary(validatorSets, beneficiary);
    }

    /// @notice External function to set the beacon for multiple validator sets
    /// @param validatorSets The list of validator sets to set the beacon for
    /// @param beacon The address of the new beacon
    function setTVSBeacon(address[] calldata validatorSets, address beacon) external {
        _setTVSBeacon(validatorSets, beacon);
    }

    /// @notice Internal function to set beneficiary for multiple validator sets
    /// @param _validatorSets The list of validator sets to set the beneficiary for
    /// @param _beneficiary The address to set as the beneficiary
    function _setTVSBeneficiary(address[] calldata _validatorSets, address _beneficiary) internal virtual {
        for (uint256 i = 0; i < _validatorSets.length; i++) {
            // Implement the logic to set the beneficiary for the validator set
            ITVSUpgradeable(payable(_validatorSets[i])).setBeneficiary(_beneficiary);
        }
    }

    /// @notice Internal function to set the beacon for multiple validator sets
    /// @param _validatorSets The list of validator sets to set the beacon for
    /// @param _beacon The address of the new beacon
    function _setTVSBeacon(address[] calldata _validatorSets, address _beacon) internal virtual {
        for (uint256 i = 0; i < _validatorSets.length; i++) {
            ITVSUpgradeable(payable(_validatorSets[i])).setBeacon(_beacon);
        }
    }
}
