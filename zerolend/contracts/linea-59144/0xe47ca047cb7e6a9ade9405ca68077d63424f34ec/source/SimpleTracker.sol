pragma solidity ^0.8.0;

contract SimpleTracker {
    string[] public uuids;

    function addUuid(string memory _uuid) public {
        uuids.push(_uuid);
    }

    function getUuids() public view returns(string[] memory) {
        return uuids;
    }
}