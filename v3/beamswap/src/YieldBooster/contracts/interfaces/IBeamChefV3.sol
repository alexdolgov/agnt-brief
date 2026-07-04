// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

interface IBeamChefV3 {
    function votePool(address _user, uint256 _pid) external;

    function unVotePool(address _user, uint256 _pid) external;

    function updateVotePool(
        address _user,
        uint256 amount,
        uint256 _pid
    ) external;

    function isPoolVoteable(uint256 _pid) external view returns (bool);

    function votePoolMarket(
        address _user,
        uint256 _pid,
        uint256 _amount
    ) external;
}
