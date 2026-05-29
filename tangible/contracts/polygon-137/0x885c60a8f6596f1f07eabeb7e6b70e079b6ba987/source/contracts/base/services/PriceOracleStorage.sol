// SPDX-License-Identifier: MIT

pragma solidity 0.8.9;


import "../controller/Controllable.sol";
import "../../interfaces/IPriceOracle.sol";

/// @notice Storage for any PriceOracle variables
/// @author dvpublic
abstract contract PriceOracleStorage is Initializable
, Controllable
, IPriceOracle {

  // don't change names or ordering!
  string constant public VERSION = "1.0.0";

  /// @notice Salary token - the salary is paid using this token
  address public salaryToken;

  /// @notice USD token (i.e. USDC)
  address public usdToken;

  /// @notice Address of uniswapV2Pair to get price of 1 USD in salary tokens
  ///         https://docs.uniswap.org/protocol/V2/reference/smart-contracts/pair
  /// @dev it is 0 if salaryToken == usdToken
  address public uniswapPairUsdST;


  error ErrorTokenNotInLP();
  /// @notice The uniswap pair should be a pair of (USDC + salary tokens)
  error ErrorWrongUniswapPair(uint errorCode);
  error ErrorZeroAddress();


  //slither-disable-next-line unused-state
  uint[50] private ______gap;
}
