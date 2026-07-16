// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

enum PILL_TYPE {
    NONE,
    BLUE_PILL,
    RED_PILL
}
struct AirdropInfo {
    address account;
    uint256 amount;
}
struct RatioInfo {
    address account;
    uint256 ratio;
}
struct PillInfo {
    address account;
    PILL_TYPE pillType;
}
struct RewardInfo {
    address account;
    uint256 amount;
}

interface ISettingsManager {
    function setCooldownDuration(uint256 _cooldownDuration) external;

    function setFeeRewardBasisPoints(uint256 _feeRewardsBasisPoints) external;

    function setFeeManager(address _feeManager) external;

    function setDefaultMaxProfitPercent(uint256 _defaultMaxProfitPercent) external;

    function setMaxProfitPercent(uint256 _tokenId, uint256 _maxProfitPercent) external;

    function setMaxTotalVlp(uint256 _maxTotalVlp) external;

    function setEnableDeposit(address _token, bool _isEnabled) external;

    function setEnableWithdraw(address _token, bool _isEnabled) external;

    function setEnableStaking(address _token, bool _isEnabled) external;

    function setEnableUnstaking(address _token, bool _isEnabled) external;

    function setDepositFee(address token, uint256 _fee) external;

    function setWithdrawFee(address token, uint256 _fee) external;

    function setStakingFee(address token, uint256 _fee) external;

    function setUnstakingFee(address token, uint256 _fee) external;

    function setTradingFee(uint256 _tokenId, bool _isLong, uint256 _tradingFee) external;

    function setDeductFeePercentForUser(address _account, uint256 _deductFee) external;

    function setBasisFundingRateFactor(uint256 _basisFundingRateFactor) external;

    function setFundingRateFactor(uint256 _tokenId, uint256 _fundingRateFactor) external;

    function setMaxFundingRate(uint256 _maxFundingRate) external;

    function setBorrowFeeFactorPerAssetPerSide(uint256 _tokenId, bool _isLong, uint256 _borrowFeeFactor) external;

    function setReferrerTier(address _referrer, uint256 _tier) external;

    function setTierFee(uint256 _tier, uint256 _fee) external;

    function setTierRebate(uint256 _tier, uint256 _rebate) external;

    function setPlatformFee(address _platform, uint256 _fee) external;

    function setMinCollateral(uint256 _minCollateral) external;

    function setCloseDeltaTime(uint256 _deltaTime) external;

    function setMinProfitDuration(uint256 _tokenId, uint256 _minProfitDuration) external;

    function setMaxCloseProfit(uint256 _tokenId, uint256 _maxCloseProfit) external;

    function setMaxCloseProfitPercent(uint256 _tokenId, uint256 _maxCloseProfitPercent) external;

    function setDefaultMaxOpenInterestPerUser(uint256 _maxAmount) external;

    function setMaxOpenInterestPerUser(address _account, uint256 _maxAmount) external;

    function setMaxOpenInterestPerAsset(uint256 _tokenId, uint256 _maxAmount) external;

    function setMaxOpenInterestPerAssetPerSide(uint256 _tokenId, bool _isLong, uint256 _maxAmount) external;

    function setMaxTotalOpenInterest(uint256 _maxAmount) external;

    function setMarketOrderGasFee(uint256 _fee) external;

    function setExpiryDuration(uint256 _expiryDuration) external;
    
    function setSelfExecuteCooldown(uint256 _selfExecuteCooldown) external;
    
    function setTriggerGasFee(uint256 _fee) external;
    
    function setMaxTriggerPerPosition(uint256 _value) external;

    function setPriceMovementPercent(uint256 _priceMovementPercent) external;

    function setSlippageFactor(uint256 _tokenId, uint256 _slippageFactor) external;

    function setLiquidateThreshold(uint256 _tokenId, uint256 _liquidateThreshold) external;

    function setLiquidationPendingTime(uint256 _liquidationPendingTime) external;
    
    function setBountyPercent(uint32 _bountyPercentFirstCaller, uint32 _bountyPercentResolver) external;

    function setGlobalDelegates(address _delegate, bool _allowed) external;
}

interface IPriceManager {
    function setAsset(
        uint256 _assetId,
        string calldata _symbol,
        bytes32 _pythId,
        uint256 _price,
        uint256 _allowedStaleness,
        uint256 _allowedDeviation,
        uint256 _maxLeverage
    ) external;

