//SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

import { IRizOneClickStrategy, ILendingPool } from "../interfaces/Riz/IRizOneClickStrategy.sol";
import { IPriceOracleGetter } from "@radiant-v2-core/interfaces/IPriceOracleGetter.sol";
import { IRizLendingPoolAddressesProvider } from "../interfaces/Riz/IRizLendingPoolAddressesProvider.sol";
import { IOracleRouter } from "../interfaces/IOracleRouter.sol";
import { RizLendingPoolStorage } from "../riz-lending/RizLendingPoolStorage.sol";
import { IRizLendingPool } from "../interfaces/Riz/IRizLendingPool.sol";
import { ISwapRouter } from "../interfaces/IUniswapV3Router.sol";
import { IQuoter } from "../interfaces/IUniswapV3Quoter.sol";

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/**
 * positionLendingPool -> could be a rizLendingPool or the "core" lendingPool
 * collateralAsset -> asset to lever against, must be an enabled collateral reserve of positionLendingPool
 * collateralAmount -> user must have this amount in their posession, and enough erc20-allowance
 * loopAsset -> asset that will be bought by selling debtAsset, must be an enabled collateral reserve of
 * positionLendingPool
 * loopLevel -> think of this as the 0.5X or 2X or 5X ... used in regular long-short positions
 * debtAsset -> must be an enabled borrowable reserve of positionLendingPool
 *
 *
 * ---------------------longing ZRO with ZRO collat--------------------------
 *
 * positionLendingPool -> Riz-ZRO-USDC
 * collatAsset - > ZRO
 * collatAmount -> 50k worth ZRO
 * loopAsset -> ZRO
 * looplevel -> 2
 * debtAsset -> USDC
 *
 *
 * flashloan the debtAsset from the v2-core pool  -> flashloan 100k of USDC
 * swap 100k USDC for equivalent ZRO
 * deposit 150k worth of ZRO into Riz-ZRO-USDC
 * borrow 100k USDC +flashloan fee from Riz-ZRO-USDC
 * payback the 100k USDC flashloan in the v2-core pool
 *
 * ----------------------longing ZRO with USDC collat--------------------------
 *
 * positionLendingPool -> Riz-ZRO-USDC
 * collatAsset - > USDC
 * collatAmount -> 50k worth USDC
 * loopAsset -> ZRO
 * looplevel -> 2
 * debtAsset -> USDC
 *
 *
 * flashloan the debtAsset from the v2-core pool  -> flashloan 100k of USDC
 * swap 150k USDC for equivalent ZRO
 * deposit 150k worth of ZRO into Riz-ZRO-USDC
 * borrow 100k USDC + flashloan fee from Riz-ZRO-USDC
 * payback the 100k USDC flashloan in the v2-core pool
 *
 * --------------------------shorting ZRO------------------------------------
 *
 * positionLendingPool -> Riz-ZRO-USDC
 * collatAsset - > USDC
 * collatAmount -> 50k worth USDC
 * loopAsset -> USDC
 * looplevel -> 2
 * debtAsset -> ZRO
 *
 *
 * flashloan the debtAsset from the v2-core pool  -> flashloan 100k of USDC
 * swap 150k USDC for equivalent ZRO
 * deposit 150k worth of ZRO into Riz-ZRO-USDC
 * borrow 100k USDC + flashloan fee from Riz-ZRO-USDC
 * payback the 100k USDC flashloan in the v2-core pool
 */

/**
 * @title RizOneClickStrategy
 * @author Radiant
 * @notice Entry point for one-click long and short strategies
 */
