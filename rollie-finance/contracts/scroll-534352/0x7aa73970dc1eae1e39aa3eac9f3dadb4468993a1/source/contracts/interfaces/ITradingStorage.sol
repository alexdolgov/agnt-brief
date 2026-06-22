// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

import {TradeBase, OpenTrade, OpenRequest, CloseRequest} from "../libs/Types.sol";
interface ITradingStorage {
    function storeOpenTrade(uint256 orderId, OpenTrade memory _openTrade) external;

    function delOpenTrade(uint256 orderId) external;

    function updateOpentrade(uint256 orderId, uint256 margin, uint256 tp, uint256 sl, bool isClose) external;

    function storeOpenRequst(uint256 _orderId, OpenRequest memory _request) external;

    function delOpenRequst(uint256 _orderId) external;

    function updateOpenRequst(uint256 orderId, uint256 _max, uint256 _min, uint256 _tp, uint256 _sl) external;

    function storeCloseRequst(uint256 _orderId, CloseRequest memory _request) external returns (uint256 index);

    function doneCloseRequst(uint256 _orderId, uint256 index, bool exec) external;

    function delClose(uint256 orderId) external;

    function getOpenTrade(uint256 orderId) external view returns (OpenTrade memory);

    function getOpenRequest(uint256 orderId) external view returns (OpenRequest memory);

    function getCloseRequest(uint256 orderId, uint256 index) external view returns (CloseRequest memory);

    function getCloseRequstAmount(uint256 orderId) external view returns (uint256);

    function transferTo(address token, address to, uint256 amount) external;

    function trading() external view returns (address);

    function pool() external view returns (address);

    function vault() external view returns (address);

    function pairInfo() external view returns (address);

    function oracle() external view returns (address);

    function feeHelper() external view returns (address);
}
