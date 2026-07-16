// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "openzeppelin-contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "openzeppelin-contracts-upgradeable/token/ERC20/extensions/ERC4626Upgradeable.sol";
import "openzeppelin-contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "openzeppelin-contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "openzeppelin-contracts-upgradeable/utils/PausableUpgradeable.sol";
import "openzeppelin-contracts/utils/math/Math.sol";
import "openzeppelin-contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";
import "openzeppelin-contracts-upgradeable/proxy/utils/Initializable.sol";
import "openzeppelin-contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "./Oracle.sol";

/// @title afiVault - ERC4626 vault with oracle-based exchange rate
contract afiRwaVault is
    Initializable,
    UUPSUpgradeable,
    ERC4626Upgradeable,
    AccessControlUpgradeable,
    ReentrancyGuardUpgradeable,
    PausableUpgradeable
{
    using Math for uint256;
    using SafeERC20 for IERC20;

    error InvalidAddress();
    error InvalidDeposit();
    error InvalidWithdrawal();
    error TransferFailed();
    error OracleNotSet();
    error InvalidRate();
    error NotAuthorized();
    error AddressNotWhitelisted();
    error InvalidFee();
    error InsufficientBalance();
    error BelowMinimumDeposit();
    error DepositCooldownActive();
    error InvalidCooldown();
    error InvalidMaximumDeposit();
    error ValueUnchanged();

    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");
    uint256 public constant PRECISION = 1e18;
    uint256 public constant MAX_FEE_BPS = 1000;
    uint256 public constant MAX_BPS = 10000;

    address public oracle;
    address public treasury;
    address public custodyWallet;
    uint256 public depositFeeBps;
    uint256 public withdrawalFeeBps;
    uint256 public minimumDeposit;
    uint256 public maximumDeposit;
    uint256 public depositCooldown;
    mapping(address => bool) public whitelisted;
    mapping(address => uint256) public lastDepositTimestamp;

    uint256[50] private __gap;

    event OracleSet(address indexed setter, address newOracle);
    event TreasurySet(address indexed setter, address newTreasury);
    event CustodyWalletSet(address indexed setter, address newCustodyWallet);
    event DepositFeeSet(uint256 newFeeBps);
    event WithdrawalFeeSet(uint256 newFeeBps);
    event MinimumDepositSet(uint256 newMinimum);
    event Whitelisted(address indexed account);
    event UnWhitelisted(address indexed account);
    event AssetsTransferredToCustody(address indexed token, uint256 amount, address indexed custodyWallet);
    event EmergencyRecovery(address indexed token, uint256 amount, address indexed recipient);
    event DepositCooldownSet(uint256 newCooldown);
    event MaximumDepositSet(uint256 newMaximum);

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /// @notice Initializes the afiVault contract
    /// @param _name Token name
    /// @param _symbol Token symbol
    /// @param _asset Underlying ERC20 asset
    /// @param _admin Admin role address
    /// @param _superAdmin Super admin with upgrade rights
    /// @param _treasury Treasury address for fees
    /// @param _custodyWallet Custody wallet for asset transfers
    function initialize(
        string memory _name,
        string memory _symbol,
        IERC20 _asset,
        address _admin,
        address _superAdmin,
        address _treasury,
        address _custodyWallet
    ) public initializer {
        if (
            _admin == address(0) || _superAdmin == address(0) || _treasury == address(0) || _custodyWallet == address(0)
        ) {
            revert InvalidAddress();
        }

        __ERC4626_init(_asset);
        __ERC20_init(_name, _symbol);
        __AccessControl_init();
        __ReentrancyGuard_init();
        __Pausable_init();
        __UUPSUpgradeable_init();

        treasury = _treasury;
        custodyWallet = _custodyWallet;
        minimumDeposit = 10 ** IERC20Metadata(address(_asset)).decimals();
        maximumDeposit = type(uint256).max; // No limit by default
        depositCooldown = 0; // No cooldown by default

        _grantRole(DEFAULT_ADMIN_ROLE, _superAdmin);
        _grantRole(ADMIN_ROLE, _admin);
    }

    function _authorizeUpgrade(address) internal override onlyRole(DEFAULT_ADMIN_ROLE) {}

    /// @notice Gets the current exchange rate from the oracle
    /// @dev Oracle returns rate in 6 decimals, scaled to 18 decimals for internal calculations
    /// @return Current exchange rate with 18 decimals precision
    function exchangeRate() public view returns (uint256) {
        address _oracle = oracle;
        if (_oracle == address(0)) revert OracleNotSet();
        uint256 rate = Oracle(_oracle).fetchExchangeRate();
        if (rate == 0) revert InvalidRate();
        return rate * 1e12;
    }

    /// @notice Sets the oracle address
    /// @param _oracle New oracle address
    function setOracle(address _oracle) external onlyRole(ADMIN_ROLE) {
        if (_oracle == address(0)) revert InvalidAddress();
        if (_oracle == oracle) revert ValueUnchanged();
        oracle = _oracle;
        emit OracleSet(msg.sender, _oracle);
    }

    /// @notice Sets the treasury address
    /// @param _treasury New treasury address
    function setTreasury(address _treasury) external onlyRole(ADMIN_ROLE) {
        if (_treasury == address(0)) revert InvalidAddress();
        if (_treasury == treasury) revert ValueUnchanged();
        treasury = _treasury;
        emit TreasurySet(msg.sender, _treasury);
    }

    /// @notice Sets the custody wallet address
    /// @param _custodyWallet New custody wallet address
    function setCustodyWallet(address _custodyWallet) external onlyRole(ADMIN_ROLE) {
        if (_custodyWallet == address(0)) revert InvalidAddress();
        if (_custodyWallet == custodyWallet) revert ValueUnchanged();
        custodyWallet = _custodyWallet;
        emit CustodyWalletSet(msg.sender, _custodyWallet);
    }

    /// @notice Sets the deposit fee in basis points
    /// @param _feeBps Fee in basis points (max 1000 = 10%)
    function setDepositFee(uint256 _feeBps) external onlyRole(ADMIN_ROLE) {
        if (_feeBps > MAX_FEE_BPS) revert InvalidFee();
        if (_feeBps == depositFeeBps) revert ValueUnchanged();
        depositFeeBps = _feeBps;
        emit DepositFeeSet(_feeBps);
    }

    /// @notice Sets the withdrawal fee in basis points
    /// @param _feeBps Fee in basis points (max 1000 = 10%)
    function setWithdrawalFee(uint256 _feeBps) external onlyRole(ADMIN_ROLE) {
        if (_feeBps > MAX_FEE_BPS) revert InvalidFee();
        if (_feeBps == withdrawalFeeBps) revert ValueUnchanged();
        withdrawalFeeBps = _feeBps;
        emit WithdrawalFeeSet(_feeBps);
    }

    /// @notice Sets the minimum deposit amount
    /// @param _minimum Minimum deposit amount in asset's base units
    function setMinimumDeposit(uint256 _minimum) external onlyRole(ADMIN_ROLE) {
        if (_minimum == minimumDeposit) revert ValueUnchanged();
        minimumDeposit = _minimum;
        emit MinimumDepositSet(_minimum);
    }

    /// @notice Sets the maximum deposit amount
    /// @param _maximum Maximum deposit amount in asset's base units
    function setMaximumDeposit(uint256 _maximum) external onlyRole(ADMIN_ROLE) {
        if (_maximum == maximumDeposit) revert ValueUnchanged();
        maximumDeposit = _maximum;
        emit MaximumDepositSet(_maximum);
    }

    /// @notice Sets the deposit cooldown period
    /// @param _cooldown Cooldown period in seconds (minimum time between deposit and withdrawal)
    function setDepositCooldown(uint256 _cooldown) external onlyRole(ADMIN_ROLE) {
        if (_cooldown > 7 days) revert InvalidCooldown();
        if (_cooldown == depositCooldown) revert ValueUnchanged();
        depositCooldown = _cooldown;
        emit DepositCooldownSet(_cooldown);
    }

    /// @notice Toggles whitelist status for an address
    /// @param account Address to whitelist/unwhitelist
    /// @param status True to whitelist, false to unwhitelist
    function toggleWhitelist(address account, bool status) external onlyRole(ADMIN_ROLE) {
        if (account == address(0)) revert InvalidAddress();
        if (whitelisted[account] == status) revert ValueUnchanged();
        whitelisted[account] = status;
        if (status) emit Whitelisted(account);
        else emit UnWhitelisted(account);
    }

    function _update(address from, address to, uint256 value) internal virtual override {
        // Allow minting (from == address(0)) and burning (to == address(0)) for anyone
        // For transfers (both from and to are non-zero), both must be whitelisted
        if (from != address(0) && to != address(0)) {
            if (!whitelisted[from]) revert AddressNotWhitelisted();
            if (!whitelisted[to]) revert AddressNotWhitelisted();
        }
        super._update(from, to, value);
    }

    /// @notice Pauses deposits and withdrawals
    function pause() external onlyRole(ADMIN_ROLE) {
        _pause();
    }

    /// @notice Unpauses deposits and withdrawals
    function unpause() external onlyRole(ADMIN_ROLE) {
        _unpause();
    }

    /// @notice Returns total assets in the vault based on supply and exchange rate
    /// @return Total assets denominated in the underlying asset
    function totalAssets() public view override returns (uint256) {
        uint256 supply = totalSupply();
        if (supply == 0) return 0;
        uint256 scaledAssets = (supply * exchangeRate()) / PRECISION;
        return scaledAssets / (10 ** _decimalsOffset());
    }

    /// @notice Returns the maximum amount of assets that can be deposited
    function maxDeposit(address receiver) public view virtual override returns (uint256) {
        return maximumDeposit;
    }

    /// @notice Returns the maximum amount of shares that can be minted
    function maxMint(address receiver) public view virtual override returns (uint256) {
        return previewDeposit(maximumDeposit);
    }

    /// @notice Previews shares received for a given deposit amount
    /// @param assets Amount of assets to deposit
    /// @return Shares that would be minted (accounting for fees)
    function previewDeposit(uint256 assets) public view virtual override returns (uint256) {
        uint256 assetsAfterFee = assets - (assets * depositFeeBps) / MAX_BPS;
        return _convertToShares(assetsAfterFee, Math.Rounding.Floor);
    }

    /// @notice Previews assets required to mint a given amount of shares
    /// @param shares Amount of shares to mint
    /// @return Assets required (accounting for fees)
    function previewMint(uint256 shares) public view virtual override returns (uint256) {
        uint256 assetsBeforeFee = _convertToAssets(shares, Math.Rounding.Ceil);
        return (assetsBeforeFee * MAX_BPS) / (MAX_BPS - depositFeeBps);
    }

    /// @notice Previews shares required to withdraw a given amount of assets
    /// @param assets Amount of assets to withdraw
    /// @return Shares that would be burned (accounting for fees)
    function previewWithdraw(uint256 assets) public view virtual override returns (uint256) {
        uint256 assetsBeforeFee = (assets * MAX_BPS) / (MAX_BPS - withdrawalFeeBps);
        return _convertToShares(assetsBeforeFee, Math.Rounding.Ceil);
    }

    /// @notice Previews assets received for redeeming a given amount of shares
    /// @param shares Amount of shares to redeem
    /// @return Assets that would be received (accounting for fees)
    function previewRedeem(uint256 shares) public view virtual override returns (uint256) {
        uint256 assetsBeforeFee = _convertToAssets(shares, Math.Rounding.Floor);
        return assetsBeforeFee - (assetsBeforeFee * withdrawalFeeBps) / MAX_BPS;
    }

    function _deposit(address caller, address receiver, uint256 assets, uint256 shares)
        internal
        virtual
        override
        nonReentrant
        whenNotPaused
    {
        if (caller == address(0) || receiver == address(0) || assets == 0 || shares == 0) {
            revert InvalidDeposit();
        }
        if (caller != receiver) revert NotAuthorized();
        if (assets < minimumDeposit) revert BelowMinimumDeposit();

        lastDepositTimestamp[receiver] = block.timestamp;

        uint256 fee = (assets * depositFeeBps) / MAX_BPS;
        _mint(receiver, shares);
        IERC20(asset()).safeTransferFrom(caller, address(this), assets - fee);
        if (fee > 0) IERC20(asset()).safeTransferFrom(caller, treasury, fee);
        emit Deposit(caller, receiver, assets, shares);
    }

    function _withdraw(address caller, address receiver, address owner, uint256 assets, uint256 shares)
        internal
        virtual
        override
        nonReentrant
        whenNotPaused
    {
        if (receiver == address(0) || owner == address(0) || assets == 0 || shares == 0) {
            revert InvalidWithdrawal();
        }
        if (caller != owner) {
            _spendAllowance(owner, caller, shares);
        }

        if (depositCooldown > 0) {
            if (block.timestamp < lastDepositTimestamp[owner] + depositCooldown) {
                revert DepositCooldownActive();
            }
        }

        uint256 assetsBeforeFee = _convertToAssets(shares, Math.Rounding.Floor);
        uint256 fee = (assetsBeforeFee * withdrawalFeeBps) / MAX_BPS;

        _burn(owner, shares);
        IERC20(asset()).safeTransfer(receiver, assetsBeforeFee - fee);
        if (fee > 0) IERC20(asset()).safeTransfer(treasury, fee);
        emit Withdraw(caller, receiver, owner, assets, shares);
    }

    /// @notice Transfers tokens to custody wallet
    /// @param token Token address to transfer
    /// @param amount Amount to transfer
    function transferToCustody(address token, uint256 amount) external onlyRole(ADMIN_ROLE) nonReentrant {
        address _custodyWallet = custodyWallet;
        if (_custodyWallet == address(0) || amount == 0) revert InvalidAddress();
        if (amount > IERC20(token).balanceOf(address(this))) revert InsufficientBalance();
        IERC20(token).safeTransfer(_custodyWallet, amount);
        emit AssetsTransferredToCustody(token, amount, _custodyWallet);
    }

    /// @notice Emergency recovery function to rescue stuck tokens or ETH
    /// @param token Token address (address(0) for ETH)
    /// @param amount Amount to recover
    function emergencyRecover(address token, uint256 amount) external onlyRole(DEFAULT_ADMIN_ROLE) nonReentrant {
        address _treasury = treasury;
        if (_treasury == address(0) || amount == 0) revert InvalidAddress();

        if (token == address(0)) {
            if (amount > address(this).balance) revert InsufficientBalance();
            (bool success,) = _treasury.call{value: amount}("");
            if (!success) revert TransferFailed();
        } else {
            if (amount > IERC20(token).balanceOf(address(this))) revert InsufficientBalance();
            IERC20(token).safeTransfer(_treasury, amount);
        }
        emit EmergencyRecovery(token, amount, _treasury);
    }

    function _decimalsOffset() internal view virtual override returns (uint8) {
        return 18 - IERC20Metadata(asset()).decimals();
    }

    function _convertToShares(uint256 assets, Math.Rounding rounding) internal view virtual override returns (uint256) {
        uint256 scaledAssets = assets * (10 ** _decimalsOffset());
        return scaledAssets.mulDiv(PRECISION, exchangeRate(), rounding);
    }

    function _convertToAssets(uint256 shares, Math.Rounding rounding) internal view virtual override returns (uint256) {
        uint256 scaledAssets = shares.mulDiv(exchangeRate(), PRECISION, rounding);
        return scaledAssets / (10 ** _decimalsOffset());
    }
}
