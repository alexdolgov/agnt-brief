// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import "./interfaces/IVaporDEXFactory.sol";
import "./VaporDEXPair.sol";

contract VaporDEXFactory is IVaporDEXFactory {
    address public override feeCollector;
    address public override feeCollectorSetter;
    address public override migrator;

    mapping(address => mapping(address => address)) public override getPair;
    address[] public override allPairs;

    event PairCreated(address indexed token0, address indexed token1, address pair, uint256);
    event SetFeeCollector(address feeCollector_);
    event SetMigrator(address migrator_);
    event SetFeeCollectorSetter(address feeCollectorSetter_);

    constructor(address _feeCollectorSetter) {
        require(_feeCollectorSetter != address(0), "Address 0");

        feeCollectorSetter = _feeCollectorSetter;
    }

    function allPairsLength() external view override returns (uint256) {
        return allPairs.length;
    }

    function pairCodeHash() external pure returns (bytes32) {
        return keccak256(type(VaporDEXPair).creationCode);
    }

    function createPair(address tokenA, address tokenB) external override returns (address pair) {
        require(tokenA != tokenB, "VaporDEX: IDENTICAL_ADDRESSES");
        (address token0, address token1) = tokenA < tokenB ? (tokenA, tokenB) : (tokenB, tokenA);
        require(token0 != address(0), "VaporDEX: ZERO_ADDRESS");
        require(getPair[token0][token1] == address(0), "VaporDEX: PAIR_EXISTS"); // single check is sufficient
        bytes memory bytecode = type(VaporDEXPair).creationCode;
        bytes32 salt = keccak256(abi.encodePacked(token0, token1));
        assembly {
            pair := create2(0, add(bytecode, 32), mload(bytecode), salt)
        }
        VaporDEXPair(pair).initialize(token0, token1);
        getPair[token0][token1] = pair;
        getPair[token1][token0] = pair; // populate mapping in the reverse direction
        allPairs.push(pair);
        emit PairCreated(token0, token1, pair, allPairs.length);
    }

    function setFeeCollector(address _feeCollector) external override {
        require(msg.sender == feeCollectorSetter, "VaporDEX: FORBIDDEN");
        require(_feeCollector != address(0), "Address 0");

        feeCollector = _feeCollector;

        emit SetFeeCollector(_feeCollector);
    }

    function setMigrator(address _migrator) external override {
        require(msg.sender == feeCollectorSetter, "VaporDEX: FORBIDDEN");
        require(_migrator != address(0), "Address 0");
        migrator = _migrator;

        emit SetMigrator(_migrator);
    }

    function setFeeCollectorSetter(address _feeCollectorSetter) external override {
        require(msg.sender == feeCollectorSetter, "VaporDEX: FORBIDDEN");
        require(_feeCollectorSetter != address(0), "Address 0");

        feeCollectorSetter = _feeCollectorSetter;

        emit SetFeeCollectorSetter(_feeCollectorSetter);
    }
}
