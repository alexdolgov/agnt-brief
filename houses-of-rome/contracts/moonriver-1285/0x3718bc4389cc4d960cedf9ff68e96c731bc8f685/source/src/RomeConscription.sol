// SPDX-License-Identifier: MIT LICENSE
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "./interfaces/IRomeConscription.sol";
import "./types/Policy.sol";

interface IsROME {
    function gonsForBalance( uint amount ) external view returns ( uint );
    function balanceForGons( uint gons ) external view returns ( uint );
}

contract RomeConscription is IRomeConscription, Policy, Pausable {
  using SafeERC20 for IERC20;

  address public sROME;

  mapping(address => bool) public managers; // access control for certain functions

  uint256 public lockupAmount; // amount of sROME to lock up for a profile

  bool isLocked; // lock for deactivating profile during campaign

  // Character Profile
  struct Profile {
    bytes32 name; // name of the user character attached to wallet
    bytes32 house; // Id of the house (in the array)
    uint256 classId; // classId for the user (position in the classes array)
    uint256 gons; // gons debt to user. Non zero when profile is activated
  }
  mapping(address => Profile) public profiles; // user profiles by wallet address

  // Houses
  mapping(bytes32 => uint) public getIdForHouse; // increment uint for each new house
  uint public totalHouses; // total number of houses.

  // Classes
  bytes32[] public classes; // an array of available classes. *** PUSH ONLY ***

  // Names
  mapping(bytes32 => bool) public isUniqueName; // mapping to check if a name is unique

  modifier campaignLock() {
    require(!isLocked, "Rome Conscription: Campaign is Locked");
    _;
  }

  modifier onlyManaging() {
    require(managers[msg.sender], "Rome Conscription: msg.sender is not a manager");
    _;
  }

  constructor(address sROME_, uint256 lockupAmount_) {
    require(sROME_ != address(0), "Constructor: address zero not allowed");
    sROME = sROME_;
    lockupAmount = lockupAmount_;

    getIdForHouse["VAGABOND"] = 1;
    emit HouseCreated("VAGABOND", msg.sender, 1, block.timestamp);
    getIdForHouse["SEMPRONIA"] = 2;
    emit HouseCreated("SEMPRONIA", msg.sender, 2, block.timestamp);
    getIdForHouse["CONSUL"] = 3;
    emit HouseCreated("CONSUL", msg.sender, 3, block.timestamp);
    getIdForHouse["GRAPES"] = 4;
    emit HouseCreated("GRAPES", msg.sender, 4, block.timestamp);
    getIdForHouse["CHAOS"] = 5;
    emit HouseCreated("CHAOS", msg.sender, 5, block.timestamp);
    getIdForHouse["KEK"] = 6;
    emit HouseCreated("KEK", msg.sender, 6, block.timestamp);
    totalHouses = 6;

    classes.push("INFANTRY");
    emit ClassCreated("INFANTRY", 0);
    classes.push("ARCHER");
    emit ClassCreated("ARCHER", 1);
    classes.push("CAVALRY");
    emit ClassCreated("CAVALRY", 2);
    
  }


  ///////////////////////////////////////////////////////
  //               OWNER CALLED FUNCTIONS              //
  ///////////////////////////////////////////////////////

  // adds a new class name
  function addClass(bytes32 newClass_) external onlyPolicy {
    verifyName(newClass_);
    newClass_ = upper(newClass_);
    for (uint i=0; i < classes.length; i++) {
      require (newClass_ != classes[i], "Cannot addClass(): Class already exists");
    }
    classes.push(newClass_);
    emit ClassCreated(newClass_, classes.length - 1);
  }

  function changeSROME(address sROME_) external onlyPolicy {
    require(sROME_ != address(0), "cannot changeSROME(): address zero not allowed");
    sROME = sROME_;
    emit sRomeUpdated(sROME_);
  }

  function changeLockupAmount(uint256 newLockupAmount_) external onlyPolicy {
    require(newLockupAmount_ != 0, "cannot changeLockupAmount(): zero lockup not allowed");
    lockupAmount = newLockupAmount_;
    emit LockupAmountUpdated(newLockupAmount_);
  }

  function changeManaging(address who, bool isManaging) external onlyPolicy {
    require(who != address(0), "cannot changeManaging(): address zero not allowed");
    managers[who] = isManaging;
    emit ManagementChanged(who, isManaging);
  }

  function lock() external onlyPolicy returns(bool){
    isLocked = true;
    return isLocked;
  }

  function unlock() external onlyPolicy returns(bool){
    isLocked = false;
    return isLocked;
  }

  function rescueTokens(address token_, address recipient_, uint256 amount_) external returns(bool){
    require(
      token_ != address(0) && recipient_ != address(0), "rescueTokens(): cannot be address zero"
    );
    require(token_ != sROME, "rescueTokens(): cannot rescue sROME");
    require(amount_ != 0, "rescueTokens(): amount must be greater than zero");

    IERC20( token_ ).safeTransfer(recipient_,amount_);
    
    emit TokensRescued(token_,recipient_,amount_);
    return true;
  }


  ///////////////////////////////////////////////////////
  //                USER CALLED FUNCTIONS              //
  ///////////////////////////////////////////////////////


  function createProfile(
    bytes32 name_,
    bytes32 house_, 
    uint256 classId_  
  ) external override whenNotPaused returns(bytes32,bytes32,uint256,address,uint256){
    // 1. ensure profile doesn't exist for user
    Profile memory user = profiles[msg.sender];
    require(user.name == bytes32(0), "cannot createProfile(): user already exists");
    require(!isUniqueName[name_], "cannot createProfile(): name already exists");
    verifyName(name_);

    // 2. ensure that the house exists
    require(getIdForHouse[house_] != 0, "cannot createProfile(): house does not exist");

    // 3. ensure that the class exists
    require(classId_ < classes.length, "cannot createProfile(): class does not exist");

    // 4. create a new user w/ the passed in params and save it to the profile mapping
    profiles[msg.sender] = Profile(name_, house_, classId_, IsROME( sROME ).gonsForBalance( lockupAmount ));
    // mark name as used
    isUniqueName[name_] = true;

    // 5. transfer sROME
    IERC20( sROME ).safeTransferFrom( msg.sender, address(this), lockupAmount );
    emit ProfileCreated(name_, house_, classId_, msg.sender, block.timestamp);
    return (name_, house_, classId_, msg.sender, block.timestamp);
  }

  // profile activated when gons non zero
  function activateProfile() external override whenNotPaused {
    Profile memory user = profiles[msg.sender];
    // 1. ensure profile does exist
    require(user.name != bytes32(0), "cannot activateProfile(): user does not exist");
    // 2. ensure profile is not active
    require(user.gons == 0, "cannot activateProfile(): profile already active");

    // 3. activate profile by setting gons
    profiles[msg.sender].gons = IsROME( sROME ).gonsForBalance( lockupAmount );

    // 4. transfer sRome into contract
    IERC20( sROME ).safeTransferFrom( msg.sender, address(this), lockupAmount );
    emit ProfileActivated(msg.sender,block.timestamp);
  }

  // profile deactivated when goins zero
  function deactivateProfile() external override campaignLock whenNotPaused {
    Profile memory user = profiles[msg.sender];
    // 1. ensure profile does exist
    require(user.name != bytes32(0), "cannot activateProfile(): user does not exist");
    // 2. ensure profile is active
    require(user.gons != 0, "cannot activateProfile(): profile already inactive");

    // 3. activate profile by setting gons
    profiles[msg.sender].gons = 0;

    // 4. transfer sRome into contract
    IERC20( sROME ).safeTransfer( msg.sender, IsROME( sROME ).balanceForGons( user.gons ) );
    emit ProfileDeactivated(msg.sender, block.timestamp);
  }
  function changeHouse(bytes32 newHouse_) external override whenNotPaused {
    // 1. ensure profile exists for user
    Profile memory user = profiles[msg.sender];
    require(user.name != bytes32(0), "cannot changeHouse(): user does not exist");

    bytes32 oldHouse = user.house;

    // 2. verify the house exists, then change the house
    require(getIdForHouse[newHouse_] != 0, "cannot changeHouse(): house does not exist");

    profiles[msg.sender].house = newHouse_;
    emit HouseChanged(oldHouse, newHouse_, msg.sender);
  }


  ///////////////////////////////////////////////////////
  //              MANAGER CALLED FUNCTIONS             //
  ///////////////////////////////////////////////////////


  function createHouse(bytes32 newHouse_) external override onlyManaging whenNotPaused {
    // 1. ensure that the user exists
    require(getIdForHouse[newHouse_] == 0, "cannot createHouse(): house already exists");
    verifyName(newHouse_);
    
    // 2. increment the totalHouses (update the state first) then save houseId
    totalHouses++;
    getIdForHouse[newHouse_] = totalHouses;
      // so the Id of the third house is 3, fifth house is 5, so on...

    emit HouseCreated(newHouse_, msg.sender, totalHouses, block.timestamp);
  }
  function changeName(bytes32 newName_, address recipient_) external override onlyManaging whenNotPaused {
    // 1. ensure profile exists for user
    Profile memory user = profiles[recipient_];
    require(user.name != bytes32(0), "cannot changeName(): user does not exist");
    require(!isUniqueName[newName_], "cannot changeName(): name already exists");

    bytes32 oldName = user.name;

    // 2. verify the new name is legit, then change the name
    verifyName(newName_);
    isUniqueName[oldName] = false;
    isUniqueName[newName_] = true;
    profiles[recipient_].name = newName_;
    emit NameChanged(oldName, newName_, recipient_);
  }

  // check if the name is legit
  function verifyName(bytes32 newName_) internal pure {
    require(newName_ != bytes32(0), "cannot verifyName(): name cannot be empty"); // check that the name is not empty

    for (uint i=0; i < 32; i++) {
      bytes1 char = newName_[i];
      require(
        (char >= 0x30 && char <= 0x39) || // "0-9"
        (char >= 0x61 && char <= 0x7A) || // "a-z"
        (char >= 0x41 && char <= 0x5A) || // "A-Z"
        (char == 0x60 || char == 0x2E || char == 0x2D || char == 0x00),
        "cannot verifyName(): only alphanumeric, dot, dash, or underscore"
      );
    }
  }
  // converts to uppercase
  function upper(bytes32 _base) internal pure returns (bytes32) {
      bytes memory _baseBytes = abi.encodePacked(_base);
      for (uint i = 0; i < _baseBytes.length; i++) {
          _baseBytes[i] = _upper(_baseBytes[i]);
      }
      return bytes32(_baseBytes);
  }

  function _upper(bytes1 _b1) private pure returns (bytes1) {
      if (_b1 >= 0x61 && _b1 <= 0x7A) {
          return bytes1(uint8(_b1) - 32);
      }
      return _b1;
  }
  ///////////////////////////////////////////////////////
  //                  VIEWS FUNCTIONS                  //
  ///////////////////////////////////////////////////////


  function getClassLength() external override view returns(uint256) {
    return classes.length;
  }
  function getClasses() external override view returns(bytes32[] memory) {
    uint256 classLength = classes.length;
    bytes32[] memory arr = new bytes32[](classLength);
    for (uint i = 0; i<classLength;i++) {
      arr[i] = classes[i];
    }
    return arr;
  }
}
