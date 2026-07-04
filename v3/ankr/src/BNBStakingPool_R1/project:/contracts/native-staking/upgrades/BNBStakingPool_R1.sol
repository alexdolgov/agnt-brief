// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

import "@ankr.com/contracts/earn/extension/MixedLiquidTokenStakingPool.sol";

import "../../interfaces/IStakingContract.sol";
import "../../interfaces/IBNBStakingPool.sol";

contract BNBStakingPool_R1 is MixedLiquidTokenStakingPool, IBNBStakingPool {
    /**
     * Variables
     */
    uint256 internal constant _TEN_DECIMALS = 1e10;

    /// @dev BEP153 Native Staking
    IStakingContract internal _stakingContract;

    uint256 internal constant _FEE_MAX = 10000;

    /// @dev in %; the maximum is _FEE_MAX;
    uint256 internal _flashUnstakeFee;

    uint256 internal _flashUnstakeCollectedFee;

    uint256 internal _flashPoolMinCapacity;

    /// @dev Prevents execution with amount which does not require Staking limits
    modifier tenDecimalPrecision(uint256 amount) {
        require(
            amount % _TEN_DECIMALS == 0,
            "BNBStakingPool: precision loss in conversion"
        );
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /// @param earnConfig contains major addresses for Ankr LiquidTokenStaking: consensus, governance, treasury...
    /// @param distributeGasLimit defines the gas usage limit for distribuion rewards in _distributePendingRewards
    /// @param stakingContract system Binance Native Staking contract: 0x0000000000000000000000000000000000002001
    function initialize(
        IEarnConfig earnConfig,
        uint256 distributeGasLimit,
        IStakingContract stakingContract
    ) external initializer {
        __Ownable_init();
        __LiquidTokenStakingPool_init(earnConfig);
        __QueuePool_init(distributeGasLimit);
        _stakingContract = stakingContract;

        emit StakingContractChanged(address(0), address(stakingContract));
    }

    /**
     * Staking methods
     */

    /// @dev Executes by a backend service(consensus address)
    /// @dev With optimal validator to delegate to
    /// @dev Amount should pass Staking contract restrictions
    /// @param validator is the validator chosen by the backend service to delegate to
    /// @param amount is the amount to undelegate from the validator
    function delegate(
        address validator,
        uint256 amount
    ) external tenDecimalPrecision(amount) onlyConsensus {
        require(
            validator != address(0),
            "BNBStakingPool: validator is zero address"
        );
        // get data from binance staking
        uint256 relayerFee = _stakingContract.getRelayerFee();
        uint256 minDelegate = _stakingContract.getMinDelegation();
        uint256 balance = getFreeBalance();
        require(
            balance > amount + relayerFee && amount > minDelegate,
            "BNBStakingPool: insufficient balance to delegate"
        );

        _stakingContract.delegate{value: (amount + relayerFee)}(
            validator,
            amount
        );

        emit Delegated(validator, amount);
    }

    /// @dev Returns total delegated via this pool
    function getTotalDelegated() public view returns (uint256) {
        return _stakingContract.getTotalDelegated(address(this));
    }

    /**
     * Unstaking methods
     */

    /// @dev Checks the receiver for existing manual requests
    /// @dev Checks liquidity to unstake
    /// @notice If there is not enough liquidity kindly use BinancePool to unstake
    /// @notice Needs to take into account current pool balance(freeBalance) and delegated amount
    function _beforeUnstake(
        address /* ownerAddress */,
        address /* receiverAddress */,
        uint256 amount
    ) internal view override {
        require(
            isAbleToUnstake(amount),
            "LiquidTokenStakingPool: insufficient total delegated to unstake"
        );
    }

    /// @dev Rewriten function of MixedLiquidTokenStakingPool
    /// @dev Does not allow immediate unstake for everyone
    /// @dev If user'd like to unstake immediately, s/he should proceed swap()
    function _afterUnstake(
        address ownerAddress,
        address receiverAddress,
        uint256 amount
    ) internal virtual override {
        // only pending unstake
        _addIntoQueue(ownerAddress, receiverAddress, amount);
    }

    /// @dev Executes by a backend service with an optimal validator for unstaking
    /// @notice Amount should pass Staking restrictions
    /// @dev Staking#undelegate() is payable and requires relayerFee to be sent
    /// @param validator is the validator chosen by the backend service to undelegate from
    /// @param amount is the amount to undelegate from the validator
    function undelegate(
        address validator,
        uint256 amount
    ) external payable tenDecimalPrecision(amount) onlyConsensus {
        require(
            validator != address(0),
            "BNBStakingPool: validator is zero address"
        );

        uint256 minDelegate = _stakingContract.getMinDelegation();
        require(
            amount >= minDelegate,
            "BNBStakingPool: amount less than minDelegate amount"
        );
        uint256 newTotal = _stakingContract.getTotalDelegated(address(this)) -
            amount;
        require(
            newTotal > minDelegate || newTotal == 0,
            "BNBStakingPool: resulting delegate is less than minDelegate amount"
        );

        uint256 relayerFee = _stakingContract.getRelayerFee();
        require(
            address(this).balance >= relayerFee,
            "BNBStakingPool: insufficient balance to undelegate"
        );

        _stakingContract.undelegate{value: relayerFee}(validator, amount);

        emit Undelegated(validator, amount);
    }

    /// @dev Everyone can execute, but usually a backend service do it
    /// @notice Pending unstake requests keep in smart-contract state with receive addresses
    /// @dev GasLimit param should be set higher than 100_000 wei for execution queue in _distributePendingRewards()
    function withdrawAndDistributePendingRewards()
        external
        onlyConsensus
        nonReentrant
    {
        _stakingContract.claimUndelegated();
        _distributePendingRewards();
    }

    /// @dev the same as withdrawAndDistributePendingRewards() but without claiming from binance staking
    /// @notice might be used for emergency distribution
    function distributePendingRewards()
        external
        payable
        onlyConsensus
        nonReentrant
    {
        _distributePendingRewards();
    }

    /**
     * Special methods related to flash unstake with fee
     */

    ///
    function swap(
        uint256 shares,
        address receiverAddress
    ) external nonReentrant {
        address ownerAddress = msg.sender;
        uint256 amount = _certificateToken.sharesToBonds(shares);
        require(
            amount >= getMinUnstake(),
            "LiquidTokenStakingPool: value must be greater than min amount"
        );
        shares = _certificateToken.bondsToShares(amount);
        require(
            _certificateToken.balanceOf(ownerAddress) >= shares,
            "LiquidTokenStakingPool: cannot unstake more than have on address"
        );
        uint256 unstakeFeeAmt = (amount * _flashUnstakeFee) / _FEE_MAX;
        amount -= unstakeFeeAmt;
        _flashUnstakeCollectedFee += unstakeFeeAmt;
        // check the restrictions on flash unstake
        require(
            amount <= flashPoolCapacity(),
            "BNBStakingPool: cannot proceed flash unstake"
        );
        // burn the input amount of shares
        _certificateToken.burn(ownerAddress, shares);
        // send the amount: sharesToBonds(shares) - flashUnstakeFee
        bool result = _unsafeTransfer(receiverAddress, amount, false);
        require(
            result,
            "LiquidTokenStakingPool: failed to send rewards to claimer"
        );

        emit FlashFeeAmount(unstakeFeeAmt);
        emit Unstaked(ownerAddress, receiverAddress, amount, shares, false);
    }

    function claimFlashUnstakeFeeCollected() external nonReentrant {
        address treasuryAddress = _earnConfig.getTreasuryAddress();
        require(
            treasuryAddress != address(0),
            "LiquidTokenStakingPool: treasury is not set"
        );
        uint256 amount = _flashUnstakeCollectedFee;
        _flashUnstakeCollectedFee = 0;
        bool result = _unsafeTransfer(treasuryAddress, amount, false);
        require(
            result,
            "LiquidTokenStakingPool: failed to send flashUnstake fee to treasury"
        );

        emit FlashUnstakeFeeCollectedClaimed(msg.sender, amount);
    }

    function getFlashUnstakeFee() public view returns (uint256) {
        return _flashUnstakeFee;
    }

    function getFlashUnstakeCollectedFee() public view returns (uint256) {
        return _flashUnstakeCollectedFee;
    }

    function getFlashPoolMinCapacity() public view returns (uint256) {
        return _flashPoolMinCapacity;
    }

    /**
     *  Rewards functionality
     */

    /// @notice Must be executed daily by everyove, but usually the backend service do
    function claimDailyRewards() external nonReentrant {
        _beforeClaimRewards();
        uint256 rewards = _stakingContract.claimReward();
        _afterClaimRewards();

        emit DailyRewardsClaimed(rewards);
    }

    /// @dev Might be used for save current pool balance before receiving rewards
    function _beforeClaimRewards() internal virtual {}

    /// @dev Might be used for sending rewards to partners
    function _afterClaimRewards() internal virtual {}

    /**
     * Setting methods
     */

    function setStakingContract(address newValue) external onlyGovernance {
        require(newValue != address(0), "BNBStakingPool: new value is zero");
        address oldValue = address(_stakingContract);
        _stakingContract = IStakingContract(newValue);
        emit StakingContractChanged(oldValue, newValue);
    }

    function setFlashUnstakeFee(uint256 newValue) external onlyGovernance {
        uint256 oldValue = _flashUnstakeFee;
        _flashUnstakeFee = newValue;
        emit FlashUntakeFeeChanged(oldValue, newValue);
    }

    function setFlashPoolMinCapacity(uint256 newValue) external onlyGovernance {
        uint256 oldValue = _flashPoolMinCapacity;
        _flashPoolMinCapacity = newValue;
        emit FlashPoolMinCapacityChanged(oldValue, newValue);
    }

    function isAbleToUnstake(uint256 amount) public view returns (bool) {
        return getTotalDelegated() + getFreeBalance() >= amount;
    }

    /**
     * @dev Overriden with taking into account _flashUnstakeCollectedFee + _flashPoolMinCapacity
     */
    function getFreeBalance() public view override returns (uint256) {
        uint256 occupiedBalance = getStashedForManualClaims() +
            _flashUnstakeCollectedFee +
            _flashPoolMinCapacity;
        return
            address(this).balance < occupiedBalance
                ? 0
                : address(this).balance - occupiedBalance;
    }

    function flashPoolCapacity() public view returns (uint256) {
        uint256 occupiedBalance = getStashedForManualClaims() +
            _flashUnstakeCollectedFee;
        return
            address(this).balance < occupiedBalance
                ? 0
                : address(this).balance - occupiedBalance;
    }

    /// @dev Receives unstakes/rewards from Staking.sol
    receive() external payable override {}
}
