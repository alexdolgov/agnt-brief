// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.24;

import { SafeERC20, IERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "../StrategyVault.sol";
import "../../external/uniswap/interfaces/IUniswapV2Factory.sol";
import "../../external/uniswap/interfaces/IUniswapV2Pair.sol";
import "../../external/uniswap/interfaces/IUniswapV2Router02.sol";
import "../../libraries/math/UniswapV2PairMath.sol";

contract OmegaUniswapV2Strategy is StrategyVault {
    using SafeERC20 for IERC20;

    struct InitParams {
        string name;
        string symbol;
        address tokenA;
        address tokenB;
        address factory;
        address router;
    }

    IERC20 public immutable tokenB;
    IUniswapV2Factory public immutable factory;
    IUniswapV2Router02 public immutable router;
    IUniswapV2Pair public immutable pair;

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
                baseAsset: params.tokenA
            }),
            vaultParams_
        )
    {
        tokenB = IERC20(params.tokenB);
        router = IUniswapV2Router02(params.router);
        factory = IUniswapV2Factory(params.factory);
        pair = IUniswapV2Pair(factory.getPair(address(_baseAsset), address(tokenB)));
        require(address(pair) != address(0), "UniswapV2: The requested pair is not available");
    }

    function previewDeposit(uint256 assets) public view override returns (uint256 shares) {
        uint256 fee = (ud(assets) * _vaultParams.depositFee).unwrap();
        assets = assets - fee;

        (uint256 reserveA, uint256 reserveB,) = pair.getReserves();
        (uint256 reserve0, uint256 reserve1) =
            address(_baseAsset) < address(tokenB) ? (reserveA, reserveB) : (reserveB, reserveA);
        uint256 halfAssets = assets / 2;
        address[] memory path = new address[](2);
        path[0] = address(_baseAsset);
        path[1] = address(tokenB);
        uint256[] memory amountsOut = router.getAmountsOut(halfAssets, path);
        uint256 amountTokenB = amountsOut[1];

        uint256 _totalSupply = pair.totalSupply();
        shares = ((halfAssets * _totalSupply) / reserve0 < (amountTokenB * _totalSupply) / reserve1)
            ? (halfAssets * _totalSupply) / reserve0
            : (amountTokenB * _totalSupply) / reserve1;

        return shares;
    }

    function previewWithdraw(uint256 shares) public view override returns (uint256 assets) {
        (uint256 reserveA, uint256 reserveB,) = pair.getReserves();
        (uint256 reserve0, uint256 reserve1) =
            address(_baseAsset) < address(tokenB) ? (reserveA, reserveB) : (reserveB, reserveA);
        uint256 _totalSupply = pair.totalSupply();
        uint256 amount0 = (shares * reserve0) / _totalSupply;
        uint256 amount1 = (shares * reserve1) / _totalSupply;
        uint256 amountOut = router.getAmountOut(amount1, reserve1, reserve0);
        assets = amount0 + amountOut;
        return assets;
    }

    function _deposit(
        uint256 assets,
        bytes memory data,
        address recipient
    )
        internal
        override
        returns (uint256 receivedShares)
    {
        uint256 minShares = abi.decode(data, (uint256));

        uint256 fee = (ud(assets) * _vaultParams.depositFee).unwrap();
        _baseAsset.safeTransfer(_getFeeCollector(), fee);

        uint256 halfAssets = (assets - fee) / 2;
        address[] memory path = new address[](2);
        path[0] = address(_baseAsset);
        path[1] = address(tokenB);
        _baseAsset.approve(address(router), halfAssets);
        // slither-disable-next-line unused-return
        router.swapExactTokensForTokens(
            halfAssets,
            0,
            path,
            address(this),
            block.timestamp // deadline
        );
        uint256 amountBaseAsset = _baseAsset.balanceOf(address(this));
        uint256 amountTokenB = tokenB.balanceOf(address(this));
        _baseAsset.approve(address(router), amountBaseAsset);
        tokenB.approve(address(router), amountTokenB);
        // Add liquidity
        (,, uint256 liquidity) = router.addLiquidity(
            address(_baseAsset),
            address(tokenB),
            amountBaseAsset, // amountADesired
            amountTokenB, // amountBDesired
            0, // amountAMin
            0, // amountBMin
            address(this),
            block.timestamp // deadline
        );

        // Refund any remaining tokens that were left over after LP provision.
        uint256 remainingTokenB = tokenB.balanceOf(address(this));
        if (remainingTokenB > 0) {
            path[0] = address(tokenB);
            path[1] = address(_baseAsset);
            tokenB.approve(address(router), remainingTokenB);
            // slither-disable-next-line unused-return
            router.swapExactTokensForTokens(remainingTokenB, 0, path, address(this), block.timestamp);
        }
        _baseAsset.safeTransfer(recipient, _baseAsset.balanceOf(address(this)));

        require(liquidity >= minShares, "UniswapV2StrategyVault: Received less than minShares");
        receivedShares = liquidity;
        _mint(recipient, liquidity);
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
        uint256 minAssets = abi.decode(data, (uint256));

        // Check if there is any USDB in the contract.
        uint256 _initialBalance = _baseAsset.balanceOf(address(this));

        _burn(caller, shares);
        pair.approve(address(router), shares);
        // slither-disable-next-line unused-return
        (, uint256 amountB) = router.removeLiquidity(
            address(_baseAsset),
            address(tokenB),
            shares, // liquidity
            0,
            0,
            address(this),
            block.timestamp // deadline
        );
        address[] memory path = new address[](2);
        path[0] = address(tokenB);
        path[1] = address(_baseAsset);
        tokenB.approve(address(router), amountB);
        // slither-disable-next-line unused-return
        router.swapExactTokensForTokens(amountB, 0, path, address(this), block.timestamp);

        uint256 _finalBalance = _baseAsset.balanceOf(address(this));
        receivedAssets = _finalBalance - _initialBalance;
        require(receivedAssets >= minAssets, "UniswapV2StrategyVault: Received less than minAssets");
        // Transfer out everything, but only count the assets from the swap as explicitly received.
        _baseAsset.safeTransfer(recipient, _finalBalance);
    }

    function getPositionValue(address account) public view virtual override returns (uint256 value) {
        uint256 totalShares = balanceOf(account);

        value = 0;

        if (totalShares > 0) {
            uint8 _baseDecimals = IERC20Metadata(address(_baseAsset)).decimals();
            UniswapV2PairMath.PairProps memory props =
                UniswapV2PairMath.fetchPairProps(pair, _getPriceProvider(), _baseDecimals);
            // Treat as fixed point math to inherently cancel out the decimals.
            value = ud(UniswapV2PairMath.getFairPrice(props)).mul(ud(totalShares)).unwrap();
        }
    }
}
