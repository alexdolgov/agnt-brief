// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import "./strategies/IStrategy.sol";
import {IVault} from "./IVault.sol";

/**
 * @title Vault — ERC4626 Tokenized Vault
 *
 * ─── Attack Protection (inspired by Morpho Vault V2) ────────────────────────
 *
 *   Virtual shares via _decimalsOffset():
 *     virtualShares = 10^(18 - assetDecimals), virtualAssets = 1
 *     Makes inflation attacks economically infeasible.
 *
 *   Explicit _totalTrackedAssets:
 *     Independent of balanceOf(vault) — donations do not affect share price.
 *
 * ─── Shares Model (ERC4626) ──────────────────────────────────────────────────
 *
 *   deposit(assets, receiver)           → mint shares proportional to assets deposited
 *   mint(shares, receiver)              → deposit exactly enough assets to receive shares
 *   redeem(shares, receiver, owner)     → burn shares, receiver gets net assets (after fee)
 *   withdraw(assets, receiver, owner)   → receiver gets exactly `assets` (NET); gross = assets + fee
 *
 *   withdraw/redeem apply a withdrawal fee: the fee is deducted from gross assets
 *   and transferred to feeRecipient. The receiver always gets the net amount.
 *
 *   maxWithdraw returns the max NET amount passable to withdraw().
 *   maxRedeem returns the max shares passable to redeem().
 *   Both are limited by idleAssets() when funds are deployed to strategies.
 *
 * ─── Strategy Management (owner / keeper) ───────────────────────────────────
 *
 *   addStrategy(strategy)              — registers an IStrategy contract               [owner]
 *   removeStrategy(strategy)           — unregisters a strategy (must have 0 funds)    [owner]
 *   allocate(strategy, amount)         — transfers idle tokens to strategy             [keeper|owner]
 *   deallocate(strategy, amount)       — pulls tokens back from strategy               [keeper|owner]
 *   deallocateAllAvailable(strategy)   — pulls all available tokens back from strategy [keeper|owner]
 *   harvest(strategy)                  — reads totalTrackedAssets(), accrues fees      [keeper|owner]
 *
 * ─── Keeper ──────────────────────────────────────────────────────────────────
 *
 *   Keeper is a trusted operator authorized to call allocate(), deallocate(),
 *   deallocateAllAvailable(), and harvest() without full owner rights.
 *   Defaults to the deployer. Transferable by the owner via setKeeper().
 *
 * ─── Fees ─────────────────────────────────────────────────────────────────────
 *
 *   performanceFeeBps  — % of profit above HWM on harvest() (mints shares to feeRecipient)
 *   managementFeeBps   — annual % of AUM, accrued lazily before deposit/mint/withdraw/redeem/harvest
 *   withdrawalFeeBps   — % of gross withdrawal amount; fee goes to feeRecipient as tokens
 *   feeRecipient       — address that receives all fees
 *
 * ─── Invariant ───────────────────────────────────────────────────────────────
 *
 *   _totalTrackedAssets = idleAssets() + deployedValue()
 */
