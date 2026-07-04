// SPDX-License-Identifier: GPL-3.0-or-later
/*

    Copyright 2023 Dolomite

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.

*/

pragma solidity ^0.8.9;

import { IERC20Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import { IERC20MetadataUpgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/IERC20MetadataUpgradeable.sol"; // solhint-disable-line max-line-length


/**
 * @title   IMineralToken
 * @author  Dolomite
 *
 * @notice  Interface for MIN token
 */
interface IMineralToken is IERC20Upgradeable, IERC20MetadataUpgradeable {

    // ======================================================
    // ================== External Functions ================
    // ======================================================

    /**
     * @notice  Mints the provided amount of MIN tokens. Can only be called by dolomite global operator
     *
     * @param  _amount  The amount of tokens to mint
     */
    function mint(uint256 _amount) external;

    /**
     * @notice  Burns the provided amount of MIN tokens. Can only be called by dolomite global operator
     *
     * @param  _amount  The amount of tokens to burn
     */
    function burn(uint256 _amount) external;
}
