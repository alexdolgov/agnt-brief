// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.19;

import "./libraries/GPv2Order.sol";
import "./interfaces/IAgaveProtocolDataProvider.sol";
import "./interfaces/IERC20.sol";
import "./interfaces/ICoordinator.sol";
import "./interfaces/IWrappedAgToken.sol";
import "./interfaces/IUserProxyImplementation.sol";
import "./interfaces/ILendingPool.sol";
import "./interfaces/IAgToken.sol";
import "./interfaces/ISwapperUtils.sol";

// import "forge-std/console.sol";

contract Swapper_Helper {
    using GPv2Order for GPv2Order.Data;
    using GPv2Order for bytes;

    struct swapWagTokenInfo {
        address userProxy;
        address WagTokenIn;
        address WagTokenOut;
        uint256 amountIn;
        uint256 amountOut;
        uint256 priceOutOverIn; // true if it's a stopLoss order
        uint32 validTo;
    }

    ICoordinator coordinator;

    bytes32 public constant KIND_SELL = 0xf3b277728b3fee749481eb3e0b3b48980dbbab78658fc419025cb16eee346775;
    bytes32 public constant ERC20 = 0x5a28e9363bb942b639270062aa6bb295f434bcdfc42c97267bf003f272060dc9;
    address public constant agaveLendingMarket = 0x5E15d5E33d318dCEd84Bfe3F4EACe07909bE6d9c;

    constructor(address _coordinator) {
        coordinator = ICoordinator(_coordinator);
    }

    // tokenIn and tokenOut have to be WagTokens
    // since the flashloan fee has to be paid, the actual amountOut will be lower by the fee
    // also there's a fee for the CowSwap solver as well
    function swapWagTokenFromUser(swapWagTokenInfo calldata swap) external view returns(GPv2Order.Data memory order, bytes memory orderUid, address[] memory beforeTo, 
								bytes[] memory beforeData, address[] memory afterTo, bytes[] memory afterData, bool stopLossOrder) {
        address agTokenIn = coordinator.wrappedToUnderlying(swap.WagTokenIn);
        address agTokenOut = coordinator.wrappedToUnderlying(swap.WagTokenOut);
        address owner = coordinator.proxyOwnerAddress(swap.userProxy);

        (uint256 realAmountIn, uint256 realAmountOut) = getRealAmounts(swap);

        beforeData = new bytes[](2);
        beforeTo = new address[](2);
        beforeData[0] = abi.encodeWithSelector(IERC20.approve.selector, swap.WagTokenIn, swap.amountIn);
        beforeTo[0] = agTokenIn;
        beforeData[1] = abi.encodeWithSelector(IWrappedAgToken.flashLoanOpen.selector, swap.userProxy, realAmountIn);
        beforeTo[1] = swap.WagTokenIn;

        afterData = new bytes[](5);
        afterTo = new address[](5);
        afterData[0] = abi.encodeWithSelector(IWrappedAgToken.withdraw.selector, realAmountOut);
        afterTo[0] = swap.WagTokenOut;
        afterData[1] = abi.encodeWithSelector(IERC20.transfer.selector, owner, realAmountOut);
        afterTo[1] = agTokenOut;
        afterData[2] = abi.encodeWithSelector(IERC20.transferFrom.selector, owner, swap.userProxy, swap.amountIn);
        afterTo[2] = agTokenIn;
        afterData[3] = abi.encodeWithSelector(IWrappedAgToken.deposit.selector, swap.amountIn);
        afterTo[3] = swap.WagTokenIn;
        afterData[4] = abi.encodeWithSelector(IWrappedAgToken.flashLoanClose.selector);
        afterTo[4] = swap.WagTokenIn;

        order = orderBuilder(swap, realAmountIn, realAmountOut);

        orderUid = coordinator.calculateOrderUid(order, swap.userProxy);

				return (order, orderUid, beforeTo, beforeData, afterTo, afterData, false);

    }

		// tokenIn and tokenOut have to be WagTokens
    // since the flashloan fee has to be paid, the actual amountOut will be lower by the fee
    // also there's a fee for the CowSwap solver as well
    function swapWagTokenFromProxy(swapWagTokenInfo calldata swap) external view returns(GPv2Order.Data memory order, bytes memory orderUid, address[] memory beforeTo, 
								bytes[] memory beforeData, address[] memory afterTo, bytes[] memory afterData, uint256 priceOutOverIn) {
        address wagTokenIn = swap.WagTokenIn;
        address wagTokenOut = swap.WagTokenOut;
        address agTokenIn = coordinator.wrappedToUnderlying(wagTokenIn);
        address userProxy = swap.userProxy;

        (uint256 realAmountIn, uint256 realAmountOut) = getRealAmounts(swap);

        if (swap.priceOutOverIn > 0) { 
          // uint256 priceOutOverIn = getPriceOutOverIn(realAmountIn, realAmountOut);
          beforeData = new bytes[](3);
          beforeTo = new address[](3);
          beforeData[2] = abi.encodeWithSelector(ISwapperUtils.priceCondition.selector, wagTokenIn, wagTokenOut, swap.priceOutOverIn);
          beforeTo[2] = coordinator.Utils();
        } else {
          beforeData = new bytes[](2);
          beforeTo = new address[](2);
        }

        beforeData[0] = abi.encodeWithSelector(IERC20.approve.selector, wagTokenIn, swap.amountIn);
        beforeTo[0] = agTokenIn;
        beforeData[1] = abi.encodeWithSelector(IWrappedAgToken.flashLoanOpen.selector, userProxy, realAmountIn);
        beforeTo[1] = wagTokenIn;

        afterData = new bytes[](3);
        afterTo = new address[](3);
        afterData[0] = abi.encodeWithSelector(IWrappedAgToken.withdraw.selector, realAmountOut);
        afterTo[0] = wagTokenOut;
        afterData[1] = abi.encodeWithSelector(IWrappedAgToken.deposit.selector, swap.amountIn);
        afterTo[1] = wagTokenIn;
        afterData[2] = abi.encodeWithSelector(IWrappedAgToken.flashLoanClose.selector);
        afterTo[2] = wagTokenIn;

        order = orderBuilder(swap, realAmountIn, realAmountOut);

        orderUid = coordinator.calculateOrderUid(order, userProxy);

				return (order, orderUid, beforeTo, beforeData, afterTo, afterData, swap.priceOutOverIn);

    }

    function increaseLeverageProxy(swapWagTokenInfo calldata swap) external view returns(GPv2Order.Data memory order, bytes memory orderUid, address[] memory beforeTo, 
								bytes[] memory beforeData, address[] memory afterTo, bytes[] memory afterData, uint256 priceOutOverIn) {

        address wagTokenIn = swap.WagTokenIn;
        address wagTokenOut = swap.WagTokenOut;
        address agTokenIn = coordinator.wrappedToUnderlying(swap.WagTokenIn);
        address tokenIn = IAgToken(agTokenIn).UNDERLYING_ASSET_ADDRESS();
        address userProxy = swap.userProxy;

        (uint256 realAmountIn, uint256 realAmountOut) = getRealAmounts(swap);

        if (swap.priceOutOverIn > 0) { 
          // uint256 priceOutOverIn = getPriceOutOverIn(realAmountIn, realAmountOut);
          beforeData = new bytes[](2);
          beforeTo = new address[](2);
          beforeData[1] = abi.encodeWithSelector(ISwapperUtils.priceCondition.selector, wagTokenIn, wagTokenOut, swap.priceOutOverIn);
          beforeTo[1] = coordinator.Utils();
        } else {
          beforeData = new bytes[](1);
          beforeTo = new address[](1);
        }

        // TODO: this function doesn't properly take into account the case where feeRate is nonzero
        // beforeData = new bytes[](1);
        // beforeTo = new address[](1);
        beforeData[0] = abi.encodeWithSelector(IWrappedAgToken.flashLoanOpen.selector, userProxy, realAmountIn);
        beforeTo[0] = swap.WagTokenIn;

        afterData = new bytes[](7);
        afterTo = new address[](7);
        afterData[0] = abi.encodeWithSelector(IWrappedAgToken.withdraw.selector, realAmountOut);
        afterTo[0] = wagTokenOut;
        afterData[1] = abi.encodeWithSelector(ILendingPool.borrow.selector, tokenIn, realAmountIn, 1, 0, userProxy);
        afterTo[1] = agaveLendingMarket;
        afterData[2] = abi.encodeWithSelector(IERC20.approve.selector, agaveLendingMarket, realAmountIn);
        afterTo[2] = tokenIn;
        afterData[3] = abi.encodeWithSelector(ILendingPool.deposit.selector, tokenIn, realAmountIn, userProxy, 0);
        afterTo[3] = agaveLendingMarket;
        afterData[4] = abi.encodeWithSelector(IERC20.approve.selector, wagTokenIn, realAmountIn);
        afterTo[4] = agTokenIn;
        afterData[5] = abi.encodeWithSelector(IWrappedAgToken.deposit.selector, realAmountIn);
        afterTo[5] = wagTokenIn;
        afterData[6] = abi.encodeWithSelector(IWrappedAgToken.flashLoanClose.selector);
        afterTo[6] = wagTokenIn;


        order = orderBuilder(swap, realAmountIn, realAmountOut);

        orderUid = coordinator.calculateOrderUid(order, userProxy);

				return (order, orderUid, beforeTo, beforeData, afterTo, afterData, swap.priceOutOverIn);
    }

    function decreaseLeverageProxy(swapWagTokenInfo calldata swap) external view returns(GPv2Order.Data memory order, bytes memory orderUid, address[] memory beforeTo, 
								bytes[] memory beforeData, address[] memory afterTo, bytes[] memory afterData, uint256 priceOutOverIn) {

        address agTokenIn = coordinator.wrappedToUnderlying(swap.WagTokenIn);
        address agTokenOut = coordinator.wrappedToUnderlying(swap.WagTokenOut);
        address tokenOut = IAgToken(agTokenOut).UNDERLYING_ASSET_ADDRESS();
        address userProxy = swap.userProxy;

        (uint256 realAmountIn, uint256 realAmountOut) = getRealAmounts(swap);

        if (swap.priceOutOverIn > 0) { 
          // uint256 priceOutOverIn = getPriceOutOverIn(realAmountIn, realAmountOut);
          beforeData = new bytes[](2);
          beforeTo = new address[](2);
          beforeData[1] = abi.encodeWithSelector(ISwapperUtils.priceCondition.selector, swap.WagTokenIn, swap.WagTokenOut, swap.priceOutOverIn);
          beforeTo[1] = coordinator.Utils();
        } else {
          beforeData = new bytes[](1);
          beforeTo = new address[](1);
        }

        // TODO: this function doesn't properly take into account the case where feeRate is nonzero
        // beforeData = new bytes[](1);
        // beforeTo = new address[](1);
        beforeData[0] = abi.encodeWithSelector(IWrappedAgToken.flashLoanOpen.selector, userProxy, realAmountIn); 
        beforeTo[0] = swap.WagTokenIn;

        afterData = new bytes[](5);
        afterTo = new address[](5);
        afterData[0] = abi.encodeWithSelector(IWrappedAgToken.withdraw.selector, realAmountOut);
        afterTo[0] = swap.WagTokenOut;
        afterData[1] = abi.encodeWithSelector(ILendingPool.repayUsingAgToken.selector, tokenOut, realAmountOut, 1, userProxy);
        afterTo[1] = agaveLendingMarket;
        afterData[2] = abi.encodeWithSelector(IERC20.approve.selector, swap.WagTokenIn, realAmountIn);
        afterTo[2] = agTokenIn;
        afterData[3] = abi.encodeWithSelector(IWrappedAgToken.deposit.selector, realAmountIn);
        afterTo[3] = swap.WagTokenIn;
        afterData[4] = abi.encodeWithSelector(IWrappedAgToken.flashLoanClose.selector);
        afterTo[4] = swap.WagTokenIn;


        order = orderBuilder(swap, realAmountIn, realAmountOut);

        orderUid = coordinator.calculateOrderUid(order, userProxy);

				return (order, orderUid, beforeTo, beforeData, afterTo, afterData, swap.priceOutOverIn);
    }

		function liquidateFromProxy(swapWagTokenInfo calldata swap, address user) external view returns(GPv2Order.Data memory order, bytes memory orderUid, address[] memory beforeTo, 
								bytes[] memory beforeData, address[] memory afterTo, bytes[] memory afterData) {

        address agTokenIn = coordinator.wrappedToUnderlying(swap.WagTokenIn);
        address agTokenOut = coordinator.wrappedToUnderlying(swap.WagTokenOut);
				address tokenIn = IAgToken(agTokenIn).UNDERLYING_ASSET_ADDRESS();
        address tokenOut = IAgToken(agTokenOut).UNDERLYING_ASSET_ADDRESS();
        address userProxy = swap.userProxy;

        (uint256 realAmountIn, uint256 realAmountOut) = getRealAmounts(swap);

        // TODO: this function doesn't properly take into account the case where feeRate is nonzero
        beforeData = new bytes[](1);
        beforeTo = new address[](1);
        beforeData[0] = abi.encodeWithSelector(IWrappedAgToken.flashLoanOpen.selector, userProxy, realAmountIn); 
        beforeTo[0] = swap.WagTokenIn;

        afterData = new bytes[](5);
        afterTo = new address[](5);
        afterData[0] = abi.encodeWithSelector(IWrappedAgToken.withdraw.selector, realAmountOut);
        afterTo[0] = swap.WagTokenOut;
        afterData[1] = abi.encodeWithSelector(ILendingPool.liquidationCallUsingAgToken.selector, tokenIn, tokenOut, user, realAmountOut, true);
        afterTo[1] = agaveLendingMarket;
        afterData[2] = abi.encodeWithSelector(IERC20.approve.selector, swap.WagTokenIn, realAmountIn);
        afterTo[2] = agTokenIn;
        afterData[3] = abi.encodeWithSelector(IWrappedAgToken.deposit.selector, realAmountIn);
        afterTo[3] = swap.WagTokenIn;
        afterData[4] = abi.encodeWithSelector(IWrappedAgToken.flashLoanClose.selector);
        afterTo[4] = swap.WagTokenIn;


        order = orderBuilder(swap, realAmountIn, realAmountOut);

        orderUid = coordinator.calculateOrderUid(order, userProxy);

				return (order, orderUid, beforeTo, beforeData, afterTo, afterData);
    }

		// function borrowProxy(address asset, address receiver, uint256 amount) external pure returns (address[] memory to, bytes[] memory data) {
		// 		data = new bytes[](1);
    //     to = new address[](1);
		// 		data[0] = abi.encodeWithSelector(ILendingPool.borrow.selector, asset, amount, 1, 0, receiver);
		// 		to[0] = agaveLendingMarket;
		// }

    function getPriceOutOverIn(uint256 amountIn, uint256 amountOut) public pure returns(uint256 priceOutOverIn) {
        return amountOut * 1 ether / amountIn;
    }

    function getRealAmounts(swapWagTokenInfo memory swap) public view returns(uint256 realAmountIn, uint256 realAmountOut){
        uint256 feeRate = IWrappedAgToken(swap.WagTokenIn).FeeRate();
        uint256 fee = swap.amountIn * feeRate / 10000; // 10000 is hardcoded in the WrappedAgToken contract so we can hardcode it here
        realAmountIn = swap.amountIn - fee;
        realAmountOut = realAmountIn * swap.amountOut / swap.amountIn;
    }

    function orderBuilder(swapWagTokenInfo memory swap, uint256 realAmountIn, uint256 realAmountOut) public pure returns(GPv2Order.Data memory order) {
        order.sellToken = IERC20(swap.WagTokenIn);
        order.buyToken = IERC20(swap.WagTokenOut);
        order.receiver = swap.userProxy;
        order.sellAmount = realAmountIn;
        order.buyAmount = realAmountOut;
        order.validTo = swap.validTo;
        order.kind = KIND_SELL;
        order.sellTokenBalance = ERC20;
        order.buyTokenBalance = ERC20;
    }



}
