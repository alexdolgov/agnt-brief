// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

import {IPriceOracleCustom} from "src/prices/IPriceOracleCustom.sol";
import {IERC165} from "@openzeppelin/contracts/utils/introspection/ERC165.sol";
import {AggregatorV3Interface} from "@chainlink/src/interfaces/feeds/AggregatorV3Interface.sol";
import {OracleArgumentChecks} from "src/utils/OracleArgumentChecks.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import "src/errors.sol";

/// @title rsETH Custom Price Oracle
/// @notice Returns the USD price of rsETH by combining rsETH's exchange rate with Chainlink's ETH/USD feed.
/// @dev The price is computed as `price = (rsETH/ETH) * (ETH/USD)`, where:
///      - `rsETH/ETH` comes from Kelp DAO's Multi-Chain Rate Provider `getLatestRate()` function (18 decimals)
///      - `ETH/USD` comes from Chainlink oracle (8 decimals)
///      The function multiplies these values and scales appropriately to match ETH/USD decimals.
/// @author kpk
/* solhint-disable var-name-mixedcase, contract-name-camelcase */
contract rsETH_PriceOracle is IPriceOracleCustom {
    //
    // Libraries
    //
    using Math for uint256;

    //
    // State
    //

    /// @notice rsETH token address
    address public immutable rsETH;

    /// @notice Kelp DAO Multi-Chain Rate Provider for rsETH exchange rate
    IRsETHRateProvider public immutable rateProvider;

    /// @notice Chainlink oracle for ETH to USD
    AggregatorV3Interface public immutable ETH_to_USD_chainlinkOracle;

    /// @notice The heartbeat interval for the ETH/USD Chainlink oracle.
    uint256 public immutable ETH_to_USD_chainlinkHeartbeat;

    /// @notice Number of decimals the returned price is represented with.
    uint8 private _decimals;

    //
    // Constructor
    //

    /// @notice Constructor for rsETH price oracle
    /// @param rsETH_ The address of the rsETH token
    /// @param rateProvider_ The address of the Kelp DAO Multi-Chain Rate Provider
    /// @param ETH_to_USD_chainlinkOracle_ The address of the ETH to USD Chainlink oracle
    /// @param ETH_to_USD_chainlinkHeartbeat_ The time in seconds after which the price is considered stale if not
    /// updated
    constructor(
        address rsETH_,
        address rateProvider_,
        address ETH_to_USD_chainlinkOracle_,
        uint256 ETH_to_USD_chainlinkHeartbeat_
    ) {
        rsETH = OracleArgumentChecks.assertERC20Address(rsETH_);
        rateProvider = IRsETHRateProvider(OracleArgumentChecks.assertNonZeroAddress(rateProvider_));
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

        // Get rsETH/ETH exchange rate from Kelp DAO Multi-Chain Rate Provider
        uint256 rsETHRate = rateProvider.getLatestRate();

        if (rsETHRate == 0) {
            return (0, true);
        }

        // rsETHRate is in 18 decimals, ETH/USD is in 8 decimals
        // First multiply the prices together (this will have 18 + 8 = 26 decimals)
        // Then divide by 10^18 to get back to 8 decimals (matching ETH/USD)
        price = rsETHRate.mulDiv(uint256(ETH_to_USD_price), 1e18, Math.Rounding.Floor);
    }

    /// @inheritdoc IPriceOracleCustom
    function decimals() external view override returns (uint8) {
        return _decimals;
    }

    /// @inheritdoc IPriceOracleCustom
    function underlyingAssetSupported() external view override returns (address) {
        return rsETH;
    }

    /// @inheritdoc IERC165
    function supportsInterface(bytes4 interfaceId) external pure override returns (bool) {
        return interfaceId == type(IPriceOracleCustom).interfaceId || interfaceId == type(IERC165).interfaceId;
    }
}

/// @title rsETH Multi-Chain Rate Provider Interface
/// @author Kelp DAO
/// @notice Interface for Kelp DAO's Multi-Chain Rate Provider contract
/// @dev Used to get the current exchange rate of rsETH to ETH
interface IRsETHRateProvider {
    /// @notice Get the latest rate of rsETH in terms of ETH
    /// @return The latest rate of rsETH in ETH (18 decimals)
    function getLatestRate() external view returns (uint256);
}
