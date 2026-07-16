// SPDX-License-Identifier: AGPL-3.0-or-later

/// median.sol

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

interface IDSValue {
    function peek() external view returns (bytes32, bool);
    function read() external view returns (bytes32);
}

contract Median {

    // --- Auth ---
    mapping (address => uint) public wards;
    function rely(address usr) external auth { wards[usr] = 1; emit Rely(usr); }
    function deny(address usr) external auth { wards[usr] = 0; emit Deny(usr); }
    modifier auth {
        require(wards[msg.sender] == 1, "Median/not-authorized");
        _;
    }

    // --- Event ---
    event Rely(address usr);
    event Deny(address usr);
    event LogMedianPrice(uint256 val, uint256 age);
    event Lift(address[] a);
    event Drop(address[] a);
    event SetBar(uint256 bar);
    event Kiss(address a);
    event Diss(address a);
    event Kiss(address[] a);
    event Diss(address[] a);
    event SetDeviation(uint256 deviation);
    event SetMainOracle(address oracle);

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
    uint8 public orclCount;

    // main oracle
    address public mainOrcl;

    // max deviation (10% = 1000 bps default)
    uint256 public deviation = 1000;

    modifier toll { require(bud[msg.sender] == 1, "Median/contract-not-whitelisted"); _;}

    //Set type of Oracle
    constructor() public {
        wards[msg.sender] = 1;
    }

    // You want to change this every deploy
    function wat() public pure virtual returns (bytes32) {
        return "ethusd";
    }

    function read() external view toll returns (uint256) {
        require(val > 0, "Median/invalid-price-feed");
        return val;
    }

    function peek() external view toll returns (uint256,bool) {
        return (val, val > 0);
    }

    function setMainOrcl(address oracle) external auth {
        require(oracle != address(0), "Median/no-oracle-0");
        require(orcl[oracle] == 1, "Median/not-authorized-oracle");
        mainOrcl = oracle;
        emit SetMainOracle(oracle);
    }

    function setDeviation(uint256 deviation_) external auth {
        require(deviation_ > 0, "Median/deviation-is-zero");
        require(deviation_ <= 10000, "Median/deviation-too-high"); // max 100%
        deviation = deviation_;
        emit SetDeviation(deviation_);
    }

    function poke() external {
        require(mainOrcl != address(0), "Median/no-main-oracle");

        // Get main oracle price
        (bytes32 mainPriceBytes, bool mainValid) = IDSValue(mainOrcl).peek();
        require(mainValid, "Median/main-oracle-invalid");
        uint256 mainPrice = uint256(mainPriceBytes); // 0.5
        require(mainPrice > 0, "Median/main-price-zero");

        uint256 validCount = 1; // Start with 1 for main oracle

        // Check all registered oracles
        for (uint8 i = 0; i < orclCount; i++) {
            address oracle = slot[i];
            if (oracle == address(0) || oracle == mainOrcl) continue;

            // Get price from oracle
            (bytes32 priceBytes, bool valid) = IDSValue(oracle).peek();
            if (!valid) continue;

            uint256 price = uint256(priceBytes);
            if (price == 0) continue;

            // Check price deviation using basis points
            uint256 maxDeviation = mainPrice * deviation / 10000;   // 10000,0.5
            uint256 diff = price > mainPrice ?
                price - mainPrice : mainPrice - price;  // 0.5 - 0.45 = 0.05
            if (diff > maxDeviation) continue;

            validCount++;
        }

        // Ensure we have enough valid prices
        require(validCount >= bar, "Median/insufficient-valid-prices");

        // Set main oracle's price as the result
        val = uint128(mainPrice);
        age = uint32(block.timestamp);

        emit LogMedianPrice(val, age);
    }

    // Set price from selected oracle
    function pokeOracle(address oracle) external auth {
        require(oracle != address(0), "Median/no-oracle");
        require(orcl[oracle] == 1, "Median/not-authorized-oracle");
        (bytes32 priceBytes, bool isValid) = IDSValue(oracle).peek();
        uint256 price = uint256(priceBytes);
        require(price > 0, "Median/main-price-zero");

        // Set oracle's price as the result
        val = uint128(price);
        age = uint32(block.timestamp);

        emit LogMedianPrice(val, age);
    }

    function lift(address[] calldata a) external auth {
        require(orclCount + a.length <= 255, "median/oracle-limit-reached");
        for (uint i = 0; i < a.length; i++) {
            require(a[i] != address(0), "Median/no-oracle-0");
            require(orcl[a[i]] == 0, "Median/signer-already-exists");
            orcl[a[i]] = 1;
            slot[orclCount] = a[i];
            orclCount++;
        }
        emit Lift(a);
    }

    function drop(address[] calldata a) external auth {
        for (uint i = 0; i < a.length; i++) {
            require(orcl[a[i]] == 1, "Median/oracle-not-exists");
            orcl[a[i]] = 0;
            if (mainOrcl == a[i]) {
                mainOrcl = address(0);
            }
            // Find and remove from slot
            for (uint8 j = 0; j < orclCount; j++) {
                if (slot[j] == a[i]) {
                    slot[j] = slot[orclCount - 1];
                    slot[orclCount - 1] = address(0);
                    orclCount--;
                    break;
                }
            }
        }
        emit Drop(a);
    }

    function setBar(uint256 bar_) external auth {
        require(bar_ > 0, "Median/quorum-is-zero");
        bar = bar_;
        emit SetBar(bar_);
    }

    function kiss(address a) external auth {
        require(a != address(0), "Median/no-contract-0");
        bud[a] = 1;
        emit Kiss(a);
    }

    function diss(address a) external auth {
        bud[a] = 0;
        emit Diss(a);
    }

    function kiss(address[] calldata a) external auth {
        for(uint i = 0; i < a.length; i++) {
            require(a[i] != address(0), "Median/no-contract-0");
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

contract MedianWBTCUSD is Median {
    function wat() public pure override returns (bytes32) {
        return "WBTCUSD";
    }
}