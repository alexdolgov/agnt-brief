pragma solidity =0.5.16;

import "@openzeppelin/contracts/ownership/Ownable.sol";
import "./PoolToken.sol";
import "./interfaces/IZipRewards.sol";
import "./interfaces/IZipVaultToken.sol";
import "./interfaces/IOptiSwap.sol";
import "./interfaces/IRewarderHelper.sol";
import "./interfaces/IERC20.sol";
import "./interfaces/IUniswapV2Router01.sol";
import "./interfaces/IUniswapV2Pair.sol";
import "./libraries/SafeToken.sol";
import "./libraries/Math.sol";

interface OptiSwapPair {
    function swap(uint amount0Out, uint amount1Out, address to, bytes calldata data) external;
}

contract ZipVaultToken is IZipVaultToken, IUniswapV2Pair, PoolToken {
    using SafeToken for address;

    bool public constant isVaultToken = true;

    address public optiSwap;
    address public rewarderHelper;
    IUniswapV2Router01 public router;
    IZipRewards public masterChef;
    address public rewardsToken;
    address public WETH;
    address public token0;
    address public token1;
    uint256 public swapFeeFactor;
    uint256 public pid;
    uint256 public constant MIN_REINVEST_BOUNTY = 0.001e18;
    uint256 public constant MAX_REINVEST_BOUNTY = 0.01e18;
    uint256 public REINVEST_BOUNTY = MAX_REINVEST_BOUNTY;

    event ReinvestRewardToken(address indexed caller, address rewardToken, uint256 reward, uint256 bounty);
    event UpdateReinvestBounty(uint256 _newReinvestBounty);

    function _initialize(
        address _optiSwap,
        address _rewarderHelper,
        IUniswapV2Router01 _router,
        IZipRewards _masterChef,
        address _rewardsToken,
        uint256 _swapFeeFactor,
        uint256 _pid
    ) external {
        require(factory == address(0), "VaultToken: FACTORY_ALREADY_SET"); // sufficient check
        optiSwap = _optiSwap;
        rewarderHelper = _rewarderHelper;
        factory = msg.sender;
        _setName("Tarot Vault Token", "vTAROT");
        WETH = _router.WETH();
        router = _router;
        masterChef = _masterChef;
        swapFeeFactor = _swapFeeFactor;
        pid = _pid;
        underlying = masterChef.lpToken(_pid);
        token0 = IUniswapV2Pair(underlying).token0();
        token1 = IUniswapV2Pair(underlying).token1();
        rewardsToken = _rewardsToken;
        rewardsToken.safeApprove(address(router), uint256(-1));
        WETH.safeApprove(address(router), uint256(-1));
        underlying.safeApprove(address(masterChef), uint256(-1));
    }

    function updateReinvestBounty(uint256 _newReinvestBounty) external onlyFactoryOwner {
        require(_newReinvestBounty >= MIN_REINVEST_BOUNTY && _newReinvestBounty <= MAX_REINVEST_BOUNTY, "VaultToken: INVLD_REINVEST_BOUNTY");
        REINVEST_BOUNTY = _newReinvestBounty;

        emit UpdateReinvestBounty(_newReinvestBounty);
    }

    function getRewardTokenInfo()
        public
        view
        returns (
            address[] memory rewardTokens,
            uint256[] memory pendingAmounts,
            uint256[] memory rewardRates
        ) {
            address rewarder = masterChef.rewarder(pid);
            if (rewarder != address(0)) {
                return IRewarderHelper(rewarderHelper).getRewardTokenInfo(rewarder, address(this));
            }
        }

    function getRewardTokenInfoWithBalances()
        public
        view
        returns (
            address[] memory rewardTokens,
            uint256[] memory pendingAmounts,
            uint256[] memory rewardRates,
            uint256[] memory balances
        ) {
            address rewarder = masterChef.rewarder(pid);
            if (rewarder != address(0)) {
                (rewardTokens, pendingAmounts, rewardRates) = IRewarderHelper(rewarderHelper).getRewardTokenInfo(rewarder, address(this));
                balances = new uint256[](rewardTokens.length);
                for (uint256 i = 0; i < rewardTokens.length; i++) {
                    balances[i] = rewardTokens[i].myBalance();
                }
            }
        }

    /*** PoolToken Overrides ***/

    function _update() internal {
        (uint256 _totalBalance, ) = masterChef.userInfo(pid, address(this));
        totalBalance = _totalBalance;
        emit Sync(totalBalance);
    }

    // this low-level function should be called from another contract
    function mint(address minter)
        external
        nonReentrant
        update
        returns (uint256 mintTokens)
    {
        uint256 mintAmount = underlying.myBalance();
        // handle pools with deposit fees by checking balance before and after deposit
        (uint256 _totalBalanceBefore, ) = masterChef.userInfo(
            pid,
            address(this)
        );
        masterChef.depositShort(pid, uint128(mintAmount));
        (uint256 _totalBalanceAfter, ) = masterChef.userInfo(
            pid,
            address(this)
        );

        mintTokens = _totalBalanceAfter.sub(_totalBalanceBefore).mul(1e18).div(
            exchangeRate()
        );

        if (totalSupply == 0) {
            // permanently lock the first MINIMUM_LIQUIDITY tokens
            mintTokens = mintTokens.sub(MINIMUM_LIQUIDITY);
            _mint(address(0), MINIMUM_LIQUIDITY);
        }
        require(mintTokens > 0, "VaultToken: MINT_AMOUNT_ZERO");
        _mint(minter, mintTokens);
        emit Mint(msg.sender, minter, mintAmount, mintTokens);
    }

    // this low-level function should be called from another contract
    function redeem(address redeemer)
        external
        nonReentrant
        update
        returns (uint256 redeemAmount)
    {
        uint256 redeemTokens = balanceOf[address(this)];
        redeemAmount = redeemTokens.mul(exchangeRate()).div(1e18);

        require(redeemAmount > 0, "VaultToken: REDEEM_AMOUNT_ZERO");
        require(redeemAmount <= totalBalance, "VaultToken: INSUFFICIENT_CASH");
        _burn(address(this), redeemTokens);
        masterChef.withdrawShort(pid, uint128(redeemAmount));
        _safeTransfer(redeemer, redeemAmount);
        emit Redeem(msg.sender, redeemer, redeemAmount, redeemTokens);
    }

    /*** Reinvest ***/

    function _optimalDepositA(
        uint256 _amountA,
        uint256 _reserveA,
        uint256 _swapFeeFactor
    ) internal pure returns (uint256) {
        uint256 a = uint256(1000).add(_swapFeeFactor).mul(_reserveA);
        uint256 b = _amountA.mul(1000).mul(_reserveA).mul(4).mul(
            _swapFeeFactor
        );
        uint256 c = Math.sqrt(a.mul(a).add(b));
        uint256 d = uint256(2).mul(_swapFeeFactor);
        return c.sub(a).div(d);
    }

    function approveRouter(address token, uint256 amount) internal {
        if (IERC20(token).allowance(address(this), address(router)) >= amount)
            return;
        token.safeApprove(address(router), uint256(-1));
    }

    function swapExactTokensForTokens(
        address tokenIn,
        address tokenOut,
        uint256 amount
    ) internal {
        address[] memory path = new address[](2);
        path[0] = address(tokenIn);
        path[1] = address(tokenOut);
        approveRouter(tokenIn, amount);
        router.swapExactTokensForTokens(amount, 0, path, address(this), now);
    }

    function addLiquidity(
        address tokenA,
        address tokenB,
        uint256 amountA,
        uint256 amountB
    ) internal returns (uint256 liquidity) {
        approveRouter(tokenA, amountA);
        approveRouter(tokenB, amountB);
        (, , liquidity) = router.addLiquidity(
            tokenA,
            tokenB,
            amountA,
            amountB,
            0,
            0,
            address(this),
            now
        );
    }

    function swapTokensForBestAmountOut(
        IOptiSwap _optiSwap,
        address tokenIn,
        address tokenOut,
        uint256 amountIn
    ) internal returns (uint256 amountOut) {
        if (tokenIn == tokenOut) {
            return amountIn;
        }
        address pair;
        (pair, amountOut) = _optiSwap.getBestAmountOut(amountIn, tokenIn, tokenOut);
        require(pair != address(0), "NO_PAIR");
        tokenIn.safeTransfer(pair, amountIn);
        if (tokenIn < tokenOut) {
            OptiSwapPair(pair).swap(0, amountOut, address(this), new bytes(0));
        } else {
            OptiSwapPair(pair).swap(amountOut, 0, address(this), new bytes(0));
        }
    }

    function optiSwapExactTokensForTokens(
        address tokenIn,
        address tokenOut,
        uint256 amountIn
    ) internal returns (uint256 amountOut) {
        if (tokenIn == tokenOut) {
            return amountIn;
        }
        IOptiSwap _optiSwap = IOptiSwap(optiSwap);
        address nextHop = _optiSwap.getBridgeToken(tokenIn);
        if (nextHop == tokenOut) {
            return swapTokensForBestAmountOut(_optiSwap, tokenIn, tokenOut, amountIn);
        }
        address waypoint = _optiSwap.getBridgeToken(tokenOut);
        if (tokenIn == waypoint) {
            return swapTokensForBestAmountOut(_optiSwap, tokenIn, tokenOut, amountIn);
        }
        uint256 hopAmountOut;
        if (nextHop != tokenIn) {
            hopAmountOut = swapTokensForBestAmountOut(_optiSwap, tokenIn, nextHop, amountIn);
        } else {
            hopAmountOut = amountIn;
        }
        if (nextHop == waypoint) {
            return swapTokensForBestAmountOut(_optiSwap, nextHop, tokenOut, hopAmountOut);
        } else if (waypoint == tokenOut) {
            return optiSwapExactTokensForTokens(nextHop, tokenOut, hopAmountOut);
        } else {
            uint256 waypointAmountOut = optiSwapExactTokensForTokens(nextHop, waypoint, hopAmountOut);
            return swapTokensForBestAmountOut(_optiSwap, waypoint, tokenOut, waypointAmountOut);
        }
    }

    function reinvest() external nonReentrant update {
        require(msg.sender == tx.origin);
        // 1. Withdraw all the rewards.
        masterChef.harvestShort(pid);

        uint256 liquidity = reinvestOne(rewardsToken);
        (address[] memory rewardTokens, ,) = getRewardTokenInfo();
        for (uint256 i = 0; i < rewardTokens.length; i++) {
            liquidity += reinvestOne(rewardTokens[i]);
        }

        // 5. Stake the LP Tokens.
        masterChef.depositShort(pid, uint128(liquidity));
    }

    function reinvestOne(address _rewardToken) internal returns (uint256 liquidity) {
        uint256 reward = _rewardToken.myBalance();
        if (reward == 0) return 0;
        // 2. Send the reward bounty to the caller.
        uint256 bounty = reward.mul(REINVEST_BOUNTY) / 1e18;
        _rewardToken.safeTransfer(msg.sender, bounty);
        // 3. Convert all the remaining rewards to token0 or token1.
        address tokenA;
        address tokenB;
        if (token0 == _rewardToken || token1 == _rewardToken) {
            (tokenA, tokenB) = token0 == _rewardToken
                ? (token0, token1)
                : (token1, token0);
        } else {
            if (token1 == WETH) {
                (tokenA, tokenB) = (token1, token0);
            } else {
                (tokenA, tokenB) = (token0, token1);
            }
            optiSwapExactTokensForTokens(_rewardToken, tokenA, reward.sub(bounty));
        }
        // 4. Convert tokenA to LP Token underlyings.
        uint256 totalAmountA = tokenA.myBalance();
        assert(totalAmountA > 0);
        (uint256 r0, uint256 r1, ) = IUniswapV2Pair(underlying).getReserves();
        uint256 reserveA = tokenA == token0 ? r0 : r1;
        uint256 swapAmount = _optimalDepositA(
            totalAmountA,
            reserveA,
            swapFeeFactor
        );
        uint256 balanceBeforeB = tokenB.myBalance();
        swapExactTokensForTokens(tokenA, tokenB, swapAmount);
        uint256 balanceAfterB = tokenB.myBalance();
        uint256 deltaB = balanceAfterB.sub(balanceBeforeB);
        liquidity = addLiquidity(
            tokenA,
            tokenB,
            totalAmountA.sub(swapAmount),
            deltaB
        );
        emit ReinvestRewardToken(msg.sender, _rewardToken, reward, bounty);
    }

    /*** Mirrored From uniswapV2Pair ***/

    function getReserves()
        external
        view
        returns (
            uint112 reserve0,
            uint112 reserve1,
            uint32 blockTimestampLast
        )
    {
        (reserve0, reserve1, blockTimestampLast) = IUniswapV2Pair(underlying)
        .getReserves();
        // if no token has been minted yet mirror uniswap getReserves
        if (totalSupply == 0) return (reserve0, reserve1, blockTimestampLast);
        // else, return the underlying reserves of this contract
        uint256 _totalBalance = totalBalance;
        uint256 _totalSupply = IUniswapV2Pair(underlying).totalSupply();
        reserve0 = safe112(_totalBalance.mul(reserve0).div(_totalSupply));
        reserve1 = safe112(_totalBalance.mul(reserve1).div(_totalSupply));
        require(
            reserve0 > 100 && reserve1 > 100,
            "VaultToken: INSUFFICIENT_RESERVES"
        );
    }

    function price0CumulativeLast() external view returns (uint256) {
        return IUniswapV2Pair(underlying).price0CumulativeLast();
    }

    function price1CumulativeLast() external view returns (uint256) {
        return IUniswapV2Pair(underlying).price1CumulativeLast();
    }

    /*** Utilities ***/

    function safe112(uint256 n) internal pure returns (uint112) {
        require(n < 2**112, "VaultToken: SAFE112");
        return uint112(n);
    }

    /*** Modifiers ***/

    modifier onlyFactoryOwner() {
        require(Ownable(factory).owner() == msg.sender, "NOT_AUTHORIZED");
        _;
    }
}
