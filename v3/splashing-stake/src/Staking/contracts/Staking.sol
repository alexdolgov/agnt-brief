// SPDX-License-Identifier: BUSL-1.1
// Commercial use prohibited until 2028-12-31, then MIT
pragma solidity ^0.8.13;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import "@openzeppelin/contracts/proxy/ERC1967/ERC1967Proxy.sol";

import "./interfaces/ICommon.sol";
import "./interfaces/IStakingStorage.sol";
import "./interfaces/IOrderQueue.sol";
import "./RewardStorage.sol";
import "./SpSei.sol";
import "hardhat/console.sol";

contract Staking is
    Initializable,
    OwnableUpgradeable,
    UUPSUpgradeable,
    PausableUpgradeable
{
    IStakingStorage private stakingStorage;
    RewardStorage public rewardStorage;
    SpSei public spSei;

    uint256 public lastClaimTime;

    uint256 public lastRefreshTime;
    uint256 public refreshInterval;

    uint256 public lastFillTime;
    uint256 public fillInterval;

    bool private initialized;

    uint256 public constant MIN_CLAIM_INTERVAL = 1 * 60;
    uint256 public constant HOUR = 60 * 60;
    uint256 public constant WITHDRAW_DAYS = 21 days; // stg: 5 minutes to claim
    uint256 public constant MIN_STAKE_AMOUNT = 10 ** 17; // 0.1 sei
    uint256 public constant MIN_UNSTAKE_AMOUNT = 10 ** 17; // 0.1 sei
    uint256 public constant NORMALIZE_FACTOR = 10 ** 12;
    uint256 public constant MAX_FEE_RATIO = RATIO_DENOM / 10; // 10%
    uint8 public constant MAX_FILL_LIMIT = 16;

    uint256 public bufferBalance;
    uint256 public targetBufferBalance;
    uint256 public bufferRatio;

    uint256 public accumulatedFee;
    uint256 public accumulatedVolume;

    // withdraw order queue
    IOrderQueue public orderQueue;
    mapping(address => uint256) public claimableBalance;

    // protocol fee

    // intant unkstaking fee
    uint256 public constant MAX_TIERS = 3;

    uint256[] bufferTiers;
    uint256[] bufferTierFeeRatios;

    // protocol fee
    uint256 public spreadFeeRate;
    uint256 public bufferFeeRate;
    uint256 public unstakeFeeRate;

    uint256 public protocolFee;

    uint256 public constant RATIO_DENOM = 10 ** 18;

    event Staked(
        address indexed user,
        uint256 inAmount,
        uint256 lstAmount,
        uint256 stakeAmount,
        uint256 bufferBalance,
        uint256 currentExchangeRatio,
        uint256 timestamp
    );
    event Unstaked(
        address indexed user,
        uint256 amount,
        uint256 unstakeAmount,
        uint256 currentExchangeRatio,
        uint256 timestamp
    );
    event InstantUnstaked(
        address indexed user,
        uint256 amount,
        uint256 unstakeAmount,
        uint256 bufferBalance,
        uint256 fee,
        uint256 timestamp
    );
    event Claimed(
        address indexed user,
        uint256 amount,
        uint256 fee,
        uint256 timestamp
    );
    event Refreshed(uint256 timestamp);
    event Withdrawed(address indexed user, uint256 amount, uint256 timestamp);
    event Reinvested(uint256 amount, uint256 timestamp);
    event UnstakeValidatorsSet(string[] unstakeValidators, uint256 timestamp);

    // admin events
    event ProtocolFeesClaimed(uint256 amount, uint256 timestamp);
    event ValidatorPrioritySet(
        string[] priorityList,
        bool isInPriority,
        uint256 timestamp
    );
    event ValidatorTargetAmountSet(
        string[] validators,
        uint256[] targetAmounts,
        uint256 timestamp
    );
    event ValidatorAdded(string validator, uint256 targetAmount, uint256 timestamp);
    event ValidatorRemoved(string validator, uint256 timestamp);
    event Redistributed(string from, string to, uint256 amount, uint256 timestamp);
    event TiersSet(uint256[] tiers, uint256[] tierFeeRatios, uint256 timestamp);
    event ParamsUpdated(string param, uint256 value, uint256 timestamp);

    constructor() {
        _disableInitializers();
    }

    function initialize() public initializer {
        __Ownable_init(msg.sender);
        __UUPSUpgradeable_init();
        __Pausable_init();

        // Set initial values here
        uint256 defaultSpreadFee = RATIO_DENOM / 20; // 5%
        uint256 defaultBufferFeeRate = RATIO_DENOM / 20; // 5%
        uint256 defaultUnstakeFee = 0; // 0%
        uint256 defaultBufferTierFee = RATIO_DENOM / 500; // 0.2%

        // Deploy StakingStorage as proxy
        spSei = new SpSei(address(this));

        bufferTiers = new uint256[](1);
        bufferTierFeeRatios = new uint256[](1);
        bufferTiers[0] = 0;
        bufferTierFeeRatios[0] = defaultBufferTierFee;

        spreadFeeRate = defaultSpreadFee;
        bufferFeeRate = defaultBufferFeeRate;
        unstakeFeeRate = defaultUnstakeFee;

        refreshInterval = 10 * 60; // default 10 minutes
        fillInterval = 10 * 60; // default 10 minutes
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal override onlyOwner {}

    // a separate function to initialize the contract
    // because the default initializer does not work with precompile contracts
    function init(
        address _stakingStorage,
        address _orderQueue,
        string[] memory _validators,
        uint256[] memory _targetAmounts
    ) public {
        require(!initialized, "already initialized");

        stakingStorage = IStakingStorage(_stakingStorage);
        orderQueue = IOrderQueue(_orderQueue);

        RewardStorage _rewardStorage = new RewardStorage();
        rewardStorage = RewardStorage(
            payable(
                address(
                    new ERC1967Proxy(
                        address(_rewardStorage),
                        abi.encodeWithSelector(
                            RewardStorage.initialize.selector,
                            msg.sender,
                            address(this)
                        )
                    )
                )
            )
        );

        stakingStorage.init(
            address(rewardStorage),
            _validators,
            _targetAmounts
        );
        initialized = true;
    }

    // must stake over uSei decimals, e.g. not allow to stake 1_000000.1 usei
    function stake(bool isDonation) public payable whenNotPaused {
        uint256 inAmount = msg.value;
        require(inAmount >= MIN_STAKE_AMOUNT, "amount too small");

        if (isDonation) {
            require(msg.sender == owner(), "only owner can donate");
        }

        refreshPool();

        uint256 currentExchangeRatio = getExchangeRatio();

        uint256 lstAmount = (currentExchangeRatio * inAmount) / RATIO_DENOM;
        if (isDonation) {
            lstAmount = 0;
        }

        uint256 stakeAmount = fillBuffer(inAmount);
        stakingStorage.distributeStake{value: stakeAmount}();

        // mint and transfer
        spSei.mint(msg.sender, lstAmount);
        accumulatedVolume += inAmount;

        stakingStorage.refreshUnstake();
        // santiy check for exchange ratio
        require(
            getExchangeRatio() <= currentExchangeRatio,
            "exchange ratio is not correct"
        );

        emit Staked(
            msg.sender,
            inAmount,
            lstAmount,
            stakeAmount,
            bufferBalance,
            currentExchangeRatio,
            block.timestamp
        );
    }

    function unstake(uint256 amount) public whenNotPaused {
        refreshPool();

        uint256 currentExchangeRatio = getExchangeRatio();

        require(
            spSei.transferFrom(msg.sender, address(this), amount),
            "transfer failed"
        );
        spSei.burn(address(this), amount);

        uint256 unstakeAmount = (amount * RATIO_DENOM) / currentExchangeRatio;

        require(unstakeAmount >= MIN_UNSTAKE_AMOUNT, "amount too small");

        (, uint256 normalizedUnstakeAmount) = getNormalizeAmount(unstakeAmount);

        require(
            normalizedUnstakeAmount / NORMALIZE_FACTOR <=
                stakingStorage.totalStake(),
            "delegated stake is not enough"
        );
        
        stakingStorage.distributeUnstake(
            normalizedUnstakeAmount / NORMALIZE_FACTOR
        );

        // create a withdraw order
        WithdrawOrder memory order = WithdrawOrder(
            orderQueue.getFullOrderQueueLength(),
            normalizedUnstakeAmount,
            block.timestamp,
            msg.sender
        );

        orderQueue.setBatchOrderId(order.orderId, stakingStorage.getOrderIndex());

        orderQueue.enqueueOrder(order);
        accumulatedVolume += normalizedUnstakeAmount;

        stakingStorage.refreshUnstake();
        // santiy check for exchange ratio
        require(
            getExchangeRatio() <= currentExchangeRatio,
            "exchange ratio is not correct"
        );
        emit Unstaked(
            msg.sender,
            amount,
            normalizedUnstakeAmount,
            currentExchangeRatio,
            block.timestamp
        );
    }

    function instantUnstake(uint256 amount) public whenNotPaused {
        refreshPool();

        require(
            spSei.transferFrom(msg.sender, address(this), amount),
            "transfer failed"
        );
        uint256 currentExchangeRatio = getExchangeRatio();

        spSei.burn(address(this), amount);
        uint256 unstakeAmount = (amount * RATIO_DENOM) / currentExchangeRatio;
        (bool success, uint256 fee) = getFeeWithBuffer(unstakeAmount);
        require(success, "buffer is not enough");

        // distribute fee
        // 1. protocol fee
        uint256 feeToProtocol = (fee * spreadFeeRate) / RATIO_DENOM;
        protocolFee += feeToProtocol;
        // 2. remaining fee back to buffer
        bufferBalance = bufferBalance - unstakeAmount + fee - feeToProtocol;

        require(unstakeAmount >= MIN_UNSTAKE_AMOUNT, "amount too small");

        payable(msg.sender).transfer(unstakeAmount - fee);
        accumulatedVolume += unstakeAmount;
        accumulatedFee += fee;
        stakingStorage.refreshUnstake();

        emit InstantUnstaked(
            msg.sender,
            amount,
            unstakeAmount,
            bufferBalance,
            fee,
            block.timestamp
        );
    }

    function claim() public whenNotPaused {
        refreshPool();

        uint256 amount = claimableBalance[msg.sender];
        claimableBalance[msg.sender] = 0;

        uint256 unstakeFee = (amount * unstakeFeeRate) / RATIO_DENOM;
        uint256 claimableAmount = amount - unstakeFee;

        accumulatedFee += unstakeFee;
        stakingStorage.refreshUnstake();

        payable(msg.sender).transfer(claimableAmount);
        emit Claimed(msg.sender, claimableAmount, unstakeFee, block.timestamp);
    }

    // ---internal functions---
    function refreshPool() internal {
        if (block.timestamp - lastFillTime > fillInterval) {
            fillWithdrawOrder();
            lastFillTime = block.timestamp;
        }
        
        if (block.timestamp - lastRefreshTime < refreshInterval) {
            return;
        }

        stakingStorage.claimRewards();
        reinvestRewards();
        targetBufferBalance =
            (getTotalSei() * bufferRatio) /
            RATIO_DENOM;
        lastRefreshTime = block.timestamp;
        emit Refreshed(block.timestamp);
    }

    function fillWithdrawOrder() private {
        // cap the number of withdraw orders to fill to ensure the gas limit and fairness
        uint8 limit = MAX_FILL_LIMIT;
        while (
            orderQueue.getOrderQueueLength() > 0 &&
            limit > 0 &&
            stakingStorage.getOrderIndex() >
            orderQueue.orderToBatchId(orderQueue.peekOrder().orderId) &&
            block.timestamp -
                stakingStorage.orderStartTime(
                    orderQueue.orderToBatchId(orderQueue.peekOrder().orderId)
                ) >
            WITHDRAW_DAYS
        ) {
            limit--;
            WithdrawOrder memory order = orderQueue.dequeueOrder();

            stakingStorage.withdrawFreeBalance(order.amount);

            claimableBalance[order.user] += order.amount;
            emit Withdrawed(order.user, order.amount, block.timestamp);
        }
    }

    function reinvestRewards() internal {
        uint256 reward = rewardStorage.getFreeBalance();
        if (reward > 0) {
            uint256 freeBalance = rewardStorage.withdrawFreeBalance();
            uint256 _protocolFee = (freeBalance * spreadFeeRate) / RATIO_DENOM;

            protocolFee += _protocolFee;
            freeBalance -= _protocolFee;

            accumulatedFee += _protocolFee;
            // staking only accept amount with usei, so we need to remove the dust balance
            (
                uint256 dustBalance,
                uint256 normalizedBalance
            ) = getNormalizeAmount(freeBalance);

            protocolFee += dustBalance;
            freeBalance = normalizedBalance;

            stakingStorage.distributeStake{value: freeBalance}();
        }
        emit Reinvested(reward, block.timestamp);
    }

    function fillBuffer(uint256 inAmount) internal returns (uint256) {
        if (bufferBalance >= targetBufferBalance) {
            return inAmount;
        }
        uint256 requiredAmount = targetBufferBalance - bufferBalance;
        uint256 takeAmount = inAmount > requiredAmount
            ? requiredAmount
            : inAmount;
        bufferBalance += takeAmount;

        uint256 stakeAmount = inAmount - takeAmount;
        // need to normalize the amount
        (uint256 dustAmount, uint256 normalizedAmount) = getNormalizeAmount(
            stakeAmount
        );
        bufferBalance += dustAmount;

        return normalizedAmount;
    }

    // return (success, fee)
    function getFeeWithBuffer(
        uint256 withdrawAmount
    ) public view returns (bool, uint256) {
        uint256 fee = 0;
        uint256 remain = withdrawAmount;
        uint256 newBufferBalance = bufferBalance;
        for (uint256 i = 0; i < bufferTiers.length; i++) {
            uint256 tierThreshold = (targetBufferBalance * bufferTiers[i]) /
                RATIO_DENOM;
            if (newBufferBalance > tierThreshold) {
                uint256 availableAmount = newBufferBalance - tierThreshold;
                uint256 takeAmount = remain > availableAmount
                    ? availableAmount
                    : remain;
                fee += (takeAmount * bufferTierFeeRatios[i]) / RATIO_DENOM;
                remain -= takeAmount;
                newBufferBalance -= takeAmount;
            }
            if (remain == 0) {
                break;
            }
        }
        return (remain == 0, fee);
    }

    function getTotalSei() public view returns (uint256) {
        return stakingStorage.totalStake() * NORMALIZE_FACTOR + bufferBalance;
    }

    function getExchangeRatio() public view returns (uint256) {
        uint256 totalSei = getTotalSei();
        if (spSei.totalSupply() == 0 || totalSei == 0) {
            return RATIO_DENOM;
        }
        return (spSei.totalSupply() * RATIO_DENOM) / totalSei;
    }

    // (dust, amount)
    function getNormalizeAmount(
        uint256 amount
    ) public pure returns (uint256, uint256) {
        uint256 dust = amount % NORMALIZE_FACTOR;
        return (dust, amount - dust);
    }

    // manage functions
    function setBufferRatio(uint256 _bufferRatio) public onlyOwner {
        require(
            _bufferRatio <= RATIO_DENOM,
            "bufferRatio must be less than 100%"
        );
        bufferRatio = _bufferRatio;
        emit ParamsUpdated("bufferRatio", _bufferRatio, block.timestamp);
    }

    function setUnstakeFeeRate(uint256 _unstakeFeeRate) public onlyOwner {
        require(
            _unstakeFeeRate <= MAX_FEE_RATIO,
            "unstakeFee must be less than 10%"
        );
        unstakeFeeRate = _unstakeFeeRate;
        emit ParamsUpdated("unstakeFeeRate", _unstakeFeeRate, block.timestamp);
    }

    function setSpreadFeeRate(uint256 _spreadFeeRate) public onlyOwner {
        require(
            _spreadFeeRate <= MAX_FEE_RATIO,
            "spreadFee must be less than 10%"
        );
        spreadFeeRate = _spreadFeeRate;
        emit ParamsUpdated("spreadFeeRate", _spreadFeeRate, block.timestamp);
    }

    // 90% 80% 0%
    // 2% 3% 4%
    function setTiers(
        uint256[] memory _tiers,
        uint256[] memory _tierFeeRatios
    ) public onlyOwner {
        require(
            _tierFeeRatios.length <= MAX_TIERS,
            "tiers length must be less than MAX_TIERS"
        );
        require(
            _tiers.length == _tierFeeRatios.length,
            "tiers and tierFeeRatios length mismatch"
        );
        require(
            _tierFeeRatios.length > 0,
            "tiers length must be greater than 0"
        );
        require(_tiers[_tiers.length - 1] == 0, "last tier must be 0");
        for (uint256 i = 0; i < _tiers.length; i++) {
            if (i > 0) {
                require(
                    _tiers[i] < _tiers[i - 1],
                    "tiers must be in descending order"
                );
            }
            require(_tiers[i] < RATIO_DENOM, "tiers must be less than 100%");
            require(
                _tierFeeRatios[i] <= MAX_FEE_RATIO,
                "tierFeeRatios must be less than 10%"
            );
        }
        bufferTiers = _tiers;
        bufferTierFeeRatios = _tierFeeRatios;
        emit TiersSet(_tiers, _tierFeeRatios, block.timestamp);
    }

    function setRefreshInterval(uint256 _refreshInterval) public onlyOwner {
        require(_refreshInterval >= MIN_CLAIM_INTERVAL, "refreshInterval must be less than MIN_CLAIM_INTERVAL");
        refreshInterval = _refreshInterval;
        emit ParamsUpdated("refreshInterval", _refreshInterval, block.timestamp);
    }

    // storage admin
    function setValidatorPriority(
        string[] memory _priorityList,
        bool _isInPriority
    ) public onlyOwner {
        stakingStorage.setValidatorPriority(_priorityList, _isInPriority);
        emit ValidatorPrioritySet(_priorityList, _isInPriority, block.timestamp);
    }

    function setValidatorTargetAmount(
        string[] memory _validators,
        uint256[] memory _targetAmount
    ) public onlyOwner {
        stakingStorage.setValidatorTargetAmount(_validators, _targetAmount);
        emit ValidatorTargetAmountSet(_validators, _targetAmount, block.timestamp);
    }

    function addValidator(
        string memory validator,
        uint256 targetAmount
    ) public onlyOwner {
        stakingStorage.addValidator(validator, targetAmount);
        emit ValidatorAdded(validator, targetAmount, block.timestamp);
    }

    function removeValidator(string memory validator) public onlyOwner {
        stakingStorage.removeValidator(validator);
        emit ValidatorRemoved(validator, block.timestamp);
    }

    function redistribute(
        string memory from,
        string memory to,
        uint256 amount
    ) public onlyOwner {
        stakingStorage.redistribute(from, to, amount);
        emit Redistributed(from, to, amount, block.timestamp);
    }

    function claimProtocolFees() public onlyOwner {
        uint256 protocolFees = protocolFee;
        protocolFee = 0;
        payable(msg.sender).transfer(protocolFees);
        emit ProtocolFeesClaimed(protocolFees, block.timestamp);
    }

    function setUnstakeValidators(
        string[] memory _unstakeValidators
    ) public onlyOwner {
        stakingStorage.setUnstakeValidators(_unstakeValidators);
        emit UnstakeValidatorsSet(_unstakeValidators, block.timestamp);
    }

    // Pause functionality
    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }

    function transferOwnership(address newOwner) public override onlyOwner {
        require(newOwner != address(0), "Invalid owner");
        _transferOwnership(newOwner);
    }

    receive() external payable {}
}