    function setUsdAsset(
        address _tokenAddress,
        uint256 _assetId,
        string calldata _symbol,
        bytes32 _pythId,
        uint256 _price,
        uint256 _allowedStaleness,
        uint256 _allowedDeviation,
        uint256 _tokenDecimals
    ) external;
}

interface ITokenFarm {
    function setVelaPool(IComplexRewardPerSec[] calldata _rewarders, bool _enableCooldown) external;

    function setVlpPool(IComplexRewardPerSec[] calldata _rewarders, bool _enableCooldown) external;

    function updateCooldownDuration(uint256 _newCooldownDuration) external;

    function updateRewardTierInfo(uint256[] memory _levels, uint256[] memory _percents) external;

    function updateVestingDuration(uint256 _vestingDuration) external;
}

interface IComplexRewardPerSec {
    function add(uint256 _pid, uint256 _startTimestamp) external;

    function emergencyRewardWithdraw(uint256 _pid, uint256 _amount, address _beneficiary) external;

    function emergencyWithdraw(uint256 _amount, address _beneficiary) external;
}

interface ISwapAndAirdrop {
    function setFeeManager(address _feeManager) external;

    function updatePillInfo(
        uint256 _bluePillStartTime,
        uint256 _bluePillPeriod,
        uint256 _redPillStartTime,
        uint256 _startRatio
    ) external;

    function setIsRedPillEnabled(bool _isRedPillEnabled) external;

    function distributeAirdrops(AirdropInfo[] calldata _airdrops) external;

    function updateUserVelaRatios(RatioInfo[] calldata _ratios) external;

    function updateUserEsVelaRatios(RatioInfo[] calldata _ratios) external;

    function updateUserPill(PillInfo[] calldata _pill) external;
}

interface ITokenRewardDistributor {
    function addRewards(RewardInfo[] calldata _rewardInfos) external;

    function setRewards(RewardInfo[] calldata _rewardInfos) external;

    function rescueToken(address _token, uint256 _amount) external;
}

interface IOperators {
    function getOperatorLevel(address op) external view returns (uint256);
}

