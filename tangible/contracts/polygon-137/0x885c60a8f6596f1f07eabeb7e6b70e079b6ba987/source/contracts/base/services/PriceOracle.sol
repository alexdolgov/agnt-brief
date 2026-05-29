// SPDX-License-Identifier: MIT

pragma solidity 0.8.9;

import "../../interfaces/IPriceOracle.sol";
import "../../third_party/uniswap/IUniswapV2Pair.sol";
import "../../third_party/IERC20Extended.sol";
import "./PriceOracleStorage.sol";

/// @notice Implementation of IPriceOracle
///         It allows to calculate price of 1 USD in terms of salary tokens
///         using given UniswapPairV2.
///
///         Salary Token (ST) can be equal to USD-token,
///         in that case no uniswap-pairs are used,
///         it just return price = 1e18 (decimals are taken from ST)
/// @author dvpublic
contract PriceOracle is PriceOracleStorage {

  // *****************************************************
  // ******************* Initialization ******************
  // *****************************************************

  function initialize(
    address controller_
    , address uniswapPairUsdST_
    , address salaryToken_
    , address usdToken_
  ) external initializer {
    Controllable.__Controllable_init(controller_);

    _init(uniswapPairUsdST_, salaryToken_, usdToken_);
  }


  function init(
    address uniswapPairUsdST_
    , address salaryToken_
    , address usdToken_
  ) external {
    onlyGovernance();
    _init(uniswapPairUsdST_, salaryToken_, usdToken_);
  }

  function _init(
    address uniswapPairUsdST_
    , address salaryToken_
    , address usdToken_
  ) internal {
    _validateSalaryToken(uniswapPairUsdST_, salaryToken_, usdToken_);

    salaryToken = salaryToken_;
    usdToken = usdToken_;
    uniswapPairUsdST = uniswapPairUsdST_;
  }

  // *****************************************************
  // ******************* IPriceOracle ********************
  // *****************************************************

  /// @notice Return a price of one dollar in required tokens
  /// @return Price of 1 USD in given token, decimals  = decimals of the required token
  function getPrice(address requiredToken_) external view returns (uint256) {
    address usdTokenLocal = usdToken;
    address salaryTokenLocal = salaryToken;
    if (requiredToken_ == usdTokenLocal) {
      uint decimalsOut = IERC20Extended(usdTokenLocal).decimals();
      return 10 ** decimalsOut;
    } else {
      if (requiredToken_ != salaryTokenLocal) {
        revert ErrorUnsupportedToken(requiredToken_);
      }

      uint decimalsOut = IERC20Extended(salaryTokenLocal).decimals();
      return getPriceFromUniswapV2Pair(uniswapPairUsdST, salaryTokenLocal, decimalsOut);
    }
  }

  // *****************************************************
  // ***************** Price calculation *****************
  // *****************************************************

  /// @notice Return price of given token based on given pair reserves
  /// @dev More complex implementation is possible, see
  ///      https://docs.uniswap.org/protocol/V2/concepts/core-concepts/oracles
  /// @return Normalized to given decimals token price
  function getPriceFromUniswapV2Pair (
    address pair_
  , address salaryToken_
  , uint outDecimals_
  ) public
  view
  returns (uint256) {
    IUniswapV2Pair pair = IUniswapV2Pair(pair_);
    address token0 = pair.token0();
    address token1 = pair.token1();

    (uint256 reserve0, uint256 reserve1,) = pair.getReserves();
    uint256 token0Decimals = IERC20Extended(token0).decimals();
    uint256 token1Decimals = IERC20Extended(token1).decimals();

    uint precision = 10 ** outDecimals_;

    // both reserves should have the same decimals
    reserve0 = reserve0 * precision / (10 ** token0Decimals);
    reserve1 = reserve1 * precision / (10 ** token1Decimals);

    if (salaryToken_ == token0) {
      return reserve1 * precision / reserve0;
    } else if (salaryToken_ == token1) {
      return reserve0 * precision / reserve1;
    } else {
      revert ErrorTokenNotInLP();
    }
  }

  // ******************************************************
  // **************** Helper functions ********************
  // ******************************************************

  function _validateSalaryToken(
    address uniswapPairUsdST_
    , address salaryToken_
    , address usdToken_
  ) internal view {
    if (salaryToken_ == usdToken_) {
      if (uniswapPairUsdST_ != address(0)) {
        revert ErrorWrongUniswapPair(1);
      }
    } else {
      if (uniswapPairUsdST_ == address(0)) {
        revert ErrorZeroAddress();
      }
      IUniswapV2Pair pair = IUniswapV2Pair(uniswapPairUsdST_);
      address token0 = pair.token0();
      address token1 = pair.token1();
      if (token0 == usdToken_) {
        if (token1 != salaryToken_) {
          revert ErrorWrongUniswapPair(2);
        }
      } else if (token0 == salaryToken_) {
        if (token1 != usdToken_) {
          revert ErrorWrongUniswapPair(3);
        }
      } else {
        revert ErrorWrongUniswapPair(4);
      }
    }
  }
}