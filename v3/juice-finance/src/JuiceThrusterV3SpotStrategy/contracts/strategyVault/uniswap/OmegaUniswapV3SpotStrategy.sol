// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.24;

import { ud } from "@prb/math/src/UD60x18.sol";
import "../../external/uniswap/interfaces/IV3SwapRouter.sol";
import "../../external/uniswap/interfaces/IUniswapV3Factory.sol";
import "../../interfaces/IUniswapOracle.sol";
import "../../libraries/Errors.sol";
import "../../libraries/math/UniswapV3PoolMath.sol";
import "../StrategyVault.sol";
import "../../periphery/UniswapV3Swapper.sol";
import { IQuoterV2 } from "@uniswap/v3-periphery/contracts/interfaces/IQuoterV2.sol";

/// @title Omega Uniswap V3 Spot Strategy
/// @notice Swaps deposited base asset into the asset and vice versa using UniswapV3 router
contract OmegaUniswapV3SpotStrategy is StrategyVault, UniswapV3SwapZapper {
    using SafeERC20 for IERC20;

    uint8 internal immutable _decimals;

    struct InitParams {
        address baseAsset; // Used for deposit into this strategy
        address asset; // Address of the asset to pair with USDC
        address quoter; // Quoter contract for UniswapV3
        address router;
        string name; // Name of the asset
        string symbol; // Symbol of the asset
        uint24 fee; // Fee for the Uniswap swap
        uint8 decimals; // Decimals of the asset
        bytes inPath;
        bytes outPath;
    }

    IQuoterV2 public immutable quoter;
    address public immutable asset;

    constructor(
        address protocolGovernor_,
        VaultParams memory vaultParams_,
        InitParams memory params
    )
        StrategyVault(
            BaseInitParams({
                protocolGovernor: protocolGovernor_,
                vaultName: params.name,
                vaultSymbol: params.symbol,
                baseAsset: params.baseAsset
            }),
            vaultParams_
        )
        UniswapV3SwapZapper(params.router, params.inPath, params.outPath)
    {
        _decimals = params.decimals;
        asset = params.asset;
        quoter = IQuoterV2(params.quoter);
    }

    function decimals() public view override returns (uint8) {
        return _decimals;
    }

    function updatePaths(bytes memory inPath_, bytes memory outPath_) external onlyOwner {
        _updatePaths(inPath_, outPath_);
    }

    function previewDepositOffchain(uint256 amount) public override returns (uint256) {
        uint256 fee = (ud(amount) * _vaultParams.depositFee).unwrap();
        amount = amount - fee;

        (uint256 amount1,,,) = quoter.quoteExactInput(swapProps.inPath, amount);
        return amount1;
    }

    function previewWithdrawOffchain(uint256 shares) public override returns (uint256) {
        (uint256 amount1,,,) = quoter.quoteExactInput(swapProps.outPath, shares);
        return amount1;
    }

    function _deposit(
        uint256 amount,
        bytes memory data,
        address recipient
    )
        internal
        override
        returns (uint256 receivedShares)
    {
        uint256 minAmount = abi.decode(data, (uint256));
        receivedShares = _uniswapV3SwapIn(_baseAsset, address(this), amount, minAmount);
        _mint(recipient, receivedShares);
    }

    function _withdraw(
        address caller,
        uint256 shares,
        bytes memory data,
        address recipient
    )
        internal
        override
        returns (uint256 receivedAssets)
    {
        uint256 minAmount = abi.decode(data, (uint256));
        _burn(caller, shares);
        receivedAssets = _uniswapV3SwapOut(IERC20(asset), recipient, shares, minAmount);
    }

    /// @dev Assume getAssetPrice is denominated in _baseAsset.
    function getPositionValue(address account) public view virtual override returns (uint256) {
        UD60x18 sharePrice = ud(_getPriceProvider().getAssetPrice(address(asset)));
        uint256 totalShares = balanceOf(account);
        return totalShares > 0 ? sharePrice.mul(ud(totalShares)).unwrap() : 0;
    }
}
