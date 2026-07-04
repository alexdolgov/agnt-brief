//SPDX-License-Identifier: MIT

/**
 *⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
 *⠀⠀⠀⠀⠈⢻⣿⠛⠻⢷⣄⠀⠀ ⣴⡟⠛⠛⣷⠀ ⠘⣿⡿⠛⠛⢿⡇⠀⠀⠀⠀
 *⠀⠀⠀⠀⠀⢸⣿⠀⠀ ⠈⣿⡄⠀⠿⣧⣄⡀ ⠉⠀⠀ ⣿⣧⣀⣀⡀⠀⠀⠀⠀⠀
 *⠀⠀⠀⠀⠀⢸⣿⠀⠀ ⢀⣿⠃ ⣀ ⠈⠉⠻⣷⡄⠀ ⣿⡟⠉⠉⠁⠀⠀⠀⠀⠀
 *⠀⠀⠀⠀⢠⣼⣿⣤⣴⠿⠋⠀ ⠀⢿⣦⣤⣴⡿⠁ ⢠⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
 *
 *      - Defining Successful Future -
 *
 */
 
 pragma solidity ^0.8.28;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

interface IConvexRewards {
    function balanceOf(address account) external view returns (uint256);
    function earned(address account) external view returns (uint256);
}

interface IConvexMinter {
    function totalCliffs() external view returns (uint256);
    function reductionPerCliff() external view returns (uint256);
    function totalSupply() external view returns (uint256);
}

interface IUniswapRouter {
    function getAmountsOut(uint256 amountIn, address[] calldata path) external view returns (uint256[] memory amounts);
}

contract DSF_CVXCRVHoldingsMIM3crv is Ownable {
    address public strategyAddress;
    address public cvxRewards;
    address public cvxAddress;
    address public crvAddress;
    address public routerAddress;
    address[] public cvxToUsdtPath;
    address[] public crvToUsdtPath;

    IConvexRewards public cvxRewardsContract;
    IConvexMinter public cvx;
    IERC20Metadata public crv;
    IUniswapRouter public router;

    constructor(
        address _strategyAddress,
        address _cvxRewards,
        address _cvxAddress,
        address _crvAddress,
        address _routerAddress,
        address[] memory _cvxToUsdtPath,
        address[] memory _crvToUsdtPath
    ) Ownable(msg.sender) {
        strategyAddress = _strategyAddress;
        cvxRewards = _cvxRewards;
        cvxAddress = _cvxAddress;
        crvAddress = _crvAddress;
        routerAddress = _routerAddress;
        cvxToUsdtPath = _cvxToUsdtPath;
        crvToUsdtPath = _crvToUsdtPath;

        cvxRewardsContract = IConvexRewards(cvxRewards);
        cvx = IConvexMinter(cvxAddress);
        crv = IERC20Metadata(crvAddress);
        router = IUniswapRouter(routerAddress);
    }

    function getCVXCRVHoldings() external view returns (uint256 amountIn_cvx, uint256 amountIn_crv, uint256 cvxEarningsUSDT, uint256 crvEarningsUSDT) {
        uint256 crvEarned = cvxRewardsContract.earned(strategyAddress);

        uint256 cvxTotalCliffs = cvx.totalCliffs();
        uint256 cvxRemainCliffs = cvxTotalCliffs - (cvx.totalSupply() / cvx.reductionPerCliff());

        amountIn_cvx = (crvEarned * cvxRemainCliffs) / cvxTotalCliffs + IERC20Metadata(cvxAddress).balanceOf(strategyAddress);
        amountIn_crv = crvEarned + crv.balanceOf(strategyAddress);

        cvxEarningsUSDT = getTokenPrice(amountIn_cvx, cvxToUsdtPath);
        crvEarningsUSDT = getTokenPrice(amountIn_crv, crvToUsdtPath);
    }

    function getTokenPrice(uint256 amountIn, address[] memory path) internal view returns (uint256) {
        if (amountIn == 0) return 0;
        uint256[] memory amounts = router.getAmountsOut(amountIn, path);
        return amounts[amounts.length - 1];
    }
}