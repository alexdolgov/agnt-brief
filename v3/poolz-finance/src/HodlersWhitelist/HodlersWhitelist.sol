// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

/*
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with GSN meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address payable) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes memory) {
        this; // silence state mutability warning without generating bytecode - see https://github.com/ethereum/solidity/issues/2691
        return msg.data;
    }
}
/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * By default, the owner account will be the one that deploys the contract. This
 * can later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract Ownable is Context {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor () internal {
        address msgSender = _msgSender();
        _owner = msgSender;
        emit OwnershipTransferred(address(0), msgSender);
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
        _;
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions anymore. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby removing any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        emit OwnershipTransferred(_owner, address(0));
        _owner = address(0);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        emit OwnershipTransferred(_owner, newOwner);
        _owner = newOwner;
    }
}

contract GovManager is Ownable {
    address public GovernerContract;

    modifier onlyOwnerOrGov() {
        require(msg.sender == owner() || msg.sender == GovernerContract, "Authorization Error");
        _;
    }

    function setGovernerContract(address _address) external onlyOwnerOrGov{
        GovernerContract = _address;
    }

    constructor() public {
        GovernerContract = address(0);
    }
}
contract Manageable is GovManager {
    event NewWhiteList(uint _WhitelistId, address _creator, uint _changeUntil);

    modifier OnlyCreator(uint256 _Id) {
        require(
            WhitelistSettings[_Id].Creator == msg.sender,
            "Only creator can access"
        );
        _;
    }

    modifier TimeRemaining(uint256 _Id){
        require(
            now < WhitelistSettings[_Id].ChangeUntil,
            "Time for edit is finished"
        );
        _;
    }

    modifier ValidateId(uint256 _Id){
        require(_Id < WhiteListCount, "Wrong ID");
        _;
    }

    struct WhiteListItem {
        address Creator;
        uint256 ChangeUntil;
        bool isReady; // defualt false | true after first address is added
    }

    mapping(uint256 => mapping(address => bool)) public WhitelistDB;
    mapping(uint256 => WhiteListItem) public WhitelistSettings;
    uint256 public WhiteListCount;
    uint256 public MainWhitelistId;

    function SetMainWhitelistId(uint256 _Id) external onlyOwnerOrGov {
        MainWhitelistId = _Id;
    }

    function _AddAddress(uint256 _Id, address user) internal {
        WhitelistDB[_Id][user] = true;
    }

    function _RemoveAddress(uint256 _Id, address user) internal {
        WhitelistDB[_Id][user] = false;
    }

    function isWhiteListReady(uint256 _Id) external view returns(bool){
        return WhitelistSettings[_Id].isReady;
    }

    function IsPOZHolder(address _Sender) external view returns(bool){
        return WhitelistDB[MainWhitelistId][_Sender];
    }
}
contract HodlersWhitelist is Manageable {
    constructor() public {
        MaxUsersLimit = 600;
    }
    
    uint256 public MaxUsersLimit;

    modifier isBelowUserLimit(uint256 _limit) {
        require(_limit <= MaxUsersLimit, "Maximum User Limit exceeded");
        _;
    }

    function setMaxUsersLimit(uint256 _limit) external onlyOwner {
        MaxUsersLimit = _limit;
    }

    function CreateManualWhiteList(uint256 _ChangeUntil) external onlyOwnerOrGov returns (uint256 Id) {
        WhitelistSettings[WhiteListCount] =  WhiteListItem(
            msg.sender,
            _ChangeUntil,
            false
        );
        MainWhitelistId = WhiteListCount;
        WhiteListCount++;
        emit NewWhiteList(MainWhitelistId, msg.sender, _ChangeUntil);
        return MainWhitelistId;
    }

    function ChangeCreator(uint256 _Id, address _NewCreator)
        external
        ValidateId(_Id)
        OnlyCreator(_Id)
        TimeRemaining(_Id)
    {
        WhitelistSettings[_Id].Creator = _NewCreator;
    }

    function AddAddress(uint256 _Id, address[] calldata _Users)
        external
        ValidateId(_Id)
        OnlyCreator(_Id)
        TimeRemaining(_Id)
        isBelowUserLimit(_Users.length)
    {
        require(_Users.length > 0,"Need something...");
        if(!WhitelistSettings[_Id].isReady){
            WhitelistSettings[_Id].isReady = true;
        }
        for (uint256 index = 0; index < _Users.length; index++) {
            _AddAddress(_Id, _Users[index]);
        }
    }

    function RemoveAddress(uint256 _Id, address[] calldata _Users)
        external
        OnlyCreator(_Id)
        TimeRemaining(_Id)
        ValidateId(_Id)
        isBelowUserLimit(_Users.length)
    {
        for (uint256 index = 0; index < _Users.length; index++) {
            _RemoveAddress(_Id, _Users[index]);
        }
    }
}