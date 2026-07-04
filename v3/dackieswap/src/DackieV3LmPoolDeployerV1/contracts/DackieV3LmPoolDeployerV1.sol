// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity =0.7.6;

import '@pancakeswap/v3-core/contracts/interfaces/IDackieV3Factory.sol';
import '@pancakeswap/v3-periphery/contracts/interfaces/INonfungiblePositionManager.sol';

import './DackieV3LmPoolV1.sol';
import './interfaces/IMasterChefV3.sol';
import './interfaces/IDackieV3PoolWithLMPool.sol';

/// @dev This contract is for Master Chef to create a corresponding LmPool when
/// adding a new farming pool. As for why not just create LmPool inside the
/// Master Chef contract is merely due to the imcompatibility of the solidity
/// versions.
contract DackieV3LmPoolDeployerV1 {
    struct Parameters {
        address pool;
        address masterChef;
        address oldLMPool;
    }

    Parameters public parameters;

    address public immutable masterChef;

    address public owner;

    // Avoid Duplicate Deployment Contracts.
    mapping(address => bool) public LMPoolUpdateFlag;

    // Add whiteList, double check , avoid set wrong V3 pool.
    mapping(address => bool) public whiteList;

    event OwnerChanged(address indexed oldOwner, address indexed newOwner);
    event UpdateWhiteList(address indexed pool, bool status);
    event NewLMPool(address indexed pool, address indexed LMPool);

    modifier onlyOwner() {
        require(msg.sender == owner, 'Not Owner');
        _;
    }

    constructor(address _masterChef) {
        masterChef = _masterChef;
        owner = msg.sender;
        emit OwnerChanged(address(0), msg.sender);
    }

    function setOwner(address _owner) external onlyOwner {
        require(_owner != address(0), 'Zero address');
        emit OwnerChanged(owner, _owner);
        owner = _owner;
    }

    function updateWhiteList(address[] calldata pools, bool[] calldata status) external onlyOwner {
        require(pools.length == status.length, 'Length inconsistency');
        for (uint256 i = 0; i < pools.length; i++) {
            require(pools[i] != address(0), 'Zero address');
            whiteList[pools[i]] = status[i];
            emit UpdateWhiteList(pools[i], status[i]);
        }
    }

    /// @dev Deploys a LmPool
    /// @param pool The contract address of the PancakeSwap V3 pool
    function deploy(IDackieV3PoolWithLMPool pool) external onlyOwner returns (IDackieV3LmPool lmPool) {
        require(whiteList[address(pool)], 'Not in whiteList');

        require(!LMPoolUpdateFlag[address(pool)], 'Already Updated');
        LMPoolUpdateFlag[address(pool)] = true;

        address oldLMPool = pool.lmPool();
        parameters = Parameters({pool: address(pool), masterChef: masterChef, oldLMPool: oldLMPool});

        lmPool = new DackieV3LmPoolV1{salt: keccak256(abi.encode(address(pool), masterChef, block.timestamp))}();

        delete parameters;

        // Set new LMPool for pancake v3 pool.
        IDackieV3Factory(INonfungiblePositionManager(IMasterChefV3(masterChef).nonfungiblePositionManager()).factory())
        .setLmPool(address(pool), address(lmPool));

        emit NewLMPool(address(pool), address(lmPool));
    }
}