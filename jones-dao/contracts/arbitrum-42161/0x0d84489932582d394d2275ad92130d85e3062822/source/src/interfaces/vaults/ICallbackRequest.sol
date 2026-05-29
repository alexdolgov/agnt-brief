// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface ICallbackRequest {
    struct Data {
        uint256 shares;
        uint256 assets;
        uint256 strategyRetention;
        uint256 jonesRetention;
        address sender;
        address receiver;
        address callbackAddress;
    }

    function callbackRequest(Data calldata data, bool bypassColdoown, bool enoughAssets) external;
}
