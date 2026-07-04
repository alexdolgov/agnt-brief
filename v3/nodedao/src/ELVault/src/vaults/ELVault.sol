// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.8;

import "src/modules/Version.sol";
import "src/modules/Dao.sol";
import "openzeppelin-contracts-upgradeable/proxy/utils/Initializable.sol";
import {Errors} from "src/libraries/Errors.sol";
import "src/interfaces/IELVault.sol";
import "src/interfaces/IPoolConfig.sol";

/**
 * @title Execution layer fund vault contract
 * @author NodeDAO
 * @notice The contract cannot be upgraded. Allocate rewards based on global configuration.
 */
contract ELVault is Initializable, Version, Dao, IELVault {
    address payable public pool;
    address payable public daoTreasury;
    address public poolConfig;

    uint256 internal daoRewards;
    uint256 internal unclaimedRewards;

    modifier onlyPool() {
        if (msg.sender != pool) revert Errors.PermissionDenied();
        _;
    }

    constructor() {
        _disableInitializers();
    }

    function initialize(address _ownerAddr, address _pool, address _dao, address _daoTreasury, address _poolConfig)
        public
        initializer
    {
        __Version_init(_ownerAddr);
        __Dao_init(_dao);

        pool = payable(_pool);
        daoTreasury = payable(_daoTreasury);
        poolConfig = _poolConfig;
    }

    /**
     * @notice get dao rewards
     */
    function getDaoRewards() external view returns (uint256) {
        (, uint256 _daoRewards,) = _calcRewards();
        return _daoRewards;
    }

    /**
     * @notice get pool rewards
     */
    function getPoolRewards() external view returns (uint256) {
        (, uint256 _daoRewards, uint256 _unclaimedRewards) = _calcRewards();
        return (_unclaimedRewards - _daoRewards);
    }

    /**
     * @notice claim dao rewards
     */
    function claimDaoRewards() external nonReentrant {
        (, uint256 _daoRewards, uint256 _unclaimedRewards) = _calcRewards();

        daoRewards = 0;
        unclaimedRewards = _unclaimedRewards - _daoRewards;

        address payable _daoTreasury = daoTreasury;

        (bool success,) = _daoTreasury.call{value: _daoRewards}("");
        if (!success) revert Errors.TransferFailed();

        emit DaoRewardsClaimed(_daoTreasury, _daoRewards);
    }

    /**
     * @notice reinvest pool rewards to pool
     */
    function reinvestment() external nonReentrant onlyPool {
        (uint256 _outstandingRewards, uint256 _daoRewards, uint256 _unclaimedRewards) = _calcRewards();

        address _to = pool;
        uint256 _amount = _unclaimedRewards - _daoRewards;
        if (_amount == 0) return;

        if (_outstandingRewards != 0) {
            daoRewards = _daoRewards;
        }

        unclaimedRewards = _daoRewards;

        (bool success,) = _to.call{value: _amount}("");
        if (!success) revert Errors.TransferFailed();
        emit Transfer(_to, _amount);
    }

    /**
     * @notice Calculate rewards based on commission ratio
     */
    function _calcRewards()
        internal
        view
        returns (uint256 _outstandingRewards, uint256 _daoRewards, uint256 _unclaimedRewards)
    {
        _unclaimedRewards = address(this).balance;
        _outstandingRewards = _unclaimedRewards - unclaimedRewards;
        if (_outstandingRewards == 0) {
            return (0, daoRewards, _unclaimedRewards);
        }
        (uint256 rate, uint256 percent) = IPoolConfig(poolConfig).getCommissionRate();
        _daoRewards = _outstandingRewards * rate / percent;

        return (_outstandingRewards, daoRewards + _daoRewards, _unclaimedRewards);
    }

    // ----------------setting---------------- //

    function setDao(address _dao) external onlyOwner {
        if (_dao == address(0)) revert Errors.InvalidAddr();
        emit DaoChanged(dao, _dao);
        dao = _dao;
    }

    function setDaoTreasury(address _daoTreasury) external onlyDao {
        if (_daoTreasury == address(0)) revert Errors.InvalidAddr();
        emit DaoTreasuryChanged(address(daoTreasury), _daoTreasury);
        daoTreasury = payable(_daoTreasury);
    }

    function setPoolConfig(address _poolConfig) external onlyDao {
        if (_poolConfig == address(0)) revert Errors.InvalidAddr();
        emit PoolConfigChanged(address(poolConfig), _poolConfig);
        poolConfig = _poolConfig;
    }

    function changePool(address _pool) public onlyOwner {
        emit PoolChanged(pool, _pool);
        pool = payable(_pool);
    }

    receive() external payable {
        emit Received(msg.value);
    }

    /**
     * @notice Contract type id
     */
    function typeId() public pure override returns (bytes32) {
        return keccak256("ELVault");
    }

    /**
     * @notice Contract version
     */
    function version() public pure override returns (uint8) {
        return 1;
    }
}
