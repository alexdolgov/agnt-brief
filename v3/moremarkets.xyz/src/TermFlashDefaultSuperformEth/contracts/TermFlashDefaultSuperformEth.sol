//SPDX-License-Identifier: CC-BY-NC-ND-4.0
pragma solidity ^0.8.18;

import {IFlashLoanSimpleReceiver} from "@aave/core-v3/contracts/flashloan/interfaces/IFlashLoanSimpleReceiver.sol";
import {IPoolAddressesProvider} from "@aave/core-v3/contracts/interfaces/IPoolAddressesProvider.sol";
import {IPool} from "@aave/core-v3/contracts/interfaces/IPool.sol";

import {ITermRepoCollateralManager} from "./interfaces/ITermRepoCollateralManager.sol";

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {LowGasSafeMath} from "@uniswap/v3-core/contracts/libraries/LowGasSafeMath.sol";
import {TransferHelper} from "@uniswap/v3-periphery/contracts/libraries/TransferHelper.sol";

import {I1InchAggregatorV5} from "./interfaces/I1InchAggregatorV5.sol";
import {OneInchSwapDescription} from "./lib/OneInchSwapDescription.sol";


struct TermSuperEthFlashDefaultSubmission {
    address termRepoCollateralManager;
    address termRepoLocker;
    address borrower;
    address repaymentToken;
    uint256 coverAmount;
    bytes oneInchSwapCalldata;
}

interface ISuperEthVault {
    function redeem(uint256 amount, address receiver, address owner) external;
}

