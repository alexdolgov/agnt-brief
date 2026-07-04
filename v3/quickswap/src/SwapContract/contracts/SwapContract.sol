// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

import "./base/SwapContractV2.sol";

/// @title Swap contract for multisignature bridge
contract SwapContract is SwapContractV2{

    function swapTokensToOtherBlockchain(swapToParams memory params)
        external
        payable
    {
        _swapTokensToOtherBlockchain(params);
    }

    function swapCryptoToOtherBlockchain(swapToParams memory params)
        external
        payable
    {
        _swapCryptoToOtherBlockchain(params);
    }

    function swapTokensToUserWithFee(swapFromParams memory params)
        external
    {
        _swapTokensToUserWithFee(params);
    }

    function swapCryptoToUserWithFee(swapFromParams memory params)
        external
    {
        _swapCryptoToUserWithFee(params);
    }
}