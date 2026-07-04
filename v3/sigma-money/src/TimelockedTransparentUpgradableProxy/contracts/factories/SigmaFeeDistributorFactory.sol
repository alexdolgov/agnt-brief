// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {SigmaFeeDistributor} from "./../SigmaFeeDistributor.sol";

contract SigmaFeeDistributorFactory {
    address public lastFeeDistributor;

    function createFeeDistributor() external returns (address) {
        lastFeeDistributor = address(
            new SigmaFeeDistributor(msg.sender)
        );

        return lastFeeDistributor;
    }
}
