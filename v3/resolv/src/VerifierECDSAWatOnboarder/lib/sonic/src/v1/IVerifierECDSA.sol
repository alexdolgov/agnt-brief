// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {IVerifier} from "../IVerifier.sol";

interface IVerifierECDSA is IVerifier {
    //--------------------------------------------------------------------------
    // Errors

    /// @notice Thrown if any validator message stale.
    error StaleMessage();

    /// @notice Thrown if any validator message from the future.
    error FutureMessage();

    /// @notice Thrown if at least two validator messages from the same
    ///         validator.
    error DoubleSigningAttempted();

    /// @notice Thrown if any validator message signed by non-validator address.
    error NotAValidator();

    /// @notice Thrown if validator messages not in ascending order based on
    ///         their value.
    error MessagesNotSorted();

    /// @notice Thrown if any validator message signed by the zero address.
    error SignerIsZeroAddress();

    /// @notice Thrown if wat message's config invalid.
    error ConfigInvalid();

    /// @notice Thrown if wat message's bar is zero.
    error ZeroBar();

    /// @notice Thrown if wat message's wat not supported.
    error WatNotSupported();

    //--------------------------------------------------------------------------
    // Events

    /// @notice Emitted when a wat's config updated.
    /// @param caller The caller's address.
    /// @param wat The wat identifier.
    /// @param oldBar The wat's old bar configuration.
    /// @param oldBloom The wat's old bloom configuration.
    /// @param newBar The wat's new bar configuration.
    /// @param newBloom The wat's new bloom configuration.
    event ConfigUpdated(
        address indexed caller,
        bytes32 indexed wat,
        uint8 oldBar,
        uint oldBloom,
        uint8 newBar,
        uint newBloom
    );

    /// @notice Emitted when validator lifted.
    /// @param caller The caller's address.
    /// @param validator The validator's address.
    event ValidatorLifted(address indexed caller, address indexed validator);

    /// @notice Emitted when validator dropped.
    /// @param caller The caller's address.
    /// @param validator The validator's address.
    event ValidatorDropped(address indexed caller, address indexed validator);

    /// @notice Emitted when staleness threshold updated.
    /// @param caller The caller's address.
    /// @param oldStalenessThreshold The old staleness threshold.
    /// @param newStalenessThreshold The new staleness threshold.
    event StalenessThresholdUpdated(
        address indexed caller,
        uint16 oldStalenessThreshold,
        uint16 newStalenessThreshold
    );

    /// @notice Emitted when grace period updated.
    /// @param caller The caller's address.
    /// @param oldGracePeriod The old grace period.
    /// @param newGracePeriod The new grace period.
    event GracePeriodUpdated(
        address indexed caller, uint16 oldGracePeriod, uint16 newGracePeriod
    );

    //--------------------------------------------------------------------------
    // Public View Functions

    /// @notice Returns whether wat `wat` is supported.
    ///
    /// @dev Note that a wat is supported if the config update to unsupport the
    ///      wat is still in the grace period.
    ///
    /// @dev Reverts if:
    ///      - `wat` is zero
    ///
    /// @param wat The wat to check support for.
    /// @return supported Whether wat `wat` is supported.
    function wats(bytes32 wat) external view returns (bool supported);

    /// @notice Returns wat `wat`'s current config.
    ///
    /// @dev A wat's config is composed of its bar security parameter and set of
    ///      lifted validators encoded as bloom.
    ///
    /// @dev Reverts if:
    ///      - `wat` is zero
    ///      - `wat` not supported
    ///
    /// @param wat The wat to return its config.
    /// @return bar The wat's bar security parameter.
    /// @return bloom The wat's set of lifted validators encoded as bloom.
    function config(bytes32 wat) external view returns (uint bar, uint bloom);

    /// @notice Returns the global set of Chronicle Protocol validators lifted
    ///         for low-latency oracles.
    ///
    /// @dev Note that every wat's validator set is a subset of the global
    ///      validator set.
    ///
    /// @return validators_ The global set of Chronicle Protocol validators
    ///                     lifted for low-latency oracles.
    function validators()
        external
        view
        returns (address[] memory validators_);

    /// @notice Returns whether validator `validator_` is part of Chronicle
    ///         Protocol's global set of validators lifted for low-latency
    ///         oracles.
    ///
    /// @param validator The validator to check.
    /// @return lifted Whether validator `validator` is lifted for the global
    ///                set of Chronicle Protocol's low-latency oracles.
    function validators(address validator)
        external
        view
        returns (bool lifted);

