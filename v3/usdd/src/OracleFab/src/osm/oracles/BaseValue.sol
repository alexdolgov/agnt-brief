// SPDX-License-Identifier: AGPL-3.0-or-later

/// BaseValue.sol

// Copyright (C) 2017-2020 Maker Ecosystem Growth Holdings, INC.

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

import "../interfaces/IDSValue.sol";

contract BaseValue is IDSValue {

    // --- Auth ---
    mapping (address => uint) public wards;
    function rely(address usr) external auth { wards[usr] = 1; emit Rely(usr); }
    function deny(address usr) external auth { wards[usr] = 0; emit Deny(usr); }
    modifier auth {
        require(wards[msg.sender] == 1, "BaseValue/not-authorized");
        _;
    }

    // --- Event ---
    event Rely(address usr);
    event Deny(address usr);
    event LogMedianPrice(uint256 val, uint256 age);
    event Lift(address[] a);
    event Drop(address[] a);
    event SetBar(uint256 bar);
    event SetTTL(uint256 ttl);
    event Kiss(address a);
    event Diss(address a);
    event Kiss(address[] a);
    event Diss(address[] a);

    uint128        val;
    uint32  public age;
    // bytes32 public constant wat = "ethusd"; // You want to change this every deploy
    uint256 public bar = 1;

    // Authorized oracles, set by an auth
    mapping (address => uint256) public orcl;

    // Whitelisted contracts, set by an auth
    mapping (address => uint256) public bud;

    // Mapping for at most 256 oracles
    mapping (uint8 => address) public slot;
    uint256 public ttl;

    modifier toll { require(bud[msg.sender] == 1, "BaseValue/contract-not-whitelisted"); _;}

    //Set type of Oracle
    constructor() public {
        wards[msg.sender] = 1;
        ttl = 1 days;
    }

    // You want to change this every deploy
    function wat() public pure virtual returns (bytes32) {
        return "ethusd";
    }

    function read() external view override toll returns (bytes32) {
        require(val > 0, "BaseValue/invalid-price-feed");
        return bytes32(uint256(val));
    }

    function peek() external view override toll returns (bytes32,bool) {
        return (bytes32(uint256(val)), val > 0 && block.timestamp - age <= ttl);
    }

    function recover(uint256 val_, uint256 age_, uint8 v, bytes32 r, bytes32 s) internal pure virtual returns (address) {
        return ecrecover(
            keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n32", keccak256(abi.encodePacked(val_, age_, wat())))),
            v, r, s
        );
    }

    function poke(
        uint256[] calldata val_, uint256[] calldata age_,
        uint8[] calldata v, bytes32[] calldata r, bytes32[] calldata s) external
    {
        require(val_.length == bar, "BaseValue/bar-too-low");

        uint256 bloom = 0;
        uint256 last = 0;
        uint256 zzz = age;

        for (uint i = 0; i < val_.length; i++) {
            // Validate the values were signed by an authorized oracle
            address signer = recover(val_[i], age_[i], v[i], r[i], s[i]);
            // Check that signer is an oracle
            require(orcl[signer] == 1, "BaseValue/invalid-oracle");
            // Price feed age greater than last medianizer age
            require(age_[i] > zzz, "BaseValue/stale-message");
            // Check for ordered values
            require(val_[i] >= last, "BaseValue/messages-not-in-order");
            last = val_[i];
            // Bloom filter for signer uniqueness
            uint8 sl = uint8(uint256(uint160(signer)) >> 152);
            require((bloom >> sl) % 2 == 0, "BaseValue/oracle-already-signed");
            bloom += uint256(2) ** sl;
        }

        val = uint128(val_[val_.length >> 1]);
        age = uint32(block.timestamp);

        emit LogMedianPrice(val, age);
    }

    function lift(address[] calldata a) external auth {
        for (uint i = 0; i < a.length; i++) {
            require(a[i] != address(0), "BaseValue/no-oracle-0");
            uint8 s = uint8(uint256(uint160(a[i])) >> 152);
            require(slot[s] == address(0), "BaseValue/signer-already-exists");
            orcl[a[i]] = 1;
            slot[s] = a[i];
        }
        emit Lift(a);
    }

    function drop(address[] calldata a) external auth {
       for (uint i = 0; i < a.length; i++) {
            orcl[a[i]] = 0;
            slot[uint8(uint256(uint160(a[i])) >> 152)] = address(0);
       }
        emit Drop(a);
    }

    function setBar(uint256 bar_) external auth {
        require(bar_ > 0, "BaseValue/quorum-is-zero");
        require(bar_ % 2 != 0, "BaseValue/quorum-not-odd-number");
        bar = bar_;
        emit SetBar(bar_);
    }

    function setTTL(uint256 _ttl) external auth {
        require(_ttl > 0, "BaseValue/invalid-ttl");
        ttl = _ttl;
        emit SetTTL(_ttl);
    }

    function kiss(address a) external auth {
        require(a != address(0), "BaseValue/no-contract-0");
        bud[a] = 1;
        emit Kiss(a);
    }

    function diss(address a) external auth {
        bud[a] = 0;
        emit Diss(a);
    }

    function kiss(address[] calldata a) external auth {
        for(uint i = 0; i < a.length; i++) {
            require(a[i] != address(0), "BaseValue/no-contract-0");
            bud[a[i]] = 1;
        }
        emit Kiss(a);
    }

    function diss(address[] calldata a) external auth {
        for(uint i = 0; i < a.length; i++) {
            bud[a[i]] = 0;
        }
        emit Diss(a);
    }
}