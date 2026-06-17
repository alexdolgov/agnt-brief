// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import { IERC20Upgradeable, SafeERC20Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import { IERC4626Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC4626Upgradeable.sol";
import { PausableUpgradeable } from "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import { IExchangeRouter } from "./interfaces/Gmx/IExchangeRouter.sol";
import { ReentrancyGuardUpgradeable } from "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";

import { IGlmManager } from "./interfaces/IGlmManager.sol";
import { IGlmRouter } from "./interfaces/IGlmRouter.sol";
import { IGlmVault } from "./interfaces//IGlmVault.sol";
import { IGlmPriceReader } from "./interfaces/IGlmPriceReader.sol";
import { IGlmManagerCallback } from "./interfaces/IGlmManagerCallback.sol";
import { IGlmAddresses } from "./interfaces/IGlmAddresses.sol";

/**
 * @title GlmRouter
 * @notice This contract is
 * 1. responsible for managing pool weighting (and potential rebalance logic) of GM tokens,
 * 2. handling callback from GMXV2 and Interact with GlmVault
 * @author Vaultka
 **/

contract GlmRouter is IGlmAddresses, IGlmRouter, OwnableUpgradeable, PausableUpgradeable, ReentrancyGuardUpgradeable {
    using SafeERC20Upgradeable for IERC20Upgradeable;

    uint256 public constant DECIMAL_PRECISION = 1e30;
    uint256 public gmExecutionFee;
    address public glmKeeper;

    address public USDC;
    uint24 public constant MAX_BPS = 10_000;

    DepositThresholds public depositThresholds;
    WithdrawalThresholds public withdrawalThresholds;
    GMXAddresses public gmxAddresses;

    Glm public glm;
    mapping(address => bool) public isPoolGmToken;
    mapping(bytes32 => TransactionInfo) public transactionInfo;

    uint256[50] __gaps;

    /*//////////////////////////////////////////////////////////////
                            INIT FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize() public initializer {
        __Ownable_init();
        __Pausable_init();
        __ReentrancyGuard_init();
    }

    //ONLY Glm Vault can call the function
    modifier onlyGlmVault() {
        require(msg.sender == glm.vault, "Not GlmVault");
        _;
    }

    //is GlmManager or GlmManagerCallback
    modifier onlyGlmManagers() {
        require(
            msg.sender == glm.managerCallback || msg.sender == glm.rebalance || msg.sender == glm.rebalanceCallback,
            "Not GlmManager or GlmManagerCallback"
        );
        _;
    }

    /*//////////////////////////////////////////////////////////////
                      STRATEGY PARAMETERS SETTERS
    //////////////////////////////////////////////////////////////*/
    //function to set depositSplitingThresholdBps and depositAllPoolThreshold
    function setDepositThresholds(uint256 _depositSplitingThreshold, uint256 _allPoolSplitingThreshold) external onlyOwner {
        require(_depositSplitingThreshold <= MAX_BPS, "DepositSplitingThreshold > MAX_BPS");

        require(_allPoolSplitingThreshold <= MAX_BPS, "AllPoolSplitingThreshold > MAX_BPS");

        depositThresholds.splittingBps = _depositSplitingThreshold;

        depositThresholds.allPoolSplittingBps = _allPoolSplitingThreshold;

        emit SetDepositThresholds(_depositSplitingThreshold, _allPoolSplitingThreshold);
    }

    //function to set withdrawalSplitingThresholdBps and withdrawalAllPoolThreshold
    function setWithdrawalThresholds(uint256 _withdrawalSplitingThreshold, uint256 _allPoolSplitingThreshold) external onlyOwner {
        require(_withdrawalSplitingThreshold <= MAX_BPS, "WithdrawalSplitingThreshold > MAX");
        require(_allPoolSplitingThreshold <= MAX_BPS, "AllPoolSplitingThreshold > MAX");

        withdrawalThresholds.splittingBps = _withdrawalSplitingThreshold;

        withdrawalThresholds.allPoolSplittingBps = _allPoolSplitingThreshold;

        emit SetWithdrawalThresholds(_withdrawalSplitingThreshold, _allPoolSplitingThreshold);
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

    //function to set glmKeeper
    function setGlmKeeper(address _glmKeeper) external onlyOwner {
        require(_glmKeeper != address(0), "Invalid address");
        glmKeeper = _glmKeeper;
        emit SetGlmKeeper(_glmKeeper);
    }

    function setGmExecutionFee(uint256 _gmExecutionFee) external onlyOwner {
        require(_gmExecutionFee <= 0.1 ether, "gmExecutionFee > 0.1 eth");
        gmExecutionFee = _gmExecutionFee;
        emit SetGmExecutionFee(_gmExecutionFee);
    }

    //set approved GM tokens and USDC
    function setGmTokens(address[] memory gmTokens, bool _isGmToken) external onlyOwner {
        for (uint256 i = 0; i < gmTokens.length; i++) {
            isPoolGmToken[gmTokens[i]] = _isGmToken;
        }

        emit SetGmTokens(gmTokens, _isGmToken);
    }

    //set pause and unpause by glmContracts
    function setPause(bool isPause) external onlyGlmManagers {
        isPause ? _pause() : _unpause();
    }

    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }

    /*//////////////////////////////////////////////////////////////
                      EXTERNAL VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    function checkIsPaused() external view returns (bool) {
        return paused();
    }

    function checkIsGmToken(address _token) external view returns (bool) {
        return isPoolGmToken[_token];
    }

    function getTransactionInfo(bytes32 key) external view returns (TransactionInfo memory) {
        return transactionInfo[key];
    }

    function getFeeForDeposit(uint256 _amount) public view returns (uint256) {
        if (_amount == 0) {
            return 0;
        }
        uint256 totalAssets = IERC4626Upgradeable(glm.vault).totalAssets();
        uint256 depositPercentage = (_amount * MAX_BPS) / totalAssets;

        if (depositPercentage <= depositThresholds.splittingBps) {
            return gmExecutionFee;
        }
        if (depositPercentage >= depositThresholds.allPoolSplittingBps) {
            return gmExecutionFee * IGlmManager(glm.manager).getGmPoolLength();
        } else {
            (bool isSplit, , ) = _calculateSplitForDeposit(_amount, totalAssets);
            return isSplit ? gmExecutionFee * 2 : gmExecutionFee;
        }
    }

    //@note frontend will need to validate the fee
    function getFeeForWithdrawal(uint256 _glmAmount) external view returns (uint256) {
        //5% of TVL
        uint256 totalSupply = IERC4626Upgradeable(glm.vault).totalSupply();
        uint256 withdrawalPercentage = (_glmAmount * MAX_BPS) / totalSupply;

        bool isBelowThreshold1 = withdrawalPercentage <= withdrawalThresholds.splittingBps;
        bool isAboveThreshold2 = withdrawalPercentage > withdrawalThresholds.allPoolSplittingBps;

        if (isBelowThreshold1) {
            return gmExecutionFee;
        }
        if (isAboveThreshold2) {
            return gmExecutionFee * IGlmManager(glm.manager).getGmPoolLength();
        } else {
            (bool isSplit, , ) = _calculateSplitForWithdrawal(_glmAmount, IERC4626Upgradeable(glm.vault).totalAssets(), totalSupply);
            if (isSplit) {
                return gmExecutionFee * 2;
            } else {
                return gmExecutionFee;
            }
        }
    }

    //deconstruct the struct
    function getGmxAddressesAndFee()
        external
        view
        returns (address depositVault, address withdrawalVault, address gmxRouter, address exchangeRouter, uint256 executionFee)
    {
        depositVault = gmxAddresses.depositVault;
        withdrawalVault = gmxAddresses.withdrawalVault;
        gmxRouter = gmxAddresses.gmxRouter;
        exchangeRouter = gmxAddresses.exchangeRouter;
        executionFee = gmExecutionFee;
    }

    /*@note Formula of PoolMaxWithdraw: 
        PoolGlmAmount - MinimumWeight * TotalSupply =  MaxGlmTokenAmount - (MinimumWeight * MaxGlmTokenAmount)
    */
    function getPoolMaxWithdraw(uint256 _poolIndex) public view returns (uint256 maxGlmTokenAmount) {
        uint256 currentWeight = IGlmManager(glm.manager).getCurrentWeight(_poolIndex, IERC4626Upgradeable(glm.vault).totalAssets());

        uint256 minimumWeight = IGlmManager(glm.manager).getMinimumWeight(_poolIndex);

        if (currentWeight <= minimumWeight) {
            return 0;
        } else {
            uint256 totalSupply = IERC4626Upgradeable(glm.vault).totalSupply();
            uint256 poolGlmAmountWithPrecision = (currentWeight * totalSupply);
            return (poolGlmAmountWithPrecision - (minimumWeight * totalSupply)) / (DECIMAL_PRECISION - minimumWeight);
        }
    }

    //@note price in 1e6
    function calculateGlmPrice(uint256 totalAssets, uint256 totalSupply) public pure returns (uint256) {
        return (totalAssets * 1e6) / totalSupply;
    }

    /*//////////////////////////////////////////////////////////////
                            PROTOCOL FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    function gmTokenDeposit(address gmToken, uint256 amount) external whenNotPaused nonReentrant {
        require(amount != 0, "Amount is 0");
        require(isPoolGmToken[gmToken], "Not a GM token");
        IERC20Upgradeable(gmToken).safeTransferFrom(msg.sender, glm.manager, amount);
        address user = msg.sender;
        IGlmManager(glm.manager).depositFromRouter(gmToken, amount, user);
        emit GmTokenDeposit(user, gmToken, amount, block.timestamp);
    }

    function gmTokenWithdrawal(address gmToken, uint256 glmAmount) external whenNotPaused nonReentrant {
        require(glmAmount != 0, "Amount is 0");
        require(isPoolGmToken[gmToken], "Not a GM token");
        uint256 maxWithdraw = getPoolMaxWithdraw(IGlmManager(glm.manager).getPoolIdByMarketToken(gmToken));
        require(glmAmount <= maxWithdraw, "Exceed max withdraw");
        address user = msg.sender;
        IERC20Upgradeable(glm.vault).safeTransferFrom(user, glm.vault, glmAmount);
        uint256 glmPrice = IGlmPriceReader(glm.priceReader).getGlmPrice();
        uint256 gmAmount = _getGmTokenWithdrawalAmount(gmToken, glmAmount, glmPrice);
        IGlmManager(glm.manager).withdrawFromRouter(gmToken, gmAmount, glmAmount, user);
        emit GmTokenWithdrawal(user, gmToken, glmAmount, block.timestamp);
    }

    function requestDeposit(uint256 _amount) external payable whenNotPaused nonReentrant returns (bytes32[5] memory keys) {
        require(_amount != 0, "Amount is 0");
        uint256 feeLeft = msg.value;
        uint256 totalAssets = IERC4626Upgradeable(glm.vault).totalAssets();
        IGlmManager manager = IGlmManager(glm.manager);
        // //!case of deposit where it is < 5% of the tvl:
        if ((_amount * MAX_BPS) / totalAssets <= depositThresholds.splittingBps) {
            require(msg.value >= gmExecutionFee, "Wrong fee");
            feeLeft -= gmExecutionFee;
            uint256 poolIndex = manager.getMostUnderWeightedPool(totalAssets);
            (address marketToken, , address shortToken, address longToken, ) = manager.getGmPoolByIndex(poolIndex);
            keys[0] = _processDeposit(marketToken, shortToken, longToken, _amount);
        } else if ((_amount * MAX_BPS) / totalAssets <= depositThresholds.allPoolSplittingBps) {
            //! case of deposit where it is > 5% of the tvl but < allPoolSplitingThresholdBps
            //!pool index 0 is the ETH pool, pool index 1 is the BTC pool
            (bool isSplit, uint256 toETHpool, uint256 toBTCpool) = _calculateSplitForDeposit(_amount, totalAssets);
            (address marketToken, , address shortToken, address longToken, ) = manager.getGmPoolByIndex(0); //eth pool
            if (isSplit) {
                require(msg.value >= gmExecutionFee * 2, "Wrong fee");
                feeLeft -= (gmExecutionFee * 2);
                keys[0] = _processDeposit(marketToken, shortToken, longToken, toETHpool);
                (marketToken, , shortToken, longToken, ) = manager.getGmPoolByIndex(1);
                keys[1] = _processDeposit(marketToken, shortToken, longToken, toBTCpool);
            } else {
                if (toBTCpool == 0) {
                    require(msg.value >= gmExecutionFee, "Wrong fee");
                    feeLeft -= gmExecutionFee;
                    _processDeposit(marketToken, shortToken, longToken, toETHpool);
                } else {
                    require(msg.value >= gmExecutionFee, "Wrong fee");
                    feeLeft -= gmExecutionFee;
                    (marketToken, , shortToken, longToken, ) = manager.getGmPoolByIndex(1);
                    _processDeposit(marketToken, shortToken, longToken, toBTCpool);
                }
            }
        } else {
            uint256 poolLength = manager.getGmPoolLength();
            require(msg.value >= gmExecutionFee * poolLength, "Wrong fee");
            feeLeft -= (gmExecutionFee * poolLength);
            for (uint256 i = 0; i < poolLength; i++) {
                (address marketToken, , address shortToken, address longToken, ) = manager.getGmPoolByIndex(i);
                keys[i] = _processDeposit(
                    marketToken,
                    shortToken,
                    longToken,
                    //@note weight in 1e30b
                    (_amount * manager.getTargetWeight(i)) / DECIMAL_PRECISION
                );
            }
        }
        if (feeLeft > 0) {
            payable(msg.sender).transfer(feeLeft);
        }

        emit RequestDeposit(msg.sender, _amount, keys, block.timestamp);
    }

    function requestWithdrawal(
        address _token,
        uint256 _glmAmount
    ) external payable nonReentrant whenNotPaused returns (bytes32[5] memory keys) {
        require(_token == IERC4626Upgradeable(glm.vault).asset(), "Invalid token");
        require(_glmAmount != 0, "Amount is 0");
        IGlmManager manager = IGlmManager(glm.manager);
        uint256 totalSupply = IERC4626Upgradeable(glm.vault).totalSupply();
        uint256 totalAssets = IERC4626Upgradeable(glm.vault).totalAssets();

        uint256 withdrawalPercentage = (_glmAmount * MAX_BPS) / totalSupply;
        bool isBelowThreshold1 = withdrawalPercentage <= withdrawalThresholds.splittingBps;
        bool isBelowThreshold2 = withdrawalPercentage <= withdrawalThresholds.allPoolSplittingBps;
        //!path: selling all token to USDC
        uint256 glmPrice = calculateGlmPrice(totalAssets, totalSupply);
        uint256 feeLeft = msg.value;
        if (isBelowThreshold1) {
            require(msg.value >= gmExecutionFee, "Wrong fee");
            feeLeft -= gmExecutionFee;
            uint256 poolIndex = manager.getMostOverWeightedPool(totalAssets);
            (address marketToken, , , , ) = manager.getGmPoolByIndex(poolIndex);
            keys[0] = _processWithdrawal(_glmAmount, marketToken, glmPrice);
        }
        //!path: >5%, selling both tokens into USDC
        else if (!isBelowThreshold1 && isBelowThreshold2) {
            (bool isSplit, uint256 glmAmountETH, uint256 glmAmountBTC) = _calculateSplitForWithdrawal(_glmAmount, totalAssets, totalSupply);
            (address marketTokenETH, , , , ) = manager.getGmPoolByIndex(0);
            (address marketTokenBTC, , , , ) = manager.getGmPoolByIndex(1);
            if (isSplit) {
                require(msg.value >= gmExecutionFee * 2, "Wrong fee");
                feeLeft -= gmExecutionFee * 2;
                keys[0] = _processWithdrawal(glmAmountETH, marketTokenETH, glmPrice);

                keys[1] = _processWithdrawal(glmAmountBTC, marketTokenBTC, glmPrice);
            } else {
                require(msg.value >= gmExecutionFee, "Wrong fee");
                feeLeft -= gmExecutionFee;
                glmAmountBTC == 0 ? keys[0] = _processWithdrawal(glmAmountETH, marketTokenETH, glmPrice) : keys[0] = _processWithdrawal(
                    glmAmountBTC,
                    marketTokenBTC,
                    glmPrice
                );
            }
            //!all pools withdrawal to USDC
        } else {
            uint256 remainingGlmAmount = _glmAmount;
            uint256 poolLength = manager.getGmPoolLength();
            require(msg.value >= gmExecutionFee * poolLength, "Wrong fee");
            feeLeft -= gmExecutionFee * poolLength;
            for (uint i = 0; i < poolLength; i++) {
                uint256 amount = ((manager.getCurrentWeight(i, totalAssets) * _glmAmount)) / DECIMAL_PRECISION;
                //if it is the last pool, withdraw the remaining glm amount
                if (i == poolLength - 1) {
                    keys[i] = _processWithdrawal(remainingGlmAmount, manager.getGmTokenAddress(i), glmPrice);
                } else {
                    keys[i] = _processWithdrawal(amount, manager.getGmTokenAddress(i), glmPrice);
                    remainingGlmAmount -= amount;
                }
            }
        }
        if (feeLeft > 0) {
            payable(msg.sender).transfer(feeLeft);
        }
        emit RequestWithdrawal(msg.sender, _glmAmount, keys, block.timestamp);
    }

    //function to set isCompleted for transaction info
    function setTransactionCompleted(bytes32 key, bool isCompleted) external onlyGlmManagers {
        transactionInfo[key].isCompleted = isCompleted;
    }

    //function to transfer token from Rotuer to user, used in callback
    function transferTokens(address token, address to, uint256 amount) external onlyGlmManagers returns (bool success) {
        IERC20Upgradeable(token).safeTransfer(to, amount);
        return true;
    }

    /*//////////////////////////////////////////////////////////////
                            INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    function _processDeposit(
        address marketToken,
        address shortToken,
        address longToken,
        uint256 _amount
    ) public payable returns (bytes32 key) {
        IERC20Upgradeable(shortToken).safeTransferFrom(msg.sender, address(this), _amount);
        IERC20Upgradeable(shortToken).safeIncreaseAllowance(gmxAddresses.gmxRouter, _amount);
        IExchangeRouter(gmxAddresses.exchangeRouter).sendTokens(shortToken, gmxAddresses.depositVault, _amount);
        IExchangeRouter(gmxAddresses.exchangeRouter).sendWnt{ value: gmExecutionFee }(gmxAddresses.depositVault, gmExecutionFee);
        IExchangeRouter.CreateDepositParams memory depositParams = IExchangeRouter.CreateDepositParams({
            receiver: glm.managerCallback,
            callbackContract: glm.managerCallback, //
            uiFeeReceiver: msg.sender,
            market: marketToken,
            initialLongToken: longToken,
            initialShortToken: shortToken,
            longTokenSwapPath: new address[](0),
            shortTokenSwapPath: new address[](0),
            //@todo set the min amount?
            minMarketTokens: 0,
            shouldUnwrapNativeToken: false,
            executionFee: gmExecutionFee,
            callbackGasLimit: 2000000
        });
        key = IExchangeRouter(gmxAddresses.exchangeRouter).createDeposit(depositParams);
        transactionInfo[key].user = msg.sender;
        transactionInfo[key].usdcDepositAmount = _amount;
        transactionInfo[key].marketToken = marketToken;
    }

    function _processWithdrawal(uint256 _glmAmount, address marketToken, uint256 glmPrice) internal returns (bytes32 key) {
        IERC20Upgradeable(glm.vault).safeTransferFrom(msg.sender, address(glm.managerCallback), _glmAmount);
        uint256 pendingExecutionAmount = (_glmAmount * glmPrice) / 1e6;
        IExchangeRouter(gmxAddresses.exchangeRouter).sendWnt{ value: gmExecutionFee }(gmxAddresses.withdrawalVault, gmExecutionFee);
        //calculate the usdc value of th glm token
        uint256 _gmAmount = _getGmTokenWithdrawalAmount(marketToken, _glmAmount, glmPrice);
        IGlmVault(glm.vault).transferToGlmRouter(marketToken, _gmAmount);
        IERC20Upgradeable(marketToken).safeIncreaseAllowance(gmxAddresses.gmxRouter, _gmAmount);
        IExchangeRouter(gmxAddresses.exchangeRouter).sendTokens(marketToken, gmxAddresses.withdrawalVault, _gmAmount);
        IExchangeRouter.CreateWithdrawalParams memory withdrawalParams = IExchangeRouter.CreateWithdrawalParams({
            receiver: glm.managerCallback,
            callbackContract: glm.managerCallback,
            uiFeeReceiver: msg.sender,
            market: marketToken,
            longTokenSwapPath: new address[](0),
            shortTokenSwapPath: new address[](0),
            minLongTokenAmount: 0,
            minShortTokenAmount: 0,
            shouldUnwrapNativeToken: false,
            executionFee: gmExecutionFee,
            callbackGasLimit: 2000000
        });

        IGlmVault(glm.vault).adjustPendingExecutionAmount(pendingExecutionAmount, true);
        key = IExchangeRouter(gmxAddresses.exchangeRouter).createWithdrawal(withdrawalParams);
        transactionInfo[key].user = msg.sender;
        transactionInfo[key].glmAmount = _glmAmount;
        transactionInfo[key].pendingExecutionAmount = pendingExecutionAmount;
        transactionInfo[key].marketToken = marketToken;
    }

    function _getGmTokenWithdrawalAmount(
        address _gmToken,
        uint256 _glmAmount,
        uint256 glmPrice
    ) internal view returns (uint256 gmTokenAmount) {
        uint256 glmTokenValue = glmPrice * _glmAmount;
        uint256 gmTokenPrice = IGlmPriceReader(glm.priceReader).getMarketTokenPrice(_gmToken);
        return (glmTokenValue * 1e36) / gmTokenPrice;
    }

    function _calculateSplitForWithdrawal(
        uint256 _glmAmount,
        uint256 _totalAssets,
        uint256 _totalSupply
    ) internal view returns (bool isSplit, uint256 glmAmountETH, uint256 glmAmountBTC) {
        uint256 glmPrice = calculateGlmPrice(_totalAssets, _totalSupply);
        uint256 glmValue = (glmPrice * _glmAmount) / 1e6;
        IGlmManager manager = IGlmManager(glm.manager);
        //check ETH pool and BTC pool difference value
        uint256 ethPoolValue = (manager.getCurrentWeight(0, _totalAssets) * _totalAssets) / DECIMAL_PRECISION;

        uint256 btcPoolValue = (manager.getCurrentWeight(1, _totalAssets) * _totalAssets) / DECIMAL_PRECISION;

        uint256 difference = ethPoolValue > btcPoolValue ? ethPoolValue - btcPoolValue : btcPoolValue - ethPoolValue;

        if (difference > glmValue) {
            if (ethPoolValue > btcPoolValue) {
                isSplit = false;
                glmAmountETH = _glmAmount;
                glmAmountBTC = 0;
            } else {
                isSplit = false;
                glmAmountETH = 0;
                glmAmountBTC = _glmAmount;
            }
        } else {
            isSplit = true;
            glmAmountETH = _glmAmount / 2;
            glmAmountBTC = _glmAmount - glmAmountETH;
        }
    }

    function _calculateSplitForDeposit(
        uint256 _usdcAmount,
        uint256 _totalAssets
    ) internal view returns (bool isSplit, uint256 toETH, uint256 toBTC) {
        IGlmManager manager = IGlmManager(glm.manager);
        //check ETH pool and BTC pool difference value
        uint256 ethPoolValue = (manager.getCurrentWeight(0, _totalAssets) * _totalAssets) / DECIMAL_PRECISION;

        uint256 btcPoolValue = (manager.getCurrentWeight(1, _totalAssets) * _totalAssets) / DECIMAL_PRECISION;

        uint256 difference = ethPoolValue > btcPoolValue ? ethPoolValue - btcPoolValue : btcPoolValue - ethPoolValue;

        if (difference > _usdcAmount) {
            if (ethPoolValue > btcPoolValue) {
                isSplit = false;
                toETH = 0;
                toBTC = _usdcAmount;
            } else {
                isSplit = false;
                toETH = _usdcAmount;
                toBTC = 0;
            }
        } else {
            isSplit = true;
            toETH = _usdcAmount / 2;
            toBTC = _usdcAmount - toETH;
        }
    }

    receive() external payable {
        require(msg.sender == gmxAddresses.depositVault || msg.sender == gmxAddresses.withdrawalVault, "Not GMX");
        address tempPayableAddress = IGlmManagerCallback(glm.managerCallback).tempPayableAddress();
        payable(tempPayableAddress).transfer(address(this).balance);
    }
}
