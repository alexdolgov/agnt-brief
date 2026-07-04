// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "../libraries/BoringOwnableUpgradeable.sol";
import "./BCOracleLib.sol";
import "./LpOracleLib.sol";

/// @title IPBCLpOracle
/// @notice Interface for the BCLpOracle contract providing TWAP price feeds for BT, CT, and LP tokens
interface IPBCLpOracle {
    /// @notice Emitted when the block cycle numerator is updated
    /// @param newBlockCycleNumerator The new block cycle numerator value
    event SetBlockCycleNumerator(uint16 newBlockCycleNumerator);

    /// @notice Returns the TWAP rate of BT per underlying asset
    /// @param market The Fira market address to query
    /// @param duration The TWAP duration in seconds
    /// @return The BT/Asset rate scaled by 1e18
    function getBtToAssetRate(address market, uint32 duration) external view returns (uint256);

    /// @notice Returns the TWAP rate of CT per underlying asset
    /// @param market The Fira market address to query
    /// @param duration The TWAP duration in seconds
    /// @return The CT/Asset rate scaled by 1e18
    function getCtToAssetRate(address market, uint32 duration) external view returns (uint256);

    /// @notice Returns the TWAP rate of LP per underlying asset
    /// @param market The Fira market address to query
    /// @param duration The TWAP duration in seconds
    /// @return The LP/Asset rate scaled by 1e18
    function getLpToAssetRate(address market, uint32 duration) external view returns (uint256);

    /// @notice Returns the TWAP rate of BT per FW token
    /// @param market The Fira market address to query
    /// @param duration The TWAP duration in seconds
    /// @return The BT/FW rate scaled by 1e18
    function getBtToFwRate(address market, uint32 duration) external view returns (uint256);

    /// @notice Returns the TWAP rate of CT per FW token
    /// @param market The Fira market address to query
    /// @param duration The TWAP duration in seconds
    /// @return The CT/FW rate scaled by 1e18
    function getCtToFwRate(address market, uint32 duration) external view returns (uint256);

    /// @notice Returns the TWAP rate of LP per FW token
    /// @param market The Fira market address to query
    /// @param duration The TWAP duration in seconds
    /// @return The LP/FW rate scaled by 1e18
    function getLpToFwRate(address market, uint32 duration) external view returns (uint256);

    /// @notice Checks if the market's oracle has sufficient cardinality for the requested duration
    /// @param market The Fira market address to check
    /// @param duration The desired TWAP duration in seconds
    /// @return increaseCardinalityRequired True if cardinality needs to be increased
    /// @return cardinalityRequired The minimum cardinality needed for the duration
    /// @return oldestObservationSatisfied True if oldest observation is old enough for the duration
    function getOracleState(address market, uint32 duration)
        external
        view
        returns (bool increaseCardinalityRequired, uint16 cardinalityRequired, bool oldestObservationSatisfied);

    /// @notice Returns the configured block cycle numerator
    /// @return The block cycle numerator used for cardinality calculations
    function blockCycleNumerator() external view returns (uint16);
}

