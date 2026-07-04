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
import { ISAVAX } from '../interfaces/savax/ISAVAX.sol';

/**
 * @title ASAVAX Rate Provider
 * @notice Returns the rate from sAVAX contract
 */
contract ASAVAXRateProvider is IRateProvider {
  ISAVAX public immutable sAVAX;

  constructor(ISAVAX _sAVAX) {
    sAVAX = _sAVAX;
  }

  /**
   * @return the value of ASAVAX in terms of AVAX
   */
  function getRate() external view override returns (uint256) {
    return sAVAX.getPooledAvaxByShares(1e18);
  }
}
