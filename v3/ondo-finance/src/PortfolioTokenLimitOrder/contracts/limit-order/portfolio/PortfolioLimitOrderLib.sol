// SPDX-License-Identifier: BUSL-1.1
/*

      ▄▄█████████▄
   ╓██▀└ ,╓▄▄▄, '▀██▄
  ██▀ ▄██▀▀╙╙▀▀██▄ └██µ           ,,       ,,      ,     ,,,            ,,,
 ██ ,██¬ ▄████▄  ▀█▄ ╙█▄      ▄███▀▀███▄   ███▄    ██  ███▀▀▀███▄    ▄███▀▀███,
██  ██ ╒█▀'   ╙█▌ ╙█▌ ██     ▐██      ███  █████,  ██  ██▌    └██▌  ██▌     └██▌
██ ▐█▌ ██      ╟█  █▌ ╟█     ██▌      ▐██  ██ └███ ██  ██▌     ╟██ j██       ╟██
╟█  ██ ╙██    ▄█▀ ▐█▌ ██     ╙██      ██▌  ██   ╙████  ██▌    ▄██▀  ██▌     ,██▀
 ██ "██, ╙▀▀███████████⌐      ╙████████▀   ██     ╙██  ███████▀▀     ╙███████▀`
  ██▄ ╙▀██▄▄▄▄▄,,,                ¬─                                    '─¬
   ╙▀██▄ '╙╙╙▀▀▀▀▀▀▀▀
      ╙▀▀██████R⌐

 */
pragma solidity ^0.8.4;

import {
  IPortfolioTokenManager
} from "contracts/globalMarkets/portfolioToken/portfolioTokenManager/IPortfolioTokenManager.sol";
import {IOndoIDRegistry} from "contracts/xManager/interfaces/IOndoIDRegistry.sol";
import {IERC20} from "contracts/external/openzeppelin/contracts/token/IERC20.sol";
import {IERC20Metadata} from "contracts/external/openzeppelin/contracts/token/IERC20Metadata.sol";
import {SafeERC20} from "contracts/external/openzeppelin/contracts/token/SafeERC20.sol";
import {
  PortfolioLimitOrderStorage
} from "contracts/limit-order/portfolio/PortfolioLimitOrderStorage.sol";
import {
  IPortfolioTokenLimitOrder
} from "contracts/limit-order/portfolio/IPortfolioTokenLimitOrder.sol";

/**
 * @title  PortfolioLimitOrderLib
 * @author Ondo Finance
 * @notice Library containing core business logic for the PortfolioTokenLimitOrder contract,
 *         including order creation, cancellation, execution, and validation.
 */
