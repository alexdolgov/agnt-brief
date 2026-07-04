// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./interfaces/IOracle.sol";

contract Oracle is IOracle {
    string public name;
    Type public oracleType;
    Status public status;
    address public owner;
    address[] public members;
    Document[] public documents;
    mapping(address => bool) member;

    modifier onlyOwner() {
        require(msg.sender == owner, "Oracle: caller is not the Oracle owner");
        _;
    }

    constructor(string memory _name, Type _oracleType, address _owner) {
        name = _name;
        oracleType = _oracleType;
        owner = _owner;
        status = Status.Inactive;
    }

    function membersLength() external view override returns (uint256) {
        return members.length;
    }

    function getMembers() external view override returns (address[] memory) {
        return members;
    }

    function getDocuments() external view override returns (Document[] memory) {
        return documents;
    }

    function setStatus(Status _status) external override onlyOwner {
        status = _status;
    }

    function setOracleType(Type _oracleType) external override onlyOwner {
        oracleType = _oracleType;
    }

    function setOwner(address _owner) external override onlyOwner {
        require(address(_owner) != address(0), "Oracle: address owner is the zero address");
        owner = _owner;
    }

    function addMember(address _member) external override onlyOwner {
        member[_member] = true;
        members.push(_member);
    }

    function addDocument(Document memory document) external override onlyOwner {
        documents.push(document);
        emit DocumentAdded(document.name, document.hash);
    }

    function updateDocument(uint256 documentIndex, Document memory document) external override onlyOwner {
        require(documentIndex < documents.length, "documentIndex must be less than documents.length");
        documents[documentIndex] = document;
        emit DocumentUpdated(documentIndex, document.name, document.hash);
    }
}