/// @title BCLpOracle
/// @notice Pre-deployed oracle contract for BT, CT, and LP token price queries
/// @dev This is a pre-deployed version of BCOracleLib & LpOracleLib with additional utility functions.
///      Using this contract rather than direct library integration results in smaller bytecode size
///      and simpler structure, but slightly higher gas usage (~4000 gas for 2 external calls & 1 cold code load).
contract BCLpOracle is BoringOwnableUpgradeable, IPBCLpOracle {
    using BCOracleLib for IPMarket;
    using LpOracleLib for IPMarket;

    /// @notice Thrown when block cycle numerator is less than denominator
    error InvalidBlockRate(uint256 blockCycleNumerator);

    /// @notice Thrown when the requested TWAP duration requires more cardinality than uint16 max
    error TwapDurationTooLarge(uint32 duration, uint32 cardinalityRequired);

    /// @notice Block cycle numerator for cardinality calculations
    /// @dev Cardinality lowerbound = twap_duration * 1000 / blockCycleNumerator
    ///      Should be configured so that blockCycleNumerator / 1000 < actual block cycle time
    ///      Must be >= 1000 since oracle only records one rate per timestamp
    ///      Examples: Ethereum = 11000 (11 < 12s blocks), Arbitrum = 1000 (minimum)
    uint16 public blockCycleNumerator;

    /// @notice Denominator used with blockCycleNumerator for cardinality calculations
    uint16 public constant BLOCK_CYCLE_DENOMINATOR = 1000;

    /// @notice Initializes the oracle with a block cycle numerator
    /// @param _blockCycleNumerator The block cycle numerator for this chain
    constructor(uint16 _blockCycleNumerator) initializer {
        _setBlockCycleNumerator(_blockCycleNumerator);
        __BoringOwnable_init();
    }

    /* ///////////////////////////////////////////////////////////////
                    BT, CT, LP to FW
    //////////////////////////////////////////////////////////////*/

    /// @notice Returns the TWAP rate of BT per FW token
    /// @param market The Fira market address to query
    /// @param duration The TWAP duration in seconds
    /// @return The BT/FW rate scaled by 1e18
    function getBtToFwRate(address market, uint32 duration) external view returns (uint256) {
        return IPMarket(market).getBtToFwRate(duration);
    }

    /// @notice Returns the TWAP rate of CT per FW token
    /// @param market The Fira market address to query
    /// @param duration The TWAP duration in seconds
    /// @return The CT/FW rate scaled by 1e18
    function getCtToFwRate(address market, uint32 duration) external view returns (uint256) {
        return IPMarket(market).getCtToFwRate(duration);
    }

    /// @notice Returns the TWAP rate of LP per FW token
    /// @param market The Fira market address to query
    /// @param duration The TWAP duration in seconds
    /// @return The LP/FW rate scaled by 1e18
    function getLpToFwRate(address market, uint32 duration) external view returns (uint256) {
        return IPMarket(market).getLpToFwRate(duration);
    }

    /* ///////////////////////////////////////////////////////////////
                    BT, CT, LP to Asset
    //////////////////////////////////////////////////////////////*/

    /// @notice Returns the TWAP rate of BT per underlying asset
    /// @dev Caution: Consider the risk of not being able to withdraw from FW to Asset
    /// @param market The Fira market address to query
    /// @param duration The TWAP duration in seconds
    /// @return The BT/Asset rate scaled by 1e18
    function getBtToAssetRate(address market, uint32 duration) external view returns (uint256) {
        return IPMarket(market).getBtToAssetRate(duration);
    }

    /// @notice Returns the TWAP rate of CT per underlying asset
    /// @param market The Fira market address to query
    /// @param duration The TWAP duration in seconds
    /// @return The CT/Asset rate scaled by 1e18
    function getCtToAssetRate(address market, uint32 duration) external view returns (uint256) {
        return IPMarket(market).getCtToAssetRate(duration);
    }

    /// @notice Returns the TWAP rate of LP per underlying asset
    /// @param market The Fira market address to query
    /// @param duration The TWAP duration in seconds
    /// @return The LP/Asset rate scaled by 1e18
    function getLpToAssetRate(address market, uint32 duration) external view returns (uint256) {
        return IPMarket(market).getLpToAssetRate(duration);
    }

    /* ///////////////////////////////////////////////////////////////
                        Utility functions
    //////////////////////////////////////////////////////////////*/

    /// @notice Checks if the market's oracle can support the requested TWAP duration
    /// @dev Returns information about cardinality requirements and observation history
    /// @param market The Fira market address to check
    /// @param duration The desired TWAP duration in seconds
    /// @return increaseCardinalityRequired True if reserved cardinality is insufficient
    /// @return cardinalityRequired The minimum cardinality needed for the duration
    /// @return oldestObservationSatisfied True if oldest observation timestamp is old enough
    function getOracleState(address market, uint32 duration)
        external
        view
        returns (bool increaseCardinalityRequired, uint16 cardinalityRequired, bool oldestObservationSatisfied)
    {
        (,,, uint16 observationIndex, uint16 observationCardinality, uint16 cardinalityReserved) =
            IPMarket(market)._storage();

        // checkIncreaseCardinalityRequired
        cardinalityRequired = _calcCardinalityRequiredRequired(duration);
        increaseCardinalityRequired = cardinalityReserved < cardinalityRequired;

        // check oldestObservationSatisfied
        (uint32 oldestTimestamp,, bool initialized) =
            IPMarket(market).observations((observationIndex + 1) % observationCardinality);
        if (!initialized) {
            (oldestTimestamp,,) = IPMarket(market).observations(0);
        }
        oldestObservationSatisfied = oldestTimestamp < block.timestamp - duration;
    }

    /// @notice Calculates the cardinality required for a given TWAP duration
    /// @dev Uses block cycle numerator to estimate observations needed
    /// @param duration The TWAP duration in seconds
    /// @return The minimum cardinality required
    function _calcCardinalityRequiredRequired(uint32 duration) internal view returns (uint16) {
        uint32 cardinalityRequired =
            (duration * BLOCK_CYCLE_DENOMINATOR + blockCycleNumerator - 1) / blockCycleNumerator + 1;
        if (cardinalityRequired > type(uint16).max) {
            revert TwapDurationTooLarge(duration, cardinalityRequired);
        }
        return uint16(cardinalityRequired);
    }

    /// @notice Updates the block cycle numerator
    /// @dev Should only be called by authorized accounts (access control not shown)
    /// @param newBlockCycleNumerator The new block cycle numerator value
    function setBlockCycleNumerator(uint16 newBlockCycleNumerator) external onlyOwner {
        _setBlockCycleNumerator(newBlockCycleNumerator);
    }

    /// @notice Internal function to set the block cycle numerator with validation
    /// @param newBlockCycleNumerator The new block cycle numerator value
    function _setBlockCycleNumerator(uint16 newBlockCycleNumerator) internal {
        if (newBlockCycleNumerator < BLOCK_CYCLE_DENOMINATOR) {
            revert InvalidBlockRate(newBlockCycleNumerator);
        }

        blockCycleNumerator = newBlockCycleNumerator;
        emit SetBlockCycleNumerator(newBlockCycleNumerator);
    }
}