contract RizOneClickStrategy is IRizOneClickStrategy {
    IOracleRouter public immutable ORACLE_ROUTER;
    ILendingPool public immutable LENDING_POOL;
    address public immutable UNISWAPV3_ROUTER;
    address public immutable UNISWAPV3_QUOTER;
    uint256 public constant RATIO_DIVISOR = 10_000;

    /**
     * @param router oracle to be used for price fetching
     * @param uniswapV3Router address for uniswap v3 router
     * @param lendingPool v2 lending pool address
     */
    constructor(IOracleRouter router, address uniswapV3Router, address uniV3Quoter, ILendingPool lendingPool) {
        ORACLE_ROUTER = router;
        LENDING_POOL = lendingPool;
        UNISWAPV3_ROUTER = uniswapV3Router;
        UNISWAPV3_QUOTER = uniV3Quoter;
    }

    /**
     * @param collateralAsset asset provided by the user to serve as collateral
     * @dev collateralAsset must be an enabled collateral reserve of rizLendingPool
     * @dev collateralAsset should either be the same as the debtAsset or loopAsset
     * @param debtAsset asset being borrowed
     * @param loopAsset asset being deposited into lendingPool
     * @param flashloanAsset asset to be used for flashloan and repayment of loan
     * @param rizLendingPool address for particular riz market
     * @param loopLevel the leverage percentage in bps
     * @param collateralAmount used to manage leverage and repay flashloan
     * @param swapPath path to swap providingAsset to leverageAsset
     */
    function loopMultiAsset(
        address collateralAsset,
        address debtAsset,
        address loopAsset,
        address flashloanAsset,
        address rizLendingPool,
        uint256 loopLevel,
        uint256 collateralAmount,
        bytes calldata swapPath
    ) external {
        IERC20(collateralAsset).transferFrom(msg.sender, address(this), collateralAmount);

        uint256[] memory modes = new uint256[](1);
        modes[0] = 0;

        bytes memory data;
        if (collateralAsset == loopAsset) {
            data = abi.encode(collateralAmount, msg.sender, true, collateralAsset, debtAsset, rizLendingPool, swapPath);
        } else if (collateralAsset == debtAsset) {
            data = abi.encode(collateralAmount, msg.sender, false, loopAsset, debtAsset, rizLendingPool, swapPath);
        } else {
            revert InvalidCollateralAsset();
        }

        {
            // Prices are returned with 18 decimals ie USDC ~= 1e18
            (uint256 collateralPriceInUSD, uint256 flashAssetPriceInUSD) =
                getAssetPrices(collateralAsset, flashloanAsset);

            // Getting total collateral value
            collateralPriceInUSD = (collateralPriceInUSD * collateralAmount) / 10 ** ERC20(collateralAsset).decimals();

            // Getting collateral value in terms of the flash asset decimals
            collateralAmount = (collateralPriceInUSD * 10 ** ERC20(flashloanAsset).decimals()) / flashAssetPriceInUSD;
        }

        uint256[] memory flashloanAmount = new uint256[](1);
        flashloanAmount[0] = (collateralAmount * loopLevel) / RATIO_DIVISOR;

        address[] memory assets = new address[](1);
        assets[0] = flashloanAsset;

        ILendingPool(LENDING_POOL).flashLoan(address(this), assets, flashloanAmount, modes, msg.sender, data, 0);
    }

    /**
     * @param assets array of 1 asset to be used for flashloan and repayment of loan
     * @param amounts array of 1 amount of asset0
     * @param premiums array of 1 premium amount of asset0
     * @param params encodes excessDeposit, caller, asset1, rizMarket, swap path
     */
    function executeOperation(
        address[] calldata assets,
        uint256[] calldata amounts,
        uint256[] calldata premiums,
        address,
        bytes calldata params
    ) external returns (bool) {
        if (msg.sender != address(LENDING_POOL)) revert Unauthorized();
        address flashloanAsset = assets[0];

        (uint256 excessDeposit,,,, address debtAsset,,) =
            abi.decode(params, (uint256, address, bool, address, address, address, bytes));

        uint256 flashloan = amounts[0]; // avoid stack too deep
        uint256 premium = premiums[0]; // avoid stack too deep
        uint256 totalDeposit = flashloan + excessDeposit;

        // Swap flashloanAsset to debtAsset if it's not the same
        {
            if (flashloanAsset != debtAsset) {
                uint256 swapValue;
                bytes memory swapPath = abi.encodePacked(flashloanAsset, uint24(500), debtAsset);
                swapValue = _handleSwap(flashloanAsset, false, flashloan, 0, swapPath);
                totalDeposit = swapValue + excessDeposit;
            }
        }
        (, address caller, bool collateralIsLoopAsset, address asset1,, address rizMarket, bytes memory path) =
            abi.decode(params, (uint256, address, bool, address, address, address, bytes));

        totalDeposit = _handleSwap(debtAsset, collateralIsLoopAsset, totalDeposit, excessDeposit, path);

        address loanAsset = flashloanAsset; // avoid stack too deep

        // have to deposit at minimum enough to cover flashloan + premium while remaining under LT

        uint256 amountToRepay = flashloan + premium;

        {
            // swap borrowed debtAsset to flashloanAsset if they are not the same to repay loan
            if (loanAsset != debtAsset) {
                // Quoter requires path tokens to be in reverse order
                ///@dev tokenOut is flashloanAsset, tokenIn is debtAsset
                bytes memory swapPath = abi.encodePacked(loanAsset, uint24(500), debtAsset);
                uint256 amountIn = IQuoter(UNISWAPV3_QUOTER).quoteExactOutput(swapPath, amountToRepay);
                _depositAndBorrow(debtAsset, asset1, rizMarket, totalDeposit, amountIn, caller);
                swapPath = abi.encodePacked(debtAsset, uint24(500), loanAsset);
                _handleSwap(debtAsset, false, amountIn, 0, swapPath);
            } else {
                _depositAndBorrow(loanAsset, asset1, rizMarket, totalDeposit, amountToRepay, caller);
            }
        }
        // approve repayment of flashloan
        IERC20(loanAsset).approve(address(LENDING_POOL), amountToRepay);

        return true;
    }

    /**
     * @param asset0 asset to borrow and repay flashloan
     * @param asset1 asset we are longing / shorting
     * @param rizMarket address of riz market to interact with
     * @param totalDeposit leverage amount + excess to decrease total leverage
     * @param amountToRepay loan amount + premium
     * @param onBehalfOf caller of loopMultiAsset
     */
    function _depositAndBorrow(
        address asset0,
        address asset1,
        address rizMarket,
        uint256 totalDeposit,
        uint256 amountToRepay,
        address onBehalfOf
    ) internal {
        IERC20(asset1).approve(rizMarket, totalDeposit);
        IRizLendingPool(rizMarket).deposit(asset1, totalDeposit, onBehalfOf, 0);
        // borrow asset[0] to repay flashloan + premium
        IRizLendingPool(rizMarket).borrow(asset0, amountToRepay, 2, 0, onBehalfOf);

        emit LoopedMultiAsset(onBehalfOf, asset0, asset1, totalDeposit);
    }

    /**
     * @param asset0 debt asset address
     * @param collateralIsLoopAsset true if collateral is loop asset false if collateral is debt
     *                              asset
     * @param totalDeposit sum of flashloan and excess deposit
     * @param excessDeposit collateral amount
     * @param path swap path
     */
    function _handleSwap(
        address asset0,
        bool collateralIsLoopAsset,
        uint256 totalDeposit,
        uint256 excessDeposit,
        bytes memory path
    ) internal returns (uint256) {
        if (collateralIsLoopAsset) {
            {
                totalDeposit = totalDeposit - excessDeposit;

                uint256 amountOutMin = IQuoter(UNISWAPV3_QUOTER).quoteExactInput(path, totalDeposit);
                ISwapRouter.ExactInputParams memory swapParams =
                    ISwapRouter.ExactInputParams(path, address(this), block.timestamp, totalDeposit, amountOutMin);

                IERC20(asset0).approve(UNISWAPV3_ROUTER, totalDeposit);

                // Swap asset0 to asset1
                return totalDeposit = ISwapRouter(UNISWAPV3_ROUTER).exactInput(swapParams) + excessDeposit;
            }
        } else {
            {
                uint256 amountOutMin = IQuoter(UNISWAPV3_QUOTER).quoteExactInput(path, totalDeposit);
                ISwapRouter.ExactInputParams memory swapParams =
                    ISwapRouter.ExactInputParams(path, address(this), block.timestamp, totalDeposit, amountOutMin);

                IERC20(asset0).approve(UNISWAPV3_ROUTER, totalDeposit);

                // Swap asset0 to asset1
                return totalDeposit = ISwapRouter(UNISWAPV3_ROUTER).exactInput(swapParams);
            }
        }
    }

    /**
     *
     * @param asset0 first asset address
     * @param asset1 second asset address
     * @return usdValueAsset0 value of asset0 denominated in USD with 18 decimals
     * @return usdValueAsset1 value of asset1 denominated in USD with 18 decimals
     */
    function getAssetPrices(address asset0, address asset1)
        internal
        view
        returns (uint256 usdValueAsset0, uint256 usdValueAsset1)
    {
        usdValueAsset0 = ORACLE_ROUTER.getAssetPrice(asset0);
        usdValueAsset1 = ORACLE_ROUTER.getAssetPrice(asset1);
    }
}
