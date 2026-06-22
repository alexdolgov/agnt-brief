// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "./xBIFKN314LP.sol";
import "./Strategy.sol";
import "../PreventAutoSwap.sol";
import "../interfaces/IBIFKN314FactoryV2.sol";
import "../interfaces/IBIFKN314CALLEE.sol";
import "../interfaces/IERC314Errors.sol";
import "../interfaces/IERC314Events.sol";
import "../ChefBifkn/IBIFKNChefV2.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/Pausable.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Votes.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Nonces} from "@openzeppelin/contracts/utils/Nonces.sol";
import {ERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

/**
 * @title xBIFKN314
 * @dev This is a contract that implements the core functionality of the xBIFKN314 token.
 * The contract is used to create a token that can be used for liquidity provision and swapping.
 * It follows the Automated Market Maker (AMM) model using the constant product formula.
 * The contract allows users to add and remove liquidity, swap tokens, and perform flash swaps.
 * The contract also accrues fees and distributes them to the feeTo address.
 * The contract is initialized with a supply cap.
 * The contract also maintains a reference to the xBIFKN314LP contract for LP token management.
 * The contract allows for a factory address of address(0) to be set, which will disable fee distribution.
 * The contract owner can set the trading fee rate, maximum wallet percentage, and metadata URI.
 * The contract owner can also enable trading, set the fee collector address, and claim accrued trading fees.
 */

contract xBIFKN314 is
    ERC4626,
    ERC20Permit,
    ERC20Votes,
    AccessControl,
    Pausable,
    ReentrancyGuard,
    PreventAutoSwap,
    IERC314Errors,
    IERC314Events
{
    using Math for uint256;
    using SafeERC20 for IERC20;

    bytes32 public constant OWNER_ROLE = keccak256("OWNER_ROLE");
    bytes32 public constant VAULT_MANAGER_ROLE =
        keccak256("VAULT_MANAGER_ROLE");
    bytes32 public constant FEE_COLLECTOR_ROLE =
        keccak256("FEE_COLLECTOR_ROLE");

    /**
     * @dev Represents the address constant for the dead address.
     * The dead address is a predefined address with all zeros, used to represent
     * an address that is no longer in use or has been destroyed.
     */
    address public constant DEAD_ADDRESS =
        0x000000000000000000000000000000000000dEaD;

    /**
     * @dev The minimum liquidity required for a transaction.
     */
    uint256 public constant MINIMUM_LIQUIDITY = 10 ** 3;

    /**
     * @dev The base swap rate for the contract.
     * It represents a 0.3% fee for each swap.
     */
    uint256 public constant BASE_SWAP_RATE = 30; // 0.3% fee

    /**
     * @dev The SCALE_FACTOR constant represents the scaling factor used in the contract.
     * It is set to 10000.
     */
    uint256 public constant SCALE_FACTOR = 10000;

    /**
     * @dev The MAX_FEE_RATE constant represents the maximum fee rate that can be set.
     * It is set to 500, which corresponds to a fee rate of 5%.
     */
    uint256 public constant MAX_FEE_RATE = 500; // 5% fee

    /**
     * @dev Represents the metadata URI for the contract.
     */
    string public metadataURI;

    /**
     * @dev Represents the LP token contract for the BIFKN314 contract.
     */
    xBIFKN314LP public liquidityToken;

    /**
     * @dev A public boolean variable that indicates whether the contract is initialized or not.
     */
    bool public isInitialized;

    /**
     * @dev A boolean variable indicating whether trading is enabled or not.
     * Once trading is enabled, it cannot be disabled.
     * Trading must be enabled before users can swap tokens.
     * Trading can only be enabled by the contract owner.
     * Trading is disabled by default.
     */
    bool public tradingEnabled;

    /**
     * @dev A mapping that stores whether an address is exempt from the maximum wallet limit.
     */
    mapping(address => bool) public isMaxWalletExempt;

    /**
     * @dev Represents the last cumulative price of the native asset.
     */
    uint256 public price0CumulativeLast;

    /**
     * @dev Represents the last cumulative price of the token.
     */
    uint256 public price1CumulativeLast;

    /**
     * @dev Represents the timestamp of the last block for enabling twap
     */
    uint32 public blockTimestampLast;

    /**
     * @dev The address of the factory contract.
     */
    IBIFKN314FactoryV2 public factory;

    /**
     * @dev The maximum percentage of the total supply that a wallet can hold.
     * For example, a value of 100 represents 1% of the total supply.
     */
    uint256 public maxWalletPercent;

    /**
     * @dev A boolean variable that indicates whether the maximum wallet limit is enabled or not.
     */
    bool public maxWalletEnabled;

    /**
     * @dev Public variable to store the accrued native fees.
     */
    uint256 public accruedNativeFactoryFees;

    /**
     * @dev Public variable to store the amount of accrued token fees.
     */
    uint256 public accruedTokenFactoryFees;

    /**
     * @dev The tradingFeeRate variable represents the rate at which trading fees are charged.
     * It is a public variable, meaning it can be accessed and modified by other contracts and external accounts.
     * The value of tradingFeeRate is a uint256, which represents a non-negative integer.
     * If the value of tradingFeeRate is 0, no trading fees are charged.
     * 15 represents a trading fee of 0.15%.
     * 100 represents a trading fee of 1%.
     * If the value of tradingFeeRate is 500, a trading fee of 5% is charged.
     */
    uint256 public tradingFeeRate;

    /**
     * @dev Public variable to store the accrued trading fees.
     */
    uint256 public accruedNativeTradingFees;

    /**
     * @dev Public variable to store the accrued token trading fees.
     */
    uint256 public accruedTokenTradingFees;

    /**
     * @notice The strategy associated with this contract.
     * @dev This variable holds the strategy that will be used for certain operations within the contract.
     */
    Strategy public strategy;

    /**
     * @dev The owner of the contract. For IERC314 compliance.
     */
    address public owner;

    /**
     * @dev Modifier to ensure that a transaction is executed before the specified deadline.
     * @param deadline The deadline timestamp after which the transaction is considered expired.
     * @notice This modifier reverts the transaction if the current block timestamp is greater than or equal to the deadline.
     */
    modifier ensureDeadline(uint deadline) {
        if (block.timestamp >= deadline) revert TransactionExpired();
        _;
    }

    /**
     * @dev Modifier to check that the provided amount is not zero.
     * Reverts with `AmountMustBeGreaterThanZero` if the amount is zero.
     * @param amount The amount to check.
     */
    modifier notZero(uint256 amount) {
        if (amount == 0) revert AmountMustBeGreaterThanZero();
        _;
    }

    event StrategyUpdated(
        address indexed previousStrategy,
        address indexed newStrategy
    );
    event RewardsDeposited(address indexed caller, uint256 amount);
    event RewardsHeldInVault(address indexed caller, uint256 amount);

    error VaultNotInitialized();
    error VaultNotEmpty();

    /**
     * @dev Constructor for the xBIFKN314 contract.
     * It initializes the ERC4626 vault with a name and symbol
     * and deploys a new LP token contract.
     * @param name_ The name of the ERC4626 vault.
     * @param symbol_ The symbol of the ERC4626 vault.
     * @param underlyingAsset_ The underlying asset for the ERC4626 vault.
     * @param factoryAddress_ The address of the factory contract.
     * @notice The factory address must be a valid address.
     */
    constructor(
        string memory name_,
        string memory symbol_,
        IERC20 underlyingAsset_,
        address factoryAddress_
    ) ERC4626(underlyingAsset_) ERC20(name_, symbol_) ERC20Permit(name_) {
        if (factoryAddress_ == address(0)) revert InvalidAddress();
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(OWNER_ROLE, msg.sender);
        _grantRole(VAULT_MANAGER_ROLE, msg.sender);
        _grantRole(FEE_COLLECTOR_ROLE, msg.sender);

        // Deploy the LP token
        liquidityToken = new xBIFKN314LP(
            string(abi.encodePacked(name_, " LP Token")),
            "BLP"
        );
        factory = IBIFKN314FactoryV2(factoryAddress_);

        setMaxWalletPercent(0);
        setTradingFeeRate(50); // 0.5%
        owner = msg.sender;
    }

    /**
     * @dev Returns the number of decimals used to get its user representation.
     * This function overrides the `decimals` function from both ERC4626 and ERC20.
     * It calls the `super.decimals()` method to get the decimals value from the parent contracts.
     *
     * @return uint8 The number of decimals.
     */
    function decimals()
        public
        view
        virtual
        override(ERC4626, ERC20)
        returns (uint8)
    {
        return super.decimals();
    }

    /**
     * @dev Returns the total supply of the token.
     * This function overrides the totalSupply function from ERC20, IERC20, and xBIFKN314Rewards.
     *
     * @return uint256 The total supply of the token.
     */
    function totalSupply()
        public
        view
        override(ERC20, IERC20)
        returns (uint256)
    {
        return super.totalSupply();
    }

    /**
     * @dev required by solidity
     * @param from from address
     * @param to to address
     * @param value value to update to
     */
    function _update(
        address from,
        address to,
        uint256 value
    ) internal virtual override(ERC20, ERC20Votes) {
        super._update(from, to, value);
    }

    /**
     * @dev required by solidity
     * @param owner_ owner of the tokens
     */
    function nonces(
        address owner_
    ) public view override(ERC20Permit, Nonces) returns (uint256) {
        return super.nonces(owner_);
    }

    // =========================== OVERRIDES FOR ERC20Votes ===========================
    /**
     * @dev Returns the balance of `account` which can be used by Governor
     */
    function _getVotingUnits(
        address account
    ) internal view virtual override returns (uint256) {
        return balanceOf(account);
    }

    // =========================== OVERRIDES FOR ERC4626 ===========================
    /**
     * @dev Overrides the deposit function from the inherited contract.
     * Adds the deposit amount to the contract and mints shares to the recipient.
     * @param assets The amount of tokens to be deposited.
     * @param receiver The address of the recipient of the shares.
     * @return shares The number of share tokens minted.
     */
    function deposit(
        uint256 assets,
        address receiver
    )
        public
        override
        whenNotPaused
        nonReentrant
        notZero(assets)
        returns (uint256 shares)
    {
        shares = super.deposit(assets, receiver);
    }

    /**
     * @dev Overrides the withdraw function from the inherited contract.
     * Burns the shares from the sender and transfers the assets to the recipient.
     * @param assets The amount of assets to be withdrawn.
     * @param receiver The address of the recipient of the assets.
     * @param owner_ The address of the owner of the shares.
     * @return shares The number of shares burned.
     */
    function withdraw(
        uint256 assets,
        address receiver,
        address owner_
    ) public override nonReentrant notZero(assets) returns (uint256 shares) {
        shares = super.withdraw(assets, receiver, owner_);
    }

    /**
     * @dev Overrides the mint function from the inherited contract.
     * Mints shares to the recipient and updates the rewards.
     * @param shares The number of shares to be minted.
     * @param receiver The address of the recipient of the shares.
     * @return assets The amount of assets minted.
     * @custom:require totalSupply() > 0 "AmountTooLow"
     */
    function mint(
        uint256 shares,
        address receiver
    )
        public
        override
        whenNotPaused
        nonReentrant
        notZero(shares)
        returns (uint256 assets)
    {
        if (totalSupply() == 0) {
            revert VaultNotInitialized();
        }
        assets = super.mint(shares, receiver);
    }

    /**
     * @dev Overrides the redeem function from the inherited contract.
     * Burns the shares from the sender and transfers the assets to the recipient.
     * @param shares The number of shares to be redeemed.
     * @param receiver The address of the recipient of the assets.
     * @param owner_ The address of the owner of the shares.
     * @return assets The amount of assets redeemed.
     */
    function redeem(
        uint256 shares,
        address receiver,
        address owner_
    ) public override nonReentrant notZero(shares) returns (uint256 assets) {
        assets = super.redeem(shares, receiver, owner_);
    }

    /**
     * @notice Returns the total assets managed by the vault, including those managed by the strategy.
     * @dev This function overrides the totalAssets function from the parent contract.
     * @return The total amount of assets managed by the vault and the strategy.
     */
    function totalAssets() public view override returns (uint256) {
        uint256 vaultAssets = super.totalAssets(); // Fetch vault assets
        uint256 strategyAssets = 0;

        // Only include strategy assets if the strategy is set and valid
        if (address(strategy) != address(0)) {
            try strategy.totalAssets() returns (uint256 assets) {
                strategyAssets = assets;
            } catch {
                strategyAssets = 0; // Assume strategy assets are inaccessible
            }
        }

        return vaultAssets + strategyAssets; // Sum vault and strategy assets
    }

    /**
     * @notice Updates the strategy used by the vault, migrating all funds from the current strategy to the new one.
     * @dev This function handles the migration of funds from the current strategy to a new one.
     *      If the new strategy is set to `address(0)`, it disables the strategy and retains funds in the vault.
     *      The function ensures all funds are safely withdrawn from the old strategy before switching to the new strategy.
     * @param newStrategy The address of the new strategy to set. Use `address(0)` to disable the strategy.
     *
     * Requirements:
     * - Only the owner can call this function.
     * - The function is protected against reentrancy attacks.
     *
     * Emits:
     * - `StrategyUpdated` event indicating the change in strategy.
     */
    function updateStrategy(
        address newStrategy
    ) external nonReentrant onlyRole(VAULT_MANAGER_ROLE) {
        // Ensure funds are migrated from the old strategy
        if (address(strategy) != address(0)) {
            uint256 totalAssetsInOldStrategy = strategy.totalAssets();
            if (totalAssetsInOldStrategy > 0) {
                strategy.withdrawAll(); // Pull all funds from the old strategy
            }
        }

        // Update to the new strategy
        strategy = Strategy(newStrategy);

        // If the new strategy is set, deposit all funds into it
        if (newStrategy != address(0)) {
            uint256 vaultBalance = IERC20(asset()).balanceOf(address(this));
            if (vaultBalance > 0) {
                IERC20(asset()).safeTransfer(newStrategy, vaultBalance);
                Strategy(newStrategy).deposit();
            }
        }

        // Emit an event for transparency
        emit StrategyUpdated(address(strategy), newStrategy);
    }

    /**
     * @notice Removes the strategy from the vault, disabling the strategy and retaining funds in the vault.
     * @dev This function allows the VAULT_MANAGER_ROLE to remove the strategy from the vault.
     *     It is intended for emergency use only and should be used with caution.
     *     This will leave all funds that are in the strategy there and will need to be handled manually.
     *
     * Requirements:
     * - Only the owner can call this function.
     * - The function is protected against reentrancy attacks.
     *
     * Emits:
     * - `StrategyUpdated` event indicating the change in strategy.
     */
    function removeStrategy()
        external
        nonReentrant
        onlyRole(VAULT_MANAGER_ROLE)
    {
        if (address(strategy) != address(0)) {
            strategy = Strategy(address(0));
            emit StrategyUpdated(address(strategy), address(0));
        }
    }

    /**
     * @notice Deposits rewards into the vault.
     * @dev This function allows anyone to deposit rewards into the vault and ensure they are managed by the strategy.
     *    If a strategy is set, the rewards are deposited into the strategy.
     *    If no strategy is set, the rewards are held in the vault.
     * @param amount The amount of rewards to deposit.
     * Requirements:
     * - The amount to deposit must be greater than zero.
     * Emits:
     * - `RewardsDeposited` event indicating the amount of rewards deposited.
     * - `RewardsHeldInVault` event indicating the amount of rewards held in the vault.
     */
    function depositRewards(
        uint256 amount
    ) external nonReentrant notZero(amount) {
        IERC20(asset()).safeTransferFrom(msg.sender, address(this), amount);
        // If no strategy is set just leave the rewards in the vault
        if (address(strategy) == address(0)) {
            emit RewardsHeldInVault(msg.sender, amount);
            return;
        }

        // Get the current balance of rewards in the vault
        uint256 vaultBalance = IERC20(asset()).balanceOf(address(this));

        // Deposit rewards into the strategy
        IERC20(asset()).safeTransfer(address(strategy), vaultBalance);
        strategy.deposit();

        emit RewardsDeposited(msg.sender, amount);
    }

    /**
     * @dev Internal function to handle deposits. This function overrides the parent class's _deposit function.
     * It first calls the parent class's _deposit function, then transfers the assets to the strategy contract
     * and calls the strategy's deposit function if a strategy is set.
     *
     * @param caller The address of the caller initiating the deposit.
     * @param receiver The address of the receiver of the shares.
     * @param assets The amount of assets being deposited.
     * @param shares The amount of shares to be minted.
     */
    function _deposit(
        address caller,
        address receiver,
        uint256 assets,
        uint256 shares
    ) internal override {
        super._deposit(caller, receiver, assets, shares);

        if (address(strategy) != address(0)) {
            // Send all assets to the strategy
            // This prevents the vault from holding assets/idle funds
            uint256 balance = IERC20(asset()).balanceOf(address(this));
            IERC20(asset()).safeTransfer(address(strategy), balance);
            strategy.deposit();
        }
    }

    /**
     * @dev Withdraws assets from the contract.
     *
     * This function is called internally to handle the withdrawal process. If a strategy is set,
     * it will first withdraw the specified amount of assets from the strategy. Then, it calls the
     * parent contract's `_withdraw` function to complete the withdrawal process.
     *
     * @param caller The address of the caller initiating the withdrawal.
     * @param receiver The address that will receive the withdrawn assets.
     * @param owner_ The address of the owner of the assets being withdrawn.
     * @param assets The amount of assets to withdraw.
     * @param shares The number of shares to withdraw.
     */
    function _withdraw(
        address caller,
        address receiver,
        address owner_,
        uint256 assets,
        uint256 shares
    ) internal override {
        // If a strategy is set, withdraw assets from the strategy
        // Only withdraw the assets if the balance is less than the requested amount
        if (address(strategy) != address(0)) {
            uint256 balance = IERC20(asset()).balanceOf(address(this));
            if (balance < assets) {
                strategy.withdraw(assets - balance);
            }
        }
        super._withdraw(caller, receiver, owner_, assets, shares);
    }

    /**
     * @notice Transfers any remaining balance of the asset to the specified address if the vault is empty.
     * @dev This function can only be called by an account with the VAULT_MANAGER_ROLE.
     * @param to The address to which the remaining balance of the asset will be transferred.
     * @custom:reverts VaultNotEmpty if the total supply is not zero.
     */
    function sweepDust(address to) external onlyRole(VAULT_MANAGER_ROLE) {
        if (totalSupply() != 0) {
            revert VaultNotEmpty();
        }
        if (to == address(this)) {
            revert InvalidAddress();
        }
        IERC20 asset_ = IERC20(asset());
        uint256 balance = asset_.balanceOf(address(this));
        if (balance > 0) {
            asset_.safeTransfer(to, balance);
        }
    }

    /**
     * @dev Pauses the contract.
     * Can only be called by an account with the VAULT_MANAGER_ROLE.
     */
    function pause() public onlyRole(VAULT_MANAGER_ROLE) {
        _pause();
    }

    /**
     * @dev Unpauses the contract.
     * Can only be called by an account with the VAULT_MANAGER_ROLE.
     */
    function unpause() public onlyRole(VAULT_MANAGER_ROLE) {
        _unpause();
    }

    // =========================== END OVERRIDES ===========================

    /**
     * @dev Transfers tokens from the sender to the recipient.
     * Overrides the transfer function from the inherited contract.
     * If the recipient is this contract and autoSwap is not prevented,
     * then it automatically swaps tokens to native currency.
     * Otherwise, calls the transfer function from the inherited contract.
     * @param to The address receiving the tokens.
     * @param value The amount of tokens to transfer.
     * @return success A boolean indicating the success of the transfer.
     */
    function transfer(
        address to,
        uint256 value
    ) public override(IERC20, ERC20) returns (bool) {
        if (_checkAndPerformAutoSwap(to, value)) {
            return true;
        } else {
            _checkMaxWallet(to, value);
            return super.transfer(to, value);
        }
    }

    /**
     * @dev Transfers tokens from one address to another using an allowance.
     * Overrides the transferFrom function from the inherited contract.
     * Includes a max wallet check to ensure the recipient's balance does not exceed the limit.
     * @param from The address sending the tokens.
     * @param to The address receiving the tokens.
     * @param value The amount of tokens to transfer.
     * @return success A boolean indicating the success of the transfer.
     */
    function transferFrom(
        address from,
        address to,
        uint256 value
    ) public override(IERC20, ERC20) returns (bool) {
        if (_checkAndPerformAutoSwap(to, value)) {
            return true;
        } else {
            _checkMaxWallet(to, value);
            return super.transferFrom(from, to, value);
        }
    }

    /**
     * @dev Internal function to be called before any transfer of tokens.
     * Checks to see if an autoswap condition is true, if so it swaps tokens
     * @param to The address receiving the tokens.
     * @param amount The amount of tokens to transfer.
     * @return swapped A boolean indicating whether the tokens were swapped.
     */
    function _checkAndPerformAutoSwap(
        address to,
        uint256 amount
    ) internal returns (bool swapped) {
        if (to == address(this) && !_autoSwapIsPrevented()) {
            swapTokenToNative(
                amount,
                _calculateAutoSwapSlippage(amount, false),
                block.timestamp + 3 minutes
            );
            swapped = true;
        }
    }

    /**
     * @dev Adds liquidity to the contract by depositing tokens and native currency.
     * @param amountToken_ The amount of tokens to be deposited.
     * @param recipient The address of the recipient of the liquidity tokens.
     * @param deadline The deadline in unix time from the current timestamp for the transaction to occur.
     * @return liquidity The amount of liquidity tokens minted.
     */
    function addLiquidity(
        uint256 amountToken_,
        address recipient,
        uint256 deadline
    )
        public
        payable
        nonReentrant
        ensureDeadline(deadline)
        returns (uint256 liquidity)
    {
        address sender = _msgSender();

        if (amountToken_ == 0 || msg.value == 0) {
            revert AmountMustBeGreaterThanZero();
        }

        // get reserves
        (uint256 nativeReserve, uint256 tokenReserve) = getReserves();
        // the native reserve is the balance of the contract minus the value sent
        nativeReserve = nativeReserve - msg.value;

        uint256 lpTotalSupply = liquidityToken.totalSupply();
        uint256 amountNative = msg.value;
        uint256 amountToken = amountToken_;

        if (lpTotalSupply == 0) {
            uint256 _amountProduct = Math.sqrt(amountNative * amountToken);
            liquidity = _amountProduct - MINIMUM_LIQUIDITY;
            // Set owner of the first MINIMUM_LIQUIDITY tokens to the zero address
            liquidityToken.mint(DEAD_ADDRESS, MINIMUM_LIQUIDITY);
            // Liquidity is initialized
            isInitialized = true;
        } else {
            if (nativeReserve == 0 || tokenReserve == 0)
                revert InvalidReserves();

            // Determine the amount of token required to add liquidity
            // according to the native amount sent
            amountToken = (amountNative * tokenReserve) / nativeReserve;
            uint256 currentKValue = _calculateKValue(
                nativeReserve,
                tokenReserve
            );

            if (amountToken_ < amountToken) {
                revert AmountOfTokensLessThanMinimumRequired(
                    amountToken_,
                    amountToken
                );
            }

            /**
             * @dev Calculates the liquidity amount based on the given amounts of native currency and token.
             * The liquidity amount is determined by taking the minimum of two calculations:
             * 1. (amountNative * lpTotalSupply) / _nativeReserve
             * 2. (amountToken * lpTotalSupply) / _tokenReserve
             */
            liquidity = Math.min(
                (amountNative * lpTotalSupply) / nativeReserve,
                (amountToken * lpTotalSupply) / tokenReserve
            );

            /**
             * @dev Updates the reserves and checks the liquidity ratio.
             * The new k value is calculated by multiplying the new token reserve by the new native reserve.
             * If the new k value is less than the current k value, the transaction is reverted.
             */
            uint256 newNativeReserve = nativeReserve + amountNative;
            uint256 newTokenReserve = tokenReserve + amountToken;
            uint256 newKValue = newTokenReserve * newNativeReserve;
            if (newKValue < currentKValue) {
                revert DecreasesK();
            }
        }

        // check if liquidity is greater than 0
        if (liquidity == 0) {
            revert InsufficientLiquidityMinted();
        }
        // mint liquidity tokens to the liquidity provider
        liquidityToken.mint(recipient, liquidity);

        // Only transfer the necessary amount of tokens
        _internalTransfer(sender, address(this), amountToken);

        _updatePrices();

        emit AddLiquidity(sender, recipient, liquidity, msg.value, amountToken);
    }

    /**
     * @dev Removes liquidity from the contract by transferring native currency and tokens back to the liquidity provider.
     * @param amount The amount of liquidity to be removed.
     * @param recipient The address of the recipient of the native currency and tokens.
     * @param deadline The deadline in unix time from the current timestamp for the transaction to occur.
     * @return nativeAmount The amount of native currency received.
     * @return tokenAmount The amount of tokens received.
     * @notice The liquidity provider must have sufficient liquidity balance.
     */
    function removeLiquidity(
        uint256 amount,
        address recipient,
        uint256 deadline
    )
        public
        nonReentrant
        ensureDeadline(deadline)
        returns (uint256 nativeAmount, uint256 tokenAmount)
    {
        address sender = _msgSender();
        if (!isInitialized) {
            revert ContractIsNotInitialized();
        }

        uint256 lpTokenBalance = liquidityToken.balanceOf(sender);

        if (lpTokenBalance == 0) {
            revert YouHaveNoLiquidity();
        }
        if (amount > lpTokenBalance) {
            revert InsufficientLiquidity();
        }

        (nativeAmount, tokenAmount) = getAmountsForLP(amount);

        liquidityToken.burnFrom(sender, amount);

        _transferNative(recipient, nativeAmount);
        _internalTransfer(address(this), recipient, tokenAmount);

        emit RemoveLiquidity(
            sender,
            recipient,
            amount,
            nativeAmount,
            tokenAmount
        );

        _updatePrices();
    }

    /**
     * @dev Swaps native currency to tokens.
     * @param minimumTokensOut The minimum amount of tokens to receive in the swap.
     * @param deadline The deadline in unix time from current timestamp for the swap to occur.
     */
    function swapNativeToToken(
        uint256 minimumTokensOut,
        uint256 deadline
    )
        public
        payable
        nonReentrant
        ensureDeadline(deadline)
        returns (uint256[] memory amounts)
    {
        (uint256 nativeReserve, uint256 tokenReserve) = getReserves();
        uint256 nativeIn = msg.value;
        address sender = _msgSender();

        nativeReserve = nativeReserve - nativeIn;

        (uint256 tokensBought, uint256 factoryFee, uint256 tradingFee) = _swap(
            nativeIn,
            minimumTokensOut,
            nativeReserve,
            tokenReserve
        );

        accruedNativeTradingFees += tradingFee;
        _handleFactoryFees(factoryFee, true);

        _checkMaxWallet(sender, tokensBought);
        _internalTransfer(address(this), sender, tokensBought);

        _updatePrices();
        amounts = new uint256[](2);
        amounts[0] = nativeIn;
        amounts[1] = tokensBought;
        emit Swap(sender, 0, nativeIn, tokensBought, 0, false);
    }

    /**
     * @dev Swaps a specified amount of tokens for native currency.
     * @param tokensSold The amount of tokens to be sold.
     * @param minimumNativeOut The minimum amount of native currency expected to be received.
     * @param deadline The deadline in unix time from current timestamp for the swap to occur.
     */
    function swapTokenToNative(
        uint256 tokensSold,
        uint256 minimumNativeOut,
        uint256 deadline
    )
        public
        nonReentrant
        ensureDeadline(deadline)
        returns (uint256[] memory amounts)
    {
        (uint256 nativeReserve, uint256 tokenReserve) = getReserves();

        address sender = _msgSender();

        (uint256 nativeBought, uint256 factoryFee, uint256 tradingFee) = _swap(
            tokensSold,
            minimumNativeOut,
            tokenReserve,
            nativeReserve
        );

        accruedTokenTradingFees += tradingFee;
        _handleFactoryFees(factoryFee, false);

        _internalTransfer(sender, address(this), tokensSold);
        _transferNative(sender, nativeBought);

        _updatePrices();
        amounts = new uint256[](2);
        amounts[0] = tokensSold;
        amounts[1] = nativeBought;
        emit Swap(sender, tokensSold, 0, 0, nativeBought, false);
    }

    /**
     * @dev Calculates the amount of output tokens based on the input amount and reserves.
     * This accounts for all fees including the factory fee, trading fee, and base swap rate.
     * @param inputAmount The amount of input tokens.
     * @param inputReserve The amount of input tokens in the reserve.
     * @param outputReserve The amount of output tokens in the reserve.
     * @return outputAmount The amount of output tokens.
     * @return factoryFee The amount of factory fee.
     * @return tradingFee The amount of trading fee.
     */
    function getAmountOut(
        uint256 inputAmount,
        uint256 inputReserve,
        uint256 outputReserve
    )
        public
        view
        returns (uint256 outputAmount, uint256 factoryFee, uint256 tradingFee)
    {
        // Scale by 1e4 to avoid rounding errors
        // Since the SCALE_FACTOR is 1e4, the precision total is 1e8
        // This strikes a good balance between risk of overflow and precision
        uint256 precision = 1e4;
        uint256 feeFactor = SCALE_FACTOR - (BASE_SWAP_RATE + tradingFeeRate);
        uint256 inputAmountScaled = inputAmount * precision;
        // if reserves are greater than 0
        if (inputReserve > 0 && outputReserve > 0) {
            factoryFee = _calculateFactoryFee(inputAmountScaled) / precision;
            tradingFee = _calculateTradingFee(inputAmountScaled) / precision;
            uint256 inputAmountWithFee = inputAmountScaled * feeFactor;
            uint256 numerator = inputAmountWithFee * outputReserve;
            uint256 denominator = (inputReserve * SCALE_FACTOR * precision) +
                inputAmountWithFee;
            unchecked {
                outputAmount = numerator / denominator;
            }
        } else {
            revert InvalidReserves();
        }
    }

    /**
     * @dev Calculates the input amount and factory fee based on the output amount, output reserve, and input reserve.
     * This accounts for all fees including the factory fee, trading fee, and base swap rate.
     * @param outputAmount The desired output amount.
     * @param outputReserve The current output reserve.
     * @param inputReserve The current input reserve.
     * @return inputAmount The calculated input amount.
     */
    function getAmountIn(
        uint256 outputAmount,
        uint256 inputReserve,
        uint256 outputReserve
    ) public view returns (uint256 inputAmount) {
        // Scale by 1e4 to avoid rounding errors
        // Since the SCALE_FACTOR is 1e4, the precision total is 1e8
        // This strikes a good balance between risk of overflow and precision
        uint256 precision = 1e4;
        uint256 feeFactor = SCALE_FACTOR - (BASE_SWAP_RATE + tradingFeeRate);
        feeFactor = feeFactor * precision;
        // Ensure reserves are greater than 0
        if (outputReserve > 0 && inputReserve > 0) {
            uint256 numerator = inputReserve *
                outputAmount *
                SCALE_FACTOR *
                precision;
            uint256 denominator = (outputReserve - outputAmount) * feeFactor;
            unchecked {
                inputAmount = (numerator / denominator) + 1;
            }
        } else {
            revert InvalidReserves();
        }
    }

    /**
     * @dev Returns the number of tokens held by the contract.
     * @return tokenBalance The token balance of the contract.
     */
    function getTokensInContract() public view returns (uint256 tokenBalance) {
        tokenBalance = super.balanceOf(address(this));
    }

    /**
     * @dev Returns the reserves of the contract.
     * If the fees are greater than the reserves, the function returns 0 for the respective reserve.
     * @return amountNative The native reserve balance.
     * @return amountToken The token reserve balance.
     */
    function getReserves()
        public
        view
        returns (uint256 amountNative, uint256 amountToken)
    {
        uint256 totalNative = address(this).balance;
        uint256 totalNativeFees = accruedNativeTradingFees +
            accruedNativeFactoryFees;
        uint256 totalToken = getTokensInContract();
        uint256 totalTokenFees = accruedTokenTradingFees +
            accruedTokenFactoryFees;

        // Use `>=` to ensure that if fees consume all reserves, the reserve is considered 0.
        amountNative = totalNative >= totalNativeFees
            ? totalNative - totalNativeFees
            : 0;
        amountToken = totalToken >= totalTokenFees
            ? totalToken - totalTokenFees
            : 0;
    }

    /**
     * @dev Gets the amount of tokens held by the liquidity provider.
     * @param amount The amount of liquidity tokens to be converted.
     * @return nativeAmount The amount of native currency held by the liquidity provider.
     * @return tokenAmount The amount of tokens held by the liquidity provider.
     */
    function getAmountsForLP(
        uint256 amount
    ) public view returns (uint256 nativeAmount, uint256 tokenAmount) {
        if (amount == 0) revert AmountMustBeGreaterThanZero();
        (uint256 nativeReserve, uint256 tokenReserve) = getReserves();

        if (nativeReserve == 0 || tokenReserve == 0) revert InvalidReserves();

        uint256 totalLPSupply = liquidityToken.totalSupply();
        if (totalLPSupply == 0) revert InsufficientLiquidity();

        nativeAmount = (amount * nativeReserve) / totalLPSupply;
        tokenAmount = (amount * tokenReserve) / totalLPSupply;

        if (nativeAmount == 0 || tokenAmount == 0)
            revert InsufficientLiquidity();
    }

    /**
     * @dev Enables trading by setting the `tradingEnabled` flag to true.
     * Can only be called by the contract owner.
     * Once trading is enabled, it cannot be disabled.
     */
    function setTradingEnabled() public onlyRole(OWNER_ROLE) {
        tradingEnabled = true;
    }

    /**
     * @dev Sets the fee rate for trading.
     * @param feeRate The new fee rate to be set.
     * Requirements:
     * - `feeRate` must be less than or equal to 50 (5%).
     * Only the contract owner can call this function.
     */
    function setTradingFeeRate(uint256 feeRate) public onlyRole(OWNER_ROLE) {
        if (feeRate > MAX_FEE_RATE) revert InvalidFeeRate(); // 5%
        tradingFeeRate = feeRate;
    }

    /**
     * @dev Sets the maximum wallet percentage.
     * @param maxWalletPercent_ The maximum wallet percentage to be set.
     * Requirements:
     * - `maxWalletPercent_` must be less than or equal to 10000 (100%)
     * and greater than 0 if maxWalletEnabled is true.
     * Only the contract owner can call this function.
     */
    function setMaxWalletPercent(
        uint256 maxWalletPercent_
    ) public onlyRole(OWNER_ROLE) {
        if (maxWalletPercent_ > 10000) revert InvalidMaxWalletPercent(); // 100%
        if (maxWalletEnabled && maxWalletPercent_ == 0)
            revert InvalidMaxWalletPercent();
        maxWalletPercent = maxWalletPercent_;
    }

    /**
     * @dev Enables or disables the maximum wallet limit.
     * @param enabled The boolean value to set the maximum wallet limit.
     * Requirements:
     * - Only the contract owner can call this function.
     */
    function setMaxWalletEnabled(bool enabled) public onlyRole(OWNER_ROLE) {
        if (enabled && maxWalletPercent == 0) revert InvalidMaxWalletPercent();
        maxWalletEnabled = enabled;
    }

    /**
     * @dev Sets the metadata URI for the token.
     * @param newURI The new metadata URI to be set.
     * Requirements:
     * - Only the contract owner can call this function.
     */
    function setMetadataURI(string memory newURI) public onlyRole(OWNER_ROLE) {
        metadataURI = newURI;
    }

    /**
     * @dev Sets the maximum wallet exemption status for a given address.
     * @param addressToChange The address for which the maximum wallet exemption status is to be set.
     * @param isExempt A boolean value indicating whether the address should be exempt from the maximum wallet limit.
     * Only the contract owner can call this function.
     * Requirements:
     * - The address to change cannot be the zero address, the contract address, or the dead address.
     * @notice If the address to change is the zero address, the contract address, or the dead address, the transaction will revert.
     */
    function setMaxWalletExempt(
        address addressToChange,
        bool isExempt
    ) public onlyRole(OWNER_ROLE) {
        if (
            !isExempt &&
            (addressToChange == address(0) ||
                addressToChange == address(this) ||
                addressToChange == DEAD_ADDRESS)
        ) revert InvalidAddress();
        isMaxWalletExempt[addressToChange] = isExempt;
    }

    /**
     * @dev Allows the fee collector to claim accrued trading fees.
     * The function transfers the accrued native currency and token trading fees to the fee collector.
     * The accrued amounts are reset to zero after the transfer.
     * Emits a `FeesCollected` event with the fee collector's address, accrued native amount, and accrued token amount.
     *
     * Requirements:
     * - The caller must be the fee collector.
     */
    function claimFees() external onlyRole(FEE_COLLECTOR_ROLE) {
        uint256 accruedNativeAmount = accruedNativeTradingFees;
        uint256 accruedTokenAmount = accruedTokenTradingFees;
        address sender = _msgSender();

        if (accruedNativeAmount == 0 && accruedTokenAmount == 0)
            revert NoFeesToClaim();

        accruedNativeTradingFees = 0;

        // If the accrued token amount is greater than the balance of the contract
        // set the accrued token amount to the balance of the contract
        if (accruedTokenAmount > getTokensInContract())
            accruedTokenAmount = getTokensInContract();

        accruedTokenTradingFees = 0;

        _transferNative(sender, accruedNativeAmount);
        _internalTransfer(address(this), sender, accruedTokenAmount);

        emit FeesCollected(sender, accruedNativeAmount, accruedTokenAmount);
    }

    /**
     * @dev Calculates the product of two input values.
     * @param reserve1 The first input value.
     * @param reserve2 The second input value.
     * @return kValue_ The product of the two input values.
     */
    function _calculateKValue(
        uint256 reserve1,
        uint256 reserve2
    ) internal pure returns (uint256 kValue_) {
        kValue_ = reserve1 * reserve2;
    }

    /**
     * @dev Internal function to calculate the trading fee for a given amount.
     * @param amount The amount to apply the fee to.
     * @return amountForFee The amount to be deducted as a trading fee.
     * @notice If the amount is zero, the transaction will revert.
     * @notice If the trading fee rate is zero, the function will return zero.
     * @notice If the trading fee rate is 500, the function will return 5% of the amount.
     */
    function _calculateTradingFee(
        uint256 amount
    ) internal view returns (uint256 amountForFee) {
        // If the trading fee rate is 0, return 0
        if (tradingFeeRate == 0) amountForFee = 0;
        else {
            amountForFee = (amount * tradingFeeRate) / SCALE_FACTOR;
        }
    }

    /**
     * @dev Calculates the factory fee based on the input amount.
     * @param inputAmount The input amount for which the factory fee needs to be calculated.
     * @return amountForFee The amount to be deducted as a factory fee.
     * @notice If the input amount is zero, the transaction will revert.
     * @notice If the factory contract is not set, the function will return zero.
     */
    function _calculateFactoryFee(
        uint256 inputAmount
    ) internal view returns (uint256 amountForFee) {
        if (address(factory) == address(0)) {
            amountForFee = 0;
        } else {
            amountForFee = (inputAmount * factory.feeRate()) / SCALE_FACTOR;
        }
    }

    /**
     * @dev Checks if the recipient's wallet balance exceeds the maximum allowed amount.
     * @param recipient The address of the recipient.
     * @param amount The amount to be transferred.
     * @notice If the max wallet limit is exceeded, the transaction will revert.
     */
    function _checkMaxWallet(address recipient, uint256 amount) internal view {
        if (!maxWalletEnabled) return; // Skip if max wallet is not enabled
        // Only apply the max wallet check if the recipient is not (this) contract, address(0), or the dead address
        // and if the recipient is not exempt from the max wallet limit
        if (
            recipient == address(this) ||
            recipient == address(0) ||
            recipient == DEAD_ADDRESS ||
            isMaxWalletExempt[recipient]
        ) {
            return;
        }

        uint256 maxWalletAmount = ((totalSupply() * maxWalletPercent) / 10000);
        if (balanceOf(recipient) + amount > maxWalletAmount) {
            revert MaxWalletAmountExceeded();
        }
    }

    /**
     * @dev Internal function to check for swap errors.
     * @param tokensSold The number of tokens sold in the swap.
     * @param nativeReserve The native reserve balance.
     * @param tokenReserve The token reserve balance.
     * @notice If the contract is not initialized, the transaction will revert.
     * @notice If the reserves are invalid, the transaction will revert.
     * @notice If the swap is not enabled, the transaction will revert.
     * @notice If the amount of tokens sold is zero, the transaction will revert.
     */
    function _checkForSwapErrors(
        uint256 tokensSold,
        uint256 nativeReserve,
        uint256 tokenReserve
    ) internal view {
        if (!isInitialized) revert ContractIsNotInitialized();
        if (!tradingEnabled) revert SwapNotEnabled();
        if (tokensSold == 0) {
            revert AmountMustBeGreaterThanZero();
        }
        if (nativeReserve == 0 || tokenReserve == 0) revert InvalidReserves();
    }

    /**
     * @dev Performs a swap operation between two reserves.
     * @param amountIn The amount of tokens being swapped in.
     * @param minimumAmountOut The minimum amount of tokens expected to be received.
     * @param reserveIn The reserve of the input token.
     * @param reserveOut The reserve of the output token.
     * @return amountOut The amount of tokens received after the swap.
     * @return factoryFee The fee charged by the factory for the swap.
     * @return tradingFee The fee charged for the swap.
     */
    function _swap(
        uint256 amountIn,
        uint256 minimumAmountOut,
        uint256 reserveIn,
        uint256 reserveOut
    )
        internal
        view
        returns (uint256 amountOut, uint256 factoryFee, uint256 tradingFee)
    {
        _checkForSwapErrors(amountIn, reserveIn, reserveOut);

        uint256 currentKValue = _calculateKValue(reserveIn, reserveOut);

        (amountOut, factoryFee, tradingFee) = getAmountOut(
            amountIn,
            reserveIn,
            reserveOut
        );

        if (amountOut == 0) revert BoughtAmountTooLow();
        if (amountOut < minimumAmountOut) revert SlippageToleranceExceeded();

        uint256 newReserveIn = reserveIn + (amountIn - tradingFee - factoryFee);

        uint256 newReserveOut = reserveOut - amountOut;

        if (_calculateKValue(newReserveIn, newReserveOut) < currentKValue)
            revert DecreasesK();
    }

    /**
     * @dev Calculates the cumulative prices based on the provided native and token reserves.
     */
    function _updatePrices() private {
        (uint256 nativeReserve, uint256 tokenReserve) = getReserves();

        if (nativeReserve == 0 || tokenReserve == 0) revert InvalidReserves();

        uint32 blockTimestamp = uint32(block.timestamp % 2 ** 32);
        uint32 timeElapsed = blockTimestamp - blockTimestampLast; // Overflow is desired

        if (timeElapsed > 0 && nativeReserve != 0 && tokenReserve != 0) {
            // Simulate fixed-point precision using a scaling factor
            uint256 scalingFactor = 2 ** 112;

            // Calculate price ratios with scaling to simulate UQ112x112 precision
            // Reflects the price of token in native currency
            uint256 price0Ratio = (nativeReserve * scalingFactor) /
                tokenReserve;
            // Reflects the price of native currency in token
            uint256 price1Ratio = (tokenReserve * scalingFactor) /
                nativeReserve;

            // Update cumulative prices
            price0CumulativeLast += price0Ratio * timeElapsed;
            price1CumulativeLast += price1Ratio * timeElapsed;

            // Update last block timestamp
            blockTimestampLast = blockTimestamp;
        }

        emit PricesUpdated(
            price0CumulativeLast,
            price1CumulativeLast,
            blockTimestampLast
        );
    }

    /**
     * @dev Accrues fees to the contract.
     * @param factoryFee The amount of fees to be accrued.
     * @param native A boolean value indicating whether the fee is in native currency or not.
     */
    function _handleFactoryFees(uint256 factoryFee, bool native) internal {
        // Check if the factory contract is set
        if (address(factory) != address(0)) {
            address feeTo = factory.feeTo();
            uint256 distributionThreshold = factory.feeDistributionThreshold();

            // Accrue fees and distribute if threshold is reached
            if (feeTo != address(0)) {
                if (native) {
                    accruedNativeFactoryFees += factoryFee;
                } else {
                    accruedTokenFactoryFees += factoryFee;
                }

                _distributeFees(feeTo, distributionThreshold);
            }
        }
    }

    /**
     * @dev Distributes fees to a specified address if the distribution threshold is reached.
     * @param feeTo The address to which the fees will be distributed.
     * @param distributionThreshold The threshold at which fees will be distributed.
     */
    function _distributeFees(
        address feeTo,
        uint256 distributionThreshold
    ) internal {
        uint256 nativeFees = accruedNativeFactoryFees;
        uint256 tokenFees = accruedTokenFactoryFees;
        bool nativeDistributed = false;
        bool tokenDistributed = false;

        // Only distribute fees if either the native or token fees are greater than 0
        if (nativeFees == 0 && tokenFees == 0) return;

        // Distribute native fees if threshold is reached
        if (nativeFees > 0 && nativeFees >= distributionThreshold) {
            accruedNativeFactoryFees = 0;
            nativeDistributed = true;
        }

        // Distribute token fees if threshold is reached
        if (tokenFees > 0) {
            (uint256 nativeReserve, uint256 tokenReserve) = getReserves();

            uint256 nativeAmount = (tokenFees * nativeReserve) / tokenReserve;

            if (nativeAmount >= distributionThreshold) {
                if (tokenFees > getTokensInContract()) {
                    tokenFees = getTokensInContract();
                }
                accruedTokenFactoryFees = 0;
                tokenDistributed = true;
            }
        }

        if (nativeDistributed) _transferNative(feeTo, nativeFees);
        if (tokenDistributed)
            _internalTransfer(address(this), feeTo, tokenFees);

        // Emit event if fees are distributed
        if (nativeDistributed || tokenDistributed)
            emit FeesDistributed(feeTo, nativeFees, tokenFees);
    }

    /**
     * @dev Internal function to transfer native currency to a specified address.
     * @param to The address to transfer the native currency to.
     * @param amount The amount of native currency to transfer.
     * @notice If the transfer fails, the transaction will revert.
     */
    function _transferNative(address to, uint256 amount) internal {
        if (amount == 0) return;
        if (to == address(0)) revert InvalidAddress();

        if (amount > address(this).balance) {
            amount = address(this).balance;
        }
        (bool success, ) = payable(to).call{value: amount}("");
        if (!success) revert FailedToSendNativeCurrency();
    }

    /**
     * @dev Calculates the minimum amount out with slippage for an auto swap.
     * @param amount The input amount.
     * @param isNative A boolean indicating whether the input is in the native token or not.
     * @return amountOutMin The minimum amount out with slippage.
     */
    function _calculateAutoSwapSlippage(
        uint256 amount,
        bool isNative
    ) internal view returns (uint256 amountOutMin) {
        (uint256 nativeReserve, uint256 tokenReserve) = getReserves();
        (uint256 amountOut, , ) = getAmountOut(
            amount,
            isNative ? nativeReserve : tokenReserve,
            isNative ? tokenReserve : nativeReserve
        );
        amountOutMin = amountOut - (amountOut / 20); // 5% slippage
    }

    /**
     * @dev Internal function to transfer tokens from one address to another.
     * Overrides the internal transfer function from the inherited contract.
     * Calls the transfer function from the inherited contract.
     * This function is specifically used when transferring tokens to the contract
     * for the purpose of adding liquidity, swapping, or flash swapping.
     * @param from The address to transfer tokens from.
     * @param to The address to transfer tokens to.
     * @param value The amount of tokens to transfer.
     */
    function _internalTransfer(
        address from,
        address to,
        uint256 value
    ) internal {
        super._transfer(from, to, value);
    }

    // Function to receive native
    /**
     * @dev Fallback function to receive native currency.
     * It calls the `swapNativeToToken` function with a minimum token out amount of 0 (i.e. infinite slippage).
     */
    receive() external payable {
        if (!_autoSwapIsPrevented()) {
            swapNativeToToken(
                _calculateAutoSwapSlippage(msg.value, true),
                block.timestamp + 3 minutes
            );
        }
    }
}