    /// @notice Returns the set of lifted validators for wat `wat`.
    ///
    /// @dev Reverts if:
    ///      - `wat` is zero
    ///      - `wat` not supported
    ///
    /// @param wat The wat to return its set of lifted validators.
    /// @return validators_ The set of lifted validators for wat `wat`.
    function validators(bytes32 wat)
        external
        view
        returns (address[] memory validators_);

    /// @notice Returns whether validator `validator` is lifted for wat `wat`.
    ///
    /// @dev Reverts if:
    ///      - `wat` is zero
    ///      - `wat` not supported
    ///
    /// @param wat The wat to return for whether validator `validator` is lifted.
    /// @param validator The validator to check whether they are lifted for wat
    ///                  `wat`.
    /// @return lifted Whether validator `validator` is lifted for wat `wat`.
    function validators(bytes32 wat, address validator)
        external
        view
        returns (bool lifted);

    /// @notice Returns the grace period in seconds.
    ///
    /// @dev The grace period is the time period after a wat's config update
    ///      during which both, the new and previous, wat's configs are valid.
    ///
    ///      This period is necessary to give ample time for non-finalized txs
    ///      and Chronicle Protocol low-latency API providers to update to the
    ///      new config.
    ///
    /// @dev Note that offboarded wats do not have a grace period!
    ///
    /// @return gracePeriod_ The grace period is seconds.
    function gracePeriod() external view returns (uint16 gracePeriod_);

    /// @notice Returns the staleness threshold in seconds.
    ///
    /// @dev The staleness threshold is the time after which a validator
    ///      message's age will be deemed invalid.
    ///
    /// @return stalenessThreshold_ The staleness threshold in seconds.
    function stalenessThreshold()
        external
        view
        returns (uint16 stalenessThreshold_);

    //--------------------------------------------------------------------------
    // Auth'ed Functionality

    /// @notice Updates the grace period to `gracePeriod_`.
    ///
    /// @dev Only callable by auth'ed address.
    ///
    /// @dev Reverts if:
    ///      - `gracePeriod_` is zero
    ///
    /// @param gracePeriod_ The grace period in seconds to update to.
    function setGracePeriod(uint16 gracePeriod_) external;

    /// @notice Updates the staleness threshold to `stalenessThreshold_`.
    ///
    /// @dev Only callable by auth'ed address.
    ///
    /// @dev Reverts if:
    ///      - `stalenessThreshold_` is zero
    ///
    /// @param stalenessThreshold_ The staleness threshold in seconds to update
    ///                            to.
    function setStalenessThreshold(uint16 stalenessThreshold_) external;

    /// @notice Updates wat `wat`'s config.
    ///
    /// @dev A wat's config is composed of its bar security parameter and set of
    ///      lifted validators encoded as bloom.
    ///
    /// @dev Note that this function is used to add initial support for a new
    ///      wat, updating a wat's config, and removing support for a wat.
    ///
    ///      A wat's support is removed via setting its bar and bloom parameters
    ///      to zero.
    ///
    /// @dev Only callable by auth'ed address.
    ///
    /// @dev Reverts if:
    ///      - exclusively `bar` or `bloom` zero
    ///
    /// @param wat The wat to update its config.
    /// @param bar The bar to update wat `wat`'s config to.
    /// @param bloom The set of lifted validators encoded as bloom to update
    ///              wat `wat`'s config to.
    function setConfig(bytes32 wat, uint8 bar, uint bloom) external;

    /// @notice Lifts validator `validator` to Chronicle Protocol's global
    ///         low-latency validator set.
    ///
    /// @dev Only callable by auth'ed address.
    ///
    /// @dev Reverts if:
    ///      - `validator` is zero address
    ///
    /// @param validator The validator to lift.
    function lift(address validator) external;

    /// @notice Lifts list of validators `validators` to Chronicle Protocol's
    ///         global low-latency validator set.
    ///
    /// @dev Only callable by auth'ed address.
    ///
    /// @dev Reverts if:
    ///      - any validator in `validators` is zero address
    ///
    /// @param validators The validators to lift.
    function lift(address[] memory validators) external;

    /// @notice Drops validator with id `validatorId` from Chronicle Protocol's
    ///         global low-latency validator set.
    ///
    /// @dev Only callable by auth'ed address.
    ///
    /// @param validatorId The id of the validator to drop.
    function drop(uint8 validatorId) external;

    /// @notice Drops list of validators with ids `validatorIds` from Chronicle
    ///         Protocol's global low-latency validator set.
    ///
    /// @dev Only callable by auth'ed address.
    ///
    /// @param validatorIds The ids of the validators to drop.
    function drop(uint8[] memory validatorIds) external;
}
