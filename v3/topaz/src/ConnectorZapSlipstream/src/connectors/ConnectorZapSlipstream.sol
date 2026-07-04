// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

interface IERC20Like {
    function approve(address spender, uint256 amount) external returns (bool);
    function balanceOf(address account) external view returns (uint256);
}

interface IWBNBLike {
    function deposit() external payable;
}

interface ISwapRouterLike {
    struct ExactInputSingleParams {
        address tokenIn;
        address tokenOut;
        int24 tickSpacing;
        address recipient;
        uint256 deadline;
        uint256 amountIn;
        uint256 amountOutMinimum;
        uint160 sqrtPriceLimitX96;
    }

    function exactInputSingle(ExactInputSingleParams calldata params)
        external
        payable
        returns (uint256 amountOut);
}

interface INonfungiblePositionManagerLike {
    struct MintParams {
        address token0;
        address token1;
        int24 tickSpacing;
        int24 tickLower;
        int24 tickUpper;
        uint256 amount0Desired;
        uint256 amount1Desired;
        uint256 amount0Min;
        uint256 amount1Min;
        address recipient;
        uint256 deadline;
        uint160 sqrtPriceX96;
    }

    function mint(MintParams calldata params)
        external
        payable
        returns (uint256 tokenId, uint128 liquidity, uint256 amount0, uint256 amount1);

    function approve(address to, uint256 tokenId) external;
}

interface ICLFactoryLike {
    function getPool(address tokenA, address tokenB, int24 tickSpacing) external view returns (address);
}

interface IVoterLike {
    function gauges(address pool) external view returns (address);
}

interface ICLGaugeLike {
    function deposit(uint256 tokenId) external;
}

/// @title ConnectorZapSlipstream
/// @notice Stateless zap connector. Intended to be `delegatecall`ed by a
///         TopazAccount, so every external call originates from the account and
///         the minted + staked CL position is owned by the account.
///
///         Flow (single-token BNB zap): wrap -> swap a portion to the paired
///         token -> mint a CL position to the account -> stake it in the gauge.
///
///         Amounts are computed off-chain (tick math, swap split) and the
///         connector enforces only the swap min-out; mint mins are 0 because the
///         account already holds both tokens (no further price exposure at mint),
///         and any unused dust simply stays in the account.
contract ConnectorZapSlipstream {
    address public immutable WBNB;
    address public immutable swapRouter;
    address public immutable positionManager;
    address public immutable clFactory;
    address public immutable voter;

    struct ZapParams {
        address token0;
        address token1;
        int24 tickSpacing;
        int24 tickLower;
        int24 tickUpper;
        bool tokenInIsToken0;
        uint256 amountIn;
        uint256 swapAmountIn;
        uint256 amountOutMinimum;
        uint256 deadline;
    }

    event ZapStaked(address indexed account, address indexed pool, address indexed gauge, uint256 tokenId);

    error TokenInNotWBNB();
    error PoolNotFound();
    error GaugeNotFound();

    constructor(
        address _wbnb,
        address _swapRouter,
        address _positionManager,
        address _clFactory,
        address _voter
    ) {
        WBNB = _wbnb;
        swapRouter = _swapRouter;
        positionManager = _positionManager;
        clFactory = _clFactory;
        voter = _voter;
    }

    /// @dev Delegatecalled by the account. `address(this)` is the account.
    function zapAndStake(ZapParams calldata p) external payable returns (uint256 tokenId) {
        address tokenIn = p.tokenInIsToken0 ? p.token0 : p.token1;
        address tokenOut = p.tokenInIsToken0 ? p.token1 : p.token0;
        if (tokenIn != WBNB) revert TokenInNotWBNB();

        uint256 snapOut = IERC20Like(tokenOut).balanceOf(address(this));

        // 1. Wrap the incoming native BNB.
        IWBNBLike(WBNB).deposit{value: p.amountIn}();

        // 2. Swap the zap portion into the paired token.
        if (p.swapAmountIn > 0) {
            IERC20Like(tokenIn).approve(swapRouter, p.swapAmountIn);
            ISwapRouterLike(swapRouter).exactInputSingle(
                ISwapRouterLike.ExactInputSingleParams({
                    tokenIn: tokenIn,
                    tokenOut: tokenOut,
                    tickSpacing: p.tickSpacing,
                    recipient: address(this),
                    deadline: p.deadline,
                    amountIn: p.swapAmountIn,
                    amountOutMinimum: p.amountOutMinimum,
                    sqrtPriceLimitX96: 0
                })
            );
        }

        // 3. Zap-attributable amounts (exclude any pre-existing balances).
        uint256 inRemaining = p.amountIn - p.swapAmountIn;
        uint256 outGained = IERC20Like(tokenOut).balanceOf(address(this)) - snapOut;

        uint256 amount0Desired = p.tokenInIsToken0 ? inRemaining : outGained;
        uint256 amount1Desired = p.tokenInIsToken0 ? outGained : inRemaining;

        IERC20Like(p.token0).approve(positionManager, amount0Desired);
        IERC20Like(p.token1).approve(positionManager, amount1Desired);

        // 4. Mint the position to the account.
        (tokenId,,,) = INonfungiblePositionManagerLike(positionManager).mint(
            INonfungiblePositionManagerLike.MintParams({
                token0: p.token0,
                token1: p.token1,
                tickSpacing: p.tickSpacing,
                tickLower: p.tickLower,
                tickUpper: p.tickUpper,
                amount0Desired: amount0Desired,
                amount1Desired: amount1Desired,
                amount0Min: 0,
                amount1Min: 0,
                recipient: address(this),
                deadline: p.deadline,
                sqrtPriceX96: 0
            })
        );

        // 5. Resolve the gauge and stake.
        address pool = ICLFactoryLike(clFactory).getPool(p.token0, p.token1, p.tickSpacing);
        if (pool == address(0)) revert PoolNotFound();
        address gauge = IVoterLike(voter).gauges(pool);
        if (gauge == address(0)) revert GaugeNotFound();

        INonfungiblePositionManagerLike(positionManager).approve(gauge, tokenId);
        ICLGaugeLike(gauge).deposit(tokenId);

        emit ZapStaked(address(this), pool, gauge, tokenId);
    }
}