library PortfolioLimitOrderLib {
  using SafeERC20 for IERC20;

  // ─────────────────────────────────────────────────────────────────────────────
  // Constants
  // ─────────────────────────────────────────────────────────────────────────────

  /// Normalizer for 18 decimal precision calculations
  uint256 internal constant NORMALIZER_18 = 1e18;

  /// Number of decimals used for USD value calculations
  uint8 internal constant USD_DECIMALS = 18;

  /// Identifier used for GM token operations in OndoIDRegistry
  address internal constant GM_IDENTIFIER =
    address(uint160(uint256(keccak256(abi.encodePacked("global_markets")))));

  // ─────────────────────────────────────────────────────────────────────────────
  // Storage Accessor
  // ─────────────────────────────────────────────────────────────────────────────

  function s() internal pure returns (PortfolioLimitOrderStorage.Layout storage) {
    return PortfolioLimitOrderStorage.layout();
  }

  // ─────────────────────────────────────────────────────────────────────────────
  // Initialization
  // ─────────────────────────────────────────────────────────────────────────────

  function initialize(
    address portfolioTokenManager,
    address ondoIDRegistry,
    uint256 maxOrderDuration
  ) internal {
    s().portfolioTokenManager = IPortfolioTokenManager(portfolioTokenManager);
    s().ondoIDRegistry = IOndoIDRegistry(ondoIDRegistry);
    s().maxOrderDuration = maxOrderDuration;
  }

  // ─────────────────────────────────────────────────────────────────────────────
  // Pause Functions
  // ─────────────────────────────────────────────────────────────────────────────

  function whenNotPaused() internal view {
    if (s().paused) revert IPortfolioTokenLimitOrder.ContractPaused();
  }

  function pause() internal {
    s().paused = true;
    emit IPortfolioTokenLimitOrder.Paused(msg.sender);
  }

  function unpause() internal {
    s().paused = false;
    emit IPortfolioTokenLimitOrder.Unpaused(msg.sender);
  }

  function paused() internal view returns (bool) {
    return s().paused;
  }

  // ─────────────────────────────────────────────────────────────────────────────
  // Order Creation
  // ─────────────────────────────────────────────────────────────────────────────

  function createOrder(IPortfolioTokenLimitOrder.CreateOrderParams memory params)
    internal
    returns (uint256 orderId)
  {
    validateCreateParams(
      params.portfolioToken, params.quoteToken, params.exactAmount, params.limitPrice, params.expiry
    );

    IPortfolioTokenLimitOrder.LimitOrder memory order = IPortfolioTokenLimitOrder.LimitOrder({
      user: msg.sender,
      portfolioToken: params.portfolioToken,
      quoteToken: params.quoteToken,
      side: params.side,
      exactType: params.exactType,
      exactAmount: params.exactAmount,
      limitPrice: params.limitPrice,
      expiry: params.expiry,
      status: IPortfolioTokenLimitOrder.OrderStatus.ACTIVE
    });

    orderId = s().orders.length;
    s().orders.push(order);

    emit IPortfolioTokenLimitOrder.OrderCreated(orderId, msg.sender, params.portfolioToken);
  }

  // ─────────────────────────────────────────────────────────────────────────────
  // Order Cancellation
  // ─────────────────────────────────────────────────────────────────────────────

  function cancelOrder(uint256 orderId) internal {
    IPortfolioTokenLimitOrder.LimitOrder storage order = s().orders[orderId];

    if (order.user != msg.sender) revert IPortfolioTokenLimitOrder.NotOrderMaker();
    if (order.status != IPortfolioTokenLimitOrder.OrderStatus.ACTIVE) {
      revert IPortfolioTokenLimitOrder.OrderNotActive();
    }

    order.status = IPortfolioTokenLimitOrder.OrderStatus.CANCELLED;
    emit IPortfolioTokenLimitOrder.OrderCancelled(orderId, msg.sender);
  }

  function adminCancelOrder(uint256 orderId) internal {
    IPortfolioTokenLimitOrder.LimitOrder storage order = s().orders[orderId];

    if (order.status != IPortfolioTokenLimitOrder.OrderStatus.ACTIVE) {
      revert IPortfolioTokenLimitOrder.OrderNotActive();
    }

    order.status = IPortfolioTokenLimitOrder.OrderStatus.CANCELLED;
    emit IPortfolioTokenLimitOrder.OrderCancelled(orderId, msg.sender);
  }

  // ─────────────────────────────────────────────────────────────────────────────
  // Order Execution
  // ─────────────────────────────────────────────────────────────────────────────

  function executeOrder(
    uint256 orderId,
    IPortfolioTokenManager.Quote calldata quote,
    bytes calldata signature
  ) internal {
    IPortfolioTokenLimitOrder.LimitOrder storage order = s().orders[orderId];

    validateExecution(order, quote);

    // For EXACT_PORTFOLIO: calculate from quote. For EXACT_QUOTE: use order's exactAmount.
    uint256 quoteAmount = order.exactType == IPortfolioTokenLimitOrder.ExactType.EXACT_PORTFOLIO
      ? calculateQuoteAmount(quote, order.quoteToken)
      : order.exactAmount;

    if (order.side == IPortfolioTokenManager.QuoteSide.BUY) {
      executeBuy(order, quote, signature, quoteAmount);
    } else if (order.side == IPortfolioTokenManager.QuoteSide.SELL) {
      executeSell(order, quote, signature, quoteAmount);
    } else {
      revert IPortfolioTokenLimitOrder.SideMismatch();
    }

    order.status = IPortfolioTokenLimitOrder.OrderStatus.EXECUTED;

    emit IPortfolioTokenLimitOrder.OrderExecuted(
      orderId, msg.sender, order.side, quote.attestationId, quote.quantity, quoteAmount
    );
  }

  function executeBuy(
    IPortfolioTokenLimitOrder.LimitOrder storage order,
    IPortfolioTokenManager.Quote calldata quote,
    bytes calldata signature,
    uint256 quoteAmount
  ) internal {
    IPortfolioTokenManager ptm = s().portfolioTokenManager;

    // 1. Pull stablecoin from user
    IERC20(order.quoteToken).safeTransferFrom(order.user, address(this), quoteAmount);

    // 2. Approve PTM to pull stablecoin
    IERC20(order.quoteToken).forceApprove(address(ptm), quoteAmount);

    // 3. Mint portfolio tokens (PTM pulls stablecoin from this contract, mints to this contract)
    ptm.mintWithAttestation(quote, signature);

    // 4. Transfer portfolio tokens to user
    IERC20(order.portfolioToken).safeTransfer(order.user, quote.quantity);
  }

  function executeSell(
    IPortfolioTokenLimitOrder.LimitOrder storage order,
    IPortfolioTokenManager.Quote calldata quote,
    bytes calldata signature,
    uint256 quoteAmount
  ) internal {
    IPortfolioTokenManager ptm = s().portfolioTokenManager;

    // 1. Pull portfolio tokens from user
    IERC20(order.portfolioToken).safeTransferFrom(order.user, address(this), quote.quantity);

    // 2. Approve PTM to pull portfolio tokens (PTM does safeTransferFrom then burns)
    IERC20(order.portfolioToken).forceApprove(address(ptm), quote.quantity);

    // 3. Redeem portfolio tokens (PTM burns tokens, sends stablecoin to this contract)
    ptm.redeemWithAttestation(quote, signature);

    // 4. Transfer stablecoin to user
    IERC20(order.quoteToken).safeTransfer(order.user, quoteAmount);
  }

  // ─────────────────────────────────────────────────────────────────────────────
  // Validation Functions
  // ─────────────────────────────────────────────────────────────────────────────

  function validateCreateParams(
    address portfolioToken,
    address quoteToken,
    uint256 exactAmount,
    uint256 limitPrice,
    uint256 expiry
  ) internal view {
    if (portfolioToken == address(0)) {
      revert IPortfolioTokenLimitOrder.PortfolioTokenZeroAddress();
    }
    if (quoteToken == address(0)) {
      revert IPortfolioTokenLimitOrder.QuoteTokenZeroAddress();
    }
    if (!s().portfolioTokenManager.portfolioTokenAccepted(portfolioToken)) {
      revert IPortfolioTokenLimitOrder.PortfolioTokenNotAccepted();
    }
    if (quoteToken != s().portfolioTokenManager.stablecoin()) {
      revert IPortfolioTokenLimitOrder.QuoteTokenNotStablecoin();
    }
    if (portfolioToken == quoteToken) revert IPortfolioTokenLimitOrder.SameToken();
    if (exactAmount == 0) revert IPortfolioTokenLimitOrder.ZeroQuantity();
    if (limitPrice == 0) revert IPortfolioTokenLimitOrder.ZeroLimitPrice();
    if (expiry <= block.timestamp) revert IPortfolioTokenLimitOrder.ExpiryInPast();
    if (expiry > block.timestamp + s().maxOrderDuration) {
      revert IPortfolioTokenLimitOrder.ExpiryTooFarInFuture();
    }
  }

  function checkCompliance(address user) internal view {
    bytes32 userId = s().ondoIDRegistry.getRegisteredID(GM_IDENTIFIER, user);
    if (userId == bytes32(0)) revert IPortfolioTokenLimitOrder.UserNotRegistered();
  }

  function validateExecution(
    IPortfolioTokenLimitOrder.LimitOrder storage order,
    IPortfolioTokenManager.Quote calldata quote
  ) internal view {
    // Order state validation
    if (order.status != IPortfolioTokenLimitOrder.OrderStatus.ACTIVE) {
      revert IPortfolioTokenLimitOrder.OrderNotActive();
    }
    if (block.timestamp > order.expiry) {
      revert IPortfolioTokenLimitOrder.OrderExpired();
    }

    // Quote parameter validation
    if (quote.asset != order.portfolioToken) {
      revert IPortfolioTokenLimitOrder.AssetMismatch();
    }
    if (block.timestamp > quote.expiration) {
      revert IPortfolioTokenLimitOrder.QuoteExpired();
    }
    if (quote.side != order.side) revert IPortfolioTokenLimitOrder.SideMismatch();

    // Price limit validation
    if (order.side == IPortfolioTokenManager.QuoteSide.BUY) {
      if (quote.price > order.limitPrice) {
        revert IPortfolioTokenLimitOrder.PriceTooHigh();
      }
    } else if (order.side == IPortfolioTokenManager.QuoteSide.SELL) {
      if (quote.price < order.limitPrice) {
        revert IPortfolioTokenLimitOrder.PriceTooLow();
      }
    }

    // Fill-or-kill quantity validation (only for EXACT_PORTFOLIO orders)
    if (order.exactType == IPortfolioTokenLimitOrder.ExactType.EXACT_PORTFOLIO) {
      if (quote.quantity != order.exactAmount) {
        revert IPortfolioTokenLimitOrder.QuantityMismatch();
      }
    }

    // Max portfolio quantity validation for EXACT_QUOTE SELL orders
    // Prevents executor from overspending user's portfolio token allowance
    if (
      order.exactType == IPortfolioTokenLimitOrder.ExactType.EXACT_QUOTE
        && order.side == IPortfolioTokenManager.QuoteSide.SELL
    ) {
      uint256 maxPortfolio =
        calculateMaxPortfolio(order.exactAmount, order.limitPrice, order.quoteToken);
      if (quote.quantity > maxPortfolio) {
        revert IPortfolioTokenLimitOrder.QuantityTooHigh();
      }
    }
  }

  // ─────────────────────────────────────────────────────────────────────────────
  // Utility Functions
  // ─────────────────────────────────────────────────────────────────────────────

  function calculateQuoteAmount(IPortfolioTokenManager.Quote calldata quote, address quoteToken)
    internal
    view
    returns (uint256)
  {
    uint8 tokenDecimals = IERC20Metadata(quoteToken).decimals();
    // Combine into single division to avoid intermediate truncation precision loss
    uint256 numerator = quote.quantity * quote.price * (10 ** tokenDecimals);
    uint256 divisor = NORMALIZER_18 * NORMALIZER_18;
    // Round up for BUY (user pays more), round down for SELL (user receives less)
    return quote.side == IPortfolioTokenManager.QuoteSide.BUY
      ? (numerator + divisor - 1) / divisor
      : numerator / divisor;
  }

  function calculateMaxPortfolio(uint256 quoteAmount, uint256 limitPrice, address quoteToken)
    internal
    view
    returns (uint256)
  {
    uint8 tokenDecimals = IERC20Metadata(quoteToken).decimals();
    // Normalize quoteAmount to 18 decimals (USD value)
    uint256 usdValue = quoteAmount * (10 ** (USD_DECIMALS - tokenDecimals));
    // maxPortfolio = usdValue * 1e18 / limitPrice (round up to allow for rounding tolerance)
    return (usdValue * NORMALIZER_18 + limitPrice - 1) / limitPrice;
  }

  // ─────────────────────────────────────────────────────────────────────────────
  // View Functions
  // ─────────────────────────────────────────────────────────────────────────────

  function getOrderCount() internal view returns (uint256) {
    return s().orders.length;
  }

  function getOrder(uint256 orderId)
    internal
    view
    returns (IPortfolioTokenLimitOrder.LimitOrder storage)
  {
    return s().orders[orderId];
  }

  function isOrderActive(uint256 orderId) internal view returns (bool) {
    if (orderId >= s().orders.length) {
      revert IPortfolioTokenLimitOrder.InvalidOrderId();
    }
    IPortfolioTokenLimitOrder.LimitOrder storage order = s().orders[orderId];
    return
      order.status == IPortfolioTokenLimitOrder.OrderStatus.ACTIVE
        && block.timestamp <= order.expiry;
  }

  function isOrderExecuted(uint256 orderId) internal view returns (bool) {
    if (orderId >= s().orders.length) {
      revert IPortfolioTokenLimitOrder.InvalidOrderId();
    }
    return s().orders[orderId].status == IPortfolioTokenLimitOrder.OrderStatus.EXECUTED;
  }

  function retrieveTokens(address token, address recipient, uint256 amount) internal {
    IERC20(token).safeTransfer(recipient, amount);
    emit IPortfolioTokenLimitOrder.TokensRetrieved(token, recipient, amount);
  }

  function getPortfolioTokenManager() internal view returns (address) {
    return address(s().portfolioTokenManager);
  }

  function getOndoIDRegistry() internal view returns (address) {
    return address(s().ondoIDRegistry);
  }

  function setMaxOrderDuration(uint256 duration) internal {
    s().maxOrderDuration = duration;
    emit IPortfolioTokenLimitOrder.MaxOrderDurationSet(duration);
  }

  function getMaxOrderDuration() internal view returns (uint256) {
    return s().maxOrderDuration;
  }
}
