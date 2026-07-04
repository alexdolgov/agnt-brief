// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IVaultMinting} from "./interfaces/IVaultMinting.sol";
import {IMintingProxy} from "./interfaces/IMintingProxy.sol";
import {ILitePSM} from "./interfaces/ILitePSM.sol";
import {OracleAggregator} from "./oracles/OracleAggregator.sol";

/// @title VaultMinting
/// @author BTCD Labs
/// @notice Enables the vault to mint/burn BTCD against WBTC and USDC collateral,
///         with multi-oracle price discovery, per-block capacity limits, and
///         role-separated fund management.
///
/// @dev Architecture
/// ================
///   BTCD <-> MintingProxy <-> [BTCDMinting, VaultMinting]
///
///   USDC is accepted externally and converted to sUSDS internally via
///   LitePSM (USDC<>USDS) + ERC-4626 (USDS<>sUSDS) so the contract earns
///   yield on USD liquidity. On burns/withdrawals, sUSDS is redeemed back
///   to USDC for the caller.
///
/// Role Separation (Principle of Least Privilege)
/// ==============================================
///   Owner              — Configuration and fund management: fees, limits, oracles, proxy,
///                        whitelist, pause. Can withdraw collateral to whitelisted addresses.
///   Anyone (mint/burn) — Can call mint/burn, but the `to` recipient must be whitelisted.
///   Collateral Manager — Engine integration: sweep USDC, transfer custody, multicall.
///
/// Per-Block Capacity Limits
/// =========================
/// Following BTCDMinting's pattern: maxMintPerBlock / maxRedeemPerBlock.
/// Accumulators reset each block (tracked by block.number).
/// This prevents flash-loan-scale minting within a single block.
///
/// Pricing Model
/// =============
/// BTCD peg = sqrt(BTCUSD / P0) where P0 is the reference BTC price at launch.
/// BTC/USD is read from a separate oracle array (_btcOracles) specifically for
/// the peg model — not the WBTC oracle, since WBTC/USD can deviate from BTC/USD.
/// Collateral (WBTC, sUSDS) priced via their own oracle arrays.
///
/// Oracle Architecture
/// ===================
/// Two oracle arrays, each independently configurable:
///   _btcOracles  — BTC/USD for the peg model (Chainlink BTC/USD, ~1h heartbeat)
///   _wbtcOracles — WBTC/USD for collateral pricing (Chainlink WBTC/BTC * BTC/USD, ~24h)
///
/// sUSDS pricing uses the on-chain ERC-4626 exchange rate (convertToAssets) since
/// the contract redeems through the vault directly — the canonical rate is the
/// actual price received, making an external oracle unnecessary and less accurate.
///
/// Each oracle array supports weighted aggregation across Chainlink and Uniswap V3
/// TWAP sources, with per-source staleness/window configuration. See OracleAggregator.
//
// Deployment checklist: docs/superpowers/specs/2026-03-20-vaultminting-configuration-checklist.md
contract VaultMinting is IVaultMinting, ReentrancyGuard, Pausable, Ownable {
    using SafeERC20 for IERC20;
    using Math for uint256;

    /// @dev Tracks per-block throughput for rate limiting. blockNumber + usedThisBlock
    ///      pack into one slot — both are read AND written together on every call,
    ///      saving one cold SLOAD (2100 gas) per operation.
    struct BlockCapacity {
        uint128 blockNumber;
        uint128 usedThisBlock;
    }

    // -------- Constants --------

    uint256 internal constant WAD = 1e18;
    uint256 internal constant BPS = 10_000;
    uint256 internal constant MAX_FEE_BPS = 500; // 5%
    uint256 internal constant MIN_FEE_BPS = 1; // 0.01% minimum to prevent zero-fee CR floor collapse
    uint256 internal constant DECIMAL_CONVERSION = 1e12; // USDC(6) <> USDS(18)
    uint256 public constant P0_WAD = 94_000e18; // Reference BTC price at launch ($94,000)

    // -------- Immutables --------

    IERC20 public immutable WBTC;
    IERC4626 public immutable SUSDS;
    IERC20 public immutable USDC;
    IERC20 public immutable USDS;
    ILitePSM public immutable LITE_PSM;
    uint8 public immutable WBTC_DECIMALS;

    // -------- Roles --------

    address public collateralManager;

    // mintProxy + 4 fee uint16s pack into one 28-byte slot. This is beneficial:
    // every mint/burn reads both mintProxy and the relevant fee from the same slot,
    // saving a cold SLOAD (2100 gas) on the hot path. Fee setters (admin-only,
    // infrequent) pay a small read-modify-write penalty — acceptable tradeoff.
    IMintingProxy public mintProxy;
    uint16 public mintOneFee; // BPS [1, 500]
    uint16 public burnOneFee; // BPS [1, 500]
    uint16 public mintBalancedFee; // BPS [1, 500]
    uint16 public burnBalancedFee; // BPS [1, 500]

    // -------- Per-Block Capacity --------

    // maxMintPerBlock and maxRedeemPerBlock pack into one slot. They're never read
    // together (mints read one, burns read the other), so packing provides no gas
    // benefit — but uint128 is a reasonable range limit and wastes no extra gas.
    uint128 public maxMintPerBlock;
    uint128 public maxRedeemPerBlock;

    BlockCapacity internal _mintCapacity;
    BlockCapacity internal _redeemCapacity;

    // -------- Oracle Config --------

    OracleAggregator.OracleSource[] internal _btcOracles; // BTC/USD (for peg)
    OracleAggregator.OracleSource[] internal _wbtcOracles; // WBTC/USD

    // -------- Withdrawal Whitelist --------

    mapping(address => bool) public isWhitelisted;

    // -------- Modifiers --------

    modifier onlyWhitelistedRecipient(address to) {
        if (!isWhitelisted[to]) revert NotWhitelisted(to);
        _;
    }

    modifier onlyCollateralManager() {
        if (msg.sender != collateralManager) revert OnlyCollateralManager();
        _;
    }

    // -------- Constructor --------

    constructor(
        address _wbtc,
        address _susds,
        address _usdc,
        address _usds,
        address _litePsm,
        address _owner,
        address _mintProxy
    ) Ownable(_owner) {
        if (_wbtc == address(0) || _susds == address(0)) revert ZeroAddress();
        if (_usdc == address(0) || _usds == address(0)) revert ZeroAddress();
        if (_litePsm == address(0) || _mintProxy == address(0)) revert ZeroAddress();

        WBTC = IERC20(_wbtc);
        SUSDS = IERC4626(_susds);
        USDC = IERC20(_usdc);
        USDS = IERC20(_usds);
        LITE_PSM = ILitePSM(_litePsm);
        WBTC_DECIMALS = IERC20Metadata(_wbtc).decimals();

        mintProxy = IMintingProxy(_mintProxy);

        // Infinite approvals for the conversion pipeline
        IERC20(_usdc).forceApprove(_litePsm, type(uint256).max);
        IERC20(_usds).forceApprove(_susds, type(uint256).max);
        IERC20(_usds).forceApprove(_litePsm, type(uint256).max);
        
        // Defaults — 55 BPS symmetric fee.
        // At 2× leverage with 10% vault buffer: round-trip cost = 2 × 1.8 × 55 = 198 BPS,
        // covered by 1% vault entrance + 1% exit fee. CR floor = 1.0055.
        mintOneFee = 55; // 0.55%
        burnOneFee = 55; // 0.55%
        mintBalancedFee = 55; // 0.55%
        burnBalancedFee = 55; // 0.55%
        maxMintPerBlock = 500_000e18; // 500k BTCD per block
        maxRedeemPerBlock = 500_000e18; // 500k BTCD per block
    }

    // ====================================================================
    // Mint/Burn Functions (whitelisted `to` + nonReentrant + whenNotPaused)
    // ====================================================================

    /// @notice Mint BTCD using WBTC collateral.
    /// @dev Pulls WBTC from msg.sender, mints BTCD to `to`. Fee applied to input amount.
    /// @param to Whitelisted recipient of minted BTCD.
    /// @param amountIn WBTC amount to deposit (8 decimals).
    /// @param minOut Minimum BTCD to receive (slippage protection).
    function mintWBTC(address to, uint256 amountIn, uint256 minOut)
        external
        onlyWhitelistedRecipient(to)
        nonReentrant
        whenNotPaused
    {
        if (amountIn == 0) revert ZeroAmount();

        uint256 amountInAfterFee = _applyFee(amountIn, mintOneFee);
        uint256 btcdOut = _quoteMintWBTC(amountInAfterFee);
        if (btcdOut == 0) revert ZeroAmount();
        if (btcdOut < minOut) revert SlippageExceeded(btcdOut, minOut);

        _consumeMintCapacity(btcdOut);
        WBTC.safeTransferFrom(msg.sender, address(this), amountIn);
        mintProxy.mint(to, btcdOut);

        emit MintWBTC(msg.sender, to, amountIn, btcdOut);
    }

    /// @notice Mint BTCD using USDC collateral.
    /// @dev Pulls USDC from msg.sender, converts to sUSDS internally, mints BTCD to `to`.
    /// @param to Whitelisted recipient of minted BTCD.
    /// @param amountIn USDC amount to deposit (6 decimals).
    /// @param minOut Minimum BTCD to receive (slippage protection).
    function mintUSDC(address to, uint256 amountIn, uint256 minOut)
        external
        onlyWhitelistedRecipient(to)
        nonReentrant
        whenNotPaused
    {
        if (amountIn == 0) revert ZeroAmount();

        USDC.safeTransferFrom(msg.sender, address(this), amountIn);
        _usdcToSusds(amountIn);

        uint256 amountInAfterFee = _applyFee(amountIn, mintOneFee);
        uint256 btcdOut = _quoteMintUSDC(amountInAfterFee);
        if (btcdOut == 0) revert ZeroAmount();
        if (btcdOut < minOut) revert SlippageExceeded(btcdOut, minOut);

        _consumeMintCapacity(btcdOut);
        mintProxy.mint(to, btcdOut);

        emit MintUSDC(msg.sender, to, amountIn, btcdOut);
    }

    /// @notice Mint BTCD using both WBTC and USDC collateral.
    /// @dev Balanced portion charged mintBalancedFee, excess charged mintOneFee.
    /// @param to Whitelisted recipient of minted BTCD.
    /// @param wbtcIn WBTC amount (8 decimals). May be zero if minting with USDC only.
    /// @param usdcIn USDC amount (6 decimals). May be zero if minting with WBTC only.
    /// @param minOut Minimum BTCD to receive (slippage protection).
    function mint(address to, uint256 wbtcIn, uint256 usdcIn, uint256 minOut)
        external
        onlyWhitelistedRecipient(to)
        nonReentrant
        whenNotPaused
    {
        if (wbtcIn == 0 && usdcIn == 0) revert ZeroAmount();

        if (wbtcIn > 0) WBTC.safeTransferFrom(msg.sender, address(this), wbtcIn);
        if (usdcIn > 0) {
            USDC.safeTransferFrom(msg.sender, address(this), usdcIn);
            _usdcToSusds(usdcIn);
        }

        (uint256 wbtcAfterFee, uint256 usdcAfterFee) = _applySplitMintFee(wbtcIn, usdcIn);
        uint256 btcdOut = _quoteMintWBTC(wbtcAfterFee) + _quoteMintUSDC(usdcAfterFee);
        if (btcdOut == 0) revert ZeroAmount();
        if (btcdOut < minOut) revert SlippageExceeded(btcdOut, minOut);

        _consumeMintCapacity(btcdOut);
        mintProxy.mint(to, btcdOut);

        emit Mint(msg.sender, to, wbtcIn, usdcIn, btcdOut);
    }

    /// @notice Burn BTCD and receive WBTC collateral.
    /// @dev Burns BTCD from msg.sender, sends WBTC to `to`. Fee applied to BTCD input.
    /// @param to Whitelisted recipient of redeemed WBTC.
    /// @param btcdIn BTCD amount to burn (18 decimals).
    /// @param minOut Minimum WBTC to receive (slippage protection).
    function burnWBTC(address to, uint256 btcdIn, uint256 minOut)
        external
        onlyWhitelistedRecipient(to)
        nonReentrant
        whenNotPaused
    {
        if (btcdIn == 0) revert ZeroAmount();

        uint256 btcdAfterFee = _applyFee(btcdIn, burnOneFee);
        uint256 wbtcOut = _quoteBurnWBTC(btcdAfterFee);
        if (wbtcOut < minOut) revert SlippageExceeded(wbtcOut, minOut);
        if (wbtcOut > WBTC.balanceOf(address(this))) revert InsufficientCollateral();

        _consumeRedeemCapacity(btcdIn);
        mintProxy.burnFrom(msg.sender, btcdIn);
        WBTC.safeTransfer(to, wbtcOut);

        emit BurnWBTC(msg.sender, to, btcdIn, wbtcOut);
    }

    /// @notice Burn BTCD and receive USDC collateral.
    /// @dev Burns BTCD from msg.sender, redeems sUSDS to USDC via LitePSM, sends to `to`.
    /// @param to Whitelisted recipient of redeemed USDC.
    /// @param btcdIn BTCD amount to burn (18 decimals).
    /// @param minOut Minimum USDC to receive (slippage protection).
    function burnUSDC(address to, uint256 btcdIn, uint256 minOut)
        external
        onlyWhitelistedRecipient(to)
        nonReentrant
        whenNotPaused
    {
        if (btcdIn == 0) revert ZeroAmount();

        uint256 btcdAfterFee = _applyFee(btcdIn, burnOneFee);
        (, uint256 susdsSharesNeeded) = _quoteBurnUSDCWithShares(btcdAfterFee);
        if (susdsSharesNeeded > IERC20(address(SUSDS)).balanceOf(address(this))) revert InsufficientCollateral();

        _consumeRedeemCapacity(btcdIn);
        mintProxy.burnFrom(msg.sender, btcdIn);
        uint256 actualUsdcOut = _susdsToUsdc(susdsSharesNeeded, to);
        if (actualUsdcOut < minOut) revert SlippageExceeded(actualUsdcOut, minOut);

        emit BurnUSDC(msg.sender, to, btcdIn, actualUsdcOut);
    }

    /// @notice Burn BTCD and receive both WBTC and USDC proportional to collateral reserves.
    /// @dev Splits redemption across WBTC and sUSDS based on current collateral ratio.
    ///      Blended fee: balanced portion at burnBalancedFee, excess at burnOneFee.
    /// @param to Whitelisted recipient of redeemed collateral.
    /// @param btcdIn BTCD amount to burn (18 decimals).
    /// @param wbtcMinOut Minimum WBTC to receive (slippage protection).
    /// @param usdcMinOut Minimum USDC to receive (slippage protection).
    function burn(address to, uint256 btcdIn, uint256 wbtcMinOut, uint256 usdcMinOut)
        external
        onlyWhitelistedRecipient(to)
        nonReentrant
        whenNotPaused
    {
        if (btcdIn == 0) revert ZeroAmount();

        uint16 blendedFee = _computeBlendedBurnFee();
        uint256 btcdAfterFee = _applyFee(btcdIn, blendedFee);
        (uint256 wbtcOut,, uint256 susdsSharesNeeded) = _quoteBurnBalanced(btcdAfterFee);
        if (wbtcOut < wbtcMinOut) revert SlippageExceeded(wbtcOut, wbtcMinOut);
        if (wbtcOut > WBTC.balanceOf(address(this))) revert InsufficientCollateral();
        if (susdsSharesNeeded > IERC20(address(SUSDS)).balanceOf(address(this))) revert InsufficientCollateral();

        _consumeRedeemCapacity(btcdIn);
        mintProxy.burnFrom(msg.sender, btcdIn);
        if (wbtcOut > 0) WBTC.safeTransfer(to, wbtcOut);
        uint256 actualUsdcOut = susdsSharesNeeded > 0 ? _susdsToUsdc(susdsSharesNeeded, to) : 0;
        if (actualUsdcOut < usdcMinOut) revert SlippageExceeded(actualUsdcOut, usdcMinOut);

        emit Burn(msg.sender, to, btcdIn, wbtcOut, actualUsdcOut);
    }

    // ====================================================================
    // Public Quote Functions
    // ====================================================================

    /// @notice Quote BTCD output for a WBTC mint (after fee).
    /// @param amountIn WBTC amount (8 decimals).
    /// @return BTCD amount that would be minted (18 decimals).
    function quoteMintWBTC(uint256 amountIn) external view returns (uint256) {
        return _quoteMintWBTC(_applyFee(amountIn, mintOneFee));
    }

    /// @notice Quote BTCD output for a USDC mint (after fee).
    /// @param amountIn USDC amount (6 decimals).
    /// @return BTCD amount that would be minted (18 decimals).
    function quoteMintUSDC(uint256 amountIn) external view returns (uint256) {
        return _quoteMintUSDC(_applyFee(amountIn, mintOneFee));
    }

    /// @notice Quote BTCD output for a balanced mint with both WBTC and USDC (after split fee).
    /// @param wbtcIn WBTC amount (8 decimals).
    /// @param usdcIn USDC amount (6 decimals).
    /// @return BTCD amount that would be minted (18 decimals).
    function quoteMint(uint256 wbtcIn, uint256 usdcIn) external view returns (uint256) {
        (uint256 wbtcAfterFee, uint256 usdcAfterFee) = _applySplitMintFee(wbtcIn, usdcIn);
        return _quoteMintWBTC(wbtcAfterFee) + _quoteMintUSDC(usdcAfterFee);
    }

    /// @notice Quote WBTC output for a BTCD burn (after fee).
    /// @param btcdIn BTCD amount to burn (18 decimals).
    /// @return WBTC amount that would be redeemed (8 decimals).
    function quoteBurnWBTC(uint256 btcdIn) external view returns (uint256) {
        return _quoteBurnWBTC(_applyFee(btcdIn, burnOneFee));
    }

    /// @notice Quote USDC output for a BTCD burn (after fee).
    /// @param btcdIn BTCD amount to burn (18 decimals).
    /// @return USDC amount that would be redeemed (6 decimals).
    function quoteBurnUSDC(uint256 btcdIn) external view returns (uint256) {
        return _quoteBurnUSDC(_applyFee(btcdIn, burnOneFee));
    }

    /// @notice Quote both WBTC and USDC output for a balanced BTCD burn (after blended fee).
    /// @param btcdIn BTCD amount to burn (18 decimals).
    /// @return wbtcOut WBTC amount (8 decimals).
    /// @return usdcOut USDC amount (6 decimals).
    function quoteBurn(uint256 btcdIn) external view returns (uint256 wbtcOut, uint256 usdcOut) {
        uint16 blendedFee = _computeBlendedBurnFee();
        (wbtcOut, usdcOut,) = _quoteBurnBalanced(_applyFee(btcdIn, blendedFee));
    }

    // ====================================================================
    // Owner Functions — Configuration
    // ====================================================================

    /// @notice Set the single-asset mint fee in basis points.
    /// @param fee Fee in BPS, must be in [MIN_FEE_BPS, MAX_FEE_BPS].
    function setMintOneFee(uint16 fee) external onlyOwner {
        if (fee < MIN_FEE_BPS) revert FeeTooLow(fee);
        if (fee > MAX_FEE_BPS) revert FeeTooHigh(fee);
        emit MintFeeUpdated(mintOneFee, fee);
        mintOneFee = fee;
    }

    /// @notice Set the single-asset burn fee in basis points.
    /// @param fee Fee in BPS, must be in [MIN_FEE_BPS, MAX_FEE_BPS].
    function setBurnOneFee(uint16 fee) external onlyOwner {
        if (fee < MIN_FEE_BPS) revert FeeTooLow(fee);
        if (fee > MAX_FEE_BPS) revert FeeTooHigh(fee);
        emit BurnFeeUpdated(burnOneFee, fee);
        burnOneFee = fee;
    }

    /// @notice Set the balanced (dual-asset) mint fee in basis points.
    /// @param fee Fee in BPS, must be in [MIN_FEE_BPS, MAX_FEE_BPS].
    function setMintBalancedFee(uint16 fee) external onlyOwner {
        if (fee < MIN_FEE_BPS) revert FeeTooLow(fee);
        if (fee > MAX_FEE_BPS) revert FeeTooHigh(fee);
        emit MintBalancedFeeUpdated(mintBalancedFee, fee);
        mintBalancedFee = fee;
    }

    /// @notice Set the balanced (dual-asset) burn fee in basis points.
    /// @param fee Fee in BPS, must be in [MIN_FEE_BPS, MAX_FEE_BPS].
    function setBurnBalancedFee(uint16 fee) external onlyOwner {
        if (fee < MIN_FEE_BPS) revert FeeTooLow(fee);
        if (fee > MAX_FEE_BPS) revert FeeTooHigh(fee);
        emit BurnBalancedFeeUpdated(burnBalancedFee, fee);
        burnBalancedFee = fee;
    }

    /// @notice Set the maximum BTCD that can be minted per block.
    /// @param limit Maximum BTCD per block (18 decimals). Zero disables minting.
    function setMaxMintPerBlock(uint128 limit) external onlyOwner {
        emit MaxMintPerBlockUpdated(maxMintPerBlock, limit);
        maxMintPerBlock = limit;
    }

    /// @notice Set the maximum BTCD that can be redeemed per block.
    /// @param limit Maximum BTCD per block (18 decimals). Zero disables redemptions.
    function setMaxRedeemPerBlock(uint128 limit) external onlyOwner {
        emit MaxRedeemPerBlockUpdated(maxRedeemPerBlock, limit);
        maxRedeemPerBlock = limit;
    }

    /// @notice Update the MintingProxy address used for BTCD mint/burn.
    /// @param _mintProxy New MintingProxy address. Must not be zero.
    function setMintProxy(address _mintProxy) external onlyOwner {
        if (_mintProxy == address(0)) revert ZeroAddress();
        emit MintProxyUpdated(address(mintProxy), _mintProxy);
        mintProxy = IMintingProxy(_mintProxy);
    }

    /// @dev Renouncing ownership would brick all admin functions permanently. Disabled.
    function renounceOwnership() public pure override {
        revert OwnableInvalidOwner(address(0));
    }

    /// @notice Set the collateral manager address (engine integration).
    /// @param _collateralManager New collateral manager. Must not be zero.
    function setCollateralManager(address _collateralManager) external onlyOwner {
        if (_collateralManager == address(0)) revert ZeroAddress();
        emit CollateralManagerUpdated(collateralManager, _collateralManager);
        collateralManager = _collateralManager;
    }

    /// @notice Pause all mint/burn operations. Emergency use only.
    function pause() external onlyOwner {
        _pause();
    }

    /// @notice Unpause mint/burn operations.
    function unpause() external onlyOwner {
        _unpause();
    }

    // -------- Whitelist Management (Owner only) --------

    /// @notice Add an address to the whitelist. Whitelisted addresses can receive minted BTCD and redeemed collateral.
    /// @param addr Address to whitelist. Must not be zero.
    function addWhitelistedAddress(address addr) external onlyOwner {
        if (addr == address(0)) revert ZeroAddress();
        isWhitelisted[addr] = true;
        emit WhitelistedAddressAdded(addr);
    }

    /// @notice Remove an address from the whitelist.
    /// @param addr Address to remove.
    function removeWhitelistedAddress(address addr) external onlyOwner {
        isWhitelisted[addr] = false;
        emit WhitelistedAddressRemoved(addr);
    }

    // -------- Oracle Management (Owner only) --------

    /// @notice Configure the BTC/USD oracle sources used for the BTCD peg model.
    /// @param sources Array of oracle sources. At least one required.
    function setBTCOracles(OracleAggregator.OracleSource[] calldata sources) external onlyOwner {
        _setOracles(_btcOracles, sources, "BTC");
    }

    /// @notice Configure the WBTC/USD oracle sources used for collateral pricing.
    /// @param sources Array of oracle sources. At least one required.
    function setWBTCOracles(OracleAggregator.OracleSource[] calldata sources) external onlyOwner {
        _setOracles(_wbtcOracles, sources, "WBTC");
    }


    // ====================================================================
    // Collateral Manager Functions — Engine Integration
    // ====================================================================
    // The collateral manager is the engine's Fireblocks actor address. It can:
    //   - Sweep idle USDC into sUSDS (after slush fund pushes USDC via ERC-20 transfer)
    //   - Transfer excess collateral back to the slush fund (drain)
    // It cannot mint/burn BTCD or change configuration.
    //
    // Capital flow is push-based: the slush fund pushes ERC-20 tokens directly to this
    // contract's address via multicall transferFrom. WBTC is held as-is. USDC lands idle
    // and must be swept into sUSDS via sweepUSDC() to earn yield.

    /// @notice Transfer a raw ERC-20 token to a whitelisted wallet (e.g., slush fund drain).
    /// @dev Only supports WBTC and USDC — the two tokens this contract holds directly.
    ///      For sUSDS-backed value, call redeemSUSDS() first to produce idle USDC,
    ///      then transferToCustody to send it out. Use multicall for atomicity.
    function transferToCustody(address wallet, address asset, uint256 amount)
        external
        onlyCollateralManager
    {
        if (amount == 0) revert ZeroAmount();
        if (!isWhitelisted[wallet]) revert NotWhitelisted(wallet);
        if (asset != address(WBTC) && asset != address(USDC)) revert UnsupportedToken(asset);
        IERC20(asset).safeTransfer(wallet, amount);
        emit CustodyTransfer(wallet, asset, amount);
    }

    /// @notice Redeem sUSDS shares back to idle USDC on this contract.
    /// @dev Inverse of sweepUSDC. Converts sUSDS → USDS → USDC via LitePSM.
    ///      USDC lands idle on the contract — call transferToCustody to send it out.
    /// @param usdcAmount The amount of USDC to produce (6 decimals).
    /// @return redeemed The actual USDC produced.
    function redeemSUSDS(uint256 usdcAmount) external onlyCollateralManager returns (uint256 redeemed) {
        if (usdcAmount == 0) revert ZeroAmount();
        uint256 usdsNeeded = usdcAmount * DECIMAL_CONVERSION;
        uint256 tout = LITE_PSM.tout();
        if (tout > 0) {
            usdsNeeded = usdsNeeded + Math.mulDiv(usdsNeeded, tout, WAD);
        }
        SUSDS.withdraw(usdsNeeded, address(this), address(this));
        LITE_PSM.buyGem(address(this), usdcAmount);
        redeemed = usdcAmount;

        // Re-deposit any leftover USDS dust from decimal truncation
        uint256 usdsDust = USDS.balanceOf(address(this));
        if (usdsDust > 0) SUSDS.deposit(usdsDust, address(this));
    }

    /// @notice Execute multiple calls to this contract atomically.
    /// @dev Lets the driver compose redeemSUSDS + transferToCustody in one tx.
    ///      Uses delegatecall so msg.sender is preserved for onlyCollateralManager
    ///      checks on sub-calls. Collateral manager functions do NOT have nonReentrant
    ///      (they are trusted, no callback risk); multicall provides the reentrancy
    ///      boundary for batched operations.
    function multicall(bytes[] calldata data) external onlyCollateralManager nonReentrant returns (bytes[] memory results) {
        results = new bytes[](data.length);
        for (uint256 i = 0; i < data.length; i++) {
            (bool success, bytes memory result) = address(this).delegatecall(data[i]);
            if (!success) {
                assembly { revert(add(result, 32), mload(result)) }
            }
            results[i] = result;
        }
    }

    /// @notice Convert idle USDC on this contract into sUSDS for yield.
    /// @dev The driver specifies exactly how much to sweep. This avoids locking
    ///      excess USDC into sUSDS that would need to be unwound later (redeemSUSDS
    ///      costs gas and loses rounding). The driver computes the right amount from
    ///      the spoke target minus existing sUSDS-backed value.
    /// @param amount The amount of idle USDC to convert (6 decimals). Reverts if
    ///        the contract holds less than this amount.
    /// @return swept The amount actually swept (== amount).
    function sweepUSDC(uint256 amount) external onlyCollateralManager returns (uint256 swept) {
        if (amount == 0) revert ZeroAmount();
        _usdcToSusds(amount);
        swept = amount;
        emit CollateralDeposited(msg.sender, address(USDC), amount);
    }

    // ====================================================================
    // View Helpers
    // ====================================================================

    /// @notice Current BTCD peg price in USD (WAD).
    function getBTCDPrice() external view returns (uint256) {
        return _getBTCDPriceWad();
    }

    /// @notice Current WBTC price in USD (WAD).
    function getWBTCPrice() external view returns (uint256) {
        return OracleAggregator.aggregate(_wbtcOracles);
    }

    /// @notice Current sUSDS price in USD (WAD), derived from the ERC-4626 exchange rate.
    /// @dev sUSDS is redeemed through the vault directly, so the on-chain rate is the
    ///      actual price this contract receives — no external oracle needed.
    function getSUSDSPrice() external view returns (uint256) {
        return _getSUSDSPriceWad();
    }

    /// @notice LitePSM fee parameters.
    function getPSMFees() external view returns (uint256 tin, uint256 tout) {
        return (LITE_PSM.tin(), LITE_PSM.tout());
    }

    /// @notice All three collateral balances in one atomic read.
    /// @dev Returns raw values — the engine driver combines them as needed.
    /// @return wbtcBalance WBTC held by this contract (8 decimals).
    /// @return idleUSDC    Raw USDC sitting on the contract, not yet swept (6 decimals).
    /// @return susdsUSDCValue sUSDS holdings converted to USDC terms (6 decimals, truncated).
    function getCollateralBalances() external view returns (
        uint256 wbtcBalance,
        uint256 idleUSDC,
        uint256 susdsUSDCValue
    ) {
        wbtcBalance = WBTC.balanceOf(address(this));
        idleUSDC = USDC.balanceOf(address(this));
        uint256 susdsShares = IERC20(address(SUSDS)).balanceOf(address(this));
        uint256 usdsValue = SUSDS.previewRedeem(susdsShares);
        susdsUSDCValue = usdsValue / DECIMAL_CONVERSION;
    }

    /// @notice Remaining mint capacity for the current block.
    function remainingMintCapacity() external view returns (uint128) {
        if (block.number != _mintCapacity.blockNumber) return maxMintPerBlock;
        return maxMintPerBlock > _mintCapacity.usedThisBlock ? maxMintPerBlock - _mintCapacity.usedThisBlock : 0;
    }

    /// @notice Remaining redeem capacity for the current block.
    function remainingRedeemCapacity() external view returns (uint128) {
        if (block.number != _redeemCapacity.blockNumber) return maxRedeemPerBlock;
        return maxRedeemPerBlock > _redeemCapacity.usedThisBlock ? maxRedeemPerBlock - _redeemCapacity.usedThisBlock : 0;
    }

    /// @notice Number of configured BTC/USD oracle sources.
    function btcOracleCount() external view returns (uint256) {
        return _btcOracles.length;
    }

    /// @notice Number of configured WBTC/USD oracle sources.
    function wbtcOracleCount() external view returns (uint256) {
        return _wbtcOracles.length;
    }


    // ====================================================================
    // Internal: USDC <> sUSDS Conversion Helpers
    // ====================================================================

    /// @dev Convert USDC to sUSDS via LitePSM + ERC-4626 deposit.
    function _usdcToSusds(uint256 usdcAmount) internal returns (uint256 susdsShares) {
        uint256 usdsBefore = USDS.balanceOf(address(this));
        LITE_PSM.sellGem(address(this), usdcAmount);
        uint256 usdsReceived = USDS.balanceOf(address(this)) - usdsBefore;
        susdsShares = SUSDS.deposit(usdsReceived, address(this));
    }

    /// @dev Redeem sUSDS to USDC via ERC-4626 redeem + LitePSM.
    ///      Residual USDS dust from decimal truncation is re-deposited to sUSDS.
    ///      If truncation yields zero USDC, all USDS is re-deposited (no buyGem call).
    function _susdsToUsdc(uint256 susdsShares, address receiver) internal returns (uint256 usdcAmount) {
        uint256 usdsReceived = SUSDS.redeem(susdsShares, address(this), address(this));
        usdcAmount = usdsReceived / DECIMAL_CONVERSION;

        if (usdcAmount > 0) {
            LITE_PSM.buyGem(receiver, usdcAmount);
        }

        // Re-deposit any USDS remainder (dust or full amount if usdcAmount == 0)
        // TODO: VaultMintingGoLive: Sub-share USDS dust (~$0.000001 per operation) is lost
        // when re-deposit yields 0 sUSDS shares. Consider accumulating dust in a state
        // variable and re-depositing when it exceeds a threshold (e.g., 1e15 USDS).
        uint256 remainder = usdsReceived - (usdcAmount * DECIMAL_CONVERSION);
        if (remainder > 0) {
            SUSDS.deposit(remainder, address(this));
        }
    }

    // ====================================================================
    // Internal: Pricing
    // ====================================================================

    /// @dev BTCD peg price in USD (WAD).
    ///      peg = sqrt(BTCUSD / P0) — uses _btcOracles (BTC/USD), NOT _wbtcOracles.
    /// @dev sUSDS price from ERC-4626 exchange rate: 1 sUSDS = convertToAssets(1e18) USDS ≈ USD.
    function _getSUSDSPriceWad() internal view returns (uint256) {
        return SUSDS.convertToAssets(WAD);
    }

    function _getBTCDPriceWad() internal view returns (uint256) {
        uint256 btcUsdWad = OracleAggregator.aggregate(_btcOracles);
        uint256 ratioWad = Math.mulDiv(btcUsdWad, WAD, P0_WAD);
        // Use mulDiv to avoid overflow: ratioWad * WAD could overflow for extreme BTC/P0 ratios
        return Math.sqrt(Math.mulDiv(ratioWad, WAD, 1));
    }

    function _quoteMintWBTC(uint256 amountIn) internal view returns (uint256) {
        if (amountIn == 0) return 0;
        uint256 wbtcUsd = OracleAggregator.aggregate(_wbtcOracles);
        uint256 btcdUsd = _getBTCDPriceWad();
        uint256 valueUsd = Math.mulDiv(amountIn, wbtcUsd, 10 ** uint256(WBTC_DECIMALS));
        return Math.mulDiv(valueUsd, WAD, btcdUsd);
    }

    function _quoteMintUSDC(uint256 usdcAmount) internal view returns (uint256) {
        if (usdcAmount == 0) return 0;
        uint256 usdsAmount = usdcAmount * DECIMAL_CONVERSION;
        uint256 susdsShares = SUSDS.previewDeposit(usdsAmount);
        uint256 susdsUsd = _getSUSDSPriceWad();
        uint256 btcdUsd = _getBTCDPriceWad();
        uint256 valueUsd = Math.mulDiv(susdsShares, susdsUsd, WAD);
        return Math.mulDiv(valueUsd, WAD, btcdUsd);
    }

    function _quoteBurnWBTC(uint256 btcdIn) internal view returns (uint256) {
        if (btcdIn == 0) return 0;
        uint256 btcdUsd = _getBTCDPriceWad();
        uint256 wbtcUsd = OracleAggregator.aggregate(_wbtcOracles);
        uint256 valueUsd = Math.mulDiv(btcdIn, btcdUsd, WAD);
        return Math.mulDiv(valueUsd, 10 ** uint256(WBTC_DECIMALS), wbtcUsd);
    }

    function _quoteBurnUSDC(uint256 btcdIn) internal view returns (uint256) {
        (uint256 usdcOut,) = _quoteBurnUSDCWithShares(btcdIn);
        return usdcOut;
    }

    /// @dev Returns USDC output and sUSDS shares needed for a burn.
    ///      Shares computed via oracle valuation (consistent with mint path pricing).
    ///      usdcOut is a truncated lower bound; dust is recycled in actual execution.
    function _quoteBurnUSDCWithShares(uint256 btcdIn) internal view returns (uint256 usdcOut, uint256 susdsShares) {
        if (btcdIn == 0) return (0, 0);
        uint256 btcdUsd = _getBTCDPriceWad();
        uint256 susdsUsd = _getSUSDSPriceWad();
        uint256 valueUsd = Math.mulDiv(btcdIn, btcdUsd, WAD);
        susdsShares = Math.mulDiv(valueUsd, WAD, susdsUsd);
        uint256 usdsOut = SUSDS.previewRedeem(susdsShares);
        uint256 tout = LITE_PSM.tout();
        if (tout > 0) {
            // buyGem charges tout: to get X USDC, need X*1e12 + X*1e12*tout/WAD USDS
            // So for usdsOut USDS available: usdcOut = usdsOut / (1e12 * (1 + tout/WAD))
            usdsOut = Math.mulDiv(usdsOut, WAD, WAD + tout);
        }
        usdcOut = usdsOut / DECIMAL_CONVERSION;
    }

    function _quoteBurnBalanced(uint256 btcdIn)
        internal
        view
        returns (uint256 wbtcOut, uint256 usdcOut, uint256 susdsSharesNeeded)
    {
        if (btcdIn == 0) return (0, 0, 0);

        uint256 btcdUsd = _getBTCDPriceWad();
        uint256 wbtcUsd = OracleAggregator.aggregate(_wbtcOracles);
        uint256 susdsUsd = _getSUSDSPriceWad();

        uint256 totalValueUsd = Math.mulDiv(btcdIn, btcdUsd, WAD);

        uint256 wbtcBal = WBTC.balanceOf(address(this));
        uint256 susdsBal = IERC20(address(SUSDS)).balanceOf(address(this));

        uint256 wbtcValueUsd = Math.mulDiv(wbtcBal, wbtcUsd, 10 ** uint256(WBTC_DECIMALS));
        uint256 susdsValueUsd = Math.mulDiv(susdsBal, susdsUsd, WAD);
        uint256 totalCollateralUsd = wbtcValueUsd + susdsValueUsd;

        if (totalCollateralUsd == 0) revert InsufficientCollateral();

        uint256 wbtcShareUsd = Math.mulDiv(totalValueUsd, wbtcValueUsd, totalCollateralUsd);
        uint256 susdsShareUsd = totalValueUsd - wbtcShareUsd;

        wbtcOut = Math.mulDiv(wbtcShareUsd, 10 ** uint256(WBTC_DECIMALS), wbtcUsd);
        susdsSharesNeeded = Math.mulDiv(susdsShareUsd, WAD, susdsUsd);
        uint256 usdsOut = SUSDS.previewRedeem(susdsSharesNeeded);
        uint256 tout = LITE_PSM.tout();
        if (tout > 0) {
            usdsOut = Math.mulDiv(usdsOut, WAD, WAD + tout);
        }
        usdcOut = usdsOut / DECIMAL_CONVERSION;
    }

    // ====================================================================
    // Internal: Fee & Capacity
    // ====================================================================

    /// @dev Split mint fee: balanced portion at mintBalancedFee, excess at mintOneFee.
    ///      The balanced/excess split uses oracle prices, which creates a theoretical
    ///      manipulation vector when fees diverge. Mitigated by: onlyVault access control,
    ///      Chainlink staleness checks, 30-minute minimum TWAP windows, and Curve EMA
    ///      manipulation resistance. If fees are symmetric, no incentive to manipulate.
    function _applySplitMintFee(uint256 wbtcIn, uint256 usdcIn)
        internal
        view
        returns (uint256 wbtcAfterFee, uint256 usdcAfterFee)
    {
        if (wbtcIn == 0 || usdcIn == 0) {
            // Pure single-asset: all at mintOneFee
            return (_applyFee(wbtcIn, mintOneFee), _applyFee(usdcIn, mintOneFee));
        }

        // Value both in USD (WAD)
        uint256 wbtcUsd = Math.mulDiv(wbtcIn, OracleAggregator.aggregate(_wbtcOracles), 10 ** uint256(WBTC_DECIMALS));
        uint256 usdcUsd = _usdcToUsdWad(usdcIn);

        // Split: matched portion is min(W,U) from each side
        uint256 matchedUsd = wbtcUsd < usdcUsd ? wbtcUsd : usdcUsd;

        // mulDiv rounds down → excess is slightly overestimated → protocol-favorable
        uint256 wbtcBalanced = Math.mulDiv(wbtcIn, matchedUsd, wbtcUsd);
        uint256 usdcBalanced = Math.mulDiv(usdcIn, matchedUsd, usdcUsd);
        uint256 wbtcExcess = wbtcIn - wbtcBalanced;
        uint256 usdcExcess = usdcIn - usdcBalanced;

        wbtcAfterFee = _applyFee(wbtcBalanced, mintBalancedFee) + _applyFee(wbtcExcess, mintOneFee);
        usdcAfterFee = _applyFee(usdcBalanced, mintBalancedFee) + _applyFee(usdcExcess, mintOneFee);
    }

    /// @dev Blended burn fee based on collateral ratio. Rounded UP to prevent undercharging.
    function _computeBlendedBurnFee() internal view returns (uint16) {
        uint256 wbtcBal = WBTC.balanceOf(address(this));
        uint256 susdsBal = IERC20(address(SUSDS)).balanceOf(address(this));

        uint256 wbtcUsd = Math.mulDiv(wbtcBal, OracleAggregator.aggregate(_wbtcOracles), 10 ** uint256(WBTC_DECIMALS));
        uint256 susdsUsd = Math.mulDiv(susdsBal, _getSUSDSPriceWad(), WAD);
        uint256 totalUsd = wbtcUsd + susdsUsd;

        if (totalUsd == 0) return burnOneFee;

        uint256 matchedUsd = wbtcUsd < susdsUsd ? wbtcUsd : susdsUsd;
        uint256 balancedBps = Math.mulDiv(2 * matchedUsd, BPS, totalUsd);
        uint256 excessBps = BPS - balancedBps;

        // Ceiling division to prevent undercharging
        uint256 blended = (balancedBps * burnBalancedFee + excessBps * burnOneFee + BPS - 1) / BPS;
        return uint16(blended);
    }

    /// @dev Convert USDC amount to USD value in WAD for comparison with WBTC USD value.
    function _usdcToUsdWad(uint256 usdcAmount) internal view returns (uint256) {
        uint256 usdsAmount = usdcAmount * DECIMAL_CONVERSION;
        uint256 susdsShares = SUSDS.previewDeposit(usdsAmount);
        return Math.mulDiv(susdsShares, _getSUSDSPriceWad(), WAD);
    }

    function _applyFee(uint256 amount, uint256 feeBps) internal pure returns (uint256) {
        if (feeBps == 0) return amount;
        return Math.mulDiv(amount, BPS - feeBps, BPS);
    }

    /// @dev Per-block mint capacity following BTCDMinting's pattern.
    function _consumeMintCapacity(uint256 btcdAmount) internal {
        if (block.number != _mintCapacity.blockNumber) {
            _mintCapacity.blockNumber = uint128(block.number);
            _mintCapacity.usedThisBlock = 0;
        }
        uint128 amount = _safeToUint128(btcdAmount);
        uint128 newTotal = _mintCapacity.usedThisBlock + amount;
        if (newTotal > maxMintPerBlock) {
            revert MaxMintPerBlockExceeded(btcdAmount, maxMintPerBlock - _mintCapacity.usedThisBlock);
        }
        _mintCapacity.usedThisBlock = newTotal;
    }

    /// @dev Per-block redeem capacity following BTCDMinting's pattern.
    function _consumeRedeemCapacity(uint256 btcdAmount) internal {
        if (block.number != _redeemCapacity.blockNumber) {
            _redeemCapacity.blockNumber = uint128(block.number);
            _redeemCapacity.usedThisBlock = 0;
        }
        uint128 amount = _safeToUint128(btcdAmount);
        uint128 newTotal = _redeemCapacity.usedThisBlock + amount;
        if (newTotal > maxRedeemPerBlock) {
            revert MaxRedeemPerBlockExceeded(btcdAmount, maxRedeemPerBlock - _redeemCapacity.usedThisBlock);
        }
        _redeemCapacity.usedThisBlock = newTotal;
    }

    error Uint128Overflow(uint256 value);

    function _safeToUint128(uint256 value) internal pure returns (uint128) {
        if (value > type(uint128).max) revert Uint128Overflow(value);
        return uint128(value);
    }

    // ====================================================================
    // Internal: Oracle Config Management
    // ====================================================================

    function _setOracles(
        OracleAggregator.OracleSource[] storage existing,
        OracleAggregator.OracleSource[] calldata sources,
        bytes32 key
    ) internal {
        // At least one oracle source required per asset
        if (sources.length == 0) revert InvalidOracleConfig();
        OracleAggregator.validateSources(sources);

        // Clear existing
        while (existing.length > 0) {
            existing.pop();
        }

        // Push new
        for (uint256 i; i < sources.length; ++i) {
            existing.push(sources[i]);
        }

        emit OraclesUpdated(key, sources.length);
    }
}
