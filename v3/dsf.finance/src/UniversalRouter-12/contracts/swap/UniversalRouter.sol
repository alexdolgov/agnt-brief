// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";

/**
 * @title  DSF UniversalRouter
 * @author Andrei Averin — CTO dsf.finance
 * @notice A universal router that combines DEX modules (Curve, UniswapV2, SushiSwap, UniswapV3, etc.)
 *         and performs single and split swaps with automatic commission withholding.
 * @dev    Router:
 * - Requests the best quotes (1-hop and 2-hop) from all modules;
 * - Selects the optimal route or split between the two best;
 * - Pulls tokens from the user, approves modules, and executes the swap;
 * - Charges a fee from the swap (feeBpsSwap) and from positive slippage (feeBpsPositive);
 * - Supports ETH↔WETH, secure calls, and module list management.
 *
 * Uses low-level staticcall to IDexModule.getBestRoute(address,address,uint256)
 * and a unified payload format: 
 * abi.encode(module,index,quotedOut,tokenIn,tokenOut,amountIn,bytes[] route).
 */

/* ─────────────────────────────── Interfaces / Types ─────────────────────────────── */

struct DexRoute { bytes[] data; }

struct Quote {
    address pool;
    int128  i;
    int128  j;
    bool    useUnderlying;
    uint256 amountOut;
}

struct BestAgg {
    bytes payload;
    uint256 amount;
    address module;
    uint256 idx;
}

struct RouteInfo {
    address module;
    uint256 index;
    bytes   payload;  // the same format as in getBestRoute/decodeRoute
    uint256 amount;   // quotedOut
}

struct QuoteArgs {
    address tokenIn;
    address tokenOut;
    uint256 amountIn;
}

struct LegDecoded {
    address module;
    uint256 index;
    uint256 quoted;   // quotedOut from payload
    address tokenIn;
    address tokenOut;
    uint256 amountIn;
    bytes[] route;
}

struct SplitResult {
    address moduleA;
    address moduleB;
    address tokenIn;
    address tokenOut;
    uint256 totalIn;
    uint256 amountInA;
    uint256 amountInB;
    uint256 outA;
    uint256 outB;
    uint256 totalOut;
}

struct TrackedRoute {
    bytes payload;
    uint256 amountOut;
    address module;
    uint256 moduleIndex;
}

struct BestQuotes {
    TrackedRoute top1Hop;
    TrackedRoute second1Hop;
    TrackedRoute top2Hop;
    TrackedRoute second2Hop;
}

struct ModuleQuotes {
    address module;
    uint256 moduleIndex;
    bytes payload1Hop;
    uint256 amountOut1Hop;
    bytes payload2Hop;
    uint256 amountOut2Hop;
}

interface IDexModule {
    /**
     * @notice  Compute the best 1-hop and 2-hop routes.
     * @param   tokenIn       Input token
     * @param   tokenOut      Output token
     * @param   amountIn      Input amount
     * @return  best1HopRoute Serialized 1-hop route
     * @return  amountOut1Hop Quoted 1-hop output
     * @return  best2HopRoute Serialized 2-hop route
     * @return  amountOut2Hop Quoted 2-hop output
     */
    function getBestRoute(
        address tokenIn,
        address tokenOut,
        uint256 amountIn
    ) external view returns (
        DexRoute memory best1HopRoute,
        uint256 amountOut1Hop,
        DexRoute memory best2HopRoute,
        uint256 amountOut2Hop
    );

    /**
     * @notice  Execute a previously returned route with a slippage check based on a percentage.
     * @param   route     Serialized route
     * @param   to        Recipient of the final tokens
     * @param   percent   Percentage (0-100) of amountIn from the route to be swapped. 100 = 100%.
     * @return  amountOut Actual output received
     */
    function swapRoute(
        DexRoute calldata route,
        address to,
        uint256 percent
    ) external returns (uint256 amountOut);

    /**
     * @notice  Simulate a route (1–2 hops) encoded as {DexRoute}.
     * @param   route Serialized route
     * @param   percent   Percentage (0-100)
     * @return  amountOut Quoted total output amount
     */
    function simulateRoute(
        DexRoute calldata route,
        uint256 percent
    ) external view returns (uint256 amountOut);
}

interface IWETH {
    function deposit() external payable;
    function withdraw(uint256 amount) external;
    function transfer(address to, uint256 amount) external returns (bool);
    function balanceOf(address) external view returns (uint256);
}

