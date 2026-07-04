// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { IDiamondSwapV2Factory } from "../interfaces/IDiamondSwapV2Factory.sol";
import { DiamondSwapV2FactoryLayout, DiamondSwapV2FactoryStorage } from "../storage/DiamondSwapV2FactoryStorage.sol";
import { DiamondSwapV2Pair } from "../../DiamondSwapV2Pair.sol";
import { DiamondSwapV2Library } from "../../../periphery/libraries/DiamondSwapV2Library.sol";

import { EnumerableSet } from "@solidstate/data/EnumerableSet.sol";

import { Facet } from "@internal/eip2535/Facet.sol";

contract DiamondSwapV2FactoryFacet is Facet, IDiamondSwapV2Factory {
    using EnumerableSet for EnumerableSet.AddressSet;

    address public immutable override feeTo;
    uint32 public immutable override swapFee;

    constructor(address _feeReceiver, uint32 _swapFee) {
        feeTo = _feeReceiver;
        swapFee = _swapFee;
    }

    function allPairs(uint256 index) external view override returns (address pair) {
        EnumerableSet.AddressSet storage pairAddresses = DiamondSwapV2FactoryStorage.layout().pairAddresses;
        return pairAddresses.at(index);
    }

    function allPairsLength() external view override returns (uint256) {
        return DiamondSwapV2FactoryStorage.layout().totalPairs;
    }

    function getPair(address tokenA, address tokenB) external view override returns (address pair) {
        DiamondSwapV2FactoryLayout storage layout = DiamondSwapV2FactoryStorage.layout();
        if (!layout.active) {
            revert FactoryInactive();
        }
        (address token0, address token1) = DiamondSwapV2Library.sortTokens(tokenA, tokenB);
        bytes memory bytecode = type(DiamondSwapV2Pair).creationCode;
        bytes32 salt = keccak256(abi.encodePacked(token0, token1));
        bytes32 hash = keccak256(abi.encodePacked(bytes1(0xff), address(this), salt, keccak256(bytecode)));
        pair = address(uint160(uint256(hash)));
        if (!layout.pairAddresses.contains(pair)) {
            return address(0);
        }
        return pair;
    }

    function createPair(address tokenA, address tokenB) external override returns (address pair) {
        DiamondSwapV2FactoryLayout storage layout = DiamondSwapV2FactoryStorage.layout();
        if (!layout.active) {
            revert FactoryInactive();
        }

        if (tokenA == tokenB) {
            revert IdenticalAddresses();
        }

        (address token0, address token1) = DiamondSwapV2Library.sortTokens(tokenA, tokenB);

        // After sorting, token0 is always the lower address, if it is 0x0, revert
        if (token0 == address(0)) {
            revert ZeroAddress();
        }

        bytes memory bytecode = type(DiamondSwapV2Pair).creationCode;
        bytes32 salt = keccak256(abi.encodePacked(token0, token1));
        assembly {
            pair := create2(0, add(bytecode, 32), mload(bytecode), salt)
        }

        DiamondSwapV2Pair(pair).initialize(token0, token1, "DS-LP");

        // Add the pair address to the pairAddresses set
        layout.pairAddresses.add(pair);

        // Increment the total pairs, store in local stack for gas savings
        uint256 totalPairs = layout.totalPairs += 1;
        emit PairCreated(token0, token1, pair, totalPairs);
    }

    function setActive(bool newValue) external override onlyDeployer {
        DiamondSwapV2FactoryStorage.layout().active = newValue;
        emit ActiveChanged(newValue);
    }

    function getPairAddresses(uint256 start, uint256 count) external view override returns (address[] memory) {
        EnumerableSet.AddressSet storage pairAddresses = DiamondSwapV2FactoryStorage.layout().pairAddresses;
        uint256 length = pairAddresses.length();
        if (start >= length) {
            return new address[](0);
        }
        uint256 end = start + count;
        if (end > length) {
            end = length;
        }
        address[] memory result = new address[](end - start);
        for (uint256 i = start; i < end; i++) {
            result[i - start] = pairAddresses.at(i);
        }
        return result;
    }

    function feesEnabled() external view override returns (bool) {
        return feeTo != address(0);
    }
}
