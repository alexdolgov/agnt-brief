// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "./../interfaces/IBitFiStablecoinRedeemer.sol";
import "./../interfaces/IBitFiStablecoin.sol";
import "./../interfaces/IStakedBitFiStablecoin.sol";
import "./../interfaces/IBfusdMerkleStash.sol";

/**
 * @title BitFiStablecoinManager
 * @author BitFi Labs
 * @notice Manages redemption epochs, staking pool ratios, and global fee configurations.
 */
contract BitFiStablecoinManager is Initializable, UUPSUpgradeable, OwnableUpgradeable {
    using SafeERC20 for IERC20;

    // --- Errors ---
    error InvalidAddress();
    error NothingToSettle();
    error InvalidData();
    error InvalidStakingPool();

    // --- Events ---
    event EpochAdvanced(uint256 newEpoch);
    event FeeWhitelistUpdated(address indexed user, bool isWhitelisted);
    event PoolRatioUpdated(address indexed pool, uint256 epoch, uint256 newRatio, int256 interestChange);
    event BlacklistUpdated(address indexed account, bool isBlacklisted);
    event StashAdded(bytes32 indexed merkleRoot, uint256 totalAmount);

    struct Pool {
        bool active;
    }

    uint256 private constant RATIO_PRECISION = 1e8;

    IBitFiStablecoin public bfUSD;
    address public feeReceiver;
    mapping(address => bool) public isFeeWhitelisted;
    mapping(address => Pool) public stakingPools;
    mapping(address => bool) public blacklisted;

    // --- Epoch Management ---
    address public multisig;
    uint256 public currentEpoch;
    mapping(address => uint256) public lastSettledEpoch;
    uint256 public minEpochPeriod;
    uint256 public lastEpochAdvanceTime;

    IBfusdMerkleStash public merkleStash;

    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _owner,
        IBitFiStablecoin _bfUSD,
        address _multisig,
        address _feeReceiver,
        uint256 _minEpochPeriod
    ) external initializer {
        __UUPSUpgradeable_init();
        __Ownable_init(_owner);

        multisig = _multisig;
        currentEpoch = 1;
        bfUSD = _bfUSD;
        feeReceiver = _feeReceiver;
        minEpochPeriod = _minEpochPeriod;
        // lastEpochAdvanceTime = block.timestamp;
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {}

    function _checkMultisig() internal view {
        if (msg.sender != multisig) revert InvalidAddress();
    }

    // --- Staking ---

    function claimMultiWithdrawals(
        IStakedBitFiStablecoin[] calldata _pools,
        uint256[][] calldata _withdrawalIds
    ) external {
        if (_pools.length != _withdrawalIds.length) revert InvalidData();

        for (uint256 i; i < _pools.length; ++i) {
            IStakedBitFiStablecoin _pool = _pools[i];
            if (!stakingPools[address(_pool)].active) revert InvalidStakingPool();
            _pool.claimWithdrawalsFor(msg.sender, _withdrawalIds[i]);
        }
    }

    // --- Epoch & Settlement Management ---

    function advanceEpoch(IStakedBitFiStablecoin[] calldata _pools, uint256[] calldata _newRatios) external {
        _checkMultisig();
        if (block.timestamp < lastEpochAdvanceTime + minEpochPeriod) revert InvalidData();
        if (_pools.length != _newRatios.length) revert InvalidData();
        uint256 epoch = ++currentEpoch;
        lastEpochAdvanceTime = block.timestamp;
        uint256 endTime = block.timestamp + minEpochPeriod;

        for (uint256 i; i < _pools.length; ++i) {
            IStakedBitFiStablecoin _pool = _pools[i];
            uint256 _newRatio = _newRatios[i];
            _updatePoolRatio(_pool, epoch, _newRatio, endTime);
        }

        emit EpochAdvanced(epoch);
    }

    // --- Boost Rewards Stash Management ---

    function addStash(bytes32 _merkleRoot, uint256 _totalAmount) external {
        _checkMultisig();
        bfUSD.mint(address(merkleStash), _totalAmount);
        merkleStash.addStash(_merkleRoot);

        emit StashAdded(_merkleRoot, _totalAmount);
    }

    // --- Staking Pool Management ---

    function _updatePoolRatio(IStakedBitFiStablecoin _pool, uint256 _epoch, uint256 _newRatio, uint256 _endTime) internal {
        address poolAddress = address(_pool);
        Pool storage pool = stakingPools[poolAddress];
        if (!pool.active) revert InvalidStakingPool();

        uint256 totalSupply = _pool.totalSupply();
        uint256 targetAssets = (totalSupply * _newRatio) / RATIO_PRECISION;
        uint256 pending = _pool.pendingWithdrawals();
        if (pending > 0) {
            targetAssets += pending;
        }
        uint256 currentAssets = bfUSD.balanceOf(poolAddress);

        int256 netChange = 0;
        if (targetAssets > currentAssets) {
            netChange = int256(targetAssets - currentAssets);
        } else if (currentAssets > targetAssets) {
            netChange = -int256(currentAssets - targetAssets);
        }

        if (netChange > 0) {
            bfUSD.mint(poolAddress, uint256(netChange));
        } else if (netChange < 0) {
            bfUSD.burn(poolAddress, uint256(-netChange));
        }

        // Update pool ratio and emit event
        _pool.setRatio(_epoch, uint64(_newRatio), _endTime);
        emit PoolRatioUpdated(poolAddress, _epoch, _newRatio, netChange);
    }

    // --- Admin Functions ---

    function setMultisig(address _newMultisig) external onlyOwner {
        if (_newMultisig == address(0)) revert InvalidAddress();
        multisig = _newMultisig;
    }

    function setMinEpochPeriod(uint256 _minEpochPeriod) external onlyOwner {
        minEpochPeriod = _minEpochPeriod;
    }

    function setFeeReceiver(address _newFeeReceiver) external onlyOwner {
        if (_newFeeReceiver == address(0)) revert InvalidAddress();
        feeReceiver = _newFeeReceiver;
    }

    function setFeeWhitelist(address _user, bool _isWhitelisted) external onlyOwner {
        if (_user == address(0)) revert InvalidAddress();
        isFeeWhitelisted[_user] = _isWhitelisted;
        emit FeeWhitelistUpdated(_user, _isWhitelisted);
    }

    function setStakingPool(address _pool, bool _isActive) external onlyOwner {
        if (_pool == address(0)) revert InvalidAddress();
        stakingPools[_pool].active = _isActive;
    }

    function setBlacklisted(address _account, bool _isBlacklisted) external onlyOwner {
        if (_account == address(0)) revert InvalidAddress();
        blacklisted[_account] = _isBlacklisted;
        emit BlacklistUpdated(_account, _isBlacklisted);
    }

    function setMerkleStash(address _stash) external onlyOwner {
        merkleStash = IBfusdMerkleStash(_stash);
    }
}
