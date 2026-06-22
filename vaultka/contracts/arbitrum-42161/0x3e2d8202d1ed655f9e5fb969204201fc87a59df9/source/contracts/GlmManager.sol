// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import { IERC4626Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC4626Upgradeable.sol";
import { IERC20Upgradeable, SafeERC20Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

import { IGlmManager } from "./interfaces/IGlmManager.sol";
import { IGlmVault } from "./interfaces/IGlmVault.sol";
import { IGlmPriceReader } from "./interfaces/IGlmPriceReader.sol";
import { IGlmFeeCalculator } from "./interfaces/IGlmFeeCalculator.sol";
import { IGlmAddresses } from "./interfaces/IGlmAddresses.sol";

/**
 * @title Glm Manager Contract
 * @notice This contract is
 * 1. responsible for managing pool weighting (and potential rebalance logic) of GM tokens
 * @author Vaultka
 **/

contract GlmManager is IGlmManager, IGlmAddresses, OwnableUpgradeable {
    using SafeERC20Upgradeable for IERC20Upgradeable;

    address public glmFeeReceiver;
    address public USDC;

    bool public isFeeActive;
    uint16 internal constant MAX_BPS = 10_000;
    uint256 internal constant DECIMAL_PRECISION = 1e30;

    Glm public glm;
    GmPoolInfo[] public gmPools;
    mapping(address => GmPoolInfo) public marketTokenToGmPoolInfo;

    uint256[50] __gaps;

    /*//////////////////////////////////////////////////////////////
                            INIT FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _USDC) public initializer {
        USDC = _USDC;
        __Ownable_init();
    }

    /*//////////////////////////////////////////////////////////////
                      STRATEGY PARAMETERS SETTERS
    //////////////////////////////////////////////////////////////*/
    function setGlmAddresses(
        address _glmVault,
        address _glmRouter,
        address _glmManager,
        address _glmManagerCallback,
        address _glmRebalance,
        address _glmRebalanceCallback,
        address _glmPriceReader,
        address _glmFeeCalculator
    ) external onlyOwner {
        glm = Glm({
            vault: _glmVault,
            router: _glmRouter,
            manager: _glmManager,
            managerCallback: _glmManagerCallback,
            rebalance: _glmRebalance,
            rebalanceCallback: _glmRebalanceCallback,
            priceReader: _glmPriceReader,
            feeCalculator: _glmFeeCalculator
        });
        emit SetGlmAddresses(
            _glmVault,
            _glmRouter,
            _glmManager,
            _glmManagerCallback,
            _glmRebalance,
            _glmRebalanceCallback,
            _glmPriceReader,
            _glmFeeCalculator
        );
    }

    function setGlmFeeReceiver(address _glmFeeReceiver) external onlyOwner {
        require(_glmFeeReceiver != address(0), "Invalid address");
        glmFeeReceiver = _glmFeeReceiver;
        emit SetGlmFeeReceiver(_glmFeeReceiver);
    }

    function setIsFeeActive(bool _isFeeActive) external onlyOwner {
        isFeeActive = _isFeeActive;
        emit SetIsFeeActive(isFeeActive);
    }

    //function to add a new gmPool
    function addGmPool(
        address _marketToken,
        address _indexToken,
        address _shortToken,
        address _longToken,
        uint256 _targetWeight,
        uint256 _minimumWeight
    ) external onlyOwner {
        gmPools.push(
            GmPoolInfo({
                marketToken: _marketToken,
                indexToken: _indexToken,
                shortToken: _shortToken,
                longToken: _longToken,
                targetWeight: _targetWeight,
                minimumWeight: _minimumWeight
            })
        );
        marketTokenToGmPoolInfo[_marketToken] = GmPoolInfo({
            marketToken: _marketToken,
            indexToken: _indexToken,
            shortToken: _shortToken,
            longToken: _longToken,
            targetWeight: _targetWeight,
            minimumWeight: _minimumWeight
        });
        //get the index of the pool
        uint256 index = gmPools.length - 1;
        emit AddGmPool(index, _marketToken, _indexToken, _shortToken, _longToken, _targetWeight, _minimumWeight);
    }

    //function to set Gm Pool
    function setGmPool(
        uint256 _index,
        address _marketToken,
        address _indexToken,
        address _shortToken,
        address _longToken,
        uint256 _targetWeight,
        uint256 _minimumWeight
    ) external onlyOwner {
        require(gmPools[_index].marketToken != address(0), "Pool does not exist");
        require(_targetWeight <= DECIMAL_PRECISION, "Target weight is too high");
        require(_targetWeight >= gmPools[_index].minimumWeight, "Target weight is too low");
        require(_targetWeight >= 1e28 && _minimumWeight >= 1e28, "weight has to be >1%");

        gmPools[_index].marketToken = _marketToken;
        gmPools[_index].shortToken = _shortToken;
        gmPools[_index].longToken = _longToken;
        gmPools[_index].targetWeight = _targetWeight;
        gmPools[_index].minimumWeight = _minimumWeight;

        marketTokenToGmPoolInfo[_marketToken].marketToken = _marketToken;
        marketTokenToGmPoolInfo[_marketToken].shortToken = _shortToken;
        marketTokenToGmPoolInfo[_marketToken].longToken = _longToken;
        marketTokenToGmPoolInfo[_marketToken].indexToken = _indexToken;
        marketTokenToGmPoolInfo[_marketToken].targetWeight = _targetWeight;
        marketTokenToGmPoolInfo[_marketToken].minimumWeight = _minimumWeight;
        emit SetGmPool(_index, _marketToken, _indexToken, _shortToken, _longToken, _targetWeight, _minimumWeight);
    }

    //function to remove gmPool
    function removeGmPool(uint256 _index) external onlyOwner {
        address marketToken = gmPools[_index].marketToken;
        gmPools[_index] = gmPools[gmPools.length - 1];
        gmPools.pop();
        delete marketTokenToGmPoolInfo[marketToken];
        emit RemoveGmPool(_index);
    }

    //function to set gmPool target Weight only
    function setGmPoolTargetWeight(uint256 _index, uint256 _targetWeight) external onlyOwner {
        require(_targetWeight <= DECIMAL_PRECISION, "Target weight is too high");
        require(_targetWeight >= gmPools[_index].minimumWeight, "Target weight is too low");
        require(_targetWeight >= 1e28, "Target weight has to be >1%");

        gmPools[_index].targetWeight = _targetWeight;
        address marketToken = gmPools[_index].marketToken;
        marketTokenToGmPoolInfo[marketToken].targetWeight = _targetWeight;
        emit SetGmPoolTargetWeight(_index, _targetWeight);
    }

    //function to set gmPool minimum Weight only
    function setGmPoolMinimumWeight(uint256 _index, uint256 _minimumWeight) external onlyOwner {
        require(_minimumWeight >= 1e28, "Minimum weight has to be >1%");
        require(_minimumWeight <= gmPools[_index].targetWeight, "Minimum weight is too high");

        gmPools[_index].minimumWeight = _minimumWeight;
        address marketToken = gmPools[_index].marketToken;
        marketTokenToGmPoolInfo[marketToken].minimumWeight = _minimumWeight;
        emit SetGmPoolMinimumWeight(_index, _minimumWeight);
    }

    /*//////////////////////////////////////////////////////////////
                    VIEW FUNCTIONS 
    //////////////////////////////////////////////////////////////*/

    //check if a token is gmMarketToken
    function isGmMarketToken(address _token) public view returns (bool) {
        for (uint256 i; i < gmPools.length; i++) {
            if (gmPools[i].marketToken == _token) {
                return true;
            }
        }
        return false;
    }

    //check if a token is gmLongToken or gmShortToken
    function isGmLongOrShortToken(address _token) public view returns (bool) {
        for (uint256 i; i < gmPools.length; i++) {
            if (gmPools[i].longToken == _token || gmPools[i].shortToken == _token) {
                return true;
            }
        }
        return false;
    }

    //function to make sure that the sum of all target weights is 100%
    function checkTargetWeights() public view returns (bool) {
        uint256 sum;
        for (uint256 i; i < gmPools.length; i++) {
            sum += gmPools[i].targetWeight;
        }
        return sum == DECIMAL_PRECISION;
    }

    //getTargetWeight for a pool
    function getTargetWeight(uint256 _index) public view returns (uint256 targetWeight) {
        return gmPools[_index].targetWeight;
    }

    //function to return weights for all pools
    function getTargetWeights() public view returns (uint256[] memory targetWeights) {
        targetWeights = new uint256[](gmPools.length);
        for (uint256 i; i < gmPools.length; i++) {
            targetWeights[i] = gmPools[i].targetWeight;
        }
        return targetWeights;
    }

    //function to get all current weights
    function getCurrentWeights() public view returns (uint256[] memory currentWeights) {
        uint256 totalAsset = IERC4626Upgradeable(glm.vault).totalAssets();
        currentWeights = new uint256[](gmPools.length);
        for (uint256 i; i < gmPools.length; i++) {
            currentWeights[i] = getCurrentWeight(i, totalAsset);
        }
        return currentWeights;
    }

    //function to get minimum weights for one pool;
    function getMinimumWeight(uint256 _index) public view returns (uint256 minimumWeight) {
        return gmPools[_index].minimumWeight;
    }

    //function to get minimum weights for all pools
    function getMinimumWeights() public view returns (uint256[] memory minimumWeights) {
        minimumWeights = new uint256[](gmPools.length);
        for (uint256 i; i < gmPools.length; i++) {
            minimumWeights[i] = gmPools[i].minimumWeight;
        }
        return minimumWeights;
    }

    //amount is in USDC
    //fee/1e30 = fee in %
    function getRatioImpactFeeBps(uint256 _index, uint256 _usdcAmount) public view returns (uint256 ratioImpactFeeBps) {
        uint256 totalAssets = IERC4626Upgradeable(glm.vault).totalAssets();
        uint256 weightAfterWithdrawal = getWeightAfterWithdrawal(_index, _usdcAmount, totalAssets);
        uint256 targetWeight = getTargetWeight(_index);
        if (weightAfterWithdrawal < targetWeight) {
            uint256 deviation = targetWeight - weightAfterWithdrawal; //in1e30
            uint256 fee = IGlmFeeCalculator(glm.feeCalculator).calculateAggressiveFee(deviation);
            return fee * 1e10;
        } else {
            //@note the pool is still overweight or equal to traget weight => no fee
            return 0;
        }
    }

    //get pool id by marketToken
    function getPoolIdByMarketToken(address _marketToken) public view returns (uint256 index) {
        for (uint256 i; i < gmPools.length; i++) {
            if (gmPools[i].marketToken == _marketToken) {
                return i;
            }
        }
    }

    //@note amount in USDC
    function getWeightAfterWithdrawal(
        uint256 _index,
        uint256 _usdcAmount,
        uint256 totalAssets
    ) public view returns (uint256 weightAfterWithdrawal) {
        if (totalAssets > 0) {
            uint256 currentGmTokenValue = (
                getGmTokenValueInUsdc(gmPools[_index].marketToken, IERC20Upgradeable(gmPools[_index].marketToken).balanceOf(glm.vault))
            );
            //if the value of the pool is greater than the amount to withdraw
            currentGmTokenValue >= _usdcAmount
                ? weightAfterWithdrawal = ((currentGmTokenValue - _usdcAmount) * DECIMAL_PRECISION) / (totalAssets - _usdcAmount)
                : weightAfterWithdrawal = 0;
        } else {
            return 0;
        }
    }

    function getWeightAfterDepositForSwap(
        uint256 _index,
        uint256 _usdcAmount,
        uint256 totalAssets
    ) public view returns (uint256 weightAfterDeposit) {
        if (totalAssets > 0) {
            uint256 currentGmTokenValue = (
                getGmTokenValueInUsdc(gmPools[_index].marketToken, IERC20Upgradeable(gmPools[_index].marketToken).balanceOf(glm.vault))
            );
            weightAfterDeposit = ((currentGmTokenValue + _usdcAmount) * DECIMAL_PRECISION) / (totalAssets);
        } else {
            return 0;
        }
    }

    //@note amount in USDC
    function getWeightAfterWithdrawalForSwap(
        uint256 _index,
        uint256 _usdcAmount,
        uint256 totalAssets
    ) public view returns (uint256 weightAfterWithdrawal) {
        if (totalAssets > 0) {
            uint256 currentGmTokenValue = (
                getGmTokenValueInUsdc(gmPools[_index].marketToken, IERC20Upgradeable(gmPools[_index].marketToken).balanceOf(glm.vault))
            );
            //if the value of the pool is greater than the amount to withdraw
            currentGmTokenValue >= _usdcAmount
                ? weightAfterWithdrawal = ((currentGmTokenValue - _usdcAmount) * DECIMAL_PRECISION) / totalAssets
                : weightAfterWithdrawal = 0;
        } else {
            return 0;
        }
    }

    function getMaxSwapAmount(uint256 inputIndex, uint256 outputIndex) public view returns (uint256 maxSwapAmountInInputToken) {
        uint256 totalAssets = IERC4626Upgradeable(glm.vault).totalAssets();
        uint256 currentWeight = getCurrentWeight(outputIndex, totalAssets);
        uint256 minimumWeight = getMinimumWeight(outputIndex);

        if (currentWeight > minimumWeight) {
            uint256 maxSwapAmountInUsdc = ((currentWeight - minimumWeight) * totalAssets) / DECIMAL_PRECISION;

            maxSwapAmountInInputToken = getGmTokenAmountFromUsdc(gmPools[inputIndex].marketToken, maxSwapAmountInUsdc);
        } else {
            maxSwapAmountInInputToken = 0;
        }
    }

    function getMaxSwapAmountWithTA(
        uint256 inputIndex,
        uint256 outputIndex,
        uint256 totalAssets
    ) external view returns (uint256 maxSwapAmountInInputToken) {
        uint256 currentWeight = getCurrentWeight(outputIndex, totalAssets);
        uint256 minimumWeight = getMinimumWeight(outputIndex);

        if (currentWeight > minimumWeight) {
            uint256 maxSwapAmountInUsdc = ((currentWeight - minimumWeight) * totalAssets) / DECIMAL_PRECISION;
            maxSwapAmountInInputToken = getGmTokenAmountFromUsdc(gmPools[inputIndex].marketToken, maxSwapAmountInUsdc);
        } else {
            maxSwapAmountInInputToken = 0;
        }
    }

    function getCurrentWeight(uint256 _index) public view returns (uint256 currentWeight) {
        uint256 totalAssets = IERC4626Upgradeable(glm.vault).totalAssets();
        if (totalAssets > 0) {
            address marketToken = gmPools[_index].marketToken;

            uint256 assetValueInUsdc = getGmTokenValueInUsdc(marketToken, IERC20Upgradeable(marketToken).balanceOf(glm.vault));

            currentWeight = (assetValueInUsdc * DECIMAL_PRECISION) / totalAssets;
            return currentWeight;
        } else {
            return 0;
        }
    }

    //function to check current weight of a pool
    function getCurrentWeight(uint256 _index, uint256 totalAssets) public view returns (uint256 currentWeight) {
        if (totalAssets > 0) {
            address marketToken = gmPools[_index].marketToken;

            uint256 assetValueInUsdc = getGmTokenValueInUsdc(marketToken, IERC20Upgradeable(marketToken).balanceOf(glm.vault));

            currentWeight = (assetValueInUsdc * DECIMAL_PRECISION) / totalAssets;
            return currentWeight;
        } else {
            return 0;
        }
    }

    //function to check which pool is overweighting the most
    function getMostOverWeightedPool(uint256 totalAssets) public view returns (uint256 index) {
        uint256 max;
        uint256 maxIndex;
        for (uint256 i; i < gmPools.length; i++) {
            uint256 currentWeight = getCurrentWeight(i, totalAssets);
            uint256 targetWeight = getTargetWeight(i);
            if (currentWeight > targetWeight) {
                if (currentWeight - targetWeight > max) {
                    max = currentWeight - targetWeight;
                    maxIndex = i;
                }
            }
        }
        return maxIndex;
    }

    //function to check which pool is underweighting the most
    function getMostUnderWeightedPool(uint256 totalAssets) public view returns (uint256 index) {
        uint256 max;
        uint256 maxIndex;
        for (uint256 i; i < gmPools.length; i++) {
            uint256 currentWeight = getCurrentWeight(i, totalAssets);
            uint256 targetWeight = getTargetWeight(i);
            if (currentWeight < targetWeight) {
                if (targetWeight - currentWeight > max) {
                    max = targetWeight - currentWeight;
                    maxIndex = i;
                }
            }
        }
        return maxIndex;
    }

    function getGlmVaultGmTokenBalance(address _gmToken) public view returns (uint256) {
        return IERC20Upgradeable(_gmToken).balanceOf(glm.vault);
    }

    function getGmTokenValueInUsdc(address _gmToken, uint256 _amount) public view returns (uint256) {
        uint256 gmTokenPrice = IGlmPriceReader(glm.priceReader).getMarketTokenPrice(_gmToken);
        uint256 usdcPrice = IGlmPriceReader(glm.priceReader).getTokenPrice(USDC) / 1e18;

        return ((gmTokenPrice * _amount) * usdcPrice) / 1e30 / 1e18; //return 1e6
    }

    //function to get how many gmToken can be bought by a certain amount of usdc
    function getGmTokenAmountFromUsdc(address _gmToken, uint256 _usdcAmount) public view returns (uint256) {
        uint256 gmTokenPrice = IGlmPriceReader(glm.priceReader).getMarketTokenPrice(_gmToken);

        uint256 usdcPrice = IGlmPriceReader(glm.priceReader).getTokenPrice(USDC) / 1e18;

        return (_usdcAmount * 1e30 * usdcPrice * 1e6) / gmTokenPrice;
    }

    //return all 5 values in usdc using the balance of GM tokens in GlmVault
    function getGmTokenValuesInUsdc() public view returns (uint256[] memory gmTokenValues) {
        gmTokenValues = new uint256[](gmPools.length);
        for (uint256 i; i < gmPools.length; i++) {
            gmTokenValues[i] = getGmTokenValueInUsdc(
                gmPools[i].marketToken,
                IERC20Upgradeable(gmPools[i].marketToken).balanceOf(glm.vault)
            );
        }
        return gmTokenValues;
    }

    function getGmTokenAddress(uint256 _index) public view returns (address) {
        return gmPools[_index].marketToken;
    }

    //get all gmPool length
    function getGmPoolLength() public view returns (uint256) {
        return gmPools.length;
    }

    //add a view function to get gmPool
    function getGmPoolByIndex(
        uint256 _index
    ) public view returns (address marketToken, address indexToken, address shortToken, address longToken, uint256 targetWeight) {
        return (
            gmPools[_index].marketToken,
            gmPools[_index].indexToken,
            gmPools[_index].shortToken,
            gmPools[_index].longToken,
            gmPools[_index].targetWeight
        );
    }

    function getGmPoolByGmToken(
        address _gmToken
    ) public view returns (address marketToken, address indexToken, address shortToken, address longToken, uint256 targetWeight) {
        return (
            marketTokenToGmPoolInfo[_gmToken].marketToken,
            marketTokenToGmPoolInfo[_gmToken].indexToken,
            marketTokenToGmPoolInfo[_gmToken].shortToken,
            marketTokenToGmPoolInfo[_gmToken].longToken,
            marketTokenToGmPoolInfo[_gmToken].targetWeight
        );
    }

    /*//////////////////////////////////////////////////////////////
                            PROTOCOL FUNCTIONS 
    //////////////////////////////////////////////////////////////*/
    // support direct deposit from GlmRouter (but not withdrawal)
    function depositFromRouter(address gmToken, uint256 gmTokenAmount, address user) external {
        require(msg.sender == glm.router, "Request is not from GlmRouter");
        uint256 GmTokenValueInUsdc = getGmTokenValueInUsdc(gmToken, gmTokenAmount);

        IERC4626Upgradeable(glm.vault).deposit(GmTokenValueInUsdc, user);
        IERC20Upgradeable(gmToken).safeTransfer(glm.vault, gmTokenAmount);

        emit DepositFromRouter(gmToken, gmTokenAmount, user);
    }

    function withdrawFromRouter(address gmToken, uint256 gmAmount, uint256 glmAmount, address user) external {
        require(msg.sender == glm.router, "Request is not from GlmRouter");
        uint256 poolId = getPoolIdByMarketToken(gmToken);

        uint256 feeInUsdc;
        uint256 feeInGm;

        uint256 glmPrice = IGlmPriceReader(glm.priceReader).getGlmPrice();
        uint256 glmUSDCValue = (glmPrice * glmAmount) / 1e6;

        if (isFeeActive) {
            uint256 ratioImpactFeeBps = getRatioImpactFeeBps(poolId, glmUSDCValue);
            feeInUsdc = (glmUSDCValue * ratioImpactFeeBps) / DECIMAL_PRECISION;
            feeInGm = (gmAmount * ratioImpactFeeBps) / DECIMAL_PRECISION;

            glmUSDCValue -= feeInUsdc;
            gmAmount -= feeInGm;
            IGlmVault(glm.vault).transferGm(gmToken, feeInGm, glmFeeReceiver);
        }
        //at this point we have the glm token in Manager
        IGlmVault(glm.vault).transferGm(gmToken, gmAmount, user);

        IGlmVault(glm.vault).finalizeWithdrawal(glmUSDCValue, glmAmount, user);

        emit WithdrawalFromRouter(gmToken, gmAmount, glmAmount, user, feeInUsdc, feeInGm);
    }
}
