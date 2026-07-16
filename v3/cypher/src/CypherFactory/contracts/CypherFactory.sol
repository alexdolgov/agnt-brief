pragma solidity =0.5.16;

import "./interfaces/ICypherFactory.sol";
import "./CypherPair.sol";

contract CypherFactory is ICypherFactory {
    address public feeTo;
    address public feeToSetter;

    uint256 public constant OWNER_FEE_SHARE_MAX = 100000; // 100%
    uint256 public ownerFeeShare = 30000; // default value = 30%

    mapping(address => mapping(address => address)) public getPair;
    address[] public allPairs;

    event PairCreated(address indexed token0, address indexed token1, address pair, uint256);
    event OwnerFeeShareUpdated(uint256 oldOwnerFeeShare, uint256 newOwnerFeeShare);

    constructor(address _feeToSetter) public {
        feeToSetter = _feeToSetter;
    }

    function allPairsLength() external view returns (uint256) {
        return allPairs.length;
    }

    function createPair(address tokenA, address tokenB) external returns (address pair) {
        require(tokenA != tokenB, "Cypher: IDENTICAL_ADDRESSES");
        (address token0, address token1) = tokenA < tokenB ? (tokenA, tokenB) : (tokenB, tokenA);
        require(token0 != address(0), "Cypher: ZERO_ADDRESS");
        require(getPair[token0][token1] == address(0), "Cypher: PAIR_EXISTS"); // single check is sufficient
        bytes memory bytecode = type(CypherPair).creationCode;
        bytes32 salt = keccak256(abi.encodePacked(token0, token1));
        assembly {
            pair := create2(0, add(bytecode, 32), mload(bytecode), salt)
        }
        ICypherPair(pair).initialize(token0, token1);
        getPair[token0][token1] = pair;
        getPair[token1][token0] = pair; // populate mapping in the reverse direction
        allPairs.push(pair);
        emit PairCreated(token0, token1, pair, allPairs.length);
    }

    function setFeeTo(address _feeTo) external {
        require(msg.sender == feeToSetter, "Cypher: FORBIDDEN");
        feeTo = _feeTo;
    }

    function setFeeToSetter(address _feeToSetter) external {
        require(msg.sender == feeToSetter, "Cypher: FORBIDDEN");
        feeToSetter = _feeToSetter;
    }

    function setOwnerFeeShare(uint newOwnerFeeShare) external {
        require(msg.sender == feeToSetter, "Cypher: FORBIDDEN");
        require(newOwnerFeeShare > 0, "Cypher: ownerFeeShare can't be null");
        require(newOwnerFeeShare <= OWNER_FEE_SHARE_MAX, "Cypher: ownerFeeShare mustn't exceed maximum");
        emit OwnerFeeShareUpdated(ownerFeeShare, newOwnerFeeShare);
        ownerFeeShare = newOwnerFeeShare;
    }
}
