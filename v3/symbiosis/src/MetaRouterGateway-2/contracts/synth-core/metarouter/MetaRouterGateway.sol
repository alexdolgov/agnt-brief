// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

import "@uniswap/lib/contracts/libraries/TransferHelper.sol";
import "./MetaRouterExecutorDontApprove.sol";
import "./MetaRouteStructs.sol";


/**
 * @title MetaRouterGateway
 * @notice During the `metaRoute` transaction `MetaRouterGateway` sends user's tokens
 * to `MetaRouterExecutorDontApprove` contract which then operates with them.
 */
contract MetaRouterGateway {
    MetaRouterExecutorDontApprove public metaRouterExecutorDontApprove;

    constructor() {
        metaRouterExecutorDontApprove = new MetaRouterExecutorDontApprove();
    }

    function metaRoute(
        MetaRouteStructs.MetaRouteTransaction calldata _metarouteTransaction
    ) external payable {
        if (!_metarouteTransaction.nativeIn) {
            TransferHelper.safeTransferFrom( _metarouteTransaction.approvedTokens[0], msg.sender, address(metaRouterExecutorDontApprove), _metarouteTransaction.amount);
        }
        metaRouterExecutorDontApprove.metaRoute{value: msg.value}(_metarouteTransaction);
    }
}
