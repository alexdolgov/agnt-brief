// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract ReferralRegistry {
    event CreateReferralCode(address indexed user, string code, uint256 codeId);
    event UseReferralCode(address indexed user, string code, uint256 codeId);

    mapping(address => string) public ownerToCode;
    mapping(string => address) public codeToOwner;
    mapping(address => string) public userToCode;

    mapping(uint256 => string) public idToCode;
    mapping(string => uint256) public codeToId;
    uint256 public codeId;

    constructor() {}

    function isValid(string memory str) public pure returns (bool) {
        bytes memory b = bytes(str);
        for (uint256 i = 0; i < b.length; i++) {
            bytes1 char = b[i];
            if (
                !(char >= 0x30 && char <= 0x39) && !(char >= 0x41 && char <= 0x5A) && !(char >= 0x61 && char <= 0x7A)
                    && !(char == 0x2D || char == 0x5F)
            ) {
                return false;
            }
        }
        return true;
    }

    function useCode(string memory code) public {
        require(bytes(code).length > 0, "CODE_CANNOT_BE_EMPTY");
        require(codeToOwner[code] != address(0), "CODE_DOESNT_EXIST");
        require(bytes(userToCode[msg.sender]).length == 0, "ALREADY_USED_A_CODE");
        require(codeToOwner[code] != msg.sender, "CODE_OWNER_CANNOT_USE_IT");
        userToCode[msg.sender] = code;

        emit UseReferralCode(msg.sender, code, codeToId[code]);
    }

    function createCode(string memory code) public {
        require(codeToId[code] == 0, "CODE_ALREADY_USED");
        require(bytes(code).length > 0, "CODE_CANNOT_BE_EMPTY");
        require(bytes(code).length < 16, "CODE_TOO_LONG");
        require(bytes(ownerToCode[msg.sender]).length == 0, "ALREADY_OWNS_A_CODE");
        require(isValid(code), "INVALID_CODE");

        codeToId[code] = codeId;
        idToCode[codeId] = code;

        ownerToCode[msg.sender] = code;
        codeToOwner[code] = msg.sender;

        emit CreateReferralCode(msg.sender, code, codeId);

        codeId++;
    }
}
