// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {
    AccessControlUpgradeable
} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {
    Initializable
} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {
    PausableUpgradeable
} from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import {
    UUPSUpgradeable
} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {
    OwnableUpgradeable
} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {
    ReentrancyGuardUpgradeable
} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {
    SafeERC20
} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {
    IERC20Metadata
} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IndexToken} from "./IndexToken.sol";
import {IPriceOracle} from "./interfaces/IPriceOracle.sol";

/**
 * @title Multichainz Index Vault (v1, single-chain)
 * @notice Accepts stable deposits, mints shares, tracks NAV, redeems to stables, accrues AUM & entry/exit fees.
 * @dev Roles:
 *  - DEFAULT_ADMIN_ROLE: can assign roles, set caps
 *  - GOVERNANCE_ROLE: set fee params, asset list, weights, oracle feeds, routers
 *  - MANAGER_ROLE: perform rebalances / swaps via whitelisted routers
 *  - PAUSER_ROLE: pause/unpause
 *
 *  Units/precision:
 *   - Prices in 1e8 USD (oracle)
 *   - Weights in basis points (BPS = 1e4)
 *   - ERC20 amounts in token decimals
 *   - NAV per share implicitly 1e18 via share math
 */
contract Vault is
    Initializable,
    UUPSUpgradeable,
    OwnableUpgradeable,
    AccessControlUpgradeable,
    PausableUpgradeable,
    ReentrancyGuardUpgradeable
{
    using SafeERC20 for IERC20;

    // -------------------- Roles --------------------
    bytes32 public constant GOVERNANCE_ROLE = keccak256("GOVERNANCE_ROLE");
    bytes32 public constant MANAGER_ROLE = keccak256("MANAGER_ROLE");
    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");

    // -------------------- Config --------------------
    IndexToken public share; // MCZ-INDEX share
    IPriceOracle public oracle; // price oracle
    address public constant ETH = address(0);

    // Treasury where fees are sent (entry/exit in stable) and AUM fee shares minted to
    address private treasury;

    // Supported deposit stablecoins (e.g., USDC, USDT, DAI)
    mapping(address => bool) public isDepositAsset;

    // Basket assets and target weights (BPS)
    struct Asset {
        address token;
        uint16 weightBps; // 0..10000
        bool enabled;
    }
    Asset[] public basket;
    mapping(address => bool) public isBasketAsset; // quick lookup

    // -------------------- Fees --------------------
    // Entry fee on deposits (in BPS). Default 5% == 500 bps
    uint16 public entryFeeBps;
    // Exit fee on redemptions (in BPS). Default 0, can set e.g. 1% == 100 bps
    uint16 public exitFeeBps;
    // AUM fee annual, in BPS. Default 0.2% == 20 bps
    uint16 public aumFeeBps;

    // Hard caps to avoid governance abuse (can be tuned)
    uint16 public constant MAX_ENTRY_FEE_BPS = 1000; // 10%
    uint16 public constant MAX_EXIT_FEE_BPS = 300; // 3%
    uint16 public constant MAX_AUM_FEE_BPS = 200; // 2% / year

    // AUM fee accrual
    uint256 public lastAumFeeTimestamp;
    uint256 public totalDepositedUsd;

    // Tracks average entry price per share (1e18 USD) for each user
    mapping(address => uint256) public userAverageEntryPrice;
    // Tracks total shares purchased historically (not current balance)
    mapping(address => uint256) public userTotalSharesMinted;

    // -------------------- Events --------------------
    event Deposit(
        address indexed user,
        address indexed asset,
        uint256 amountIn,
        uint256 sharesMinted,
        uint256 entryFee
    );
    event Redeem(
        address indexed user,
        address indexed asset,
        uint256 sharesBurned,
        uint256 amountOut,
        uint256 exitFee
    );
    event Rebalanced(
        address indexed router,
        address[] path,
        uint256[] amountsIn,
        uint256[] amountsOut
    );
    event ParamsUpdated(
        uint16 entryFeeBps,
        uint16 exitFeeBps,
        uint16 aumFeeBps,
        address treasury
    );
    event DepositAssetSet(address asset, bool allowed);
    event BasketSet(Asset[] basket);
    event OracleSet(address oracle);
    event ShareTokenSet(IndexToken shareToken);
    event Paused();
    event Unpaused();

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() initializer {}

    function initialize(address admin) external initializer {
        require(admin != address(0), "ZERO_ADDR");

        _grantRole(GOVERNANCE_ROLE, admin);
        _grantRole(MANAGER_ROLE, admin);
        _grantRole(PAUSER_ROLE, admin);

        lastAumFeeTimestamp = block.timestamp;
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal virtual override onlyOwner {}

    // -------------------- Modifiers / utils --------------------
    function _onlyPositive(uint256 x) internal pure {
        require(x > 0, "ZERO");
    }

    function getAmountInDollars(
        address tokenAddress,
        uint256 amount
    ) public view returns (uint256) {
        uint256 dollarPerToken = tokenDollarPrice(tokenAddress);
        uint8 tokenDecimals;
        if (tokenAddress == address(0)) {
            tokenDecimals = 18;
        } else {
            tokenDecimals = IERC20Metadata(tokenAddress).decimals();
        }

        uint256 amountIn;

        if (tokenDecimals > 18) {
            // If token decimals are greater than 18, divide to reduce precision
            uint256 scaleDownFactor = 10 ** (tokenDecimals - 18);
            amountIn = amount / scaleDownFactor;
        } else if (tokenDecimals < 18) {
            // If token decimals are less than 18, multiply to increase precision
            uint256 scaleUpFactor = 10 ** (18 - tokenDecimals);
            amountIn = amount * scaleUpFactor;
        } else {
            // If token decimals are 18, no scaling is needed
            amountIn = amount;
        }

        return (amountIn * dollarPerToken) / 1e18;
    }

    function tokenDollarPrice(address asset) public view returns (uint256) {
        uint256 price = oracle.getAssetPrice(asset);
        return price;
    }

    function _tokenDecimals(address token) internal view returns (uint8) {
        // minimal interface
        try IERC20Metadata(token).decimals() returns (uint8 d) {
            return d;
        } catch {
            return 18;
        }
    }

    // -------------------- View: NAV --------------------
    /**
     * @notice Total portfolio value in USD (1e8) over all enabled basket assets + idle deposit assets.
     * @dev V1 simply sums on-chain balances * oracle price. Future: include staked/yield positions.
     */
    function totalPortfolioUsd() public view returns (uint256) {
        return totalDepositedUsd;
    }

    /**
     * @notice NAV per share in USD (1e18), with 1e18 share precision.
     * @dev If supply is zero, defines initial price = $1 (1e18).
     */
    function navPerShareUsd() public view returns (uint256) {
        uint256 supply = share.totalSupply();
        if (supply == 0) {
            // define initial price = $1
            return 1e18;
        }

        uint256 navUsd1e18 = totalPortfolioUsd();
        // NAV per share = (total NAV in 1e18) / (supply / 1e18) = nav * 1e18 / supply
        return (navUsd1e18 * 1e18) / supply;
    }

    /**
     * @notice Price per share as 1e18 "USD" units (i.e., $1 == 1e18).
     * @dev Alias for navPerShareUsd1e18(); this value is used in mint/burn math.
     */
    function pricePerShare() public view returns (uint256) {
        return navPerShareUsd();
    }

    function getUserCostBasis(address user) public view returns (uint256) {
        return userAverageEntryPrice[user]; // 1e18 USD units
    }

    function getUserPortfolioValue(address user) public view returns (uint256) {
        uint256 balance = share.balanceOf(user);
        uint256 pps = pricePerShare(); // current NAV per share (1e18)

        return (balance * pps) / 1e18; // returns USD value in 1e18
    }

    function getUserInvestedValue(address user) public view returns (uint256) {
        uint256 totalShares = share.balanceOf(user);
        uint256 avgPrice = userAverageEntryPrice[user];

        return (totalShares * avgPrice) / 1e18;
    }

    function getUserGainLoss(address user) public view returns (int256) {
        uint256 currentValue = getUserPortfolioValue(user);
        uint256 investedValue = getUserInvestedValue(user);

        return int256(currentValue) - int256(investedValue);
    }

    function getUserGrowthPercent(address user) public view returns (int256) {
        uint256 invested = getUserInvestedValue(user);
        if (invested == 0) return 0;

        int256 gain = getUserGainLoss(user);

        return (gain * 1e18) / int256(invested); // returns percent in 1e18
    }

    /**
     * @notice Preview shares a user will receive from a deposit including slippage tolerance.
     * @param asset Stablecoin or ETH (address(0) for ETH)
     * @param amount Amount user wants to deposit
     * @param slippageBps User slippage tolerance in basis points (e.g., 100 = 1%)
     * @return expectedShares Raw shares minted before slippage
     * @return minSharesOut Shares after subtracting slippage tolerance
     * @return entryFee Entry fee in asset units
     * @return netDepositUsd USD value after entry fee
     */
    function previewDepositWithSlippage(
        address asset,
        uint256 amount,
        uint16 slippageBps
    )
        external
        view
        returns (
            uint256 expectedShares,
            uint256 minSharesOut,
            uint256 entryFee,
            uint256 netDepositUsd
        )
    {
        require(asset == ETH || isDepositAsset[asset], "ASSET_NOT_ALLOWED");
        require(amount > 0, "ZERO");
        require(slippageBps <= 1000, "MAX_SLIPPAGE_10%"); // safety check

        uint256 price1e18 = oracle.getAssetPrice(asset);
        uint8 dec = _tokenDecimals(asset);

        // fees
        entryFee = (amount * entryFeeBps) / 10_000;

        uint256 net = amount - entryFee;
        netDepositUsd = (net * price1e18) / (10 ** dec);

        uint256 pps = pricePerShare();

        // expected shares
        expectedShares = (netDepositUsd * 1e18) / pps;

        // slippage adjustment
        minSharesOut = (expectedShares * (10000 - slippageBps)) / 10000;
    }

    /**
     * @notice Preview asset output for redeeming shares including slippage tolerance.
     * @param asset Stablecoin or ETH (address(0) for ETH)
     * @param sharesIn Amount of index shares user wants to redeem
     * @param slippageBps Slippage tolerance in basis points (e.g., 100 = 1%)
     * @return expectedAmountOut Raw expected output (before slippage)
     * @return minAmountOut Output after subtracting slippage tolerance
     * @return exitFee Exit fee deducted
     * @return usdValue Total USD value of shares
     */
    function previewRedeemWithSlippage(
        address asset,
        uint256 sharesIn,
        uint16 slippageBps
    )
        external
        view
        returns (
            uint256 expectedAmountOut,
            uint256 minAmountOut,
            uint256 exitFee,
            uint256 usdValue
        )
    {
        require(asset == ETH || isDepositAsset[asset], "ASSET_NOT_ALLOWED");
        require(sharesIn > 0, "ZERO");
        require(slippageBps <= 1000, "MAX_SLIPPAGE_10%");

        uint256 pps = pricePerShare();
        usdValue = (sharesIn * pps) / 1e18;

        uint256 price1e18 = oracle.getAssetPrice(asset);
        uint8 dec = _tokenDecimals(asset);

        uint256 grossAmount = (usdValue * (10 ** dec)) / price1e18;

        exitFee = (grossAmount * exitFeeBps) / 10_000;
        expectedAmountOut = grossAmount - exitFee;

        // slippage adjustment
        minAmountOut = (expectedAmountOut * (10000 - slippageBps)) / 10000;
    }

    // -------------------- Fee accrual (AUM) --------------------
    function _accrueAumFee() internal {
        uint256 t = block.timestamp;
        if (t <= lastAumFeeTimestamp) return;
        uint256 dt = t - lastAumFeeTimestamp;
        lastAumFeeTimestamp = t;

        // annual rate in BPS -> per-second on shares: feeShares = supply * (bps/1e4) * (dt/secondsPerYear)
        uint256 supply = share.totalSupply();
        if (supply == 0 || aumFeeBps == 0) return;

        // seconds per 365d year
        uint256 SECONDS_PER_YEAR = 365 days;
        // fee fraction (1e18): (aumFeeBps / 1e4) * (dt / SECONDS_PER_YEAR)
        // Compute feeShares = supply * feeFraction
        uint256 feeNumer = uint256(aumFeeBps) * dt;
        // feeShares = supply * feeNumer / (1e4 * SECONDS_PER_YEAR)
        uint256 feeShares = (supply * feeNumer) / (10000 * SECONDS_PER_YEAR);
        if (feeShares > 0) {
            share.mint(treasury, feeShares);
        }
    }

    // -------------------- Deposit / Mint --------------------
    /**
     * @notice Deposit a supported stablecoin and receive index shares.
     * @param asset Stablecoin address
     * @param amount Amount to deposit (in asset decimals)
     * @param minSharesOut Slippage control for share minting
     */
    function deposit(
        address asset,
        uint256 amount,
        uint256 minSharesOut
    ) external nonReentrant whenNotPaused {
        require(asset != ETH, "USE_DEPOSIT_ETH");
        require(isDepositAsset[asset], "ASSET_NOT_ALLOWED");
        _onlyPositive(amount);

        _accrueAumFee();

        // Pull tokens
        IERC20(asset).safeTransferFrom(msg.sender, address(this), amount);

        // Apply entry fee
        uint256 fee = (amount * entryFeeBps) / 10_000;
        uint256 net = amount - fee;

        if (fee > 0) {
            IERC20(asset).safeTransfer(treasury, fee);
        }

        // Convert deposit to USD 1e18
        uint256 price1e18 = oracle.getAssetPrice(asset); // USD price 1e18
        uint8 dec = _tokenDecimals(asset);

        uint256 netUsd1e18 = (net * price1e18) / (10 ** dec);

        // Update TVL (basket NAV)
        totalDepositedUsd += netUsd1e18;

        // Calculate shares out
        uint256 pps = pricePerShare();
        uint256 sharesOut = (netUsd1e18 * 1e18) / pps;

        require(sharesOut >= minSharesOut, "SLIPPAGE");

        share.mint(msg.sender, sharesOut); // Track cost basis
        uint256 prevShares = userTotalSharesMinted[msg.sender];
        uint256 prevAvg = userAverageEntryPrice[msg.sender];

        uint256 newAvg = 0;

        if (prevShares == 0) {
            newAvg = pps; // first purchase = current share price
        } else {
            // Weighted average price entry
            newAvg =
                ((prevAvg * prevShares) + (pps * sharesOut)) /
                (prevShares + sharesOut);
        }

        userAverageEntryPrice[msg.sender] = newAvg;
        userTotalSharesMinted[msg.sender] = prevShares + sharesOut;

        emit Deposit(msg.sender, asset, amount, sharesOut, fee);
    }

    function depositETH(
        uint256 minSharesOut
    ) external payable nonReentrant whenNotPaused {
        require(isDepositAsset[ETH], "ETH_NOT_ALLOWED");
        require(msg.value > 0, "ZERO");

        _accrueAumFee();

        uint256 amountIn = msg.value;

        // Entry fee
        uint256 fee = (amountIn * entryFeeBps) / 10_000;
        uint256 net = amountIn - fee;

        if (fee > 0) {
            (bool ok, ) = treasury.call{value: fee}("");
            require(ok, "TREASURY_FAIL");
        }

        // Convert net ETH to USD 1e18
        uint256 price1e18 = oracle.getAssetPrice(ETH); // ETH price
        uint256 netUsd1e18 = (net * price1e18) / 1e18;

        // Update TVL
        totalDepositedUsd += netUsd1e18;

        // Shares minted = USD value / price per share
        uint256 pps = pricePerShare();
        uint256 sharesOut = (netUsd1e18 * 1e18) / pps;

        require(sharesOut >= minSharesOut, "SLIPPAGE");

        share.mint(msg.sender, sharesOut);

        // Track cost basis
        uint256 prevShares = userTotalSharesMinted[msg.sender];
        uint256 prevAvg = userAverageEntryPrice[msg.sender];

        uint256 newAvg = 0;

        if (prevShares == 0) {
            newAvg = pps; // first purchase = current share price
        } else {
            // Weighted average price entry
            newAvg =
                ((prevAvg * prevShares) + (pps * sharesOut)) /
                (prevShares + sharesOut);
        }

        userAverageEntryPrice[msg.sender] = newAvg;
        userTotalSharesMinted[msg.sender] = prevShares + sharesOut;

        emit Deposit(msg.sender, ETH, amountIn, sharesOut, fee);
    }

    // -------------------- Redeem / Burn --------------------
    /**
     * @notice Redeem shares for a chosen stablecoin (must be enabled as deposit asset).
     * @dev V1 burns shares and pays out from vault's idle stable balance. If insufficient liquidity,
     *      redemption will revert; managers should maintain adequate stable reserves.
     */
    function redeem(
        address asset,
        uint256 sharesIn,
        uint256 minAmountOut
    ) external nonReentrant whenNotPaused {
        require(asset != ETH, "USE_REDEEM_ETH");
        require(isDepositAsset[asset], "ASSET_NOT_ALLOWED");
        _onlyPositive(sharesIn);

        _accrueAumFee();

        uint256 pps = pricePerShare();

        // USD value of shares
        uint256 usd1e18 = (sharesIn * pps) / 1e18;

        // Convert USD → asset
        uint256 price1e18 = oracle.getAssetPrice(asset);
        uint8 dec = _tokenDecimals(asset);

        uint256 grossAmount = (usd1e18 * (10 ** dec)) / price1e18;

        // Exit fee
        uint256 fee = (grossAmount * exitFeeBps) / 10_000;
        uint256 netAmount = grossAmount - fee;

        require(netAmount >= minAmountOut, "SLIPPAGE_REDEEM");
        require(
            IERC20(asset).balanceOf(address(this)) >= netAmount + fee,
            "INSUFFICIENT_LIQUIDITY"
        );

        // Update TVL
        totalDepositedUsd -= usd1e18;

        // Burn shares
        share.burn(msg.sender, sharesIn);

        // Transfers
        if (fee > 0) IERC20(asset).safeTransfer(treasury, fee);
        IERC20(asset).safeTransfer(msg.sender, netAmount);

        emit Redeem(msg.sender, asset, sharesIn, netAmount, fee);
    }

    function redeemETH(
        uint256 sharesIn,
        uint256 minEthOut
    ) external nonReentrant whenNotPaused {
        require(isDepositAsset[ETH], "ETH_NOT_ALLOWED");
        require(sharesIn > 0, "ZERO");

        _accrueAumFee();

        uint256 pps = pricePerShare();
        uint256 usd1e18 = (sharesIn * pps) / 1e18;

        // USD → ETH
        uint256 price1e18 = oracle.getAssetPrice(ETH);
        uint256 grossEth = (usd1e18 * 1e18) / price1e18;

        // Exit fee
        uint256 fee = (grossEth * exitFeeBps) / 10_000;
        uint256 netEth = grossEth - fee;

        require(netEth >= minEthOut, "SLIPPAGE_REDEEM");
        require(address(this).balance >= netEth + fee, "INSUFFICIENT_LIQ");

        // Update TVL
        totalDepositedUsd -= usd1e18;

        share.burn(msg.sender, sharesIn);

        // Pay fee
        if (fee > 0) {
            (bool ok1, ) = treasury.call{value: fee}("");
            require(ok1, "TREASURY_FAIL");
        }

        // Pay user
        (bool ok2, ) = msg.sender.call{value: netEth}("");
        require(ok2, "ETH_SEND_FAIL");

        emit Redeem(msg.sender, ETH, sharesIn, netEth, fee);
    }

    // -------------------- Governance setters --------------------
    function setParams(
        uint16 _entry,
        uint16 _exit,
        uint16 _aum,
        address _treasury
    ) external onlyRole(GOVERNANCE_ROLE) {
        require(_entry <= MAX_ENTRY_FEE_BPS, "ENTRY_CAP");
        require(_exit <= MAX_EXIT_FEE_BPS, "EXIT_CAP");
        require(_aum <= MAX_AUM_FEE_BPS, "AUM_CAP");
        require(_treasury != address(0), "ZERO_TREASURY");

        entryFeeBps = _entry;
        exitFeeBps = _exit;
        aumFeeBps = _aum;
        treasury = _treasury;

        emit ParamsUpdated(_entry, _exit, _aum, _treasury);
    }

    function setDepositAsset(
        address asset,
        bool allowed
    ) external onlyRole(GOVERNANCE_ROLE) {
        isDepositAsset[asset] = allowed;
        emit DepositAssetSet(asset, allowed);
    }

    function setPriceFeed(address _oracle) public onlyRole(GOVERNANCE_ROLE) {
        oracle = IPriceOracle(_oracle);
        emit OracleSet(_oracle);
    }

    function setShareToken(IndexToken _share) public onlyRole(GOVERNANCE_ROLE) {
        share = _share;
        emit ShareTokenSet(share);
    }

    /**
     * @notice Set/replace full basket in one call. Weights must sum to 10_000.
     */
    function setBasket(
        Asset[] calldata items
    ) external onlyRole(GOVERNANCE_ROLE) {
        // clear lookup for existing tokens
        for (uint256 i = 0; i < basket.length; i++) {
            isBasketAsset[basket[i].token] = false;
        }
        delete basket;

        uint256 sum;
        for (uint256 i = 0; i < items.length; i++) {
            require(items[i].token != address(0), "ZERO_TOKEN");
            sum += items[i].weightBps;
            basket.push(
                Asset({
                    token: items[i].token,
                    weightBps: items[i].weightBps,
                    enabled: items[i].enabled
                })
            );
            isBasketAsset[items[i].token] = true;
        }
        require(sum == 10_000, "WEIGHTS_NEQ_100%");
        emit BasketSet(basket);
    }

    // -------------------- Pause --------------------
    function pause() external onlyRole(PAUSER_ROLE) {
        _pause();
        emit Paused();
    }

    function unpause() external onlyRole(PAUSER_ROLE) {
        _unpause();
        emit Unpaused();
    }

    // -------------------- Admin recovery --------------------
    function withdrawToVault(
        address token,
        uint256 amount,
        address to
    ) external onlyRole(GOVERNANCE_ROLE) {
        //TO DO; add eth transfer
        require(isDepositAsset[token], "CANNOT_WITHDRAW_BASKET_OR_DEPOSIT");
        IERC20(token).safeTransfer(to, amount);
    }

    receive() external payable {}
}
