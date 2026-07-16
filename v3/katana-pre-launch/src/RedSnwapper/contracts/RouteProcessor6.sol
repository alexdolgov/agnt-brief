// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.24;

import '../interfaces/IUniswapV2Pair.sol';
import '../interfaces/IUniswapV3Pool.sol';
import '../interfaces/ITridentCLPool.sol';
import '../interfaces/IBentoBoxMinimal.sol';
import '../interfaces/IPool.sol';
import '../interfaces/IWETH.sol';
import '../interfaces/ICurve.sol';
import './InputStream.sol';
import './Utils.sol';
import '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import "@openzeppelin/contracts/access/Ownable.sol";

address constant IMPOSSIBLE_POOL_ADDRESS = 0x0000000000000000000000000000000000000001;
address constant INTERNAL_INPUT_SOURCE = 0x0000000000000000000000000000000000000000;
uint constant PERCENT_DENOMINATOR = 1000;

uint8 constant LOCKED = 2;
uint8 constant NOT_LOCKED = 1;
uint8 constant PAUSED = 2;
uint8 constant NOT_PAUSED = 1;

/// @dev The minimum value that can be returned from #getSqrtRatioAtTick. Equivalent to getSqrtRatioAtTick(MIN_TICK)
uint160 constant MIN_SQRT_RATIO = 4295128739;
/// @dev The maximum value that can be returned from #getSqrtRatioAtTick. Equivalent to getSqrtRatioAtTick(MAX_TICK)
uint160 constant MAX_SQRT_RATIO = 1461446703485210103287273052203988822378723970342;

