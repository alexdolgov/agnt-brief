// Copyright (C) 2022 Dai Foundation
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.

// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.6.12;

import {UsddJoinAbstract} from "../interfaces/dss/UsddJoinAbstract.sol";
import {UsddAbstract} from "../interfaces/dss/UsddAbstract.sol";

/**
 * @author Henrique Barcelos <henrique@clio.finance>
 * @title Jar: Facility to allow stability fee payments into the Surplus Buffer.
 * @dev Users can either send Usdd directly to this conract or approve it to pull Usdd from their wallet.
 */
contract Jar {
    /// @notice The UsddJoin adapter from MCD.
    UsddJoinAbstract public immutable usddJoin;
    /// @notice The Usdd token.
    UsddAbstract public immutable usdd;
    /// @notice The vow address.
    address public immutable vow;
    /**
     * @notice Emitted whenever Usdd is sent to the `vow`.
     * @param usr The origin of the funds.
     * @param wad The amount of Usdd sent.
     */
    event Toss(address indexed usr, uint256 wad);

    /**
     * @dev The Usdd address is obtained from the UsddJoin contract.
     * @param usddJoin_ The usddJoin from MCD.
     * @param vow_ System treasury
     */
    constructor(address usddJoin_, address vow_) public {
        // UsddJoin and Usdd are meant to be immutable, so we can store them.
        usddJoin = UsddJoinAbstract(usddJoin_);
        usdd = UsddAbstract(UsddJoinAbstract(usddJoin_).usdd());

        vow = vow_;

        UsddAbstract(UsddJoinAbstract(usddJoin_).usdd()).approve(usddJoin_, type(uint256).max);
    }

    /**
     * @notice Transfers any outstanding Usdd balance in this contract to the `vow`.
     * @dev Reverts if there Usdd balance of this contract is zero.
     * @dev This effectively burns ERC-20 Usdd and credits it to the internal Usdd balance of the `vow` in the Vat.
     */
    function void() external {
        uint256 balance = usdd.balanceOf(address(this));
        require(balance > 0, "Jar/already-empty");

        usddJoin.join(vow, balance);

        emit Toss(address(this), balance);
    }

    /**
     * @notice Pulls `wad` amount of Usdd from the sender's wallet into the `vow`.
     * @dev Requires `msg.sender` to have previously `approve`d this contract to spend at least `wad` Usdd.
     * @dev This effectively burns ERC-20 Usdd and credits it to the internal Usdd balance of the `vow` in the Vat.
     * @param wad The amount of Usdd.
     */
    function toss(uint256 wad) external {
        usdd.transferFrom(msg.sender, address(this), wad);
        usddJoin.join(vow, wad);

        emit Toss(msg.sender, wad);
    }
}
