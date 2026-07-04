// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }
}

abstract contract Ownable is Context {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor() {
        _transferOwnership(_msgSender());
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
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        _transferOwnership(newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual {
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}

interface IWager{
    function getDailyWager(address user) external view returns (uint256);
    function getWeeklyWager(address user) external view returns (uint256);
    function getEpochWager(address user) external view returns (uint256);
}

interface IBuyer{
    function hasBoughtToday(address user) external view returns (uint256);
    function hasBoughtThisWeek(address user) external view returns (uint256);
    function hasBoughtThisEpoch(address user) external view returns (uint256);
}

interface IButton{
    function getKovinEntries(address user) external view returns (uint256);
}


contract DataGalxe is Ownable {

    IBuyer public kovinBuyer;
    IWager public kovinWager;
    IButton public kovinButton;

    constructor(address _kovinBuyer, address _kovinWager, address _kovinButton){
        kovinBuyer = IBuyer(_kovinBuyer);
        kovinWager = IWager(_kovinWager);
        kovinButton = IButton(_kovinButton);
    }

    function hasBoughtToday(address user) public view returns (uint256) {
        return kovinBuyer.hasBoughtToday(user);
    }

    function hasBoughtThisWeek(address user) public view returns (uint256) {
        return kovinBuyer.hasBoughtThisWeek(user);
    }

    function hasBoughtThisEpoch(address user) public view returns (uint256) {
        return kovinBuyer.hasBoughtThisEpoch(user);
    }

    function getDailyWager(address user) public view returns (uint256) {
        return kovinWager.getDailyWager(user);
    }

    function getWeeklyWager(address user) public view returns (uint256) {
        return kovinWager.getWeeklyWager(user);
    }
    
    function getEpochWager(address user) public view returns (uint256) {
        return kovinWager.getEpochWager(user);
    }

    function getKovinEntries(address user) public view returns (uint256) {
        return kovinButton.getKovinEntries(user);
    }

    function changeSC(address _kovinBuyer, address _kovinWager, address _kovinButton) public onlyOwner {
        kovinBuyer = IBuyer(_kovinBuyer);
        kovinWager = IWager(_kovinWager);
        kovinButton = IButton(_kovinButton);
    }
}