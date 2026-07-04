// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.19;

import "../libraries/GPv2Order.sol";

interface IUserProxyImplementation {

    function proxyName() external view returns (string memory);

    /**
     * @dev Starts coordinator after an order has been executed.
     */
    function afterSettlement(address token,uint256 amount) external;

    /**
     * @dev Starts coordinator before an order has been executed.
     */
    function beforeSettlement(address token, uint256 amount) external;

    function initialize(address _owner, string calldata _proxyName) external;

    function addDelegateOrder(GPv2Order.Data memory order, bytes memory apiOrderUid, 
      address[] memory beforeActionsTo, bytes[] memory beforeActionsData,
      address[] memory afterActionsTo, bytes[] memory afterActionsData) external;

    function addOrder(GPv2Order.Data memory order, bytes memory apiOrderUid, 
      address[] memory beforeActionsTo, bytes[] memory beforeActionsData,
      address[] memory afterActionsTo, bytes[] memory afterActionsData) external;


}