contract TermFlashDefaultSuperformEth is IFlashLoanSimpleReceiver {
    using SafeERC20 for IERC20;
    using LowGasSafeMath for uint256;

    // Super ETH Vault address
    address constant public SUPER_ETH_VAULT = 0xeF101508bf4DC6CF0f0a0C135f39a41faB4E4389;
    
    address immutable liquidatorWallet;
    IPoolAddressesProvider public immutable ADDRESSES_PROVIDER;
    IPool public immutable POOL;
    IERC20 immutable weth = IERC20(0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2);
    I1InchAggregatorV5 immutable oneInchAggregator;
    
    constructor(
        address liquidatorWallet_,
        address oneInchAggregatorV5_,
        address lendingPoolAddressProvider_
    ) {
        require(
            address(liquidatorWallet_) != address(0),
            "liquidatorWallet_ cannot be 0"
        );

        require(
            address(oneInchAggregatorV5_) != address(0),
            "oneInchAggregatorV5_ cannot be 0"
        );

        require(
            address(lendingPoolAddressProvider_) != address(0),
            "lendingPoolAddressProvider_ cannot be 0"
        );

        liquidatorWallet = liquidatorWallet_;
        ADDRESSES_PROVIDER = IPoolAddressesProvider(lendingPoolAddressProvider_);
        oneInchAggregator = I1InchAggregatorV5(oneInchAggregatorV5_);
        POOL = IPool(ADDRESSES_PROVIDER.getPool());
    }

    function flashDefault(TermSuperEthFlashDefaultSubmission calldata flashDefaultSubmission) external {
        address receiverAddress = address(this);

        bytes memory params = abi.encode(flashDefaultSubmission);
        uint16 referralCode = 0;

        // Include a 10 bp buffer for fees
        uint256 flashLoanAmount = flashDefaultSubmission.coverAmount;

        // Always use WETH as the flash loan asset
        POOL.flashLoanSimple(receiverAddress, flashDefaultSubmission.repaymentToken, flashLoanAmount, params, referralCode);
    }

    function executeOperation(
        address asset,
        uint256 amount,
        uint256 premium,
        address initiator,
        bytes calldata params
    ) external override returns (bool) {
        TermSuperEthFlashDefaultSubmission memory liquidationParams = abi.decode(params, (TermSuperEthFlashDefaultSubmission));

        TransferHelper.safeApprove(
            asset,
            liquidationParams.termRepoLocker,
            liquidationParams.coverAmount
        );

        _batchDefault(liquidationParams.termRepoCollateralManager, liquidationParams.borrower, liquidationParams.coverAmount);
        _redeemSuperEthToWeth();

        uint256 wethBalance = weth.balanceOf(address(this));


        if (asset != address(weth)) {
            uint256 purchaseCurrencyReturnAmount = _oneInchSwap(liquidationParams.oneInchSwapCalldata, address(weth));
            _finalSwapTransfers(amount, premium, purchaseCurrencyReturnAmount, asset, address(weth));
        } else {
            _finalSwapTransfers(amount, premium, wethBalance, asset, address(0));
        }
        
        return true;
    }

    function _batchDefault(address collateralManager, address borrower, uint256 coverAmount) internal {
        ITermRepoCollateralManager termRepoCollateralManager = ITermRepoCollateralManager(
            collateralManager
        );

        uint256[] memory liquidationCoverAmounts = new uint256[](1);
        liquidationCoverAmounts[0] = coverAmount;

        termRepoCollateralManager.batchDefault(
            borrower,
            liquidationCoverAmounts
        );
    }
    
    function _redeemSuperEthToWeth() internal {
        ISuperEthVault superEthVault = ISuperEthVault(SUPER_ETH_VAULT);
        
        // Check the balance of Super ETH tokens we received from the default
        IERC20 superEthToken = IERC20(SUPER_ETH_VAULT);
        uint256 superEthBalance = superEthToken.balanceOf(address(this));
        
        if (superEthBalance > 0) {
            // Approve the vault to spend our Super ETH tokens
            TransferHelper.safeApprove(
                address(superEthToken),
                SUPER_ETH_VAULT,
                superEthBalance
            );
            
            // Redeem Super ETH for WETH
            superEthVault.redeem(superEthBalance, address(this), address(this));
        }
    }

    function _oneInchSwap(bytes memory oneInchSwapCalldata, address collateralToken) internal returns(uint256) {
        (address executor, OneInchSwapDescription memory desc,  bytes memory permit, bytes memory data) = abi.decode(oneInchSwapCalldata, (address, OneInchSwapDescription, bytes, bytes));

        _oneInchSwapPrep(collateralToken);

        (uint256 purchaseCurrencyReturnAmount, ) = oneInchAggregator.swap(executor, desc, permit, data);
        return purchaseCurrencyReturnAmount;
    }

    function _oneInchSwapPrep(address collateralTokenAddr) internal {
        IERC20 collateralToken = IERC20(
            collateralTokenAddr
        );

        uint256 collateralBalance = collateralToken.balanceOf(address(this));


        TransferHelper.safeApprove(
            collateralTokenAddr,
            address(oneInchAggregator),
            collateralBalance
        );

    }

    // This function is no longer needed since we're only using WETH
    // Keeping the _finalTransfers function for the repayment logic


     function _finalSwapTransfers(uint256 amount, uint256 premium, uint256 purchaseCurrencyReturnAmount, address repaymentAsset, address oneInchInputAsset) internal {
          // Amount to Repay the flash loan
        uint256 amountOwing = amount + premium;

        // Transfer extra purchase currency to liquidator wallet
        uint256 purchaseCurrencyToLiquidator = LowGasSafeMath.sub(
                    purchaseCurrencyReturnAmount,
                    amountOwing
        );

        //Approve to repay flash loan
        TransferHelper.safeApprove(
            repaymentAsset,
            address(POOL),
            amountOwing
        );

        TransferHelper.safeTransfer(repaymentAsset, liquidatorWallet, purchaseCurrencyToLiquidator);

        if (oneInchInputAsset == address(0)) {
            return;
        }

        // Transfer extra 1inch input currency to liquidator wallet
        IERC20 oneInchInputAssetERC20 = IERC20(
            oneInchInputAsset
        );

        uint256 oneInchInputAssetBalance = oneInchInputAssetERC20.balanceOf(address(this));
        TransferHelper.safeTransfer(oneInchInputAsset, liquidatorWallet, oneInchInputAssetBalance);
        
    }

    // Function to recover any tokens that might be stuck in the contract
    function recoverERC20(address tokenAddress, uint256 tokenAmount) external {
        require(msg.sender == liquidatorWallet, "Only liquidator can recover tokens");
        TransferHelper.safeTransfer(tokenAddress, liquidatorWallet, tokenAmount);
    }
}