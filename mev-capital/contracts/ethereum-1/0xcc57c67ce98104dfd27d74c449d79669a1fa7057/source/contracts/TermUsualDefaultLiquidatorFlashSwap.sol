//SPDX-License-Identifier: CC-BY-NC-ND-4.0
pragma solidity ^0.8.18;

import {IFlashLoanSimpleReceiver} from "@aave/core-v3/contracts/flashloan/interfaces/IFlashLoanSimpleReceiver.sol";
import {IPoolAddressesProvider} from "@aave/core-v3/contracts/interfaces/IPoolAddressesProvider.sol";
import {IPool} from "@aave/core-v3/contracts/interfaces/IPool.sol";
import {CurvePool} from "./interfaces/CurvePool.sol";

import {ITermRepoCollateralManager} from "./interfaces/ITermRepoCollateralManager.sol";
import {IUsualDao} from "./interfaces/IUsualDao.sol";
import {IHashNoteTeller} from "./interfaces/IHashNoteTeller.sol";

import {TermUsualFlashDefaultSubmission} from "./lib/TermUsualFlashDefaultSubmission.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {LowGasSafeMath} from "@uniswap/v3-core/contracts/libraries/LowGasSafeMath.sol";
import {TransferHelper} from "@uniswap/v3-periphery/contracts/libraries/TransferHelper.sol";

contract TermUsualDefaultLiquidatorFlashSwap is IFlashLoanSimpleReceiver {
    using SafeERC20 for IERC20;
    using LowGasSafeMath for uint256;

    address constant public CRV_POOL = 0x1d08E7adC263CfC70b1BaBe6dC5Bb339c16Eec52;
    address constant public USUAL_DAO_CONTRACT = 0xde6e1F680C4816446C8D515989E2358636A38b04;
    address constant public HASHNOTE_TELLER_CONTRACT = 0x5C73E1cfdD85b7f1d608F7F7736fC8C653513B7A;

    address immutable liquidatorWallet;
    IPoolAddressesProvider public immutable ADDRESSES_PROVIDER;
    IPool public immutable POOL;
    IERC20 immutable usd0LiquidBond = IERC20(0x35D8949372D46B7a3D5A56006AE77B215fc69bC0);
    IERC20 immutable usualUSD = IERC20(0x73A15FeD60Bf67631dC6cd7Bc5B6e8da8190aCF5);
    IERC20 immutable usyc = IERC20(0x136471a34f6ef19fE571EFFC1CA711fdb8E49f2b);
    IERC20 immutable usdc = IERC20(0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48);

    constructor(
        address liquidatorWallet_,
        address lendingPoolAddressProvider_
    ) {
        require(
            address(liquidatorWallet_) != address(0),
            "liquidatorWallet_ cannot be 0"
        );

        require(
            address(lendingPoolAddressProvider_) != address(0),
            "lendingPoolAddressProvider_ cannot be 0"
        );

        liquidatorWallet = liquidatorWallet_;
        ADDRESSES_PROVIDER = IPoolAddressesProvider(lendingPoolAddressProvider_); // mainnet address, for other addresses: https://docs.aave.com/developers/developing-on-aave/deployed-contract-instances
        POOL = IPool(ADDRESSES_PROVIDER.getPool());
    }

    function flashDefault(TermUsualFlashDefaultSubmission calldata flashDefaultSubmission) external {
        address receiverAddress = address(this);

        bytes memory params = abi.encode(flashDefaultSubmission); // Add any necessary parameters
        uint16 referralCode = 0;

        uint256 flashLoanAmount = flashDefaultSubmission.coverAmount * (10**18 + 10**17) / 10 ** 18; // inclues 10 bp from redemptions

        POOL.flashLoanSimple(receiverAddress, address(usdc), flashLoanAmount, params, referralCode);
    }


    // gets tokens/WETH via a V3 flash swap, swaps for the ETH/tokens on Curve, repays V3, and keeps the rest!
    function executeOperation(
        address asset,
        uint256 amount,
        uint256 premium,
        address initiator,
        bytes calldata params
    ) external override returns (bool) {
        TermUsualFlashDefaultSubmission memory liquidationParams = abi.decode(params, (TermUsualFlashDefaultSubmission));

        TransferHelper.safeApprove(
            asset,
            liquidationParams.termRepoLocker,
            liquidationParams.coverAmount
        );

        _batchDefault(liquidationParams.termRepoCollateralManager, liquidationParams.borrower,liquidationParams.coverAmount);
        _swapUSD0LiqBondToUsualUSD();
        _swapUsualUSDForRWATokens();
        _swapUSYCToUSDC();

        uint256 usdcBalance = usdc.balanceOf(address(this));

        _finalSwapTransfers(amount, premium, usdcBalance, asset);
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
    
    function _swapUSD0LiqBondToUsualUSD() internal {
        uint256 usd0LiquidBondBalance = usd0LiquidBond.balanceOf(address(this));
        CurvePool crvPool = CurvePool(CRV_POOL);

        uint256 i;
        int128 usd0LiquidBondIndex = 0;
        int128 usualUSDIndex = 0;
        address poolCoin;
        for ( i = 0 ; i < 3; ++i){
            poolCoin = crvPool.coins(i);
            if (poolCoin == address(usd0LiquidBond)) {
                    break;
            }
            ++usd0LiquidBondIndex;
        }
        for ( i = 0 ; i < 3; ++i){
            poolCoin = crvPool.coins(i);
            if (poolCoin == address(usualUSD)) {
                    break;
            }
            ++usualUSDIndex;
        }

        TransferHelper.safeApprove(
                    address(usd0LiquidBond),
                    address(crvPool),
                    usd0LiquidBondBalance
        );

        crvPool.exchange(usd0LiquidBondIndex, usualUSDIndex, usd0LiquidBondBalance, 0);
    }

    function _swapUsualUSDForRWATokens() internal {
        IUsualDao usualDao = IUsualDao(USUAL_DAO_CONTRACT);
        uint256 usualUSDBalance = usualUSD.balanceOf(address(this));
        TransferHelper.safeApprove(
            address(usualUSD),
            USUAL_DAO_CONTRACT,
            usualUSDBalance
        );
        usualDao.redeem(address(usyc), usualUSDBalance, 0);
    }

    function _swapUSYCToUSDC() internal {
        IERC20 usycToken = IERC20(usyc);
        uint256 usycBalance = usycToken.balanceOf(address(this));
        TransferHelper.safeApprove(
            address(usyc),
            HASHNOTE_TELLER_CONTRACT,
            usycBalance
        );
        IHashNoteTeller hashnoteTeller = IHashNoteTeller(HASHNOTE_TELLER_CONTRACT);
        hashnoteTeller.sell(usycBalance);
    }

    function _finalSwapTransfers(uint256 amount, uint256 premium, uint256 purchaseCurrencyReturnAmount, address repaymentAsset) internal {
          // Amount to Repay the flash loan
        uint256 amountOwing = amount + premium;

        // Transfer extra purchase currency to liquidator wallet
        uint256 purchaseCurrencyToLiquidator = LowGasSafeMath.sub(
                    purchaseCurrencyReturnAmount,
                    amountOwing
        );
        TransferHelper.safeTransfer(repaymentAsset, liquidatorWallet, purchaseCurrencyToLiquidator);

        //Approve to repay flash loan
        TransferHelper.safeApprove(
            repaymentAsset,
            address(POOL),
            amountOwing
        );
    }
}
