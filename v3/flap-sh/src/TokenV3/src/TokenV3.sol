// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import {
    ERC20PermitUpgradeable
} from "@openzeppelin-contracts-upgradeable/token/ERC20/extensions/ERC20PermitUpgradeable.sol";
import {ERC20Upgradeable} from "@openzeppelin-contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import {IDividend} from "src/interfaces/Tax/IDividend.sol";
import {ITokenV3, PoolState, PackedPoolState} from "src/interfaces/ITokenV3.sol";
import {OwnableUpgradeable} from "@openzeppelin-contracts-upgradeable/access/OwnableUpgradeable.sol";

/// @notice Non-tax token for Uniswap V4 / PCS Infinity pools.
///         Mirrors FlapTaxTokenV2/V3's anti-farmer pattern using a pools mapping:
///           - pools mapping: all addresses to block (V2/V3 pools, V4 Vault, PCS Infinity Vault)
///           - mainPool: the V4 Vault/PoolManager — transfers require hook-lock during anti-farmer
///           - antiFarmerDuration stored at launch; finalizeMigration() converts to expiry timestamp
///         Anti-farmer enforcement (no tax): hard-revert on blocked pool interactions.
///         Hook-lock gate: mainPool transfers during anti-farmer require FlapV4Hook to open the gate.
contract TokenV3 is ITokenV3, ERC20PermitUpgradeable, OwnableUpgradeable {
    /// @notice The max supply of the token
    uint256 public maxSupply;

    /// @notice URI for the token metadata
    string public metaURI;

    /// @notice The primary trading pool (UniV4 PoolManager / PCS Infinity Vault).
    ///         This address MUST also be present in `pools` at initialize() time.
    ///         During the anti-farmer period this address is treated like any other pool entry —
    ///         transfers require the hook-lock gate to be open.
    ///         FlapV4Hook / FlapInfinityCLHook opens the gate transiently in beforeSwap,
    ///         which is the only legitimate path for swaps during anti-farmer.
    address public mainPool;

    /// @notice All known pool addresses for this token.
    ///         Populated from MULTI_DEX_ROUTER.getMajorPools() at launch time.
    ///         Mirrors FlapTaxTokenV2.pools.
    mapping(address => bool) public pools;

    /// @notice The duration of the anti-farmer period in seconds.
    ///         Stored at initialize() time; finalizeMigration() converts it to an expiry timestamp.
    uint256 public antiFarmerDuration;

    PackedPoolState private _poolState;

    /// @notice The address of the dividend contract for share tracking.
    ///         Set at initialize() time. address(0) still means dividends are disabled.
    ///         Mirrors FlapTaxTokenV2.dividendContract.
    address public dividendContract;

    /// @notice The address of the TaxProcessorV2 for LP-fee distribution.
    ///         Set at initialize() time and required to be non-zero.
    ///         Mirrors FlapTaxTokenV2.taxProcessor.
    address public taxProcessor;

    /// @notice The FlapV4Hook / FlapInfinityCLHook — only this address can call `openSwapGate`.
    ///         Set at initialize() time and required to be non-zero.
    address public flapV4Hook;

    // ═══════════════════════════════════════════════════════════════════════
    // Transient Storage — hook lock gate
    // ═══════════════════════════════════════════════════════════════════════

    /// @dev keccak256("TokenV3.swapGate")
    uint256 private constant SWAP_GATE_SLOT = 0xb7018090c7db23869733cb31cb5651d602a5109053e1af1ccf3ab2ee8d2783e7;

    // ═══════════════════════════════════════════════════════════════════════
    // Events & Errors
    // ═══════════════════════════════════════════════════════════════════════

    event TokenHookSet(address indexed hook);

    error OnlyHook();
    error DirectPoolManagerTransferBlocked();
    error InvalidAddress();
    error MainPoolNotRegistered();

    /// @dev Reverts with InvalidAddress if addr is zero.
    function _requireNotZero(address addr) internal pure {
        if (addr == address(0)) revert InvalidAddress();
    }

    constructor() {
        _disableInitializers();
    }

    /// @inheritdoc ITokenV3
    function initialize(ITokenV3.InitParams memory params) external override initializer {
        __ERC20_init(params.name, params.symbol);
        __ERC20Permit_init(params.name);
        __Ownable_init();

        _requireNotZero(params.mainPool);
        _requireNotZero(params.taxProcessor);
        _requireNotZero(params.flapV4Hook);
        mainPool = params.mainPool;
        maxSupply = params.maxSupply;
        metaURI = params.meta;
        antiFarmerDuration = params.antiFarmerDuration;
        dividendContract = params.dividendContract;
        taxProcessor = params.taxProcessor;
        flapV4Hook = params.flapV4Hook;

        uint256 numPools = params.pools.length;
        for (uint256 i = 0; i < numPools; i++) {
            if (params.pools[i] != address(0)) pools[params.pools[i]] = true;
        }
        if (!pools[params.mainPool]) revert MainPoolNotRegistered();

        _poolState = PackedPoolState({state: PoolState.BondingCurve, antiFarmerExpirationTime: 0});

        _mint(msg.sender, params.maxSupply);
    }

    function poolState() external view override returns (PackedPoolState memory) {
        return _poolState;
    }

    /// @notice Starts the migration process by transitioning the state of the pool
    function startMigration() external override onlyOwner {
        PackedPoolState memory currentPoolState = _poolState;
        if (PoolState(currentPoolState.state) == PoolState.BondingCurve) {
            currentPoolState.state = PoolState.Migrating;
            _poolState = currentPoolState;
            emit PoolStateChanged(uint8(PoolState.BondingCurve), uint8(currentPoolState.state));
        }
    }

    /// @notice Finalizes the migration by transitioning the state of the pool
    function finalizeMigration() external override onlyOwner {
        PackedPoolState memory currentPoolState = _poolState;
        if (PoolState(currentPoolState.state) == PoolState.Migrating) {
            currentPoolState.state = PoolState.EnforcedAntiFarmer;
            currentPoolState.antiFarmerExpirationTime = uint48(block.timestamp + antiFarmerDuration);
            _poolState = currentPoolState;
            emit PoolStateChanged(uint8(PoolState.Migrating), uint8(currentPoolState.state));
        }
    }

    /// @inheritdoc ITokenV3
    function antiFarmerExpirationTime() external view override returns (uint256) {
        return _poolState.antiFarmerExpirationTime;
    }

    // ═══════════════════════════════════════════════════════════════════════
    // Hook Lock — called by FlapV4Hook / FlapInfinityCLHook
    // ═══════════════════════════════════════════════════════════════════════

    /// @notice Open the transfer gate for the current transaction. Only callable by the authorized hook.
    ///         Uses transient storage — auto-resets to false at transaction end.
    function openSwapGate() external {
        if (msg.sender != flapV4Hook) revert OnlyHook();
        assembly ("memory-safe") {
            tstore(SWAP_GATE_SLOT, 1)
        }
    }

    /// @notice Read the current swap gate state (transient, tx-scoped).
    function isSwapGateOpen() external view returns (bool open) {
        assembly ("memory-safe") {
            open := tload(SWAP_GATE_SLOT)
        }
    }

    /// @notice Returns true if the anti-farmer window is currently active.
    ///         Called by FlapV4Hook.beforeAddLiquidity / beforeSwap to gate-check.
    function isAntiFarmerActive() external view returns (bool) {
        PackedPoolState memory s = _poolState;
        return s.antiFarmerExpirationTime != 0 && block.timestamp <= uint256(s.antiFarmerExpirationTime);
    }

    function _shouldSkipDividendShare(address account) internal view returns (bool) {
        return account == address(this) || account == address(0) || account == address(0xdead)
            || account == dividendContract || account == taxProcessor || pools[account];
    }

    function _afterTokenTransfer(address from, address to, uint256 amount) internal override {
        // Update dividend shares if dividendContract is set.
        // Mirrors FlapTaxTokenV2._afterTokenTransfer exactly.
        if (dividendContract != address(0)) {
            bool shouldSkipFrom = _shouldSkipDividendShare(from);
            bool shouldSkipTo = _shouldSkipDividendShare(to);

            if (!shouldSkipFrom) {
                try IDividend(dividendContract).setShare(from, balanceOf(from)) {}
                catch (bytes memory reason) {
                    revert DividendShareUpdateFailed(from, reason);
                }
            }

            if (!shouldSkipTo) {
                try IDividend(dividendContract).setShare(to, balanceOf(to)) {}
                catch (bytes memory reason) {
                    revert DividendShareUpdateFailed(to, reason);
                }
            }
        }

        emit TransferFlapToken(from, to, amount);
    }

    function _beforeTokenTransfer(address from, address to, uint256) internal override {
        PackedPoolState memory currentPoolState = _poolState;
        PoolState currentState = PoolState(currentPoolState.state);

        if (currentState == PoolState.BondingCurve) {
            require(!pools[from] && !pools[to], "Transfers to/from pools are restricted in BondingCurve state");
            return;
        } else if (currentState == PoolState.Migrating) {
            // During migration, we allow transfers to/from pools to enable LP provisioning,
            // but we don't enforce the hook-lock gate yet (that's only needed once the token is live on the DEX).
            return;
        } else if (currentState == PoolState.EnforcedAntiFarmer) {
            // Expiry check — same for both V4 and V2/V3 paths
            if (
                currentPoolState.antiFarmerExpirationTime != 0
                    && block.timestamp > uint256(currentPoolState.antiFarmerExpirationTime)
            ) {
                currentPoolState.state = PoolState.Free;
                _poolState = currentPoolState;
                emit PoolStateChanged(uint8(PoolState.EnforcedAntiFarmer), uint8(PoolState.Free));
                return;
            }

            if (flapV4Hook != address(0)) {
                // V4 / PCS Infinity path: ALL pool transfers (V2/V3 pools, V4 Vault,
                // PCS Infinity Vault) are blocked. The only way through is when
                // FlapV4Hook calls openSwapGate() in beforeSwap for that single tx.
                if (pools[from] || pools[to]) {
                    bool open;
                    assembly ("memory-safe") {
                        open := tload(SWAP_GATE_SLOT)
                    }
                    if (!open) revert DirectPoolManagerTransferBlocked();
                }
            } else {
                // V2/V3 path: block all pool transfers except mainPool (continues trading normally).
                if ((pools[from] && from != mainPool) || (pools[to] && to != mainPool)) {
                    revert DirectPoolManagerTransferBlocked();
                }
            }
        } else {
            // Free state: no restrictions
            return;
        }
    }
}
