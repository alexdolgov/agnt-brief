// SPDX-License-Identifier: AGPL-3.0-or-later
//
// govActions.sol
//
// Copyright (C) 2018-2022 Dai Foundation
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


abstract contract Setter {
    function file(bytes32, address) public virtual;
    function file(bytes32, uint) public virtual;
    function file(bytes32, bytes32, uint) public virtual;
    function file(bytes32, bytes32, address) public virtual;
    function rely(address) public virtual;
    function deny(address) public virtual;
    function init(bytes32) public virtual;
    function drip() public virtual;
    function drip(bytes32) public virtual;
}

abstract contract EndLike {
    function cage() public virtual;
    function cage(bytes32) public virtual;
}

abstract contract PauseLike {
    function setAuthority(address) public virtual;
    function setDelay(uint) public virtual;
}

contract GovActions {
    function file(address who, bytes32 what, address data) public {
        Setter(who).file(what, data);
    }

    function file(address who, bytes32 what, uint data) public {
        Setter(who).file(what, data);
    }

    function file(address who, bytes32 ilk, bytes32 what, uint data) public {
        Setter(who).file(ilk, what, data);
    }

    function file(address who, bytes32 ilk, bytes32 what, address data) public {
        Setter(who).file(ilk, what, data);
    }

    function dripAndFile(address who, bytes32 what, uint data) public {
        Setter(who).drip();
        Setter(who).file(what, data);
    }

    function dripAndFile(address who, bytes32 ilk, bytes32 what, uint data) public {
        Setter(who).drip(ilk);
        Setter(who).file(ilk, what, data);
    }

    function rely(address who, address to) public {
        Setter(who).rely(to);
    }

    function deny(address who, address to) public {
        Setter(who).deny(to);
    }

    function init(address who, bytes32 ilk) public {
        Setter(who).init(ilk);
    }

    function cage(address end) public {
        EndLike(end).cage();
    }

    function setAuthority(address pause, address newAuthority) public {
        PauseLike(pause).setAuthority(newAuthority);
    }

    function setDelay(address pause, uint newDelay) public {
        PauseLike(pause).setDelay(newDelay);
    }

    function setAuthorityAndDelay(address pause, address newAuthority, uint newDelay) public {
        PauseLike(pause).setAuthority(newAuthority);
        PauseLike(pause).setDelay(newDelay);
    }

    function customExec(address usr, bytes memory data) public {
        (bool ok, ) = usr.call(data);
        require(ok, "gov-actions-call-error");
    }
}