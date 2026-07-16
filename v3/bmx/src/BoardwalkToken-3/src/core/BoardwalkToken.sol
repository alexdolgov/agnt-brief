// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.28;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {Initializable} from "@openzeppelin/contracts/proxy/utils/Initializable.sol";
import {IFeeDistributor} from "../interfaces/IFeeDistributor.sol";

/// @title BoardwalkToken - ERC20 with universal embedded tax and anti-whale protection
/// @notice Per-launch token deployed as EIP-1167 clone. Universal tax on all non-exempt transfers.
/// @dev Tax is deducted in _update and forwarded to FeeDistributor via onTaxReceived callback.
///      Only PresaleManager can mint (capped at TOTAL_SUPPLY) and set liquiditySeedTime.
contract BoardwalkToken is ERC20, Initializable {
    // ============ Constants ============

    uint256 public constant TOTAL_SUPPLY = 10_000_000_000e18; // 10 billion tokens
    uint256 private constant ANTI_WHALE_TAX = 4000; // 40%
    uint256 private constant ANTI_WHALE_DURATION = 90 minutes;

    // ============ State ============

    uint256 public baseTaxBps; // Base tax rate in basis points (e.g., 80 = 0.80%)
    uint256 public liquiditySeedTime; // 0 = not yet seeded, no tax applied

    address public feeDistributor; // Address of the FeeDistributor that receives tax tokens
    address public presaleManager; // Address authorized to mint tokens and set seed time

    mapping(address => bool) public isExempt; // Tax exemption whitelist

    string private _tokenName;
    string private _tokenSymbol;

    // ============ Errors ============

    error OnlyPresaleManager();
    error ExceedsTotalSupply();
    error InvalidBaseTaxBps();
    error ZeroAddress();
    error AlreadySeeded();
    error ZeroSeedTime();
    error FutureSeedTime();

    // ============ Events ============

    event TokenInitialized(
        string name, string symbol, uint256 baseTaxBps, address feeDistributor, address presaleManager
    );
    event LiquiditySeedTimeSet(uint256 seedTime);

    // ============ Constructor ============

    /// @dev ERC20 constructor requires name/symbol but clones will override via initialize.
    ///      Implementation template is disabled to prevent direct initialization.
    constructor() ERC20("", "") {
        _disableInitializers();
    }

    // ============ Initialization ============

    /// @notice Initialize the token clone. Can only be called once.
    /// @param _name Token name (= project name)
    /// @param _ticker Token ticker symbol
    /// @param _baseTaxBps Base tax in basis points (e.g., 80 = 0.80%)
    /// @param _feeDistributor Address of the FeeDistributor clone
    /// @param _presaleManager Address of the PresaleManager clone (authorized to mint)
    /// @param _exemptAddresses Array of addresses exempt from tax
    function initialize(
        string calldata _name,
        string calldata _ticker,
        uint256 _baseTaxBps,
        address _feeDistributor,
        address _presaleManager,
        address[] calldata _exemptAddresses
    ) external initializer {
        if (_feeDistributor == address(0)) revert ZeroAddress();
        if (_presaleManager == address(0)) revert ZeroAddress();
        if (_baseTaxBps > ANTI_WHALE_TAX) revert InvalidBaseTaxBps();

        _tokenName = _name;
        _tokenSymbol = _ticker;
        baseTaxBps = _baseTaxBps;
        feeDistributor = _feeDistributor;
        presaleManager = _presaleManager;

        isExempt[_feeDistributor] = true;

        // Set additional exempt addresses
        for (uint256 i = 0; i < _exemptAddresses.length;) {
            if (_exemptAddresses[i] != address(0)) {
                isExempt[_exemptAddresses[i]] = true;
            }
            unchecked {
                ++i;
            }
        }

        emit TokenInitialized(_name, _ticker, _baseTaxBps, _feeDistributor, _presaleManager);
    }

    // ============ ERC20 Metadata Override ============

    /// @notice Returns the token name set during initialization
    /// @dev Override name() to return clone-specific name set during initialize()
    function name() public view override returns (string memory) {
        return _tokenName;
    }

    /// @notice Returns the token symbol (ticker) set during initialization
    /// @dev Override symbol() to return clone-specific symbol set during initialize()
    function symbol() public view override returns (string memory) {
        return _tokenSymbol;
    }

    // ============ Presale-Only Functions ============

    /// @notice Mint tokens. Only callable by PresaleManager, capped at TOTAL_SUPPLY.
    /// @dev Called multiple times during seedLiquidity() for different recipients.
    ///      After all allocations are minted (100% of supply), no more can ever be minted.
    /// @param to Recipient address
    /// @param amount Amount to mint (18 decimals)
    function mint(
        address to,
        uint256 amount
    ) external {
        if (msg.sender != presaleManager) revert OnlyPresaleManager();
        if (totalSupply() + amount > TOTAL_SUPPLY) revert ExceedsTotalSupply();
        _mint(to, amount);
    }

    /// @notice Set the liquidity seed time for anti-whale decay calculation.
    /// @dev Only callable by PresaleManager, called once during seedLiquidity().
    /// @param _seedTime Timestamp when liquidity was seeded
    function setLiquiditySeedTime(
        uint256 _seedTime
    ) external {
        if (msg.sender != presaleManager) revert OnlyPresaleManager();
        if (liquiditySeedTime != 0) revert AlreadySeeded();
        if (_seedTime == 0) revert ZeroSeedTime();
        if (_seedTime > block.timestamp) revert FutureSeedTime();
        liquiditySeedTime = _seedTime;
        emit LiquiditySeedTimeSet(_seedTime);
    }

    // ============ Transfer Override with Tax ============

    /// @dev Override ERC20._update to apply universal tax on all non-exempt transfers.
    ///      Tax flow: deduct tax from amount, send tax to FeeDistributor, callback to split/forward.
    ///      Mints (from == address(0)) and burns (to == address(0)) are never taxed.
    /// @param from Sender address
    /// @param to Recipient address
    /// @param amount Transfer amount (before tax)
    function _update(
        address from,
        address to,
        uint256 amount
    ) internal override {
        // Skip tax on mints and burns
        if (from == address(0) || to == address(0)) {
            super._update(from, to, amount);
            return;
        }

        uint256 tax = _calculateTax(from, to, amount);

        if (tax > 0) {
            // Send tax to FeeDistributor
            super._update(from, feeDistributor, tax);

            // Notify FeeDistributor to split and forward fees
            // This triggers: LP fees -> LPStaking, Boardwalk fees -> FeeCollector
            IFeeDistributor(feeDistributor).onTaxReceived(tax);
        }

        // Send remaining amount to recipient
        super._update(from, to, amount - tax);
    }

    // ============ Tax Calculation ============

    /// @dev Calculate tax for a transfer. Universal: applies to ALL non-exempt transfers.
    ///      Returns 0 if either party is exempt, or if liquidity hasn't been seeded yet.
    ///      During anti-whale period (first 90 min), tax decays linearly from 40% to baseTaxBps.
    /// @param from Sender address
    /// @param to Recipient address
    /// @param amount Transfer amount
    /// @return Tax amount to deduct
    function _calculateTax(
        address from,
        address to,
        uint256 amount
    ) internal view returns (uint256) {
        // Exempt addresses pay no tax
        if (isExempt[from] || isExempt[to]) return 0;

        // Before liquidity is seeded, no tax (token not yet trading)
        uint256 seedTime = liquiditySeedTime;
        if (seedTime == 0) return 0;

        uint256 elapsed = block.timestamp - seedTime;
        uint256 _baseTaxBps = baseTaxBps;

        // After anti-whale period, flat base tax
        if (elapsed >= ANTI_WHALE_DURATION) {
            return amount * _baseTaxBps / 10000;
        }

        // During anti-whale period: linear decay from 40% to baseTaxBps over 90 minutes
        uint256 currentTax = ANTI_WHALE_TAX - (ANTI_WHALE_TAX - _baseTaxBps) * elapsed / ANTI_WHALE_DURATION;
        return amount * currentTax / 10000;
    }
}
