// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

import "@openzeppelin/contracts/utils/Address.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "@openzeppelin/contracts/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC721/utils/ERC721Holder.sol";
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";

import "../interfaces/IUserLevel.sol";
import "../interfaces/ILaunchpadFactory.sol";



contract INOProject is Initializable, ERC721Holder {
    using EnumerableSet for EnumerableSet.UintSet;
    using EnumerableSet for EnumerableSet.AddressSet;
    using SafeERC20 for IERC20;
    using ECDSA for bytes32;
    using ECDSA for bytes;

    // type => nft contract
    mapping(uint256 => address) public typeAddress;

    // type => nft id
    mapping(uint256 => EnumerableSet.UintSet) typeNFTId;

    // type => supply
    mapping(uint256 => uint256) public totalSupply;

    // type => price
    mapping(uint256 => uint256) public prices;

    // type => total sold
    mapping(uint256 => uint256) public totalSold;

    // user => type => count
    mapping(address => mapping(uint256 => uint256)) public balances;

    // allocations for type
    mapping(uint256 => uint256) public allocations;

    // address user => type => nft ids
    mapping(address => mapping(uint => EnumerableSet.UintSet)) nftTypes;

    // total type
    uint256 public totalTypes;

    // operator
    address public operator;

    // router
    uint public projectId;

    //user level
    address public userLevel;

    //currency
    IERC20 public currency;

    //time
    uint256 public startTime;
    uint256 public endTime;
    uint256 public registerTime;

    //total token
    uint256 public totalReceive;
    bool public settingProject = false;

    //admin
    address public admin;
    address public operatorFund;
    address public launchpadFactory;

    EnumerableSet.AddressSet register;

    //level milestone
    uint[] public milestones;

    mapping(uint => uint) public bonusMilestones;

    //=================== MODIFIERS ===================//

    modifier onlyOperator() {
        require(msg.sender == operator,"InitialNFTOffering: Only operator");
        _;
    }

    modifier onlyOperatorFund() {
        require(msg.sender == operatorFund, "!Operator");
        _;
    }

    modifier checkTypeId(uint id) {
        require(id > 0 && id <= totalTypes, "InitialNFTOffering: not support type");
        _;
    }

    modifier onSale() {
        require(startTime < block.timestamp && block.timestamp < endTime, "InitialNFTOffering: not on sale");
        _;
    }

    modifier afterSale() {
        require(block.timestamp > endTime, "InitialNFTOffering: not on after sale");
        _;
    }

    modifier checkSigner(bytes memory _signature, uint _userLevel) {
        bytes32 _hash = keccak256(abi.encodePacked(projectId, msg.sender, address(this), _userLevel)).toEthSignedMessageHash();
        require(_hash.recover(_signature) == admin, "InitialNFTOffering: !verify");
        _;
    }

    modifier allowBuy() {
        require(register.contains(msg.sender), "InitialNFTOffering: user not register");
        require(block.timestamp >= startTime && block.timestamp <= endTime, "InitialNFTOffering: not in time");
        _;
    }

    //=================== EVENTS ===================//
    event ProjectCreated(uint indexed projectId, address indexed contractAddress);
    event BuySuccess(address indexed user, uint256 indexed typeId, uint256 indexed amount);
    event Setting(
        uint indexed projectId,
        bool indexed update,
        uint registerTime,
        uint startTime,
        uint endTime,
        address admin,
        address currency,
        uint totalTypes,
        uint256[] milestones,
        uint256[] bonus
    );
    event RegisterINO(address indexed user, uint indexed projectId, uint indexed userLevel);
    event ChangeOperatorFund(address _new, address _old);

    //=================== EXTERNAL FUNCTIONS ===================//
    function registerINO(bytes memory _signature, uint _userLevel) external checkSigner(_signature, _userLevel) {
        require(block.timestamp >= registerTime && block.timestamp <= startTime, "InitialNFTOffering: can not register now");
        register.add(msg.sender);
        emit RegisterINO(msg.sender, projectId, _userLevel);
    }


    function depositNFT(uint _typeId, uint[] memory _ids) external checkTypeId(_typeId){
        require(settingProject, "InitialNFTOffering: project not setting");
        IERC721 tokenAddress = IERC721(typeAddress[_typeId]);
        for(uint i = 0; i < _ids.length; i++) {
            tokenAddress.safeTransferFrom(msg.sender, address(this), _ids[i]);
            typeNFTId[_typeId].add(_ids[i]);
        }
    }

    function buy(uint _typeId, uint _amount) public checkTypeId(_typeId) allowBuy {
        require( typeNFTId[_typeId].length() >= _amount, "InitialNFTOffering: not enough");
        require( balances[msg.sender][_typeId] + _amount <= getAllocations(_typeId, msg.sender), "InitialNFTOffering: user reach limited");
        require( totalSold[_typeId] + _amount <= totalSupply[_typeId], "InitialNFTOffering: supply reach limited");
        require(_amount > 0, "InitialNFTOffering: _amount zero");
        //receive token
        uint _totalReceive = _amount * prices[_typeId];
        currency.safeTransferFrom(msg.sender, address(this), _totalReceive);

        // update state
        totalReceive += _totalReceive;
        totalSold[_typeId] += _amount;
        balances[msg.sender][_typeId] += _amount;

        // transfer nft
        for(uint i = 0; i < _amount; i++) {
            _safeBuy(_typeId);
        }

        emit BuySuccess(msg.sender, _typeId, _amount);
    }

    //=================== INTERNAL FUNCTIONS ===================//
    function _safeBuy(uint _typeId) internal {
        //get address of nft
        IERC721 _nft = IERC721(typeAddress[_typeId]);

        //get id of nft
        uint length = typeNFTId[_typeId].length();
        uint id = typeNFTId[_typeId].at(length - 1);

        //remove id
        typeNFTId[_typeId].remove(id);

        // store id for user
        nftTypes[msg.sender][_typeId].add(id);

        //transfer
        _nft.safeTransferFrom(address(this), msg.sender, id);
    }

    function _min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a < b ? a : b;
    }

    function getAllocations(uint _typeId, address _user) internal view returns(uint) {
        uint currentAllocation = allocations[_typeId];
        if(userLevel != address(0)) {
            uint level = IUserLevel(userLevel).getUserLevel(_user);
            currentAllocation += getBonusLevel(level);
        }
        return currentAllocation;
    }

    function getBonusLevel(uint level) internal view returns(uint) {
        for(uint i = 0; i < milestones.length; i++) {
            if(level <= milestones[i]) {
                return bonusMilestones[milestones[i]];
            }
        }
        return 0;
    }

    // ====================== RESTRICTED FUNCTIONS ======================== //
    function initialize(uint _projectId, address _operator, address _userLevel, address _launchpad) public initializer returns (bool) {
        require(_operator != address(0), "!zero");
        projectId = _projectId;
        operator = _operator;
        userLevel = _userLevel;
        launchpadFactory = _launchpad;
        emit ProjectCreated(projectId, address(this));
        return true;
    }

    function setUserLevel(address _userLevel) external onlyOperator {
        require(_userLevel != address(0), "InitialNFTOffering: !zero");
        userLevel = _userLevel;
    }

    //setting project
    function setting(
        uint _types,
        uint[] memory _supplies,
        uint[] memory _allocations,
        address[] memory _tokens,
        uint[] memory _prices,
        IERC20 _currency,
        uint256[] memory _times,
        uint256[] memory _milestones,
        uint256[] memory _bonus,
        address _admin,
        bool _update
    ) external onlyOperator returns(bool){
        require(!settingProject || _update, "Project setting first time");
        require(address(_currency) != address (0),"InitialNFTOffering: !zero");
        require(_admin != address (0),"InitialNFTOffering: !zero");
        require(_supplies.length == _types, "InitialNFTOffering: length not equal supply");
        require(_allocations.length == _types, "InitialNFTOffering: length not equal _allocations");
        require(_tokens.length == _types, "InitialNFTOffering: length not equal _tokens");
        require(_times.length == 3 && _times[1] > block.timestamp && _times[1] < _times[2], "InitialNFTOffering: time buying incorrect");
        require( _times[1] > _times[0] && _times[0] >= block.timestamp, "InitialNFTOffering: time register incorrect");
        require(_milestones.length + 1 == _bonus.length, "InitialNFTOffering: length not equal");
        if(_update) {
            require(block.timestamp < startTime, "InitialNFTOffering: Can not setting after starting");
            delete milestones;
        }

        for(uint i = 1; i <= _types; i++) {
            typeAddress[i] = _tokens[i-1];
            totalSupply[i] = _supplies[i-1];
            allocations[i] = _allocations[i-1];
            prices[i] = _prices[i-1];
        }
        currency = _currency;
        totalTypes = _types;
        admin = _admin;

        // store bonus level
        for(uint i = 0; i < _milestones.length; i++) {
            if(i > 0) {
                require(_milestones[i] > _milestones[i-1], "InitialNFTOffering: milestone level incorrect");
            }
            milestones.push(_milestones[i]);
            bonusMilestones[_milestones[i]] = _bonus[i];
        }
        milestones.push(~uint(0));
        bonusMilestones[~uint(0)] = _bonus[_bonus.length - 1];

        if(!_update) {
            registerTime = _times[0];
            startTime = _times[1];
            endTime = _times[2];
            settingProject = true;
        }

        emit Setting(projectId, _update, registerTime, startTime, endTime, admin, address(currency), totalTypes, _milestones, _bonus);
        return true;
    }

    //withdraw admin
    function withdrawAdmin() external onlyOperator afterSale {
        require(operatorFund != address(0), "operator fund is zero");
        currency.safeTransfer(operatorFund, currency.balanceOf(address(this)));
    }

    function setOperatorFund(address _new) external {
        require(msg.sender == ILaunchpadFactory(launchpadFactory).owner(), "Only master owner set it");
        require(_new != address(0), "!zero");
        address _old = operatorFund;
        operatorFund = _new;
        emit ChangeOperatorFund(_new, _old);
    }

    function withdrawNFT(uint _typeId) external onlyOperator afterSale checkTypeId(_typeId) {
        uint length = typeNFTId[_typeId].length();
        require(operatorFund != address(0), "operator fund is zero");
        IERC721 nft = IERC721(typeAddress[_typeId]);
        for(uint i = length; i > 0;) {
            --i;
            uint _id = typeNFTId[_typeId].at(i);
            nft.safeTransferFrom(address(this), operatorFund, _id);
            typeNFTId[_typeId].remove(_id);
        }
    }

    function changeTime(uint _registerTime, uint _startTime, uint _endTime) external onlyOperator {
        registerTime = _registerTime;
        startTime = _startTime;
        endTime = _endTime;
    }

    function emergencyWithdraw(address token) external onlyOperator {
        require(operatorFund != address(0), "operator fund is zero");
        IERC20(token).safeTransfer(operatorFund, IERC20(token).balanceOf(address(this)));
    }

    // ====================== VIEW FUNCTIONS ======================== //

    function getAllocationForUser(uint _typeId, address _user) external view returns(uint _maxAllocation, uint _quantity, uint _availableNFT) {
        _maxAllocation = getAllocations(_typeId, _user);
        _quantity = _min(typeNFTId[_typeId].length(), _min(_maxAllocation - balances[_user][_typeId], totalSupply[_typeId] - totalSold[_typeId]));
        _availableNFT = typeNFTId[_typeId].length();
    }

    function verifySignature(bytes memory _signature, address _sampleAddress, uint _userLevel) external view returns (bool) {
        bytes32 _hash = keccak256(abi.encodePacked(projectId, _sampleAddress, address(this), _userLevel)).toEthSignedMessageHash();
        return _hash.recover(_signature) == admin;
    }

    function getRegister(uint256 _page, uint256 _limit) external view returns (address[] memory, uint _length) {
        uint _from = _page * _limit;
        _length = register.length();
        uint _to = _min((_page + 1) * _limit, register.length());
        address[] memory _result = new address[](_to - _from);
        for (uint i = 0; _from < _to; i++) {
            _result[i] = register.at(_from);
            ++_from;
        }
        return (_result, _length);
    }

    function isRegister(address _user) external view returns(bool) {
        return register.contains(_user);
    }

    function getMilestones() external view returns (uint[] memory) {
        return milestones;
    }

    function getNFTDeposit(uint _id) external view returns (uint[] memory) {
        return typeNFTId[_id].values();
    }

}
