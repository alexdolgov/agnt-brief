// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import './SquadswapPair.sol';
import './interfaces/ISquadswapPair.sol';

contract SquadswapFactory {
    bytes32 public constant INIT_CODE_PAIR_HASH = keccak256(abi.encodePacked(type(SquadswapPair).creationCode));
    uint256 public constant MAX_PROTOCOL_FEE = 900000; // 90%
    uint256 public constant MIN_PROTOCOL_FEE = 0; // 0%
    uint256 public constant MAX_DEFAULT_FEE = 100000; // 10%
    uint256 public constant MIN_DEFAULT_FEE = 0; // 0%

    address public feeTo;
    address public feeToSetter;
    address public poolManager;
    address public owner;
    uint256 public protocolFee;
    uint256 public defaultFee;


    mapping(address => mapping(address => address)) public getPair;
    address[] public allPairs;

    event PairCreated(address indexed token0, address indexed token1, address pair, uint);
    event SetProtocolFee(uint256 oldProtocolFee, uint256 newProtocolFee);

    constructor(address _feeToSetter, address _owner, address _poolManager, uint256 _protocolFee, uint256 _defaultFee) {
        feeToSetter = _feeToSetter;
        owner = _owner;
        setPoolManager(_poolManager);
        setProtocolFee(_protocolFee);
        setDefaultFee(_defaultFee);
    }

    function allPairsLength() external view returns (uint) {
        return allPairs.length;
    }

    function createPair(address tokenA, address tokenB) external returns (address pair) {
        require(tokenA != tokenB, 'Squadswap: IDENTICAL_ADDRESSES');
        (address token0, address token1) = tokenA < tokenB ? (tokenA, tokenB) : (tokenB, tokenA);
        require(token0 != address(0), 'Squadswap: ZERO_ADDRESS');
        require(getPair[token0][token1] == address(0), 'Squadswap: PAIR_EXISTS'); // single check is sufficient
        bytes memory bytecode = type(SquadswapPair).creationCode;
        bytes32 salt = keccak256(abi.encodePacked(token0, token1));
        assembly {
            pair := create2(0, add(bytecode, 32), mload(bytecode), salt)
        }
        ISquadswapPair(pair).initialize(token0, token1);
        getPair[token0][token1] = pair;
        getPair[token1][token0] = pair; // populate mapping in the reverse direction
        allPairs.push(pair);
        emit PairCreated(token0, token1, pair, allPairs.length);
    }

    function setFeeTo(address _feeTo) external {
        require(msg.sender == feeToSetter, 'Squadswap: FORBIDDEN');
        feeTo = _feeTo;
    }

    function setFeeToSetter(address _feeToSetter) external {
        require(msg.sender == feeToSetter, 'Squadswap: FORBIDDEN');
        feeToSetter = _feeToSetter;
    }

    function setPoolManager(address _poolManager) public {
        require(msg.sender == owner, 'Squadswap: FORBIDDEN');
        require(_poolManager != address(0), 'Squadswap: ZERO_ADDRESS');
        poolManager = _poolManager;
    }

    function setProtocolFee(uint256 _protocolFee) public {
        require(msg.sender == owner, 'Squadswap: FORBIDDEN');
        require(_protocolFee >= MIN_PROTOCOL_FEE && _protocolFee <= MAX_PROTOCOL_FEE, 'Squadswap: PROTOCOL_FEE_OUT_OF_RANGE');
        uint256 oldProtocolFee = protocolFee;
        protocolFee = _protocolFee;
        emit SetProtocolFee(oldProtocolFee, protocolFee);
    }

    function setDefaultFee(uint256 _defaultFee) public {
        require(msg.sender == owner, 'Squadswap: FORBIDDEN');
        require(_defaultFee >= MIN_DEFAULT_FEE && _defaultFee <= MAX_DEFAULT_FEE, 'Squadswap: DEFAULT_FEE_OUT_OF_RANGE');
        defaultFee = _defaultFee;
    }

    function transferOwnership(address _owner) public {
        require(msg.sender == owner, 'Squadswap: FORBIDDEN');
        owner = _owner;
    }
}
