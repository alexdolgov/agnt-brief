// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IPair {
    error BalanceOverflow();
    error InsufficientFee();
    error InsufficientInputAmount();
    error InsufficientLiquidity();
    error InsufficientLiquidityBurned();
    error InsufficientLiquidityMinted();
    error InsufficientOutputAmount();
    error InvalidReceiver();
    error K();
    error NoBetterOracle();
    error NoOracleFound();
    error SenderNotFactory();
    error SwapAmountTooLow();

    event Burn(
        address indexed sender,
        uint256 amount0,
        uint256 amount1,
        address indexed to
    );
    event Mint(address indexed sender, uint256 amount0, uint256 amount1);
    event Swap(
        address indexed sender,
        uint256 amount0In,
        uint256 amount1In,
        uint256 amount0Out,
        uint256 amount1Out,
        address indexed to
    );
    event Sync(uint112 reserve0, uint112 reserve1);

    function antfarmOracle() external view returns (address);
    function antfarmToken() external view returns (address);
    function antfarmTokenReserve() external view returns (uint256);
    function burn(address to, uint256 positionId, uint256 liquidity)
        external
        returns (uint256, uint256);
    function claimDividend(address to, uint256 positionId)
        external
        returns (uint256 claimAmount);
    function claimableDividends(address operator, uint256 positionId)
        external
        view
        returns (uint256 amount);
    function factory() external view returns (address);
    function fee() external view returns (uint16);
    function getFees(
        uint256 amount0Out,
        uint256 amount0In,
        uint256 amount1Out,
        uint256 amount1In
    ) external view returns (uint256 feeToPay);
    function getPositionLP(address operator, uint256 positionId)
        external
        view
        returns (uint128);
    function getReserves()
        external
        view
        returns (
            uint112 _reserve0,
            uint112 _reserve1,
            uint32 _blockTimestampLast
        );
    function initialize(
        address _token0,
        address _token1,
        uint16 _fee,
        address _antfarmToken
    ) external;
    function mint(address to, uint256 positionId) external returns (uint256);
    function positions(address, uint256)
        external
        view
        returns (uint128 lp, uint256 dividend, uint256 lastDividendPoints);
    function scanOracles(uint112 maxReserve)
        external
        view
        returns (address bestOracle);
    function skim(address to) external;
    function swap(uint256 amount0Out, uint256 amount1Out, address to)
        external;
    function sync() external;
    function token0() external view returns (address);
    function token1() external view returns (address);
    function totalSupply() external view returns (uint256);
    function updateOracle() external;
}
