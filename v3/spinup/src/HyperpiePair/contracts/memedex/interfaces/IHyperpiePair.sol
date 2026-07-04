// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IHyperpiePair {
    /*//////////////////////////////////////////////////////////////
                                ERRORS
    //////////////////////////////////////////////////////////////*/
    error InsufficientLiquidityMinted();
    error InsufficientLiquidityBurned();
    error InsufficientLiquidity();
    error InvalidTo();
    error Overflow();
    error InvariantKViolated();
    error InsufficientInputAmount();
    error InsufficientOutputAmount();
    error FactoryAlreadySet();
    error IsNotFactory();       
    error DepositsNotEqual();
    error BelowMinimumK();
    error K();
    error Y();

    event Mint(address indexed sender, uint256 amount0, uint256 amount1);
    event Burn(address indexed sender, uint256 amount0, uint256 amount1, address indexed to);
    event Swap(
        address indexed swappedFor,
        uint256 amount0In,
        uint256 amount1In,
        uint256 amount0Out,
        uint256 amount1Out
    );
    event Sync(uint256 reserve0, uint256 reserve1);
    event Claim(address indexed sender, address indexed recipient, uint256 amount0, uint256 amount1);
    event Fees(address indexed sender, uint256 amount0, uint256 amount1);
    event SetName(string name);
    event SetSymbol(string symbol);
    event UpdatedHyperpieConfig(address indexed hyperpieConfig);

     // Struct to capture time period obervations every 30 minutes, used for local oracles
    struct Observation {
        uint256 timestamp;
        uint256 reserve0Cumulative;
        uint256 reserve1Cumulative;
    }

    function getAmountOut(uint256 amountIn, address tokenIn) external view returns (uint256);
    function getReserves() external view returns (uint256 reserve0, uint256 reserve1, uint256 blockTimestampLast);
    function mint(address to) external returns (uint256 liquidity);
    function burn(address to) external returns (uint256 amount0, uint256 amount1);
    function swap(uint256 amount0Out, uint256 amount1Out, address to) external;
    function token0() external view returns (address);
    function token1() external view returns (address);
    function initialize(address _token0, address _token1, address _hyperpieConfig, bool _stable) external;
    function claimFees() external returns (uint256, uint256);
    function tokens() external view returns (address, address);
    function poolFees() external view returns (address);
    function lpRevShareBPS() external view returns (uint256);
}
