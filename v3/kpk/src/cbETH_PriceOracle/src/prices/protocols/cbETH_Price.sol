// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

import {IPriceOracleCustom} from "src/prices/IPriceOracleCustom.sol";
import {IERC165} from "@openzeppelin/contracts/utils/introspection/ERC165.sol";
import {AggregatorV3Interface} from "@chainlink/src/interfaces/feeds/AggregatorV3Interface.sol";
import {OracleArgumentChecks} from "src/utils/OracleArgumentChecks.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import "src/errors.sol";

/// @title cbETH Custom Price Oracle
/// @notice Returns the USD price of cbETH by combining cbETH's exchange rate with Chainlink's ETH/USD feed.
/// @dev The price is computed as `price = (cbETH/ETH) * (ETH/USD)`, where:
///      - `cbETH/ETH` comes from cbETH contract's `exchangeRate()` function (18 decimals)
///      - `ETH/USD` comes from Chainlink oracle (8 decimals)
///      The function multiplies these values and scales appropriately to match ETH/USD decimals.
/// @author kpk
/* solhint-disable var-name-mixedcase, contract-name-camelcase */
contract cbETH_PriceOracle is IPriceOracleCustom {
    //
    // Libraries
    //
    using Math for uint256;

    //
    // State
    //

    /// @notice cbETH token address
    address public immutable cbETH;

    /// @notice Chainlink oracle for ETH to USD
    AggregatorV3Interface public immutable ETH_to_USD_chainlinkOracle;

    /// @notice The heartbeat interval for the ETH/USD Chainlink oracle.
    uint256 public immutable ETH_to_USD_chainlinkHeartbeat;

    /// @notice Number of decimals the returned price is represented with.
    uint8 private _decimals;

    //
    // Constructor
    //

    /// @notice Constructor for cbETH price oracle
    /// @param cbETH_ The address of the cbETH token
    /// @param ETH_to_USD_chainlinkOracle_ The address of the ETH to USD Chainlink oracle
    /// @param ETH_to_USD_chainlinkHeartbeat_ The time in seconds after which the price is considered stale if not
    /// updated
    constructor(address cbETH_, address ETH_to_USD_chainlinkOracle_, uint256 ETH_to_USD_chainlinkHeartbeat_) {
        cbETH = OracleArgumentChecks.assertERC20Address(cbETH_);
        ETH_to_USD_chainlinkOracle = OracleArgumentChecks.assertChainlinkOracle(ETH_to_USD_chainlinkOracle_);
        ETH_to_USD_chainlinkHeartbeat = OracleArgumentChecks.assertNotZeroNumber(ETH_to_USD_chainlinkHeartbeat_);

        _decimals = ETH_to_USD_chainlinkOracle.decimals();
    }

    //
    // IPriceOracleCustom
    //

    /// @inheritdoc IPriceOracleCustom
    function getLatestPrice() external view override returns (uint256 price, bool stale) {
        // Get ETH/USD price from Chainlink
        (, int256 ETH_to_USD_price,, uint256 ETH_to_USD_updatedAt,) = ETH_to_USD_chainlinkOracle.latestRoundData();

        if (ETH_to_USD_price < 0) {
            return (0, true);
        }

        if (block.timestamp - ETH_to_USD_updatedAt > ETH_to_USD_chainlinkHeartbeat) {
            stale = true;
        }

        // Get cbETH/ETH exchange rate from cbETH contract
        uint256 rate = IcbETH(cbETH).exchangeRate();

        if (rate == 0) {
            return (0, true);
        }

        // exchangeRate is in 18 decimals, ETH/USD is in 8 decimals
        // First multiply the prices together (this will have 18 + 8 = 26 decimals)
        // Then divide by 10^18 to get back to 8 decimals (matching ETH/USD)
        price = rate.mulDiv(uint256(ETH_to_USD_price), 1e18, Math.Rounding.Floor);
    }

    /// @inheritdoc IPriceOracleCustom
    function decimals() external view override returns (uint8) {
        return _decimals;
    }

    /// @inheritdoc IPriceOracleCustom
    function underlyingAssetSupported() external view override returns (address) {
        return cbETH;
    }

    /// @inheritdoc IERC165
    function supportsInterface(bytes4 interfaceId) external pure override returns (bool) {
        return interfaceId == type(IPriceOracleCustom).interfaceId || interfaceId == type(IERC165).interfaceId;
    }
}

/// @title cbETH Interface
/// @notice Interface for cbETH contract
interface IcbETH {
    /// @notice Get the exchange rate of cbETH to ETH
    /// @return exchangeRate The exchange rate (18 decimals)
    function exchangeRate() external view returns (uint256 exchangeRate);
}
