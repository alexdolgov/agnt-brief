// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import "../MiddlewareImplBase.sol";
import "../interfaces/refuel.sol";
import "../helpers/errors.sol";

/**
// @title Refuel Implementation
// @notice Called by the registry before cross chain transfers if the user requests
// for a refuel
// @dev Follows the interface of Swap Impl Base
// @author Socket Technology
*/
contract RefuelImpl is MiddlewareImplBase {
    IRefuel public router; 
    constructor(IRefuel _router, address registry)
        MiddlewareImplBase(registry)
    {
       router =  _router;
    }

    function performAction(
        address,
        address,
        uint256 amount,
        address receiverAddress,
        bytes calldata extraData
    ) external payable override onlyRegistry returns (uint256) {
        require(msg.value != 0, MovrErrors.VALUE_SHOULD_NOT_BE_ZERO);
        uint256 _destinationChainId = abi.decode(extraData, (uint256));
        router.depositNativeToken{value: msg.value}(_destinationChainId, receiverAddress);
        return amount;
    }
}
