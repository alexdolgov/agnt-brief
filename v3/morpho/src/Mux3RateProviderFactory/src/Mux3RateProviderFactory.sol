// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.28;

import {BaseRateProviderFactory} from "../lib/metastable-rate-providers/contracts/BaseRateProviderFactory.sol";
import {Mux3RateProvider} from "./Mux3RateProvider.sol";

contract Mux3RateProviderFactory is BaseRateProviderFactory {
    address public immutable mux3AumReader;

    constructor(address mux3AumReader_) {
        mux3AumReader = mux3AumReader_;
    }

    function create(address pool) external returns (Mux3RateProvider) {
        Mux3RateProvider rateProvider = new Mux3RateProvider(
            mux3AumReader,
            pool
        );
        _onCreate(address(rateProvider));
        return rateProvider;
    }
}
