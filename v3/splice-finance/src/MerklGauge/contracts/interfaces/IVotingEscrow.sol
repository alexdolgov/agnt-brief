// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

interface IVotingEscrow {
    struct LockedBalance {
        int128 amount;
        uint256 end;
    }

    function locked(address owner) external view returns (LockedBalance memory lock);

    function deposit_for(address owner, uint256 value) external;

    function token() external view returns (address);
}
