// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IOracle {
    enum Type {
        Management,
        Audit,
        Legal
    }

    enum Status {
        Active,
        Inactive
    }

    struct Document {
        string name;
        string hash;
    }

    event DocumentAdded(string name, string hash);
    event DocumentUpdated(uint256 index, string name, string hash);

    function membersLength() external view returns (uint256);

    function getMembers() external view returns (address[] memory);

    function getDocuments() external view returns (Document[] memory);

    function setOracleType(Type oracleType) external;

    function setStatus(Status status) external;

    function setOwner(address owner) external;

    function addMember(address member) external;

    function addDocument(Document memory document) external;

    function updateDocument(uint256 documentIndex, Document memory document) external;
}
