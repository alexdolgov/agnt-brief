pragma solidity 0.7.6;

import "IERC20.sol";
import "SafeERC20.sol";

interface IStableSwap {
    function exchange(int128 i, int128 j, uint dx, uint min_dy) external;
    function coins(uint i) external returns (IERC20);
    function base_pool() external returns (IStableSwap);
    function remove_liquidity_one_coin(uint256 amount, int128 i, uint256 min_amount) external;
}

interface IMultiFeeDistribution {
    function notifyRewardAmount(IERC20 rewardsToken, uint256 reward) external;
}

interface IPancakeRouter {
    function swapExactTokensForTokens(
        uint amountIn,
        uint amountOutMin,
        IERC20[] calldata path,
        address to,
        uint deadline
    ) external returns (uint[] memory amounts);
}

interface WBNB {
    function deposit() external payable;
}


contract FeeConverter {
    using SafeERC20 for IERC20;

    address public feeDistributor;

    function setFeeDistributor(address distributor) external {
        require (feeDistributor == address(0));
        feeDistributor = distributor;
    }

    function convertFees(uint i, uint j) external {
        IERC20 inputCoin = IStableSwap(msg.sender).coins(i);
        IERC20 outputCoin = IStableSwap(msg.sender).coins(j);

        uint256 balance = inputCoin.balanceOf(address(this));
        inputCoin.safeApprove(msg.sender, balance);
        IStableSwap(msg.sender).exchange(int128(i), int128(j), balance, 0);
    }

    function notify(IERC20 coin) external {
        uint256 balance = coin.balanceOf(address(this));
        coin.safeApprove(feeDistributor, balance);
        IMultiFeeDistribution(feeDistributor).notifyRewardAmount(coin, balance);
    }

}


contract MetapoolFeeConverter {
    using SafeERC20 for IERC20;

    address public feeDistributor;

    function setFeeDistributor(address distributor) external {
        require (feeDistributor == address(0));
        feeDistributor = distributor;
    }

    function convertFees() external {
        IERC20 inputCoin = IStableSwap(msg.sender).coins(0);
        IERC20 outputCoin = IStableSwap(msg.sender).coins(1);

        uint256 balance = inputCoin.balanceOf(address(this));
        inputCoin.safeApprove(msg.sender, balance);
        IStableSwap(msg.sender).exchange(0, 1, balance, 0);
        balance = outputCoin.balanceOf(address(this));

        IStableSwap basePool = IStableSwap(msg.sender).base_pool();
        outputCoin = basePool.coins(0);

        basePool.remove_liquidity_one_coin(balance, 0, 0);
        balance = outputCoin.balanceOf(address(this));
        outputCoin.approve(feeDistributor, balance);
        IMultiFeeDistribution(feeDistributor).notifyRewardAmount(outputCoin, balance);
    }

}


contract PancakeFeeConverter {
    using SafeERC20 for IERC20;

    address public feeDistributor;
    address public constant wBNB = 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c;
    address public constant router = 0x10ED43C718714eb63d5aA57B78B54704E256024E;
    IERC20 public constant BUSD = IERC20(0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56);

    IERC20[] tokenRouterPath = [
        IERC20(0),
        IERC20(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c),  // BNB
        IERC20(0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56)   // BUSD
    ];

    IERC20[] bnbRouterPath = [
        IERC20(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c),  // BNB
        IERC20(0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56)   // BUSD
    ];

    receive () external payable {}

    function setFeeDistributor(address distributor) external {
        require (feeDistributor == address(0));
        feeDistributor = distributor;
    }

    function convertFees(uint i, uint j) external {
        IERC20 inputCoin = IStableSwap(msg.sender).coins(i);
        IERC20 outputCoin = IStableSwap(msg.sender).coins(j);

        uint256 balance = inputCoin.balanceOf(address(this));
        inputCoin.safeApprove(msg.sender, balance);
        IStableSwap(msg.sender).exchange(int128(i), int128(j), balance, 0);
    }

    function notify(IERC20 coin) public {
        IERC20[] memory path;
        uint256 balance;

        if (address(coin) == 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE) {
            balance = address(this).balance;
            WBNB(wBNB).deposit{value: balance }();
            path = bnbRouterPath;
            IERC20(wBNB).safeApprove(router, balance);
        } else {
            uint256 balance = coin.balanceOf(address(this));
            IERC20[] memory path = tokenRouterPath;
            path[0] = coin;
            coin.safeApprove(router, balance);
        }

        IPancakeRouter(router).swapExactTokensForTokens(balance, 0, path, address(this), block.timestamp);
        balance = BUSD.balanceOf(address(this));
        BUSD.safeApprove(feeDistributor, balance);
        IMultiFeeDistribution(feeDistributor).notifyRewardAmount(BUSD, balance);
    }
}