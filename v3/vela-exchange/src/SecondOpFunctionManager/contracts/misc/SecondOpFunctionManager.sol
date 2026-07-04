// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

interface ISettingsManager {

    function setDepositFee(address token, uint256 _fee) external;

    function setWithdrawFee(address token, uint256 _fee) external;

    function setStakingFee(address token, uint256 _fee) external;

    function setUnstakingFee(address token, uint256 _fee) external;

    function setTradingFee(uint256 _tokenId, bool _isLong, uint256 _tradingFee) external;

    function setDeductFeePercentForUser(address _account, uint256 _deductFee) external;
    
    function setFundingRateFactor(uint256 _tokenId, uint256 _fundingRateFactor) external;

    function setBorrowFeeFactorPerAssetPerSide(uint256 _tokenId, bool _isLong, uint256 _borrowFeeFactor) external;

    function setReferrerTier(address _referrer, uint256 _tier) external;

    function setTierFee(uint256 _tier, uint256 _fee) external;

    function setTierRebate(uint256 _tier, uint256 _rebate) external;

    function setPlatformFee(address _platform, uint256 _fee) external;

    function setIsIncreasingPositionDisabled(uint256 _tokenId, bool _isDisabled) external;

    function setIsDecreasingPositionDisabled(uint256 _tokenId, bool _isDisabled) external;

    function setMinCollateral(uint256 _minCollateral) external;

    function setMaxOpenInterestPerUser(address _account, uint256 _maxAmount) external;

    function setMaxOpenInterestPerAsset(uint256 _tokenId, uint256 _maxAmount) external;

    function setDefaultMaxOpenInterestPerUser(uint256 _maxAmount) external;

    function setMaxOpenInterestPerAssetPerSide(uint256 _tokenId, bool _isLong, uint256 _maxAmount) external;

    function setMaxTotalOpenInterest(uint256 _maxAmount) external;

    function setMarketOrderGasFee(uint256 _fee) external;

    function setTriggerGasFee(uint256 _fee) external;
    
    function setMaxTriggerPerPosition(uint256 _value) external;

    function setSlippageFactor(uint256 _tokenId, uint256 _slippageFactor) external;

    function setIsWhitelistedFromCooldown(address _addr, bool _isWhitelisted) external;

    function setIsWhitelistedFromTransferCooldown(address _addr, bool _isWhitelisted) external;

    function addWalletsToBanList(address[] memory _wallets) external;

    function removeWalletsFromBanList(address[] memory _wallets) external;
}

interface ITokenFarm {
    function addDelegatesToCooldownWhiteList(address[] memory _delegates) external;

    function removeDelegatesFromCooldownWhiteList(address[] memory _delegates) external;

}

interface IComplexRewardPerSec {
    function addRewardInfo(uint256 _pid, uint256 _endTimestamp, uint256 _rewardPerSec) external;

    function rewardToken() external view returns (IERC20);
}

interface IOperators {
    function getOperatorLevel(address op) external view returns (uint256);
}

