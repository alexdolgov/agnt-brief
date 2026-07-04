//SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/proxy/utils/Initializable.sol";

import "../interfaces/IUserLevel.sol";

interface Decimal {
    function decimals() external view returns(uint8);
}

contract IDOProject is ReentrancyGuard, Initializable {
    using EnumerableSet for EnumerableSet.AddressSet;
    using EnumerableSet for EnumerableSet.UintSet;
    using SafeERC20 for IERC20;
    using ECDSA for bytes32;
    using ECDSA for bytes;


    struct Cliff {
        uint timeStamp;
        uint percentage;
    }

    struct ClaimInfo {
        uint8 lastClaim;
        uint totalToken;
        uint totalTokenClaimed;
        bool finish;
    }

    //constant
    uint public constant ONE_HUNDRED_PERCENT = 10000;

    // address verify
    address public admin;

    //setting
    uint public projectId;
    uint public registerStartTime;
    uint public calculationTime;
    uint public fcfsStartTime;
    uint public rate; // multiple with decimals token
    uint public totalSlot;
    uint public totalWhiteList;

    //vesting
    Cliff[] public vestingInfo;

    //info
    IERC20 public currency;
    IERC20 public tokenSale;
    uint public tokenSaleDecimal;

    // storage
    mapping(address => ClaimInfo) public claimInfo; // user address => ClaimInfo data
    mapping(address => uint) public commit;  // user address => committed amount

    //list user
    EnumerableSet.AddressSet users;
    EnumerableSet.AddressSet winners;
    EnumerableSet.AddressSet whiteList;
    EnumerableSet.AddressSet whiteListSubmitted;
    EnumerableSet.AddressSet fcfsSubmitted;
    // allocation
    uint public maxAllocation;
    uint public fcfsAllocation;

    // total tokens for fcfs
    uint public fcfsSupply;
    // totol tokens fcfs bought
    uint public fcfsBought;
    mapping(address => uint) public userAllocation;

    //control
    bool public poolEnd = false;
    bool public settingProject = false;

    //operator
    address public operator;

    //user level
    address public userLevel;

    //total token currency receiver
    uint public totalReceive;
    uint totalWithdraw;



    //===================EVENTS===================//
    modifier onlyOperator() {
        require(msg.sender == operator, "!Operator");
        _;
    }

    modifier onPoolSale() {
        require(block.timestamp >= registerStartTime && block.timestamp <= calculationTime, "Not time on pool sale");
        _;
    }

    modifier afterSale() {
        require(block.timestamp > calculationTime, "before sale end");
        require(!poolEnd, "pool not end");
        _;
    }

    modifier checkSigner(bytes memory _signature, uint256 _slot, uint _userLevel) {
        require(_slot > 0, "_slot minimum is 1");
        bytes32 _hash = keccak256(abi.encodePacked(projectId, msg.sender, address(this), _slot, _userLevel)).toEthSignedMessageHash();
        require(_hash.recover(_signature) == admin, "Verify signature failed");
        _;
    }

    modifier isWithdrawable() {
        bool check = block.timestamp > calculationTime && poolEnd && !winners.contains(msg.sender);
        require(check, "Not time for withdraw");
        _;
    }

    modifier isClaimable() {
        bool check = block.timestamp > calculationTime && poolEnd && (winners.contains(msg.sender) || whiteListSubmitted.contains(msg.sender) || fcfsSubmitted.contains(msg.sender));
        require(check, "Not time for claim");
        _;
    }

    modifier isWithdrawableAdmin() {
        bool check = block.timestamp > calculationTime;
        require(check, "Not time for admin withdraw");
        _;
    }

    modifier isFCFS() {
        require(poolEnd, "All pool did not finish yet");
        require(block.timestamp < vestingInfo[0].timeStamp, "FCFS has finished");
        require(block.timestamp >= fcfsStartTime, "FCFS did not start");
        _;
    }

    //===================EVENTS===================
    event Setting(
        uint indexed projectId,
        bool indexed update,
        uint _registerStartTime,
        uint _calculationTime,
        uint _rate,
        address _currency,
        address _tokenSale,
        address _admin,
        uint _allocation,
        uint[]  timestamps,
        uint[]  percentages,
        uint _totalSlot,
        uint _whiteList,
        uint _fcfsStartTime
    );
    event ProjectCreated(uint indexed projectId, address indexed contractAddress);
    event Register(address indexed user, uint indexed projectId, uint indexed allocation, uint slot, uint userLevel, uint pool);
    event Withdraw(address indexed user, uint indexed amount, uint indexed projectId);
    event Claim(address indexed user,uint indexed projectId, uint indexed amount);
    event WinnerMember(address indexed user, uint indexed projectId, uint indexed pool, uint amount);
    event PoolEnd(bool indexed _slot, uint indexed projectId);
    event CreateRandom(uint indexed number, uint indexed projectId);
    event SettingFCFS(uint indexed startTime, uint indexed allocation, uint indexed projectId);
    event BuyFCFS(address indexed user, uint indexed amount, uint indexed projectId);
    event AddWhiteList(address[] indexed addresses, uint indexed projectId);
    event RemoveWhiteList(address indexed user, uint indexed projectId);
    event ChangeCalculationTime(uint indexed projectId, uint indexed newTime);
    event ChangeRegisterTime(uint indexed projectId, uint indexed newTime);
    event ChangeDistribution(uint indexed projectId, uint[]  timestamps, uint[] percentages);


    // initialize
    function initialize(uint _projectId, address _operator, address _userLevel) public initializer returns (bool) {
        require(_operator != address(0), "!zero");
        projectId = _projectId;
        operator = _operator;
        userLevel = _userLevel;
        emit ProjectCreated(projectId, address(this));
        return true;
    }


    //====================== Internal =====================//
    function _min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a < b ? a : b;
    }

    //=================== External ===================== //
    function registerProject(bytes memory _signature, uint256 _slot, uint _userLevel, uint _pool) external onPoolSale checkSigner(_signature, _slot, _userLevel) {
        require(_pool == 1 || _pool == 2, "_pool not support");
        // white list
        if(_pool == 1) {
            require(whiteList.contains(msg.sender), "User not in white list");
            currency.safeTransferFrom(msg.sender, address(this), maxAllocation);
            _execute(msg.sender, maxAllocation, _pool);
        }
        // other
        if( _pool == 2) {
            require(!users.contains(msg.sender), "User already register");
            currency.safeTransferFrom(msg.sender, address(this), maxAllocation * _slot);
            commit[msg.sender] = maxAllocation * _slot;
            users.add(msg.sender);
        }
        emit Register(msg.sender, projectId, maxAllocation * _slot, _slot, _userLevel, _pool);
    }

    function withdraw() external isWithdrawable nonReentrant {
        uint _amount = 0;
        _amount = commit[msg.sender];
        commit[msg.sender] = 0;
        currency.safeTransfer(msg.sender, _amount);
        emit Withdraw(msg.sender, _amount, projectId);
    }

    function claim() external isClaimable nonReentrant {
        uint _amount = 0;
        ClaimInfo storage _user = claimInfo[msg.sender];
        (,bool _finish,bool _claimable,uint _totalClaim,uint8 _lastClaim) = getClaimInfo(_user.totalToken, _user.lastClaim);
        require(_claimable, "!Claimable");
        _amount = _totalClaim;
        if (_finish) {
            _user.finish = _finish;
            _amount = _user.totalToken - _user.totalTokenClaimed;
        }
        _user.lastClaim = _lastClaim;
        _user.totalTokenClaimed += _amount;
        require(_user.totalTokenClaimed <= _user.totalToken, "Overflow claimable");
        tokenSale.safeTransfer(msg.sender, _amount);
        emit Claim(msg.sender, projectId, _amount);
    }

    function withdrawAdmin() external onlyOperator isWithdrawableAdmin() nonReentrant {
        uint currentWithdraw = totalReceive - totalWithdraw;
        require(currentWithdraw > 0, "No token to withdraw");
        currency.safeTransfer(msg.sender, currentWithdraw);
        totalWithdraw += currentWithdraw;
        emit Withdraw(msg.sender, currentWithdraw, projectId);
    }

    function setting(
        uint[] memory _dataUint,
        IERC20[] memory _dataErc20,
        uint[] memory _timestamps,
        uint[] memory _percentages,
        address _admin,
        bool _update
    ) external onlyOperator {
        require(!settingProject || _update, "Project first time setting");
        require(_dataUint.length == 7, "Not enough");
        require(_dataUint[0] > block.timestamp, "_registerStartTime in pass");
        require(_dataUint[0] < _dataUint[1], "_registerStartTime < _calculationTime");
        require(_dataUint[1] < _dataUint[6], "_calculationTime > _fcfsTime");
        require(_dataUint[2] > 0, "Rate can not zero");
        require(_dataUint[3] > 0, "allocation can not zero");

        if(_update) {
            require(block.timestamp < registerStartTime, "Can not update after start");
        }

        require(address(_dataErc20[0]) != address(0), "!zero address");
        require(address(_dataErc20[1]) != address(0), "!zero address");
        require(address(_admin) != address(0), "!zero address");

        rate = _dataUint[2];
        maxAllocation = _dataUint[3];

        if(!_update) {
            registerStartTime = _dataUint[0];
            calculationTime = _dataUint[1];
            fcfsStartTime = _dataUint[6];
        }

        currency = _dataErc20[0];
        tokenSale = _dataErc20[1];
        tokenSaleDecimal = Decimal(address(tokenSale)).decimals();
        admin = _admin;
        totalSlot = _dataUint[4]; // total slot
        totalWhiteList = _dataUint[5]; // total allow list
        _setCliffInfo(_timestamps, _percentages, _update);
        settingProject = true;
        emit Setting(projectId, _update, registerStartTime, calculationTime, rate, address(currency), address(tokenSale), admin, maxAllocation, _timestamps, _percentages, totalSlot, totalWhiteList, fcfsStartTime);
    }

    function setPoolEnd() external onlyOperator {
        require(block.timestamp > calculationTime && !poolEnd, "Before calculation time");
        poolEnd = true;
        fcfsSupply = (totalSlot - winners.length() + totalWhiteList - whiteListSubmitted.length()) * maxAllocation;
        emit PoolEnd(poolEnd, projectId);
    }

    function addWhiteList(address[] memory _users) external onlyOperator {
        require(_users.length > 0, "_users empty");
        require(_users.length + whiteList.length() <= totalWhiteList, "white list full");
        require( block.timestamp < registerStartTime, "Must be added white list before start");
        for(uint i = 0; i < _users.length; i++) {
            whiteList.add(_users[i]);
        }
        emit AddWhiteList(_users, projectId);
    }

    function submitWinners(address[] memory _users) external onlyOperator {
        require(block.timestamp > calculationTime, "Before calculation time");
        require(!poolEnd, "!poolEnd");
        require(winners.length() + _users.length  <= totalSlot, "Slot over flow");
        for(uint i = 0; i < _users.length; i++ ){
            address _user = _users[i];
            require(users.contains(_user), "User not register");
            uint _allocation = commit[_user];
            _execute(_user, _allocation, 2);
        }
        if(winners.length() == totalSlot) {
            poolEnd = true;
            fcfsSupply = (totalSlot - winners.length() + totalWhiteList - whiteListSubmitted.length()) * maxAllocation;
            emit PoolEnd(poolEnd, projectId);
        }
    }

    function setOperator(address _newOperator) external onlyOperator {
        require(_newOperator != address(0), "!zero");
        operator = _newOperator;
    }

    function removeWhiteList(address _user) external onlyOperator {
        require(block.timestamp < registerStartTime, "Must be added white list before start");
        whiteList.remove(_user);
        emit RemoveWhiteList(_user, projectId);
    }

    // withdraw when transfer token failed
    function emergencyWithdraw(address _token, address _receiver) external onlyOperator {
        require(_receiver != address(0) && _token != address(0), "zero address");
        require(block.timestamp < vestingInfo[0].timeStamp , "Can not withdraw after user vesting");
        IERC20 _erc20 = IERC20(_token);
        _erc20.transfer(_receiver, _erc20.balanceOf(address(this)));
    }

    function buyFCFS(uint _amount) external isFCFS {
        uint _allocation = fcfsAllocation > 0 ? fcfsAllocation : maxAllocation;
        userAllocation[msg.sender] += _amount;
        require(userAllocation[msg.sender] <= _allocation, "amount > allocation");
        currency.safeTransferFrom(msg.sender, address(this), _amount);

        // token bought
        fcfsBought += _amount;
        require(fcfsBought <= fcfsSupply, "Not enough token for sale");
        _execute(msg.sender, _amount, 3);
        emit BuyFCFS(msg.sender, _amount, projectId);
    }


    //=================== internal ======================//
    function _execute(address _user, uint _allocation, uint _pool) internal {
        // set claim info
        ClaimInfo storage _data = claimInfo[_user];
        _data.totalToken += _allocation * 10 ** tokenSaleDecimal / rate;

        // change state
        totalReceive += _allocation;

        bool check;
        // add to winner
        if(_pool == 1) {
            check = whiteListSubmitted.add(_user);
        } else if(_pool == 2){
            check = winners.add(_user);
            commit[_user] = 0;
        } else if(_pool == 3) {
            fcfsSubmitted.add(_user);
            check = true;
        }
        require(check, "User already added");
        emit WinnerMember(_user, projectId, _pool, _allocation);
    }

    function _setCliffInfo(uint[] memory _timestamps, uint[] memory _percentages, bool _deleted) internal onlyOperator {
        require(_timestamps.length == _percentages.length, "length must be equal");
        uint256 sum;
        if(_deleted) {
            delete vestingInfo;
        }
        for (uint256 i = 0; i < _timestamps.length; i ++) {
            require(_percentages[i] <= ONE_HUNDRED_PERCENT, "percentage over 100 %");
            if(i < _timestamps.length - 1) {
                require(_timestamps[i] < _timestamps[i+1], "time distribute is out of order");
            }
            Cliff memory _cliffInfo;
            _cliffInfo.percentage = _percentages[i];
            _cliffInfo.timeStamp = _timestamps[i];
            vestingInfo.push(_cliffInfo);
            sum += _percentages[i];
        }
        require(sum == ONE_HUNDRED_PERCENT, "total percentage is not 100%");
    }

    //=============== Views ==================//
    function getClaimInfo(uint256 _totalToken, uint8 _claimTimes) public view returns (uint amountClaim, bool finish, bool claimable, uint totalClaim, uint8 lastCliff) {
        lastCliff = _claimTimes;
        uint totalPercentage = 0;
        finish = false;
        amountClaim = 0;
        totalClaim = 0;
        for (uint i = _claimTimes; i < vestingInfo.length; i++) {
            if (vestingInfo[i].timeStamp <= block.timestamp) {
                totalPercentage += vestingInfo[i].percentage;
                lastCliff += 1;
            }
        }
        amountClaim = vestingInfo[_claimTimes].percentage * _totalToken / ONE_HUNDRED_PERCENT;
        totalClaim = _totalToken * totalPercentage / ONE_HUNDRED_PERCENT;
        claimable = totalPercentage > 0;
        if (lastCliff == vestingInfo.length) {
            finish = true;
        }
    }

    function getCliffInfo(uint256 _index) public view returns (uint256 _percentage, uint256 _timestamp) {
        if (_index < vestingInfo.length) {
            Cliff memory _cliffInfo = vestingInfo[_index];
            _percentage = _cliffInfo.percentage;
            _timestamp = _cliffInfo.timeStamp;
        }
    }


    function getUsers(uint256 _page, uint256 _limit) external view returns (address[] memory, uint _length) {
        uint _from = _page * _limit;
        _length = users.length();
        uint _to = _min((_page + 1) * _limit, users.length());
        address[] memory _result = new address[](_to - _from);
        for (uint i = 0; _from < _to; i++) {
            _result[i] = users.at(_from);
            ++_from;
        }
        return (_result, _length);
    }


    function getWinners(uint256 _page, uint256 _limit) external view returns (address[] memory, uint _length) {
        uint _from = _page * _limit;
        _length = winners.length();
        uint _to = _min((_page + 1) * _limit, winners.length());
        address[] memory _result = new address[](_to - _from);
        for (uint i = 0; _from < _to; i++) {
            _result[i] = winners.at(_from);
            ++_from;
        }
        return (_result, _length);
    }

    function getWinnersWhitelist(uint256 _page, uint256 _limit) external view returns (address[] memory, uint _length) {
        uint _from = _page * _limit;
        _length = whiteListSubmitted.length();
        uint _to = _min((_page + 1) * _limit, whiteListSubmitted.length());
        address[] memory _result = new address[](_to - _from);
        for (uint i = 0; _from < _to; i++) {
            _result[i] = whiteListSubmitted.at(_from);
            ++_from;
        }
        return (_result, _length);
    }

    function getFCFSUser(uint256 _page, uint256 _limit) external view returns (address[] memory, uint _length) {
        uint _from = _page * _limit;
        _length = fcfsSubmitted.length();
        uint _to = _min((_page + 1) * _limit, fcfsSubmitted.length());
        address[] memory _result = new address[](_to - _from);
        for (uint i = 0; _from < _to; i++) {
            _result[i] = fcfsSubmitted.at(_from);
            ++_from;
        }
        return (_result, _length);
    }

    function checkUserInPool(address _user) external view returns (bool isRegistered, bool isWinner, bool isWhiteList, bool isWhiteListSubmitted) {
        return (users.contains(_user), winners.contains(_user), whiteList.contains(_user), whiteListSubmitted.contains(_user));
    }

    function fcfsStatus(address _user) external view returns(uint _availableAllocation, bool _status, uint _availableFCFS){
        uint _allocation = fcfsAllocation > 0 ? fcfsAllocation : maxAllocation;
        _availableAllocation = _allocation - userAllocation[_user];
        _status = fcfsSubmitted.contains(_user);
        _availableFCFS = fcfsSupply - fcfsBought;
    }

    function getProgress() external view returns (uint _numerator, uint _denominator) {
        _numerator = 0;
        _denominator = 1;
        if (rate > 0) {
            _numerator = ((winners.length() + whiteListSubmitted.length())* maxAllocation + fcfsBought);
            _denominator = (totalSlot + totalWhiteList)* maxAllocation; //total token receive
        }
    }

    function verifySignature(bytes memory _signature, address _sampleAddress, uint _slot, uint _userLevel) external view returns (bool) {
        bytes32 _hash = keccak256(abi.encodePacked(projectId, _sampleAddress, address(this), _slot, _userLevel)).toEthSignedMessageHash();
        return _hash.recover(_signature) == admin;
    }

    function estimateTransfer() external view returns(uint) {
        return totalReceive * 10 ** Decimal(address(tokenSale)).decimals() / rate;
    }

    function totalCliff() external view returns(uint) {
        return vestingInfo.length;
    }

    function isWhiteList(address _user) external view returns(bool) {
        return whiteList.contains(_user);
    }

    function getWhiteList() external view returns(address[] memory) {
        return whiteList.values();
    }

    // ====================== TESTING ======================== //
    function changeTime(uint _registerTime, uint _calculationTime) external onlyOperator {
        require( registerStartTime > block.timestamp &&  _calculationTime > _registerTime, "Time setting not in correct");
        registerStartTime = _registerTime;
        calculationTime = _calculationTime;
        emit ChangeCalculationTime(projectId, calculationTime);
        emit ChangeRegisterTime(projectId, registerStartTime);
    }

    function changeCalculationTime(uint _calculationTime) external onlyOperator {
        require(_calculationTime > registerStartTime, "Time setting not in correct");
        require(_calculationTime < fcfsStartTime, "Time setting not in correct");
        calculationTime = _calculationTime;
        emit ChangeCalculationTime(projectId, calculationTime);
    }

    function updateVestingInfo(uint[] memory timestamps, uint[] memory percentages) external onlyOperator {
        require(block.timestamp < vestingInfo[0].timeStamp, "Invalid time");
        require(timestamps[0] > fcfsStartTime, "Distribute time incorrect");
        _setCliffInfo(timestamps, percentages, true);
        emit ChangeDistribution(projectId, timestamps, percentages);
    }

    function changeRegisterTime(uint _registerTime) external onlyOperator {
        require(registerStartTime > block.timestamp, "registerStartTime in past");
        require(_registerTime > block.timestamp, "_registerTime in past");
        require(_registerTime < calculationTime, "_registerTime over calculation time");
        registerStartTime = _registerTime;
        emit ChangeRegisterTime(projectId, registerStartTime);
    }

    function settingFCFS(uint _value, uint _start) external onlyOperator {
        require(_value > 0, "!zero");
        require(_start > calculationTime, "fcfs start time must be greater than calculation time");
        require(_start < vestingInfo[0].timeStamp, "fcfs over start time");
        fcfsAllocation = _value;
        fcfsStartTime = _start;
        emit SettingFCFS(fcfsStartTime, fcfsAllocation, projectId);
    }

}
