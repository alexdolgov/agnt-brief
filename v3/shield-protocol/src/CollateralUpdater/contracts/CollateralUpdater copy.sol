pragma solidity 0.8.4;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

interface IPool {
    function refreshCollateralRatio() external;
    function lastRefreshCrTimestamp() external view returns (uint32);
    function refreshCooldown() external view returns (uint32);
    function collateralRatioPaused() external view returns (bool);
}

contract CollateralUpdater is Ownable {
    mapping(address => bool) public isPoolActive;
    mapping(address => bool) public isPoolExist;
    mapping(uint => address) public pools;
    uint public totalPools;

    constructor() {
        transferOwnership(msg.sender);
    }

    event CollateralRationUpdate(address indexed pool);

    function addPools(address[] calldata _pools) external onlyOwner {
        uint poolsLength = _pools.length;
        for (uint256 i = 0; i < poolsLength; i++) {
            address _pool = _pools[i];
            require(!isPoolExist[_pool], "Pool already exist");
            totalPools++;
            isPoolActive[_pool] = true;
            isPoolExist[_pool] = true;
            pools[totalPools] = _pool;
        }
    }

    function disablePool(address _pool) external onlyOwner {
        require(isPoolExist[_pool], "Pool not exist");
        isPoolActive[_pool] = false;
    }

    function refreshCollateralRatio() external {
        uint _totalPools = totalPools;
        for (uint256 i = 1; i <= _totalPools; i++) {
            IPool _pool = IPool(pools[i]);
            uint lastRefreshCrTimestamp = _pool.lastRefreshCrTimestamp();
            uint refreshCooldown = _pool.refreshCooldown();
            bool collateralRatioPaused = _pool.collateralRatioPaused();

            bool isActive = isPoolActive[address(_pool)];
            uint timeElapsed = block.timestamp - lastRefreshCrTimestamp;
            if (
                isActive &&
                !collateralRatioPaused &&
                timeElapsed >= refreshCooldown
            ) {
                _pool.refreshCollateralRatio();
                emit CollateralRationUpdate(address(_pool));
            }
        }
    }
}