contract Vault is IVault, ERC4626, Ownable, ReentrancyGuard {
    using Math for uint256;
    using SafeERC20 for IERC20;

    // ─── Constants ────────────────────────────────────────────────────────

    /// @dev Basis points denominator: 10000 = 100%, 100 = 1%, 1 = 0.01%
    uint256 public constant BPS_DENOMINATOR = 10000;

    uint256 public constant MAX_PERFORMANCE_FEE_BPS = 5000; // 50%
    uint256 public constant MAX_MANAGEMENT_FEE_BPS  = 500;  // 5%
    uint256 public constant MAX_WITHDRAWAL_FEE_BPS  = 200;  // 2%

    // ─── Immutables ──────────────────────────────────────────────────────

    uint8 private immutable _offset;
    uint8 private immutable _underlyingAssetDecimals;

    // ─── State ───────────────────────────────────────────────────────────

    /// @dev Accounting value of all assets (idle + deployed). Independent of balanceOf.
    uint256 private _totalTrackedAssets;

    uint256 public minDepositAmount;

    bool public depositsPaused;
    bool public withdrawsPaused;

    // ─── Fees ────────────────────────────────────────────────────────────

    /// @notice Performance fee in basis points. Accrued on harvest().
    uint256 public performanceFeeBps;

    /// @notice Annual management fee in basis points. Accrued on every operation.
    uint256 public managementFeeBps;

    /// @notice Withdrawal fee in basis points. Accrued on withdraw/redeem.
    uint256 public withdrawalFeeBps;

    /// @notice Address that receives all fees.
    address public feeRecipient;

    /// @dev Timestamp of the last management fee accrual.
    uint256 public lastManagementFeeAccrual;

    /// @dev Timestamp of the last performance fee accrual.
    uint256 public lastPerformanceFeeAccrual;

    /// @notice Minimum interval between performance fee accruals (in days).
    ///         0 = accrues on every harvest() call (no time restriction).
    uint256 public performanceFeePeriod;

    /// @dev NAV per share (in asset units, scaled to 10^vaultDecimals) at the time of the last
    ///      performance fee accrual. High water mark: fee is only charged when current NAV exceeds this.
    uint256 public performanceFeeHighWaterMark;

    /// @notice Minimum totalAssets (in asset units) below which the high water mark is reset
    ///         to its initial value. 0 = feature disabled.
    uint256 public minAssetsForPerformanceFee;

    // ─── Strategies ──────────────────────────────────────────────────────

    /// @dev Set of registered strategy addresses.
    mapping(address => bool) public isStrategy;

    /// @dev Amount of asset tokens currently allocated to each strategy (vault's view).
    ///      Updated on allocate/deallocate/harvest.
    mapping(address => uint256) public strategyDeployedValue;

    /// @dev Ordered list of registered strategy addresses (for enumeration in view functions).
    address[] private _strategyList;

    /// @notice Maximum age of strategy.lastReconciledAt() during harvest, in seconds.
    ///         0 = no staleness check. Used for off-chain/cross-chain strategies.
    uint256 public harvestStalenessWindow;

    /// @notice Maximum allowed loss per harvest in basis points.
    ///         0 = no loss limit. E.g. 500 = max 5% loss relative to previous strategy value.
    uint256 public harvestMaxLossBps;

    // ─── Keeper ──────────────────────────────────────────────────────────

    /// @notice Address authorized to call harvest(), allocate(), and deallocate().
    ///         Defaults to the deployer (owner). Transferable by the owner.
    address public keeper;

    // ─── Events ──────────────────────────────────────────────────────────

    event MinDepositAmountUpdated(uint256 oldValue, uint256 newValue);
    event DepositsPaused();
    event DepositsResumed();
    event WithdrawsPaused();
    event WithdrawsResumed();

    event PerformanceFeeCharged(address indexed recipient, uint256 feeAssets, uint256 feeShares, uint256 navPerShare, uint256 highWaterMark, uint256 grossProfit);
    event ManagementFeeCharged(address indexed recipient, uint256 feeAssets, uint256 feeShares, uint256 elapsed, uint256 totalAssetsAfter, uint256 totalSupplyAfter);
    event WithdrawalFeeCharged(address indexed recipient, uint256 feeAssets, uint256 feeShares);
    event FeeRecipientUpdated(address indexed oldRecipient, address indexed newRecipient);
    event PerformanceFeeUpdated(uint256 oldBps, uint256 newBps);
    event PerformanceFeePeriodUpdated(uint256 oldDays, uint256 newDays);
    event PerformanceFeeResetThresholdUpdated(uint256 oldValue, uint256 newValue);
    event PerformanceFeeHighWaterMarkReset(uint256 oldHwm, uint256 newHwm);
    event PerformanceFeeHighWaterMarkUpdated(uint256 oldHwm, uint256 newHwm);
    event ManagementFeeUpdated(uint256 oldBps, uint256 newBps);
    event WithdrawalFeeUpdated(uint256 oldBps, uint256 newBps);
    event TokenRescued(address indexed token, address indexed to, uint256 amount);

    event StrategyAdded(address indexed strategy);
    event StrategyRemoved(address indexed strategy);
    event Allocated(address indexed strategy, uint256 amount);
    event Deallocated(address indexed strategy, uint256 amount);
    event Harvested(address indexed strategy, uint256 oldValue, uint256 newValue, uint256 totalAssets, uint256 totalSupply, uint256 navPerShare);
    event NavSnapshot(uint256 totalAssets, uint256 totalSupply, uint256 navPerShare, uint256 timestamp);

    event KeeperUpdated(address indexed oldKeeper, address indexed newKeeper);
    event HarvestMaxLossBpsUpdated(uint256 oldBps, uint256 newBps);

    // ─── Modifiers ───────────────────────────────────────────────────────

    modifier depositAvailable() {
        require(!depositsPaused, "Deposits are paused");
        _;
    }

    modifier withdrawalAvailable() {
        require(!withdrawsPaused, "Withdrawals are paused");
        _;
    }

    modifier onlyOwnerOrKeeper() {
        require(msg.sender == keeper || msg.sender == owner(), "Not owner or keeper");
        _;
    }

    // ─── Constructor ─────────────────────────────────────────────────────

    constructor(address _asset, uint256 _minDepositAmount)
        ERC4626(IERC20(_asset))
        ERC20(string.concat(ERC20(_asset).symbol(), " Vault"), string.concat("g", ERC20(_asset).symbol()))
        Ownable(msg.sender)
    {
        minDepositAmount = _minDepositAmount;

        _underlyingAssetDecimals = ERC20(asset()).decimals();
        require(_underlyingAssetDecimals <= 18, "Decimals > 18");
        _offset = 18 - _underlyingAssetDecimals;

        // Initial high water mark = NAV per share of an empty vault:
        // _convertToAssets(10^18) = 10^18 * 1 / 10^_offset = 10^assetDecimals
        performanceFeeHighWaterMark = 10 ** _underlyingAssetDecimals;

        lastManagementFeeAccrual = block.timestamp;
        lastPerformanceFeeAccrual = block.timestamp;

        keeper = msg.sender;
    }

    // ─── MULTICALL ──────────────────────────────────────────

    /// @dev Useful for EOAs to batch admin calls (e.g. configure fees + keeper in one tx).
    ///      Only callable by the owner. Does not return call results.
    function multicall(bytes[] calldata data) external onlyOwner nonReentrant {
        for (uint256 i = 0; i < data.length; i++) {
            (bool success, bytes memory returnData) = address(this).delegatecall(data[i]);
            if (!success) {
                assembly ("memory-safe") {
                    revert(add(32, returnData), mload(returnData))
                }
            }
        }
    }

    // ─── ERC4626: Core Overrides ──────────────────────────────────────────

    /// @dev Virtual shares offset to protect against inflation attacks.
    function _decimalsOffset() internal view override returns (uint8) {
        return _offset;
    }

    /// @dev Total accounting value (idle + deployed). Explicit — independent of balanceOf.
    function totalAssets() public view override(IVault, ERC4626) returns (uint256) {
        return _totalTrackedAssets;
    }

    /// @dev Tokens currently held in the vault (not deployed to any strategy).
    function idleAssets() public view override returns (uint256) {
        return IERC20(asset()).balanceOf(address(this));
    }

    /// @dev Sum of assets currently allocated to all strategies. Derived from the invariant.
    function deployedValue() public view override returns (uint256) {
        uint256 idle = idleAssets();
        return totalAssets() > idle ? totalAssets() - idle : 0;
    }

    // ─── ERC4626: Max / Preview ───────────────────────────────────────────

    /// @dev Returns 0 when deposits are paused, otherwise type(uint256).max.
    function maxDeposit(address) public view override returns (uint256) {
        return depositsPaused ? 0 : type(uint256).max;
    }

    /// @dev Returns 0 when deposits are paused, otherwise type(uint256).max.
    function maxMint(address) public view override returns (uint256) {
        return depositsPaused ? 0 : type(uint256).max;
    }

    /// @dev Maximum withdrawable amount right now — limited by idle assets.
    ///      Returns NET amount (what the receiver will actually receive after fee).
    ///      Consistent with withdraw(assets) where `assets` = net amount receiver gets.
    function maxWithdraw(address owner_) public view override returns (uint256) {
        if (withdrawsPaused) return 0;
        uint256 ownerShares = balanceOf(owner_);
        uint256 ownerGrossAssets = _convertToAssets(ownerShares, Math.Rounding.Floor);
        uint256 idle = idleAssets();
        uint256 grossCap = ownerGrossAssets < idle ? ownerGrossAssets : idle;
        return _deductWithdrawalFee(grossCap);
    }

    /// @dev Maximum redeemable shares right now — limited by idle assets.
    function maxRedeem(address owner_) public view override returns (uint256) {
        if (withdrawsPaused) return 0;
        uint256 idle = idleAssets();
        if (totalAssets() == 0 || idle == 0) return 0;
        uint256 ownerShares = balanceOf(owner_);
        uint256 ownerGrossAssets = _convertToAssets(ownerShares, Math.Rounding.Floor);
        return ownerGrossAssets <= idle ? ownerShares : _convertToShares(idle, Math.Rounding.Floor);
    }

    /// @dev ERC4626: returns shares needed to burn to receive exactly `assets` (net) from withdraw().
    ///      Gross-up: net assets → gross assets → shares (rounded up).
    function previewWithdraw(uint256 assets) public view override returns (uint256) {
        uint256 grossAssets = _grossFromNet(assets);
        return _convertToShares(grossAssets, Math.Rounding.Ceil);
    }

    /// @dev ERC4626: returns net assets the caller would receive from redeem(shares).
    ///      Gross conversion → deduct withdrawal fee → net (rounded down).
    function previewRedeem(uint256 shares) public view override returns (uint256) {
        uint256 grossAssets = _convertToAssets(shares, Math.Rounding.Floor);
        return _deductWithdrawalFee(grossAssets);
    }

    // ─── ERC4626: Public Functions ────────────────────────────────────────

    function deposit(uint256 assets, address receiver) public override nonReentrant depositAvailable returns (uint256 shares) {
        _accrueManagementFee();
        shares = super.deposit(assets, receiver);
        _emitNavSnapshot();
    }

    function mint(uint256 shares, address receiver) public override nonReentrant depositAvailable returns (uint256 assets) {
        _accrueManagementFee();
        assets = super.mint(shares, receiver);
        _emitNavSnapshot();
    }

    /// @dev ERC4626-compliant: `assets` is the NET amount receiver will get.
    ///      Gross-up is applied internally — shares burned cover net + fee.
    function withdraw(uint256 assets, address receiver, address owner_) public override nonReentrant withdrawalAvailable returns (uint256 shares) {
        _accrueManagementFee();
        uint256 maxAssets = maxWithdraw(owner_);
        if (assets > maxAssets) {
            revert ERC4626ExceededMaxWithdraw(owner_, assets, maxAssets);
        }

        shares = previewWithdraw(assets);
        uint256 grossAssets = _convertToAssets(shares, Math.Rounding.Floor);
        _withdrawInternal(_msgSender(), receiver, owner_, grossAssets, shares);

        _emitNavSnapshot();
        return shares;
    }

    /// @dev Returns net assets (after fee) received by the receiver.
    function redeem(uint256 shares, address receiver, address owner_) public override nonReentrant withdrawalAvailable returns (uint256 assets) {
        _accrueManagementFee();
        uint256 maxShares = maxRedeem(owner_);
        if (shares > maxShares) {
            revert ERC4626ExceededMaxRedeem(owner_, shares, maxShares);
        }

        uint256 grossAssets = _convertToAssets(shares, Math.Rounding.Floor);
        uint256 netAssets = _withdrawInternal(_msgSender(), receiver, owner_, grossAssets, shares);

        _emitNavSnapshot();
        return netAssets;
    }

    // ─── ERC4626: Internal Hooks ──────────────────────────────────────────

    function _deposit(address caller, address receiver, uint256 assets, uint256 shares) internal override {
        require(assets >= minDepositAmount, "Amount below minimum deposit");
        super._deposit(caller, receiver, assets, shares);
        _addTrackedAssets(assets);
    }

    // ─── Internal Helpers ─────────────────────────────────────────────────

    /// @dev Disabled: OZ base would bypass withdrawal fee and invariant accounting.
    ///      All withdrawals go through _withdrawInternal() instead.
    function _withdraw(address, address, address, uint256, uint256) internal pure override {
        revert("Use _withdrawInternal");
    }

    /**
     * @dev Core withdrawal logic. `assets` is the GROSS amount (pre-fee).
     *      Fee is deducted from `assets` and sent to feeRecipient.
     *      Receiver gets net = assets - fee. Shares are burned for the full gross amount.
     */
    function _withdrawInternal(
        address caller,
        address receiver,
        address owner_,
        uint256 assets,
        uint256 shares
    ) internal returns(uint256 withdrawAssets) {
        require(idleAssets() >= assets, "No idle assets");

        if (caller != owner_) {
            _spendAllowance(owner_, caller, shares);
        }

        _burn(owner_, shares);
        _reduceTrackedAssets(assets);

        uint256 netAssets = _deductWithdrawalFee(assets);
        uint256 fee = assets - netAssets;
        if (fee > 0) {
            uint256 feeShares = previewDeposit(fee);
            _transferOut(feeRecipient, fee);
            emit WithdrawalFeeCharged(feeRecipient, fee, feeShares);
        }
        _transferOut(receiver, netAssets);

        emit Withdraw(caller, receiver, owner_, netAssets, shares);

        return netAssets;
    }

    /// @dev gross → net: deducts withdrawal fee from an asset amount.
    ///      Used in previewRedeem, maxWithdraw, maxRedeem, and _withdrawInternal.
    ///      Returns `assets` unchanged when fee is disabled or feeRecipient is unset.
    function _deductWithdrawalFee(uint256 assets) internal view returns (uint256) {
        if (withdrawalFeeBps > 0 && feeRecipient != address(0)) {
            return assets - assets.mulDiv(withdrawalFeeBps, BPS_DENOMINATOR, Math.Rounding.Ceil);
        }
        return assets;
    }

    /// @dev net → gross: grosses up a net amount so the receiver gets exactly `netAssets`.
    ///      gross = net * BPS / (BPS - feeBps), rounded up.
    function _grossFromNet(uint256 netAssets) internal view returns (uint256) {
        if (withdrawalFeeBps > 0 && feeRecipient != address(0)) {
            return netAssets.mulDiv(BPS_DENOMINATOR, BPS_DENOMINATOR - withdrawalFeeBps, Math.Rounding.Ceil);
        }
        return netAssets;
    }

    function _emitNavSnapshot() internal {
        emit NavSnapshot(totalAssets(), totalSupply(), _convertToAssets(10 ** decimals(), Math.Rounding.Floor), block.timestamp);
    }

    function _addTrackedAssets(uint256 assets) internal {
        _totalTrackedAssets += assets;
    }

    function _reduceTrackedAssets(uint256 assets) internal {
        _totalTrackedAssets -= assets;
    }

    // ─── Fee: Internal Accrual ────────────────────────────────────────────

    /**
     * @dev Accrues management fee for the time elapsed since the last accrual.
     *      Mints shares to feeRecipient, proportionally diluting existing holders.
     *
     *      Dilution-adjusted formula — after minting, feeRecipient holds exactly the target fraction:
     *        numerator   = elapsed * feeBps
     *        denominator = BPS_DENOMINATOR * 365days - numerator
     *        feeShares   = supply * numerator / denominator  [floor]
     */
    function _accrueManagementFee() internal {
        if (managementFeeBps == 0 || feeRecipient == address(0)) {
            // Reset the timer even when fee is disabled to avoid backdated accrual on re-enable.
            lastManagementFeeAccrual = block.timestamp;
            return;
        }
        uint256 elapsed = block.timestamp - lastManagementFeeAccrual;
        if (elapsed == 0) return;

        uint256 supply = totalSupply();
        if (supply > 0) {
            uint256 numerator   = elapsed * managementFeeBps;
            uint256 denominator = BPS_DENOMINATOR * 365 days - numerator;

            if (denominator > 0) {
                uint256 feeShares = supply.mulDiv(
                    numerator,
                    denominator,
                    Math.Rounding.Floor
                );
                if (feeShares > 0) {
                    uint256 feeAssets = previewMint(feeShares);
                    _mint(feeRecipient, feeShares);
                    emit ManagementFeeCharged(feeRecipient, feeAssets, feeShares, elapsed, totalAssets(), totalSupply());
                }
            }
        }
        lastManagementFeeAccrual = block.timestamp;
    }

    /**
     * @dev Accrues performance fee if performanceFeePeriod has elapsed since the last accrual
     *      and the current NAV per share exceeds the high water mark.
     *
     *      Dilution-adjusted formula:
     *        profitPerShare = currentNav - highWaterMark
     *        totalProfit    = profitPerShare * totalSupply / 10^vaultDecimals  [floor]
     *        feeAssets      = totalProfit * performanceFeeBps / BPS_DENOMINATOR [floor]
     *        feeShares      = feeAssets * supply / (totalAssets - feeAssets)    [floor]
     */
    function _accruePerformanceFee() internal {
        if (performanceFeeBps == 0 || feeRecipient == address(0)) {
            // Reset the timer even when fee is disabled to avoid backdated accrual on re-enable.
            lastPerformanceFeeAccrual = block.timestamp;
            return;
        }

        _tryResetPerformanceHWM();

        // Check interval (0 = no restriction).
        if (performanceFeePeriod > 0) {
            if (block.timestamp < lastPerformanceFeeAccrual + performanceFeePeriod * 1 days) return;
        }

        uint256 supply = totalSupply();
        if (supply == 0) {
            lastPerformanceFeeAccrual = block.timestamp;
            return;
        }

        uint256 currentNav = _convertToAssets(10 ** decimals(), Math.Rounding.Floor);

        if (currentNav > performanceFeeHighWaterMark) {
            uint256 hwmBefore    = performanceFeeHighWaterMark;
            uint256 profitPerShare = currentNav - hwmBefore;
            uint256 totalProfit = supply.mulDiv(profitPerShare, 10 ** decimals(), Math.Rounding.Floor);
            uint256 feeAssets   = totalProfit.mulDiv(performanceFeeBps, BPS_DENOMINATOR, Math.Rounding.Floor);
            uint256 totalAssets_ = totalAssets();

            if (feeAssets < totalAssets_) {
                uint256 feeShares = feeAssets.mulDiv(
                    supply,
                    totalAssets_ - feeAssets,
                    Math.Rounding.Floor
                );
                if (feeShares > 0) {
                    _mint(feeRecipient, feeShares);
                    emit PerformanceFeeCharged(feeRecipient, feeAssets, feeShares, currentNav, hwmBefore, totalProfit);
                }
            }

            performanceFeeHighWaterMark = currentNav;
            emit PerformanceFeeHighWaterMarkUpdated(hwmBefore, currentNav);
        }

        lastPerformanceFeeAccrual = block.timestamp;
    }

    /**
     * @dev Resets the high water mark to its initial value if totalAssets falls below
     *      minAssetsForPerformanceFee. Called before every performance fee accrual.
     */
    function _tryResetPerformanceHWM() internal {
        if (minAssetsForPerformanceFee == 0) return;
        if (totalAssets() < minAssetsForPerformanceFee) {
            uint256 initialHwm = 10 ** _underlyingAssetDecimals;
            if (performanceFeeHighWaterMark != initialHwm) {
                emit PerformanceFeeHighWaterMarkReset(performanceFeeHighWaterMark, initialHwm);
                performanceFeeHighWaterMark = initialHwm;
            }
        }
    }

    // ─── Admin: Strategy Management ──────────────────────────────────────

    /**
     * @notice Registers a strategy contract. Only registered strategies can receive allocations.
     * @dev Verifies that the strategy's asset and vault pointers match this vault.
     */
    function addStrategy(address strategy) external onlyOwner {
        require(strategy != address(0), "Zero address");
        require(!isStrategy[strategy], "Already registered");
        require(IStrategy(strategy).vault() == address(this), "Strategy vault mismatch");
        require(IStrategy(strategy).asset() == asset(),       "Strategy asset mismatch");
        isStrategy[strategy] = true;
        _strategyList.push(strategy);
        emit StrategyAdded(strategy);
    }

    /**
     * @notice Unregisters a strategy. The strategy must have zero outstanding allocation.
     */
    function removeStrategy(address strategy) external onlyOwner {
        require(isStrategy[strategy], "Not registered");
        require(strategyDeployedValue[strategy] == 0, "Strategy still has funds");
        isStrategy[strategy] = false;

        // Remove from _strategyList by swap-and-pop.
        uint256 len = _strategyList.length;
        for (uint256 i = 0; i < len; i++) {
            if (_strategyList[i] == strategy) {
                _strategyList[i] = _strategyList[len - 1];
                _strategyList.pop();
                break;
            }
        }

        emit StrategyRemoved(strategy);
    }

    /**
     * @notice Transfers idle tokens to a registered strategy.
     *         _totalTrackedAssets is unchanged: idle decreases, strategy allocation increases.
     */
    function allocate(address strategy, uint256 amount) external onlyOwnerOrKeeper nonReentrant {
        require(isStrategy[strategy], "Not registered");
        require(amount > 0, "Amount must be > 0");
        require(amount <= idleAssets(), "Insufficient idle assets");

        strategyDeployedValue[strategy] += amount;
        IERC20(asset()).safeTransfer(strategy, amount);
        IStrategy(strategy).deposit(amount);

        emit Allocated(strategy, amount);
    }

    /**
     * @notice Pulls tokens back from a registered strategy.
     *         _totalTrackedAssets is unchanged: idle increases, strategy allocation decreases.
     */
    function deallocate(address strategy, uint256 amount) external onlyOwnerOrKeeper nonReentrant {
        require(isStrategy[strategy], "Not registered");
        require(amount > 0, "Amount must be > 0");
        require(amount <= strategyDeployedValue[strategy], "Amount exceeds strategy allocation");

        IStrategy(strategy).withdraw(amount);
        strategyDeployedValue[strategy] -= amount;
        IERC20(asset()).safeTransferFrom(strategy, address(this), amount);

        emit Deallocated(strategy, amount);
    }

    /**
     * @notice Pulls available tokens back from a registered strategy.
     *         Amount is capped at min(strategyBalance, strategyDeployedValue).
     *         _totalTrackedAssets is unchanged: idle increases, strategy allocation decreases by the withdrawn amount.
     *         Returns 0 and emits nothing if the strategy holds no tokens.
     */
    function deallocateAllAvailable(address strategy) external onlyOwnerOrKeeper nonReentrant returns (uint256) {
        require(isStrategy[strategy], "Not registered");
        require(strategyDeployedValue[strategy] > 0, "No deployed funds for strategy");

        uint256 strategyBalance = IERC20(asset()).balanceOf(strategy);
        uint256 amountToWithdraw = strategyBalance > strategyDeployedValue[strategy] ? strategyDeployedValue[strategy] : strategyBalance;

        if (strategyBalance > 0) {
            IStrategy(strategy).withdraw(amountToWithdraw);
            strategyDeployedValue[strategy] -= amountToWithdraw;
            IERC20(asset()).safeTransferFrom(strategy, address(this), amountToWithdraw);

            emit Deallocated(strategy, amountToWithdraw);
        }

        return amountToWithdraw;
    }

    /**
     * @notice Reads the current value reported by the strategy and updates accounting.
     *         Accrues management and performance fees based on the new NAV.
     *
     *         Sanity checks (when enabled):
     *           - harvestStalenessWindow: reverts if lastReconciledAt() is too old.
     *           - harvestMaxLossBps: reverts if the reported loss exceeds the allowed fraction.
     *
     * @param strategy Address of the registered strategy to harvest.
     */
    function harvest(address strategy) external onlyOwnerOrKeeper nonReentrant {
        require(isStrategy[strategy], "Not registered");

        // Staleness check (0 = disabled).
        if (harvestStalenessWindow > 0) {
            uint256 reconciledAt = IStrategy(strategy).lastReconciledAt();
            require(
                block.timestamp <= reconciledAt + harvestStalenessWindow,
                "Strategy data is stale"
            );
        }

        uint256 oldValue = strategyDeployedValue[strategy];
        uint256 newValue = IStrategy(strategy).totalTrackedAssets();

        // Max-loss check (0 = disabled).
        if (harvestMaxLossBps > 0 && newValue < oldValue) {
            uint256 loss = oldValue - newValue;
            uint256 maxLoss = oldValue.mulDiv(harvestMaxLossBps, BPS_DENOMINATOR, Math.Rounding.Ceil);
            require(loss <= maxLoss, "Loss exceeds max allowed");
        }

        // Accrue management fee at the old AUM, then update AUM, then charge performance fee.
        _accrueManagementFee();

        // Adjust _totalTrackedAssets by the strategy's gain/loss.
        if (newValue >= oldValue) {
            _addTrackedAssets(newValue - oldValue);
        } else {
            _reduceTrackedAssets(oldValue - newValue);
        }

        strategyDeployedValue[strategy] = newValue;

        _accruePerformanceFee();

        uint256 nav = _convertToAssets(10 ** decimals(), Math.Rounding.Floor);
        emit Harvested(strategy, oldValue, newValue, totalAssets(), totalSupply(), nav);
        _emitNavSnapshot();
    }

    // ─── Admin: Keeper ────────────────────────────────────────────────────

    /// @notice Transfers the keeper role to a new address. Only callable by the owner.
    function setKeeper(address newKeeper) external onlyOwner {
        require(newKeeper != address(0), "Zero address");
        emit KeeperUpdated(keeper, newKeeper);
        keeper = newKeeper;
    }

    // ─── Admin: Vault Config ──────────────────────────────────────────────

    function setMinDepositAmount(uint256 _minDepositAmount) external onlyOwner {
        emit MinDepositAmountUpdated(minDepositAmount, _minDepositAmount);
        minDepositAmount = _minDepositAmount;
    }

    // ─── Admin: Harvest Parameters ────────────────────────────────────────

    /// @notice Sets the staleness window for harvest in seconds. 0 = disabled.
    function setHarvestStalenessWindow(uint256 _seconds) external onlyOwner {
        harvestStalenessWindow = _seconds;
    }

    /// @notice Sets the maximum allowed loss per harvest in basis points. 0 = disabled.
    function setHarvestMaxLossBps(uint256 _bps) external onlyOwner {
        require(_bps <= BPS_DENOMINATOR, "Exceeds 100%");
        emit HarvestMaxLossBpsUpdated(harvestMaxLossBps, _bps);
        harvestMaxLossBps = _bps;
    }

    // ─── Admin: Fee Management ────────────────────────────────────────────

    function setFeeRecipient(address _feeRecipient) external onlyOwner {
        require(_feeRecipient != address(0), "Zero address");
        emit FeeRecipientUpdated(feeRecipient, _feeRecipient);
        feeRecipient = _feeRecipient;
    }

    function setPerformanceFee(uint256 _feeBps) external onlyOwner {
        require(_feeBps <= MAX_PERFORMANCE_FEE_BPS, "Exceeds max performance fee");

        // Bump HWM to current NAV so that profit accumulated before the fee was
        // enabled is not retroactively charged. Without this, enabling a fee after
        // a period of growth would immediately trigger a fee on all historical gains.
        if (_feeBps > 0 && totalSupply() > 0) {
            uint256 currentNav = _convertToAssets(10 ** decimals(), Math.Rounding.Floor);
            if (currentNav > performanceFeeHighWaterMark) {
                uint256 oldPerformanceFeeHighWaterMark = performanceFeeHighWaterMark;
                performanceFeeHighWaterMark = currentNav;
                emit PerformanceFeeHighWaterMarkUpdated(oldPerformanceFeeHighWaterMark, performanceFeeHighWaterMark);
            }
        }

        emit PerformanceFeeUpdated(performanceFeeBps, _feeBps);
        performanceFeeBps = _feeBps;
    }

    /// @notice Sets the minimum interval between performance fee accruals.
    ///         0 = accrues on every harvest() call. Max: 31 days.
    function setPerformanceFeePeriod(uint256 _days) external onlyOwner {
        require(_days <= 31, "Period exceeds 31 days");
        emit PerformanceFeePeriodUpdated(performanceFeePeriod, _days);
        performanceFeePeriod = _days;
    }

    /// @notice Sets the totalAssets threshold below which the HWM is reset. 0 = disabled.
    function setMinAssetsForPerformanceFee(uint256 _threshold) external onlyOwner {
        emit PerformanceFeeResetThresholdUpdated(minAssetsForPerformanceFee, _threshold);
        minAssetsForPerformanceFee = _threshold;
    }

    function setManagementFee(uint256 _feeBps) external onlyOwner {
        // Accrue pending fee at the old rate before changing it.
        _accrueManagementFee();
        require(_feeBps <= MAX_MANAGEMENT_FEE_BPS, "Exceeds max management fee");
        emit ManagementFeeUpdated(managementFeeBps, _feeBps);
        managementFeeBps = _feeBps;
    }

    function setWithdrawalFee(uint256 _feeBps) external onlyOwner {
        require(_feeBps <= MAX_WITHDRAWAL_FEE_BPS, "Exceeds max withdrawal fee");
        emit WithdrawalFeeUpdated(withdrawalFeeBps, _feeBps);
        withdrawalFeeBps = _feeBps;
    }

    // ─── Admin: Token Rescue ──────────────────────────────────────────────

    /**
     * @notice Withdraws any ERC20 token accidentally sent to this contract.
     * @param _token  Address of the ERC20 token to rescue.
     * @param _to     Recipient address.
     * @param _amount Amount to withdraw. Pass 0 to withdraw the full balance.
     */
    function rescueToken(address _token, address _to, uint256 _amount) external onlyOwner {
        require(_token != asset(), "Cannot rescue vault asset");
        require(_to != address(0), "Zero recipient");

        uint256 amount = _amount == 0
            ? IERC20(_token).balanceOf(address(this))
            : _amount;

        require(amount > 0, "Nothing to rescue");
        IERC20(_token).safeTransfer(_to, amount);
        emit TokenRescued(_token, _to, amount);
    }

    // ─── Admin: Pause Controls ────────────────────────────────────────────

    function pauseDeposits() external onlyOwner {
        require(!depositsPaused, "Already paused");
        depositsPaused = true;
        emit DepositsPaused();
    }

    function resumeDeposits() external onlyOwner {
        require(depositsPaused, "Not paused");
        depositsPaused = false;
        emit DepositsResumed();
    }

    function pauseWithdrawals() external onlyOwner {
        require(!withdrawsPaused, "Already paused");
        withdrawsPaused = true;
        emit WithdrawsPaused();
    }

    function resumeWithdrawals() external onlyOwner {
        require(withdrawsPaused, "Not paused");
        withdrawsPaused = false;
        emit WithdrawsResumed();
    }

    function renounceOwnership() public override onlyOwner {
        revert("Cannot renounce ownership - this feature is disabled");
    }

    // ─── View Helpers ─────────────────────────────────────────────────────

    /**
     * @notice Returns high-level vault state for an admin/keeper dashboard.
     * @return totalAssets_         Total tracked assets (idle + deployed).
     * @return idleAssets_          Tokens currently held in the vault.
     * @return deployedValue_       Tokens currently allocated to strategies.
     * @return totalSupply_         Total vault shares outstanding.
     * @return depositsPaused_      Whether deposits are paused.
     * @return withdrawsPaused_     Whether withdrawals are paused.
     * @return strategies           Array of registered strategy addresses.
     * @return strategyValues       strategyDeployedValue for each corresponding strategy.
     */
    function getVaultInfo()
        external
        view
        returns (
            uint256 totalAssets_,
            uint256 idleAssets_,
            uint256 deployedValue_,
            uint256 totalSupply_,
            bool    depositsPaused_,
            bool    withdrawsPaused_,
            address[] memory strategies,
            uint256[] memory strategyValues
        )
    {
        totalAssets_     = totalAssets();
        idleAssets_      = idleAssets();
        deployedValue_   = deployedValue();
        totalSupply_     = totalSupply();
        depositsPaused_  = depositsPaused;
        withdrawsPaused_ = withdrawsPaused;

        uint256 len = _strategyList.length;
        strategies    = new address[](len);
        strategyValues = new uint256[](len);
        for (uint256 i = 0; i < len; i++) {
            strategies[i]    = _strategyList[i];
            strategyValues[i] = strategyDeployedValue[_strategyList[i]];
        }
    }

    /**
     * @param user Address of the user.
     * @return shares          Share balance (ERC20 balance).
     * @return sharesBps       Share of the vault in basis points (BPS_DENOMINATOR = 100%).
     * @return managedValue    Gross accounting value of the user's position (pre-fee, idle + deployed share).
     * @return withdrawableNow Net amount the user can withdraw right now (after fee, capped by idle). Equals maxWithdraw(user).
     */
    function getUserInfo(address user)
        external
        view
        returns (
            uint256 shares,
            uint256 sharesBps,
            uint256 managedValue,
            uint256 withdrawableNow
        )
    {
        shares = balanceOf(user);
        uint256 supply = totalSupply();
        if (supply == 0) return (shares, 0, 0, 0);

        sharesBps = shares.mulDiv(BPS_DENOMINATOR, supply, Math.Rounding.Floor);
        managedValue = _convertToAssets(shares, Math.Rounding.Floor);
        withdrawableNow = maxWithdraw(user);
    }

}
