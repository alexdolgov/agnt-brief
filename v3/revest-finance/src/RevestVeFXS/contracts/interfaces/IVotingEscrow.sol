// SPDX-License-Identifier: GNU-GPL v3.0 or later

pragma solidity >=0.8.0;

import "./IRegistryProvider.sol";
import "@openzeppelin/contracts/utils/introspection/IERC165.sol";

/**
 * @title Provider interface for Revest FNFTs
 */
interface IVotingEscrow {
    struct Point {
        int128 bias;
        int128 slope;
        uint256 ts;
        uint256 blk;
    }

    function createLock(address _addr, uint256 _value, uint128 _unlock_time) external returns (uint128, uint256);

    function increaseAmount(uint256 _value, uint128 _lockIndex) external;

    function increaseUnlockTime(uint128 _unlock_time, uint128 _lockIndex) external;

    function withdraw(uint128 _lockIndex) external;

    function token() external view returns (address tok);

    function lockedByIndex(address _addr, uint128 index) external view returns (int128 amount, uint256 end);

    function balanceOf(address _addr) external view returns (uint256 balance);
}
