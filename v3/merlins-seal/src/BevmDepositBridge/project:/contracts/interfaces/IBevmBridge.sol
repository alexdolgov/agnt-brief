// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

interface IBevmBridge {
    struct TokenParameters {
        address from_token;
        uint256 token_amount;
        uint256 est_fee;
        string memo;
    }

    function bridgeOut(
        bytes32 swap_id,
        uint64 to_chain,
        string calldata receiver,
        TokenParameters calldata token_params
    ) external payable;
}
