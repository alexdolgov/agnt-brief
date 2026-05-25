// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.28;

import {IRateProvider} from "../lib/metastable-rate-providers/contracts/interfaces/IRateProvider.sol";
import {ILpToken} from "./interfaces/ILpToken.sol";
import {IMux3AumReader} from "./interfaces/IMux3AumReader.sol";

contract Mux3RateProvider is IRateProvider {
    address public immutable mux3AumReader;
    address public immutable mepPool;

    constructor(address mux3AumReader_, address mepPool_) {
        mux3AumReader = mux3AumReader_;
        mepPool = mepPool_;
    }

    function getRate() external view returns (uint256) {
        uint256 lpSupply = ILpToken(mepPool).totalSupply();
        if (lpSupply == 0) {
            return 1e18;
        } else {
            uint256 aumUsd = IMux3AumReader(mux3AumReader).estimatedAumUsd(
                mepPool
            );
            return (aumUsd * 1e18) / lpSupply;
        }
    }
}
