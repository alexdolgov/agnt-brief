// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

import "@openzeppelin/contracts/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "../../interfaces/IStrategy.sol";
import "../../interfaces/IUniswapV2Pair.sol";
import "../../interfaces/IUniswapV2Router.sol";
import "../../interfaces/IWBNB.sol";
import "../StrategyLibrary.sol";
import "../StrategyBase.sol";
import "./Share.sol";

// Strategy main contract
contract StrategyIronV2Chef is StrategyBase {
    using SafeERC20 for IERC20;

    uint256 public override wantLockedTotal;
    IIronChef public masterChef;
    uint256 public poolId;
    address public token0;
    address public token1;
    address public earnedToken;
    address public swapRouter;

    address[] public earnedToToken0Path;
    address[] public earnedToToken1Path;
    address[] public token0ToEarnedPath;
    address[] public token1ToEarnedPath;

    uint256 public slippageFactor;
    uint256 public swapTimeout;

    // hardcoded when deploy
    constructor(
        address vaultMaster,
        address _swapRouter,
        IIronChef _masterChef,
        uint256 _poolId
    ) StrategyBase() {
        owner = vaultMaster;
        swapRouter = _swapRouter;
        masterChef = _masterChef;
        poolId = _poolId;
        wantAddress = _masterChef.lpToken(poolId);
        earnedToken = _masterChef.reward();
        token0 = IUniswapV2Pair(address(wantAddress)).token0();
        token1 = IUniswapV2Pair(address(wantAddress)).token1();
        token0ToEarnedPath = [token0, earnedToken];
        token1ToEarnedPath = [token1, earnedToken];
        earnedToToken0Path = [earnedToken, token0];
        earnedToToken1Path = [earnedToken, token1];
    }

    // Main want token compounding function
    function earn() external override canHarvest {
        // Harvest farm tokens
        _unfarm(0);

        if (StrategyLibrary.isBNB(earnedToken)) {
            StrategyLibrary.wrapBNB();
        }

        // Converts farm tokens into want tokens
        uint256 earnedAmt = IERC20(earnedToken).balanceOf(address(this));

        IERC20(earnedToken).safeApprove(swapRouter, 0);
        IERC20(earnedToken).safeIncreaseAllowance(swapRouter, earnedAmt);

        if (earnedToken != token0) {
            // Swap half earned to token0
            StrategyLibrary.safeSwap(
                swapRouter,
                earnedAmt / 2,
                slippageFactor,
                earnedToToken0Path,
                address(this),
                block.timestamp + swapTimeout
            );
        }

        if (earnedToken != token1) {
            // Swap half earned to token1
            StrategyLibrary.safeSwap(
                swapRouter,
                earnedAmt / 2,
                slippageFactor,
                earnedToToken1Path,
                address(this),
                block.timestamp + swapTimeout
            );
        }

        // Get want tokens, ie. add liquidity
        uint256 token0Amt = IERC20(token0).balanceOf(address(this));
        uint256 token1Amt = IERC20(token1).balanceOf(address(this));
        if (token0Amt > 0 && token1Amt > 0) {
            IERC20(token0).safeIncreaseAllowance(swapRouter, token0Amt);
            IERC20(token1).safeIncreaseAllowance(swapRouter, token1Amt);
            IUniswapV2Router(swapRouter).addLiquidity(
                token0,
                token1,
                token0Amt,
                token1Amt,
                0,
                0,
                address(this),
                block.timestamp + swapTimeout
            );
        }

        lastEarnBlock = block.number;

        _farm();
    }

    // Transfer want tokens autoFarm -> strategy
    function deposit(uint256 _wantAmt) public virtual override nonReentrant canDeposit returns (uint256) {
        IERC20(wantAddress).safeTransferFrom(address(msg.sender), address(this), _wantAmt);
        _farm();
        return _wantAmt;
    }

    // Transfer want tokens strategy -> autoFarm
    function withdraw(uint256 _wantAmt) public virtual override onlyOwner nonReentrant returns (uint256) {
        require(_wantAmt > 0, "_wantAmt <= 0");

        _unfarm(_wantAmt);

        uint256 wantBalance = IERC20(wantAddress).balanceOf(address(this));
        if (_wantAmt > wantBalance) {
            _wantAmt = wantBalance;
        }

        if (wantLockedTotal < _wantAmt) {
            _wantAmt = wantLockedTotal;
        }

        wantLockedTotal -= _wantAmt;

        IERC20(wantAddress).safeTransfer(msg.sender, _wantAmt);

        return _wantAmt;
    }

    function inCaseTokensGetStuck(
        address _token,
        uint256 _amount,
        address _to
    ) public virtual override onlyOwner {
        IERC20(_token).safeTransfer(_to, _amount);
    }

    function convertDustToEarned() public virtual onlyOwner {
        // Converts dust tokens into earned tokens, which will be reinvested on the next earn().

        // Converts token0 dust (if any) to earned tokens
        uint256 token0Amt = IERC20(token0).balanceOf(address(this));
        if (token0 != earnedToken && token0Amt > 0) {
            IERC20(token0).safeIncreaseAllowance(swapRouter, token0Amt);

            // Swap all dust tokens to earned tokens
            StrategyLibrary.safeSwap(
                swapRouter,
                token0Amt,
                slippageFactor,
                token0ToEarnedPath,
                address(this),
                block.timestamp + swapTimeout
            );
        }

        // Converts token1 dust (if any) to earned tokens
        uint256 token1Amt = IERC20(token1).balanceOf(address(this));
        if (token1 != earnedToken && token1Amt > 0) {
            IERC20(token1).safeIncreaseAllowance(swapRouter, token1Amt);

            // Swap all dust tokens to earned tokens
            StrategyLibrary.safeSwap(
                swapRouter,
                token1Amt,
                slippageFactor,
                token1ToEarnedPath,
                address(this),
                block.timestamp + swapTimeout
            );
        }
    }

    function pendingReward() external view override returns (uint256) {
        return masterChef.pendingReward(poolId, address(this));
    }

    // ============= internal function ================

    function _farm() internal {
        uint256 wantAmt = IERC20(wantAddress).balanceOf(address(this));
        wantLockedTotal += wantAmt;
        IERC20(wantAddress).safeIncreaseAllowance(address(masterChef), wantAmt);
        masterChef.deposit(poolId, IERC20(wantAddress).balanceOf(address(this)), address(this));
    }

    function _unfarm(uint256 _wantAmt) internal virtual {
        masterChef.withdraw(poolId, _wantAmt, address(this));
    }
}
