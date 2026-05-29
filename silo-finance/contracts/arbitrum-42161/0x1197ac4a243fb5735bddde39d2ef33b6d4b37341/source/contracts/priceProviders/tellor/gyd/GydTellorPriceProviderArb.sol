// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "../TellorPriceFeedWrapper.sol";

/// @dev Price feed for GYD/USD pair using Tellor oracle.
/// Compitable with silo chainlink price provider.
contract GydTellorPriceProviderArb is TellorPriceFeedWrapper {
    uint256 public constant READ_DELAY = 4 hours;
    bytes32 public immutable QUERY_ID; // solhint-disable-line var-name-mixedcase
    
    constructor() TellorPriceFeedWrapper(0x8cFc184c877154a8F9ffE0fe75649dbe5e2DBEbf) {
        bytes memory queryData = abi.encode("SpotPrice", abi.encode("gyd", "usd"));
        QUERY_ID = keccak256(queryData);
    }

    /// @dev Required for the chainlink price provider if we need to convert to quote.
    function decimals() public pure returns (uint8) {
        return 8;
    }

    function _queryId() internal view override returns (bytes32) {
        return QUERY_ID;
    }

    function _readDelay() internal pure override returns (uint256) {
        return READ_DELAY;
    }

    function _normalizePrice(int256 _price) internal pure override returns (int256) {
        return _price / 1e10;
    }
}
