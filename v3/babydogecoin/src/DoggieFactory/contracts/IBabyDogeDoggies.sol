//SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

interface IBabyDogeDoggies {
    function mint(
        address _to,
        uint8 _doggieId
    ) external returns (uint256);

    function setDoggieName(uint8 _doggieId, string calldata _name) external;

    function setTeamURIs(uint[] calldata _teamIds, string[] calldata _teamURIs) external;

    function transferOwnership(address newOwner) external;
}
