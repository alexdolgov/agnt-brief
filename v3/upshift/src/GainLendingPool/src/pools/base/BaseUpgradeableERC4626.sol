// SPDX-License-Identifier: BUSL-1.1
pragma solidity >= 0.8.26;

import "./PoolErrors.sol";
import "../../../lib/open-zeppelin/utils/math/MathUpgradeable.sol";
import "../../../lib/open-zeppelin/token/ERC20/utils/SafeERC20.sol";
import "../../core/interfaces/IERC4626.sol";
import "./BaseUpgradeableERC20.sol";

/**
 * @title Represents a liquidity pool. The pool works per ERC-4626 standard. The pool can be paused.
 */
abstract contract BaseUpgradeableERC4626 is IERC4626, BaseUpgradeableERC20 {
    using MathUpgradeable for uint256;

    /// @notice Indicates whether deposits are paused or not.
    bool public depositsPaused;

    /// @notice Indicates whether withdrawals are paused or not.
    bool public withdrawalsPaused;

    /// @dev The underlying asset of the pool
    IERC20 internal _underlyingAsset;

    /// @dev The address of the fees collector, if any.
    address public feesCollector;

    /// @notice The maximum deposit amount.
    uint256 public maxDepositAmount;

    /// @notice The maximum withdrawal amount.
    uint256 public maxWithdrawalAmount;

    /// @notice The fee to apply when an account withdraws funds from the pool.
    uint256 public withdrawalFee;

    /**
     * @notice Triggers when deposits/withdrawals are paused or resumed.
     * @param bDepositsPaused The new state for deposits
     * @param bWithdrawalsPaused The new state for withdrawals
     */
    event DepositWithdrawalStatusChanged(bool bDepositsPaused, bool bWithdrawalsPaused);

    // ---------------------------------------------------------------
    // Modifiers
    // ---------------------------------------------------------------
    modifier ifConfigured() {
    if (address(_underlyingAsset) == address(0)) revert NotConfigured();
    _;
    }

    modifier ifNotConfigured() {
    if (address(_underlyingAsset) != address(0)) revert AlreadyConfigured();
    _;
    }

    modifier ifDepositsNotPaused() {
    if (depositsPaused) revert DepositsPaused();
    _;
    }

    modifier ifWithdrawalsNotPaused() {
    if (withdrawalsPaused) revert WithdrawalsPaused();
    _;
    }

    // --------------------------------------------------------------------------
    // ERC-4626 interface implementation
    // --------------------------------------------------------------------------
    /**
     * @notice Deposits funds in the pool. Issues LP tokens in exchange for the deposit.
     * @dev Throws if the deposit limit is reached.
     * @param assets The deposit amount, expressed in underlying tokens. For example: USDC, DAI, etc.
     * @param receiver The address that will receive the LP tokens. It is usually the same as a the sender.
     * @return shares The number of LP tokens issued to the receiving address specified.
     */
    function deposit(
        uint256 assets, 
        address receiver
    ) external override nonReentrant ifConfigured ifDepositsNotPaused returns (uint256 shares) {
        if (receiver == address(0) || receiver == address(this)) revert InvalidReceiver();
        if (isBlacklisted[msg.sender] || isBlacklisted[receiver]) revert AddressBlacklisted();
        if (assets == 0) revert AssetsAmountRequired();
        if (assets > maxDeposit(receiver)) revert DepositLimitReached();

        shares = previewDeposit(assets);
        if (shares == 0) revert SharesAmountRequired();

        _deposit(msg.sender, receiver, assets, shares);
    }

    /**
     * @notice Issues a specific amount of LP tokens to the receiver specified.
     * @dev Throws if the deposit limit is reached regardless of how many LP tokens you want to mint.
     * @param shares The amount of LP tokens to mint.
     * @param receiver The address of the receiver. It is usually the same as a the sender.
     * @return assets The amount of underlying assets per current ratio
     */
    function mint(
        uint256 shares, 
        address receiver
    ) external override nonReentrant ifConfigured ifDepositsNotPaused returns (uint256 assets) {
        if (receiver == address(0) || receiver == address(this)) revert InvalidReceiver();
        if (isBlacklisted[msg.sender] || isBlacklisted[receiver]) revert AddressBlacklisted();
        if (shares == 0) revert SharesAmountRequired();
        if (shares > maxMint(receiver)) revert MaxMintReached();

        assets = previewMint(shares);
        if (assets > maxDeposit(receiver)) revert DepositLimitReached();

        _deposit(msg.sender, receiver, assets, shares);
    }

    /**
     * @notice Gets the underlying asset of the pool.
     * @return address The address of the asset.
     */
    function asset() external view override returns (address) {
        return address(_underlyingAsset);
    }

    /**
     * @notice Gets the total assets amount managed by the pool.
     * @return uint256 The assets amount.
     */
    function totalAssets() external view virtual override returns (uint256) {
        return _getTotalAssets();
    }

    function previewDeposit(uint256 assets) public view virtual override returns (uint256) {
        return _convertToShares(assets, MathUpgradeable.Rounding.Down);
    }

    function previewMint(uint256 shares) public view virtual override returns (uint256) {
        return _convertToAssets(shares, MathUpgradeable.Rounding.Up);
    }

    function previewWithdraw(uint256 assets) public view virtual override returns (uint256) {
        return _convertToShares(assets, MathUpgradeable.Rounding.Up);
    }

    function previewRedeem(uint256 shares) public view virtual override returns (uint256 assets) {
        (, assets) = _previewRedeemWithFees(shares);
    }

    function convertToShares(uint256 assets) public view virtual override returns (uint256) {
        return _convertToShares(assets, MathUpgradeable.Rounding.Down);
    }

    function convertToAssets(uint256 shares) public view virtual override returns (uint256) {
        return _convertToAssets(shares, MathUpgradeable.Rounding.Down);
    }

    function maxDeposit(address) public view virtual override returns (uint256) {
        return (_totalSupply == 0 || _getTotalAssets() > 0) ? maxDepositAmount : 0;
    }

    function maxMint(address) public view virtual override returns (uint256) {
        return _maxSupply;
    }

    function maxWithdraw(address holderAddr) public view virtual override returns (uint256) {
        return _convertToAssets(_balances[holderAddr], MathUpgradeable.Rounding.Down);
    }

    function maxRedeem(address holderAddr) public view virtual override returns (uint256) {
        return _balances[holderAddr];
    }

    // --------------------------------------------------------------------------
    // Implementation functions
    // --------------------------------------------------------------------------
    function _deposit(
        address callerAddr,
        address receiverAddr,
        uint256 assets,
        uint256 shares
    ) internal virtual {
        // If _asset is ERC777, `transferFrom` can trigger a reenterancy BEFORE the transfer happens through the
        // `tokensToSend` hook. On the other hand, the `tokenReceived` hook, that is triggered after the transfer,
        // calls the vault, which is assumed not malicious.
        //
        // Conclusion: we need to do the transfer before we mint so that any reentrancy would happen before the
        // assets are transferred and before the shares are minted, which is a valid state.
        // slither-disable-next-line reentrancy-no-eth
        uint256 expectedBalanceAfterTransfer = assets + _underlyingAsset.balanceOf(address(this));
        SafeERC20.safeTransferFrom(_underlyingAsset, callerAddr, address(this), assets);
        if (_underlyingAsset.balanceOf(address(this)) != expectedBalanceAfterTransfer) revert BalanceCheckFailed();

        // Issue (mint) LP tokens to the receiver
        _mintErc20(receiverAddr, shares);

        // Log the ERC-4626 event
        emit Deposit(callerAddr, receiverAddr, assets, shares);
    }

    function _updateIssuanceLimits(
        uint256 newMaxDepositAmount, 
        uint256 newMaxWithdrawalAmount, 
        uint256 newMaxTokenSupply
    ) internal virtual {
        if (newMaxDepositAmount == 0) revert InvalidDepositLimit();
        if (newMaxWithdrawalAmount == 0) revert InvalidWithdrawalLimit();
        
        _setMaxSupply(newMaxTokenSupply);

        maxDepositAmount = newMaxDepositAmount;
        maxWithdrawalAmount = newMaxWithdrawalAmount;
    }

    function _setPause(bool bPauseDeposits, bool bPauseWithdrawals) internal virtual {
        depositsPaused = bPauseDeposits;
        withdrawalsPaused = bPauseWithdrawals;
        
        emit DepositWithdrawalStatusChanged(depositsPaused, withdrawalsPaused);
    }

    // --------------------------------------------------------------------------
    // Inner views
    // --------------------------------------------------------------------------
    function _getTotalAssets() internal view virtual returns (uint256);

    // Internal conversion function (from assets to shares) to apply when the vault is empty.
    function _initialConvertToShares(uint256 assets, MathUpgradeable.Rounding) internal view virtual returns (uint256 shares) {
        return assets;
    }

    // Internal conversion function (from shares to assets) to apply when the vault is empty.
    function _initialConvertToAssets(uint256 shares, MathUpgradeable.Rounding) internal view virtual returns (uint256) {
        return shares;
    }

    // Internal conversion function (from assets to shares) with support for rounding direction.
    // Will revert if assets > 0, totalSupply > 0 and totalAssets = 0. 
    // That corresponds to a case where any asset would represent an infinite amount of shares.
    function _convertToShares(uint256 assets, MathUpgradeable.Rounding rounding) internal view virtual returns (uint256) {
        return (assets == 0 || _totalSupply == 0) ? _initialConvertToShares(assets, rounding) : assets.mulDiv(_totalSupply, _getTotalAssets(), rounding);
    }

    // Internal conversion function (from shares to assets) with support for rounding direction.
    function _convertToAssets(uint256 shares, MathUpgradeable.Rounding rounding) internal view virtual returns (uint256) {
        return (_totalSupply == 0) ? _initialConvertToAssets(shares, rounding) : shares.mulDiv(_getTotalAssets(), _totalSupply, rounding);
    }

    function _previewRedeemWithFees(uint256 shares) internal view returns (uint256 assetsAmount, uint256 assetsAfterFee) {
        assetsAmount = _convertToAssets(shares, MathUpgradeable.Rounding.Down);
        assetsAfterFee = assetsAmount;
        uint256 applicableFee = 0;

        if (withdrawalFee > 0) {
            applicableFee = withdrawalFee * assetsAmount / 1e4;
            assetsAfterFee = assetsAmount - applicableFee;
        }

        return (assetsAmount, assetsAfterFee);
    }
}
