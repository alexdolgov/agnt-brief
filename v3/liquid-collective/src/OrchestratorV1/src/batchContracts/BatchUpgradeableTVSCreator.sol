// SPDX-License-Identifier: Proprietary
pragma solidity 0.8.29;

import { TVSBeaconProxy } from "tvs/TVSUpgradeable/proxies/TVSBeaconProxy.sol";

/// @title BatchUpgradeableTVSCreator
/// @author Alluvial Finance Inc.
/// @notice Contract for creating multiple upgradeable validator sets in a batch
contract BatchUpgradeableTVSCreator {
    /// @notice Error emitted when an invalid address is provided
    error ZeroAddressNotAllowed();

    /// @notice Event emitted when an upgradeable validator set is created
    /// @param tvs The address of the created validator set
    /// @param beacon The address of the beacon
    event UpgradeableTVSCreated(address indexed tvs, address indexed beacon);

    /// @notice Internal function to create multiple validator sets
    /// @param _count The number of validator sets to create
    /// @param _owner The owner of the validator sets
    /// @param _beneficiary The beneficiary of the validator sets
    /// @param _beacon The beacon address
    /// @return An array of addresses of the created validator sets
    function _createValidatorSets(
        uint256 _count,
        address _owner,
        address _beneficiary,
        address _beacon
    )
        internal
        returns (address[] memory)
    {
        if (_owner == address(0) || _beneficiary == address(0) || _beacon == address(0)) {
            revert ZeroAddressNotAllowed();
        }
        address[] memory newValidatorSets = new address[](_count);
        address newValidatorSet;
        for (uint256 i = 0; i < _count; i++) {
            // Implement the logic to create new validator sets
            newValidatorSet = address(
                new TVSBeaconProxy(
                    _beacon,
                    abi.encodeWithSignature("initialize(address,address,address)", _beneficiary, _owner, _beacon)
                )
            );
            newValidatorSets[i] = newValidatorSet;
            emit UpgradeableTVSCreated(newValidatorSet, _beacon);
        }
        return newValidatorSets;
    }
}
