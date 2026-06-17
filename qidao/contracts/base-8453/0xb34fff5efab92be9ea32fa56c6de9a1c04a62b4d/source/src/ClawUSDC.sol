// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {IERC20, ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {ERC4626} from "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IBeefyVault} from "./IBeefyVault.sol";

contract ClawUSDC is ERC4626, Ownable {
    using Math for uint256;

    uint256 public constant REFERRAL_FEE_BPS = 500; // 5%
    uint256 private constant BPS_DENOMINATOR = 10_000;

    IBeefyVault public beefyVault;
    address public immutable defaultReferrer;

    uint256 public totalPendingReferralFees;
    uint256 public trackedMooShares;
    mapping(address => address) public referrerOf;
    mapping(address => uint256) public principalOf;
    mapping(address => uint256) public pendingYield;

    uint256 public constant MIN_REGISTRATION_PRINCIPAL = 5e6; // 5 USDC
    mapping(address => bool) public isRegisteredReferrer;

    string private _nameOverride;
    string private _symbolOverride;

    event ReferrerSet(address indexed user, address indexed referrer);
    event ReferralYieldCredited(address indexed user, address indexed referrer, uint256 amount);
    event ReferralYieldClaimed(address indexed user, uint256 amount);
    event VaultMigrated(address indexed oldVault, address indexed newVault, uint256 assets, uint256 newMooShares);
    event ReferrerRegistered(address indexed referrer);
    event NameChanged(string newName);
    event SymbolChanged(string newSymbol);

    error SelfReferral();
    error NoPendingYield();
    error CallerNotReceiver();
    error ZeroAssetsRedeem();
    error InsufficientSettlement();
    error SameVault();
    error WantMismatch();
    error ReferrerNotRegistered();
    error InsufficientPrincipal();

    constructor(IERC20 usdc, IBeefyVault _beefyVault, address _defaultReferrer)
        ERC20("ClawUSDC", "clawUSDC")
        ERC4626(usdc)
        Ownable(msg.sender)
    {
        beefyVault = _beefyVault;
        defaultReferrer = _defaultReferrer;
        SafeERC20.forceApprove(usdc, address(_beefyVault), type(uint256).max);
        if (_defaultReferrer != address(0)) {
            isRegisteredReferrer[_defaultReferrer] = true;
        }
    }

    function name() public view override(ERC20, IERC20Metadata) returns (string memory) {
        return bytes(_nameOverride).length > 0 ? _nameOverride : super.name();
    }

    function symbol() public view override(ERC20, IERC20Metadata) returns (string memory) {
        return bytes(_symbolOverride).length > 0 ? _symbolOverride : super.symbol();
    }

    /// @notice Update the token name
    /// @dev If ERC20Permit is ever added, changing the name would invalidate cached EIP-712 domain separators.
    function setName(string calldata newName) external onlyOwner {
        _nameOverride = newName;
        emit NameChanged(newName);
    }

    /// @notice Update the token symbol
    function setSymbol(string calldata newSymbol) external onlyOwner {
        _symbolOverride = newSymbol;
        emit SymbolChanged(newSymbol);
    }

    /// @notice Burn tokens accidentally sent to address(1)
    /// @dev Zeros orphaned principalOf[address(1)] since _burn skips principal migration (to == address(0)).
    ///      Burning shares decreases totalSupply without withdrawing assets, increasing share price for remaining holders.
    function burnBurned() external {
        address burned = address(1);
        uint256 balance = balanceOf(burned);
        if (balance == 0) return;
        _burn(burned, balance);
        principalOf[burned] = 0;
    }

    /// @notice Migrate all funds to a new Beefy vault (must accept same want token)
    function migrateVault(IBeefyVault newVault) external onlyOwner {
        if (address(newVault) == address(beefyVault)) revert SameVault();
        if (newVault.want() != asset()) revert WantMismatch();

        IBeefyVault oldVault = beefyVault;
        IERC20 usdc = IERC20(asset());

        // Withdraw everything from old vault
        uint256 mooShares = trackedMooShares;
        if (mooShares > 0) {
            oldVault.withdraw(mooShares);
        }

        // Approve new vault and deposit everything
        uint256 bal = usdc.balanceOf(address(this));
        SafeERC20.forceApprove(usdc, address(newVault), type(uint256).max);
        // Revoke old vault approval
        SafeERC20.forceApprove(usdc, address(oldVault), 0);

        uint256 mooBefore = newVault.balanceOf(address(this));
        if (bal > 0) {
            newVault.deposit(bal);
        }
        trackedMooShares = newVault.balanceOf(address(this)) - mooBefore;

        beefyVault = newVault;

        emit VaultMigrated(address(oldVault), address(newVault), bal, trackedMooShares);
    }

    /// @notice Deposit with a referrer (only used on first deposit to register referral)
    /// @dev Caller must be the receiver to prevent referrer hijacking.
    ///      Referrer must be registered via registerAsReferrer().
    function deposit(uint256 assets, address receiver, address referrer) public returns (uint256) {
        if (msg.sender != receiver) revert CallerNotReceiver();
        _setReferrer(receiver, referrer);
        return deposit(assets, receiver);
    }

    /// @notice Mint with a referrer (only used on first deposit to register referral)
    /// @dev Caller must be the receiver to prevent referrer hijacking.
    ///      Referrer must be registered via registerAsReferrer().
    function mint(uint256 shares, address receiver, address referrer) public returns (uint256) {
        if (msg.sender != receiver) revert CallerNotReceiver();
        _setReferrer(receiver, referrer);
        return mint(shares, receiver);
    }

    /// @notice Register msg.sender as a valid referrer
    /// @dev Requires principalOf[msg.sender] >= MIN_REGISTRATION_PRINCIPAL at call time.
    ///      Registration is permanent regardless of future withdrawals.
    function registerAsReferrer() external {
        if (isRegisteredReferrer[msg.sender]) return;
        if (principalOf[msg.sender] < MIN_REGISTRATION_PRINCIPAL) revert InsufficientPrincipal();
        isRegisteredReferrer[msg.sender] = true;
        emit ReferrerRegistered(msg.sender);
    }

    /// @notice Claim pending referral yield
    function claim() external {
        if (pendingYield[msg.sender] == 0) revert NoPendingYield();
        _settlePendingFees(msg.sender);
    }

    function totalAssets() public view override returns (uint256) {
        uint256 gross = trackedMooShares.mulDiv(beefyVault.getPricePerFullShare(), 1e18);
        return gross > totalPendingReferralFees ? gross - totalPendingReferralFees : 0;
    }

    function _deposit(address caller, address receiver, uint256 assets, uint256 shares) internal override {
        SafeERC20.safeTransferFrom(IERC20(asset()), caller, address(this), assets);
        uint256 mooBefore = beefyVault.balanceOf(address(this));
        beefyVault.deposit(assets);
        trackedMooShares += beefyVault.balanceOf(address(this)) - mooBefore;
        _mint(receiver, shares);
        principalOf[receiver] += assets;
        emit Deposit(caller, receiver, assets, shares);
    }

    /// @notice Override redeem to return actual assets received (after referral fee)
    function redeem(uint256 shares, address receiver, address owner_) public override returns (uint256) {
        uint256 maxShares = maxRedeem(owner_);
        if (shares > maxShares) {
            revert ERC4626ExceededMaxRedeem(owner_, shares, maxShares);
        }
        uint256 assets = previewRedeem(shares);
        uint256 actualAssets = _withdrawWithFee(_msgSender(), receiver, owner_, assets, shares);
        return actualAssets;
    }

    /// @notice Override withdraw to return actual shares burned
    function withdraw(uint256 assets, address receiver, address owner_) public override returns (uint256) {
        uint256 maxAssets = maxWithdraw(owner_);
        if (assets > maxAssets) {
            revert ERC4626ExceededMaxWithdraw(owner_, assets, maxAssets);
        }
        uint256 shares = previewWithdraw(assets);
        _withdrawWithFee(_msgSender(), receiver, owner_, assets, shares);
        return shares;
    }

    function _withdrawWithFee(address caller, address receiver, address owner, uint256 assets, uint256 shares)
        internal
        returns (uint256 actualAssets)
    {
        if (assets == 0 && shares > 0) revert ZeroAssetsRedeem();

        if (caller != owner) {
            _spendAllowance(owner, caller, shares);
        }

        uint256 fee;
        {
            uint256 ownerShares = balanceOf(owner);
            uint256 principalConsumed = principalOf[owner] * shares / ownerShares;
            uint256 yield_ = assets > principalConsumed ? assets - principalConsumed : 0;

            if (yield_ > 0) {
                address ref = referrerOf[owner];
                if (ref == address(0) && owner != defaultReferrer) {
                    ref = defaultReferrer;
                }
                if (ref != address(0)) {
                    fee = yield_ * REFERRAL_FEE_BPS / BPS_DENOMINATOR;
                    pendingYield[ref] += fee;
                    totalPendingReferralFees += fee;
                    emit ReferralYieldCredited(owner, ref, fee);
                }
            }

            principalOf[owner] -= principalConsumed;
        }

        _burn(owner, shares);
        if (balanceOf(owner) == 0) {
            principalOf[owner] = 0;
        }

        actualAssets = assets - fee;

        // Only withdraw what the user receives — fee stays in vault as Beefy shares
        {
            uint256 pps = beefyVault.getPricePerFullShare();
            if (pps > 0 && actualAssets > 0) {
                uint256 mooShares = actualAssets.mulDiv(1e18, pps, Math.Rounding.Ceil);
                uint256 mooBalance = beefyVault.balanceOf(address(this));
                if (mooShares > mooBalance) {
                    mooShares = mooBalance;
                }
                beefyVault.withdraw(mooShares);
                trackedMooShares -= mooShares;
            }

            SafeERC20.safeTransfer(IERC20(asset()), receiver, actualAssets);
        }

        // Auto-settle any pending referral fees for the withdrawer
        // Wrapped in try/catch so settlement failure doesn't block withdrawal
        try this.settleForSelf(owner) {} catch {}

        emit Withdraw(caller, receiver, owner, actualAssets, shares);
    }

    /// @notice Self-call wrapper for auto-settling during withdrawal
    /// @dev Only callable by this contract; enables try/catch on internal settle
    function settleForSelf(address account) external {
        require(msg.sender == address(this), "only self");
        _settlePendingFees(account);
    }

    function _update(address from, address to, uint256 value) internal override {
        super._update(from, to, value);

        // Migrate principal on share transfers (not mint/burn)
        if (from != address(0) && to != address(0)) {
            uint256 preBalance = balanceOf(from) + value;
            if (preBalance > 0) {
                uint256 principalMoved = principalOf[from].mulDiv(value, preBalance, Math.Rounding.Ceil);
                if (principalMoved > principalOf[from]) principalMoved = principalOf[from];
                principalOf[from] -= principalMoved;
                principalOf[to] += principalMoved;
            }
        }
    }

    function _setReferrer(address user, address referrer) internal {
        if (referrer == address(0)) return;
        if (referrerOf[user] != address(0)) return; // already set, silently ignore
        if (user == referrer) revert SelfReferral();
        if (!isRegisteredReferrer[referrer]) revert ReferrerNotRegistered();
        referrerOf[user] = referrer;
        emit ReferrerSet(user, referrer);
    }

    /// @dev Registration is intentionally NOT checked here — fees already credited
    ///      to pendingYield are vested and payable regardless of referrer status.
    function _settlePendingFees(address account) internal {
        uint256 balance = pendingYield[account];
        if (balance == 0) return;

        // Calculate cascade fee (state changes deferred until after withdrawal)
        uint256 fee;
        address ref = referrerOf[account];
        if (ref == address(0) && account != defaultReferrer) {
            ref = defaultReferrer;
        }
        if (ref != address(0)) {
            fee = balance * REFERRAL_FEE_BPS / BPS_DENOMINATOR;
        }

        uint256 payout = balance - fee;

        // Withdraw from Beefy BEFORE modifying state
        uint256 usdcBefore = IERC20(asset()).balanceOf(address(this));
        {
            uint256 pps = beefyVault.getPricePerFullShare();
            if (pps > 0 && payout > 0) {
                uint256 mooShares = payout.mulDiv(1e18, pps, Math.Rounding.Ceil);
                uint256 mooBalance = beefyVault.balanceOf(address(this));
                if (mooShares > mooBalance) {
                    mooShares = mooBalance;
                }
                if (mooShares > trackedMooShares) {
                    mooShares = trackedMooShares;
                }
                beefyVault.withdraw(mooShares);
                trackedMooShares -= mooShares;
            }
        }
        uint256 usdcReceived = IERC20(asset()).balanceOf(address(this)) - usdcBefore;
        if (usdcReceived < payout) revert InsufficientSettlement();

        // State changes AFTER successful withdrawal
        pendingYield[account] = 0;
        totalPendingReferralFees -= balance;

        if (fee > 0) {
            pendingYield[ref] += fee;
            totalPendingReferralFees += fee;
            emit ReferralYieldCredited(account, ref, fee);
        }

        SafeERC20.safeTransfer(IERC20(asset()), account, payout);
        emit ReferralYieldClaimed(account, payout);
    }
}
