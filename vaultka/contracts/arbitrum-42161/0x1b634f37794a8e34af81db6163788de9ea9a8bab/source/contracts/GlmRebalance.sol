// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;
import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import { IERC20Upgradeable, SafeERC20Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import { IERC4626Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC4626Upgradeable.sol";

import { IExchangeRouter } from "./interfaces/Gmx/IExchangeRouter.sol";

import { IGlmManager } from "./interfaces/IGlmManager.sol";
import { IGlmRouter } from "./interfaces/IGlmRouter.sol";
import { IGlmVault } from "./interfaces//IGlmVault.sol";
import { IGlmPriceReader } from "./interfaces/IGlmPriceReader.sol";
import { IGlmRebalance } from "./interfaces/IGlmRebalance.sol";
import { IGlmRebalanceCallback } from "./interfaces/IGlmRebalanceCallback.sol";
import { IGlmAddresses } from "./interfaces/IGlmAddresses.sol";

contract GlmRebalance is IGlmAddresses, OwnableUpgradeable, IGlmRebalance {
    using SafeERC20Upgradeable for IERC20Upgradeable;

    uint256 public corePoolThreshold; // 70%,
    uint256 public corePoolUpperRatio; // in MAX_BPS 7000 = 70%
    uint256 public corePoolLowerRatio; // 3  MAX_BPS 3000 = 30%

    uint256 public currentId;

    uint16 public constant MAX_BPS = 10_000;
    uint256 public constant DECIMAL_PRECISION = 1e30;
    GMXAddresses public gmxAddresses;

    Glm public glm;
    mapping(uint256 => RebalanceInfo) public rebalanceInfo;
    mapping(address => bool) public isGlmKeeper;

    uint256[50] __gaps;

    /*//////////////////////////////////////////////////////////////
                           MODIFERS
    //////////////////////////////////////////////////////////////*/
    modifier onlyGlmKeeper() {
        require(isGlmKeeper[msg.sender], "Only GlmKeeper can call this function");
        _;
    }

    //add modfier for onlyGlmVault
    modifier onlyGlmVault() {
        require(msg.sender == glm.vault, "Only GlmVault can call this function");
        _;
    }

    modifier onlyGlmRebalanceCallback() {
        require(msg.sender == glm.rebalanceCallback, "Only GlmRebalanceCallback can call this function");
        _;
    }

    /*//////////////////////////////////////////////////////////////
                            INIT FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize() public initializer {
        __Ownable_init();
    }

    /*//////////////////////////////////////////////////////////////
                      STRATEGY PARAMETERS SETTERS
    //////////////////////////////////////////////////////////////*/

    function setGmxAddresses(
        address _depositVault,
        address _withdrawalVault,
        address _gmxRouter,
        address _exchangeRouter
    ) external onlyOwner {
        gmxAddresses = GMXAddresses({
            depositVault: _depositVault,
            withdrawalVault: _withdrawalVault,
            gmxRouter: _gmxRouter,
            exchangeRouter: _exchangeRouter
        });

        emit SetGMXAddresses(_depositVault, _withdrawalVault, _gmxRouter, _exchangeRouter);
    }

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

    function setParameters(
        uint256 _corePoolThreshold, //1e30
        uint256 _corePoolUpperRatio,
        uint256 _corePoolLowerRatio
    ) external onlyOwner {
        require(
            _corePoolThreshold < DECIMAL_PRECISION && _corePoolThreshold > DECIMAL_PRECISION / 2,
            "corePoolThreshold must be greater than 0 and more than 50% "
        );
        require(
            _corePoolUpperRatio > _corePoolLowerRatio && _corePoolUpperRatio < MAX_BPS,
            "corePoolUpperRatio must be greater than corePoolLowerRatio and less than 100%"
        );
        corePoolThreshold = _corePoolThreshold;
        corePoolUpperRatio = _corePoolUpperRatio;
        corePoolLowerRatio = _corePoolLowerRatio;

        emit SetParameters(_corePoolThreshold, corePoolUpperRatio, corePoolLowerRatio);
    }

    //set glmKeeper
    function setGlmKeeper(address _glmKeeper, bool _isGlmKeeper) external onlyOwner {
        require(_glmKeeper != address(0), "GlmKeeper address cannot be zero");
        isGlmKeeper[_glmKeeper] = _isGlmKeeper;
        emit SetGlmKeeper(_glmKeeper, _isGlmKeeper);
    }

    /*//////////////////////////////////////////////////////////////
                      EXTERNAL VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    //function to calculate the difference between current weight and target weight in int256

    //+ve number: sell
    //-ve number: buy
    function getWeightDiff(uint256 currentWeight, uint256 targetWeight) public pure returns (int256) {
        int256 weightDiff = int256(targetWeight) - int256(currentWeight);
        return weightDiff;
    }

    //get weight Diffs
    function getLatestReBalInfo()
        public
        view
        returns (
            address[4] memory gmTokens,
            int256[4] memory weightDiffs,
            int256[4] memory usdcAmounts,
            int256[4] memory gmTokenAmounts,
            uint256 sellCount,
            bool isValidRebalance
        )
    {
        uint256 totalAssets = IERC4626Upgradeable(glm.vault).totalAssets();
        IGlmManager manager = IGlmManager(glm.manager);
        for (uint256 i; i < manager.getGmPoolLength(); i++) {
            uint256 targetWeight = manager.getTargetWeight(i);
            uint256 currentWeight = manager.getCurrentWeight(i, totalAssets);
            uint256 minimumWeight = manager.getMinimumWeight(i);
            uint256 gmTokenPrice;
            (gmTokens[i], gmTokenPrice) = getGmTokenPrice(i, manager);
            weightDiffs[i] = getWeightDiff(currentWeight, targetWeight);
            usdcAmounts[i] = (int256(totalAssets) * weightDiffs[i]) / 1e30;
            gmTokenAmounts[i] = (((usdcAmounts[i]) * 1e30) * 1e18) / int256(gmTokenPrice) / 1e6;

            if (usdcAmounts[i] < 0) {
                sellCount++;
            }
            if (currentWeight < minimumWeight) {
                isValidRebalance = true;
            }
        }
        isCorePoolLowerThanThreshold(totalAssets) || isCorePoolsRatioInRange(totalAssets)
            ? isValidRebalance = true
            : isValidRebalance = false;
    }

    function isCorePoolLowerThanThreshold(uint256 totalAssets) public view returns (bool) {
        IGlmManager manager = IGlmManager(glm.manager);
        uint256 corePoolWeight = manager.getCurrentWeight(0, totalAssets) + manager.getCurrentWeight(1, totalAssets);
        return corePoolWeight < corePoolThreshold ? true : false;
    }

    //check the ratio between btc and eth pool is within the range

    function isCorePoolsRatioInRange(uint256 totalAssets) public view returns (bool isInRange) {
        IGlmManager manager = IGlmManager(glm.manager);
        uint256 btcPoolWeight = manager.getCurrentWeight(1, totalAssets);
        uint256 ethPoolWeight = manager.getCurrentWeight(0, totalAssets);

        uint256 ratio = btcPoolWeight > ethPoolWeight
            ? (btcPoolWeight * DECIMAL_PRECISION) / ethPoolWeight
            : (ethPoolWeight * DECIMAL_PRECISION) / btcPoolWeight;
        isInRange = ratio > (corePoolUpperRatio * DECIMAL_PRECISION) / corePoolLowerRatio ? true : false;

        return (isInRange);
    }

    //get Saved rebalance Info
    function getSavedRebalanceInfo(
        uint256 roundId
    )
        public
        view
        returns (
            address[] memory tokenPurchasesAddresses,
            uint256[] memory tokenPurchasesAmounts,
            uint256 totalUsdcValueForPurchase,
            uint256 estimatedValueForSale,
            uint256 actualValueForPurchase,
            uint256 sellCount,
            bool isCompleted,
            uint256 valueAfterPurchase
        )
    {
        RebalanceInfo memory info = rebalanceInfo[roundId];
        tokenPurchasesAddresses = info.tokenPurchasesAddresses;
        tokenPurchasesAmounts = info.tokenPurchasesAmounts;
        totalUsdcValueForPurchase = info.totalUsdcValueForPurchase;
        estimatedValueForSale = info.estimatedValueForSale;
        actualValueForPurchase = info.actualValueForPurchase;
        sellCount = info.sellCount;
        isCompleted = info.isCompleted;
        valueAfterPurchase = info.valueAfterPurchase;
    }

    //function to return rebalanceInfo
    function getPurchaseInfo(
        uint256 roundId
    )
        public
        view
        returns (
            uint256 originalValueForPurchase,
            uint256 actualValueForPurchase,
            bool isCompleted,
            address[] memory tokenPurchasesAddresses,
            uint256[] memory tokenPurchasesAmounts // in usdc
        )
    {
        tokenPurchasesAddresses = rebalanceInfo[roundId].tokenPurchasesAddresses;
        tokenPurchasesAmounts = rebalanceInfo[roundId].tokenPurchasesAmounts;
        isCompleted = rebalanceInfo[roundId].isCompleted;
        originalValueForPurchase = rebalanceInfo[roundId].totalUsdcValueForPurchase;
        actualValueForPurchase = rebalanceInfo[roundId].actualValueForPurchase;
    }

    function getGmTokenPrice(uint256 index, IGlmManager manager) public view returns (address gmToken, uint256 gmTokenPrice) {
        (gmToken, , , , ) = manager.getGmPoolByIndex(index);
        gmTokenPrice = IGlmPriceReader(glm.priceReader).getMarketTokenPrice(gmToken);
    }

    function getEstimatedValueForSale(uint256 roundId) public view returns (uint256) {
        return rebalanceInfo[roundId].estimatedValueForSale;
    }

    function checkIsValidRebalance() public view returns (bool) {
        (, , , , , bool isValidRebalance) = getLatestReBalInfo();
        return isValidRebalance;
    }

    /*//////////////////////////////////////////////////////////////
                            PROTOCOL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    function startRebalance()
        public
        payable
        onlyGlmKeeper
        returns (uint256 roundId, address[] memory sellGmTokenAddresses, uint256[] memory amounts)
    {
        (
            address[4] memory gmTokens,
            ,
            int256[4] memory usdcAmounts,
            int256[4] memory gmTokenAmounts,
            uint256 sellCount,
            bool isValidRebalance
        ) = getLatestReBalInfo();

        require(isValidRebalance == true, "Rebalance is not valid");
        roundId = currentId;
        // Allocate memory arrays based on the count
        sellGmTokenAddresses = new address[](sellCount);
        amounts = new uint256[](sellCount);
        uint256 index;
        RebalanceInfo storage info = rebalanceInfo[roundId];
        info.sellCount = sellCount;

        for (uint256 i = 0; i < usdcAmounts.length; i++) {
            if (usdcAmounts[i] > 0) {
                //@note saving the info for rebalance for later use
                info.tokenPurchasesAddresses.push(gmTokens[i]);
                info.tokenPurchasesAmounts.push(uint256(usdcAmounts[i]));
                info.totalUsdcValueForPurchase += uint256(usdcAmounts[i]);
            } else if (usdcAmounts[i] < 0) {
                // Handle sell logic
                sellGmTokenAddresses[index] = gmTokens[i];
                amounts[index] = uint256(-gmTokenAmounts[i]);
                info.estimatedValueForSale += uint256(-usdcAmounts[i]);
                index++;
            }
        }

        _keeperTokenSales(sellGmTokenAddresses, amounts);

        IGlmVault vault = IGlmVault(glm.vault);
        vault.adjustPendingExecutionAmount(info.estimatedValueForSale, true);

        IGlmRebalanceCallback rebalanceCallback = IGlmRebalanceCallback(glm.rebalanceCallback);

        rebalanceCallback.editRoundIdToWithdrawalCount(currentId, sellGmTokenAddresses.length);
        IGlmRouter(glm.router).setPause(true);

        emit RebalanceStart(roundId, info.totalUsdcValueForPurchase, sellGmTokenAddresses, amounts);
        return (roundId, sellGmTokenAddresses, amounts);
    }

    function finalizeRebalance() public payable onlyGlmKeeper {
        (address[] memory tokenPurchasesAddresses, uint256[] memory tokenPurchasesAmounts) = _finalizePurchaseAmounts();

        _keeperTokenPurchases(tokenPurchasesAddresses, tokenPurchasesAmounts);

        IGlmRebalanceCallback rebalanceCallback = IGlmRebalanceCallback(glm.rebalanceCallback);

        uint256 purchaseCount = tokenPurchasesAddresses.length;
        for (uint256 i; i < tokenPurchasesAddresses.length; i++) {
            if (tokenPurchasesAmounts[i] <= 0) {
                purchaseCount--;
            }
        }

        rebalanceCallback.editRoundIdToDepositCount(currentId, purchaseCount);
        emit RebalanceFinalizeStarted(currentId, tokenPurchasesAddresses, tokenPurchasesAmounts);
    }

    //let GlmVaalt to call a function to set rebalance as completed and add curent id
    function setRebalanceCompleted() public onlyGlmRebalanceCallback {
        rebalanceInfo[currentId].isCompleted = true;
        currentId++;
        emit RebalanceCompleted(currentId - 1);
    }

    //function to adjust actualValueForSale
    function addActualValueForPurchase(uint256 roundId, uint256 extraAmount) external onlyGlmRebalanceCallback {
        RebalanceInfo storage info = rebalanceInfo[roundId];
        require(!info.isCompleted, "Rebalance is already completed");
        info.actualValueForPurchase += extraAmount;
    }

    //add value After purchase
    function addValueAfterPurchase(uint256 roundId, uint256 extraAmount) external onlyGlmRebalanceCallback {
        RebalanceInfo storage info = rebalanceInfo[roundId];
        require(!info.isCompleted, "Rebalance is already completed");
        info.valueAfterPurchase += extraAmount;
    }

    /*//////////////////////////////////////////////////////////////
                            INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    function _finalizePurchaseAmounts()
        internal
        view
        returns (address[] memory tokenPurchasesAddresses, uint256[] memory tokenPurchasesAmounts)
    {
        (
            ,
            uint256 actualValueForPurchase,
            bool isCompleted,
            address[] memory purchasesAddresses,
            uint256[] memory oldPurchasesAmounts
        ) = getPurchaseInfo(currentId);

        require(!isCompleted, "Rebalance is already completed");
        //@note we need the actual total Balance to calculate how much USDC we need to buy

        //@note in the following loop, the slippage from uniswap will be absorbed by the last item in the array(i.e pool with higher index)
        tokenPurchasesAmounts = new uint256[](purchasesAddresses.length);
        uint256 remainingValue = actualValueForPurchase;

        for (uint256 i; i < purchasesAddresses.length; i++) {
            if (i == purchasesAddresses.length - 1) {
                tokenPurchasesAmounts[i] = remainingValue;
            } else {
                if (remainingValue >= oldPurchasesAmounts[i]) {
                    tokenPurchasesAmounts[i] = oldPurchasesAmounts[i];
                    remainingValue -= oldPurchasesAmounts[i];
                } else {
                    tokenPurchasesAmounts[i] = remainingValue;
                    remainingValue = 0;
                }
            }
        }

        //if tokenPurchasesAmounts[i] is 0, then remove the tokenPurchasesAddresses[i] from the array and tokenPurchasesAmounts[i]

        return (purchasesAddresses, tokenPurchasesAmounts);
    }

    //amounts is the amount of usdc!!
    //need function to specifiy the gm amount output too?
    //
    function _keeperTokenPurchases(address[] memory marketTokens, uint256[] memory usdcAmounts) internal returns (bytes32[5] memory keys) {
        require(marketTokens.length == usdcAmounts.length, "Invalid input");
        (address depositVault, , address gmxRouter, address exchangeRouter, uint256 executionFee) = IGlmRouter(glm.router)
            .getGmxAddressesAndFee();
        require(msg.value >= usdcAmounts.length * executionFee, "Invalid input");
        for (uint256 i; i < marketTokens.length; i++) {
            if (usdcAmounts[i] == 0) {
                continue;
            }
            (, , address shortToken, address longToken, ) = IGlmManager(glm.manager).getGmPoolByGmToken(marketTokens[i]);

            IERC20Upgradeable(shortToken).safeIncreaseAllowance(gmxRouter, usdcAmounts[i]);
            IExchangeRouter(exchangeRouter).sendTokens(shortToken, depositVault, usdcAmounts[i]);
            IExchangeRouter(exchangeRouter).sendWnt{ value: executionFee }(depositVault, executionFee);
            IExchangeRouter.CreateDepositParams memory depositParams = IExchangeRouter.CreateDepositParams({
                receiver: glm.vault,
                callbackContract: glm.rebalanceCallback, //
                uiFeeReceiver: msg.sender,
                market: marketTokens[i],
                initialLongToken: longToken,
                initialShortToken: shortToken,
                longTokenSwapPath: new address[](0),
                shortTokenSwapPath: new address[](0),
                minMarketTokens: 0,
                shouldUnwrapNativeToken: false,
                executionFee: executionFee,
                callbackGasLimit: 2000000
            });
            keys[i] = IExchangeRouter(exchangeRouter).createDeposit(depositParams);
        }

        emit KeeperTokenPurchased(marketTokens, usdcAmounts, keys);
    }

    function _keeperTokenSales(address[] memory marketTokens, uint256[] memory gmAmounts) internal returns (bytes32[5] memory keys) {
        require(marketTokens.length == gmAmounts.length, "Invalid input");
        (, address withdrawalVault, address gmxRouter, address exchangeRouter, uint256 executionFee) = IGlmRouter(glm.router)
            .getGmxAddressesAndFee();
        require(msg.value >= marketTokens.length * executionFee, "Invalid fee");
        for (uint256 i; i < marketTokens.length; i++) {
            //transfer gm token from vault
            IGlmVault(glm.vault).transferGm(marketTokens[i], gmAmounts[i], address(this));
            IERC20Upgradeable(marketTokens[i]).safeIncreaseAllowance(gmxRouter, gmAmounts[i]);
            IExchangeRouter(exchangeRouter).sendWnt{ value: executionFee }(withdrawalVault, executionFee);
            IExchangeRouter(exchangeRouter).sendTokens(marketTokens[i], withdrawalVault, gmAmounts[i]);
            IExchangeRouter.CreateWithdrawalParams memory withdrawalParams = IExchangeRouter.CreateWithdrawalParams({
                receiver: glm.rebalanceCallback,
                callbackContract: glm.rebalanceCallback,
                uiFeeReceiver: msg.sender,
                market: marketTokens[i],
                longTokenSwapPath: new address[](0),
                shortTokenSwapPath: new address[](0),
                minLongTokenAmount: 0,
                minShortTokenAmount: 0,
                shouldUnwrapNativeToken: false,
                executionFee: executionFee,
                callbackGasLimit: 2000000
            });

            keys[i] = IExchangeRouter(exchangeRouter).createWithdrawal(withdrawalParams);
        }

        emit KeeperTokenSold(marketTokens, gmAmounts, keys);
    }

    receive() external payable {
        require(msg.sender == gmxAddresses.depositVault || msg.sender == gmxAddresses.withdrawalVault, "Not GMX");
        address tempPayableAddress = IGlmRebalanceCallback(glm.rebalanceCallback).currentGlmKeeper();
        payable(tempPayableAddress).transfer(address(this).balance);
    }

    //@note function to fix FailedSales in Cancellation
    function fixFailedSales(bytes32 key) external payable onlyOwner {
        address[] memory gmTokens = new address[](1);
        uint256[] memory gmAmounts = new uint256[](1);
        (address gmToken, uint256 gmAmount) = IGlmRebalanceCallback(glm.rebalanceCallback).getFailedSalesInfo(key);
        //make gmToken into an array
        gmTokens[0] = gmToken;
        gmAmounts[0] = gmAmount;
        _keeperTokenSales(gmTokens, gmAmounts);
    }

    //@note function to fix FailedBuy in Cancellation
    function fixFailedBuy(bytes32 key) external payable onlyOwner {
        address[] memory gmTokens = new address[](1);
        uint256[] memory usdcAmounts = new uint256[](1);
        (address gmToken, uint256 usdcAmount) = IGlmRebalanceCallback(glm.rebalanceCallback).getFailedBuyInfo(key);
        //make gmToken into an array
        gmTokens[0] = gmToken;
        usdcAmounts[0] = usdcAmount;
        _keeperTokenPurchases(gmTokens, usdcAmounts);
    }
}
