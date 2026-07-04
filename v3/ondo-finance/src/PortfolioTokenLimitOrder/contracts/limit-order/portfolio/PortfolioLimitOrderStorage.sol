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
import {
  IPortfolioTokenLimitOrder
} from "contracts/limit-order/portfolio/IPortfolioTokenLimitOrder.sol";

/**
 * @title  PortfolioLimitOrderStorage
 * @author Ondo Finance
 * @notice EIP-7201 namespaced storage layout for the PortfolioTokenLimitOrder contract.
 */
library PortfolioLimitOrderStorage {
  struct Layout {
    IPortfolioTokenManager portfolioTokenManager;
    IOndoIDRegistry ondoIDRegistry;
    IPortfolioTokenLimitOrder.LimitOrder[] orders;
    uint256 maxOrderDuration;
    bool paused;
  }

  // ─────────────────────────────────────────────────────────────────────────────
  // Storage
  // ─────────────────────────────────────────────────────────────────────────────

  string internal constant STORAGE_ID = "ondo.portfolio.limit.order.storage";
  bytes32 internal constant STORAGE_POSITION = keccak256(
    abi.encode(uint256(keccak256(abi.encodePacked(STORAGE_ID))) - 1)
  ) & ~bytes32(uint256(0xff));

  function layout() internal pure returns (Layout storage s) {
    bytes32 position = STORAGE_POSITION;
    assembly {
      s.slot := position
    }
  }
}
