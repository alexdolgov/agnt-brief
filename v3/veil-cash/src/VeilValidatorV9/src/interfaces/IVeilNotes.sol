// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

struct Note {
    uint256 timestamp;
    bytes encryptedData;
}

interface IVeilNotes {
    // Functions
    function validatorContract() external view returns (address);
    function noteAddingEnabled() external view returns (bool);
    function addNote(address _depositor, bytes calldata _encryptedData) external;
}
