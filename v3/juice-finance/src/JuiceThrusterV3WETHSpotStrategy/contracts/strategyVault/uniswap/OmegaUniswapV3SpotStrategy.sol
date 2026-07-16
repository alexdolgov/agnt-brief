// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.24;

import { ud } from "@prb/math/src/UD60x18.sol";
import "../../external/uniswap/interfaces/IV3SwapRouter.sol";
import "../../external/uniswap/interfaces/IUniswapV3Factory.sol";
import "../../interfaces/IUniswapOracle.sol";
import "../../libraries/Errors.sol";
import "../../libraries/math/UniswapV3PoolMath.sol";
import "../StrategyVault.sol";

/// @title Omega Uniswap V3 Spot Strategy
/// @notice Swaps deposited base asset into the asset and vice versa using UniswapV3 router
contract OmegaUniswapV3SpotStrategy is StrategyVault {
    using SafeERC20 for IERC20;
    using UniswapV3PoolMath for IUniswapV3Pool;

    uint8 internal immutable _decimals;

    struct InitParams {
        address baseAsset; // Used for deposit into this strategy
        address asset; // Address of the asset to pair with USDC
        address factory;
        address router;
        string name; // Name of the asset
        string symbol; // Symbol of the asset
        uint24 fee; // Fee for the Uniswap swap
        uint8 decimals; // Decimals of the asset
    }

    IUniswapV3Factory public immutable factory;
    IV3SwapRouter public immutable router;
    bytes public inPath;
    bytes public outPath;
    address public immutable asset;
    IUniswapV3Pool public immutable uniswapPool;

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
    {
        _decimals = params.decimals;
        _updateSwapFee(address(_baseAsset), params.asset, params.fee);
        asset = params.asset;
        factory = IUniswapV3Factory(params.factory);
        router = IV3SwapRouter(params.router);
        uniswapPool = IUniswapV3Pool(factory.getPool(params.baseAsset, params.asset, params.fee));
    }

    function decimals() public view override returns (uint8) {
        return _decimals;
    }

    function updateSwapFee(uint24 newFee) external onlyOwner {
        _updateSwapFee(address(_baseAsset), asset, newFee);
    }

    function _updateSwapFee(address assetIn, address assetOut, uint24 fee) internal {
        inPath = abi.encodePacked(assetIn, fee, assetOut);
        outPath = abi.encodePacked(assetOut, fee, assetIn);
    }

    function previewDeposit(uint256 amount) public view override returns (uint256) {
        uint256 uniswapPrice = uniswapPool.getSpotPrice(address(_baseAsset));
        uint256 fee = (ud(amount) * _vaultParams.depositFee).unwrap();
        return (amount - fee) * 10 ** ERC20(asset).decimals() / uniswapPrice;
    }

    function previewWithdraw(uint256 shares) public view override returns (uint256) {
        uint256 uniswapPrice = uniswapPool.getSpotPrice(address(_baseAsset));
        return shares * uniswapPrice / 10 ** ERC20(asset).decimals();
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

        uint256 fee = (ud(amount) * _vaultParams.depositFee).unwrap();
        _baseAsset.safeTransfer(_getFeeCollector(), fee);
        _baseAsset.safeIncreaseAllowance(address(router), amount - fee);
        receivedShares = _swap(amount - fee, minAmount, inPath);
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
        IERC20(asset).safeIncreaseAllowance(address(router), shares);
        receivedAssets = _swap(shares, minAmount, outPath);
        _baseAsset.safeTransfer(recipient, receivedAssets);
    }

    function _swap(uint256 amount, uint256 minAmount, bytes memory path) internal returns (uint256) {
        IV3SwapRouter.ExactInputParams memory params = IV3SwapRouter.ExactInputParams({
            path: path,
            recipient: address(this),
            deadline: block.timestamp,
            amountIn: amount,
            amountOutMinimum: minAmount
        });
        return router.exactInput(params);
    }

    /// @dev Assume getAssetPrice is denominated in _baseAsset.
    function getPositionValue(address account) public view virtual override returns (uint256) {
        UD60x18 sharePrice = ud(_getPriceProvider().getAssetPrice(address(asset)));
        uint256 totalShares = balanceOf(account);
        return totalShares > 0 ? sharePrice.mul(ud(totalShares)).unwrap() : 0;
    }
}
