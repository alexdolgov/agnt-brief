// SPDX-License-Identifier: AGPL-v3.0
pragma solidity ^0.8.21;


interface AggregatorV3Interface {
  function decimals() external view returns (uint8);

  function description() external view returns (string memory);

  function version() external view returns (uint256);

  function getRoundData(
    uint80 _roundId
  ) external view returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);

  function latestRoundData()
    external
    view
    returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
}

interface ICurvePool {
    function get_virtual_price() external view returns (uint256 price);

    function price_oracle() external view returns (uint256);

    function price_oracle(uint256 i) external view returns (uint256);

    function balances(uint256 _id) external view returns (uint256);

    function calc_token_amount(
        uint256[2] memory _amounts,
        bool _is_deposit
    ) external view returns (uint256);

    function calc_token_amount(
        uint256[] memory _amounts,
        bool _is_deposit
    ) external view returns (uint256);

    function calc_withdraw_one_coin(uint256 _burn_amount, int128 i) external view returns (uint256);

    function get_dy(int128 i, int128 j, uint256 dx) external view returns (uint256);

    function coins(uint256 index) external view returns (address);

    function add_liquidity(uint256[2] memory amounts, uint256 _min_mint_amount) external;

    function add_liquidity(uint256[] memory amounts, uint256 _min_mint_amount) external returns (uint256);
}

/// @title USDCCrvUSD0USD0PPOracle
/// @author Jason (Sturdy) https://github.com/iris112
/// @notice  An oracle for USDC/CrvUSDOUSD0++
contract USDCCrvUSD0USD0PPOracle {

    uint8 public constant DECIMALS = 18;
    address private constant CURVE_USD0_USD0PP_POOL = 0x1d08E7adC263CfC70b1BaBe6dC5Bb339c16Eec52;
    address private constant USDC_USD_CHAINLINK = 0x8fFfFfd4AfB6115b954Bd326cbe7B4BA576818f6;
    
    uint256 public immutable PRICE_MIN;
    uint256 public immutable MAX_ORACLE_DELAY;

    string public name;

    error CHAINLINK_BAD_PRICE();

    constructor(
        uint256 _maxOracleDelay,
        uint256 _priceMin,
        string memory _name
    ) {
        name = _name;
        MAX_ORACLE_DELAY = _maxOracleDelay;
        PRICE_MIN = _priceMin;
    }

    /// @notice The ```getPrices``` function is intended to return price between collateral asset and lending asset
    /// @return _isBadData is always false, just sync to other oracle interfaces
    /// @return _priceLow is the lower of the prices
    /// @return _priceHigh is the higher of the prices
    function getPrices() external view returns (bool _isBadData, uint256 _priceLow, uint256 _priceHigh) {
        uint256 rate = _getCrvUSD0USD0PPPrice();

        // Get USDC price from chainlink
        (, int256 _answer, , uint256 _updatedAt, ) = AggregatorV3Interface(USDC_USD_CHAINLINK)
            .latestRoundData();     // USDC/USD
        // If data is stale or negative, set bad data to true and return
        if (_answer <= 0 || (block.timestamp - _updatedAt > MAX_ORACLE_DELAY)) {
            revert CHAINLINK_BAD_PRICE();
        }

        // _answer is 8 decimals, + 10 decimals - USDC decimals + LP decimals + oracle decimals 10-6+18+18=40
        rate = uint256(_answer) * 1e40 / rate;     // USDC/CrvUSD0USD0PP

        _priceHigh = rate > PRICE_MIN ? rate : PRICE_MIN;
        _priceLow = _priceHigh;
    }

    /**
     * @dev Get price for Curve-USD0-USD0++ LP Token, 1 USD0 = 1USD0++ = 1$
     */
    function _getCrvUSD0USD0PPPrice() internal view returns (uint256) {
        uint256 minPrice = 1e18;
        uint256 curveLPTokenPrice = (ICurvePool(CURVE_USD0_USD0PP_POOL).get_virtual_price() * minPrice) / 1e18;

        return curveLPTokenPrice;
    }
}