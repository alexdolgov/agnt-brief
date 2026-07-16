// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../contracts/oracles/MultiplicativePriceFeed.sol";
import "../../contracts/interfaces/IPriceFeed.sol";

contract $MultiplicativePriceFeed is MultiplicativePriceFeed {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor(address priceFeedA_, address priceFeedB_, uint8 decimals_, string memory description_) MultiplicativePriceFeed(priceFeedA_, priceFeedB_, decimals_, description_) payable {
    }

    function $signed256(uint256 n) external pure returns (int256 ret0) {
        (ret0) = super.signed256(n);
    }

    receive() external payable {}
}
