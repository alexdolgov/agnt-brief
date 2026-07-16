// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@uniswap/v3-core/contracts/interfaces/IUniswapV3Factory.sol";
import "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";
import "@uniswap/v3-periphery/contracts/interfaces/INonfungiblePositionManager.sol";
import "@uniswap/v3-periphery/contracts/interfaces/ISwapRouter.sol";

import "../constants/addresses.sol";
import "../interfaces/IExchange.sol";
import "../interfaces/ILiquidityTokenMath.sol";
import "../interfaces/IStaking.sol";
import "../interfaces/ITreasury.sol";
import "../AddressAccessor.sol";

contract LiquidityManager is AddressAccessor, Pausable {
    uint256 public uniswapV3LPTokenId;

    uint256 private _excludedUSDRAmount; // USDR amount that was minted
    uint256 private _minSizePercent; // percent of USDR market cap

    constructor() {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _pause();
    }

    function depositLPToken(uint256 tokenId, uint256 excludedUSDRAmount)
        external
        whenPaused
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        IERC721(addressProvider.getAddress(UNISWAP_V3_NFT_MANAGER_ADDRESS))
            .transferFrom(msg.sender, address(this), tokenId);
        uniswapV3LPTokenId = tokenId;
        _excludedUSDRAmount = excludedUSDRAmount;
        _unpause();
    }

    function getTokenAmounts()
        external
        view
        returns (uint256 usdrAmount, uint256 underlyingAmount)
    {
        (
            address pool,
            address nonfungiblePositionManager,
            address usdr,
            address underlying,
            address tokenMath
        ) = abi.decode(
                addressProvider.getAddresses(
                    abi.encode(
                        UNISWAP_V3_POOL_ADDRESS,
                        UNISWAP_V3_NFT_MANAGER_ADDRESS,
                        USDR_ADDRESS,
                        UNDERLYING_ADDRESS,
                        UNISWAP_V3_TOKEN_MATH_ADDRESS
                    )
                ),
                (address, address, address, address, address)
            );
        (
            ,
            ,
            address token0,
            ,
            ,
            int24 tickLower,
            int24 tickUpper,
            uint128 liquidity,
            ,
            ,
            ,

        ) = INonfungiblePositionManager(nonfungiblePositionManager).positions(
                uniswapV3LPTokenId
            );
        (uint256 amount0, uint256 amount1) = ILiquidityTokenMath(tokenMath)
            .getTokenAmounts(pool, liquidity, tickLower, tickUpper);
        if (token0 == usdr) {
            usdrAmount = amount0;
            underlyingAmount = amount1;
        } else {
            usdrAmount = amount1;
            underlyingAmount = amount0;
        }
        usdrAmount += IERC20(usdr).balanceOf(address(this));
        underlyingAmount += IERC20(underlying).balanceOf(address(this));
        unchecked {
            uint256 exclude = _excludedUSDRAmount;
            if (exclude < usdrAmount) {
                usdrAmount -= exclude;
            } else {
                usdrAmount = 0;
            }
        }
    }

    function increaseLiquidity(uint256 underlyingAmount)
        external
        whenNotPaused
        returns (
            uint128 liquidity,
            uint256 amount0,
            uint256 amount1
        )
    {
        (
            address nonfungiblePositionManager,
            address router,
            address underlying,
            address usdr,
            address exchange,
            address treasury
        ) = abi.decode(
                addressProvider.getAddresses(
                    abi.encode(
                        UNISWAP_V3_NFT_MANAGER_ADDRESS,
                        UNISWAP_V3_SWAP_ROUTER_ADDRESS,
                        UNDERLYING_ADDRESS,
                        USDR_ADDRESS,
                        USDR_EXCHANGE_ADDRESS,
                        TREASURY_ADDRESS
                    )
                ),
                (address, address, address, address, address, address)
            );

        require(msg.sender == treasury, "caller is not treasury");

        IERC20(underlying).transferFrom(
            treasury,
            address(this),
            underlyingAmount
        );
        (address token0, address token1, uint24 fee) = _getPoolInfo(
            nonfungiblePositionManager
        );

        _collectFees(nonfungiblePositionManager);
        _rebalancePool(router, exchange, usdr, underlying, token0, token1, fee);
        _splitTokenAmounts(router, exchange, underlying, usdr, fee);

        amount0 = IERC20(token0).balanceOf(address(this));
        amount1 = IERC20(token1).balanceOf(address(this));

        if (amount0 > 0 && amount1 > 0) {
            IERC20(token0).approve(nonfungiblePositionManager, amount0);
            IERC20(token1).approve(nonfungiblePositionManager, amount1);

            INonfungiblePositionManager.IncreaseLiquidityParams
                memory params = INonfungiblePositionManager
                    .IncreaseLiquidityParams({
                        tokenId: uniswapV3LPTokenId,
                        amount0Desired: amount0,
                        amount1Desired: amount1,
                        amount0Min: 1,
                        amount1Min: 1,
                        deadline: block.timestamp
                    });

            (liquidity, amount0, amount1) = INonfungiblePositionManager(
                nonfungiblePositionManager
            ).increaseLiquidity(params);
        }
    }

    function initializePool(
        uint160 sqrtPrice,
        uint24 fee,
        uint256 usdrAmount,
        uint256 underlyingAmount
    ) external whenPaused onlyRole(DEFAULT_ADMIN_ROLE) {
        (
            address nonfungiblePositionManager,
            address underlying,
            address usdr
        ) = abi.decode(
                addressProvider.getAddresses(
                    abi.encode(
                        UNISWAP_V3_NFT_MANAGER_ADDRESS,
                        UNDERLYING_ADDRESS,
                        USDR_ADDRESS
                    )
                ),
                (address, address, address)
            );
        _excludedUSDRAmount = usdrAmount;
        IERC20(usdr).transferFrom(msg.sender, address(this), usdrAmount);
        IERC20(underlying).transferFrom(
            msg.sender,
            address(this),
            underlyingAmount
        );
        if (usdr < underlying) {
            address pool = _createPool(
                nonfungiblePositionManager,
                usdr,
                underlying,
                sqrtPrice,
                fee
            );
            _addLiquidity(
                nonfungiblePositionManager,
                pool,
                usdr,
                underlying,
                usdrAmount,
                underlyingAmount,
                fee
            );
        } else {
            address pool = _createPool(
                nonfungiblePositionManager,
                underlying,
                usdr,
                sqrtPrice,
                fee
            );
            _addLiquidity(
                nonfungiblePositionManager,
                pool,
                underlying,
                usdr,
                underlyingAmount,
                usdrAmount,
                fee
            );
        }
    }

    function missingLiquidity() external view returns (uint256) {
        (
            address uniswapV3Pool,
            address underlying,
            address usdr,
            address exchange,
            address staking
        ) = abi.decode(
                addressProvider.getAddresses(
                    abi.encode(
                        UNISWAP_V3_POOL_ADDRESS,
                        UNDERLYING_ADDRESS,
                        USDR_ADDRESS,
                        USDR_EXCHANGE_ADDRESS,
                        STAKING_ADDRESS
                    )
                ),
                (address, address, address, address, address)
            );

        uint256 minSize = IExchange(exchange).scaleToUnderlying(
            (IStaking(staking).usdrMarketCap() * _minSizePercent) / 100
        );
        uint256 liquidity;
        {
            uint256 underlyingBalance = IERC20(underlying).balanceOf(
                uniswapV3Pool
            );
            uint256 usdrBalance = IERC20(usdr).balanceOf(uniswapV3Pool);
            liquidity =
                underlyingBalance +
                IExchange(exchange).scaleToUnderlying(usdrBalance) -
                IExchange(exchange).scaleToUnderlying(_excludedUSDRAmount);
        }
        return liquidity < minSize ? (minSize - liquidity) : 0;
    }

    function setMinSize(uint256 percent) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _minSizePercent = percent;
    }

    function sweepTokens() external onlyRole(DEFAULT_ADMIN_ROLE) {
        (address underlying, address usdr) = abi.decode(
            addressProvider.getAddresses(
                abi.encode(UNDERLYING_ADDRESS, USDR_ADDRESS)
            ),
            (address, address)
        );
        {
            uint256 amount = IERC20(underlying).balanceOf(address(this));
            if (amount > 0) {
                IERC20(underlying).transfer(msg.sender, amount);
            }
        }
        {
            uint256 amount = IERC20(usdr).balanceOf(address(this));
            if (amount > 0) {
                IERC20(usdr).transfer(msg.sender, amount);
            }
        }
    }

    function withdrawLPToken()
        external
        whenNotPaused
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        _pause();
        IERC721(addressProvider.getAddress(UNISWAP_V3_NFT_MANAGER_ADDRESS))
            .safeTransferFrom(address(this), msg.sender, uniswapV3LPTokenId);
        uniswapV3LPTokenId = 0;
    }

    function _addLiquidity(
        address nonfungiblePositionManager,
        address pool,
        address token0,
        address token1,
        uint256 amount0,
        uint256 amount1,
        uint24 fee
    ) private {
        (, int24 tick, , , , , ) = IUniswapV3Pool(pool).slot0();
        int24 tickSpacing = IUniswapV3Pool(pool).tickSpacing();
        int24 nearestTick = _getNearestUsableTick(tick, tickSpacing);

        INonfungiblePositionManager.MintParams
            memory params = INonfungiblePositionManager.MintParams({
                token0: token0,
                token1: token1,
                fee: fee,
                tickLower: nearestTick - tickSpacing * 10,
                tickUpper: nearestTick + tickSpacing * 10,
                amount0Desired: amount0,
                amount1Desired: amount1,
                amount0Min: 1,
                amount1Min: 1,
                recipient: address(this),
                deadline: block.timestamp
            });

        IERC20(token0).approve(nonfungiblePositionManager, amount0);
        IERC20(token1).approve(nonfungiblePositionManager, amount1);
        (uniswapV3LPTokenId, , , ) = INonfungiblePositionManager(
            nonfungiblePositionManager
        ).mint(params);
        _unpause();
    }

    function _collectFees(address nonfungiblePositionManager)
        private
        returns (uint256, uint256)
    {
        INonfungiblePositionManager.CollectParams
            memory params = INonfungiblePositionManager.CollectParams({
                tokenId: uniswapV3LPTokenId,
                recipient: address(this),
                amount0Max: type(uint128).max,
                amount1Max: type(uint128).max
            });
        return
            INonfungiblePositionManager(nonfungiblePositionManager).collect(
                params
            );
    }

    function _createPool(
        address nonfungiblePositionManager,
        address token0,
        address token1,
        uint160 sqrtPrice,
        uint24 fee
    ) private returns (address pool) {
        pool = IPoolInitializer(nonfungiblePositionManager)
            .createAndInitializePoolIfNecessary(token0, token1, fee, sqrtPrice);
    }

    function _getNearestUsableTick(int24 currentTick, int24 space)
        private
        pure
        returns (int24 nearestTick)
    {
        if (currentTick == 0) {
            return 0;
        }
        int24 direction = currentTick >= 0 ? int24(1) : -1;
        currentTick *= direction;
        nearestTick = currentTick % space <= space / 2
            ? currentTick - (currentTick % space)
            : currentTick + (space - (currentTick % space));
        nearestTick *= direction;
    }

    function _getPoolInfo(address nonfungiblePositionManager)
        private
        view
        returns (
            address token0,
            address token1,
            uint24 fee
        )
    {
        (, , token0, token1, fee, , , , , , , ) = INonfungiblePositionManager(
            nonfungiblePositionManager
        ).positions(uniswapV3LPTokenId);
    }

    function _rebalancePool(
        address router,
        address exchange,
        address usdr,
        address underlying,
        address token0,
        address token1,
        uint24 fee
    ) private {
        address pool = addressProvider.getAddress(UNISWAP_V3_POOL_ADDRESS);
        uint256 token0Balance = IERC20(token0).balanceOf(pool);
        uint256 token1Balance = IERC20(token1).balanceOf(pool);
        uint256 swapAmount;
        if (token0 == usdr) {
            uint256 scaledUSDRBalance = IExchange(exchange).scaleToUnderlying(
                token0Balance
            );
            if (scaledUSDRBalance > token1Balance) {
                swapAmount = (scaledUSDRBalance - token1Balance) >> 1;
            }
        } else {
            uint256 scaledUSDRBalance = IExchange(exchange).scaleToUnderlying(
                token1Balance
            );
            if (scaledUSDRBalance > token0Balance) {
                swapAmount = (scaledUSDRBalance - token0Balance) >> 1;
            }
        }
        if (swapAmount > 0) {
            uint256 underlyingBalance = IERC20(underlying).balanceOf(
                address(this)
            );
            if (underlyingBalance < swapAmount) {
                swapAmount = underlyingBalance;
            }
            if (swapAmount > 0) {
                IERC20(underlying).approve(router, swapAmount);
                ISwapRouter.ExactInputSingleParams memory params = ISwapRouter
                    .ExactInputSingleParams({
                        tokenIn: underlying,
                        tokenOut: usdr,
                        fee: fee,
                        recipient: address(this),
                        deadline: block.timestamp,
                        amountIn: swapAmount,
                        amountOutMinimum: 1,
                        sqrtPriceLimitX96: 0
                    });
                ISwapRouter(router).exactInputSingle(params);
            }
        }
    }

    function _splitTokenAmounts(
        address router,
        address exchange,
        address underlying,
        address usdr,
        uint24 fee
    ) private {
        uint256 underlyingBalance = IERC20(underlying).balanceOf(address(this));
        uint256 usdrBalance = IERC20(usdr).balanceOf(address(this));
        uint256 scaledUSDRBalance = IExchange(exchange).scaleToUnderlying(
            usdrBalance
        );
        if (scaledUSDRBalance < underlyingBalance) {
            uint256 swapAmount = (underlyingBalance - scaledUSDRBalance) >> 1;
            if (swapAmount > 0) {
                IERC20(underlying).approve(router, swapAmount);
                ISwapRouter.ExactInputSingleParams memory params = ISwapRouter
                    .ExactInputSingleParams({
                        tokenIn: underlying,
                        tokenOut: usdr,
                        fee: fee,
                        recipient: address(this),
                        deadline: block.timestamp,
                        amountIn: swapAmount,
                        amountOutMinimum: 1,
                        sqrtPriceLimitX96: 0
                    });
                ISwapRouter(router).exactInputSingle(params);
            }
            /*
            IERC20(underlying).approve(exchange, swapAmount);
            uint256 amountOut = IExchange(exchange).swapFromUnderlying(
                swapAmount,
                address(this)
            );
            _excludedUSDRAmount += amountOut;
            */
        }
    }
}
