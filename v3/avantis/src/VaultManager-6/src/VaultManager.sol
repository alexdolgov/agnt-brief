// SPDX-License-Identifier: MIT

pragma solidity 0.8.7;

import "./interfaces/ITradingStorage.sol";
import "./interfaces/ITranche.sol";
import "./interfaces/IVeTranche.sol";
import "./interfaces/IVaultManager.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

contract VaultManager is Initializable, IVaultManager {
    using SafeERC20 for IERC20;

    uint private constant _PRECISION = 1e10; // 10 decimals
    
    address public override gov;
    address public requestedGov;
    address public keeper;
    ITradingStorage public storageT;
    ITranche public junior;
    ITranche public senior;

    // lock params
    uint256 public override maxLockTime;
    uint256 public override minLockTime;

    // fees
    uint256 public override earlyWithdrawFee;
    uint256 public balancingFee;
    uint256 public balancingDeltaThreshold;
    uint256[5] public collateralFees;
    uint256[5] public bufferThresholds;

    // skew params for multpliers
    uint256 public targetReserveRatio;
    uint256 public constrainedLiquidityThreshold;
    uint256 public baseMultiplier;
    uint256 public minMultiplier;
    uint256 public maxMultiplier;

    // curve parameters
    uint256 public multiplierCoeff;
    uint256 public multiplierDenom;

    // reward parameters
    uint256 public totalRewards;
    uint256 public pnlRewards;
    uint256 public rewardPeriod;
    uint256 public lastRewardTime;

    int public currentBufferRatio;

    mapping(address => bool) public isTradingContract;

    modifier onlyGov() {
        require(msg.sender == gov, "GOV_ONLY");
        _;
    }
    modifier onlyCallbacks() {
        require(msg.sender == storageT.callbacks(), "CALLBACKS_ONLY");
        _;
    }

    modifier onlyTranches() {
        require(msg.sender == address(junior) || msg.sender == address(senior), "TRANCHES_ONLY");
        _;
    }

    modifier onlyKeeper(){
        require(msg.sender == address(keeper),"KEEPER_ONLY");
        _;
    }

    constructor() {
        _disableInitializers();
    }
    /**
     * @notice Initializes the proxy
     * @param _gov Governance address
     * @param _storageT Trading Storage
     */
    function initialize(address _gov, address _storageT) external initializer {

        require(_storageT != address(0), "ZERO_ADDRESS");
        require(_gov != address(0), "ZERO_ADDRESS");
        
        gov = _gov;
        keeper = _gov;
        storageT = ITradingStorage(_storageT);
        minLockTime = 14 days;
        maxLockTime = 180 days;
        earlyWithdrawFee = 10000; // 10 Percent
        balancingFee = 500;
        targetReserveRatio = 65;
        balancingDeltaThreshold = 6250;
        constrainedLiquidityThreshold = 6750;
        baseMultiplier = 100;
        minMultiplier = 80;
        maxMultiplier = 240;
        multiplierCoeff = 3103;
        multiplierDenom = 9366500;
        rewardPeriod = 7 days;
        lastRewardTime = block.timestamp;
        totalRewards = 0; // Not needed to set
        currentBufferRatio = 0;
        collateralFees = [10, 25, 100, 150, 250];
        bufferThresholds = [90, 95, 100, 105, 110];
    }

/**---------------------------Gov Gated Setters----------------------------------------------- */

    /**
     * @notice Requests the governance address.
     * @dev Only callable by the current governance.
     * @param _gov The new governance address.
     */
    function requestGov(address _gov) external onlyGov {
        require(_gov != address(0));
        requestedGov = _gov;
    }

    function setGov(address _newGov) external {
        require(_newGov != address(0));
        require(msg.sender == requestedGov, "INVALID_CALLER");
        require(_newGov == requestedGov, "INVALID_CALLER");
        emit GovChanged(gov, requestedGov);
        gov = requestedGov;
    }

    /**
     * @dev Set the Keeper address.
     * @param _keeper Address of the new Keeper.
     */
    function setKeeper(address _keeper) external onlyGov{
        require(_keeper != address(0), "ZERO_ADDRESS");
        keeper =  _keeper;
        emit KeeperSet(_keeper);
    }

    function setStorage(address _storageT) external onlyGov {
        require(_storageT != address(0), "INVALID_ADDRESS");
        emit StorageChanged(address(storageT), _storageT);
        storageT = ITradingStorage(_storageT);
    }

    function setJuniorTranche(address _junior) external onlyGov {
        require(_junior != address(0), "INVALID_ADDRESS");
        emit JuniorTrancheChanged(address(junior), _junior);
        junior = ITranche(_junior);
    }

    function setSeniorTranche(address _senior) external onlyGov {
        require(_senior != address(0), "INVALID_ADDRESS");
        emit SeniorTrancheChanged(address(senior), _senior);
        senior = ITranche(_senior);
    }

    function setReserveRatio(uint256 _targetReserveRatio) external onlyGov {
        require(_targetReserveRatio < 100, "TOO_HIGH");
        emit ReserveRatioUpdated(targetReserveRatio, _targetReserveRatio);
        targetReserveRatio = _targetReserveRatio;
    }

    function setBalancingDeltaThreshold(uint256 _balancingDeltaThreshold) external onlyGov {
        require(_balancingDeltaThreshold < 10000, "TOO_HIGH");
        emit BalancingDeltaUpdated(balancingDeltaThreshold, _balancingDeltaThreshold);
        balancingDeltaThreshold = _balancingDeltaThreshold;
    }

    function setConstrainedLiquidityThreshold(uint256 _constrainedLiquidityThreshold) external onlyGov {
        require(_constrainedLiquidityThreshold < 10000, "TOO_HIGH");
        emit ConstrainedLiquidityThresholdUpdated(constrainedLiquidityThreshold, _constrainedLiquidityThreshold);
        constrainedLiquidityThreshold = _constrainedLiquidityThreshold;
    }

    function setEarlyWithdrawFee(uint256 _earlyWithdrawFee) external onlyGov {
        require(_earlyWithdrawFee <= 10000, "TOO_HIGH");
        emit EarlyWithdrawFeeUpdated(earlyWithdrawFee, _earlyWithdrawFee);
        earlyWithdrawFee = _earlyWithdrawFee;
    }

    function setBalancingFee(uint256 _balancingFee) external onlyGov {
        require(_balancingFee <= 10000, "TOO_HIGH");
        balancingFee = _balancingFee;
        emit NumberUpdated("Balancing Fee", _balancingFee);
    }

    function setCollateralFees(uint256[5] memory _collateralFees) external onlyGov {
        for (uint i = 0; i < _collateralFees.length; ) {
            require(_collateralFees[i] < 10000, "TOO_HIGH");
            i++;
        }
        collateralFees = _collateralFees;
    }

    function setBufferThresholds(uint256[5] calldata _bufferThresholds) external onlyGov {
        for (uint i; i < _bufferThresholds.length; ) {
            if (i != _bufferThresholds.length - 1)
                require(_bufferThresholds[i] < _bufferThresholds[i + 1], "NOT_DESCENDING_ORDER");
            i++;
        }
        bufferThresholds = _bufferThresholds;
    }

    function setMaxLockTime(uint256 _maxLockTime) external onlyGov {
        require(_maxLockTime > 0, "MAX_LOCK_TIME_IS_ZERO");
        require(_maxLockTime > minLockTime, "MAX_LOCK_TIME_LESS_THAN_MIN_LOCK_TIME");
        maxLockTime = _maxLockTime;
        emit NumberUpdated("Max Lock Time", _maxLockTime);
    }

    function setMinLockTime(uint256 _minLockTime) external onlyGov {
        require(_minLockTime > 0, "MIN_LOCK_TIME_IS_ZERO");
        require(maxLockTime > _minLockTime, "MAX_LOCK_TIME_LESS_THAN_MIN_LOCK_TIME");
        minLockTime = _minLockTime;
        emit NumberUpdated("Min Lock Time", _minLockTime);
    }

    function setBaseMultiplier(uint256 _baseMultiplier) external onlyGov {
        require(_baseMultiplier > 99, "TOO_LOW");
        baseMultiplier = _baseMultiplier;
        emit NumberUpdated("Base Multiplier", _baseMultiplier);
    }

    function setMinMultiplier(uint256 _minMultiplier) external onlyGov {
        require(_minMultiplier > 0, "TOO_LOW");
        require(_minMultiplier < baseMultiplier, "TOO_HIGH");
        minMultiplier = _minMultiplier;
        emit NumberUpdated("Min Mulitplier", _minMultiplier);
    }

    function setMaxMultiplier(uint256 _maxMultiplier) external onlyGov {
        require(_maxMultiplier > baseMultiplier, "TOO_LOW");
        maxMultiplier = _maxMultiplier;
        emit NumberUpdated("Max Mulitplier", _maxMultiplier);
    }

    function setMultiplierDenom(uint256 _multiplierDenom) external onlyGov {
        require(_multiplierDenom > 0, "NUMBER_INVALID");
        multiplierDenom = _multiplierDenom;
        emit NumberUpdated("Mulitplier Denominator", _multiplierDenom);    
    }

    function setMultiplierCoeff(uint256 _multiplierCoeff) external onlyGov {
        require(_multiplierCoeff > 0, "NUMBER_INVALID");
        multiplierCoeff = _multiplierCoeff;
        emit NumberUpdated("Mulitplier Coefficient", _multiplierCoeff);    
    }

    function setRewardPeriod(uint256 _rewardPeriod) external onlyGov {
        require(_rewardPeriod > 24 * 60 * 60, "TOO_LOW");
        rewardPeriod = _rewardPeriod;
        emit NumberUpdated("Reward Period", _rewardPeriod);  
    }

    function setCurrentBufferRatio(int _currentBufferRatio) external onlyKeeper {
        currentBufferRatio = _currentBufferRatio;
        emit CurrentBufferRatioUpdated(_currentBufferRatio);  
    }

    function addTradingContract(address _trading) external onlyGov {
        require(_trading != address(0));
        isTradingContract[_trading] = true;
        emit TradingContractAdded(_trading);
    }

    function removeTradingContract(address _trading) external onlyGov {
        require(_trading != address(0));
        isTradingContract[_trading] = false;
        emit TradingContractRemoved(_trading);
    }

/** --------------------------------------------------------------------------------------------- */

    /**
     * @notice Allocates rewards to the LPs
     * @param rewards The amount of rewards to allocate
     * @param isPnl Bool indicating whether Pnl Rewards
     */
    function allocateRewards(uint256 rewards, bool isPnl) external override {
        require(rewards > 0, "NO_REWARDS_ALLOCATED");
        uint256 feeRewards = isPnl ? rewards : rewards;
        if (!isTradingContract[msg.sender]) IERC20(junior.asset()).safeTransferFrom(msg.sender, address(this), feeRewards);
        isPnl ? pnlRewards += feeRewards : totalRewards += feeRewards;
        emit RewardsAllocated(feeRewards, isPnl);
    }
    
    /**
     * @notice Decrements pnl rewards
     * @param _amount The amount to decrement
     */
    function decrementPnlRewards(uint _amount) external override onlyCallbacks {
        if (_amount > pnlRewards) {
            pnlRewards = 0;
        } else {
            pnlRewards = pnlRewards - _amount;
        }
    }

    /**
     * @notice Sends a part of rewards as a referral rebate to storage
     * @param _amount The amount to send as a referral rebate
     */
    function sendReferrerRebateToStorage(uint _amount) external override onlyCallbacks {
        require(_amount > 0, "NO_REWARDS_ALLOCATED");
        IERC20(junior.asset()).safeTransfer(address(storageT), _amount);

        emit ReferralRebateAwarded(_amount);
    }

    /**
     * @notice Distributes rewards to VeTranche Lockers
     * @param _tranche The address of the tranche contract
     * @param rewards The amount of rewards to distribute
     * @return uint256 Remaining rewards
     */
    function distributeVeRewards(
        address _tranche,
        uint256 rewards
    ) external onlyGov returns (uint256) {
        return _distributeVeRewards(IVeTranche(ITranche(_tranche).veTranche()), rewards);
    }

    /**
     * @notice Distributes rewards accumulated in tranche
     * @param _tranche The address of the tranche contract
     * @param rewards The amount of rewards to distribute
     */
    function distributeTrancheRewards(address _tranche, uint256 rewards) external onlyGov {
        _distributeRewards(_tranche, rewards);
    }

    /**
     * @notice Sends USDC tokens to a trader
     * @param _trader The address of the trader
     * @param _amount The amount of USDC to send
     */
    function sendUSDCToTrader(address _trader, uint _amount) external override onlyCallbacks {
        _sendUSDCToTrader(_trader, _amount);
    }

    /**
     * @notice Receives USDC tokens from a trader and applies vault fee
     * @param _trader The address of the trader
     * @param _amount The amount of USDC to receive
     */
    function receiveUSDCFromTrader(address _trader, uint _amount) external override onlyCallbacks {
        _receiveUSDCFromTrader(_trader, _amount);
    }

    /**
     * @notice Reserves balance for junior and senior tranches based on reserve Ratio
     * @param _amount The total amount to reserve
     */
    function reserveBalance(uint256 _amount) external override onlyCallbacks {
        uint256 juniorAmount = (_amount * getReserveRatio(_amount)) / 100;
        uint256 seniorAmount = _amount - juniorAmount;

        junior.reserveBalance(juniorAmount);
        senior.reserveBalance(seniorAmount);
    }

    /**
     * @notice Releases balance to junior and senior tranches according to release ratio.
     * @param _amount The amount to be released.
     */
    function releaseBalance(uint256 _amount) external override onlyCallbacks {
        uint256 juniorAmount = (_amount * getReleaseRatio()) / _PRECISION / 100;

        uint256 seniorAmount = ((_amount - juniorAmount));
        if (seniorAmount > senior.totalReserved()) {
            juniorAmount += seniorAmount - senior.totalReserved();
            seniorAmount = senior.totalReserved();
        }

        junior.releaseBalance(juniorAmount);
        senior.releaseBalance(seniorAmount);
    }

    /**
     * @notice Distributes the collected fee shares to a specified tranche.
     * @param _tranche The address of the tranche to distribute fee shares to.
     */
    function distributeCollectedFeeShares(address _tranche) external onlyGov {
        _distributeCollectedFeeShares(_tranche);
    }

    /**
     * @notice Retrieves the total current balance in USDC across all tranches.
     * @return The total current balance in USDC.
     */
    function currentBalanceUSDC() external view override returns (uint256) {
        return junior.totalAssets() + senior.totalAssets();
    }

    /**
    * @notice Returns the Mulitplied balance of USDC for extended OI allocation
     */
    function currentAdjustedBalanceUSDC() external view override returns(uint256){

        return ((junior.totalAssets() + senior.totalAssets()) *
               storageT.priceAggregator().pairsStorage().getOIMultiplier()) /
               _PRECISION ;
    }

    /**
    @notice Helper Method to return adjusted balance in tranches
     */
    function adjustedBalance(uint256 assets) external view override returns(uint256){
        return assets * storageT.priceAggregator().pairsStorage().getOIMultiplier() /
               _PRECISION ;
    }

    /**
     * @notice Calculates the balancing fee for deposits or withdrawals.
     * @param tranche The address of the tranche.
     * @param isDeposit Specifies if the operation is a deposit.
     * @return The calculated balancing fee.
     */
    function getBalancingFee(address tranche, bool isDeposit, uint256 assets) external view override returns (uint256) {
        if ((getDynamicReserveRatio(tranche, isDeposit, assets) * 100) > balancingDeltaThreshold) {
            // charge junior deposits, and senior withdraws
            if ((tranche == address(junior) && isDeposit) || (tranche == address(senior) && !isDeposit)) {
                return balancingFee;
            }
        }
        if ((getDynamicReserveRatio(tranche, isDeposit, assets) * 100) < 1e4 - balancingDeltaThreshold) {
            // charge senior deposits, and junior withdrawals
            if ((tranche == address(senior) && isDeposit) || (tranche == address(junior) && !isDeposit)) {
                return balancingFee;
            }
        }
        return 0;
    }

    /**
     * @notice Calculates the collateral fee based on the buffer ratio.
     * @return The collateral fee.
     */
    function getCollateralFee() external view override returns (uint256) {

        uint256 latestBufferRatio = getBufferRatio();
        for (uint i = 0; i < bufferThresholds.length; ) {
            if (latestBufferRatio < bufferThresholds[i]) {
                return collateralFees[i];
            }
            i++;
        }
        return 0; // default free during migration
    }

    /**
     * @notice Calculates the balancing fee for deposits or withdrawals post withdrawal/deposit
     * @param tranche The address of the tranche.
     * @param isDeposit Specifies if the operation is a deposit.
     * @param assets Number of assets
     * @return The calculated balancing fee.
     */
    function getDynamicReserveRatio(address tranche, bool isDeposit, uint256 assets) public view returns(uint256){
        IERC20 asset = IERC20(junior.asset());
        if (asset.balanceOf(address(senior)) == 0 && asset.balanceOf(address(junior)) == 0) {
            return targetReserveRatio;
        }
        if(tranche == address(junior)){
            return isDeposit 
                ?    (100 * (asset.balanceOf(address(junior)) + assets)) /
                    (asset.balanceOf(address(junior)) + asset.balanceOf(address(senior)) + assets)
                :    (100 * (asset.balanceOf(address(junior)) - assets)) /
                    (asset.balanceOf(address(junior)) + asset.balanceOf(address(senior)) - assets);
        }
        else{
            return isDeposit 
                ?    (100 * asset.balanceOf(address(junior))) /
                    (asset.balanceOf(address(junior)) + asset.balanceOf(address(senior)) + assets)
                :    (100 * asset.balanceOf(address(junior))) /
                    (asset.balanceOf(address(junior)) + asset.balanceOf(address(senior)) - assets);
        }

    } 
    /**
     * @notice Retrieves the reserve ratio based on a specified reserve amount.
     * @param _reserveAmount The reserve amount.
     * @return The calculated reserve ratio.
     */
    function getReserveRatio(uint _reserveAmount) public view returns (uint256) {
        if (_reserveAmount > 0) {
            uint currentReserveRatio = getUnreservedTrancheRatio();
            if (
                !_isNormalLiquidityMode(currentReserveRatio) ||
                !junior.hasLiquidity((_reserveAmount * targetReserveRatio) / 100) ||
                !senior.hasLiquidity(_reserveAmount - (_reserveAmount * targetReserveRatio) / 100)
            ) {
                // constrained Liquidity Mode
                return currentReserveRatio;
            }
        }
        return _isNormalLiquidityMode(getCurrentTrancheRatio()) ? targetReserveRatio : getCurrentTrancheRatio();
    }

    /**
     * @notice Calculates the release ratio based on total reserved amounts.
     * @return The calculated release ratio.
     */
    function getReleaseRatio() public view returns (uint256) {
        return (junior.totalReserved() * 100 * _PRECISION) / (junior.totalReserved() + senior.totalReserved());
    }
    
    /**
     * @notice Retrieves the current ratio of reserves across tranches.
     * @return The current tranche ratio.
     */
    function getCurrentTrancheRatio() public view returns (uint256) {
        IERC20 asset = IERC20(junior.asset());
        if (asset.balanceOf(address(senior)) == 0 && asset.balanceOf(address(junior)) == 0) {
            return targetReserveRatio;
        }
        return
            (100 * asset.balanceOf(address(junior))) /
            (asset.balanceOf(address(junior)) + asset.balanceOf(address(senior)));
    }

    /**
     * @notice Retrieves the Ratio on unreserved Assets in tranches
     * @return Unreserved Tranche ratio
     */
    function getUnreservedTrancheRatio() public view returns (uint256) {
        IERC20 asset = IERC20(junior.asset());
        uint juniorUnreserved = asset.balanceOf(address(junior)) - junior.totalReserved();
        uint seniorUnreserved = asset.balanceOf(address(senior)) - senior.totalReserved();
        
        return
            (100 * juniorUnreserved) / (seniorUnreserved + juniorUnreserved);
    }

    /**
     * @notice Gets the latest buffer ratio.
     * @return The current buffer ratio.
     */
    function getBufferRatio() public view returns (uint256) {
        // using new variable as the buffer ratio directly 
        return uint256(currentBufferRatio);
    }

    /**
     * @notice Calculates the profit multiplier based on the current reserve ratio.
     * @return The calculated profit multiplier.
     */
    function getProfitMultiplier() public view returns (uint256) {
        uint256 currentReserveRatio = getCurrentTrancheRatio();
        if (_isNormalLiquidityMode(currentReserveRatio)) return baseMultiplier;

        if (currentReserveRatio > targetReserveRatio) {
            uint256 totalRange = 100 - targetReserveRatio;
            uint256 distance = (currentReserveRatio - targetReserveRatio);
            uint256 rateOfChange = (baseMultiplier - minMultiplier);

            return baseMultiplier - (distance * rateOfChange) / totalRange;
        } else if (currentReserveRatio < (100 - targetReserveRatio)) {
            uint256 distance = (targetReserveRatio - currentReserveRatio);
            return baseMultiplier + (((distance ** 2) * multiplierCoeff * 100) / multiplierDenom);
        }
        return baseMultiplier;
    }

    /**
     * @notice Retrieves the senior base multiplier for loss calculations.
     * @notice Would be decreased if want more losses to taken from junior
     * @return The base multiplier.
     */
    function getSeniorLossMultiplier() public view returns (uint256) {
        return baseMultiplier;
    }

    /**
     * @notice Distributes vRewards to a specific veTranche.
     * @param veTranche The veTranche to distribute rewards to.
     * @param rewards The amount of rewards to distribute.
     * @return The total lock points.
     */
    function _distributeVeRewards(
        IVeTranche veTranche,
        uint256 rewards
    ) internal returns (uint256) {
        uint256 totalLockPoints = veTranche.getTotalLockPoints();
        
        // if locktime is not accumulated, no rewards to give
        if (totalLockPoints > 0) {
            IERC20(junior.asset()).safeTransfer(address(veTranche), rewards);
            veTranche.distributeRewards(rewards);
        }

        return totalLockPoints;
    }

    /**
     * @notice Distributes rewards to a specific tranche.
     * @param tranche The address of the tranche to distribute rewards to.
     * @param rewards The amount of rewards to distribute.
     */
    function _distributeRewards(address tranche, uint256 rewards) internal {
        if (rewards > 0) {
            if (tranche == address(junior) || tranche == address(senior)) {
                IERC20(junior.asset()).safeTransfer(tranche, rewards);
            }
        }
    }

    /**
     * @notice Transfers USDC to a trader.
     * @param _trader The address of the trader.
     * @param _amount The amount to transfer.
     */
    function _sendUSDCToTrader(address _trader, uint _amount) internal {

        // For the extereme case of totalRewards exceeding vault Manager balance
        int256 balanceAvailable = int(storageT.usdc().balanceOf(address(this))) - int(totalRewards);
        if (int(_amount) > balanceAvailable) {
            // take difference (losses) from vaults
            uint256 difference = uint(int(_amount) - int(balanceAvailable));

            uint256 seniorUSDC = (getSeniorLossMultiplier() * difference * (100 - getReserveRatio(0)))/100 / 100;
            seniorUSDC = (seniorUSDC > difference) ? difference : seniorUSDC;

            uint256 juniorUSDC =  difference - seniorUSDC;
            junior.withdrawAsVaultManager(juniorUSDC);
            senior.withdrawAsVaultManager(seniorUSDC);
        }
        
        require(storageT.usdc().transfer(_trader, _amount));
        emit USDCSentToTrader(_trader, _amount);
    }

    /**
     * @notice Receives USDC from a trader.
     * @param _trader The address of the trader.
     * @param _amount The amount received.
     */
    function _receiveUSDCFromTrader(address _trader, uint _amount) internal {
        storageT.transferUSDC(address(storageT), address(this), _amount);
        emit USDCReceivedFromTrader(_trader, _amount);
    }

    /**
     *
     * @param _tranche Address of Tranche to distribute rewards for
     * @notice Distribute collected fee in veTranche lock/unlock
     */
    function _distributeCollectedFeeShares(address _tranche) internal {

        if(ITranche(_tranche).maxRedeem(address(this)) == 0) return;

        uint256 assets = ITranche(_tranche).redeem(
            ITranche(_tranche).maxRedeem(address(this)),
            address(this),
            address(this)
        );

        if (assets > 0) {
            _distributeVeRewards(IVeTranche(ITranche(_tranche).veTranche()), assets);
        }
    }

    /**
     * @notice Determines if the system is in normal liquidity mode based on current reserve Ratio
     * @param _currentReserveRatio The current reserve ratio.
     * @return True if in normal liquidity mode, otherwise false.
     */
    function _isNormalLiquidityMode(uint _currentReserveRatio) internal view returns (bool) {
        if (
            _currentReserveRatio * 100 > 10000 - constrainedLiquidityThreshold &&
            _currentReserveRatio * 100 < constrainedLiquidityThreshold
        ) return true;

        return false;
    }

    function distributePnlRewardsFraction(uint _fraction) public onlyKeeper{

        uint pnlRewardsToDistribute = pnlRewards*_fraction/100;
        require(pnlRewardsToDistribute > 0, "NO_REWARDS_ALLOCATED");
        require(IERC20(junior.asset()).balanceOf(address(this)) - totalRewards > pnlRewardsToDistribute, "INSUFFICIENT_BALANCE");

        uint256 totalJuniorRewards = (getProfitMultiplier() * pnlRewardsToDistribute * getReserveRatio(0)) / 100 / 100;
        totalJuniorRewards = (totalJuniorRewards > pnlRewardsToDistribute) ? pnlRewardsToDistribute : totalJuniorRewards;

        uint256 totalSeniorRewards = pnlRewardsToDistribute - totalJuniorRewards;
        _distributeRewards(address(junior), totalJuniorRewards);
        _distributeRewards(address(senior), totalSeniorRewards);
        pnlRewards = pnlRewards - pnlRewardsToDistribute;
        
        emit PnlRewardsDistributed(totalJuniorRewards, totalSeniorRewards);
    }
    
    /**
     * @notice Reset variables 
     * @param _amount The amount to use as reset
     */
    function resetVariables(uint _amount) external onlyGov() {
        pnlRewards = _amount;
    }
    
    /**
     *
     * @param _pnlDistributionRatio Ratio of out 100 for what % of threshold ill be distirbuted
     * @param _thresholdAmount USDC amount for min balance for distribution
     * @notice Distribute collected fee in veTranche lock/unlock
     */
    function distributeRewardsWithThreshold(uint _pnlDistributionRatio, uint _thresholdAmount) external onlyKeeper {
        int currentBalance = int(IERC20(junior.asset()).balanceOf(address(this)));
        
        if (currentBalance > int(_thresholdAmount)) {
            uint distributionAmount = uint(currentBalance) - _thresholdAmount;
            uint pnlRewardsToDistribute = distributionAmount * _pnlDistributionRatio / 100;
            uint totalRewardsToDistribute = distributionAmount - pnlRewardsToDistribute;
            totalRewardsToDistribute = (totalRewardsToDistribute > totalRewards) ? totalRewards : totalRewardsToDistribute;
            pnlRewardsToDistribute = (pnlRewardsToDistribute > pnlRewards) ? pnlRewards : pnlRewardsToDistribute;
            
            if (pnlRewardsToDistribute > 0) {
                distributePnlRewardsFraction(pnlRewardsToDistribute * 100 / pnlRewards);
            }

            if (totalRewardsToDistribute > 0) {
    
                uint256 totalJuniorRewards = (getProfitMultiplier() * totalRewardsToDistribute * getReserveRatio(0)) / 100 / 100;
                totalJuniorRewards = (totalJuniorRewards > totalRewardsToDistribute) ? totalRewardsToDistribute : totalJuniorRewards;

                uint256 totalSeniorRewards = totalRewardsToDistribute - totalJuniorRewards;

                uint256 juniorTotalPoints = IVeTranche(junior.veTranche()).getTotalLockPoints();
                uint256 seniorTotalPoints = IVeTranche(senior.veTranche()).getTotalLockPoints();

                lastRewardTime = block.timestamp;
                totalRewards -= totalRewardsToDistribute;

                uint256 juniorRewards; uint256 seniorRewards;
                uint256 veJuniorRewards; uint256 veSeniorRewards;

                if ((junior.totalSupply() + juniorTotalPoints) > 0) {
                    juniorRewards = (totalJuniorRewards * junior.totalSupply()) /
                        (junior.totalSupply() + juniorTotalPoints);
                    veJuniorRewards = totalJuniorRewards - juniorRewards;

                    _distributeVeRewards(IVeTranche(junior.veTranche()), veJuniorRewards);
                    _distributeRewards(address(junior), juniorRewards);
                    _distributeCollectedFeeShares(address(junior));
                }

                if ((senior.totalSupply() + seniorTotalPoints) > 0) {
                    seniorRewards = (totalSeniorRewards * senior.totalSupply()) /
                        (senior.totalSupply() + seniorTotalPoints);
                    veSeniorRewards = totalSeniorRewards - seniorRewards;

                    _distributeVeRewards(IVeTranche(senior.veTranche()), veSeniorRewards);
                    _distributeRewards(address(senior), seniorRewards);
                    _distributeCollectedFeeShares(address(senior));
                }
                emit RewardsDistributed(juniorRewards, veJuniorRewards, seniorRewards, veSeniorRewards);
            }

        }
    }

    /**
    * @notice Decrement total rewards
    * @param _amount The amount to decrement
     */
    function decrementTotalRewards(uint _amount) external onlyKeeper() {
        require(_amount <= totalRewards, "UNDERFLOW_DETECTED");
        totalRewards -= _amount;
        emit TotalRewardsDecremented(_amount, totalRewards);
    }
}
