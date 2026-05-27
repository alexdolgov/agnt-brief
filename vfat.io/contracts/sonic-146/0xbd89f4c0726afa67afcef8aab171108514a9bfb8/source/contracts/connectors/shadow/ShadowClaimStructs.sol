// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IXShadow {
    function exit(
        uint256 amount
    ) external returns (uint256 exitedAmount);
}

interface IX33 {
    function deposit(
        uint256 assets,
        address receiver
    ) external returns (uint256 shares);
}

enum ShadowRewardBehavior {
    Exit, // Exit to Shadow (50% penalty)
    X33, // Deposit into X33
    Keep // Keep in xShadow on Sickle

}

struct ShadowClaimExtraData {
    // claimTokens need to be passed as extraData because xShadow is one of them
    // The default claim behavior in NftFarmStrategy is to transfer the reward
    // tokens to the user at the end, but xShadow is not transferable. This is a
    // workaround.
    address[] claimTokens;
    ShadowRewardBehavior behavior;
}
