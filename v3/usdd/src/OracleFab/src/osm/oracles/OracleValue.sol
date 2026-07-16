// SPDX-License-Identifier: AGPL-3.0-or-later

/// OracleValue.sol

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
import "../interfaces/IOracle.sol";

contract OracleValue is IDSValue {
    // --- Auth ---
    mapping(address => uint) public wards;
    function rely(address usr) external auth {
        wards[usr] = 1;
        emit Rely(usr);
    }
    function deny(address usr) external auth {
        wards[usr] = 0;
        emit Deny(usr);
    }
    modifier auth() {
        require(wards[msg.sender] == 1, "OracleValue/not-authorized");
        _;
    }

    // Whitelisted contracts, set by an auth
    mapping(address => uint256) public bud;
    modifier toll() {
        require(bud[msg.sender] == 1, "OracleValue/contract-not-whitelisted");
        _;
    }

    // --- Events ---
    event Rely(address indexed usr);
    event Deny(address indexed usr);
    event SetTTL(uint256 ttl);
    event SetOracle(address oracle);
    event Kiss(address a);
    event Diss(address a);
    event Kiss(address[] a);
    event Diss(address[] a);

    // --- Storage ---
    uint256 public ttl; // Maximum time between price updates
    IOracle public oracle;

    constructor() public {
        wards[msg.sender] = 1;
        ttl = 1 days; // Default TTL of 1 days
    }

    // --- Administration ---
    function setTTL(uint256 _ttl) external auth {
        require(_ttl > 0, "OracleValue/invalid-ttl");
        ttl = _ttl;
        emit SetTTL(_ttl);
    }

    function setOracle(address _oracle) external auth {
        require(_oracle != address(0), "OracleValue/invalid-oracle");
        oracle = IOracle(_oracle);
        emit SetOracle(_oracle);
    }

    // --- Whitelist Management ---
    function kiss(address a) external auth {
        require(a != address(0), "OracleValue/no-contract-0");
        bud[a] = 1;
        emit Kiss(a);
    }

    function diss(address a) external auth {
        bud[a] = 0;
        emit Diss(a);
    }

    function kiss(address[] calldata a) external auth {
        for (uint i = 0; i < a.length; i++) {
            require(a[i] != address(0), "OracleValue/no-contract-0");
            bud[a[i]] = 1;
        }
        emit Kiss(a);
    }

    function diss(address[] calldata a) external auth {
        for (uint i = 0; i < a.length; i++) {
            bud[a[i]] = 0;
        }
        emit Diss(a);
    }

    // --- Primary API ---
    function peek() public view override toll returns (bytes32, bool) {
        require(address(oracle) != address(0), "OracleValue/oracle-not-set");

        // Get latest round data from oracle
        (
            uint80 roundId,
            int256 answer,
            ,
            uint256 updatedAt,
            uint80 answeredInRound
        ) = oracle.latestRoundData();

        // Validate the response
        require(answer > 0, "OracleValue/negative-or-zero-price");
        require(updatedAt > 0, "OracleValue/invalid-timestamp");
        require(block.timestamp >= updatedAt, "OracleValue/invalid-timestamp");
        require(answeredInRound >= roundId, "OracleValue/stale-price");

        // Check if the price is fresh according to TTL
        bool valid = (block.timestamp - updatedAt) <= ttl;

        // Scale to 18 decimals
        uint256 scaledPrice = scalePrice(uint256(answer), oracle.decimals());

        // Convert price to bytes32
        bytes32 price = bytes32(scaledPrice);

        return (price, valid);
    }

    function read() public view override toll returns (bytes32) {
        (bytes32 price, bool valid) = peek();
        require(valid, "OracleValue/stale-price");
        return price;
    }

        // Helper function to scale prices to 18 decimals
    function scalePrice(uint256 price, uint256 decimals) internal pure returns (uint256) {
        if (decimals == 18) return price;
        if (decimals < 18) return price * (10 ** (18 - decimals));
        return price / (10 ** (decimals - 18));
    }
}
