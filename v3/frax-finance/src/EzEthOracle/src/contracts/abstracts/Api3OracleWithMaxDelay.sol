// SPDX-License-Identifier: ISC
pragma solidity ^0.8.20;

// ====================================================================
// |     ______                   _______                             |
// |    / _____________ __  __   / ____(_____  ____ _____  ________   |
// |   / /_  / ___/ __ `| |/_/  / /_  / / __ \/ __ `/ __ \/ ___/ _ \  |
// |  / __/ / /  / /_/ _>  <   / __/ / / / / / /_/ / / / / /__/  __/  |
// | /_/   /_/   \__,_/_/|_|  /_/   /_/_/ /_/\__,_/_/ /_/\___/\___/   |
// |                                                                  |
// ====================================================================
// ===================== Api3OracleWithMaxDelay =======================
// ====================================================================
// Frax Finance: https://github.com/FraxFinance

// ====================================================================

import { IApi3 } from "src/contracts/interfaces/IApi3PriceFeed.sol";
import { ERC165Storage } from "src/contracts/utils/ERC165Storage.sol";
import { IApi3OracleWithMaxDelay } from "src/contracts/interfaces/oracles/abstracts/IApi3OracleWithMaxDelay.sol";

struct ConstructorParams {
    address api3FeedAddress;
    uint8 api3FeedDecimals;
    uint256 maximumOracleDelay;
}

/// @title Api3OracleWithMaxDelay
/// @author Drake Evans (Frax Finance) https://github.com/drakeevans
/// @notice  An abstract oracle for getting prices from Api3
abstract contract Api3OracleWithMaxDelay is ERC165Storage, IApi3OracleWithMaxDelay {
    /// @notice Api3 Price Feed Address
    address public immutable API3_FEED_ADDRESS;

    /// @notice Decimals of Api3 feed
    uint8 public immutable API3_FEED_DECIMALS;

    /// @notice Precision of Api3 feed
    uint256 public immutable API3_FEED_PRECISION;

    /// @notice Maximum delay of Api3, after which it is considered stale
    uint256 public maximumOracleDelay;

    constructor(ConstructorParams memory _params) {
        _registerInterface({ interfaceId: type(IApi3OracleWithMaxDelay).interfaceId });

        API3_FEED_ADDRESS = _params.api3FeedAddress;
        API3_FEED_DECIMALS = _params.api3FeedDecimals;
        API3_FEED_PRECISION = 10 ** uint256(_params.api3FeedDecimals);
        maximumOracleDelay = _params.maximumOracleDelay;
    }

    /// @notice The ```SetMaximumOracleDelay``` event is emitted when the max oracle delay is set
    /// @param oldMaxOracleDelay The old max oracle delay
    /// @param newMaxOracleDelay The new max oracle delay
    event SetMaximumOracleDelay(uint256 oldMaxOracleDelay, uint256 newMaxOracleDelay);

    /// @notice The ```_setMaximumOracleDelay``` function sets the max oracle delay to determine if Price Feed data is stale
    /// @param _newMaxOracleDelay The new max oracle delay
    function _setMaximumOracleDelay(uint256 _newMaxOracleDelay) internal {
        emit SetMaximumOracleDelay({ oldMaxOracleDelay: maximumOracleDelay, newMaxOracleDelay: _newMaxOracleDelay });
        maximumOracleDelay = _newMaxOracleDelay;
    }

    function setMaximumOracleDelay(uint256 _newMaxOracleDelay) external virtual;

    function _getApi3Price() internal view returns (bool _isBadData, uint256 _updatedAt, uint256 _price) {
        (int224 _answer, uint32 _timestampUpdated) = IApi3(API3_FEED_ADDRESS).read();

        // If data is stale or negative, set bad data to true and return
        _isBadData = _answer <= 0 || ((block.timestamp - _timestampUpdated) > maximumOracleDelay);
        if (_answer <= 0) revert AnswerWouldOverflow();
        _updatedAt = _timestampUpdated;
        _price = uint256(int256(_answer));
    }

    /// @notice The ```getApi3Price``` function returns the Api3 price and the timestamp of the last update
    /// @dev Uses the same prevision as the Api3 feed, virtual so it can be overridden
    /// @return _isBadData True if the data is stale or negative
    /// @return _updatedAt The timestamp of the last update
    /// @return _price The price
    function getApi3Price() external view virtual returns (bool _isBadData, uint256 _updatedAt, uint256 _price) {
        return _getApi3Price();
    }
}
