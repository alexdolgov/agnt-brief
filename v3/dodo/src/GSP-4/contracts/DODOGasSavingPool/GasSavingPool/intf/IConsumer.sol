/*

    Copyright 2020 DODO ZOO.
    SPDX-License-Identifier: Apache-2.0

*/

pragma solidity 0.8.16;

interface IConsumer {
    function BASE_FEED_ID() external view returns (string memory);

    function QUOTE_FEED_ID() external view returns (string memory);
}