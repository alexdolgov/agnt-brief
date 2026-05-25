// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

import '@openzeppelin/contracts/access/Ownable.sol';
import '@uniswap/v2-core/contracts/interfaces/IUniswapV2Pair.sol';
import './PriceFeed.sol';
import './SlidingWindowOracle.sol';
import './ISlidingWindowOracle.sol';
import './UniswapV2Library.sol';


contract PriceFeedFactory is Ownable {
    uint public lastObservation;

    address[] internal _pairs;
    mapping(address => PriceFeed) public oracles;
    mapping(address => bool) public workers;

    event OracleCreated(address oracle);

    ISlidingWindowOracle public immutable slidingWindowOracle;
    address public immutable factory;
    uint public immutable periodSize;

    event WorkerSet(address worker, bool enabled);

    constructor(address _factory, uint _windowSize, uint8 _granularity) {
        slidingWindowOracle = ISlidingWindowOracle(address(new SlidingWindowOracle(_factory, _windowSize, _granularity)));
        periodSize = slidingWindowOracle.periodSize();
        factory = _factory;
    }

    function pairs() external view returns (address[] memory) {
        return _pairs;
    }

    function updatePair(address pair) external onlyOwner {
        _update(pair);
    }

    function setWorker(address worker, bool enabled) external onlyOwner {
        workers[worker] = enabled;
        emit WorkerSet(worker, enabled);
    }

    function addOracle(address tokenA, address tokenB) external onlyOwner {
        address pair = getPair(tokenA, tokenB);
        require(address(oracles[pair]) == address(0), "PriceFeedFactory: oracle exist");
        PriceFeed oracle = new PriceFeed(tokenA, tokenB, slidingWindowOracle);
        _pairs.push(pair);
        oracles[pair] = oracle;
        emit OracleCreated(address(oracle));
    }

    function getPair(address tokenA, address tokenB) public view returns (address) {
        return UniswapV2Library.pairFor(factory, tokenA, tokenB);
    }

    function getOracle(address tokenA, address tokenB) external view returns (PriceFeed) {
        return oracles[getPair(tokenA, tokenB)];
    }

    function work() external {
        require(workers[msg.sender], "PriceFeedFactory: !worker");
        require(workable(), "PriceFeedFactory: !work");
        for (uint i = 0; i < _pairs.length; i++) {
            _update(_pairs[i]);
        }
        lastObservation = block.timestamp;
    }

    function workable() public view returns (bool) {
        return block.timestamp / periodSize * periodSize > lastObservation;
    }

    function _update(address pair) internal {
        slidingWindowOracle.update(IUniswapV2Pair(pair).token0(), IUniswapV2Pair(pair).token1());
    }
}
