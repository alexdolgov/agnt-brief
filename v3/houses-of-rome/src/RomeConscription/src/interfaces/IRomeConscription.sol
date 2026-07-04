// SPDX-License-Identifier: MIT LICENSE
pragma solidity ^0.8.7;

interface IRomeConscription {

    event ClassCreated(bytes32 className, uint256 indexed classId);
    event TokensRescued(address indexed token, address recipient, uint256 amount);
    event sRomeUpdated(address newSRomeContract);
    event LockupAmountUpdated(uint256 newLockupAmount);
    event ManagementChanged(address managerAddress, bool indexed isManager);
    event HouseCreated(
        bytes32 house, 
        address creatorAddress, 
        uint256 indexed houseId, 
        uint256 timestampCreated
    );
    event ProfileCreated(
        bytes32 characterName, 
        bytes32 indexed house, 
        uint256 indexed classId,
        address indexed userAddress, 
        uint256 timestampCreated
    );
    event ProfileActivated(address indexed userAddress,uint256 timestampActivated);
    event ProfileDeactivated(address indexed userAddress,uint256 timestampDeactivated);
    event HouseChanged(bytes32 oldHouse, bytes32 newHouse, address indexed userAddress);

    function createProfile(
        bytes32 name_,
        bytes32 house_,
        uint256 classId_
    ) external returns(bytes32,bytes32,uint256,address,uint256);

    function activateProfile() external;

    function deactivateProfile() external;

    function createHouse(bytes32 newHouse_) external;

    function changeHouse(bytes32 newHouse_) external;
    
    function changeName(bytes32 newName_,address recipient_) external;

    function getClassLength() external returns(uint256);
    
    function getClasses() external returns(bytes32[] memory);

    





    event NameChanged(bytes32 oldName, bytes32 newName, address indexed userAddress);

}