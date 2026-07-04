// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.30;

interface IDevelopmentPlayers {

    //Events.
    event TokensLockedForUser(
        address indexed operator,
        address indexed fromContract, // e.g., Player.sol
        address indexed forUser, // The end-user
        uint256[] ids,
        uint256[] values
    );

    event PlayerSharesPromoted(
        address indexed user,
        uint256[] playerIds,
        uint256[] numShares
    );

    event PlayerContractSet(address indexed newPlayerContract);
    event PlayerPackSet(address indexed newPlayerPack);
    event GovernorRoleSet(address indexed newGovernor);
    event DevelopmentPromoterRoleSet(address indexed newDevelopmentPromoter);
    event DevelopmentCutterRoleSet(address indexed newDevelopmentCutter);
    event PlayersCut(address indexed user, uint256[] playerIdsCut);

    //Errors.
    error ZeroAddress();
    error InvalidSender();
    error InvalidData();
    error InsufficientShares();

    //Functions.
    function promotePlayers(address _user, uint256[] memory _playerIds, uint256[] memory _numShares) external;
    function cutPlayers(address _user, uint256[] memory _idsToCut, uint256[] memory _numShares) external;
    function getLockedBalances(address _user, uint256[] memory _playerIds) external view returns (uint256[] memory);
    function getUserPlayerIds(address _user) external view returns (uint256[] memory);
    function setPlayerContract(address _newPlayerContract) external;
    function setPlayerPack(address _newPlayerPack) external;
}