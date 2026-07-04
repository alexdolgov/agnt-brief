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
import { IBENQI } from '../interfaces/benqi/IBenqi.sol';
import { ISAVAX } from '../interfaces/savax/ISAVAX.sol';

/**
 * @title QISAVAX Rate Provider
 * @notice Returns the rate from sAVAX contract
 */
contract QISAVAXSupplyRateProvider is IRateProvider {
  IBENQI public immutable qISAVAX;
  ISAVAX public immutable sAVAX;

  constructor(IBENQI _qISAVAX, ISAVAX _sAVAX) {
    qISAVAX = _qISAVAX;
    sAVAX = _sAVAX;
  }

  /**
   * @return the value of QISAVAX in terms of AVAX
   */
  function getRate() external view override returns (uint256) {
    return sAVAX.getPooledAvaxByShares(1e18);
  }
}
