// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24;

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
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        _checkOwner();
        _;
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if the sender is not the owner.
     */
    function _checkOwner() internal view virtual {
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions anymore. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby removing any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        _transferOwnership(address(0));
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

interface IJeckpot { 
    struct PlayerInfos { 
        uint256 lastGame;
        uint256 lastTimePVP;
        uint256 amountPlayed;
        uint256 points;
        uint256 volume;
        uint256 lastHoldAmount;
        uint256 totalWin;
        string username;
    }

    function getPlayerInfos(address player) external view returns (PlayerInfos memory);
    function getVolumeForPlayer(address player) external view returns (uint256);
    function getPointsForPlayer(address player) external view returns (uint256);
    function getWinAmountForPlayer(address player) external view returns (uint256);
}

interface IERC20 {

    function balanceOf(address user) external view returns (uint256);

}

contract Storage is Ownable {
    
    address public jeckpot;
    address public kovin = 0x694200a68B18232916353250955bE220e88c5cBB;
    
    mapping(uint16 => mapping(address => uint256)) public balanceDaily;
    mapping(uint16 => mapping(address => uint256)) public balanceWeekly;
    mapping(uint16 => mapping(address => uint256)) public balanceMonthly;

    mapping(uint16 => mapping(address => uint256)) public volumeDaily;
    mapping(uint16 => mapping(address => uint256)) public volumeWeekly;
    mapping(uint16 => mapping(address => uint256)) public volumeMonthly;

    uint16 public currentDay;
    uint16 public currentWeek;
    uint16 public currentMonth;

    uint256 public miniChangeBuyDaily;
    uint256 public miniChangeBuyWeekly;
    uint256 public miniChangeBuyMonthly;
    uint256 public miniChangeVolumeDaily;
    uint256 public miniChangeVolumeWeekly;
    uint256 public miniChangeVolumeMonthly;

    constructor(address _jeckpot) {
        jeckpot = _jeckpot;
        miniChangeBuyDaily = 1000000*10**18;
        miniChangeBuyWeekly = 5000000*10**18;
        miniChangeBuyMonthly = 20000000*10**18;
        miniChangeVolumeDaily = 1000000*10**18;
        miniChangeVolumeWeekly = 5000000*10**18;
        miniChangeVolumeMonthly = 20000000*10**18;
    }

    function recordBalanceAndVolume(address[] memory buyers, address[] memory players, bool changeDay, bool changeWeek, bool changeMonth) public onlyOwner {
        for(uint i = 0; i< buyers.length; i++){
            uint256 balanceUser = getBalanceOf(buyers[i]);
            if(changeDay){
                balanceDaily[currentDay][buyers[i]] = balanceUser;
            }
            if(changeWeek){
                balanceWeekly[currentWeek][buyers[i]] = balanceUser;
            }
            if(changeMonth){
                balanceMonthly[currentMonth][buyers[i]] = balanceUser;
            }
        }

        for(uint j = 0; j< players.length; j++){
            uint256 volumeUser = getVolumeOf(players[j]);
            if(changeDay){
                volumeDaily[currentDay][players[j]] = volumeUser;
            }
            if(changeWeek){
                volumeWeekly[currentWeek][players[j]] = volumeUser;
            }
            if(changeMonth){
                volumeMonthly[currentMonth][players[j]] = volumeUser;
            }
        }

        if(changeDay){
            currentDay++;
        }
        if(changeWeek){
            currentWeek++;
        }
        if(changeMonth){
            currentMonth++;
        }

    }

    function hasBoughtToday(address user) public view returns (bool){
        uint256 actualBalance = getBalanceOf(user);
        return actualBalance >= balanceDaily[currentDay-1][user]+miniChangeBuyDaily;
    }

    function hasBoughtThisWeek(address user) public view returns (bool){
        uint256 actualBalance = getBalanceOf(user);
        return actualBalance >= balanceWeekly[currentWeek-1][user]+miniChangeBuyWeekly;
    }

    function hasBoughtThisMonth(address user) public view returns (bool){
        uint256 actualBalance = getBalanceOf(user);
        return actualBalance >= balanceMonthly[currentMonth-1][user]+miniChangeBuyMonthly;
    }

    function hasPlayedToday(address user) public view returns (bool){
        uint256 actuelVolume = getVolumeOf(user);
        return actuelVolume >= volumeDaily[currentDay-1][user]+miniChangeVolumeDaily;
    }

    function hasPlayedThisWeek(address user) public view returns (bool){
        uint256 actuelVolume = getVolumeOf(user);
        return actuelVolume >= volumeWeekly[currentWeek-1][user]+miniChangeVolumeWeekly;
    }

    function hasPlayedThisMonth(address user) public view returns (bool){
        uint256 actuelVolume = getVolumeOf(user);
        return actuelVolume >= volumeMonthly[currentMonth-1][user]+miniChangeVolumeMonthly;
    }

    function changeManualDay() public onlyOwner {
        currentDay++;
    }

    function changeManualWeek() public onlyOwner {
        currentWeek++;
    }

    function changeManualMonth() public onlyOwner {
        currentMonth++;
    }

    function setMinChanges(uint256 _miniChangeBuyDaily, uint256 _miniChangeBuyWeekly, uint256 _miniChangeBuyMonthly, uint256 _miniChangeVolumeDaily, uint256 _miniChangeVolumeWeekly, uint256 _miniChangeVolumeMonthly) public onlyOwner {
        miniChangeBuyDaily = _miniChangeBuyDaily;
        miniChangeBuyWeekly = _miniChangeBuyWeekly;
        miniChangeBuyMonthly = _miniChangeBuyMonthly;
        miniChangeVolumeDaily = _miniChangeVolumeDaily;
        miniChangeVolumeWeekly = _miniChangeVolumeWeekly;
        miniChangeVolumeMonthly = _miniChangeVolumeMonthly;
    }

    function getPlayerInfos(address user) public view returns (IJeckpot.PlayerInfos memory infos) {
        infos = IJeckpot(jeckpot).getPlayerInfos(user);
    }

    function getBalanceOf(address user) public view returns (uint256) {
        return IERC20(kovin).balanceOf(user);
    }

    function getVolumeOf(address user) public view returns (uint256) {
        return IJeckpot(jeckpot).getVolumeForPlayer(user);
    }

    function getPointsOf(address user) public view returns (uint256) {
        return IJeckpot(jeckpot).getPointsForPlayer(user);
    }
    
    function getWinAmountOf(address user) public view returns (uint256) {
        return IJeckpot(jeckpot).getWinAmountForPlayer(user);
    }

}