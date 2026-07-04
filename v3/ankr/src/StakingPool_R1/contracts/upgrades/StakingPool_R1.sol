// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

import "@openzeppelin/contracts-upgradeable/utils/math/MathUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import "../external/ethereum/DepositContract.sol";
import "../external/gnosis/IDepositContract.sol";
import "../interfaces/IProviderRegistry.sol";
import "../interfaces/IStakingPool.sol";
import "../ValidatorManager.sol";
import "../libs/Utils.sol";

// @dev Manage staking pools of providers and store stakers data
contract StakingPool_R1 is IStakingPool, OwnableUpgradeable {

    using MathUpgradeable for uint256;

    uint72 public constant KEY_CAPACITY = 32 ether;

    // global staking configuration set
    IStakingConfig internal _config;
    // address of deposit contract
    address public depositContract;
    // minimal stake amount just to exclude dust
    uint64 public minStakeAmount;

    // stores pool data
    mapping(address => Pool) private _pools;
    // stores staker data
    mapping(address => Staker) internal _stakers;

    struct Pool {
        // amount that was deposited to beacon chain
        uint128 stakedBalance;
        // amount that was not deposited to beacon chain
        uint128 pendingBalance;

        // total supply of validator shares
        uint128 validationSharesSupply;
        // total supply of tip shares (applied only for ETH staking)
        uint128 tipSharesSupply;
    }

    struct Staker {
        // total staked amount to provider
        mapping(address => uint128) staked;
        // total shares staked to provider;
        mapping(address => uint128) shares;
    }

    modifier onlyGovernance() {
        require(msg.sender == _config.getGovernance(), "StakingPool: only governance not allowed");
        _;
    }

    modifier onlyConsensus() {
        require(msg.sender == _config.getConsensus(), "StakingPool: only consensus allowed");
        _;
    }

    modifier onlyNative() {
        require(_config.isNative(), "StakingPool: native staking are disabled");
        _;
    }

    modifier onlyERC20() {
        require(!_config.isNative(), "StakingPool: erc20 staking are disabled");
        _;
    }

    function initialize(IStakingConfig config, address _depositContract) public initializer {
        __Ownable_init();
        _config = config;
        minStakeAmount = 1e13;
        depositContract = _depositContract;
    }

    // stake method for Gnosis staking, can be applied to any ERC20 staking
    function stakeGNO(address provider, uint128 amount) external override onlyERC20 {
        require(_config.getStakeToken().transferFrom(msg.sender, address(this), amount), "StakingPool: cannot transfer tokens");
        _stake(msg.sender, provider, amount);
    }

    // stake method for ETH staking, can be applie to any native staking
    function stake(address provider) external override onlyNative payable {
        _stake(msg.sender, provider, uint128(msg.value));
    }

    function _stake(address staker, address provider, uint128 amount) internal {
        require(amount >= minStakeAmount, "StakingPool: value must be greater minimum stake amount");
        require(amount % minStakeAmount == 0, "StakingPool: value must be multiple of minimum stake amount");
        require(getAvailable(provider) >= amount, "StakingPool: the maximum staked value is exceeded for provider"); // it also checks that provider registered

        Pool storage pool = _pools[provider];
        Staker storage stakerData = _stakers[staker];

        // using this amount in logs backend can understand how many keys should be deposited to beacon chain after each stake
        uint128 toStake = _calcToStake(pool, amount, KEY_CAPACITY);

        // TODO: implement tip rate for NATIVE eth staking
        // shares can be safety reduce to uint128, because value will be never greater than 1e18
        uint256 rate = _calcValidationRate(pool, _getTotalCommission(provider), _config.getValidatorManager().getPendingReward(provider));
        uint256 validationShares = uint256(amount).mulDiv(rate, 1e18, MathUpgradeable.Rounding.Up);

        pool.validationSharesSupply += uint128(validationShares);
        pool.pendingBalance += amount;

        stakerData.shares[provider] += uint128(validationShares);
        stakerData.staked[provider] += amount;

        emit StakePending(staker, provider, amount, stakerData.staked[provider], validationShares);
        emit StakedPool(provider, pool.pendingBalance, pool.stakedBalance, toStake);
    }

    // calculate how amount will increase available to stake amount
    function _calcToStake(Pool memory pool, uint128 amount, uint72 keyCapacity) internal pure returns (uint128) {
        return pool.pendingBalance % keyCapacity + amount;
    }

    // call DepositContract to deposit new key
    function depositToBeacon(address provider, bytes calldata pubkey, bytes calldata withdrawal_credentials, bytes calldata signature, bytes32 deposit_data_root) external override onlyConsensus {
        Pool storage pool = _pools[provider];
        require(pool.pendingBalance / KEY_CAPACITY >= 1, "StakingPool: not enough pending balance to make deposit");
        pool.pendingBalance -= KEY_CAPACITY;
        pool.stakedBalance += KEY_CAPACITY;

        _config.getProviderRegistry().useKeys(provider, 1); // mark 1 key as used for provider
        if (_config.isNative()) {
            IEthDepositContract(depositContract).deposit{value : KEY_CAPACITY}(pubkey, withdrawal_credentials, signature, deposit_data_root);
        } else {
            require(_config.getStakeToken().approve(depositContract, KEY_CAPACITY), "StakingPool: cannot approve");
            IGnoDepositContract(depositContract).deposit(pubkey, withdrawal_credentials, signature, deposit_data_root, KEY_CAPACITY);
        }
        emit StakePushed(provider, pubkey, withdrawal_credentials, pool.stakedBalance, pool.pendingBalance);
    }

    // @return total staked to provider (sum of pending and staked balance) and total capacity of provider
    function getProviderBalance(address provider) public override view returns (uint128 balance, uint128 totalCap) {
        Pool memory pool = _pools[provider];
        return (_calcTotal(pool), _config.getProviderRegistry().getTotalCapacity(provider));
    }

    // same as getProviderBalance, but accept array as parameter
    // @param providers array of providers
    // @return arrays of total staked and total capacity
    function getProvidersBalance(address[] calldata providers) external override view returns (uint128[] memory balances, uint128[] memory totalCaps) {
        uint128[] memory staked = new uint128[](providers.length);
        uint128[] memory max = new uint128[](providers.length);

        for (uint256 i = 0; i < providers.length; i++) {
            (uint128 s, uint128 m) = getProviderBalance(providers[i]);
            staked[i] = s;
            max[i] = m;
        }

        return (staked, max);
    }

    // @return available amount to stake
    function getAvailable(address provider) public override view returns (uint128) {
        Pool memory pool = _pools[provider];
        return _config.getProviderRegistry().getTotalCapacity(provider) - _calcTotal(pool);
    }

    // @return uint128 staked to provider amount, uint128 staked shares to provider amount
    function getStaker(address provider, address staker) external override view returns (uint128 staked, uint128 shares) {
        Staker storage stakerData = _stakers[staker];
        return (stakerData.staked[provider], stakerData.shares[provider]);
    }

    // @param providers array of providers
    // @return array of total stakes to providers
    function getStakesTo(address[] calldata providers) external override view returns (uint128[] memory) {
        uint128[] memory stakes = new uint128[](providers.length);

        for (uint32 i = 0; i < providers.length; i++) {
            stakes[i] = _stakers[msg.sender].staked[providers[i]];
        }

        return stakes;
    }

    // @return validation reward for staker on beacon chain
    function getValidationReward(address provider, address staker) public override view returns (uint256) {
        Pool storage pool = _pools[provider];
        Staker storage stakerData = _stakers[staker];

        uint256 rate = _calcValidationRate(pool, _getTotalCommission(provider), _config.getValidatorManager().getPendingReward(provider));
        uint256 balance = uint256(stakerData.shares[provider]).mulDiv(1e18, rate);
        return balance - stakerData.staked[provider];
    }

    // calculate total pending validation reward for all staked providers
    function getTotalValidationReward(address staker) external override view returns (uint256) {
        address[] memory providers = _config.getProviderRegistry().getProviders();
        uint256 total = 0;

        for (uint256 i = 0; i < providers.length; i++) {
            total += getValidationReward(providers[i], staker);
        }
        return total;
    }

    // @return sum of provider and system commissions
    function _getTotalCommission(address provider) internal view returns (uint16) {
        (uint16 commission,,,) = _config.getProviderRegistry().getProvider(provider);
        return _config.getCommission() + commission;
    }

    // @return current validation rate to calculate shares
    function _calcValidationRate(Pool memory pool, uint16 commission, uint256 pendingRewards) internal pure returns (uint256) {
        uint256 total = uint256(_calcTotal(pool));
        if (total == 0) {
            return 1e18;
        }
        return (uint256(pool.validationSharesSupply) * 1e18).ceilDiv(total + Utils.calcCommission18(pendingRewards, 10000 - commission));
    }

    // @return sum of staked and pending balances
    function _calcTotal(Pool memory pool) internal pure returns (uint128) {
        return pool.stakedBalance + pool.pendingBalance;
    }
}
