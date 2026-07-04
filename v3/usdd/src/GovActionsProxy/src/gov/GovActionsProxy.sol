// SPDX-License-Identifier: AGPL-3.0-or-later
//
// govActionsProxy.sol
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

import {DSAuth} from "./auth.sol";
import {GovActions} from "./GovActions.sol";

interface PauseLike  {
    function plot(address usr, bytes32 tag, bytes memory fax, uint eta) external;
    function exec(address usr, bytes32 tag, bytes memory fax, uint eta) external;
    function delay() external returns (uint256);
}

contract GovActionsProxy is DSAuth {
    // --- Data ---
    address public pause;
    GovActions public govActions;

    // add events for schedule
    event Schedule(address usr, bytes32 tag, bytes fax, uint256 eta);
    event Cast(address usr, bytes32 tag, bytes fax, uint256 eta);

    // --- Auth ---
    function canCall(address caller, address code, bytes4 sig)
    public
    view
    returns (bool)
    {
        return isAuthorized(caller, sig);
    }

    constructor() public {
        govActions = new GovActions();
    }

    function setPause(address addr) public auth {
        require(addr != address(0), "Address is 0");
        pause = addr;
    }

    // --- Gov ---
    function rely(address from, address to) public auth {
        address      usr = address(govActions);
        bytes32      tag;  assembly { tag := extcodehash(usr) }
        bytes memory fax = abi.encodeWithSignature("rely(address,address)", from, to);
        uint         eta = now;

        PauseLike(pause).plot(usr, tag, fax, eta);
        PauseLike(pause).exec(usr, tag, fax, eta);
    }

    function deny(address from, address to) public auth {
        address      usr = address(govActions);
        bytes32      tag;  assembly { tag := extcodehash(usr) }
        bytes memory fax = abi.encodeWithSignature("deny(address,address)", from, to);
        uint         eta = now;

        PauseLike(pause).plot(usr, tag, fax, eta);
        PauseLike(pause).exec(usr, tag, fax, eta);
    }

    function file(address who, bytes32 what, uint256 data) public auth {
        address      usr = address(govActions);
        bytes32      tag;  assembly { tag := extcodehash(usr) }
        bytes memory fax = abi.encodeWithSignature("file(address,bytes32,uint256)", who, what, data);
        uint         eta = now;

        PauseLike(pause).plot(usr, tag, fax, eta);
        PauseLike(pause).exec(usr, tag, fax, eta);
    }

    function file(address who, bytes32 what, address data) public auth {
        address      usr = address(govActions);
        bytes32      tag;  assembly { tag := extcodehash(usr) }
        bytes memory fax = abi.encodeWithSignature("file(address,bytes32,address)", who, what, data);
        uint         eta = now;

        PauseLike(pause).plot(usr, tag, fax, eta);
        PauseLike(pause).exec(usr, tag, fax, eta);
    }

    function file(address who, bytes32 ilk, bytes32 what, uint256 data) public auth {
        address      usr = address(govActions);
        bytes32      tag;  assembly { tag := extcodehash(usr) }
        bytes memory fax = abi.encodeWithSignature("file(address,bytes32,bytes32,uint256)", who, ilk, what, data);
        uint         eta = now;

        PauseLike(pause).plot(usr, tag, fax, eta);
        PauseLike(pause).exec(usr, tag, fax, eta);
    }

    function file(address who, bytes32 ilk, bytes32 what, address data) public auth {
        address      usr = address(govActions);
        bytes32      tag;  assembly { tag := extcodehash(usr) }
        bytes memory fax = abi.encodeWithSignature("file(address,bytes32,bytes32,address)", who, ilk, what, data);
        uint         eta = now;

        PauseLike(pause).plot(usr, tag, fax, eta);
        PauseLike(pause).exec(usr, tag, fax, eta);
    }

    function dripAndFile(address who, bytes32 what, uint256 data) public auth {
        address      usr = address(govActions);
        bytes32      tag;  assembly { tag := extcodehash(usr) }
        bytes memory fax = abi.encodeWithSignature("dripAndFile(address,bytes32,uint256)", who, what, data);
        uint         eta = now;

        PauseLike(pause).plot(usr, tag, fax, eta);
        PauseLike(pause).exec(usr, tag, fax, eta);
    }

    function dripAndFile(address who, bytes32 ilk, bytes32 what, uint256 data) public auth {
        address      usr = address(govActions);
        bytes32      tag;  assembly { tag := extcodehash(usr) }
        bytes memory fax = abi.encodeWithSignature("dripAndFile(address,bytes32,bytes32,uint256)", who, ilk, what, data);
        uint         eta = now;

        PauseLike(pause).plot(usr, tag, fax, eta);
        PauseLike(pause).exec(usr, tag, fax, eta);
    }

    function cage(address end) public auth {
        address      usr = address(govActions);
        bytes32      tag;  assembly { tag := extcodehash(usr) }
        bytes memory fax = abi.encodeWithSignature("cage(address)", end);
        uint         eta = now;

        PauseLike(pause).plot(usr, tag, fax, eta);
        PauseLike(pause).exec(usr, tag, fax, eta);
    }

    function setPauseAuthority(address newAuthority) public auth {
        address      usr = address(govActions);
        bytes32      tag;  assembly { tag := extcodehash(usr) }
        bytes memory fax = abi.encodeWithSignature("setAuthority(address,address)", pause, newAuthority);
        uint         eta = now;

        PauseLike(pause).plot(usr, tag, fax, eta);
        PauseLike(pause).exec(usr, tag, fax, eta);
    }

    function setDelay(uint newDelay) public auth {
        address      usr = address(govActions);
        bytes32      tag;  assembly { tag := extcodehash(usr) }
        bytes memory fax = abi.encodeWithSignature("setDelay(address,uint256)", pause, newDelay);
        uint         eta = now;

        PauseLike(pause).plot(usr, tag, fax, eta);
        PauseLike(pause).exec(usr, tag, fax, eta);
    }

    function setAuthorityAndDelay(address newAuthority, uint newDelay) public auth {
        address      usr = address(govActions);
        bytes32      tag;  assembly { tag := extcodehash(usr) }
        bytes memory fax = abi.encodeWithSignature("setAuthorityAndDelay(address,address,uint256)", pause, newAuthority, newDelay);
        uint         eta = now;

        PauseLike(pause).plot(usr, tag, fax, eta);
        PauseLike(pause).exec(usr, tag, fax, eta);
    }

    function init(address who, bytes32 ilk) public auth {
        address      usr = address(govActions);
        bytes32      tag;  assembly { tag := extcodehash(usr) }
        bytes memory fax = abi.encodeWithSignature("init(address,bytes32)", who, ilk);
        uint         eta = now;

        PauseLike(pause).plot(usr, tag, fax, eta);
        PauseLike(pause).exec(usr, tag, fax, eta);
    }

    function customExec(address who, bytes memory data) public auth {
        address      usr = address(govActions);
        bytes32      tag;  assembly { tag := extcodehash(usr) }
        bytes memory fax = abi.encodeWithSignature("customExec(address,bytes)", who, data);
        uint         eta = now;

        PauseLike(pause).plot(usr, tag, fax, eta);
        PauseLike(pause).exec(usr, tag, fax, eta);
    }

    function execSpell(address spell, bytes memory fax) public auth {
        bytes32      tag;  assembly { tag := extcodehash(spell) }
        uint         eta = now;

        PauseLike(pause).plot(spell, tag, fax, eta);
        PauseLike(pause).exec(spell, tag, fax, eta);
    }

    function schedule(address who, bytes memory data) public auth {
        address      usr = address(govActions);
        bytes32      tag;  assembly { tag := extcodehash(usr) }
        bytes memory fax = abi.encodeWithSignature("customExec(address,bytes)", who, data);
        uint         eta = now + PauseLike(pause).delay();
        PauseLike(pause).plot(usr, tag, fax, eta);
        emit Schedule(usr, tag, fax, eta);
    }

    function cast(address who, bytes memory data, uint256 eta) public {
        address      usr = address(govActions);
        bytes32      tag;  assembly { tag := extcodehash(usr) }
        bytes memory fax = abi.encodeWithSignature("customExec(address,bytes)", who, data);
        PauseLike(pause).exec(usr, tag, fax, eta);
        emit Cast(usr, tag, fax, eta);
    }
}
