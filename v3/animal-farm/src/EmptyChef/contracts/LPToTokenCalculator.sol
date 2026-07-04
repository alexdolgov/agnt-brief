pragma solidity >=0.7.0 <0.9.0;
import '@uniswap/v2-core/contracts/interfaces/IUniswapV2Pair.sol';
import '@uniswap/v2-core/contracts/interfaces/IUniswapV2Factory.sol';
import '@uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol';

contract LPToTokenCalculator {
    address private constant UNISWAP_ROUTER_ADDRESS = 0x10ED43C718714eb63d5aA57B78B54704E256024E;
    IUniswapV2Router02 public uniswapRouter;

    constructor() public {
        uniswapRouter = IUniswapV2Router02(UNISWAP_ROUTER_ADDRESS);
    }

    function calculateTokensFromLPBusd(uint lpAmount) external view returns (uint tokenAAmount, uint tokenBAmount) {
        address pairAddress = IUniswapV2Factory(uniswapRouter.factory()).getPair(0x198271b868daE875bFea6e6E4045cDdA5d6B9829, 0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56);
        IUniswapV2Pair pair = IUniswapV2Pair(pairAddress);
        
        (uint112 reserve0, uint112 reserve1,) = pair.getReserves();
        uint totalSupply = pair.totalSupply();

        // Calculate token amounts
        tokenAAmount = (uint(reserve0) * lpAmount) / totalSupply;
        tokenBAmount = (uint(reserve1) * lpAmount) / totalSupply;
    }

    function calculateTokensFromLPBnb(uint lpAmount) external view returns (uint tokenAAmount, uint tokenBAmount) {
        address pairAddress = IUniswapV2Factory(uniswapRouter.factory()).getPair(0x198271b868daE875bFea6e6E4045cDdA5d6B9829, 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c);
        IUniswapV2Pair pair = IUniswapV2Pair(pairAddress);
        
        (uint112 reserve0, uint112 reserve1,) = pair.getReserves();
        uint totalSupply = pair.totalSupply();

        // Calculate token amounts
        tokenAAmount = (uint(reserve0) * lpAmount) / totalSupply;
        tokenBAmount = (uint(reserve1) * lpAmount) / totalSupply;
    }

}