contract SecondOpFunctionManager {
    using SafeERC20 for IERC20;
    ISettingsManager public immutable settingsManager;
    ITokenFarm public immutable tokenFarm;

    IOperators public immutable operators;

    uint256 internal constant PRICE_PRECISION = 10 ** 30;

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

    constructor(address _settingsManager, address _tokenFarm, address _operators) {
        settingsManager = ISettingsManager(_settingsManager);
        tokenFarm = ITokenFarm(_tokenFarm);

        operators = IOperators(_operators);

        // isAdmin[msg.sender] = true;
    }

    function setAdmin(address _account, bool _isAdmin) external onlyOperator(4) {
        isAdmin[_account] = _isAdmin;
    }

    /* ========== settingsManager ========== */
    // setDepositFee - EOA can only set within 0.0% to 5%
    function setDepositFee(address token, uint256 _fee) external onlyAdmin {
        if (_fee > 5000) revert Unauthorized();
        settingsManager.setDepositFee(token, _fee);
    }

    // setWithdrawFee - EOA can only set within 0.0% to 5%
    function setWithdrawFee(address token, uint256 _fee) external onlyAdmin {
        if (_fee > 5000) revert Unauthorized();
        settingsManager.setWithdrawFee(token, _fee);
    }

    // setStakingFee - EOA can only set within 0.0% to 5%
    function setStakingFee(address token, uint256 _fee) external onlyAdmin {
        if (_fee > 5000) revert Unauthorized();
        settingsManager.setStakingFee(token, _fee);
    }

    // setUnstakingFee - EOA can only set within 0.0% to 5%
    function setUnstakingFee(address token, uint256 _fee) external onlyAdmin {
        if (_fee > 5000) revert Unauthorized();
        settingsManager.setUnstakingFee(token, _fee);
    }

    // setTradingFee - EOA can only set within 0.005% to 0.2%
    function setTradingFee(uint256 _tokenId, bool _isLong, uint256 _tradingFee) external onlyAdmin {
        if (_tradingFee < 5 || _tradingFee > 200) revert Unauthorized();
        settingsManager.setTradingFee(_tokenId, _isLong, _tradingFee);
    }

    // setDeductFeePercentForUser - EOA can only set within 0.0% to 40%
    function setDeductFeePercentForUser(address _account, uint256 _deductFee) external onlyAdmin {
        if (_deductFee > 40000) revert Unauthorized();
        settingsManager.setDeductFeePercentForUser(_account, _deductFee);
    }

    // setFundingRateFactor - EOA can set from 0 to 25000
    function setFundingRateFactor(uint256 _tokenId, uint256 _fundingRateFactor) external onlyAdmin {
        if (_fundingRateFactor > 25000) revert Unauthorized();
        settingsManager.setFundingRateFactor(_tokenId, _fundingRateFactor);
    }

    // setBorrowFeeFactorPerAssetPerSide - EOA can only set from 0 to 500
    function setBorrowFeeFactorPerAssetPerSide(
        uint256 _tokenId,
        bool _isLong,
        uint256 _borrowFeeFactor
    ) external onlyAdmin {
        if (_borrowFeeFactor > 500) revert Unauthorized();
        settingsManager.setBorrowFeeFactorPerAssetPerSide(_tokenId, _isLong, _borrowFeeFactor);
    }

    function setReferrerTier(address _referrer, uint256 _tier) external onlyAdmin {
        settingsManager.setReferrerTier(_referrer, _tier);
    }

    // setTierFee - EOA can set from 0% to 50%
    function setTierFee(uint256 _tier, uint256 _fee) external onlyAdmin {
        if (_fee > 50000) revert Unauthorized();
        settingsManager.setTierFee(_tier, _fee);
    }

    // setTierRebate - EOA can set from 0% to 50%
    function setTierRebate(uint256 _tier, uint256 _rebate) external onlyAdmin {
        if (_rebate > 50000) revert Unauthorized();
        settingsManager.setTierRebate(_tier, _rebate);
    }

    // setTierFee - EOA can set from 0% to 50%
    function setPlatformFee(address _platform, uint256 _fee) external onlyAdmin {
        if (_fee > 50000) revert Unauthorized();
        settingsManager.setPlatformFee(_platform, _fee);
    }

    // setMinCollateral - EOA can set from 1 to 100
    function setMinCollateral(uint256 _minCollateral) external onlyAdmin {
        if (_minCollateral < 1 * PRICE_PRECISION || _minCollateral > 100 * PRICE_PRECISION) revert Unauthorized();
        settingsManager.setMinCollateral(_minCollateral);
    }

    function addWalletsToBanList(address[] memory _wallets) external onlyAdmin {
        settingsManager.addWalletsToBanList(_wallets);
    }

    function removeWalletsFromBanList(address[] memory _wallets) external onlyAdmin {
        settingsManager.removeWalletsFromBanList(_wallets);
    }

    function setIsWhitelistedFromCooldown(address _addr, bool _isWhitelisted) external onlyAdmin {
        settingsManager.setIsWhitelistedFromCooldown(_addr, _isWhitelisted);
    }

    function setIsWhitelistedFromTransferCooldown(address _addr, bool _isWhitelisted) external onlyAdmin {
        settingsManager.setIsWhitelistedFromTransferCooldown(_addr, _isWhitelisted);
    }

    function setIsIncreasingPositionDisabled(uint256 _tokenId, bool _isDisabled) external onlyAdmin {
        settingsManager.setIsIncreasingPositionDisabled(_tokenId, _isDisabled);
    }

    function setIsDecreasingPositionDisabled(uint256 _tokenId, bool _isDisabled) external onlyAdmin {
        settingsManager.setIsDecreasingPositionDisabled(_tokenId, _isDisabled);
    }

    // setMaxOpenInterestPerUser - EOA can set from 0 to 1000000
    function setMaxOpenInterestPerUser(address _account, uint256 _maxAmount) external onlyAdmin {
        if (_maxAmount > 1000000 * PRICE_PRECISION) revert Unauthorized();
        settingsManager.setMaxOpenInterestPerUser(_account, _maxAmount);
    }

    // setMaxOpenInterestPerAsset - EOA can set from 0 to 20000000
    function setMaxOpenInterestPerAsset(uint256 _tokenId, uint256 _maxAmount) external onlyAdmin {
        if (_maxAmount > 20000000 * PRICE_PRECISION) revert Unauthorized();
        settingsManager.setMaxOpenInterestPerAsset(_tokenId, _maxAmount);
    }

    // setMaxOpenInterestPerAssetPerSide - EOA can set from 0 to 20000000
    function setMaxOpenInterestPerAssetPerSide(uint256 _tokenId, bool _isLong, uint256 _maxAmount) external onlyAdmin {
        if (_maxAmount > 20000000 * PRICE_PRECISION) revert Unauthorized();
        settingsManager.setMaxOpenInterestPerAssetPerSide(_tokenId, _isLong, _maxAmount);
    }

    // setMaxTotalOpenInterest - EOA can set from 0 to 20000000
    function setMaxTotalOpenInterest(uint256 _maxAmount) external onlyAdmin {
        if (_maxAmount > 20000000 * PRICE_PRECISION) revert Unauthorized();
        settingsManager.setMaxTotalOpenInterest(_maxAmount);
    }

    // setMarketOrderGasFee - EOA can set from 0 to 0.001
    function setMarketOrderGasFee(uint256 _fee) external onlyAdmin {
        if (_fee > 1e6 gwei) revert Unauthorized();
        settingsManager.setMarketOrderGasFee(_fee);
    }
    
    // setTriggerGasFee - EOA can set from 0 to 0.001
    function setTriggerGasFee(uint256 _fee) external onlyAdmin {
        if (_fee > 1e6 gwei) revert Unauthorized();
        settingsManager.setTriggerGasFee(_fee);
    }

    // setMaxTriggerPerPosition - EOA can set from 1 to 20
    function setMaxTriggerPerPosition(uint256 _value) external onlyAdmin {
        if (_value > 20) revert Unauthorized();
        settingsManager.setMaxTriggerPerPosition(_value);
    }

    // setSlippageFactor - EOA can set from 0 to 1000
    function setSlippageFactor(uint256 _tokenId, uint256 _slippageFactor) external onlyAdmin {
        if (_slippageFactor > 1000) revert Unauthorized();
        settingsManager.setSlippageFactor(_tokenId, _slippageFactor);
    }

    /* ========== tokenFarm ========== */
    function addDelegatesToCooldownWhiteList(address[] memory _delegates) external onlyAdmin {
        tokenFarm.addDelegatesToCooldownWhiteList(_delegates);
    }

    function removeDelegatesFromCooldownWhiteList(address[] memory _delegates) external onlyAdmin {
        tokenFarm.removeDelegatesFromCooldownWhiteList(_delegates);
    }

    /* ========== IComplexRewardPerSec ========== */
    // last input is the target contract address, since there are multiple complexRewardPerSec contracts
    function addRewardInfo(
        uint256 _pid,
        uint256 _endTimestamp,
        uint256 _rewardPerSec,
        uint256 _totalRewards,
        address _complexRewardPerSec
    ) external onlyAdmin {
        IERC20 rewardToken = IComplexRewardPerSec(_complexRewardPerSec).rewardToken();
        rewardToken.safeTransferFrom(msg.sender, address(this), _totalRewards);
        rewardToken.safeApprove(_complexRewardPerSec, _totalRewards);
        IComplexRewardPerSec(_complexRewardPerSec).addRewardInfo(_pid, _endTimestamp, _rewardPerSec);
    }
}