contract UniversalRouter is Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    /* ─────────────────────────────── Storage ─────────────────────────────── */

    address public constant WETH = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;
    address[] public modules;                                // list of modules (Curve, UniV2, Sushi, UniV3)
    mapping(address => bool)     public isModule;
    mapping(address => uint256)  private moduleIndexPlusOne; // 1-based for O(1) remove

    /* ───────────────────────────── Fees config ───────────────────────────── */

    address public feeRecipient;                             // commission recipient address
    uint16  public feeBpsSwap;                               // commission in bps (max 10000 = 100%)
    uint16  public feeBpsPositive;                           // commission with positive slippage, bps (max 100 = 1%)

    /* ────────────────────────────── Fees caps ────────────────────────────── */

    uint16 public constant MAX_FEE_SWAP_BPS      = 100;     // 1%
    uint16 public constant MAX_FEE_POSITIVE_BPS  = 10_000;   // 100%

    /* ─────────────────────────────── Events ──────────────────────────────── */

    event ModuleAdded(address indexed module);
    event ModuleRemoved(address indexed module);
    event ModulesReset(uint256 newCount);
    event FeeConfigUpdated(address indexed recipient, uint16 bpsSwap, uint16 bpsPositive);
   
    /**
     * @notice Execution of a single swap.
     * @param  module    Module that executed the route.
     * @param  user      Initiator (msg.sender).
     * @param  to        Recipient of the final funds.
     * @param  tokenIn   Input token.
     * @param  tokenOut  Output token.
     * @param  amountIn  Input amount (withdrawn from the user).
     * @param  amountOut Final amount after fees (net).
     * @param  quotedOut Expected output (quota from payload).
     */
    event SwapExecuted(
        address indexed module,
        address indexed user,
        address indexed to,
        address tokenIn,
        address tokenOut,
        uint256 amountIn,
        uint256 amountOut,
        uint256 quotedOut
    );

    /**
     * @notice Execution of a split swap via two routes.
     * @param  user      Initiator (msg.sender).
     * @param  to        Recipient of the final funds.
     * @param  moduleA   Module A.
     * @param  moduleB   Module B.
     * @param  tokenIn   Input token (or WETH for ETH route).
     * @param  tokenOut  Output token.
     * @param  totalIn   Total input.
     * @param  totalOut  Total output (after fees — if the event is emitted after distribution).
     * @param  bpsA      Share A in percent (0–100).
     */
    event SwapSplitExecuted(
        address indexed user,
        address indexed to,
        address moduleA,
        address moduleB,
        address tokenIn,
        address tokenOut,
        uint256 totalIn,
        uint256 totalOut,
        uint16  bpsA
    );

    /* ─────────────────────────────── Errors ─────────────────────────────── */

    error ZeroAddress();
    error DuplicateModule();
    error NotAModule();
    error InvalidFee();
    error NoRouteFound();
    error SlippageExceeded(uint256 actual, uint256 expected);

    /* ─────────────────────────────── Modifiers ─────────────────────────────── */

    modifier onlyERC20(address token) {
        require(token != address(0) && token.code.length > 0, "not ERC20");
        _;
    }

    /* ──────────────────────────────── receive ───────────────────────────────── */

    /// @notice Needed to get native ETH (e.g., with IWETH.withdraw()).
    receive() external payable {}

    /* ─────────────────────────────── Constructor ─────────────────────────────── */

    /**
     * @notice Deploys the router and configures modules and commission parameters.
     * @param  _modules        List of module addresses (Curve/UniV2/UniV3/…).
     * @param  _feeRecipient   Address of the commission recipient.
     * @param  _feeBpsSwap     Swap fee, bps (max. limited by require inside).
     * @param  _feeBpsPositive Positive slippage fee, bps (max. limited by require inside).
     */
    constructor(
        address[] memory _modules, 
        address _feeRecipient, 
        uint16 _feeBpsSwap,
        uint16 _feeBpsPositive
    ) Ownable(msg.sender) {
        _setModules(_modules);
        require(_feeBpsSwap     <= MAX_FEE_SWAP_BPS,     "UR: swap fee too high");
        require(_feeBpsPositive <= MAX_FEE_POSITIVE_BPS, "UR: pos fee too high");
        feeRecipient   = _feeRecipient;
        feeBpsSwap     = _feeBpsSwap;
        feeBpsPositive = _feeBpsPositive;

        emit FeeConfigUpdated(feeRecipient, feeBpsSwap, feeBpsPositive);
    }

    /* ──────────────────────────── Admin: modules mgmt ────────────────────────── */

    /**
     * @notice Complete reset of the module list.
     * @dev    Clears old ones, adds new ones, emits ModulesReset.
     * @param  _modules New list of modules.
     */
    function setModules(address[] calldata _modules) external onlyOwner {
        _clearModules();
        _addModules(_modules);
        emit ModulesReset(_modules.length);
    }

    /**
     * @notice Add module to allowlist.
     * @param  module Address of IDexModule module.
     */
    function addModule(address module) external onlyOwner {
        _addModule(module);
    }

    /**
     * @notice Remove module from allowlist.
     * @param  module Address of IDexModule module.
     */
    function removeModule(address module) external onlyOwner {
        _removeModule(module);
    }

    /**
     * @notice Returns the number of connected modules.
     * @return The length of the modules array.
     */
    function modulesLength() external view returns (uint256) {
        return modules.length;
    }

    /**
     * @notice Returns the current list of modules.
     * @dev    The array is returned in memory (a copy of the state).
     * @return An array of module addresses.
     */
    function getModules() external view returns (address[] memory) {
        return modules;
    }

    /* ───────────────────────────────── Admin: fee ────────────────────────────── */

    /**
     * @notice Update the address of the commission recipient.
     * @param  _recipient New address of the fee recipient.
     */
    function setFeeRecipient(address _recipient) external onlyOwner {
        feeRecipient = _recipient;
        emit FeeConfigUpdated(feeRecipient, feeBpsSwap, feeBpsPositive);
    }

    /**
     * @notice Update commission percentages.
     * @dev    Upper limit checked via require; emits FeeConfigUpdated.
     * @param  _feeBpsSwap Swap commission, bps.
     * @param  _feeBpsPositive Positive slippage commission, bps.
     */
    function setFeePercents(uint16 _feeBpsSwap, uint16 _feeBpsPositive) external onlyOwner {
        require(_feeBpsSwap     <= MAX_FEE_SWAP_BPS,     "UR: swap fee too high");
        require(_feeBpsPositive <= MAX_FEE_POSITIVE_BPS, "UR: pos fee too high");
        feeBpsSwap     = _feeBpsSwap;
        feeBpsPositive = _feeBpsPositive;
        emit FeeConfigUpdated(feeRecipient, feeBpsSwap, feeBpsPositive);
    }

    /**
     * @notice Completely reinstalls the list of modules.
     * @dev    Clears the current modules, then adds new ones. Emits ModulesReset.
     * @param  _modules New list of modules.
     */
    function _setModules(address[] memory _modules) internal {
        _clearModules();
        uint256 n = _modules.length;
        for (uint256 i; i < n; ) {
            _addModule(_modules[i]);
            unchecked { ++i; }
        }
        emit ModulesReset(n);
    }

    /**
     * @notice Resets (clears) all modules.
     * @dev    Resets isModule and indexes; clears the modules array.
     */
    function _clearModules() internal {
        uint256 n = modules.length;
        for (uint256 i; i < n; ) {
            address m = modules[i];
            isModule[m] = false;
            moduleIndexPlusOne[m] = 0;
            unchecked { ++i; }
        }
        delete modules;
    }

    /**
     * @notice Adds modules in bulk.
     * @dev    Calls _addModule for each address.
     * @param  _modules List of module addresses.
     */
    function _addModules(address[] calldata _modules) internal {
        uint256 n = _modules.length;
        for (uint256 i; i < n; ) {
            _addModule(_modules[i]);
            unchecked { ++i; }
        }
    }

    /**
     * @notice Adds one module to the allowlist.
     * @dev    Checks for a non-zero address, the presence of code, and the absence of duplicates.
     *         Updates isModule, modules, and moduleIndexPlusOne. Emits ModuleAdded.
     * @param  module The module contract address.
     */
    function _addModule(address module) internal {
        if (module == address(0)) revert ZeroAddress();
        if (isModule[module]) revert DuplicateModule();

        // (опционально) минимальная проверка кода
        uint256 size;
        assembly { size := extcodesize(module) }
        if (size == 0) revert ZeroAddress(); // «пустой» адрес

        isModule[module] = true;
        modules.push(module);
        moduleIndexPlusOne[module] = modules.length; // 1-based
        emit ModuleAdded(module);
    }

    /**
     * @notice Removes a module from the allowlist.
     * @dev    Performs O(1) removal via swap-pop, supporting 1-based indexing.
     *         Emit ModuleRemoved.
     * @param  module Address of the module to be removed.
     */
    function _removeModule(address module) internal {
        uint256 idxPlusOne = moduleIndexPlusOne[module];
        if (idxPlusOne == 0) revert NotAModule();

        uint256 idx = idxPlusOne - 1;
        uint256 lastIdx = modules.length - 1;

        if (idx != lastIdx) {
            address last = modules[lastIdx];
            modules[idx] = last;
            moduleIndexPlusOne[last] = idx + 1;
        }
        modules.pop();

        isModule[module] = false;
        moduleIndexPlusOne[module] = 0;
        emit ModuleRemoved(module);
    }

    /* ─────────────────────────────── WETH Helpers ────────────────────────────── */
    
    /**
     * @dev    Wraps incoming native ETH into WETH.
     * @param  amount Amount of ETH to wrap (msg.value).
     */
    function _wrapETH(uint256 amount) internal {
        IWETH(WETH).deposit{value: amount}();
    }

    /**
     * @dev    Converts WETH back to ETH and sends it to the recipient.
     * @param  amount Amount of WETH to convert.
     * @param  to Recipient's native ETH address.
     */
    function _unwrapWETHAndSend(uint256 amount, address to) internal {
        require(IWETH(WETH).balanceOf(address(this)) >= amount, "UR: insufficient WETH");
        IWETH(WETH).withdraw(amount);
        // Send native ETH
        (bool success,) = to.call{value: amount}("");
        require(success, "UR: ETH transfer failed");
    }

    /* ───────────────────────────── ETH payout/guards ─────────────────────────── */

    /**
     * @notice Ensures that tokenIn == WETH in the input payload.
     * @dev    Reads the address from slot 3 of the payload ABI header (see _loadAddressFromPayload).
     * @param  payload ABI-encoded route: (module,index,quotedOut,tokenIn,tokenOut,amountIn,bytes[]).
     */
    function _requireWethIn(bytes calldata payload) internal pure {
        address tokenIn = _loadAddressFromPayload(payload, 3);
        require(tokenIn == WETH, "UR: payload tokenIn != WETH");
    }

    /**
     * @notice Ensures that tokenOut == WETH in the output payload.
     * @dev    Reads the address from the ABI header payload in slot 4 (see _loadAddressFromPayload).
     * @param  payload ABI-encoded route: (module,index,quotedOut,tokenIn,tokenOut,amountIn,bytes[]).
     */
    function _requireWethOut(bytes calldata payload) internal pure {
        address tokenOut = _loadAddressFromPayload(payload, 4);
        require(tokenOut == WETH, "UR: payload tokenOut != WETH");
    }

    /**
     * @notice Quick reading of the address from the ABI header payload.
     * @dev    The slot corresponds to the position of a 32-byte word in abi.encode(...).
     *         0: module, 1: index, 2: quotedOut, 3: tokenIn, 4: tokenOut, 5: amountIn, 6: offset(bytes[]).
     * @param  payload Full ABI payload.
     * @param  slot Slot number (0-based).
     * @return a Address read from the specified slot.
     */
    function _loadAddressFromPayload(bytes calldata payload, uint256 slot) internal pure returns (address a) {
        assembly {
            a := shr(96, calldataload(add(payload.offset, mul(slot, 32))))
        }
    }

    /* ────────────────────────────────── Helpers ──────────────────────────────── */

    /**
     * @notice Updates the best quotes in 1-hop and 2-hop segments.
     * @dev    Supports “top-1” and “top-2” for each category.
     * @param  currentBest Current best routes.
     * @param  newRoute Candidate for inclusion.
     * @param  is1Hop 1-hop (true) or 2-hop (false) flag.
     */
    function _updateBestQuotes(BestQuotes memory currentBest, TrackedRoute memory newRoute, bool is1Hop) private pure {
        if (is1Hop) {
            if (newRoute.amountOut > currentBest.top1Hop.amountOut) {
                currentBest.second1Hop = currentBest.top1Hop;
                currentBest.top1Hop = newRoute;
            } else if (newRoute.amountOut > currentBest.second1Hop.amountOut) {
                currentBest.second1Hop = newRoute;
            }
        } else { // 2-hop
            if (newRoute.amountOut > currentBest.top2Hop.amountOut) {
                currentBest.second2Hop = currentBest.top2Hop;
                currentBest.top2Hop = newRoute;
            } else if (newRoute.amountOut > currentBest.second2Hop.amountOut) {
                currentBest.second2Hop = newRoute;
            }
        }
    }

    /**
     * @notice Updates the two absolute best routes found so far (overall Top-1 and Top-2).
     * @dev    If the new route beats Top-1, it becomes Top-1 and the old Top-1 shifts to Top-2.
     *         Otherwise, if it only beats Top-2, it replaces Top-2.
     * @param  top1     Current absolute best route (Top-1).
     * @param  top2     Current second absolute best route (Top-2).
     * @param  newRoute Newly observed candidate route to compare against the tops.
     * @return Updated  Top-1 and Top-2 routes (in this order).
     */
    function _updateTopOverall(
        TrackedRoute memory top1,
        TrackedRoute memory top2,
        TrackedRoute memory newRoute
    ) private pure returns (TrackedRoute memory, TrackedRoute memory) {
        if (newRoute.amountOut > top1.amountOut) {
            top2 = top1;
            top1 = newRoute;
        } else if (newRoute.amountOut > top2.amountOut) {
            top2 = newRoute;
        }
        return (top1, top2);
    }

    /**
     * @notice Queries a module for the best 1-hop and 2-hop quotes and packages them as payloads.
     * @dev    Calls IDexModule.getBestRoute via staticcall and, if non-zero quotes are returned,
     *         encodes payloads as abi.encode(module, index, quotedOut, tokenIn, tokenOut, amountIn, route.data).
     *         If the module is not registered or the call fails/returns empty, the struct remains zeroed.
     * @param  m   Module address being queried.
     * @param  idx Module index (stored for payload bookkeeping).
     * @param  a   Quote arguments (tokenIn, tokenOut, amountIn).
     * @return quotes Struct holding module info, 1-hop/2-hop amounts and payloads (if any).
     */
    function _getModuleQuotes(
        address m,
        uint256 idx,
        QuoteArgs memory a
    ) internal view returns (ModuleQuotes memory quotes) {
        quotes.module = m;
        quotes.moduleIndex = idx;
        
        if (!isModule[m]) return quotes;

        bytes memory cd = abi.encodeWithSelector(
            IDexModule.getBestRoute.selector,
            a.tokenIn,
            a.tokenOut,
            a.amountIn
        );

        (bool success, bytes memory ret) = m.staticcall(cd);
        if (!success || ret.length == 0) return quotes;

        (
            DexRoute memory route1, uint256 out1,
            DexRoute memory route2, uint256 out2
        ) = abi.decode(ret, (DexRoute, uint256, DexRoute, uint256));

        // Build payloads only for non-zero, non-empty routes.
        if (out1 > 0 && route1.data.length > 0) {
            quotes.amountOut1Hop = out1;
            quotes.payload1Hop = abi.encode(
                m, idx, out1, a.tokenIn, a.tokenOut, a.amountIn, route1.data
            );
        }
        
        if (out2 > 0 && route2.data.length > 0) {
            quotes.amountOut2Hop = out2;
            quotes.payload2Hop = abi.encode(
                m, idx, out2, a.tokenIn, a.tokenOut, a.amountIn, route2.data
            );
        }
    }

    /**
     * @dev    Private helper function for calculating the total output amount.
     * @param  percentA Percentage of amountIn for Route A (0-100).
     */
    function _calculateTotalOut(
        address moduleA,
        bytes[] memory routeA,
        address moduleB,
        bytes[] memory routeB,
        uint16 percentA // 0-100
    ) internal view returns (uint256 totalOut) {
        uint16 percentB = 100 - percentA;
        
        // simulateRoute for A (percent 0–100)
        uint256 outA = IDexModule(moduleA).simulateRoute(DexRoute({ data: routeA }), percentA);
        
        // simulateRoute for B (percent 0–100)
        uint256 outB = IDexModule(moduleB).simulateRoute(DexRoute({ data: routeB }), percentB);
        
        return outA + outB;
    }
    
    /**
     * @notice Quickly returns quotedOut from payload without full decoding.
     * @dev    Reads the third word (after module and index) from abi.encode(...).
     * @param  payload Full ABI payload of the route.
     * @return out_    quotedOut value.
     */
    function _extractQuotedOut(bytes memory payload) internal pure returns (uint256 out_) {
        assembly {
            // payload: [len][module][index][amountOut]...
            let data := add(payload, 32)
            out_ := mload(add(data, 64)) // 64 = 2 * 32
        }
    }

    /**
     * @notice Safely sets the allowance to the required minimum.
     * @dev    If the current allowance < amount, first set it to zero (if >0), then set it to type(uint256).max.
     *         Uses    SafeERC20.forceApprove for maximum compatibility.
     * @param  token   ERC20 token address.
     * @param  spender Contract address to which we issue the allowance.
     * @param  amount  Minimum required limit.
     */
    function _smartApprove(address token, address spender, uint256 amount) internal {
        uint256 cur = IERC20(token).allowance(address(this), spender);
        if (cur < amount) {
            if (cur > 0) IERC20(token).forceApprove(spender, 0);
            IERC20(token).forceApprove(spender, type(uint256).max);
        }
    }

    /**
     * @notice Emits the consolidated split-swap execution event.
     * @dev    Packs the essential split data into a single event for off-chain indexing/analytics.
     * @param  r       Split result struct (modules, tokens, totals).
     * @param  user    Original caller (initiator).
     * @param  to      Final receiver of the swapped tokens/ETH.
     * @param  bpsA    Portion routed through module A, in percent (0–100).
     */
    function _emitSwapSplit(
        SplitResult memory r,
        address user,
        address to,
        uint16 bpsA
    ) internal {
        emit SwapSplitExecuted(
            user,
            to,
            r.moduleA,
            r.moduleB,
            r.tokenIn,
            r.tokenOut,
            r.totalIn,
            r.totalOut,
            bpsA
        );
    }

    /**
     * @notice Decodes a route payload (in memory) into a typed struct used by the router.
     * @dev    Expects payload encoded as:
     *         (address module, uint256 index, uint256 quoted, address tokenIn, address tokenOut, uint256 amountIn, bytes[] route)
     * @param  payload ABI-encoded payload stored in memory.
     * @return d Decoded LegDecoded struct.
     */
    function _decodeRouteStruct(bytes memory payload)
        internal
        pure
        returns (LegDecoded memory d)
    {
        (d.module, d.index, d.quoted, d.tokenIn, d.tokenOut, d.amountIn, d.route) =
            abi.decode(payload, (address, uint256, uint256, address, address, uint256, bytes[]));
    }

    /**
     * @notice Decodes a route payload (in calldata) into a typed struct used by the router.
     * @dev    Same layout as the memory version, but reads directly from calldata to save gas.
     * @param  payload ABI-encoded payload residing in calldata.
     * @return d Decoded LegDecoded struct.
     */
    function _decodeRouteStructCallData(bytes calldata payload)
        internal
        pure
        returns (LegDecoded memory d)
    {
        (d.module, d.index, d.quoted, d.tokenIn, d.tokenOut, d.amountIn, d.route) =
            abi.decode(payload, (address, uint256, uint256, address, address, uint256, bytes[]));
    }

    /**
     * @notice Peeks common (tokenIn, tokenOut, amountIn) fields from an encoded hop blob.
     * @dev    Assumes each hop is ABI-encoded as: (address tokenIn, address tokenOut, ..., uint256 amountIn),
     *         so the first two words are addresses and the last word is amountIn.
     *         This is a generic helper and makes no assumptions about intermediate fields.
     * @param  hop ABI-encoded hop bytes.
     * @return tokenIn  First address word of the hop.
     * @return tokenOut Second address word of the hop.
     * @return amountIn Last 32-byte word of the hop (amountIn).
     */
    function _peekInOutAmt(bytes memory hop)
        internal
        pure
        returns (address tokenIn, address tokenOut, uint256 amountIn)
    {
        assembly {
            let p := add(hop, 32)             // pointer to data
            tokenIn  := shr(96, mload(p))     // first address
            tokenOut := shr(96, mload(add(p, 32))) // second address
            let len := mload(hop)
            amountIn := mload(add(p, sub(len, 32))) // last 32 bytes
        }
    }

    /**
     * @notice Distribution of commissions and ERC20 transfer.
     * @dev    Retains fix-fee (feeBpsSwap) and % of positive slippage (feeBpsPositive).
     * @param  token        ERC20 address.
     * @param  to           Recipient.
     * @param  grossOut     Actual output after swap(s).
     * @param  quotedOut    Quote (expectation).
     * @param  minOut       Minimum acceptable output.
     * @return netOut       Amount after commissions.
     */
    function _distributeTokenWithFees(
        address token,
        address to,
        uint256 grossOut,         // actual output after swap(s)
        uint256 quotedOut,        // quoted (expected) output
        uint256 minOut
    ) internal returns (uint256 netOut) {
        if (grossOut == 0) return 0;

        uint256 baseline = quotedOut > minOut ? quotedOut : minOut;

        uint256 feeSwap = 0;
        uint256 feePos  = 0;

        // take fees only if recipient is set and bps > 0
        if (feeRecipient != address(0)) {
            if (feeBpsSwap > 0) {
                unchecked { feeSwap = (grossOut * feeBpsSwap) / 10_000; }
            }
            if (feeBpsPositive > 0 && grossOut > baseline) {
                unchecked { feePos = ((grossOut - baseline) * feeBpsPositive) / 10_000; }
            }
        }

        uint256 totalFee = feeSwap + feePos;
        // safety guard against overflow/rounding:
        if (totalFee > grossOut) totalFee = grossOut;

        netOut = grossOut - totalFee;

        // Payouts: send fee to feeRecipient first, then net to user
        if (totalFee > 0) {
            IERC20(token).safeTransfer(feeRecipient, totalFee);
        }
        IERC20(token).safeTransfer(to, netOut);
    }

    /**
     * @notice Distribution of fees and transfer of ETH.
     * @dev    Similar      to _distributeTokenWithFees, but for ETH.
     * @param  to           Recipient.
     * @param  grossEth     Actual ETH output.
     * @param  quotedOutEth Expected output.
     * @param  minOutEth    Minimum allowable output.
     * @return netOut       Amount after fees.
     */
    function _distributeETHWithFees(
        address to,
        uint256 grossEth,         // actual ETH output
        uint256 quotedOutEth,     // expected output (WETH==ETH)
        uint256 minOutEth
    ) internal returns (uint256 netOut) {
        if (grossEth == 0) return 0;

        uint256 baseline = quotedOutEth > minOutEth ? quotedOutEth : minOutEth;

        uint256 feeSwap = 0;
        uint256 feePos  = 0;

        if (feeRecipient != address(0)) {
            if (feeBpsSwap > 0) {
                unchecked { feeSwap = (grossEth * feeBpsSwap) / 10_000; }
            }
            if (feeBpsPositive > 0 && grossEth > baseline) {
                unchecked { feePos = ((grossEth - baseline) * feeBpsPositive) / 10_000; }
            }
        }

        uint256 totalFee = feeSwap + feePos;
        if (totalFee > grossEth) totalFee = grossEth;

        netOut = grossEth - totalFee;

        if (totalFee > 0) {
            (bool fs, ) = feeRecipient.call{value: totalFee}("");
            require(fs, "fee ETH xfer failed");
        }
        (bool ok, ) = to.call{value: netOut}("");
        require(ok, "ETH xfer failed");
    }

    /**
     * @notice Safely reads the balance and allowance of a token for a pair (wallet, spender).
     * @dev For address(0), we treat it as ETH: we return the ETH balance of the wallet and allowance = 0.
     * Uses low-level staticcall to handle non-standard ERC-20 tokens (e.g., USDT).
     */
    function _safeBalanceAndAllowance(
        address token,
        address wallet,
        address spender
    ) internal view returns (uint256 bal, uint256 allow_) {
        if (token == address(0)) {
            // ETH: allowance not applicable
            return (wallet.balance, 0);
        }

        // balanceOf(wallet)
        (bool ok1, bytes memory data1) =
            token.staticcall(abi.encodeWithSelector(IERC20.balanceOf.selector, wallet));
        if (ok1 && data1.length >= 32) {
            bal = abi.decode(data1, (uint256));
        } else {
            bal = 0;
        }

        // allowance(wallet, spender)
        (bool ok2, bytes memory data2) =
            token.staticcall(abi.encodeWithSelector(IERC20.allowance.selector, wallet, spender));
        if (ok2 && data2.length >= 32) {
            allow_ = abi.decode(data2, (uint256));
        } else {
            allow_ = 0;
        }
    }

    /* ──────────────────────────────────── Read ───────────────────────────────── */

    /**
     * @notice Returns the balance of `wallet` in `token` and the allowance of this token for `spender`.
     * @param token   ERC-20 token address (or address(0) for ETH)
     * @param wallet  address of the owner of the funds
     * @param spender address of the contract for which we are checking the allowance
     * @return balance  wallet balance in token (or ETH balance if token==address(0))
     * @return allowance_ current token allowance for spender
     */
    function balanceAndAllowanceOf(
        address token,
        address wallet,
        address spender
    ) external view returns (uint256 balance, uint256 allowance_) {
        (balance, allowance_) = _safeBalanceAndAllowance(token, wallet, spender);
    }

    /**
     * @notice Return the 4 best routes (Top-1/Top-2 for 1-hop and 2-hop) and (optionally) the optimal split of the two absolute leaders.
     * @param  tokenIn           Input token.
     * @param  tokenOut          Output token.
     * @param  amountIn          Input amount.
     * @return best1HopRouteTop1 Payload of the best 1-hop.
     * @return amountOut1HopTop1 Quote of the best 1-hop.
     * @return best2HopRouteTop1 Payload of the best 2-hop.
     * @return amountOut2HopTop1 Quote for the best 2-hop.
     * @return best1HopRouteTop2 Payload of the second 1-hop.
     * @return amountOut1HopTop2 Quote for the second 1-hop.
     * @return best2HopRouteTop2 Payload of the second 2-hop.
     * @return amountOut2HopTop2 Quote for the second 2-hop.
     * @return splitAmountOut    Best split quote between two absolute tops (0 if split does not improve).
     * @return splitPercentA     Share for route A (in percent, 0–100) for split (0 if split is not applicable).
     */
    function getBestRoute(
        address tokenIn,
        address tokenOut,
        uint256 amountIn
    ) external view returns (
        bytes memory best1HopRouteTop1, uint256 amountOut1HopTop1,
        bytes memory best2HopRouteTop1, uint256 amountOut2HopTop1,
        bytes memory best1HopRouteTop2, uint256 amountOut1HopTop2,
        bytes memory best2HopRouteTop2, uint256 amountOut2HopTop2,
        uint256 splitAmountOut, uint16 splitPercentA
    ) {
        QuoteArgs memory qa = QuoteArgs({
            tokenIn: tokenIn,
            tokenOut: tokenOut,
            amountIn: amountIn
        });

        BestQuotes memory best; 
        TrackedRoute memory top1Overall; // Absolute best route
        TrackedRoute memory top2Overall; // Second best route

        for (uint256 i = 0; i < modules.length; ) {
            ModuleQuotes memory quotes = _getModuleQuotes(modules[i], i, qa);

            if (quotes.amountOut1Hop > 0) {
                TrackedRoute memory r1 = TrackedRoute({
                    payload: quotes.payload1Hop,
                    amountOut: quotes.amountOut1Hop,
                    module: quotes.module,
                    moduleIndex: quotes.moduleIndex
                });
                _updateBestQuotes(best, r1, true); 
                (top1Overall, top2Overall) = _updateTopOverall(top1Overall, top2Overall, r1);
            }

            if (quotes.amountOut2Hop > 0) {
                TrackedRoute memory r2 = TrackedRoute({
                    payload: quotes.payload2Hop,
                    amountOut: quotes.amountOut2Hop,
                    module: quotes.module,
                    moduleIndex: quotes.moduleIndex
                });
                _updateBestQuotes(best, r2, false); 
                (top1Overall, top2Overall) = _updateTopOverall(top1Overall, top2Overall, r2);
            }

            unchecked { ++i; }
        }

        if (top1Overall.amountOut == 0) revert NoRouteFound();

        // Return the standard 8 fields
        best1HopRouteTop1 = best.top1Hop.payload; amountOut1HopTop1 = best.top1Hop.amountOut;
        best2HopRouteTop1 = best.top2Hop.payload; amountOut2HopTop1 = best.top2Hop.amountOut;
        best1HopRouteTop2 = best.second1Hop.payload; amountOut1HopTop2 = best.second1Hop.amountOut;
        best2HopRouteTop2 = best.second2Hop.payload; amountOut2HopTop2 = best.second2Hop.amountOut;

        // Compute split between the two overall best routes (T1 and T2)
        if (top2Overall.amountOut > 0 && keccak256(top1Overall.payload) != keccak256(top2Overall.payload)) {
            (splitAmountOut, splitPercentA) = findBestSplit(
                top1Overall.payload, 
                top2Overall.payload
            );
            
            // If split provides no improvement, do not return it,
            // since the best will be either T1 or T2 (T1.amountOut >= T2.amountOut).
            if (splitAmountOut <= top1Overall.amountOut) {
                 splitAmountOut = 0;
                 splitPercentA = 0;
            }
        } else {
            // If only one route found, or T1 == T2, split is not applicable
            splitAmountOut = 0;
            splitPercentA = 0;
        }
    }

    /**
     * @notice Return the absolute best route and a list of all successful routes from the modules.
     * @param  tokenIn           Input token.
     * @param  tokenOut          Output token.
     * @param  amountIn          Input amount.
     * @return bestPayload       Payload of the best route.
     * @return bestAmountOut     Quote of the best route.
     * @return bestModule        Address of the winning module.
     * @return bestModuleIndex   Index of the module in the array.
     * @return routes            Array of all successful routes (payload + quote).
     */
    function getBestRouteAndAll(
        address tokenIn,
        address tokenOut,
        uint256 amountIn
    )
        external
        view
        returns (
            bytes memory,        // bestPayload (overall best)
            uint256,             // bestAmountOut
            address,             // bestModule
            uint256,             // bestModuleIndex
            RouteInfo[] memory   // routes (all successful routes, including the best one)
        )
    {
        // Maximum modules * 2 (1-hop + 2-hop) routes
        RouteInfo[] memory allRoutes = new RouteInfo[](modules.length * 2);

        BestAgg memory best;
        QuoteArgs memory qa = QuoteArgs({tokenIn: tokenIn, tokenOut: tokenOut, amountIn: amountIn});
        uint256 k = 0; // Counter of successful routes

        for (uint256 i = 0; i < modules.length; ) {
            ModuleQuotes memory quotes = _getModuleQuotes(modules[i], i, qa);

            // 1-hop
            if (quotes.amountOut1Hop > 0) {
                allRoutes[k] = RouteInfo({
                    module: quotes.module,
                    index: i,
                    payload: quotes.payload1Hop,
                    amount: quotes.amountOut1Hop
                });
                if (quotes.amountOut1Hop > best.amount) {
                    best.amount  = quotes.amountOut1Hop;
                    best.payload = quotes.payload1Hop;
                    best.module  = quotes.module;
                    best.idx     = i;
                }
                unchecked { ++k; }
            }
            
            // 2-hop
            if (quotes.amountOut2Hop > 0) {
                allRoutes[k] = RouteInfo({
                    module: quotes.module,
                    index: i,
                    payload: quotes.payload2Hop,
                    amount: quotes.amountOut2Hop
                });
                if (quotes.amountOut2Hop > best.amount) {
                    best.amount  = quotes.amountOut2Hop;
                    best.payload = quotes.payload2Hop;
                    best.module  = quotes.module;
                    best.idx     = i;
                }
                unchecked { ++k; }
            }

            unchecked { ++i; }
        }

        if (k == 0) revert NoRouteFound();

        assembly { mstore(allRoutes, k) } // Shrink array length to k

        return (best.payload, best.amount, best.module, best.idx, allRoutes);
    }

    /**
     * @notice Find the best split ratio between two route payloads.
     * @dev    Discrete search by simulateRoute + local fine-tuning.
     * @param  payloadA          Route A.
     * @param  payloadB          Route B.
     * @return bestAmountOut     Best total quote.
     * @return bestPercentA      Share of A (0–100) giving the maximum.
     */
    function findBestSplit(
        bytes memory payloadA, // ИЗМЕНЕНИЕ: bytes memory
        bytes memory payloadB
    )
        internal 
        view
        returns (
            uint256 bestAmountOut,
            uint16 bestPercentA
        )
    {
        // Decode and verify
        LegDecoded memory A = _decodeRouteStruct(payloadA);
        LegDecoded memory B = _decodeRouteStruct(payloadB);

        require(A.amountIn > 0 && B.amountIn > 0, "UR: zero amounts");
        require(A.tokenIn == B.tokenIn, "UR: in mismatch");
        require(A.tokenOut == B.tokenOut, "UR: out mismatch");
        require(A.amountIn == B.amountIn, "UR: totalIn mismatch"); 

        address moduleA = A.module;
        address moduleB = B.module;
        
        // --- Step 1: Initialization (50%) ---
        uint16 initialPercent = 50; // 50%
        
        uint256 currentMaxOut = _calculateTotalOut(
            moduleA, A.route, moduleB, B.route, initialPercent
        );
        uint16 currentBestPercent = initialPercent;

        // --- Step 2: Main sparse search: 10% to 90% in 10% increments ---
        // Check 10, 20, 30, 40, 60, 70, 80, 90. (50% already checked).
        for (uint16 percent = 10; percent <= 90; percent += 10) {
            if (percent == 50) continue; 

            uint256 totalOut = _calculateTotalOut(
                moduleA, A.route, moduleB, B.route, percent
            );

            if (totalOut > currentMaxOut) {
                currentMaxOut = totalOut;
                currentBestPercent = percent;
            }
        }
        
        // --- Step 3: Refinement (Local search, +/- 5% step) ---
        uint16 bestPercentFound = currentBestPercent;
        
        // Array of offsets for refinement: [-5, +5] Percent
        int16[] memory offsets = new int16[](2);
        offsets[0] = -5; // Checking -5% from the best point
        offsets[1] = 5;  // Checking +5% from the best point

        for (uint256 i = 0; i < offsets.length; ) {
            int16 offset = offsets[i];
            
            // Protection against values exceeding the limits (e.g., below 1% or above 99%)
            // Condition: bestPercentFound <= 5 (for -5) or bestPercentFound >= 95 (for +5)
            if (
                (offset < 0 && bestPercentFound <= uint16(-offset)) || 
                (offset > 0 && bestPercentFound >= 100 - uint16(offset))
            ) {
                 unchecked { ++i; }
                 continue;
            }
            
            uint16 checkPercent;
            if (offset < 0) {
                checkPercent = bestPercentFound - uint16(-offset);
            } else {
                checkPercent = bestPercentFound + uint16(offset);
            }
            
            // Check that the point is within a reasonable range for swap [1, 99]
            if (checkPercent >= 1 && checkPercent <= 99) { 
                uint256 totalOut = _calculateTotalOut(
                    moduleA, A.route, moduleB, B.route, checkPercent
                );

                if (totalOut > currentMaxOut) {
                    currentMaxOut = totalOut;
                    currentBestPercent = checkPercent;
                }
            }
            unchecked { ++i; }
        }
        
        // 4. Return the result
        bestAmountOut = currentMaxOut;
        bestPercentA = currentBestPercent;
    }

    /**
     * @notice Decodes the route payload.
     * @param  payload ABI-encoded packet.
     * @return module            Module address.
     * @return moduleIndex       Module index.
     * @return quotedOut         Output quote.
     * @return tokenIn           Input token.
     * @return tokenOut          Output token.
     * @return amountIn          Input amount.
     * @return routeData         Route byte hops.
     */
    function decodeRoute(bytes calldata payload)
        public
        pure
        returns (
            address module,
            uint256 moduleIndex,
            uint256 quotedOut,
            address tokenIn,
            address tokenOut,
            uint256 amountIn,
            bytes[] memory routeData
        )
    {
        (module, moduleIndex, quotedOut, tokenIn, tokenOut, amountIn, routeData) =
            abi.decode(payload, (address, uint256, uint256, address, address, uint256, bytes[]));
    }   

    /* ──────────────────────────────────── Swap ───────────────────────────────── */

    /* ─────────────── ROUTE: Token → Token ───────────── */

    /**
     * @notice Execute a swap based on a pre-prepared payload.
     * @dev    Takes a commission from the swap and positive slippage; checks minAmountOut; transfers the net amount to `to`.
     * @param  payload           ABI-encoded route (see decodeRoute).
     * @param  to                Recipient of the final tokens.
     * @param  minAmountOut      Minimum allowable output.
     * @return netOut            Net amount after commissions are deducted.
     */
    function swapRoute(bytes calldata payload, address to, uint256 minAmountOut)
        external
        nonReentrant
        returns (uint256 netOut)
    {
        require(to != address(0), "UR: bad to");

        (
            address module, , uint256 quotedOut,
            address tokenIn, address tokenOut, uint256 amountIn,
            bytes[] memory routeData
        ) = decodeRoute(payload);

        require(isModule[module], "UR: unknown module");
        require(amountIn > 0, "UR: zero amountIn");
        require(routeData.length > 0, "UR: empty route");

        IERC20(tokenIn).safeTransferFrom(msg.sender, address(this), amountIn);
        _smartApprove(tokenIn, module, amountIn);

        uint256 amountOut = IDexModule(module).swapRoute(DexRoute({ data: routeData }), address(this), 100);
        require(amountOut >= minAmountOut, "UR: slippage");

        // Pay the user minus the fee — and return immediately
        netOut = _distributeTokenWithFees(tokenOut, to, amountOut, quotedOut, minAmountOut);

        emit SwapExecuted(module, msg.sender, to, tokenIn, tokenOut, amountIn, netOut, quotedOut);
    }

    /* ─────────────── ROUTE: ETH → Token ─────────────── */

    /**
     * @notice Swap ETH→Token by payload with WETH as tokenIn.
     * @dev    Wraps ETH in WETH, calls the module, holds commissions, sends net amount `to`.
     * @param  payload           Route packet (tokenIn=WETH, amountIn=msg.value).
     * @param  to                Recipient.
     * @param  minAmountOut      Minimum output.
     * @return netOut            Net amount (ERC20).
     */
    function swapRouteExactETHForTokens(
        bytes calldata payload,      // payload with tokenIn == WETH and amountIn == msg.value
        address to,
        uint256 minAmountOut
    ) external payable nonReentrant returns (uint256 netOut) {
        require(to != address(0), "UR: bad to");
        require(msg.value > 0, "UR: no ETH");
        _requireWethIn(payload);

        (
            address module, , uint256 quotedOut,
            , address tokenOut, uint256 amountIn,
            bytes[] memory routeData
        ) = decodeRoute(payload);

        require(isModule[module], "UR: unknown module");
        require(routeData.length > 0, "UR: empty route");
        require(amountIn == msg.value, "UR: value != amountIn");

        _wrapETH(msg.value);                       // ETH -> WETH
        _smartApprove(WETH, module, msg.value);    // approve

        // Send to router → calculate commission → pay customer
        uint256 amountOut = IDexModule(module).swapRoute(DexRoute({data: routeData}), address(this), 100);
        require(amountOut >= minAmountOut, "UR: slippage");

        netOut = _distributeTokenWithFees(tokenOut, to, amountOut, quotedOut, minAmountOut);

        emit SwapExecuted(module, msg.sender, to, WETH, tokenOut, amountIn, netOut, quotedOut);
    }

    /* ─────────────── ROUTE: Token → ETH ─────────────── */

    /**
     * @notice Swap Token→ETH by payload with WETH as tokenOut.
     * @dev    Calls the module before WETH, converts to ETH, holds commissions, sends net amount `to`.
     * @param  payload           Route package (tokenOut=WETH).
     * @param  to                ETH recipient.
     * @param  minAmountOut      Minimum output.
     * @return netEthOut         Net amount (ETH).
     */
    function swapRouteExactTokensForETH(
        bytes calldata payload,      // payload: tokenOut == WETH
        address to,
        uint256 minAmountOut
    ) external nonReentrant returns (uint256 netEthOut) {
        require(to != address(0), "UR: bad to");
        _requireWethOut(payload);

        (
            address module, , uint256 quotedOut,
            address tokenIn, , uint256 amountIn,
            bytes[] memory routeData
        ) = decodeRoute(payload);

        require(isModule[module], "UR: unknown module");
        require(amountIn > 0, "UR: zero in");
        require(routeData.length > 0, "UR: empty route");

        IERC20(tokenIn).safeTransferFrom(msg.sender, address(this), amountIn);
        _smartApprove(tokenIn, module, amountIn);

        uint256 outWeth = IDexModule(module).swapRoute(DexRoute({data: routeData}), address(this), 100);
        require(outWeth >= minAmountOut, "UR: slippage");

        // Unwrap and distribute with fees
        _unwrapWETHAndSend(outWeth, address(this));

        netEthOut = _distributeETHWithFees(to, outWeth, quotedOut, minAmountOut);

        emit SwapExecuted(module, msg.sender, to, tokenIn, WETH, amountIn, netEthOut, quotedOut);
    }

    /* ─────────────── SPLIT: Token → Token ───────────── */

    /**
     * @notice Perform a split swap with two token→token routes.
     * @dev    Splits the input by `percentA`/`100-percentA`; checks minAmountOut; holds commissions; forwards the net amount.
     * @param  payloadA          Route A package.
     * @param  payloadB          Route B package.
     * @param  percentA          Share A (1–99).
     * @param  minAmountOut      Minimum total output.
     * @param  to                Recipient.
     * @return netOut            Net amount after fees.
     */
    function swapSplit(
        bytes calldata payloadA,
        bytes calldata payloadB,
        uint16 percentA,
        uint256 minAmountOut,
        address to
    ) external nonReentrant returns (uint256 netOut) {       
        // Decode and verify
        LegDecoded memory A = _decodeRouteStructCallData(payloadA);
        LegDecoded memory B = _decodeRouteStructCallData(payloadB);
        
        require(A.amountIn > 0 && B.amountIn > 0, "UR: zero amounts");
        require(A.tokenIn == B.tokenIn, "UR: in mismatch");
        require(A.tokenOut == B.tokenOut, "UR: out mismatch");
        require(A.amountIn == B.amountIn, "UR: totalIn mismatch");
        require(A.route.length > 0 && B.route.length > 0, "UR: empty route");
        require(percentA >= 1 && percentA <= 99, "UR: percent out of bounds");
        require(isModule[A.module]);
        require(isModule[B.module]);

        IERC20(A.tokenIn).safeTransferFrom(msg.sender, address(this), A.amountIn); // if A.amountIn equals B.amountIn
        
        _smartApprove(A.tokenIn, A.module, A.amountIn);
        _smartApprove(A.tokenIn, B.module, B.amountIn);
        
        // Perform swaps (call modules)

        // Route A (percentA)
        // IDexModule.swapRoute passes a percentage (0-100), and the module
        // must internally calculate the exact amountIn for this part of the swap.
        uint256 outA = IDexModule(A.module).swapRoute(
            DexRoute({ data: A.route }), 
            address(this), 
            percentA
        );

        // Route B (100 - percentA)
        uint256 outB = IDexModule(B.module).swapRoute(
            DexRoute({ data: B.route }), 
            address(this), 
            uint16(100 - percentA)
        );

        // Slip check and return
        require((outA + outB) >= minAmountOut, "UR: slippage");

        uint256 quotedTotal = (A.quoted * percentA) / 100 + (B.quoted * (uint16(100 - percentA))) / 100;

        // Commission + payment to user
        netOut = _distributeTokenWithFees(A.tokenOut, to, outA + outB, quotedTotal, minAmountOut);

        SplitResult memory r = SplitResult({
            moduleA: A.module,
            moduleB: B.module,
            tokenIn: A.tokenIn,
            tokenOut: A.tokenOut,
            totalIn: A.amountIn,
            amountInA: (A.amountIn * percentA) / 100,
            amountInB: (B.amountIn * (uint16(100 - percentA))) / 100,
            outA: outA,
            outB: outB,
            totalOut: outA + outB
        });
        _emitSwapSplit(r, msg.sender, to, percentA);
    }

    /* ─────────────── SPLIT: ETH → Token ─────────────── */

    /**
     * @notice Split-swap ETH→Token via two routes (both via WETH).
     * @dev    Converts ETH to WETH; splits input by percentage; holds fees; transfers net amount `to`.
     * @param  payloadA          Package A (tokenIn=WETH, amountIn=msg.value).
     * @param  payloadB          Package B.
     * @param  percentA          Share A (1–99).
     * @param  minTotalOut       Minimum total output.
     * @param  to                Recipient.
     * @return netOut            Net result (ERC20).
     */
    function swapSplitExactETHForTokens(
        bytes calldata payloadA,     // both: tokenIn == WETH, amountIn == msg.value
        bytes calldata payloadB,
        uint16 percentA,             // 1..99
        uint256 minTotalOut,
        address to
    ) external payable nonReentrant returns (uint256 netOut) {
        require(to != address(0), "UR: bad to");
        require(msg.value > 0, "UR: no ETH");
        require(percentA >= 1 && percentA <= 99, "UR: percent out of bounds");

        _requireWethIn(payloadA);
        _requireWethIn(payloadB);

        LegDecoded memory A = _decodeRouteStructCallData(payloadA);
        LegDecoded memory B = _decodeRouteStructCallData(payloadB);
        require(A.amountIn == B.amountIn, "UR: split amount mismatch");
        require(A.amountIn == msg.value, "UR: value != amountIn");
        require(A.tokenOut == B.tokenOut, "UR: out mismatch");
        require(A.route.length > 0 && B.route.length > 0, "UR: empty route");
        require(isModule[A.module]);
        require(isModule[B.module]);

        _wrapETH(msg.value);
        _smartApprove(WETH, A.module, msg.value);
        _smartApprove(WETH, B.module, msg.value);

        uint16 percentB = uint16(100 - percentA);

        // Route execution → fees → recipient
        uint256 outA = IDexModule(A.module).swapRoute(DexRoute({data: A.route}), address(this), percentA);
        uint256 outB = IDexModule(B.module).swapRoute(DexRoute({data: B.route}), address(this), percentB);

        uint256 grossOut = outA + outB;
        require(grossOut >= minTotalOut, "UR: slippage");

        uint256 quotedTotal = (A.quoted * percentA) / 100 + (B.quoted * percentB) / 100;

        netOut = _distributeTokenWithFees(A.tokenOut, to, grossOut, quotedTotal, minTotalOut);

        SplitResult memory r = SplitResult({
            moduleA: A.module,
            moduleB: B.module,
            tokenIn: WETH,
            tokenOut: A.tokenOut,
            totalIn: msg.value,
            amountInA: (uint256(msg.value) * percentA) / 100,
            amountInB: (uint256(msg.value) * percentB) / 100,
            outA: outA,
            outB: outB,
            totalOut: grossOut
        });
        _emitSwapSplit(r, msg.sender, to, percentA);
    }

    /* ─────────────── SPLIT: Token → ETH ─────────────── */

    /**
     * @notice Split-swap Token→ETH via two routes (both ending in WETH).
     * @dev    Splits input by percentage; converts WETH→ETH; holds fees; transfers net amount `to`.
     * @param  payloadA          Package A (tokenOut=WETH).
     * @param  payloadB          Package B.
     * @param  percentA          Share A (1–99).
     * @param  minTotalEthOut    Minimum total output in ETH.
     * @param  to                ETH recipient.
     * @return netEthOut         Net result (ETH).
     */
    function swapSplitExactTokensForETH(
        bytes calldata payloadA,     // both: tokenOut == WETH, same amountIn
        bytes calldata payloadB,
        uint16 percentA,             // 1..99
        uint256 minTotalEthOut,
        address to
    ) external nonReentrant returns (uint256 netEthOut) {
        require(to != address(0), "UR: bad to");
        require(percentA >= 1 && percentA <= 99, "UR: percent out of bounds");

        _requireWethOut(payloadA);
        _requireWethOut(payloadB);

        LegDecoded memory A = _decodeRouteStructCallData(payloadA);
        LegDecoded memory B = _decodeRouteStructCallData(payloadB);
        require(A.amountIn > 0 && B.amountIn > 0, "UR: zero in");
        require(A.amountIn == B.amountIn, "UR: split amount mismatch");
        require(A.tokenIn == B.tokenIn, "UR: in mismatch");
        require(A.route.length > 0 && B.route.length > 0, "UR: empty route");
        require(isModule[A.module]);
        require(isModule[B.module]);

        IERC20(A.tokenIn).safeTransferFrom(msg.sender, address(this), A.amountIn);
        _smartApprove(A.tokenIn, A.module, A.amountIn);
        _smartApprove(A.tokenIn, B.module, B.amountIn);

        uint16 percentB = uint16(100 - percentA);

        uint256 outA = IDexModule(A.module).swapRoute(DexRoute({data: A.route}), address(this), percentA);
        uint256 outB = IDexModule(B.module).swapRoute(DexRoute({data: B.route}), address(this), percentB);

        uint256 totalWeth = outA + outB;
        require(totalWeth >= minTotalEthOut, "UR: slippage");

        uint256 quotedTotal = (A.quoted * percentA) / 100 + (B.quoted * percentB) / 100;

        _unwrapWETHAndSend(totalWeth, address(this));
        netEthOut = _distributeETHWithFees(to, totalWeth, quotedTotal, minTotalEthOut);

        SplitResult memory r = SplitResult({
            moduleA: A.module,
            moduleB: B.module,
            tokenIn: A.tokenIn,
            tokenOut: WETH,
            totalIn: A.amountIn,
            amountInA: (A.amountIn * percentA) / 100,
            amountInB: (B.amountIn * percentB) / 100,
            outA: outA,
            outB: outB,
            totalOut: totalWeth
        });
        _emitSwapSplit(r, msg.sender, to, percentA);
    }
}