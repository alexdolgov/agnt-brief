// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.21;

import { LRTConstants } from "./utils/LRTConstants.sol";

import { LRTConfigRoleChecker, ILRTConfig, IAccessControl } from "./utils/LRTConfigRoleChecker.sol";
import { UtilLib } from "./utils/UtilLib.sol";

import { ILRTDepositPool } from "./interfaces/ILRTDepositPool.sol";
import { IStrategy } from "./interfaces/IStrategy.sol";
import { ILRTOracle } from "./interfaces/ILRTOracle.sol";
import { IRSETH } from "./interfaces/IRSETH.sol";
import { IEigenStrategyManager } from "./interfaces/IEigenStrategyManager.sol";
import { ILRTConverter } from "./interfaces/ILRTConverter.sol";

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { ReentrancyGuardUpgradeable } from "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";

/// @title LRTConverter - Converts eigenlayer deployed LSTs to rsETH
/// @notice Handles eigenlayer deposited LSTs to rsETH conversion
contract LRTConverter is ILRTConverter, LRTConfigRoleChecker, ReentrancyGuardUpgradeable {
    mapping(bytes32 => bool) public processedWithdrawalRoots;
    mapping(address => bool) public convertableAssets;
    mapping(address => uint256) public conversionLimit;

    //needs to be added to total assets in protocol
    uint256 public ethValueInWithdrawal;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /// @dev Initializes the contract
    /// @param lrtConfigAddr LRT config address
    function initialize(address lrtConfigAddr) external initializer {
        UtilLib.checkNonZeroAddress(lrtConfigAddr);
        __ReentrancyGuard_init();
        lrtConfig = ILRTConfig(lrtConfigAddr);
        emit UpdatedLRTConfig(lrtConfigAddr);
    }

    modifier onlyConvertableAsset(address asset) {
        require(convertableAssets[asset], "Asset not supported");
        _;
    }

    /// @notice Add convertable asset
    /// @param asset Asset address
    function addConvertableAsset(address asset) external onlyLRTManager {
        convertableAssets[asset] = true;
    }

    /// @notice Remove convertable asset
    /// @param asset Asset address
    function removeConvertableAsset(address asset) external onlyLRTManager {
        convertableAssets[asset] = false;
    }

    /// @notice Set conversion limit for asset
    /// @param asset Asset address
    /// @param limit Conversion limit
    function setConversionLimit(address asset, uint256 limit) external onlyLRTManager {
        conversionLimit[asset] = limit;
    }

    /// @notice View amount of rsETH to mint for given asset amount
    /// @param asset Asset address
    /// @param amount Asset amount
    /// @return rsethAmountToMint Amount of rseth to mint
    function getRsETHAmountToMint(address asset, uint256 amount) public view returns (uint256 rsethAmountToMint) {
        // setup oracle contract
        address lrtOracleAddress = lrtConfig.getContract(LRTConstants.LRT_ORACLE);
        ILRTOracle lrtOracle = ILRTOracle(lrtOracleAddress);

        // calculate rseth amount to mint based on asset amount and asset exchange rate
        rsethAmountToMint = (amount * lrtOracle.getAssetPrice(asset)) / lrtOracle.rsETHPrice();
    }

    /// @notice Converts eigenlayer asset to rsETH
    /// @param queuedWithdrawal Queued withdrawal
    /// @param minimumExpectedReturn Minimum expected return is set to prevent price manipulation
    /// @return withdrawalRoot Withdrawal root is the hash of the queued withdrawal
    function convertEigenlayerAssetToRsEth(
        IStrategy.QueuedWithdrawal calldata queuedWithdrawal,
        uint256 minimumExpectedReturn
    )
        external
        returns (bytes32 withdrawalRoot)
    {
        if (queuedWithdrawal.withdrawerAndNonce.withdrawer != address(this)) revert InvalidWithdrawer();
        IEigenStrategyManager eigenlayerStrategyManager =
            IEigenStrategyManager(lrtConfig.getContract(LRTConstants.EIGEN_STRATEGY_MANAGER));

        withdrawalRoot = eigenlayerStrategyManager.calculateWithdrawalRoot(queuedWithdrawal);
        //Check that withdrawalRoot exists on eigenlayer
        if (!eigenlayerStrategyManager.withdrawalRootPending(withdrawalRoot)) revert WithdrawalRootNotPending();
        if (processedWithdrawalRoots[withdrawalRoot]) revert WithdrawalRootAlreadyProcess();

        processedWithdrawalRoots[withdrawalRoot] = true;
        address lrtOracleAddress = lrtConfig.getContract(LRTConstants.LRT_ORACLE);
        ILRTOracle lrtOracle = ILRTOracle(lrtOracleAddress);
        uint256 rsethAmountToMint;
        for (uint256 i = 0; i < queuedWithdrawal.strategies.length; i++) {
            IStrategy strategy = queuedWithdrawal.strategies[i];
            address asset = address(strategy.underlyingToken());
            if (!convertableAssets[asset]) {
                continue;
            }
            uint256 shares = queuedWithdrawal.shares[i];
            uint256 assetAmount = strategy.sharesToUnderlyingView(shares);
            if (assetAmount > conversionLimit[asset]) {
                revert ConversionLimitReached();
            }
            conversionLimit[asset] -= assetAmount;
            ethValueInWithdrawal += (assetAmount * lrtOracle.getAssetPrice(asset)) / 1e18;

            rsethAmountToMint += getRsETHAmountToMint(asset, assetAmount);
        }
        if (rsethAmountToMint < minimumExpectedReturn) {
            revert MinimumExpectedReturnNotReached();
        }
        address rsethToken = lrtConfig.rsETH();

        // mint rseth for user
        IRSETH(rsethToken).mint(queuedWithdrawal.depositor, rsethAmountToMint);
        emit ConvertedEigenlayerAssetToRsEth(queuedWithdrawal.depositor, rsethAmountToMint, withdrawalRoot);
    }

    function finalizeConversion(
        IStrategy.QueuedWithdrawal calldata queuedWithdrawal,
        IERC20[] calldata assets,
        uint256 middlewareTimesIndex
    )
        external
        onlyLRTManager
    {
        IEigenStrategyManager eigenlayerStrategyManager =
            IEigenStrategyManager(lrtConfig.getContract(LRTConstants.EIGEN_STRATEGY_MANAGER));

        bytes32 withdrawalRoot = eigenlayerStrategyManager.calculateWithdrawalRoot(queuedWithdrawal);
        //Only allow to finalize if the withdrawal that we already converted to rseth
        if (!processedWithdrawalRoots[withdrawalRoot]) revert WithdrawalRootNotProcessed();

        // Finalize withdrawal with Eigenlayer Strategy Manager
        eigenlayerStrategyManager.completeQueuedWithdrawal(queuedWithdrawal, assets, middlewareTimesIndex, true);
    }

    /// @notice swap ETH for LST asset which is accepted by LRTConverter and send to LRTDepositPool
    /// @dev use LRTOracle to get price for asset. Only callable by LRT manager
    /// @param asset Asset address to swap to
    /// @param minimumExpectedReturnAmount Minimum asset amount to swap to
    function swapEthToAsset(
        address asset,
        uint256 minimumExpectedReturnAmount
    )
        external
        payable
        onlyLRTManager
        onlyConvertableAsset(asset)
        returns (uint256 returnAmount)
    {
        ILRTDepositPool lrtDepositPool = ILRTDepositPool(lrtConfig.getContract(LRTConstants.LRT_DEPOSIT_POOL));
        uint256 ethAmountSent = msg.value;

        returnAmount = lrtDepositPool.getSwapETHToAssetReturnAmount(asset, ethAmountSent);

        if (returnAmount < minimumExpectedReturnAmount || IERC20(asset).balanceOf(address(this)) < returnAmount) {
            revert NotEnoughAssetToTransfer();
        }
        // account for limits and the asset value in contract
        conversionLimit[asset] += returnAmount;
        if (ethValueInWithdrawal > msg.value) {
            ethValueInWithdrawal -= msg.value;
        } else {
            ethValueInWithdrawal = 0;
        }
        // Send eth to deposit pool
        (bool success,) = payable(address(lrtDepositPool)).call{ value: ethAmountSent }("");
        if (!success) revert TokenTransferFailed();

        if (!IERC20(asset).transfer(msg.sender, returnAmount)) {
            revert TokenTransferFailed();
        }
        emit ETHSwappedForLST(ethAmountSent, asset, returnAmount);
    }
}
