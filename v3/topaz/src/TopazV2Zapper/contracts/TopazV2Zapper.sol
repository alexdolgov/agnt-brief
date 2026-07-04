// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { IERC4626 } from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";

import { IRouter } from "./interfaces/IRouter.sol";
import { IPool } from "./interfaces/IPool.sol";
import { IWETH } from "./interfaces/IWETH.sol";
import { ITopazV2Vault } from "./interfaces/ITopazV2Vault.sol";
import { TopazV2ZapLib } from "./TopazV2ZapLib.sol";

/// @title TopazV2Zapper
/// @notice A SINGLE generic zapper serving every Topaz v2 vault. Converts the
///         cross-chain transport asset (USDT), native BNB, or a single pool
///         token into vault shares, and back out again.
/// @dev Each vault is registered once by the owner; registration reads the
///      vault's config and pre-sets the router/vault approvals, so per-call cost
///      matches a dedicated zapper. Every entrypoint takes a `vault` argument,
///      requires it to be registered, and reads the routing context from it via
///      {ITopazV2Vault}. All conversions flow through the pool's `base` leg
///      (USDT or WBNB) using {TopazV2ZapLib}.
///
///      The zapper never holds idle funds: each call pulls from `msg.sender`,
///      converts, and settles atomically — so it cannot be drained, and the
///      registry prevents callers from pointing it at an untrusted "vault".
contract TopazV2Zapper is ReentrancyGuard, Ownable {
    using SafeERC20 for IERC20;
    using TopazV2ZapLib for TopazV2ZapLib.Ctx;

    /// @notice Maximum settable slippage tolerance (10%)
    uint256 public constant MAX_SLIPPAGE = 1000;

    /// @notice The cross-chain transport asset (USDT, 18 decimals on BSC)
    IERC20 public immutable usdt;

    /// @notice Wrapped native (WBNB)
    IWETH public immutable wbnb;

    /// @notice Slippage tolerance applied to every leg (bps, default 1%)
    uint256 public slippageTolerance = 100;

    /// @notice Vaults the owner has registered and approved
    mapping(address => bool) public isVaultRegistered;

    // ============ Events ============

    event VaultRegistered(address indexed vault);
    event ZappedIn(address indexed vault, address indexed receiver, uint256 usdtIn, uint256 lp, uint256 sharesOut);
    event ZappedOut(address indexed vault, address indexed receiver, uint256 sharesIn, uint256 lp, uint256 usdtOut);
    event ZappedInBNB(address indexed vault, address indexed receiver, uint256 bnbIn, uint256 sharesOut);
    event ZappedOutBNB(address indexed vault, address indexed receiver, uint256 sharesIn, uint256 bnbOut);
    event ZappedInToken(address indexed vault, address indexed receiver, address token, uint256 amountIn, uint256 sharesOut);
    event ZappedOutToken(address indexed vault, address indexed receiver, address token, uint256 sharesIn, uint256 amtOut);
    event SlippageToleranceUpdated(uint256 newTolerance);
    event DustSwept(address indexed token, uint256 amount);

    // ============ Errors ============

    error ZeroAmount();
    error ZeroAddress();
    error SlippageTooHigh();
    error InvalidSlippage();
    error BNBTransferFailed();
    error OnlyWBNB();
    error VaultNotRegistered();
    error NotPoolToken();

    // ============ Constructor ============

    /// @param _usdt Transport asset (USDT) on BNB Chain
    /// @param _wbnb WBNB address
    /// @param _owner Owner (registers vaults, sets slippage)
    constructor(address _usdt, address _wbnb, address _owner) Ownable(_owner) {
        if (_usdt == address(0) || _wbnb == address(0)) revert ZeroAddress();
        usdt = IERC20(_usdt);
        wbnb = IWETH(_wbnb);
    }

    /// @notice Only accept native BNB from WBNB unwrapping.
    receive() external payable {
        if (msg.sender != address(wbnb)) revert OnlyWBNB();
    }

    // ============ Registration ============

    /// @notice Register a vault and pre-approve its router + LP. Idempotent.
    /// @dev Only the owner may register, so callers can never route through an
    ///      untrusted vault. Re-registering simply refreshes the approvals.
    function registerVault(address vault) external onlyOwner {
        if (vault == address(0)) revert ZeroAddress();

        address router = ITopazV2Vault(vault).router();
        address base = ITopazV2Vault(vault).base();
        address other = ITopazV2Vault(vault).other();
        address pool = ITopazV2Vault(vault).pool();

        IERC20(address(usdt)).forceApprove(router, type(uint256).max);
        IERC20(address(wbnb)).forceApprove(router, type(uint256).max);
        IERC20(base).forceApprove(router, type(uint256).max);
        IERC20(other).forceApprove(router, type(uint256).max);
        IERC20(pool).forceApprove(router, type(uint256).max);
        IERC20(pool).forceApprove(vault, type(uint256).max);

        isVaultRegistered[vault] = true;
        emit VaultRegistered(vault);
    }

    modifier onlyRegistered(address vault) {
        if (!isVaultRegistered[vault]) revert VaultNotRegistered();
        _;
    }

    // ============ Transport asset (USDT) ============

    /// @notice Zap USDT into `vault` and send shares to `receiver`.
    function zapInAsset(address vault, uint256 usdtAmount, address receiver, uint256 minShares)
        external
        nonReentrant
        onlyRegistered(vault)
        returns (uint256 shares)
    {
        if (usdtAmount == 0) revert ZeroAmount();
        if (receiver == address(0)) revert ZeroAddress();

        usdt.safeTransferFrom(msg.sender, address(this), usdtAmount);

        TopazV2ZapLib.Ctx memory c = _ctx(vault);
        uint256 baseAmount = _assetToBase(c, usdtAmount);
        uint256 lpTokens = c.zapTokenToLP(c.base, baseAmount);
        shares = IERC4626(vault).deposit(lpTokens, receiver);
        if (shares < minShares) revert SlippageTooHigh();

        emit ZappedIn(vault, receiver, usdtAmount, lpTokens, shares);
    }

    /// @notice Redeem shares of `vault` and return USDT to `receiver`.
    function zapOutAsset(address vault, uint256 shares, address receiver, uint256 minUsdt)
        external
        nonReentrant
        onlyRegistered(vault)
        returns (uint256 usdtAmount)
    {
        if (shares == 0) revert ZeroAmount();
        if (receiver == address(0)) revert ZeroAddress();

        IERC20(vault).safeTransferFrom(msg.sender, address(this), shares);

        TopazV2ZapLib.Ctx memory c = _ctx(vault);
        uint256 lpTokens = IERC4626(vault).redeem(shares, address(this), address(this));
        uint256 baseAmount = c.zapLPToToken(lpTokens, c.base);
        usdtAmount = _baseToAsset(c, baseAmount);
        if (usdtAmount < minUsdt) revert SlippageTooHigh();

        usdt.safeTransfer(receiver, usdtAmount);

        emit ZappedOut(vault, receiver, shares, lpTokens, usdtAmount);
    }

    // ============ Native BNB ============

    /// @notice Zap native BNB into `vault` and send shares to `receiver`.
    function zapInBNB(address vault, address receiver, uint256 minShares)
        external
        payable
        nonReentrant
        onlyRegistered(vault)
        returns (uint256 shares)
    {
        if (msg.value == 0) revert ZeroAmount();
        if (receiver == address(0)) revert ZeroAddress();

        wbnb.deposit{ value: msg.value }();

        TopazV2ZapLib.Ctx memory c = _ctx(vault);
        uint256 baseAmount = _wbnbToBase(c, msg.value);
        uint256 lpTokens = c.zapTokenToLP(c.base, baseAmount);
        shares = IERC4626(vault).deposit(lpTokens, receiver);
        if (shares < minShares) revert SlippageTooHigh();

        emit ZappedInBNB(vault, receiver, msg.value, shares);
    }

    /// @notice Redeem shares of `vault` and return native BNB to `receiver`.
    function zapOutBNB(address vault, uint256 shares, address receiver, uint256 minBNB)
        external
        nonReentrant
        onlyRegistered(vault)
        returns (uint256 bnbAmount)
    {
        if (shares == 0) revert ZeroAmount();
        if (receiver == address(0)) revert ZeroAddress();

        IERC20(vault).safeTransferFrom(msg.sender, address(this), shares);

        TopazV2ZapLib.Ctx memory c = _ctx(vault);
        uint256 lpTokens = IERC4626(vault).redeem(shares, address(this), address(this));
        uint256 baseAmount = c.zapLPToToken(lpTokens, c.base);
        bnbAmount = _baseToWbnb(c, baseAmount);

        wbnb.withdraw(bnbAmount);
        if (bnbAmount < minBNB) revert SlippageTooHigh();

        (bool success, ) = receiver.call{ value: bnbAmount }("");
        if (!success) revert BNBTransferFailed();

        emit ZappedOutBNB(vault, receiver, shares, bnbAmount);
    }

    // ============ Single pool token ============

    /// @notice Zap a single pool token (`base` or `other`) into `vault`.
    function zapInToken(address vault, address token, uint256 amount, address receiver, uint256 minShares)
        external
        nonReentrant
        onlyRegistered(vault)
        returns (uint256 shares)
    {
        if (amount == 0) revert ZeroAmount();
        if (receiver == address(0)) revert ZeroAddress();

        TopazV2ZapLib.Ctx memory c = _ctx(vault);
        if (token != c.base && token != c.other) revert NotPoolToken();

        IERC20(token).safeTransferFrom(msg.sender, address(this), amount);

        uint256 lpTokens = c.zapTokenToLP(token, amount);
        shares = IERC4626(vault).deposit(lpTokens, receiver);
        if (shares < minShares) revert SlippageTooHigh();

        emit ZappedInToken(vault, receiver, token, amount, shares);
    }

    /// @notice Redeem shares of `vault` and return a single pool token.
    function zapOutToken(address vault, address token, uint256 shares, address receiver, uint256 minOut)
        external
        nonReentrant
        onlyRegistered(vault)
        returns (uint256 amountOut)
    {
        if (shares == 0) revert ZeroAmount();
        if (receiver == address(0)) revert ZeroAddress();

        TopazV2ZapLib.Ctx memory c = _ctx(vault);
        if (token != c.base && token != c.other) revert NotPoolToken();

        IERC20(vault).safeTransferFrom(msg.sender, address(this), shares);

        uint256 lpTokens = IERC4626(vault).redeem(shares, address(this), address(this));
        amountOut = c.zapLPToToken(lpTokens, token);
        if (amountOut < minOut) revert SlippageTooHigh();

        IERC20(token).safeTransfer(receiver, amountOut);

        emit ZappedOutToken(vault, receiver, token, shares, amountOut);
    }

    // ============ Internal ============

    /// @dev Build the routing context for `vault` from its public config.
    function _ctx(address vault) internal view returns (TopazV2ZapLib.Ctx memory c) {
        c = TopazV2ZapLib.Ctx({
            router: IRouter(ITopazV2Vault(vault).router()),
            poolFactory: ITopazV2Vault(vault).poolFactory(),
            pool: IPool(ITopazV2Vault(vault).pool()),
            base: ITopazV2Vault(vault).base(),
            other: ITopazV2Vault(vault).other(),
            stable: ITopazV2Vault(vault).stable(),
            slippageBps: slippageTolerance
        });
    }

    /// @dev USDT -> base (no-op when base is USDT; else USDT -> WBNB).
    function _assetToBase(TopazV2ZapLib.Ctx memory c, uint256 usdtAmount) internal returns (uint256) {
        if (c.base == address(usdt)) return usdtAmount;
        return c.swapVolatile(address(usdt), c.base, usdtAmount);
    }

    /// @dev base -> USDT (no-op when base is USDT).
    function _baseToAsset(TopazV2ZapLib.Ctx memory c, uint256 baseAmount) internal returns (uint256) {
        if (c.base == address(usdt)) return baseAmount;
        return c.swapVolatile(c.base, address(usdt), baseAmount);
    }

    /// @dev WBNB -> base (no-op when base is WBNB).
    function _wbnbToBase(TopazV2ZapLib.Ctx memory c, uint256 wbnbAmount) internal returns (uint256) {
        if (c.base == address(wbnb)) return wbnbAmount;
        return c.swapVolatile(address(wbnb), c.base, wbnbAmount);
    }

    /// @dev base -> WBNB (no-op when base is WBNB).
    function _baseToWbnb(TopazV2ZapLib.Ctx memory c, uint256 baseAmount) internal returns (uint256) {
        if (c.base == address(wbnb)) return baseAmount;
        return c.swapVolatile(c.base, address(wbnb), baseAmount);
    }

    // ============ Admin ============

    /// @notice Update the swap slippage tolerance (max 1000 = 10%)
    function setSlippageTolerance(uint256 _slippageTolerance) external onlyOwner {
        if (_slippageTolerance > MAX_SLIPPAGE) revert InvalidSlippage();
        slippageTolerance = _slippageTolerance;
        emit SlippageToleranceUpdated(_slippageTolerance);
    }

    /// @notice Collect accumulated zap-in dust (or any stray token) to the owner.
    /// @dev Single-asset zaps leave a small base/other remainder in the zapper by
    ///      design — sweeping it to the share receiver would strand it in a
    ///      cross-chain composer, so the protocol collects it here instead. The
    ///      zapper holds no user funds between transactions (every entrypoint is
    ///      atomic), so only dust accrues.
    function sweepDust(address _token, uint256 _amount) external onlyOwner {
        IERC20(_token).safeTransfer(msg.sender, _amount);
        emit DustSwept(_token, _amount);
    }
}
