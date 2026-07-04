// SPDX-License-Identifier: ISC
pragma solidity ^0.8.21;

import { AggregatorV3Interface } from "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
import { IStaticOracle } from "@mean-finance/uniswap-v3-oracle/solidity/interfaces/IStaticOracle.sol";

/// @title USDCSTTAOOracleUniV3
/// @author Jason (Sturdy) https://github.com/iris112
/// @notice  An oracle for USDC/stTAO
interface IwstTAO {
    function getWTAOByWstTAO(uint256 wstTaoAmount) external view returns (uint256);
}

contract USDCSTTAOOracleUniV3 {
    address private constant WSTTAO = 0xB60acD2057067DC9ed8c083f5aa227a244044fD6;
    address private constant WTAO = 0x77E06c9eCCf2E797fd462A92B6D7642EF85b0A44;
    address private constant WETH = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;
    address private constant USDC_ETH_CHAINLINK = 0x986b5E1e1755e3C2440e960477f25201B0a8bbD4;

    uint8 public constant DECIMALS = 18;

    uint256 public immutable PRICE_MIN;
    uint256 public immutable MAX_ORACLE_DELAY;
    address public immutable UNI_V3_PAIR_ADDRESS;
    uint32 public immutable TWAP_DURATION;

    string public name;

    error CHAINLINK_BAD_PRICE();

    constructor(
        address _uniV3PairAddress,
        uint32 _twapDuration,
        uint256 _maxOracleDelay,
        uint256 _priceMin,
        string memory _name
    ) {
        PRICE_MIN = _priceMin;
        UNI_V3_PAIR_ADDRESS = _uniV3PairAddress;
        TWAP_DURATION = _twapDuration;
        MAX_ORACLE_DELAY = _maxOracleDelay;

        name = _name;
    }

    /// @notice The ```getPrices``` function is intended to return two prices from different oracles
    /// @return _isBadData is true when chainlink data is stale or negative
    /// @return _priceLow is the lower of the two prices
    /// @return _priceHigh is the higher of the two prices
    function getPrices() external view returns (bool _isBadData, uint256 _priceLow, uint256 _priceHigh) {
        // Get USDC price from chainlink
        (, int256 _answer, , uint256 _updatedAt, ) = AggregatorV3Interface(USDC_ETH_CHAINLINK)
            .latestRoundData();     // USDC/ETH
        // If data is stale or negative, set bad data to true and return
        if (_answer <= 0 || (block.timestamp - _updatedAt > MAX_ORACLE_DELAY)) {
            revert CHAINLINK_BAD_PRICE();
        }

        address[] memory _pools = new address[](1);
        _pools[0] = UNI_V3_PAIR_ADDRESS;
        uint256 wstTAOPriceInEth = IStaticOracle(0xB210CE856631EeEB767eFa666EC7C1C57738d438).quoteSpecificPoolsWithTimePeriod(
            uint128(IwstTAO(WSTTAO).getWTAOByWstTAO(1e9)),  //WSTTAO, WTAO Decimals 9
            WTAO,
            WETH,
            _pools,
            TWAP_DURATION
        );  // WSTTAO/ETH

        uint256 rate = uint256(_answer) * 1e18 / wstTAOPriceInEth;  //USDC/WSTTAO
        rate = rate * 1e3;  // USDC decimals 6, WSTTAO decimals 9
        
        _priceHigh = rate > PRICE_MIN ? rate : PRICE_MIN;
        _priceLow = _priceHigh;
    }
}
