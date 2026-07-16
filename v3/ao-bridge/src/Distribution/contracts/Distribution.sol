// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title Distribution
 * @notice Single-vault staking contract for USDS that routes deposits through an ERC-4626 vault to earn
 *         yield, periodically bridges the generated yield ("overplus") to the AO distribution wallet,
 *         and offers emergency mechanisms governed by clearly documented roles.
 *
 * Emergency procedures
 * --------------------
 * 1. Pausing / Upgrade freeze
 *    The contract can be upgraded via the UUPS pattern **until** `removeUpgradeability()` is called by
 *    the owner.  Once invoked, any further upgrade attempt reverts, effectively locking the byte-code.
 *
 * 2. Emergency refunds ("ejection")
 *    The `refunderAddress` (primary) or `fallbackAddress` (secondary) can invoke `ejectStakedFunds()` to
 *    force-withdraw a user's principal from the vault and transfer it back to them.  This is useful if a
 *    user's wallet is compromised or subject to legal intervention.
 *
 * 3. Owner privileges
 *    The owner has *no* special access to user funds.  Their privileges are limited to:
 *      • Upgrading the implementation (until frozen as per §1).
 *      • Configuring the proxy admin (handled externally) and calling `removeUpgradeability()`.
 *
 * For every emergency action an event is emitted, enabling off-chain monitoring and fast response.
 */

