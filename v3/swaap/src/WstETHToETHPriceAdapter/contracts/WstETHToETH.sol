// SPDX-License-Identifier: GPL-3.0-or-later
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.

/*
                                      s███
                                    ██████
                                   @██████
                              ,s███`
                           ,██████████████
                          █████████^@█████_
                         ██████████_ 7@███_            "█████████M
                        @██████████_     `_              "@█████b
                        ^^^^^^^^^^"                         ^"`
                         
                        ████████████████████p   _█████████████████████
                        @████████████████████   @███████████WT@██████b
                         ████████████████████   @███████████  ,██████
                         @███████████████████   @███████████████████b
                          @██████████████████   @██████████████████b
                           "█████████████████   @█████████████████b
                             @███████████████   @████████████████
                               %█████████████   @██████████████`
                                 ^%██████████   @███████████"
                                     ████████   @██████W"`
                                     1███████
                                      "@█████
                                         7W@█
*/

pragma solidity ^0.8.18;

import "@swaap-labs/v2-interfaces/contracts/standalone-utils/IStETH.sol";
import "@swaap-labs/v2-interfaces/contracts/standalone-utils/IWstETHToETHPriceAdapter.sol";
import "@swaap-labs/v2-errors/contracts/SwaapV2Errors.sol";

/**
 * @title WstETHToBasePriceAdapter
 * @author Swaap-labs (https://github.com/swaap-labs/swaap-v2-monorepo)
 * @notice Price adapter to calculate price of (wstETH / USD) pair by using
 * @notice Chainlink data feed for (stETH / USD) and (wstETH / stETH) ratio.
 * @dev This contract is used to calculate price of (wstETH / USD) pair. The contract is
 * @dev inspired by WstETHSynchronicityPriceAdapter developed by BGD Labs & used by Aave.
*/

contract WstETHToETHPriceAdapter is IWstETHToETHPriceAdapter {

  /**
   * @notice stETH token contract to get ratio
   */
  IStETH public constant STETH = IStETH(0xae7ab96520DE3A18E5e111B5EaAb095312D7fE84); // stETH on mainnet

  /**
   * @notice Number of decimals in the output of this price adapter
   */

  uint8 private constant _PRICE_DECIMALS = 18;

  uint256 private constant _ONE = 10**uint256(_PRICE_DECIMALS);

  /// @inheritdoc IWstETHToETHPriceAdapter
  function description() external view override returns (string memory) {
    return "wstETH / ETH";
  }

  /// @inheritdoc IWstETHToETHPriceAdapter
  function decimals() external pure override returns (uint8) {
    return _PRICE_DECIMALS;
  }

  /// @inheritdoc IWstETHToETHPriceAdapter
  function latestRoundData() external view override
  returns (uint80, int256, uint256, uint256, uint80) {

    int256 rate = int256(STETH.getPooledEthByShares(_ONE));

    _srequire(rate > 0, SwaapV2Errors.NON_POSITIVE_PRICE);

    return (
      1,
      rate,
      block.timestamp,
      block.timestamp,
      1
    );
  }

}