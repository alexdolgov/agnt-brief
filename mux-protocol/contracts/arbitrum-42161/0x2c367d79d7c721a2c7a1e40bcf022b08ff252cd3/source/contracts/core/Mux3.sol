// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.26;

import "../core/management/FacetManagement.sol";
import "../core/trade/FacetTrade.sol";
import "../core/reader/FacetReader.sol";

contract Mux3 is Mux3FacetBase, FacetTrade, FacetManagement, FacetReader {}
