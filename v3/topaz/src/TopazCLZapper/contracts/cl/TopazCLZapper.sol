// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";

import { IWETH } from "../interfaces/IWETH.sol";
import { ISwapRouter } from "./interfaces/ISwapRouter.sol";
import { ITopazCLVault } from "./interfaces/ITopazCLVault.sol";
import { ITopazCLStrategy } from "./interfaces/ITopazCLStrategy.sol";
import { FullMath } from "./libraries/FullMath.sol";

/// @title TopazCLZapper
/// @notice A SINGLE generic zapper serving every Topaz CL vault — enter/exit a
///         concentrated-liquidity vault from a single pool token, native BNB, or
///         both tokens.
/// @dev Mirrors Beefy's "one generic router per chain" structure, but computes
///      the deposit ratio ON-CHAIN (the same `price()` + `balances()` math Beefy
///      runs off-chain), since Topaz has no off-chain zap-route API. Each vault is
///      registered once by the owner (sets approvals + whitelist). Every call:
///        1. pulls the input from `msg.sender`,
///        2. rebalances it to the vault's current token0:token1 value ratio with a
///           single in-pool v3 swap (minimizing leftover),
///        3. deposits, and returns BOTH any leftover dust AND the shares to the
///           receiver.
///      Guarded by the vault's `isCalm()` TWAP gate; never holds idle funds.
contract TopazCLZapper is ReentrancyGuard, Ownable {
    using SafeERC20 for IERC20;

    uint256 private constant PRECISION = 1e36;
    uint256 private constant BPS = 10_000;
    uint256 public constant MAX_SLIPPAGE = 1000; // 10%

    /// @notice Topaz v3 SwapRouter
    ISwapRouter public immutable swapRouter;

    /// @notice Wrapped native (WBNB)
    IWETH public immutable wbnb;

    /// @notice Slippage tolerance for the in-pool rebalancing swap (bps, default 1%)
    uint256 public slippageTolerance = 100;

    mapping(address => bool) public isVaultRegistered;

    struct VaultCtx {
        address vault;
        address token0;
        address token1;
        int24 tickSpacing;
        uint256 price; // token1 per token0, 1e36
    }

    event VaultRegistered(address indexed vault);
    event ZappedIn(address indexed vault, address indexed receiver, uint256 sharesOut);
    event ZappedOut(address indexed vault, address indexed receiver, uint256 sharesIn);
    event SlippageToleranceUpdated(uint256 newTolerance);

    error ZeroAmount();
    error ZeroAddress();
    error NotPoolToken();
    error NotCalm();
    error SlippageTooHigh();
    error InvalidSlippage();
    error VaultNotRegistered();
    error OnlyWBNB();

    constructor(address _swapRouter, address _wbnb, address _owner) Ownable(_owner) {
        if (_swapRouter == address(0) || _wbnb == address(0)) revert ZeroAddress();
        swapRouter = ISwapRouter(_swapRouter);
        wbnb = IWETH(_wbnb);
    }

    receive() external payable {
        if (msg.sender != address(wbnb)) revert OnlyWBNB();
    }

    // ============ Registration ============

    function registerVault(address vault) external onlyOwner {
        if (vault == address(0)) revert ZeroAddress();
        address t0 = ITopazCLVault(vault).token0();
        address t1 = ITopazCLVault(vault).token1();
        IERC20(t0).forceApprove(address(swapRouter), type(uint256).max);
        IERC20(t1).forceApprove(address(swapRouter), type(uint256).max);
        IERC20(t0).forceApprove(vault, type(uint256).max);
        IERC20(t1).forceApprove(vault, type(uint256).max);
        isVaultRegistered[vault] = true;
        emit VaultRegistered(vault);
    }

    modifier onlyRegistered(address vault) {
        if (!isVaultRegistered[vault]) revert VaultNotRegistered();
        _;
    }

    // ============ Zap in ============

    /// @notice Enter `vault` with a single pool token (`token0` or `token1`).
    function zapInToken(address vault, address token, uint256 amount, address receiver, uint256 minShares)
        external
        nonReentrant
        onlyRegistered(vault)
        returns (uint256 shares)
    {
        if (amount == 0) revert ZeroAmount();
        if (receiver == address(0)) revert ZeroAddress();
        VaultCtx memory c = _ctx(vault);
        if (token != c.token0 && token != c.token1) revert NotPoolToken();

        IERC20(token).safeTransferFrom(msg.sender, address(this), amount);
        shares = _rebalanceAndDeposit(c, receiver, minShares);
    }

    /// @notice Enter `vault` with both pool tokens (the zapper rebalances the mix).
    function zapInBoth(address vault, uint256 amount0, uint256 amount1, address receiver, uint256 minShares)
        external
        nonReentrant
        onlyRegistered(vault)
        returns (uint256 shares)
    {
        if (amount0 == 0 && amount1 == 0) revert ZeroAmount();
        if (receiver == address(0)) revert ZeroAddress();
        VaultCtx memory c = _ctx(vault);

        if (amount0 > 0) IERC20(c.token0).safeTransferFrom(msg.sender, address(this), amount0);
        if (amount1 > 0) IERC20(c.token1).safeTransferFrom(msg.sender, address(this), amount1);
        shares = _rebalanceAndDeposit(c, receiver, minShares);
    }

    /// @notice Enter `vault` with native BNB (WBNB must be one of the pool tokens).
    function zapInBNB(address vault, address receiver, uint256 minShares)
        external
        payable
        nonReentrant
        onlyRegistered(vault)
        returns (uint256 shares)
    {
        if (msg.value == 0) revert ZeroAmount();
        if (receiver == address(0)) revert ZeroAddress();
        VaultCtx memory c = _ctx(vault);
        if (address(wbnb) != c.token0 && address(wbnb) != c.token1) revert NotPoolToken();

        wbnb.deposit{ value: msg.value }();
        shares = _rebalanceAndDeposit(c, receiver, minShares);
    }

    // ============ Zap out ============

    /// @notice Exit `vault` to both pool tokens.
    function zapOutBoth(address vault, uint256 shares, address receiver, uint256 minAmount0, uint256 minAmount1)
        external
        nonReentrant
        onlyRegistered(vault)
        returns (uint256 amount0, uint256 amount1)
    {
        if (shares == 0) revert ZeroAmount();
        if (receiver == address(0)) revert ZeroAddress();
        VaultCtx memory c = _ctx(vault);

        IERC20(vault).safeTransferFrom(msg.sender, address(this), shares);
        ITopazCLVault(vault).withdraw(shares, minAmount0, minAmount1);

        amount0 = IERC20(c.token0).balanceOf(address(this));
        amount1 = IERC20(c.token1).balanceOf(address(this));
        if (amount0 > 0) IERC20(c.token0).safeTransfer(receiver, amount0);
        if (amount1 > 0) IERC20(c.token1).safeTransfer(receiver, amount1);
        emit ZappedOut(vault, receiver, shares);
    }

    /// @notice Exit `vault` to a single pool token.
    function zapOutToken(address vault, address token, uint256 shares, address receiver, uint256 minOut)
        external
        nonReentrant
        onlyRegistered(vault)
        returns (uint256 amountOut)
    {
        if (shares == 0) revert ZeroAmount();
        if (receiver == address(0)) revert ZeroAddress();
        VaultCtx memory c = _ctx(vault);
        if (token != c.token0 && token != c.token1) revert NotPoolToken();

        IERC20(vault).safeTransferFrom(msg.sender, address(this), shares);
        ITopazCLVault(vault).withdraw(shares, 0, 0);

        address other = token == c.token0 ? c.token1 : c.token0;
        uint256 otherBal = IERC20(other).balanceOf(address(this));
        if (otherBal > 0) _swapInPool(c, other, token, otherBal);

        amountOut = IERC20(token).balanceOf(address(this));
        if (amountOut < minOut) revert SlippageTooHigh();
        IERC20(token).safeTransfer(receiver, amountOut);
        emit ZappedOut(vault, receiver, shares);
    }

    /// @notice Exit `vault` to native BNB (WBNB must be one of the pool tokens).
    function zapOutBNB(address vault, uint256 shares, address receiver, uint256 minBNB)
        external
        nonReentrant
        onlyRegistered(vault)
        returns (uint256 bnbOut)
    {
        if (shares == 0) revert ZeroAmount();
        if (receiver == address(0)) revert ZeroAddress();
        VaultCtx memory c = _ctx(vault);
        if (address(wbnb) != c.token0 && address(wbnb) != c.token1) revert NotPoolToken();

        IERC20(vault).safeTransferFrom(msg.sender, address(this), shares);
        ITopazCLVault(vault).withdraw(shares, 0, 0);

        address other = address(wbnb) == c.token0 ? c.token1 : c.token0;
        uint256 otherBal = IERC20(other).balanceOf(address(this));
        if (otherBal > 0) _swapInPool(c, other, address(wbnb), otherBal);

        bnbOut = IERC20(address(wbnb)).balanceOf(address(this));
        if (bnbOut < minBNB) revert SlippageTooHigh();
        wbnb.withdraw(bnbOut);
        (bool ok, ) = receiver.call{ value: bnbOut }("");
        if (!ok) revert SlippageTooHigh();
        emit ZappedOut(vault, receiver, shares);
    }

    // ============ Internal ============

    function _ctx(address vault) private view returns (VaultCtx memory c) {
        c.vault = vault;
        c.token0 = ITopazCLVault(vault).token0();
        c.token1 = ITopazCLVault(vault).token1();
        address strat = ITopazCLVault(vault).strategy();
        c.price = ITopazCLStrategy(strat).price();
        c.tickSpacing = ITopazCLStrategy(strat).tickSpacing();
    }

    /// @dev Rebalance the zapper's token0/token1 holdings to the vault's current
    ///      value ratio with one in-pool swap, deposit, and return shares + dust.
    function _rebalanceAndDeposit(VaultCtx memory c, address receiver, uint256 minShares)
        private
        returns (uint256 shares)
    {
        if (!ITopazCLVault(c.vault).isCalm()) revert NotCalm();
        _balanceToVaultRatio(c);

        uint256 have0 = IERC20(c.token0).balanceOf(address(this));
        uint256 have1 = IERC20(c.token1).balanceOf(address(this));

        uint256 sharesBefore = IERC20(c.vault).balanceOf(address(this));
        ITopazCLVault(c.vault).deposit(have0, have1, minShares);
        shares = IERC20(c.vault).balanceOf(address(this)) - sharesBefore;

        // return leftover dust (both tokens) then the shares
        _sweep(c.token0, receiver);
        _sweep(c.token1, receiver);
        IERC20(c.vault).safeTransfer(receiver, shares);
        emit ZappedIn(c.vault, receiver, shares);
    }

    function _balanceToVaultRatio(VaultCtx memory c) private {
        uint256 have0 = IERC20(c.token0).balanceOf(address(this));
        uint256 have1 = IERC20(c.token1).balanceOf(address(this));
        uint256 p = c.price;

        uint256 valueHave = have1 + FullMath.mulDiv(have0, p, PRECISION); // token1 units
        if (valueHave == 0) return;

        (uint256 b0, uint256 b1) = ITopazCLVault(c.vault).balances();

        // Match the split the vault will actually CONSUME, not its current balance ratio.
        // The vault's deposit math drives it toward equal token0/token1 *value*, so a
        // single-token deposit of the scarcer leg is taken in full. Targeting the current
        // (imbalanced) ratio instead would swap the wrong way and get most of one leg refunded.
        uint256 targetValue0; // token1 units to allocate to token0
        if (b0 == 0 && b1 == 0) {
            targetValue0 = valueHave / 2;
        } else {
            uint256 vaultVal0 = FullMath.mulDiv(b0, p, PRECISION); // token0's value, in token1 units
            if (b1 >= vaultVal0) {
                // vault is token1-heavy → lean the deposit toward token0
                uint256 v = (valueHave + (b1 - vaultVal0)) / 2;
                targetValue0 = v > valueHave ? valueHave : v;
            } else {
                // vault is token0-heavy → lean the deposit toward token1
                uint256 diff = vaultVal0 - b1;
                targetValue0 = valueHave > diff ? (valueHave - diff) / 2 : 0;
            }
        }
        uint256 targetAmount0 = FullMath.mulDiv(targetValue0, PRECISION, p); // token0 units

        if (have0 > targetAmount0) {
            _swapInPool(c, c.token0, c.token1, have0 - targetAmount0);
        } else if (targetAmount0 > have0) {
            uint256 token1ToSwap = FullMath.mulDiv(targetAmount0 - have0, p, PRECISION);
            if (token1ToSwap > have1) token1ToSwap = have1;
            if (token1ToSwap > 0) _swapInPool(c, c.token1, c.token0, token1ToSwap);
        }
    }

    function _swapInPool(VaultCtx memory c, address from, address to, uint256 amountIn) private {
        if (amountIn == 0) return;
        uint256 expected = from == c.token0
            ? FullMath.mulDiv(amountIn, c.price, PRECISION)
            : FullMath.mulDiv(amountIn, PRECISION, c.price);
        uint256 minOut = (expected * (BPS - slippageTolerance)) / BPS;

        swapRouter.exactInputSingle(
            ISwapRouter.ExactInputSingleParams({
                tokenIn: from,
                tokenOut: to,
                tickSpacing: c.tickSpacing,
                recipient: address(this),
                deadline: block.timestamp,
                amountIn: amountIn,
                amountOutMinimum: minOut,
                sqrtPriceLimitX96: 0
            })
        );
    }

    function _sweep(address token, address to) private {
        uint256 bal = IERC20(token).balanceOf(address(this));
        if (bal > 0) IERC20(token).safeTransfer(to, bal);
    }

    // ============ Admin ============

    function setSlippageTolerance(uint256 _slippageTolerance) external onlyOwner {
        if (_slippageTolerance > MAX_SLIPPAGE) revert InvalidSlippage();
        slippageTolerance = _slippageTolerance;
        emit SlippageToleranceUpdated(_slippageTolerance);
    }

    function emergencyWithdraw(address token, uint256 amount) external onlyOwner {
        IERC20(token).safeTransfer(msg.sender, amount);
    }
}
