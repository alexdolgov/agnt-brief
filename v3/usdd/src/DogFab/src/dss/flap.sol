// SPDX-License-Identifier: AGPL-3.0-or-later

/// flap.sol -- Surplus auction

// Copyright (C) 2018 Rain <rainbreak@riseup.net>
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

pragma solidity ^0.6.12;

interface VatLike {
    function hope(address) external;
    function move(address, address, uint256) external;
}

interface UsddJoinLike {
    function vat() external view returns (address);
    function exit(address, uint256) external;
}

contract Flapper {
    mapping (address => uint256) public wards;

    uint256 public live;  // Active Flag
    uint256 public hop;   // [Seconds]    Time between kicks
    uint256 public zzz;   // [Timestamp]  Last kick

    VatLike     public vat;
    UsddJoinLike public usddJoin;
    address     public receiver;

    event Rely(address indexed usr);
    event Deny(address indexed usr);
    event File(bytes32 indexed what, uint256 data);
    event File(bytes32 indexed what, address data);
    event Kick(uint256 lot, address receiver);
    event Cage(uint256 rad);

    constructor(
        address _usddJoin,
        address _receiver
    ) public {
        usddJoin = UsddJoinLike(_usddJoin);
        vat     = VatLike(usddJoin.vat());
        receiver = _receiver;

        vat.hope(address(usddJoin));

        wards[msg.sender] = 1;
        emit Rely(msg.sender);

        // Initial values for safety
        hop  = 1 hours;

        live = 1;
    }

    modifier auth {
        require(wards[msg.sender] == 1, "Flapper/not-authorized");
        _;
    }

    uint256 internal constant RAY = 10 ** 27;

    function rely(address usr) external auth { wards[usr] = 1; emit Rely(usr); }
    function deny(address usr) external auth { wards[usr] = 0; emit Deny(usr); }

    function file(bytes32 what, uint256 data) external auth {
        if      (what == "hop")  hop = data;
        else revert("Flapper/file-unrecognized-param");
        emit File(what, data);
    }

    function file(bytes32 what, address data) external auth {
        if (what == "receiver") receiver = data;
        else revert("Flapper/file-unrecognized-param");
        emit File(what, data);
    }

    function kick(uint256 lot, uint) external auth returns (uint256) {
        require(live == 1, "Flapper/not-live");

        require(block.timestamp >= zzz + hop, "Flapper/kicked-too-soon");
        zzz = block.timestamp;

        // Get Usdd and Transfer
        vat.move(msg.sender, address(this), lot);   // rad
        usddJoin.exit(receiver, lot / RAY);    // wad

        emit Kick(lot, receiver);
        return 0;
    }

    function cage(uint256) external auth {
        live = 0;
        emit Cage(0);
    }
}