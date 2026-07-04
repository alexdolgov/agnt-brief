// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.29;

import {IDecoderAndSanitizer} from "../../interfaces/IDecoderAndSanitizer.sol";
import {ISentryDelegation} from "../../interfaces/ISentryDelegation.sol";
import {ITokenWhitelistRegistry} from "../../interfaces/ITokenWhitelistRegistry.sol";

/// @title AerodromeRouterDecoderAndSanitizer
/// @notice Decodes and sanitizes calldata for Aerodrome Finance Router swap and LP interactions.
///         Ensures that users can only interact with approved functions, that the recipient
///         address (`to`) points back to the caller, that every hop in a swap `Route[]`
///         uses the canonical Aerodrome pool factory (preventing a compromised keeper from
///         routing the swap through an attacker-deployed factory that returns dust), and
///         that the user-observable swap endpoints / LP token addresses are on the canonical
///         token whitelist. Factory pinning validates the pool's *source* (canonical factory)
///         but does NOT constrain the tokens of pools created on that factory — anyone can
///         permissionlessly create a real Aerodrome pool around a scam token. The whitelist
///         lookup (via `ISentryDelegation(caller).tokenWhitelist()`) closes that gap.
contract AerodromeRouterDecoderAndSanitizer is IDecoderAndSanitizer {
    // ── Errors ──────────────────────────────────────────────────────────────

    error UnsupportedSelector(bytes4 selector);
    error InvalidRecipient(address expected, address got);
    error InvalidFactory(address expected, address got, uint256 hopIndex);
    error EmptyRoute();
    error ZeroRouter();
    error ZeroFactory();

    // ── Immutables ──────────────────────────────────────────────────────────

    /// @notice The Aerodrome Router address (for optional target validation)
    address public immutable aerodromeRouter;

    /// @notice The canonical Aerodrome pool factory. Every hop in a swap `Route[]`
    ///         must pin this address — prevents routing through attacker-deployed
    ///         factories that can impersonate pools and return fake tokens.
    address public immutable aerodromeFactory;

    // ── Aerodrome Router selectors ──────────────────────────────────────────

    // swapExactTokensForTokens(uint256,uint256,(address,address,bool,address)[],address,uint256)
    bytes4 internal constant SWAP_EXACT_TOKENS_FOR_TOKENS_SELECTOR = 0xcac88ea9;
    // swapExactETHForTokens(uint256,(address,address,bool,address)[],address,uint256)
    bytes4 internal constant SWAP_EXACT_ETH_FOR_TOKENS_SELECTOR = 0x903638a4;
    // swapExactTokensForETH(uint256,uint256,(address,address,bool,address)[],address,uint256)
    bytes4 internal constant SWAP_EXACT_TOKENS_FOR_ETH_SELECTOR = 0xc6b7f1b6;
    // swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256,uint256,(address,address,bool,address)[],address,uint256)
    bytes4 internal constant SWAP_EXACT_TOKENS_FOR_TOKENS_FOT_SELECTOR = 0x88cd821e;
    // swapExactETHForTokensSupportingFeeOnTransferTokens(uint256,(address,address,bool,address)[],address,uint256)
    bytes4 internal constant SWAP_EXACT_ETH_FOR_TOKENS_FOT_SELECTOR = 0x3da5acba;
    // swapExactTokensForETHSupportingFeeOnTransferTokens(uint256,uint256,(address,address,bool,address)[],address,uint256)
    bytes4 internal constant SWAP_EXACT_TOKENS_FOR_ETH_FOT_SELECTOR = 0x12bc3aca;

    // ── Liquidity selectors ──────────────────────────────────────────────

    // addLiquidity(address,address,bool,uint256,uint256,uint256,uint256,address,uint256)
    bytes4 internal constant ADD_LIQUIDITY_SELECTOR = 0x5a47ddc3;
    // addLiquidityETH(address,bool,uint256,uint256,uint256,address,uint256)
    bytes4 internal constant ADD_LIQUIDITY_ETH_SELECTOR = 0xb7e0d4c0;
    // removeLiquidity(address,address,bool,uint256,uint256,uint256,address,uint256)
    bytes4 internal constant REMOVE_LIQUIDITY_SELECTOR = 0x0dede6c4;
    // removeLiquidityETH(address,bool,uint256,uint256,uint256,address,uint256)
    bytes4 internal constant REMOVE_LIQUIDITY_ETH_SELECTOR = 0xd7b0e0a5;
    // removeLiquidityETHSupportingFeeOnTransferTokens(address,bool,uint256,uint256,uint256,address,uint256)
    bytes4 internal constant REMOVE_LIQUIDITY_ETH_FOT_SELECTOR = 0xfe411f14;

    constructor(address _aerodromeRouter, address _aerodromeFactory) {
        if (_aerodromeRouter == address(0)) revert ZeroRouter();
        if (_aerodromeFactory == address(0)) revert ZeroFactory();
        aerodromeRouter = _aerodromeRouter;
        aerodromeFactory = _aerodromeFactory;
    }

    /// @inheritdoc IDecoderAndSanitizer
    function decode(
        bytes calldata calldata_,
        bytes calldata /* auxData */,
        address caller
    ) external view returns (bytes memory) {
        bytes4 selector = bytes4(calldata_[:4]);

        if (selector == SWAP_EXACT_TOKENS_FOR_TOKENS_SELECTOR) return _swapTokensToTokens(calldata_, caller);
        if (selector == SWAP_EXACT_ETH_FOR_TOKENS_SELECTOR) return _swapEthToTokens(calldata_, caller);
        if (selector == SWAP_EXACT_TOKENS_FOR_ETH_SELECTOR) return _swapTokensToEth(calldata_, caller);
        if (selector == SWAP_EXACT_TOKENS_FOR_TOKENS_FOT_SELECTOR) return _swapTokensToTokens(calldata_, caller);
        if (selector == SWAP_EXACT_ETH_FOR_TOKENS_FOT_SELECTOR) return _swapEthToTokens(calldata_, caller);
        if (selector == SWAP_EXACT_TOKENS_FOR_ETH_FOT_SELECTOR) return _swapTokensToEth(calldata_, caller);

        // Liquidity
        // addLiquidity(tokenA, tokenB, stable, ..., to, deadline) — tokenA=0, tokenB=1, to=7
        if (selector == ADD_LIQUIDITY_SELECTOR) return _validateLpTwoTokens(calldata_, caller, 7);
        // addLiquidityETH(token, stable, ..., to, deadline) — token=0, to=5 (ETH leg implicit)
        if (selector == ADD_LIQUIDITY_ETH_SELECTOR) return _validateLpOneToken(calldata_, caller, 5);
        // removeLiquidity(tokenA, tokenB, stable, ..., to, deadline) — tokenA=0, tokenB=1, to=6
        if (selector == REMOVE_LIQUIDITY_SELECTOR) return _validateLpTwoTokens(calldata_, caller, 6);
        // removeLiquidityETH(token, stable, ..., to, deadline) — token=0, to=5
        if (selector == REMOVE_LIQUIDITY_ETH_SELECTOR) return _validateLpOneToken(calldata_, caller, 5);
        if (selector == REMOVE_LIQUIDITY_ETH_FOT_SELECTOR) return _validateLpOneToken(calldata_, caller, 5);

        revert UnsupportedSelector(selector);
    }

    // ── Internal Decoders ───────────────────────────────────────────────────

    /// @dev swapExactTokensForTokens(uint256 amountIn, uint256 amountOutMin, Route[] routes, address to, uint256 deadline)
    ///      swapExactTokensForTokensSupportingFeeOnTransferTokens(...same params...)
    ///      `routes` pointer is at param index 2; `to` is at param index 3.
    function _swapTokensToTokens(
        bytes calldata calldata_,
        address caller
    ) internal view returns (bytes memory) {
        _validateRouteFactories(calldata_, 2);
        _validateRouteEndpoints(calldata_, caller, 2);

        address to = _extractAddress(calldata_, 3);
        if (to != caller) revert InvalidRecipient(caller, to);

        return abi.encodePacked(to);
    }

    /// @dev swapExactETHForTokens(uint256 amountOutMin, Route[] routes, address to, uint256 deadline)
    ///      swapExactETHForTokensSupportingFeeOnTransferTokens(...same params...)
    ///      `routes` pointer is at param index 1; `to` is at param index 2.
    ///      For ETH-in variants the router wraps msg.value into WETH; the user-facing
    ///      tokenIn surfaces in calldata as `route[0].from` (the WETH address), so the
    ///      same endpoint check applies — WETH must be whitelisted.
    function _swapEthToTokens(
        bytes calldata calldata_,
        address caller
    ) internal view returns (bytes memory) {
        _validateRouteFactories(calldata_, 1);
        _validateRouteEndpoints(calldata_, caller, 1);

        address to = _extractAddress(calldata_, 2);
        if (to != caller) revert InvalidRecipient(caller, to);

        return abi.encodePacked(to);
    }

    /// @dev swapExactTokensForETH(uint256 amountIn, uint256 amountOutMin, Route[] routes, address to, uint256 deadline)
    ///      swapExactTokensForETHSupportingFeeOnTransferTokens(...same params...)
    ///      `routes` pointer is at param index 2; `to` is at param index 3.
    function _swapTokensToEth(
        bytes calldata calldata_,
        address caller
    ) internal view returns (bytes memory) {
        _validateRouteFactories(calldata_, 2);
        _validateRouteEndpoints(calldata_, caller, 2);

        address to = _extractAddress(calldata_, 3);
        if (to != caller) revert InvalidRecipient(caller, to);

        return abi.encodePacked(to);
    }

    /// @dev LP entry points that take two explicit token params (tokenA, tokenB) at the
    ///      start of the static section, followed by a recipient at `toParamIndex`:
    ///
    ///      addLiquidity(address tokenA, address tokenB, bool stable, ..., address to, uint256 deadline)
    ///        — tokenA=0, tokenB=1, to=7
    ///      removeLiquidity(address tokenA, address tokenB, bool stable, ..., address to, uint256 deadline)
    ///        — tokenA=0, tokenB=1, to=6
    function _validateLpTwoTokens(
        bytes calldata calldata_,
        address caller,
        uint8 toParamIndex
    ) internal view returns (bytes memory) {
        ITokenWhitelistRegistry registry = ISentryDelegation(caller).tokenWhitelist();
        registry.requireWhitelistedFor(caller, _extractAddress(calldata_, 0));
        registry.requireWhitelistedFor(caller, _extractAddress(calldata_, 1));

        address to = _extractAddress(calldata_, toParamIndex);
        if (to != caller) revert InvalidRecipient(caller, to);
        return abi.encodePacked(to);
    }

    /// @dev LP entry points that take one explicit token param (token) at slot 0
    ///      with the ETH leg implicit, followed by a recipient at `toParamIndex`:
    ///
    ///      addLiquidityETH(address token, bool stable, ..., address to, uint256 deadline)
    ///        — token=0, to=5
    ///      removeLiquidityETH / _FOT — token=0, to=5
    function _validateLpOneToken(
        bytes calldata calldata_,
        address caller,
        uint8 toParamIndex
    ) internal view returns (bytes memory) {
        ISentryDelegation(caller).tokenWhitelist().requireWhitelistedFor(caller, _extractAddress(calldata_, 0));

        address to = _extractAddress(calldata_, toParamIndex);
        if (to != caller) revert InvalidRecipient(caller, to);
        return abi.encodePacked(to);
    }

    /// @dev Resolves user-observable `tokenIn` (`route[0].from`) and `tokenOut`
    ///      (`route[length-1].to`) from a `Route[]` parameter and requires both to be on
    ///      the canonical token whitelist. Intermediate-hop tokens are NOT gated —
    ///      only the assets the user actually receives or spends are user-observable,
    ///      and gating intermediate hops would unnecessarily restrict routing.
    ///
    ///      Aerodrome `Route` layout: `(address from, address to, bool stable, address factory)`.
    ///      Each element is 4 words (4*32 bytes). `from` sits at element offset 0,
    ///      `to` at element offset 32.
    /// @param routesParamIndex 0-based parameter index of the `Route[]` pointer in the static section
    function _validateRouteEndpoints(
        bytes calldata calldata_,
        address caller,
        uint8 routesParamIndex
    ) internal view {
        // 1. Resolve the Route[] start position via the ABI offset pointer.
        uint256 ptrOffset = 4 + uint256(routesParamIndex) * 32;
        require(calldata_.length >= ptrOffset + 32, "calldata too short");
        uint256 routesOffset = uint256(bytes32(calldata_[ptrOffset:ptrOffset + 32]));
        uint256 routesStart = 4 + routesOffset;

        // 2. Read the array length word.
        require(calldata_.length >= routesStart + 32, "routes length OOB");
        uint256 length = uint256(bytes32(calldata_[routesStart:routesStart + 32]));
        if (length == 0) revert EmptyRoute();

        // 3. Cache the registry reference once to avoid two staticcalls to `caller`.
        ITokenWhitelistRegistry registry = ISentryDelegation(caller).tokenWhitelist();

        // 4. tokenIn = route[0].from at offset `routesStart + 32`.
        uint256 elemSize = 4 * 32;
        uint256 tokenInSlot = routesStart + 32;
        require(calldata_.length >= tokenInSlot + 32, "route head OOB");
        address tokenIn = address(uint160(uint256(bytes32(calldata_[tokenInSlot:tokenInSlot + 32]))));
        registry.requireWhitelistedFor(caller, tokenIn);

        // 5. tokenOut = route[length-1].to at offset `routesStart + 32 + (length-1)*elemSize + 32`.
        uint256 tokenOutSlot = routesStart + 32 + (length - 1) * elemSize + 32;
        require(calldata_.length >= tokenOutSlot + 32, "route tail OOB");
        address tokenOut = address(uint160(uint256(bytes32(calldata_[tokenOutSlot:tokenOutSlot + 32]))));
        registry.requireWhitelistedFor(caller, tokenOut);
    }

    /// @dev Extracts an address from calldata at the given parameter index.
    ///      Works correctly even when earlier params are dynamic types (e.g. Route[]),
    ///      because ABI encoding places a 32-byte offset pointer in the static section
    ///      for dynamic types, keeping all subsequent static params at predictable offsets.
    /// @param calldata_ Full calldata including 4-byte selector
    /// @param paramIndex 0-based parameter index in the static section
    function _extractAddress(
        bytes calldata calldata_,
        uint8 paramIndex
    ) internal pure returns (address) {
        uint256 offset = 4 + uint256(paramIndex) * 32;
        require(calldata_.length >= offset + 32, "calldata too short");
        return address(uint160(uint256(bytes32(calldata_[offset:offset + 32]))));
    }

    /// @dev Reverts if any hop in the Route[] does not pin the canonical Aerodrome factory.
    ///      Aerodrome `Route` is a 4-word static tuple: (address from, address to, bool stable, address factory).
    ///      The factory field sits at byte offset 96 (3 * 32) within each element.
    /// @param calldata_ Full calldata including 4-byte selector
    /// @param routesParamIndex 0-based parameter index of the `Route[]` pointer in the static section
    function _validateRouteFactories(bytes calldata calldata_, uint8 routesParamIndex) internal view {
        // 1. Resolve the Route[] start position via the ABI offset pointer.
        uint256 ptrOffset = 4 + uint256(routesParamIndex) * 32;
        require(calldata_.length >= ptrOffset + 32, "calldata too short");
        uint256 routesOffset = uint256(bytes32(calldata_[ptrOffset:ptrOffset + 32]));
        uint256 routesStart = 4 + routesOffset;

        // 2. Read the array length word.
        require(calldata_.length >= routesStart + 32, "routes length OOB");
        uint256 length = uint256(bytes32(calldata_[routesStart:routesStart + 32]));
        if (length == 0) revert EmptyRoute();

        // 3. Walk each hop and assert its factory == canonical factory.
        uint256 elemSize = 4 * 32; // (from, to, stable, factory)
        address expected = aerodromeFactory;
        for (uint256 i; i < length; ++i) {
            uint256 factorySlot = routesStart + 32 + i * elemSize + 3 * 32;
            require(calldata_.length >= factorySlot + 32, "route hop OOB");
            address got = address(uint160(uint256(bytes32(calldata_[factorySlot:factorySlot + 32]))));
            if (got != expected) revert InvalidFactory(expected, got, i);
        }
    }
}