/// @title A route processor for the Sushi Aggregator
/// @author Ilya Lyalin
contract RouteProcessor6 is Ownable {
  using SafeERC20 for IERC20;
  using Utils for IERC20;
  using Utils for address;
  using SafeERC20 for IERC20Permit;
  using InputStream for uint256;

  event Route(
    address indexed from, 
    address to, 
    address indexed tokenIn, 
    address tokenOut, 
    uint256 amountIn, 
    uint256 amountOutMin,
    uint256 amountOut,
    int256 slippage,
    uint32 indexed referralCode
  );

  event BridgeAllowance(address indexed bridge, uint32 selector, bool allow);
  event SurplusCollector(address collector);
  event SurplusPortion(uint portion);

  error MinimalOutputBalanceViolation(uint256 amountOut);

  IBentoBoxMinimal public immutable bentoBox;
  mapping (address => bool) public priviledgedUsers;
  mapping (uint => bool) public allowedBridges;
  address private lastCalledPool;
  address private surplusCollector;
  uint private surplusPortion;  // in 1/PERCENT_DENOMINATOR

  uint8 private unlocked = NOT_LOCKED;
  uint8 private paused = NOT_PAUSED;
  modifier lock() {
      require(unlocked == NOT_LOCKED, 'RouteProcessor is locked');
      require(paused == NOT_PAUSED, 'RouteProcessor is paused');
      unlocked = LOCKED;
      _;
      unlocked = NOT_LOCKED;
  }

  modifier onlyOwnerOrPriviledgedUser() {
    require(msg.sender == owner() || priviledgedUsers[msg.sender], "RP: caller is not the owner or a privileged user");
    _;
  }

  constructor(address _bentoBox, address[] memory priviledgedUserList) {
    bentoBox = IBentoBoxMinimal(_bentoBox);
    lastCalledPool = IMPOSSIBLE_POOL_ADDRESS;

    for (uint256 i = 0; i < priviledgedUserList.length; i++) {
      priviledgedUsers[priviledgedUserList[i]] = true;
    }
  }

  function setPriviledge(address user, bool priviledge) external onlyOwner {
    priviledgedUsers[user] = priviledge;
  }

  function pause() external onlyOwnerOrPriviledgedUser {
    paused = PAUSED;
  }

  function resume() external onlyOwnerOrPriviledgedUser {
    paused = NOT_PAUSED;
  }

  /// @notice Makes a bridge function (dis)allowed
  /// @param bridge Address of the bridge
  /// @param selector Bridge's function selector to (dis)allow
  /// @param allow to allow or disallow the function
  function setBridgeAllowance(address bridge, uint32 selector, bool allow) external onlyOwnerOrPriviledgedUser {
    uint allowFlag = uint(selector) << 160 | uint(uint160(bridge));
    allowedBridges[allowFlag] = allow;
    emit BridgeAllowance(bridge, selector, allow);
  }

  function setSurplusCollector(address collector) external onlyOwnerOrPriviledgedUser {
    surplusCollector = collector;
    emit SurplusCollector(surplusCollector);
  }

  function setSurplusPortion(uint portion) external onlyOwnerOrPriviledgedUser {
    surplusPortion = portion;
    emit SurplusPortion(surplusPortion);
  }

  /// @notice For native unwrapping
  receive() external payable {}

  /// @notice Transfers some value to <transferValueTo> and then processes the route
  /// @param transferValueTo Address where the value should be transferred
  /// @param amountValueTransfer How much value to transfer
  /// @param tokenIn Address of the input token
  /// @param amountIn Amount of the input token
  /// @param tokenOut Address of the output token
  /// @param amountOutQuote Expected amount of the output token
  /// @param amountOutMin Minimum amount of the output token
  /// @param to the recipient of the route
  /// @param route Route code
  /// @param referralCode Referral code of transaction creator
  /// @return amountOut Actual amount of the output token
  function transferValueAndprocessRoute(
    address transferValueTo,
    uint256 amountValueTransfer,
    address tokenIn,
    uint256 amountIn,
    address tokenOut,
    uint256 amountOutQuote,
    uint256 amountOutMin,
    address to,
    bytes memory route,
    uint32 referralCode
  ) external payable returns (uint256 amountOut) {
    transferValueTo.transferNative(amountValueTransfer);
    return processRoute(tokenIn, amountIn, tokenOut, amountOutQuote, amountOutMin, to, route, referralCode);
  }

  /// @notice Transfers some value of input tokens to <transferValueTo> and then processes the route
  /// @param transferValueTo Address where the value should be transferred
  /// @param amountValueTransfer How much value to transfer
  /// @param tokenIn Address of the input token
  /// @param amountIn Amount of the input token
  /// @param tokenOut Address of the output token
  /// @param amountOutQuote Expected amount of the output token
  /// @param amountOutMin Minimum amount of the output token
  /// @param to the recipient of the route
  /// @param route Route code
  /// @param referralCode Referral code of transaction creator
  /// @return amountOut Actual amount of the output token
  function processRouteWithTransferValueInput(
    address payable transferValueTo,
    uint256 amountValueTransfer,
    address tokenIn,
    uint256 amountIn,
    address tokenOut,
    uint256 amountOutQuote,
    uint256 amountOutMin,
    address to,
    bytes memory route,
    uint32 referralCode
  ) external payable returns (uint256 amountOut) {
    tokenIn.transferAnyFromSender(transferValueTo, amountValueTransfer);
    return processRoute(tokenIn, amountIn, tokenOut, amountOutQuote, amountOutMin, to, route, referralCode);
  }
  
  /// @notice processes the route and sends <amountValueTransfer> amount of output token to <transferValueTo>
  /// @param transferValueTo Address where the value should be transferred
  /// @param amountValueTransfer How much value to transfer
  /// @param tokenIn Address of the input token
  /// @param amountIn Amount of the input token
  /// @param tokenOut Address of the output token
  /// @param amountOutQuote Expected amount of the output token
  /// @param amountOutMin Minimum amount of the output token
  /// @param to the recipient of the route
  /// @param route Route code
  /// @param referralCode Referral code of transaction creator
  /// @return amountOut Actual amount of the output token
  function processRouteWithTransferValueOutput(
    address payable transferValueTo,
    uint256 amountValueTransfer,
    address tokenIn,
    uint256 amountIn,
    address tokenOut,
    uint256 amountOutQuote,
    uint256 amountOutMin,
    address to,
    bytes memory route,
    uint32 referralCode
  ) external payable returns (uint256 amountOut) {
    amountOut = processRoute(tokenIn, amountIn, tokenOut, amountOutQuote, amountOutMin, address(this), route, referralCode);
    tokenOut.transferAny(transferValueTo, amountValueTransfer);
    amountOut -= amountValueTransfer;
    tokenOut.transferAny(to, amountOut);
  }

  /// @notice Processes the route generated off-chain. Has a lock
  /// @param tokenIn Address of the input token
  /// @param amountIn Amount of the input token
  /// @param tokenOut Address of the output token
  /// @param amountOutQuote Expected amount of the output token
  /// @param amountOutMin Minimum amount of the output token
  /// @param to Where to transfer output tokens
  /// @param route Route to process
  /// @param referralCode Referral code of transaction creator
  /// @return amountOut Actual amount of the output token
  function processRoute(
    address tokenIn,
    uint256 amountIn,
    address tokenOut,
    uint256 amountOutQuote,
    uint256 amountOutMin,
    address to,
    bytes memory route,
    uint32 referralCode
  ) public payable lock returns (uint256 amountOut) {
    uint256 balanceInInitial = tokenIn.anyBalanceOf(msg.sender);
    uint256 balanceOutInitial = tokenOut.anyBalanceOf(address(this));

    uint256 realAmountIn = amountIn;
    {
      uint256 step = 0;
      uint256 stream = InputStream.createStream(route);
      while (stream.isNotEmpty()) {
        uint8 commandCode = stream.readUint8();
        if (commandCode == 1) {
          uint256 usedAmount = processMyERC20(stream); 
          if (step == 0) realAmountIn = usedAmount;
        } 
        else if (commandCode == 2) processUserERC20(stream, amountIn);
        else if (commandCode == 3) {
          uint256 usedAmount = processNative(stream); 
          if (step == 0) realAmountIn = usedAmount;
        } 
        else if (commandCode == 4) processOnePool(stream);
        else if (commandCode == 5) processInsideBento(stream);
        else if (commandCode == 6) applyPermit(tokenIn, stream);
        else revert('RouteProcessor: Unknown command code');
        ++step;
      }
    }
    
    {
      uint256 balanceInFinal = tokenIn.anyBalanceOf(msg.sender);
      if (tokenIn != Utils.NATIVE_ADDRESS)
        require(balanceInFinal + amountIn + 10 >= balanceInInitial, 'RouteProcessor: Minimal input balance violation');
      
      uint256 balanceOutFinal = tokenOut.anyBalanceOf(address(this));
      amountOut = balanceOutFinal - balanceOutInitial;
    }

    int slippage = int(amountOut) - int(amountOutQuote);
    unchecked {
      if (slippage > 0 && surplusPortion > 0 && surplusCollector != address(0)) {
        uint transferSlippageAmount = uint(slippage) * surplusPortion / PERCENT_DENOMINATOR;
        if (transferSlippageAmount > 1) tokenOut.transferAny(surplusCollector, transferSlippageAmount - 1);
        amountOut = amountOut - transferSlippageAmount;
      }
    }
    
    if (amountOut < amountOutMin)
      revert MinimalOutputBalanceViolation(amountOut);

    if (to != address(this))
      tokenOut.transferAny(to, amountOut);

    emit Route(msg.sender, to, tokenIn, tokenOut, realAmountIn, amountOutMin, amountOut, slippage, referralCode);
  }

  /// @notice Applies ERC-2612 permit
  /// @param tokenIn permitted token
  /// @param stream Streamed program
  function applyPermit(address tokenIn, uint256 stream) private {
    uint256 value = stream.readUint();
    uint256 deadline = stream.readUint();
    uint8 v = stream.readUint8();
    bytes32 r = stream.readBytes32();
    bytes32 s = stream.readBytes32();
    if (IERC20(tokenIn).allowance(msg.sender, address(this)) < value) {
      IERC20Permit(tokenIn).safePermit(msg.sender, address(this), value, deadline, v, r, s);
    }
  }

  /// @notice Processes native coin: call swap for all pools that swap from native coin
  /// @param stream Streamed program
  function processNative(uint256 stream) private returns (uint256 amountTotal) {
    amountTotal = address(this).balance;
    distributeAndSwap(stream, address(this), Utils.NATIVE_ADDRESS, amountTotal);
  }

  /// @notice Processes ERC20 token from this contract balance:
  /// @notice Call swap for all pools that swap from this token
  /// @param stream Streamed program
  function processMyERC20(uint256 stream) private returns (uint256 amountTotal) {
    address token = stream.readAddress();
    amountTotal = IERC20(token).balanceOf(address(this));
    unchecked {
      if (amountTotal > 0) amountTotal -= 1;     // slot undrain protection
    }
    distributeAndSwap(stream, address(this), token, amountTotal);
  }
  
  /// @notice Processes ERC20 token from msg.sender balance:
  /// @notice Call swap for all pools that swap from this token
  /// @param stream Streamed program
  /// @param amountTotal Amount of tokens to take from msg.sender
  function processUserERC20(uint256 stream, uint256 amountTotal) private {
    address token = stream.readAddress();
    distributeAndSwap(stream, msg.sender, token, amountTotal);
  }

  /// @notice Processes ERC20 token for cases when the token has only one output pool
  /// @notice In this case liquidity is already at pool balance. This is an optimization
  /// @notice Call swap for all pools that swap from this token
  /// @param stream Streamed program
  function processOnePool(uint256 stream) private {
    address token = stream.readAddress();
    swap(stream, INTERNAL_INPUT_SOURCE, token, 0);
  }

  /// @notice Processes Bento tokens 
  /// @notice Call swap for all pools that swap from this token
  /// @param stream Streamed program
  function processInsideBento(uint256 stream) private {
    address token = stream.readAddress();
    uint256 amountTotal = bentoBox.balanceOf(token, address(this));
    unchecked {
      if (amountTotal > 0) amountTotal -= 1;     // slot undrain protection
    }
    distributeAndSwap(stream, address(this), token, amountTotal);
  }

  /// @notice Distributes amountTotal to several pools according to their shares and calls swap for each pool
  /// @param stream Streamed program
  /// @param from Where to take liquidity for swap
  /// @param tokenIn Input token
  /// @param amountTotal Total amount of tokenIn for swaps 
  function distributeAndSwap(uint256 stream, address from, address tokenIn, uint256 amountTotal) private {
    uint8 num = stream.readUint8();
    unchecked {
      for (uint256 i = 0; i < num; ++i) {
        uint16 share = stream.readUint16();
        uint256 amount = (amountTotal * share) / type(uint16).max /*65535*/;
        amountTotal -= amount;
        swap(stream, from, tokenIn, amount);
      }
    }
  }

  /// @notice Makes swap
  /// @param stream Streamed program
  /// @param from Where to take liquidity for swap
  /// @param tokenIn Input token
  /// @param amountIn Amount of tokenIn to take for swap
  function swap(uint256 stream, address from, address tokenIn, uint256 amountIn) private {
    uint8 poolType = stream.readUint8();
    if(poolType % 2 == 0) {
      if (poolType == 0) swapUniV2(stream, from, tokenIn, amountIn);
      else if (poolType == 2) wrapNative(stream, from, tokenIn, amountIn);
      else if (poolType == 8) curveRemoveLiquidityOneCoin(stream, from, tokenIn, amountIn);
      else if (poolType == 4) swapTrident(stream, from, tokenIn, amountIn);
      else revert('RouteProcessor: Unknown pool type');
    } else {
      if (poolType == 1) swapUniV3(stream, from, tokenIn, amountIn);
      else if (poolType == 5) swapCurve(stream, from, tokenIn, amountIn);
      else if (poolType == 7) curveAddLiquidityOneCoin(stream, from, tokenIn, amountIn);
      else if (poolType == 9) swapBridge(stream, from, tokenIn, amountIn);
      else if (poolType == 3) bentoBridge(stream, from, tokenIn, amountIn);
      else revert('RouteProcessor: Unknown pool type');
    }
  }

  /// @notice Wraps/unwraps native token
  /// @param stream [direction & fake, recipient, wrapToken?]
  /// @param from Where to take liquidity for swap
  /// @param tokenIn Input token
  /// @param amountIn Amount of tokenIn to take for swap
  function wrapNative(uint256 stream, address from, address tokenIn, uint256 amountIn) private {
    uint8 directionAndFake = stream.readUint8();
    address to = stream.readAddress();

    if (directionAndFake & 1 == 1) {  // wrap native
      address wrapToken = stream.readAddress();
      if (directionAndFake & 2 == 0) IWETH(wrapToken).deposit{value: amountIn}();
      if (to != address(this)) IERC20(wrapToken).safeTransfer(to, amountIn);
    } else { // unwrap native
      if (directionAndFake & 2 == 0) {
        if (from == msg.sender) IERC20(tokenIn).safeTransferFrom(msg.sender, address(this), amountIn);
        IWETH(tokenIn).withdraw(amountIn);
      }
      to.transferNative(amountIn);
    }
  }

  /// @notice Bridge/unbridge tokens to/from Bento
  /// @param stream [direction, recipient]
  /// @param from Where to take liquidity for swap
  /// @param tokenIn Input token
  /// @param amountIn Amount of tokenIn to take for swap
  function bentoBridge(uint256 stream, address from, address tokenIn, uint256 amountIn) private {
    uint8 direction = stream.readUint8();
    address to = stream.readAddress();

    if (direction > 0) {  // outside to Bento
      // deposit to arbitrary recipient is possible only from address(bentoBox)
      if (from == address(this)) IERC20(tokenIn).safeTransfer(address(bentoBox), amountIn);
      else if (from == msg.sender) IERC20(tokenIn).safeTransferFrom(msg.sender, address(bentoBox), amountIn);
      else {
        // tokens already are at address(bentoBox)
        amountIn = IERC20(tokenIn).balanceOf(address(bentoBox)) +
        bentoBox.strategyData(tokenIn).balance -
        bentoBox.totals(tokenIn).elastic;
      }
      bentoBox.deposit(tokenIn, address(bentoBox), to, amountIn, 0);
    } else { // Bento to outside
      if (from != INTERNAL_INPUT_SOURCE) {
        bentoBox.transfer(tokenIn, from, address(this), amountIn);
      } else amountIn = bentoBox.balanceOf(tokenIn, address(this));
      bentoBox.withdraw(tokenIn, address(this), to, 0, amountIn);
    }
  }

  /// @notice UniswapV2 pool swap
  /// @param stream [pool, direction, recipient, fee]
  /// @param from Where to take liquidity for swap
  /// @param tokenIn Input token
  /// @param amountIn Amount of tokenIn to take for swap
  function swapUniV2(uint256 stream, address from, address tokenIn, uint256 amountIn) private {
    address pool = stream.readAddress();
    uint8 direction = stream.readUint8();
    address to = stream.readAddress();
    uint24 fee = stream.readUint24();   // pool fee in 1/1_000_000

    if (from == address(this)) IERC20(tokenIn).safeTransfer(pool, amountIn);
    else if (from == msg.sender) IERC20(tokenIn).safeTransferFrom(msg.sender, pool, amountIn);

    (uint256 r0, uint256 r1, ) = IUniswapV2Pair(pool).getReserves();
    require(r0 > 0 && r1 > 0, 'Wrong pool reserves');
    (uint256 reserveIn, uint256 reserveOut) = direction == 1 ? (r0, r1) : (r1, r0);
    amountIn = IERC20(tokenIn).balanceOf(pool) - reserveIn;  // tokens already were transferred

    uint256 amountInWithFee = amountIn * (1_000_000 - fee);
    uint256 amountOut = (amountInWithFee * reserveOut) / (reserveIn * 1_000_000 + amountInWithFee);
    (uint256 amount0Out, uint256 amount1Out) = direction == 1 ? (uint256(0), amountOut) : (amountOut, uint256(0));
    IUniswapV2Pair(pool).swap(amount0Out, amount1Out, to, new bytes(0));
  }

  /// @notice Trident pool swap
  /// @param stream [pool, swapData]
  /// @param from Where to take liquidity for swap
  /// @param tokenIn Input token
  /// @param amountIn Amount of tokenIn to take for swap
  function swapTrident(uint256 stream, address from, address tokenIn, uint256 amountIn) private {
    address pool = stream.readAddress();
    bytes memory swapData = stream.readBytes();

    if (from != INTERNAL_INPUT_SOURCE) {
      bentoBox.transfer(tokenIn, from, pool, amountIn);
    }
    
    IPool(pool).swap(swapData);
  }

  /// @notice UniswapV3 pool swap
  /// @param stream [pool, direction, recipient]
  /// @param from Where to take liquidity for swap
  /// @param tokenIn Input token
  /// @param amountIn Amount of tokenIn to take for swap
  function swapUniV3(uint256 stream, address from, address tokenIn, uint256 amountIn) private {
    address pool = stream.readAddress();
    bool zeroForOne = stream.readUint8() > 0;
    address recipient = stream.readAddress();
    uint8 roundingReserve = stream.readUint8();

    if (from == msg.sender) IERC20(tokenIn).safeTransferFrom(msg.sender, address(this), uint256(amountIn));

    lastCalledPool = pool;
    IUniswapV3Pool(pool).swap(
      recipient,
      zeroForOne,
      int256(amountIn - roundingReserve),
      zeroForOne ? MIN_SQRT_RATIO + 1 : MAX_SQRT_RATIO - 1,
      abi.encode(tokenIn, roundingReserve)
    );
    require(lastCalledPool == IMPOSSIBLE_POOL_ADDRESS, 'RouteProcessor.swapUniV3: unexpected'); // Just to be sure
  }

  /// @notice Called to `msg.sender` after executing a swap via IUniswapV3Pool#swap.
  /// @dev In the implementation you must pay the pool tokens owed for the swap.
  /// The caller of this method must be checked to be a UniswapV3Pool deployed by the canonical UniswapV3Factory.
  /// amount0Delta and amount1Delta can both be 0 if no tokens were swapped.
  /// @param amount0Delta The amount of token0 that was sent (negative) or must be received (positive) by the pool by
  /// the end of the swap. If positive, the callback must send that amount of token0 to the pool.
  /// @param amount1Delta The amount of token1 that was sent (negative) or must be received (positive) by the pool by
  /// the end of the swap. If positive, the callback must send that amount of token1 to the pool.
  /// @param data Any data passed through by the caller via the IUniswapV3PoolActions#swap call
  function uniswapV3SwapCallback(
    int256 amount0Delta,
    int256 amount1Delta,
    bytes calldata data
  ) public {
    require(msg.sender == lastCalledPool, 'RouteProcessor.uniswapV3SwapCallback: call from unknown source');
    int256 amount = amount0Delta > 0 ? amount0Delta : amount1Delta;
    require(amount > 0, 'RouteProcessor.uniswapV3SwapCallback: not positive amount');
    
    lastCalledPool = IMPOSSIBLE_POOL_ADDRESS;
    (address tokenIn, uint8 roundingReserve) = abi.decode(data, (address, uint8));
    IERC20(tokenIn).safeTransfer(
      msg.sender,
      uint256(amount) + roundingReserve
    );
  }

  /// @notice Transfers all tokens this contract has to <to>
  /// @param token address of token
  /// @param to recipient
  function transferAllExceptLastWeiForTokens(address token, address to) private {
    if (to == address(this)) return;
    if (token == Utils.NATIVE_ADDRESS) {
      Utils.transferNative(to, address(this).balance);
    } else {
      uint256 balance = IERC20(token).balanceOf(address(this));
      unchecked {
        if (balance > 1) IERC20(token).safeTransfer(to, balance-1); // -1: slot undrain protection
      }
    }
  }

  /// @notice Curve pool swap. Legacy pools that doesn't return amountOut and have native coins are not supported
  /// @param stream [pool, poolType, fromIndex, toIndex, recipient, output token]
  /// @param from Where to take liquidity for swap
  /// @param tokenIn Input token
  /// @param amountIn Amount of tokenIn to take for swap
  function swapCurve(uint256 stream, address from, address tokenIn, uint256 amountIn) private {
    address pool = stream.readAddress();
    uint8 poolType = stream.readUint8();
    int128 fromIndex = int8(stream.readUint8());
    int128 toIndex = int8(stream.readUint8());
    address to = stream.readAddress();
    address tokenOut = stream.readAddress();

    if (tokenIn == Utils.NATIVE_ADDRESS) {
      ICurve(pool).exchange{value: amountIn}(fromIndex, toIndex, amountIn, 0);
    } else {
      if (from == msg.sender) IERC20(tokenIn).safeTransferFrom(msg.sender, address(this), amountIn);
      IERC20(tokenIn).approveSafe(pool, amountIn);
      if (poolType == 0) ICurve(pool).exchange(fromIndex, toIndex, amountIn, 0);
      else ICurveLegacy(pool).exchange(fromIndex, toIndex, amountIn, 0);
    }

    // TODO: optimise! It is not always needed !!!
    transferAllExceptLastWeiForTokens(tokenOut, to);
  }

  /// @notice Adds liquidity to Curve pool
  /// @param stream [pool, quantity of tokens, added token index, recipient, output token]
  /// @param from Where to take liquidity for swap
  /// @param tokenIn Input token
  /// @param amountIn Amount of tokenIn to take for swap
  function curveAddLiquidityOneCoin(uint256 stream, address from, address tokenIn, uint256 amountIn) private {
    address pool = stream.readAddress();
    uint8 tokensNumber = stream.readUint8();
    uint8 inputTokenIndex = stream.readUint8();
    address to = stream.readAddress();
    IERC20 tokenOut = IERC20(stream.readAddress()); // OPTIMIZATION: can be omitted if to == this

    if (from == msg.sender) IERC20(tokenIn).safeTransferFrom(msg.sender, address(this), amountIn);
    IERC20(tokenIn).approveSafe(pool, amountIn);

    // currently all basepools have only 2 or 3 tokens
    if (tokensNumber == 2) {
      uint256[2] memory amounts;
      amounts[inputTokenIndex] = amountIn;
      ICurve2Tokens(pool).add_liquidity(amounts, 0);
    } else {
      uint256[3] memory amounts;
      amounts[inputTokenIndex] = amountIn;
      ICurve3Tokens(pool).add_liquidity(amounts, 0);
    }
    
    transferAllExceptLastWeiForTokens(address(tokenOut), to);
  }

  /// @notice Removes liquidity from Curve pool
  /// @param stream [pool, removed token index, recipient, output token]
  /// @param from Where to take liquidity for swap
  /// @param tokenIn Input token
  /// @param amountIn Amount of tokenIn to take for swap
  function curveRemoveLiquidityOneCoin(uint256 stream, address from, address tokenIn, uint256 amountIn) private {
    address pool = stream.readAddress();
    int128 outputTokenIndex = int8(stream.readUint8());
    address to = stream.readAddress();
    IERC20 tokenOut = IERC20(stream.readAddress()); // OPTIMIZATION: can be omitted if to == this

    if (from == msg.sender) IERC20(tokenIn).safeTransferFrom(msg.sender, address(this), amountIn);

    IERC20(tokenIn).approveSafe(pool, amountIn);
    ICurve(pool).remove_liquidity_one_coin(amountIn, outputTokenIndex, 0);
    transferAllExceptLastWeiForTokens(address(tokenOut), to);
  }

  /// @notice Swap through a bridge
  /// @param stream [bridge, function's selector, recipient, conditions]
  /// @param from Where to take liquidity for swap
  /// @param tokenIn Input token
  /// @param amountIn Amount of tokenIn to take for swap
  function swapBridge(uint256 stream, address from, address tokenIn, uint256 amountIn) private {
    address bridge = stream.readAddress();
    uint32 selector = stream.readUint32();
    require(selector != 0x23b872dd, 'Bridge`s function can`t be transferFrom');
    uint8 conditions = stream.readUint8();

    uint allowFlag = uint(selector) << 160 | uint(uint160(bridge));
    require(allowedBridges[allowFlag] == true, 'Bridge is not allowed');

    if (tokenIn == Utils.NATIVE_ADDRESS) {
      bridge.callRevertBubbleUp(amountIn, abi.encodeWithSelector(bytes4(selector), amountIn));
    } else {
      if (conditions & 0x1 != 0) {
        // liquidity should be at the bridge before swap
        if (from == msg.sender) IERC20(tokenIn).safeTransferFrom(msg.sender, bridge, amountIn);
        else IERC20(tokenIn).safeTransfer(bridge, amountIn);
      } else {
        // liquidity should be at this contract before swap
        if (from == msg.sender) IERC20(tokenIn).safeTransferFrom(msg.sender, address(this), amountIn);
      }
      if (conditions & 0x2 != 0) IERC20(tokenIn).approveSafe(bridge, amountIn);

      bridge.callRevertBubbleUp(0, abi.encodeWithSelector(bytes4(selector), amountIn));
    }

    // TODO: Optimize!!! What if to === this? can be checked at js side
    if (conditions & 0x4 != 0) {
      IERC20 tokenOut = IERC20(stream.readAddress());
      address to = stream.readAddress();
      transferAllExceptLastWeiForTokens(address(tokenOut), to);
    }
  }

  /// @notice Only for UniV3 forks callbacks
  fallback() external {
    // This function is executed on a call to the contract if none of the other
    // functions match the given function signature, or if no data is supplied at all
    // msg.data:
    // [0:4] bytes - selector
    // [4:36] bytes - amount0Delta
    // [36:68] bytes - amount1Delta
    // [68:100] bytes - pointer to bytes array
    // [100:132] bytes - size of bytes array
    // [132]: - bytes array
    (int256 amount0Delta, int256 amount1Delta) = abi.decode(msg.data[4:], (int256, int256));
    uniswapV3SwapCallback(amount0Delta, amount1Delta, msg.data[132:]);
  }
}
