// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.8;

import "src/modules/Version.sol";
import "src/modules/Dao.sol";
import "openzeppelin-contracts-upgradeable/proxy/utils/Initializable.sol";
import {INodeDAOPool, INodeDAOView} from "src/interfaces/INodeDAOView.sol";

contract NodeDAOView is Initializable, Version, Dao, INodeDAOView {
    address[] internal pools;

    constructor() {
        _disableInitializers();
    }

    function initialize(address _ownerAddr, address _dao, address[] memory _pools) public initializer {
        __Version_init(_ownerAddr);
        __Dao_init(_dao);

        pools = _pools;
    }

    /**
     * @notice get NodeDAO TVL
     */
    function getTotalTVL() external view returns (uint256) {
        uint256 _totalTVL = 0;
        uint256 _poolLength = pools.length;
        for (uint256 i = 0; i < _poolLength;) {
            _totalTVL += INodeDAOPool(pools[i]).totalAssets();
            unchecked {
                ++i;
            }
        }
        return _totalTVL;
    }

    /**
     * @notice get pools
     */
    function getPools() external view returns (address[] memory) {
        return pools;
    }

    /**
     * @notice getPoolAvailableETH
     * @param _pool pool address
     * @return _instantAvailableAmount instant withdrawal of available funds
     * @return _delayedAvailableAmount delayed withdrawal of available funds
     */
    function getPoolAvailableETH(address _pool)
        external
        view
        returns (uint256 _instantAvailableAmount, uint256 _delayedAvailableAmount)
    {
        if (!_isExistPool(_pool)) {
            revert Errors.PoolDoesNotExist();
        }

        uint256 _poolAmount = INodeDAOPool(_pool).getPoolAmount();

        uint256 _clVaultAmount = INodeDAOPool(_pool).getCLVaultAmount();

        uint256 _availableAmount = _poolAmount + _clVaultAmount;

        if (INodeDAOPool(_pool).typeId() == keccak256("RestakingPool")) {
            return (_availableAmount, _availableAmount);
        }

        uint256 _withdrawalAmount = INodeDAOPool(_pool).totalWithdrawalAmount();

        if (_withdrawalAmount > _clVaultAmount) {
            return (_poolAmount, _availableAmount);
        }

        return (_availableAmount - _withdrawalAmount, _availableAmount);
    }

    /**
     * @notice add pool
     */
    function addPool(address _pool) external onlyDao {
        if (_isExistPool(_pool)) {
            revert Errors.PoolAlreadyExist();
        }

        uint256 _totaETH = INodeDAOPool(_pool).totalAssets();
        uint256 _withdrawalAmount = INodeDAOPool(_pool).totalWithdrawalAmount();
        uint256 _clVaultAmount = INodeDAOPool(_pool).getCLVaultAmount();

        pools.push(_pool);

        emit PoolAdded(_pool, _totaETH, _withdrawalAmount, _clVaultAmount);
    }

    /**
     * @notice remove pool
     */
    function removePool(address _pool) external onlyDao {
        uint256 _poolLength = pools.length;
        for (uint256 i = 0; i < _poolLength;) {
            if (pools[i] == _pool) {
                pools[i] = pools[_poolLength - 1];
                pools.pop();
                emit PoolRemoved(_pool);
                return;
            }
            unchecked {
                ++i;
            }
        }
    }

    function _isExistPool(address _pool) internal view returns (bool) {
        bool found = false;
        uint256 poolLength = pools.length;
        for (uint256 i = 0; i < poolLength;) {
            if (address(pools[i]) == _pool) {
                found = true;
                break;
            }

            unchecked {
                ++i;
            }
        }

        return found;
    }

    /**
     * @notice Contract type id
     */
    function typeId() public pure override returns (bytes32) {
        return keccak256("NodeDAOView");
    }

    /**
     * @notice Contract version
     */
    function version() public pure override returns (uint8) {
        return 1;
    }

    /**
     * @notice set DAO address
     */
    function setDao(address _dao) public onlyOwner {
        _setDao(_dao);
    }
}
