//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.6.12;

import "@openzeppelin/contracts/access/Ownable.sol";
import "../oracle/PairOracle.sol";

contract BatchUpdateOracle is Ownable {

    address[] public pairOracles;
    mapping(address => bool) public pairOracleStatus;
    uint32 public blockTimestampLast;
    uint256 public PERIOD = 600; // 10-minute TWAP (time-weighted average price)

    function insertPair(address _pair) external onlyOwner {
        require(pairOracleStatus[_pair] == false, 'BatchUpdate: insert before');
        pairOracles.push(_pair);
        pairOracleStatus[_pair] = true;
    }

    function deletePair(address _pair) external onlyOwner {
        pairOracleStatus[_pair] = false;
    }

    function currentBlockTimestamp() internal view returns (uint32) {
        return uint32(block.timestamp % 2**32);
    }

    function update() external{
        uint256 _l = pairOracles.length;
        uint32 _blockTimestamp = currentBlockTimestamp();
        for (uint i = 0; i < _l; i++) {
            address _pair = pairOracles[i];
            if (pairOracleStatus[_pair]) {
                uint32 _blockTimestampLast = PairOracle(_pair).blockTimestampLast();
                if (_blockTimestamp - _blockTimestampLast >= PERIOD) {
                    PairOracle(_pair).update();
                }
            }
        }
        blockTimestampLast = _blockTimestamp;
    }
}