contract FirstOpFunctionManager {
    ISettingsManager public immutable settingsManager;
    IPriceManager public immutable priceManager;
    ITokenFarm public immutable tokenFarm;
    ISwapAndAirdrop public immutable swapAndAirdrop;

    IOperators public immutable operators;

    mapping(address => bool) public isAdmin;

    error Unauthorized();

    modifier onlyAdmin() {
        _onlyAdmin();
        _;
    }

    function _onlyAdmin() private view {
        require(isAdmin[msg.sender], "!admin");
    }

    modifier onlyOperator(uint256 level) {
        require(operators.getOperatorLevel(msg.sender) >= level, "invalid operator");
        _;
    }

    constructor(
        address _settingsManager,
        address _priceManager,
        address _tokenFarm,
        address _swapAndAirdrop,
        address _operators
    ) {
        settingsManager = ISettingsManager(_settingsManager);
        priceManager = IPriceManager(_priceManager);
        tokenFarm = ITokenFarm(_tokenFarm);
        swapAndAirdrop = ISwapAndAirdrop(_swapAndAirdrop);

        operators = IOperators(_operators);

        // isAdmin[msg.sender] = true;
    }

    function setAdmin(address _account, bool _isAdmin) external onlyOperator(4) {
        isAdmin[_account] = _isAdmin;
    }

    /* ========== settingsManager ========== */
    function setCooldownDuration(uint256 _cooldownDuration) external onlyAdmin {
        settingsManager.setCooldownDuration(_cooldownDuration);
    }

    function setFeeRewardBasisPoints(uint256 _feeRewardsBasisPoints) external onlyAdmin {
        settingsManager.setFeeRewardBasisPoints(_feeRewardsBasisPoints);
    }
    
    function setFeeManagerForSettingsManager(address _feeManager) external onlyAdmin {
        settingsManager.setFeeManager(_feeManager);
    }

    function setDefaultMaxProfitPercent(uint256 _defaultMaxProfitPercent) external onlyAdmin {
        settingsManager.setDefaultMaxProfitPercent(_defaultMaxProfitPercent);
    }

    function setMaxProfitPercent(uint256 _tokenId, uint256 _maxProfitPercent) external onlyAdmin {
        settingsManager.setMaxProfitPercent(_tokenId, _maxProfitPercent);
    }

    function setMaxTotalVlp(uint256 _maxTotalVlp) external onlyAdmin {
        settingsManager.setMaxTotalVlp(_maxTotalVlp);
    }

    function setEnableDeposit(address _token, bool _isEnabled) external onlyAdmin {
        settingsManager.setEnableDeposit(_token, _isEnabled);
    }

    function setEnableWithdraw(address _token, bool _isEnabled) external onlyAdmin {
        settingsManager.setEnableWithdraw(_token, _isEnabled);
    }

    function setEnableStaking(address _token, bool _isEnabled) external onlyAdmin {
        settingsManager.setEnableStaking(_token, _isEnabled);
    }

    function setEnableUnstaking(address _token, bool _isEnabled) external onlyAdmin {
        settingsManager.setEnableUnstaking(_token, _isEnabled);
    }
    
    function setDepositFee(address token, uint256 _fee) external onlyAdmin {
        settingsManager.setWithdrawFee(token, _fee);
    }

    function setWithdrawFee(address token, uint256 _fee) external onlyAdmin {
        settingsManager.setWithdrawFee(token, _fee);
    }

    function setStakingFee(address token, uint256 _fee) external onlyAdmin {
        settingsManager.setStakingFee(token, _fee);
    }

    function setUnstakingFee(address token, uint256 _fee) external onlyAdmin {
        settingsManager.setUnstakingFee(token, _fee);
    }

    function setTradingFee(uint256 _tokenId, bool _isLong, uint256 _tradingFee) external onlyAdmin {
        settingsManager.setTradingFee(_tokenId, _isLong, _tradingFee);
    }

    function setDeductFeePercentForUser(address _account, uint256 _deductFee) external onlyAdmin {
        settingsManager.setDeductFeePercentForUser(_account, _deductFee);
    }

    function setBasisFundingRateFactor(uint256 _basisFundingRateFactor) external onlyAdmin {
        settingsManager.setBasisFundingRateFactor(_basisFundingRateFactor);
    }

    function setFundingRateFactor(uint256 _tokenId, uint256 _fundingRateFactor) external onlyAdmin {
        settingsManager.setFundingRateFactor(_tokenId, _fundingRateFactor);
    }

    function setMaxFundingRate(uint256 _maxFundingRate) external onlyAdmin {
        settingsManager.setMaxFundingRate(_maxFundingRate);
    }

    function setBorrowFeeFactorPerAssetPerSide(uint256 _tokenId, bool _isLong, uint256 _borrowFeeFactor) external onlyAdmin {
        settingsManager.setBorrowFeeFactorPerAssetPerSide(_tokenId, _isLong, _borrowFeeFactor);
    }

    function setReferrerTier(address _referrer, uint256 _tier) external onlyAdmin {
        settingsManager.setReferrerTier(_referrer, _tier);
    }

    function setTierFee(uint256 _tier, uint256 _fee) external onlyAdmin {
        settingsManager.setTierFee(_tier, _fee);
    }

    function setTierRebate(uint256 _tier, uint256 _rebate) external onlyAdmin {
        settingsManager.setTierRebate(_tier, _rebate);
    }

    function setPlatformFee(address _platform, uint256 _fee) external onlyAdmin {
        settingsManager.setPlatformFee(_platform, _fee);
    }

    function setMinCollateral(uint256 _minCollateral) external onlyAdmin {
        settingsManager.setMinCollateral(_minCollateral);
    }

    function setCloseDeltaTime(uint256 _deltaTime) external onlyAdmin {
        settingsManager.setCloseDeltaTime(_deltaTime);
    }

    function setMinProfitDuration(uint256 _tokenId, uint256 _minProfitDuration) external onlyAdmin {
        settingsManager.setMinProfitDuration(_tokenId, _minProfitDuration);
    }

    function setMaxCloseProfit(uint256 _tokenId, uint256 _maxCloseProfit) external onlyAdmin {
        settingsManager.setMaxCloseProfit(_tokenId, _maxCloseProfit);
    }

    function setMaxCloseProfitPercent(uint256 _tokenId, uint256 _maxCloseProfitPercent) external onlyAdmin {
        settingsManager.setMaxCloseProfitPercent(_tokenId, _maxCloseProfitPercent);
    }

    function setDefaultMaxOpenInterestPerUser(uint256 _maxAmount) external onlyAdmin {
        settingsManager.setDefaultMaxOpenInterestPerUser(_maxAmount);
    }

    function setMaxOpenInterestPerUser(address _account, uint256 _maxAmount) external onlyAdmin {
        settingsManager.setMaxOpenInterestPerUser(_account, _maxAmount);
    }

    function setMaxOpenInterestPerAsset(uint256 _tokenId, uint256 _maxAmount) external onlyAdmin {
        settingsManager.setMaxOpenInterestPerAsset(_tokenId, _maxAmount);
    }

    function setMaxOpenInterestPerAssetPerSide(uint256 _tokenId, bool _isLong, uint256 _maxAmount) external onlyAdmin {
        settingsManager.setMaxOpenInterestPerAssetPerSide(_tokenId, _isLong, _maxAmount);
    }

    function setMaxTotalOpenInterest(uint256 _maxAmount) external onlyAdmin {
        settingsManager.setMaxTotalOpenInterest(_maxAmount);
    }

    function setMarketOrderGasFee(uint256 _fee) external onlyAdmin {
        settingsManager.setMarketOrderGasFee(_fee);
    }

    function setExpiryDuration(uint256 _expiryDuration) external onlyAdmin {
        settingsManager.setExpiryDuration(_expiryDuration);
    }
    
    function setSelfExecuteCooldown(uint256 _selfExecuteCooldown) external onlyAdmin {
        settingsManager.setSelfExecuteCooldown(_selfExecuteCooldown);
    }
    
    function setTriggerGasFee(uint256 _fee) external onlyAdmin {
        settingsManager.setTriggerGasFee(_fee);
    }
    
    function setMaxTriggerPerPosition(uint256 _value) external onlyAdmin {
        settingsManager.setMaxTriggerPerPosition(_value);
    }

    function setPriceMovementPercent(uint256 _priceMovementPercent) external onlyAdmin {
        settingsManager.setPriceMovementPercent(_priceMovementPercent);
    }

    function setSlippageFactor(uint256 _tokenId, uint256 _slippageFactor) external onlyAdmin {
        settingsManager.setSlippageFactor(_tokenId, _slippageFactor);
    }

    function setLiquidateThreshold(uint256 _tokenId, uint256 _liquidateThreshold) external onlyAdmin {
        settingsManager.setLiquidateThreshold(_tokenId, _liquidateThreshold);
    }

    function setLiquidationPendingTime(uint256 _liquidationPendingTime) external onlyAdmin {
        settingsManager.setLiquidationPendingTime(_liquidationPendingTime);
    }
    
    function setBountyPercent(uint32 _bountyPercentFirstCaller, uint32 _bountyPercentResolver) external onlyAdmin {
        settingsManager.setBountyPercent(_bountyPercentFirstCaller, _bountyPercentResolver);
    }

    function setGlobalDelegates(address _delegate, bool _allowed) external onlyAdmin {
        settingsManager.setGlobalDelegates(_delegate, _allowed);
    }

    /* ========== priceManager ========== */
    function setAsset(
        uint256 _assetId,
        string calldata _symbol,
        bytes32 _pythId,
        uint256 _price,
        uint256 _allowedStaleness,
        uint256 _allowedDeviation,
        uint256 _maxLeverage
    ) external onlyAdmin {
        priceManager.setAsset(_assetId, _symbol, _pythId, _price, _allowedStaleness, _allowedDeviation, _maxLeverage);
    }

    function setUsdAsset(
        address _tokenAddress,
        uint256 _assetId,
        string calldata _symbol,
        bytes32 _pythId,
        uint256 _price,
        uint256 _allowedStaleness,
        uint256 _allowedDeviation,
        uint256 _tokenDecimals
    ) external onlyAdmin {
        priceManager.setUsdAsset(
            _tokenAddress,
            _assetId,
            _symbol,
            _pythId,
            _price,
            _allowedStaleness,
            _allowedDeviation,
            _tokenDecimals
        );
    }

    /* ========== tokenFarm ========== */
        function setVelaPool(IComplexRewardPerSec[] calldata _rewarders, bool _enableCooldown) external onlyAdmin {
        tokenFarm.setVelaPool(_rewarders, _enableCooldown);
    }

    function setVlpPool(IComplexRewardPerSec[] calldata _rewarders, bool _enableCooldown) external onlyAdmin {
        tokenFarm.setVlpPool(_rewarders, _enableCooldown);
    }

    function updateCooldownDuration(uint256 _newCooldownDuration) external onlyAdmin {
        tokenFarm.updateCooldownDuration(_newCooldownDuration);
    }

    // updateRewardTierInfo - EOA can set with max percent of 50%
    function updateRewardTierInfo(uint256[] memory _levels, uint256[] memory _percents) external onlyAdmin {
        uint256 length = _percents.length;
        for (uint256 i; i < length; ++i) {
            if (_percents[i] > 50000) revert Unauthorized();
        }
        tokenFarm.updateRewardTierInfo(_levels, _percents);
    }

    function updateVestingDuration(uint256 _vestingDuration) external onlyAdmin {
        tokenFarm.updateVestingDuration(_vestingDuration);
    }

    /* ========== IComplexRewardPerSec ========== */
    function add(address _complexRewardPerSec, uint256 _pid, uint256 _startTimestamp) external onlyAdmin {
        IComplexRewardPerSec(_complexRewardPerSec).add(_pid, _startTimestamp);
    }

    // last input is the target contract address, since there are multiple complexRewardPerSec contracts
    function emergencyRewardWithdraw(
        uint256 _pid,
        uint256 _amount,
        address _beneficiary,
        address _complexRewardPerSec
    ) external onlyAdmin {
        IComplexRewardPerSec(_complexRewardPerSec).emergencyRewardWithdraw(_pid, _amount, _beneficiary);
    }

    function emergencyWithdraw(uint256 _amount, address _beneficiary, address _complexRewardPerSec) external onlyAdmin {
        IComplexRewardPerSec(_complexRewardPerSec).emergencyWithdraw(_amount, _beneficiary);
    }

    /* ========== swapAndAirdrop ========== */
    function setFeeManagerForSwapAirdrop(address _feeManager) external onlyAdmin {
        swapAndAirdrop.setFeeManager(_feeManager);
    }

    function updatePillInfo(
        uint256 _bluePillStartTime,
        uint256 _bluePillPeriod,
        uint256 _redPillStartTime,
        uint256 _startRatio
    ) external onlyAdmin {
        swapAndAirdrop.updatePillInfo(_bluePillStartTime, _bluePillPeriod, _redPillStartTime, _startRatio);
    }

    function setIsRedPillEnabled(bool _isRedPillEnabled) external onlyAdmin {
        swapAndAirdrop.setIsRedPillEnabled(_isRedPillEnabled);
    }

    function distributeAirdrops(AirdropInfo[] calldata _airdrops) external onlyAdmin {
        swapAndAirdrop.distributeAirdrops(_airdrops);
    }

    function updateUserVelaRatios(RatioInfo[] calldata _ratios) external onlyAdmin {
        swapAndAirdrop.updateUserVelaRatios(_ratios);
    }

    function updateUserEsVelaRatios(RatioInfo[] calldata _ratios) external onlyAdmin {
        swapAndAirdrop.updateUserEsVelaRatios(_ratios);
    }

    function updateUserPill(PillInfo[] calldata _pill) external onlyAdmin {
        swapAndAirdrop.updateUserPill(_pill);
    }

    /* ========== ITokenRewardDistributor ========== */
    // last input is the target contract address, since there might be multiple tokenRewardDistributor contracts
    function addRewards(RewardInfo[] calldata _rewardInfos, address _tokenRewardDistributor) external onlyAdmin {
        ITokenRewardDistributor(_tokenRewardDistributor).addRewards(_rewardInfos);
    }

    function setRewards(RewardInfo[] calldata _rewardInfos, address _tokenRewardDistributor) external onlyAdmin {
        ITokenRewardDistributor(_tokenRewardDistributor).setRewards(_rewardInfos);
    }

    function rescueToken(address _token, uint256 _amount, address _tokenRewardDistributor) external onlyAdmin {
        ITokenRewardDistributor(_tokenRewardDistributor).rescueToken(_token, _amount);
    }
}
