// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";
import {IGlpStrategy} from "./interfaces/IGLPStrategy.sol";
import {Errors} from "./errors.sol";
import {DAO_TREASURY} from "./constants.sol";

contract GLPVault is ERC4626, Pausable, Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    IGlpStrategy public strategy;
    bool public bootstrapped;
    address public pauser;
    uint256 public maxAllowedNAVChange = 200; // 2% max NAV change when setting a new strategy
    uint256 public constant BIPS = 10000; // 1 BIP = 0.01%

    event GLPStrategySet(address indexed strategy);
    event Bootstrapped(address indexed daoTreasury, uint256 shares);
    event PauserSet(address indexed pauser);
    event DAOSharesBurned(address indexed daoTreasury, uint256 shares);
    event MaxAllowedNAVChangeUpdated(uint256 newMaxAllowedNAVChange);

    /// @notice Modifier to ensure the vault is bootstrapped and the strategy is set
    modifier whenBootstrapped() {
        if (!bootstrapped) {
            revert Errors.NotBootstrapped();
        }
        _;
    }

    modifier onlyPauser() {
        if (msg.sender != pauser) {
            revert Errors.NotPauser();
        }
        _;
    }

    /*───────── CONSTRUCTOR ─────*/
    constructor(IERC20 _weth) ERC20("Guardian gLP Vault Share", "glpSHARE") ERC4626(_weth) Ownable(_msgSender()) {}

    /* ───────── ADMIN ───────── */

    /// @notice Set the GLP strategy and approve it to pull WETH from this vault
    /// @param _strategy The strategy contract to set
    function setStrategy(IGlpStrategy _strategy) external onlyOwner {
        if (address(_strategy) == address(0)) revert Errors.NullAddress();
        if (address(_strategy).code.length == 0) revert Errors.NotAContract();
        // If old strategy exists, revoke its approval
        if (address(strategy) != address(0)) {
            IERC20(asset()).approve(address(strategy), 0); // revoke approval
            // Do not allow more than 2% asset increase or decrease when setting a new strategy. This will prevent
            // arbitrage opportunities.
            uint256 newTotalAssets = _strategy.totalAssets() + IERC20(asset()).balanceOf(address(this));
            if (
                newTotalAssets < (totalAssets() * (BIPS - maxAllowedNAVChange)) / BIPS
                    || newTotalAssets > (totalAssets() * (BIPS + maxAllowedNAVChange)) / BIPS
            ) {
                revert Errors.InvalidStrategy();
            }
        }
        strategy = _strategy;
        // Approve the strategy to pull WETH from this vault
        IERC20(asset()).approve(address(_strategy), type(uint256).max);
        emit GLPStrategySet(address(_strategy));
    }

    /// @notice Set the pauser address, which can pause/unpause the vault
    /// @param _pauser The address to set as the pauser
    function setPauser(address _pauser) external onlyOwner {
        if (_pauser == address(0)) revert Errors.NullAddress();
        pauser = _pauser;
        emit PauserSet(_pauser);
    }

    /// @notice Set the maximum allowed NAV change when setting a new strategy
    /// @param _maxAllowedNAVChange The new maximum allowed NAV change in basis points
    function setMaxAllowedNAVChange(uint256 _maxAllowedNAVChange) external onlyOwner {
        if (_maxAllowedNAVChange == 0 || _maxAllowedNAVChange > BIPS) revert Errors.InvalidNAVChangeThreshold();
        maxAllowedNAVChange = _maxAllowedNAVChange;
        emit MaxAllowedNAVChangeUpdated(_maxAllowedNAVChange);
    }

    /// @notice Bootstrap the vault by minting shares to the DAO treasury
    function bootstrap() external {
        if (bootstrapped) revert Errors.AlreadyBootstrapped();
        if (address(strategy) == address(0)) revert Errors.StrategyNotSet();
        uint256 nav = totalAssets(); // e.g. 500 WETH ≈ $1 M
        uint256 shares = nav; // 1:1 initial price (or pick any ratio)
        _mint(DAO_TREASURY, shares); // internal ERC20 mint, no assets move
        // Make sure balance of DAO treasury is reflected in shares
        if (shares == 0) revert Errors.InsufficientShares();
        bootstrapped = true;
        emit Bootstrapped(DAO_TREASURY, shares);
    }

    /// @notice Pause the vault, preventing deposits/withdrawals
    function pause() external onlyPauser whenNotPaused {
        _pause();
    }

    /// @notice Unpause the vault, allowing deposits/withdrawals
    function unpause() external onlyPauser whenPaused {
        _unpause();
    }

    /* ───────── VIEW ────────── */
    /// @inheritdoc ERC4626
    function totalAssets() public view override returns (uint256) {
        return IERC20(asset()).balanceOf(address(this)) + strategy.totalAssets();
    }

    /* ───────── External ────────── */
    // All external function overrides are to ensure the vault is bootstrapped

    /// @inheritdoc ERC4626
    function deposit(uint256 assets, address receiver)
        public
        override
        whenBootstrapped
        whenNotPaused
        returns (uint256 shares)
    {
        return super.deposit(assets, receiver);
    }

    /// @inheritdoc ERC4626
    function mint(uint256 shares, address receiver)
        public
        override
        whenBootstrapped
        whenNotPaused
        returns (uint256 assets)
    {
        return super.mint(shares, receiver);
    }

    /// @inheritdoc ERC4626
    function withdraw(uint256 assets, address receiver, address owner)
        public
        override
        whenBootstrapped
        whenNotPaused
        returns (uint256 shares)
    {
        return super.withdraw(assets, receiver, owner);
    }

    /// @inheritdoc ERC4626
    function redeem(uint256 shares, address receiver, address owner)
        public
        override
        whenBootstrapped
        whenNotPaused
        returns (uint256 assets)
    {
        return super.redeem(shares, receiver, owner);
    }

    /// @notice Burn dao shares function available only to the owner.
    /// @notice This function will allow Radiant DAO to incentivize the community by burning shares.
    /// @notice Can only be called when the vault is bootstrapped and paused to prevent sandwich attacks.
    /// @param shares The amount of shares to burn
    function burnDaoShares(uint256 shares) external onlyOwner whenBootstrapped whenPaused {
        if (shares == 0) revert Errors.InsufficientShares();
        if (shares > balanceOf(DAO_TREASURY)) revert Errors.InsufficientShares();
        _burn(DAO_TREASURY, shares); // internal ERC20 burn, no assets move
        emit DAOSharesBurned(DAO_TREASURY, shares);
    }

    /* ──────── INTERNAL: DEPOSIT / WITHDRAW OVERRIDES ─────── */

    /// @dev Forward any freshly‑deposited WETH to the strategy after shares are minted.
    /// @inheritdoc ERC4626
    function _deposit(address caller, address receiver, uint256 assets, uint256 shares)
        internal
        override
        nonReentrant
    {
        super._deposit(caller, receiver, assets, shares);
        // Check that shares minted are greater than 0
        if (shares == 0) revert Errors.InsufficientShares();
        uint256 liquid = IERC20(asset()).balanceOf(address(this));
        if (liquid > 0) {
            strategy.invest(liquid);
        }
    }

    /// @dev Pull required WETH from the strategy before burning shares & transferring to receiver.
    /// @inheritdoc ERC4626
    function _withdraw(address caller, address receiver, address owner, uint256 assets, uint256 shares)
        internal
        override
        nonReentrant
    {
        uint256 liquid = IERC20(asset()).balanceOf(address(this));
        if (liquid < assets) {
            uint256 shortfall = assets - liquid;
            strategy.divest(shortfall); // will revert if treasury lacks WETH / allowance
        }

        super._withdraw(caller, receiver, owner, assets, shares);
    }
}
