// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.6.12;

import "./interfaces/IThroneV2Factory.sol";
import "./ThroneV2Pair.sol";

contract ThroneV2Factory is IThroneV2Factory {
    address public override feeTo;
    address public override feeToSetter;

    mapping(address => mapping(address => address)) public override getPair;
    address[] public override allPairs;

    event PairCreated(address indexed token0, address indexed token1, address pair, uint);

    constructor() public {
        feeToSetter = msg.sender;
    }

    function allPairsLength() external view override returns (uint) {
        return allPairs.length;
    }

    function pairCodeHash() external pure returns (bytes32) {
        return keccak256(type(ThroneV2Pair).creationCode);
    }

    function createPair(address tokenA, address tokenB) external override returns (address pair) {
        require(tokenA != tokenB, "ThroneV2Factory::createPair::IDENTICAL_ADDRESSES");
        (address token0, address token1) = tokenA < tokenB ? (tokenA, tokenB) : (tokenB, tokenA);
        require(token0 != address(0), "ThroneV2Factory::createPair::ZERO_ADDRESS");
        require(getPair[token0][token1] == address(0), "ThroneV2Factory::createPair::PAIR_EXISTS"); // single check is sufficient
        bytes memory bytecode = type(ThroneV2Pair).creationCode;
        bytes32 salt = keccak256(abi.encodePacked(token0, token1));
        assembly {
            pair := create2(0, add(bytecode, 32), mload(bytecode), salt)
        }
        ThroneV2Pair(pair).initialize(token0, token1);
        getPair[token0][token1] = pair;
        getPair[token1][token0] = pair; // populate mapping in the reverse direction
        allPairs.push(pair);
        emit PairCreated(token0, token1, pair, allPairs.length);
    }

    function setFeeTo(address _feeTo) external override {
        require(msg.sender == feeToSetter, "ThroneV2Factory::setFeeTo::FORBIDDEN");
        feeTo = _feeTo;
    }

    function setFeeToSetter(address _feeToSetter) external override {
        require(msg.sender == feeToSetter, "ThroneV2Factory::setFeeToSetter::FORBIDDEN");
        feeToSetter = _feeToSetter;
    }
}
