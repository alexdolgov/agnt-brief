// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

import {IApi3ReaderProxy} from "@api3/contracts/interfaces/IApi3ReaderProxy.sol";

/// @title OracleApi3Reader
/// @notice A contract that reads price data from API3's oracle proxy
/// @dev Implements a Chainlink-compatible interface while using API3's data feed
contract OracleApi3Reader {
    /// @notice The address of the API3 proxy contract
    address public proxy;

    /// @notice Initializes the contract with the API3 proxy address
    /// @param proxy_ The address of the API3 proxy contract to read from
    constructor(address proxy_) {
        proxy = proxy_;
    }

    /// @notice Gets the latest price data in a Chainlink-compatible format
    /// @return roundId Always returns 0 as API3 doesn't use round IDs
    /// @return answer The latest price value from the oracle
    /// @return startedAt Always returns 0 as API3 doesn't use this field
    /// @return updatedAt The timestamp of the latest price update
    /// @return answeredInRound Always returns 0 as API3 doesn't use round IDs
    function latestRoundData()
        public
        view
        virtual
        returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        )
    {
        (int224 value, uint32 timestamp) = IApi3ReaderProxy(proxy).read();
        return (0, int256(value), 0, uint256(timestamp), 0);
    }

    /// @notice Returns the number of decimal places in the oracle's price data
    /// @return The number of decimal places (18)
    function decimals() public view virtual returns (uint8) {
        return 18;
    }
}
