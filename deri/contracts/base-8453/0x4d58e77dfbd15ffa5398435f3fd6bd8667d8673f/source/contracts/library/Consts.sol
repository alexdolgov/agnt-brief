// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

library Consts {

    address internal constant TOKEN_ETH = address(1);

    // op index
    uint256 internal constant OP_INDEX_LENGTH = 6;
    uint256 internal constant OP_INDEX_ADD_MARGIN = 0;
    uint256 internal constant OP_INDEX_REMOVE_MARGIN = 1;
    uint256 internal constant OP_INDEX_TRADE = 2;
    uint256 internal constant OP_INDEX_ADD_MARGIN_AND_TRADE = 3;
    uint256 internal constant OP_INDEX_TRADE_AND_REMOVE_MARGIN = 4;
    uint256 internal constant OP_INDEX_WITHDRAW = 5;

}
