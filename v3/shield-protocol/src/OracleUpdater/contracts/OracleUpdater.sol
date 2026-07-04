pragma solidity 0.8.4;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

interface IPairOracle {
    function update() external;
    function blockTimestampLast() external view returns (uint32);
}

contract OracleUpdater is Ownable {
    
    uint256 public PERIOD = 3600; // 60-minute TWAP (Time-Weighted Average Price)
    mapping(address => bool) public isOracleActive;
    mapping(address => bool) public isOracleExist;
    mapping(uint => address) public oracles;
    uint public totalOracles;

    constructor() {
        transferOwnership(msg.sender);
    }

    function addOracles(address[] calldata _oracles) external onlyOwner {
        uint oraclesLength = _oracles.length;
        for (uint256 i = 0; i < oraclesLength; i++) {
            address _oracle = _oracles[i];
            require(!isOracleExist[_oracle], "Oracle already exist");
            totalOracles++;
            isOracleActive[_oracle] = true;
            isOracleExist[_oracle] = true;
            oracles[totalOracles] = _oracle;
        }
    }

    function disableOracle(address _oracle) external onlyOwner {
        require(isOracleExist[_oracle], "Oracle not exist");
        isOracleActive[_oracle] = false;
    }

    function currentBlockTimestamp() internal view returns (uint32) {
        return uint32(block.timestamp % 2**32);
    }

    function update() external {
        uint _totalOracles = totalOracles;
        for (uint256 i = 1; i <= _totalOracles; i++) {
            IPairOracle _oracle = IPairOracle(oracles[i]);
            uint32 blockTimestampLast = _oracle.blockTimestampLast();
            bool isActive = isOracleActive[address(_oracle)];
            uint32 timeElapsed = currentBlockTimestamp() - blockTimestampLast;
            if (isActive && timeElapsed>= PERIOD) {
                _oracle.update();
            }
        }
    }
}