import {SafeERC20, IERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {IERC4626} from "./interfaces/IERC4626.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";

import {IDistribution} from "./interfaces/IDistribution.sol";

contract Distribution is IDistribution, OwnableUpgradeable, UUPSUpgradeable, ReentrancyGuardUpgradeable {
    using SafeERC20 for IERC20;

    address private refunderAddress;
    address private fallbackAddress;

    // Modifier to restrict access to the ejectStakedFunds call
    modifier onlyRefunder() {
        require(msg.sender == refunderAddress || msg.sender == fallbackAddress, "DS: Unauthorized to Refund");
        _;
    }

    bool public isNotUpgradeable;

    address public depositToken;
    /**
     * @notice Address of the ERC-4626 vault that actually holds the deposited USDS and accrues yield.
     * @dev Previously named `sUsdsVaultAddress` – renamed for terminology consistency.
     */
    address public vaultAddress;
    address public aoDistributionWallet;
    /**
     * @notice ERC-4626 vault instance used throughout the contract.
     * @dev Previously referenced as `sUsdsVault`.
     */
    IERC4626 public vault;

    // User storage
    mapping(address => UserData) private _usersData;

    // Total deposited across all users (principal kept in the vault)
    uint256 public totalDepositedInVault;

    uint128 public withdrawLockPeriodAfterStake;
    uint256 public minimalStake;
    uint128 public lastUpdate;

    /**
     * @notice Referral code forwarded to the sUSDS vault on every deposit.
     * @dev Configured once during initialisation and afterwards immutable.
     */
    uint16 public depositReferralCode;

    // INSERT CONSTANT
    uint256 private constant _MAX_DEPOSIT_DRIFT = 1; // maximum acceptable deviation (in wei) between the requested deposit and the actual amount pulled by the vault.

    /**********************************************************************************************/
    /*** Init                                                                                   ***/
    /**********************************************************************************************/

    constructor() {
        _disableInitializers();
    }

    function Distribution_init(
        address aoDistributionWallet_,
        uint128 withdrawLockPeriodAfterStake_,
        uint256 minimalStake_,
        uint128 lastUpdate_,
        address refunderAddress_,
        address fallbackAddress_,
        uint16 depositReferralCode_
    ) external initializer {
        __Ownable_init();
        __UUPSUpgradeable_init();
        __ReentrancyGuard_init();

        // USDS & sUSDS main-net addresses (Ethereum)
        // USDS ERC-20 token
        depositToken = 0xdC035D45d973E3EC169d2276DDab16f1e407384F;
        // sUSDS ERC-4626 vault token (acts as SSR manager)
        vaultAddress = 0xa3931d71877C0E7a3148CB7Eb4463524FEc27fbD;
        vault = IERC4626(vaultAddress);

        // (almost) unlimited approve of USDS to the sUSDS vault
        IERC20(depositToken).safeApprove(vaultAddress, type(uint256).max);

        refunderAddress = refunderAddress_;
        fallbackAddress = fallbackAddress_;

        withdrawLockPeriodAfterStake = withdrawLockPeriodAfterStake_;
        minimalStake = minimalStake_;
        lastUpdate = lastUpdate_;

        aoDistributionWallet = aoDistributionWallet_;

        depositReferralCode = depositReferralCode_;
    }

    /**********************************************************************************************/
    /*** Vault accounting and data retrieval                                                    ***/
    /**********************************************************************************************/

    /**********************************************************************************************/
    /*** Stake, withdraw                                                                 ***/
    /**********************************************************************************************/
    function stake(uint256 amount_, bytes32 arweaveAddress_) external nonReentrant {
        _stake(_msgSender(), amount_, arweaveAddress_);
    }

    function withdraw(uint256 amount_, bytes32 arweaveAddress_) external nonReentrant {
        _withdraw(_msgSender(), amount_, arweaveAddress_);
    }

    /**
     * @notice Deposits `amount_` of USDS into the configured vault.
     * @dev Formerly called `_joinSsr`.  We return the *actual* amount that was deposited to neutralise
     *      any rounding performed by the vault when converting assets to shares.
     */
    function _depositToVault(uint256 amount_) private returns (uint256) {
        require(amount_ > 0, "DS: nothing to join");

        uint256 preBalance_ = IERC20(depositToken).balanceOf(address(this));

        // Deposit USDS into the vault using the configured referral code; the call reverts on failure (eg. insufficient allowance)
        vault.deposit(amount_, address(this), depositReferralCode);

        uint256 postBalance_ = IERC20(depositToken).balanceOf(address(this));
        uint256 actualDeposited_ = preBalance_ - postBalance_;
        require(actualDeposited_ > 0, "DS: SSR deposit failed");

        require(actualDeposited_ <= amount_ + _MAX_DEPOSIT_DRIFT, "DS: vault over-withdraw");

        return actualDeposited_;
    }

    /**
     * @notice Withdraws `amount_` of USDS from the vault back into this contract.
     * @dev Formerly named `_exitSsr`.
     */
    function _withdrawFromVault(uint256 amount_) private returns (uint256) {
        require(amount_ > 0, "DS: nothing to exit");

        uint256 preBalance_ = IERC20(depositToken).balanceOf(address(this));

        // Pull assets out – falls back to vault's rounding rules internally.
        vault.withdraw(amount_, address(this), address(this));

        uint256 postBalance_ = IERC20(depositToken).balanceOf(address(this));
        uint256 actualExited_ = postBalance_ - preBalance_;
        require(actualExited_ > 0, "DS: SSR withdraw failed");

        return actualExited_;
    }

    /**
     * @dev Core staking routine used by the public `stake()` entry-point.
     *
     * Flow:
     *   1. Pull `amount_` USDS from the caller.
     *   2. Deposit it into the SSR vault and credit the user with the *actual* amount that made it in.
     *   3. Update per-user and global aggregates.
     */
    function _stake(address user_, uint256 amount_, bytes32 arweaveAddress_) private {
        require(amount_ > 0, "DS: nothing to stake");

        UserData storage userData = _usersData[user_];

        IERC20(depositToken).safeTransferFrom(_msgSender(), address(this), amount_);

        // only credit the user for the actual amount that landed in the SSR
        amount_ = _depositToVault(amount_);

        require((userData.deposited + amount_) >= minimalStake, "DS: amount too low");

        totalDepositedInVault += amount_;
        lastUpdate = uint128(block.timestamp);

        // Update user data
        userData.lastStake = uint128(block.timestamp);
        userData.deposited += amount_;

        emit UserStaked(user_, amount_, arweaveAddress_);
    }

    /**
     * @dev Internal withdraw logic backing the public `withdraw()` function.
     *
     * Safeguards / edge-case handling:
     *   • Caps `amount_` to the user's recorded deposit.
     *   • Enforces post-stake lock-up (`withdrawLockPeriodAfterStake`).
     *   • Ensures the contract actually *owns* at least `amount_` USDS (via share → asset conversion).
     *   • Utilises `previewRedeem()` (EIP-4626) rather than `convertToAssets()` to determine
     *     withdrawable assets, removing the 1-wei rounding ceiling.
     *   • The user either fully exits or keeps a remainder ≥ `minimalStake`.
     */
    function _withdraw(address user_, uint256 amount_, bytes32 arweaveAddress_) private {
        require(amount_ > 0, "DS: nothing to withdraw");
        UserData storage userData = _usersData[user_];

        uint256 deposited_ = userData.deposited;
        require(deposited_ > 0, "DS: user isn't staked");

        if (amount_ > deposited_) {
            amount_ = deposited_;
        }

        uint256 newDeposited_;
        require((block.timestamp > userData.lastStake + withdrawLockPeriodAfterStake), "DS: withdraw is locked");

        // Use EIP-4626 previewRedeem to obtain the *exact* amount of assets that can be
        // exited for the vault shares currently held by the contract (rounded down per spec).
        // This avoids the extra 1-wei "dust" limitation that convertToAssets() may introduce.
        uint256 withdrawableAssets_ = vault.previewRedeem(vault.balanceOf(address(this)));
        if (amount_ > withdrawableAssets_) {
            amount_ = withdrawableAssets_;
        }

        newDeposited_ = deposited_ - amount_;
        require(newDeposited_ >= minimalStake || newDeposited_ == 0, "DS: invalid withdraw amount");

        // Update user data
        userData.deposited = newDeposited_;

        totalDepositedInVault -= amount_;
        lastUpdate = uint128(block.timestamp);

        uint256 ssrExitedAmount_ = _withdrawFromVault(amount_);
        IERC20(depositToken).safeTransfer(user_, ssrExitedAmount_);

        emit UserWithdrawn(user_, amount_, arweaveAddress_);
    }

    /**********************************************************************************************/
    /*** Bridge                                                                                 ***/
    /**********************************************************************************************/

    /**
     * @notice Calculates the current SSR overplus (yield) that has accrued on top of the users' principal.
     *
     * How SSR accrual works (high level):
     *   - When we deposit USDS into the sUSDS vault we receive *shares* (`ERC-4626`) that track our
     *     proportional ownership of the underlying assets.
     *   - Yield is realised by the **exchange-rate** growing over time — *share balance stays constant* while
     *     `convertToAssets(shares)` starts returning more USDS for the same amount of shares.
     *
     * Therefore, to calculate the protocol's yield we simply compare the current *asset* value of our shares
     * (plus any loose USDS sitting in the contract) with the sum of all user principals (`totalDepositedInVault`).
     * Anything above that number is the *overplus* that can be bridged out.
     *
     * IMPORTANT: Unlike the legacy DSR model (Pot + chi) we do **NOT** have to call a `drip()` function – the
     * conversion rate is always up-to-date in the vault itself.
     */
    function calculateOverplus() public returns (uint256) {
        // 1. Assets represented by our sUSDS shares
        uint256 investedAssets_ = vault.convertToAssets(vault.balanceOf(address(this)));

        // 2. Any USDS that is already held outside the vault (e.g. leftovers from previous withdrawals)
        uint256 looseAssets_ = IERC20(depositToken).balanceOf(address(this));

        uint256 totalAssets_ = investedAssets_ + looseAssets_;

        if (totalAssets_ <= totalDepositedInVault) {
            return 0;
        }

        uint256 overplus_ = totalAssets_ - totalDepositedInVault;

        emit CalculateOverplusResult(totalAssets_, overplus_);

        return overplus_;
    }

    /**
     * @notice Exit the SSR and bridge the currently available overplus to `aoDistributionWallet`.
     * Anybody can call this function – it is permissionless.
     *
     * Implementation details:
     *   • First we compute the overplus (see `calculateOverplus`).
     *   • If the contract already holds enough loose USDS we *reuse* it – no redundant vault exit is performed.
     *   • Otherwise we withdraw only the *missing* part from the vault, keeping gas usage minimal.
     */
    function bridgeOverplus() external {
        uint256 overplus_ = calculateOverplus();
        require(overplus_ > 0, "DS: overplus is zero");

        uint256 looseAssets_ = IERC20(depositToken).balanceOf(address(this));

        // Pull only what is missing (rounded up internally by the vault).
        if (looseAssets_ < overplus_) {
            _withdrawFromVault(overplus_ - looseAssets_);
        }

        uint256 transferable_ = IERC20(depositToken).balanceOf(address(this));

        // By design `transferable_` can only exceed `overplus_` by vault-rounding dust.
        // Transferring the full loose balance guarantees that *all* yield (incl. dust)
        // is bridged, never touching user principal which remains invested in sUSDS.

        IERC20(depositToken).safeTransfer(aoDistributionWallet, transferable_);

        emit OverplusBridged(transferable_);
    }

    /**********************************************************************************************/
    /*** UUPS                                                                                   ***/
    /**********************************************************************************************/

    function removeUpgradeability() external onlyOwner {
        isNotUpgradeable = true;
    }

    function _authorizeUpgrade(address) internal view override onlyOwner {
        require(!isNotUpgradeable, "DS: upgrade isn't available");
    }

    /**********************************************************************************************/
    /*** Ejection Handling                                                                                ***/
    /**********************************************************************************************/

    function ejectStakedFunds(address user) external nonReentrant onlyRefunder {
        require(user != address(0), "DS: user is the zero address");

        UserData storage userData = _usersData[user];
        uint256 recordedAmount_ = userData.deposited;
        if (recordedAmount_ == 0) {
            return;
        }

        // Determine the assets that are currently redeemable
        uint256 looseAssets_ = IERC20(depositToken).balanceOf(address(this));
        uint256 shareAssets_ = vault.convertToAssets(vault.balanceOf(address(this)));
        uint256 redeemable_ = looseAssets_ + shareAssets_;

        // Cap transfer to what is actually redeemable
        uint256 amountToTransfer_ = recordedAmount_ > redeemable_ ? redeemable_ : recordedAmount_;
        require(amountToTransfer_ > 0, "DS: no assets redeemable");

        // Update user and global accounting BEFORE any external calls
        userData.deposited = recordedAmount_ - amountToTransfer_;
        totalDepositedInVault -= amountToTransfer_;
        lastUpdate = uint128(block.timestamp);

        // Pull additional assets from the vault only if required
        if (amountToTransfer_ > looseAssets_) {
            _withdrawFromVault(amountToTransfer_ - looseAssets_);
        }

        // Transfer the redeemable assets to the user
        IERC20(depositToken).safeTransfer(user, amountToTransfer_);

        // Use zero bytes32 for compatibility with existing analytics tooling
        emit UserWithdrawn(user, amountToTransfer_, 0x0);
    }

    /**
     * Getter compatible with IDistribution interface.
     */
    function usersData(address user) external view returns (UserData memory) {
        return _usersData[user];
    }
}
