// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.20;

interface IVotingEscrow {
    function getUserInfo(address _user)
        external
        view
        returns (
            int128 amount,
            uint256 end,
            address cakePoolProxy,
            uint128 cakeAmount,
            uint48 lockEndTime,
            uint48 migrationTime,
            uint16 cakePoolType,
            uint16 withdrawFlag
        );
}
