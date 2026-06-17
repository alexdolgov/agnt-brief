// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

interface IGlmAddresses {
    struct Glm {
        address vault;
        address router;
        address manager;
        address managerCallback;
        address rebalance;
        address rebalanceCallback;
        address priceReader;
        address feeCalculator;
    }

    function setGlmAddresses(
        address _glmVault,
        address _glmRouter,
        address _glmManager,
        address _glmManagerCallback,
        address _glmRebalance,
        address _glmRebalanceCallback,
        address _glmPriceReader,
        address _glmFeeCalculator
    ) external;

    event SetGlmAddresses(
        address _glmVault,
        address _glmRouter,
        address _glmManager,
        address _glmManagerCallback,
        address _glmRebalance,
        address _glmRebalanceCallback,
        address _glmPriceReader,
        address _glmFeeCalculator
    );
}
