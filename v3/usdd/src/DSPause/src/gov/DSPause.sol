// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.6.12;

// Copyright (C) 2019 David Terry <me@xwvvvvwx.com>
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

import {DSAuth, DSAuthority} from "./auth.sol";
import {DSPauseProxy} from "./DSPauseProxy.sol";

contract DSPause is DSAuth {

    // --- events ---
    event Plot(address usr, bytes32 tag, bytes fax, uint eta);
    event Drop(address usr, bytes32 tag, bytes fax, uint eta);
    event Exec(address usr, bytes32 tag, bytes fax, uint eta);

    // --- admin ---

    modifier wait { require(msg.sender == address(proxy), "ds-pause-undelayed-call"); _; }

    function setOwner(address owner_) public override wait {
        owner = owner_;
        emit LogSetOwner(owner);
    }
    function setAuthority(DSAuthority authority_) public override wait {
        authority = authority_;
        emit LogSetAuthority(address(authority));
    }
    function setDelay(uint delay_) public wait {
        delay = delay_;
    }

    // --- math ---

    function add(uint x, uint y) internal pure returns (uint z) {
        z = x + y;
        require(z >= x, "ds-pause-addition-overflow");
    }

    // --- data ---

    mapping (bytes32 => bool) public plans;
    DSPauseProxy public proxy;
    uint         public delay;

    // --- init ---

    constructor(uint delay_, address owner_, DSAuthority authority_) public {
        delay = delay_;
        owner = owner_;
        authority = authority_;
        proxy = new DSPauseProxy();
    }

    // --- util ---

    function hash(address usr, bytes32 tag, bytes memory fax, uint eta)
    internal pure
    returns (bytes32)
    {
        return keccak256(abi.encode(usr, tag, fax, eta));
    }

    function soul(address usr)
    internal view
    returns (bytes32 tag)
    {
        assembly { tag := extcodehash(usr) }
    }

    // --- operations ---

    function plot(address usr, bytes32 tag, bytes memory fax, uint eta)
    public auth
    {
        require(eta >= add(now, delay), "ds-pause-delay-not-respected");
        plans[hash(usr, tag, fax, eta)] = true;
        emit Plot(usr, tag, fax, eta);
    }

    function drop(address usr, bytes32 tag, bytes memory fax, uint eta)
    public auth
    {
        plans[hash(usr, tag, fax, eta)] = false;
        emit Drop(usr, tag, fax, eta);
    }

    function exec(address usr, bytes32 tag, bytes memory fax, uint eta)
    public
    returns (bytes memory out)
    {
        require(plans[hash(usr, tag, fax, eta)], "ds-pause-unplotted-plan");
        require(soul(usr) == tag,                "ds-pause-wrong-codehash");
        require(now >= eta,                      "ds-pause-premature-exec");

        plans[hash(usr, tag, fax, eta)] = false;

        out = proxy.exec(usr, fax);
        require(proxy.owner() == address(this), "ds-pause-illegal-storage-change");
        emit Exec(usr, tag, fax, eta);
    }
}
