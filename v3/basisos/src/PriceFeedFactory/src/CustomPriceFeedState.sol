// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

abstract contract CustomPriceFeedState {
    struct Transmission {
        int192 answer; // 192 bits ought to be enough for anyone
        uint64 updatedAt;
        uint64 validFromTimestamp;
        uint64 observationsTimestamp;
    }

    /*//////////////////////////////////////////////////////////////
                        NAMESPACED STORAGE LAYOUT
    //////////////////////////////////////////////////////////////*/

    /// @custom:storage-location erc7201:logarithm.storage.CustomPriceFeed
    struct CustomPriceFeedStorage {
        bytes32 feedId;
        uint8 decimals;
        uint80 latestRound;
        mapping(uint80 round => Transmission) transmissions;
    }

    // keccak256(abi.encode(uint256(keccak256("logarithm.storage.CustomPriceFeed")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant CustomPriceFeedStorageLocation =
        0xa42f693ef42d5cf7582092775c92edc264c5c8a8a96fdf38371c338309a4d000;

    function _getCustomPriceFeedStorage() private pure returns (CustomPriceFeedStorage storage $) {
        assembly {
            $.slot := CustomPriceFeedStorageLocation
        }
    }

    /*//////////////////////////////////////////////////////////////
                            STORAGE SETTERS
    //////////////////////////////////////////////////////////////*/

    function _setFeedId(bytes32 _feedId) internal {
        _getCustomPriceFeedStorage().feedId = _feedId;
    }

    function _setDecimals(uint8 _decimals) internal {
        _getCustomPriceFeedStorage().decimals = _decimals;
    }

    function _transmit(int192 answer, uint64 updatedAt, uint64 validFromTimestamp, uint64 observationsTimestamp)
        internal
        returns (uint80 round)
    {
        CustomPriceFeedStorage storage $ = _getCustomPriceFeedStorage();
        round = $.latestRound + 1;
        $.transmissions[round] = Transmission({
            answer: answer,
            updatedAt: updatedAt,
            validFromTimestamp: validFromTimestamp,
            observationsTimestamp: observationsTimestamp
        });
        $.latestRound = round;
        return round;
    }

    /*//////////////////////////////////////////////////////////////
                            STORAGE GETTERS
    //////////////////////////////////////////////////////////////*/

    function feedId() public view returns (bytes32) {
        return _getCustomPriceFeedStorage().feedId;
    }

    function decimals() public view returns (uint8) {
        return _getCustomPriceFeedStorage().decimals;
    }

    function latestRound() public view returns (uint80) {
        return _getCustomPriceFeedStorage().latestRound;
    }

    function getRoundTransmission(uint80 round) public view returns (Transmission memory) {
        return _getCustomPriceFeedStorage().transmissions[round];
    }
}
