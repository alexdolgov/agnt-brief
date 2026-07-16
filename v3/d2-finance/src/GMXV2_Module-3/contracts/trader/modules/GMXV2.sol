// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.13;

import "@solidstate/contracts/utils/ReentrancyGuard.sol";
import "@solidstate/contracts/access/access_control/AccessControl.sol";
import "@solidstate/contracts/introspection/ERC165/base/ERC165Base.sol";
import "@solidstate/contracts/proxy/diamond/writable/DiamondWritableInternal.sol";
import "./dsq/DSQ_Common_Roles.sol";

interface IERC20 {
  function approve(address spender, uint256 amount) external;
}

interface IExchangeRouter {
    enum OrderType {
        MarketSwap,
        LimitSwap,
        MarketIncrease,
        LimitIncrease,
        MarketDecrease,
        LimitDecrease,
        StopLossDecrease
    }
    enum DecreasePositionSwapType {
        NoSwap,
        SwapPnlTokenToCollateralToken,
        SwapCollateralTokenToPnlToken
    }
    struct CreateOrderParams {
        CreateOrderParamsAddresses addresses;
        CreateOrderParamsNumbers numbers;
        OrderType orderType;
        DecreasePositionSwapType decreasePositionSwapType;
        bool isLong;
        bool shouldUnwrapNativeToken;
        bytes32 referralCode;
    }
    struct CreateOrderParamsAddresses {
        address receiver;
        address callbackContract;
        address uiFeeReceiver;
        address market;
        address initialCollateralToken;
        address[] swapPath;
    }
    struct CreateOrderParamsNumbers {
        uint256 sizeDeltaUsd;
        uint256 initialCollateralDeltaAmount;
        uint256 triggerPrice;
        uint256 acceptablePrice;
        uint256 executionFee;
        uint256 callbackGasLimit;
        uint256 minOutputAmount;
    }

    function sendWnt(address receiver, uint256 amount) external payable;
    function sendTokens(address token, address receiver, uint256 amount) external payable;
    function createOrder(CreateOrderParams calldata params) external payable returns (bytes32);
    function updateOrder(bytes32 key, uint256 sizeDeltaUsd, uint256 acceptablePrice, uint256 triggerPrice, uint256 minOutputAmount) external payable;
    function cancelOrder(bytes32 key) external payable;
    function multicall(bytes[] calldata data) external payable returns (bytes[] memory results);
    function router() external returns (address);
}

interface IGMXV2_Module {
    function gmxv2_create(
        address market, address collateral, address[] calldata path,
        IExchangeRouter.OrderType orderType, IExchangeRouter.DecreasePositionSwapType decreasePositionSwapType, bool isLong,
        uint256 sizeDeltaUsd, uint256 initialCollateralDeltaAmount,
        uint256 triggerPrice, uint256 acceptablePrice, uint256 minOutputAmount,
        uint256 executionFee
    ) external payable;
    function gmxv2_update(bytes32 key, uint256 sizeDeltaUsd, uint256 acceptablePrice, uint256 triggerPrice, uint256 minOutputAmount) external;
    function gmxv2_cancel(bytes32 key) external;
}

contract GMXV2_Module is IGMXV2_Module, AccessControl, ReentrancyGuard, DSQ_Common_Roles {
    IExchangeRouter public immutable exchangeRouter;
    address public immutable orderVault;

    constructor(address _exchangeRouter, address _orderVault) {
        exchangeRouter = IExchangeRouter(_exchangeRouter);
        orderVault = _orderVault;
    }

    function gmxv2_create(
      address market, address collateral, address[] calldata path,
      IExchangeRouter.OrderType orderType, IExchangeRouter.DecreasePositionSwapType decreasePositionSwapType, bool isLong,
      uint256 sizeDeltaUsd, uint256 initialCollateralDeltaAmount,
      uint256 triggerPrice, uint256 acceptablePrice, uint256 minOutputAmount,
      uint256 executionFee
    ) external payable onlyRole(EXECUTOR_ROLE) nonReentrant {
          IExchangeRouter.CreateOrderParams memory params = IExchangeRouter.CreateOrderParams({
              addresses: IExchangeRouter.CreateOrderParamsAddresses({
                  receiver: address(this),
                  callbackContract: address(0),
                  uiFeeReceiver: address(0),
                  market: market,
                  initialCollateralToken: collateral,
                  swapPath: path
              }),
              numbers: IExchangeRouter.CreateOrderParamsNumbers({
                  sizeDeltaUsd: sizeDeltaUsd,
                  initialCollateralDeltaAmount: initialCollateralDeltaAmount,
                  triggerPrice: triggerPrice,
                  acceptablePrice: acceptablePrice,
                  executionFee: executionFee,
                  callbackGasLimit: 0,
                  minOutputAmount: minOutputAmount
              }),
              orderType: orderType,
              decreasePositionSwapType: decreasePositionSwapType,
              isLong: isLong,
              shouldUnwrapNativeToken: false,
              referralCode: ""
          });
          if (orderType == IExchangeRouter.OrderType.LimitSwap || orderType == IExchangeRouter.OrderType.MarketIncrease || orderType == IExchangeRouter.OrderType.LimitIncrease) {
              IERC20(collateral).approve(exchangeRouter.router(), initialCollateralDeltaAmount);
              bytes[] memory data = new bytes[](3);
              data[0] = abi.encodeWithSelector(IExchangeRouter.sendWnt.selector, orderVault, executionFee);
              data[1] = abi.encodeWithSelector(IExchangeRouter.sendTokens.selector, collateral, orderVault, initialCollateralDeltaAmount);
              data[2] = abi.encodeWithSelector(IExchangeRouter.createOrder.selector, params);
              exchangeRouter.multicall{value: executionFee}(data);
          } else {
              bytes[] memory data = new bytes[](2);
              data[0] = abi.encodeWithSelector(IExchangeRouter.sendWnt.selector, orderVault, executionFee);
              data[1] = abi.encodeWithSelector(IExchangeRouter.createOrder.selector, params);
              exchangeRouter.multicall{value: executionFee}(data);
          }
    }

    function gmxv2_update(
      bytes32 key, uint256 sizeDeltaUsd, uint256 acceptablePrice, uint256 triggerPrice, uint256 minOutputAmount
    ) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        exchangeRouter.updateOrder(key, sizeDeltaUsd, acceptablePrice, triggerPrice, minOutputAmount);
    }

    function gmxv2_cancel(bytes32 key) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        exchangeRouter.cancelOrder(key);
    }
}

abstract contract GMXV2_Cutter is DiamondWritableInternal, ERC165Base {
    function cut_GMXV2(address _facet) internal {
        bytes4[] memory selectors = new bytes4[](3);
        selectors[0] = IGMXV2_Module.gmxv2_create.selector;
        selectors[1] = IGMXV2_Module.gmxv2_update.selector;
        selectors[2] = IGMXV2_Module.gmxv2_cancel.selector;
        FacetCut[] memory cuts = new FacetCut[](1);
        cuts[0] = FacetCut({
          target: _facet, action: FacetCutAction.ADD, selectors: selectors
        });
        _diamondCut(cuts, address(0), "");
        _setSupportsInterface(type(IGMXV2_Module).interfaceId, true);
    }
}
