pragma solidity =0.5.16;

import './interfaces/IGullV2Factory.sol';
import './GullV2Pair.sol';

contract GullV2Factory is IGullV2Factory {
    address public feeTo;
    address public feeToSetter;
    uint constant public DEFAULT_FEE = 25;

    /// if split is 1 / 6th, set this to 5
    uint public protocolFeeSplit;

    mapping(address => mapping(address => address)) public getPair;
    address[] public allPairs;

    event PairCreated(address indexed token0, address indexed token1, address pair, uint);
    event ProtocolFeeSplitUpdate(uint newSplit);

    constructor(address _feeToSetter) public {
        feeToSetter = _feeToSetter;
    }

    function allPairsLength() external view returns (uint) {
        return allPairs.length;
    }

    function createPair(address tokenA, address tokenB) external returns (address pair) {
        require(tokenA != tokenB, 'GullV2: IDENTICAL_ADDRESSES');
        (address token0, address token1) = tokenA < tokenB ? (tokenA, tokenB) : (tokenB, tokenA);
        require(token0 != address(0), 'GullV2: ZERO_ADDRESS');
        require(getPair[token0][token1] == address(0), 'GullV2: PAIR_EXISTS'); // single check is sufficient
        bytes memory bytecode = type(GullV2Pair).creationCode;
        bytes32 salt = keccak256(abi.encodePacked(token0, token1));
        assembly {
            pair := create2(0, add(bytecode, 32), mload(bytecode), salt)
        }
        IGullV2Pair(pair).initialize(token0, token1);
        IGullV2Pair(pair).setFee(DEFAULT_FEE);
        getPair[token0][token1] = pair;
        getPair[token1][token0] = pair; // populate mapping in the reverse direction
        allPairs.push(pair);
        emit PairCreated(token0, token1, pair, allPairs.length);
    }

    function setFeeTo(address _feeTo) external {
        require(msg.sender == feeToSetter, 'GullV2: FORBIDDEN');
        feeTo = _feeTo;
    }

    function setFeeToSetter(address _feeToSetter) external {
        require(msg.sender == feeToSetter, 'GullV2: FORBIDDEN');
        feeToSetter = _feeToSetter;
    }

    function setFee(address _pair, uint fee) external {
        require(msg.sender == feeToSetter, 'GullV2: FORBIDDEN');
        IGullV2Pair(_pair).setFee(fee);
    }

    function setProtocolFeeSplit(uint feeSplit) external {
        require(msg.sender == feeToSetter, 'GullV2: FORBIDDEN');
        protocolFeeSplit = feeSplit;
        emit ProtocolFeeSplitUpdate(feeSplit);
    }

}