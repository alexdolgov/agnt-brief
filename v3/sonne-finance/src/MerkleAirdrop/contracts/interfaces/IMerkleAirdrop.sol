//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

interface IMerkleAirdrop {
    struct Balance {
        address recipient;
        uint256 value;
    }

    function sonne() external view returns (address);

    function tokenHolder() external view returns (address);

    function merkleRoot() external view returns (bytes32);

    function setTokenHolder(address _tokenHolder) external;

    function setMerkleRoot(bytes32 _merkleRoot) external;

    function claim(Balance memory _balance, bytes32[] memory proof) external;
}
