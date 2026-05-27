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

pragma solidity =0.8.24;

import './IRateProvider.sol';
import '../interfaces/etherfi/IWeETH.sol';

/**
 * @title Wrapped eETH Rate Provider
 * @notice Returns the value of weETH in terms of eETH
 * @dev weETH.getRate() returns eETH per weETH. Since eETH is a rebasing
 *      token pegged 1:1 to ETH, we assume it to be the eth rate.
 */
contract WeETHExchangeRateProvider is IRateProvider {
  IWeETH public immutable weETH;

  constructor(IWeETH _weETH) {
    weETH = _weETH;
  }

  /**
   * @return the value of weETH in terms of ETH 1e18
   */
  function getRate() external view override returns (uint256) {
    return weETH.getRate();
  }
}
