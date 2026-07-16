// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

import "./IOwnable.sol";
import "./ICondition.sol";

interface IBet {
    struct BetData {
        address affiliate;
        bytes data;
    }

    /**
     * @notice Register new bet.
     * @param  bettor wallet for emitting bet token(s)
     * @param  amount amount of tokens to bet
     * @param  betData customized bet data
     */
    function putBet(
        address bettor,
        uint128 amount,
        BetData calldata betData
    ) external returns (uint256 tokenId);

    function resolvePayout(address account, uint256 tokenId)
        external
        returns (uint128 payout);

    function viewPayout(address account, uint256 tokenId)
        external
        view
        returns (bool accepted, uint128 payout);
}
