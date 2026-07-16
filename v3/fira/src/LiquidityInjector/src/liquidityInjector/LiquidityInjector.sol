// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import {IBondToken} from "../interfaces/IBondToken.sol";
import {ILiquidityInjector} from "../interfaces/ILiquidityInjector.sol";
import {ILendingMarket, Id, Market, MarketParams} from "@lending-market/interfaces/ILendingMarket.sol";
import {MarketParamsLib} from "@lending-market/libraries/MarketParamsLib.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/// @title Liquidity Injector
/// @notice Contract that injects liquidity into lending markets by minting Bond Tokens (BT)
/// and supplying them to the lending market. It can also withdraw liquidity by redeeming BTs.
contract LiquidityInjector is Ownable, ILiquidityInjector {
    using MarketParamsLib for MarketParams;
    using SafeERC20 for IERC20;

    /// @notice The lending market contract
    ILendingMarket public immutable lendingMarket;
    /// @notice Mapping of market ID to total liquidity injected
    mapping(Id => uint256) public marketStats;

    event LiquidityInjected(Id indexed marketId, address indexed bondToken, uint256 amount);
    event LiquidityWithdrawn(Id indexed marketId, address indexed bondToken, uint256 amount);

    constructor(address _lendingMarket) Ownable(_msgSender()) {
        require(_lendingMarket != address(0), "LI: zero lending market");
        lendingMarket = ILendingMarket(_lendingMarket);
    }

    /// @notice Get the current position of the Liquidity Injector in a given market
    /// @param params The market parameters
    /// @return supplyAssets The amount of assets supplied
    /// @return supplyShares The amount of shares supplied
    function getCurrentPosition(MarketParams calldata params)
        external
        view
        returns (uint256 supplyAssets, uint256 supplyShares)
    {
        (supplyAssets, supplyShares,,,) = lendingMarket.getUserPosition(params, address(this));
    }

    /// @notice Inject liquidity into a lending market by minting BTs and supplying them
    /// @param params The market parameters
    /// @param amountToMintAndInject The amount of BTs to mint and inject
    function injectLiquidity(MarketParams calldata params, uint256 amountToMintAndInject) external onlyOwner {
        require(amountToMintAndInject > 0, "LI: zero amount");
        require(params.irm == address(0), "LI: non-zero-IRM market");

        Id marketId = params.id();

        address bondToken = params.loanToken;
        require(bondToken != address(0), "LI: zero bond token");

        IBondToken(bondToken).mintByLI(address(this), amountToMintAndInject);

        IERC20(bondToken).approve(address(lendingMarket), amountToMintAndInject);

        (uint256 assetsSupplied,) = lendingMarket.supply(params, amountToMintAndInject, 0, address(this), "");
        require(assetsSupplied == amountToMintAndInject, "LI: partial inject");

        marketStats[marketId] += assetsSupplied;

        emit LiquidityInjected(marketId, bondToken, assetsSupplied);
    }

    /// @notice Withdraw liquidity from a lending market by redeeming BTs
    /// @param params The market parameters
    /// @param amountToWithdrawAndBurn The amount of BTs to withdraw and burn
    function withdrawLiquidity(MarketParams calldata params, uint256 amountToWithdrawAndBurn) external onlyOwner {
        require(amountToWithdrawAndBurn > 0, "LI: zero amount");

        Id marketId = params.id();

        address bondToken = params.loanToken;
        require(bondToken != address(0), "LI: zero bond token");

        (uint256 currentSupplyAssets, uint256 currentSupplyShares) = this.getCurrentPosition(params);
        require(currentSupplyAssets > 0, "LI: no position in market");

        uint256 maxWithdrawable = _calculateMaxWithdrawable(params, currentSupplyAssets);
        require(amountToWithdrawAndBurn <= maxWithdrawable, "LI: insufficient liquidity");

        (uint256 assetsWithdrawn,) =
            lendingMarket.withdraw(params, amountToWithdrawAndBurn, 0, address(this), address(this));
        require(assetsWithdrawn == amountToWithdrawAndBurn, "LI: partial withdraw");

        IBondToken(bondToken).burnByLI(address(this), assetsWithdrawn);

        marketStats[marketId] = marketStats[marketId] > assetsWithdrawn ? marketStats[marketId] - assetsWithdrawn : 0;

        emit LiquidityWithdrawn(marketId, bondToken, assetsWithdrawn);
    }

    /// @dev Calculate the maximum amount of assets that can be withdrawn from the market
    /// @param params The market parameters
    /// @param ourSupplyAssets The amount of assets currently supplied by the Liquidity Injector
    /// @return The maximum amount of assets that can be withdrawn
    function _calculateMaxWithdrawable(MarketParams calldata params, uint256 ourSupplyAssets)
        internal
        view
        returns (uint256)
    {
        Id marketId = params.id();

        Market memory marketData = lendingMarket.market(marketId);

        uint256 availableLiquidity = marketData.totalSupplyAssets > marketData.totalBorrowAssets
            ? marketData.totalSupplyAssets - marketData.totalBorrowAssets
            : 0;
        uint256 tokenBalance = IERC20(params.loanToken).balanceOf(address(lendingMarket));
        uint256 actualAvailableLiquidity = availableLiquidity < tokenBalance ? availableLiquidity : tokenBalance;

        return ourSupplyAssets < actualAvailableLiquidity ? ourSupplyAssets : actualAvailableLiquidity;
    }
}
