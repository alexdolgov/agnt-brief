//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./utils/IWETH.sol";
import "./utils/IBabyDogePair.sol";
import "./utils/IBabyDogeRouter.sol";

contract LpManager {
    struct LpData {
        address lpTokenAddress;
        address[] unwrapPath0;      // [] for WBNB, [token0, ..., WBNB] for anything else
        address[] unwrapPath1;      // [] for WBNB, [token0, ..., WBNB] for anything else
    }

    IBabyDogeRouter public immutable router;
    address internal immutable WETH;
    uint64 public minWbnbPerLp;         // minimum amount of WBNB should be received from unwrapping LP token
    uint32 public gasRefund = 300_000;  // amount of gas to refund

    event NewMinWbnbPerLp(uint256);
    event NewGasRefund(uint256);
    event ERC20Recover(address account, uint256 amount);
    event BnbRecover(address account, uint256 amount);

    error InvalidPath(uint256 lpTokenIndex);    // one of unwrap paths for LP token is invalid
    error ZeroLiquidity(address lpTokenAddress);

    /*
     * @param _router BabyDoge router address
     * @param _minWbnbPerLp Minimum amount of WBNB should be received from unwrapping LP token
     */
    constructor(
        IBabyDogeRouter _router,
        uint64 _minWbnbPerLp
    ) {
        minWbnbPerLp = _minWbnbPerLp;
        router = _router;
        address _WETH = _router.WETH();
        WETH = _WETH;
        IERC20(_WETH).approve(address(_router), type(uint256).max);
    }

    receive() external payable {}

    /*
     * @notice Swaps LP tokens to WBNB
     * @param lpData LP data: LP token address and paths to unwrap
     * @return gasUsedPerLp Amount of gas user for unwrapping lp token
     * @return amountOut Amount of WBNB contract has after unwrapping all lp tokens and paying for gas
     * @return gasCost Amount of WBNB that were paid for gas
     */
    function _swapToWbnb(
        LpData[] calldata lpData
    ) internal returns(
        uint256[] memory gasUsedPerLp,
        uint256 amountOut,
        uint256 gasCost
    ) {
        uint256 startGas = gasleft();
        uint256 initialWBNB = IERC20(WETH).balanceOf(address(this));
        gasUsedPerLp = new uint256[](lpData.length);

        // remove liquidity
        for (uint i = 0; i < lpData.length; i++) {
            (address tokenA, address tokenB, uint256 gas) = _removeLiquidity(lpData[i].lpTokenAddress);
            gasUsedPerLp[i] = gas;
            _checkPaths(lpData[i].unwrapPath0, lpData[i].unwrapPath1, tokenA, tokenB, i);
        }

        // swap tokens
        for (uint i = 0; i < lpData.length; i++) {
            uint256 gasBeforeSwap = gasleft();
            if(lpData[i].unwrapPath0.length > 0) {
                _swap(lpData[i].unwrapPath0);
            }
            if(lpData[i].unwrapPath1.length > 0) {
                _swap(lpData[i].unwrapPath1);
            }
            gasUsedPerLp[i] += (gasBeforeSwap - gasleft());
        }

        // Estimating gas spendings
        // 10_000 gas will be refunded for "freed" storage as each LP token balances is now 0
        // `gasRefund` gas for other contract calculations
        gasCost = (startGas - gasleft() - lpData.length * 10_000 + gasRefund) * tx.gasprice;
        uint256 wbnbBalance = IERC20(WETH).balanceOf(address(this));
        amountOut = wbnbBalance - gasCost;
        require(
            wbnbBalance - initialWBNB > gasCost
            && amountOut - initialWBNB > minWbnbPerLp * lpData.length,
            "Not enough WBNB received"
        );

        // Return gas spendings
        IWETH(WETH).withdraw(gasCost);
        (bool success,) = payable(msg.sender).call{value: gasCost}("");
        require(success, "Couldn't pay for gas");

        return (gasUsedPerLp, amountOut, gasCost);
    }


    /*
     * @notice Sets minimum WBNB to be received per LP token unwrap
     * @param _minWbnbPerLp Minimum WBNB to be received per LP token unwrap
     */
    function _setMinWbnbPerLp(uint64 _minWbnbPerLp) internal {
        require(minWbnbPerLp != _minWbnbPerLp, "Already set");
        minWbnbPerLp = _minWbnbPerLp;
        emit NewMinWbnbPerLp(_minWbnbPerLp);
    }


    /*
     * @notice Sets additional amount of gas to refund per unwrap
     * @param _gasRefund Additional amount of gas to refund per unwrap
     * @dev To use in case of increased gas cost
     */
    function _setGasRefund(uint32 _gasRefund) internal {
        require(_gasRefund != 0);
        require(gasRefund != _gasRefund, "Already set");
        gasRefund = _gasRefund;
        emit NewGasRefund(_gasRefund);
    }


    /*
     * @notice Removes liquidity from the pool
     * @param lpToken LP token address
     * @return tokenA Token0 of lpToken
     * @return tokenB Token1 of lpToken
     * @return gasUsed Amount of gas user for removing liquidity
     */
    function _removeLiquidity(address lpToken) private returns(
        address tokenA,
        address tokenB,
        uint256 gasUsed
    ) {
        gasUsed = gasleft();

        uint256 liquidity = IBabyDogePair(lpToken).balanceOf(address(this));
        if(liquidity == 0) {
            revert ZeroLiquidity(lpToken);
        }

        if(IERC20(lpToken).allowance(address(this), address(router)) < liquidity) {
            IERC20(lpToken).approve(address(router), type(uint256).max);
        }
        tokenA = IBabyDogePair(lpToken).token0();
        tokenB = IBabyDogePair(lpToken).token1();

        router.removeLiquidity(
            tokenA,
            tokenB,
            liquidity,
            0,
            0,
            address(this),
            block.timestamp + 1200
        );

        gasUsed -= gasleft();
    }


    /*
     * @notice Checks unwrap paths
     * @param unwrapPath0 Unwrap path for token0
     * @param unwrapPath1 Unwrap path for token1
     * @param tokenA Real token0 of the pair
     * @param tokenB Real token1 of the pair
     * @param index Index for reverts information
     */
    function _checkPaths(
        address[] calldata unwrapPath0,
        address[] calldata unwrapPath1,
        address tokenA,
        address tokenB,
        uint256 index
    ) private view {
        if (unwrapPath0.length == 0 && unwrapPath1.length == 0) {
            revert InvalidPath(index);
        }

        address token0 = unwrapPath0.length == 0 ? WETH : unwrapPath0[0];
        address token1 = unwrapPath1.length == 0 ? WETH : unwrapPath1[0];

        // check for incorrect first token in unwrap path
        if (!((token0 == tokenA && token1 == tokenB) || (token1 == tokenA && token0 == tokenB))) {
            revert InvalidPath(index);
        }

        // check for incorrect last token in unwrap path
        // last token must be WBNB
        if (
            (unwrapPath0.length > 0
            && unwrapPath0[unwrapPath0.length - 1] != WETH)
            ||
            (unwrapPath1.length > 0
            && unwrapPath1[unwrapPath1.length - 1] != WETH)
        ) {
            revert InvalidPath(index);
        }
    }


    /*
     * @notice Swaps tokens
     * @param path Swap path
     */
    function _swap(address[] calldata path) private {
        uint256 amountIn = IERC20(path[0]).balanceOf(address(this));

        if(amountIn == 0) {
            return;
        }

        if(IERC20(path[0]).allowance(address(this), address(router)) < amountIn) {
            IERC20(path[0]).approve(address(router), type(uint256).max);
        }

        router.swapExactTokensForTokensSupportingFeeOnTransferTokens(
            amountIn,
            0,
            path,
            address(this),
            block.timestamp + 1200
        );
    }

    /*
     * @notice Recovers ERC20 tokens
     * @param token ERC20 token address
     * @param account Receiver of tokens
     * @param amount Amount of tokens to recover
     */
    function _recoverERC20(address token, address account, uint256 amount) internal {
        IERC20(token).transfer(account, amount);

        emit ERC20Recover(account, amount);
    }

    /*
     * @notice Recovers BNB
     * @param account Receiver of BNB
     * @param amount Amount of BNB to recover
     */
    function _recoverBNB(address account, uint256 amount) internal {
        (bool success,) = payable(account).call{value: amount}("");
        require(success, "BNB recover failed");

        emit BnbRecover(account, amount);
    }
}
