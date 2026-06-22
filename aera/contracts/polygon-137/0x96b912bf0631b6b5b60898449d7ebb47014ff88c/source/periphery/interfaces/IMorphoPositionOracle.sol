// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.21;

import {IMorphoPositionOracleTypes} from "./IMorphoPositionOracleTypes.sol";
import {
    IMorpho, Id
} from "periphery/dependencies/morpho/interfaces/IMorpho.sol";

/// @title IMorphoPositionOracle.
interface IMorphoPositionOracle is IMorphoPositionOracleTypes {
    /// @notice Returns the Morpho contract address.
    function morpho() external view returns (IMorpho);

    /// @notice Sets the markets list for the oracle. Market list is completely replaced by the new list.
    ///         To add a new market, old markets should be included in the list.
    /// @dev MUST be called by AeraV2Vault owner.
    ///      MUST not contain duplicates.
    ///      MUST provide market list in strictly increasing order by market ID.
    /// @param markets_ The list of markets.
    function setMarkets(MarketData[] calldata markets_) external;

    /// @notice Returns the details of a market.
    function markets(uint256 index)
        external
        view
        returns (
            Id id,
            address priceFeed,
            uint80 priceFeedScale,
            uint8 loanTokenDecimals,
            bool invertPrice
        );

    /// @notice Returns the total number of markets.
    function getMarketsLength() external view returns (uint256);
}
