//SPDX-License-Identifier: UNLICENSED
pragma solidity =0.8.4;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/interfaces/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import "@openzeppelin/contracts/security/Pausable.sol";

import "../libraries/NFTLib.sol";
import "../interfaces/IPandoBox.sol";
import "../interfaces/IDroidBot.sol";
import "../interfaces/IPandoPot.sol";
import "../interfaces/IDataStorage.sol";
import "../interfaces/IOracle.sol";
import "../interfaces/ISwapRouter02.sol";
import "../interfaces/IUserLevel.sol";
import "../interfaces/IAvatar.sol";

contract NFTRouterV2 is Ownable, Pausable {
    using SafeERC20 for IERC20;
    using ECDSA for bytes32;
    using ECDSA for bytes;
    using EnumerableSet for EnumerableSet.UintSet;
    using EnumerableSet for EnumerableSet.AddressSet;

    enum RequestStatus {AVAILABLE, EXECUTED}
    enum RequestType {BUY, CREATE, UPGRADE, AVATAR}
    struct Request {
        uint256 id;
        uint256 createdAt;
        uint256 seed;
        RequestType rType;
        RequestStatus status;
        uint256[] data;
    }

    mapping(uint256 => uint256) private pandoBoxCreated;
    mapping(address => EnumerableSet.UintSet) private userRequests;
    mapping(uint256 => Request) public requests;
    mapping(address => mapping(uint => bool)) public lockNFT;
    EnumerableSet.AddressSet validators;

    uint256 public SAMPLE;
    uint256 constant ONE_HUNDRED_PERCENT = 10000;
    uint256 constant PRECISION = 1e20;
    IDroidBot public droidBot;
    IPandoBox public pandoBox;
    IPandoPot public pandoPot;
    IDataStorage public dataStorage;
    IERC20 public PAN;
    IERC20 public PSR;
    IOracle public PANOracle;
    IOracle public PSROracle;
    ISwapRouter02 public swapRouter;
    IUserLevel public userLevel;
    IAvatar public avatar;

    address[] public PANToPSR;
    uint256 public startTime;
    uint256 public pandoBoxPerDay;
    uint256 public createPandoBoxFee;
    uint256 public upgradeBaseFee;
    uint256 public nRequest = 30000;
    uint256 public PSRRatio = 2000;
    uint256 public PANtoPSRRatio = 0;
    uint256 public slippage = 8000;
    uint256 public blockConfirmations = 3;

    modifier onlyUserLevel() {
        require(msg.sender == address(userLevel), "NFTRouter: only user level");
        _;
    }

    modifier isLock(address _nftContract, uint256 _nftId) {
        require(!lockNFT[_nftContract][_nftId], "NFTRouter: nft id is locked");
        lockNFT[_nftContract][_nftId] = true;
        _;
    }

    modifier onlyEOA() {
        // Try to make flash-loan exploit harder to do by only allowing externally owned addresses.
        require(msg.sender == tx.origin, "NFTRouter: must use EOA");
        _;
    }
    /*----------------------------INITIALIZE----------------------------*/

    constructor (
        address _pandoBox,
        address _droidBot,
        address _PAN,
        address _PSR,
        address _pandoPot,
        address _dataStorage,
        address _PANOracle,
        address _PSROracle,
        address _swapRouter,
        uint256 _startTime
    ) {
        pandoBox = IPandoBox(_pandoBox);
        droidBot = IDroidBot(_droidBot);
        PAN = IERC20(_PAN);
        PSR = IERC20(_PSR);
        pandoPot = IPandoPot(_pandoPot);
        dataStorage = IDataStorage(_dataStorage);
        startTime = _startTime;
        PANOracle = IOracle(_PANOracle);
        PSROracle = IOracle(_PSROracle);
        swapRouter = ISwapRouter02(_swapRouter);
        SAMPLE = dataStorage.getSampleSpace();
        IERC20(PAN).safeApprove(address(swapRouter), type(uint256).max);
    }

    /*----------------------------INTERNAL FUNCTIONS----------------------------*/

    function _getPandoBoxLv(uint256 _rand) internal view returns (uint256) {
        uint256[] memory _creatingProbability = dataStorage.getPandoBoxCreatingProbability();
        uint256 _cur = 0;
        for (uint256 i = 0; i < _creatingProbability.length; i++) {
            _cur += _creatingProbability[i];
            if (_cur >= _rand) {
                return i;
            }
        }
        return 0;
    }

    function _getNewBotLv(uint256 _boxLv, uint256 _rand, uint256 _salt) internal view returns (uint256, uint256) {
        uint256[] memory _creatingProbability = dataStorage.getDroidBotCreatingProbability(_boxLv);
        uint256 _cur = 0;
        for (uint256 i = 0; i < _creatingProbability.length; i++) {
            _cur += _creatingProbability[i];
            if (_cur >= _rand) {
                uint256 _power = dataStorage.getDroidBotPower(i, _salt);
                return (i, _power);
            }
        }
        return (0, 0);
    }

    function _getUpgradeBotLv(uint256 _mainPower, uint256 _materialPower, uint256 _rand, uint256 _mainLevel) internal view returns (uint256, uint256){
        uint256 _seed = uint256(keccak256(abi.encodePacked(_rand, blockhash(block.number - 1))));
        (uint256 _lv, uint256 _power) = dataStorage.getNewPowerLevel(_seed % SAMPLE, _mainPower, _materialPower, _mainLevel);
        return (_lv, _power);
    }

    function _getBonus(uint256 _value) internal view returns (uint256) {
        if (address(userLevel) != address(0)) {
            (uint256 _n, uint256 _d) = userLevel.getBonus(msg.sender, address(this));
            return _value * _n / _d;
        }
        return 0;
    }

    function _computerSeed(uint _salt) internal view returns (uint256) {
        uint256 _seed =
        uint256(
            keccak256(
                abi.encodePacked(
                    (block.timestamp),
                    block.gaslimit,
                    blockhash(block.number - 1),
                    block.coinbase,
                    tx.origin,
                    _salt
                )
            )
        );
        return _seed;
    }

    function _getNumberOfTicket(RequestType _type, uint256[] memory _data) internal view returns (uint256){
        if (_type == RequestType.CREATE) {
            return dataStorage.getNumberOfTicket(_data[0]);
        } else {
            if (_type == RequestType.UPGRADE) {
                return dataStorage.getNumberOfTicket(_data[4]);
            }
        }
        return 0;
    }

    function _createRequest(RequestType _type, uint256[] memory _data, address _user, uint256 _seed) internal {
        nRequest++;
        uint256 _requestId = nRequest;
        requests[_requestId] = Request({
            id : _requestId,
            createdAt : block.number,
            seed : _seed % PRECISION,
            data : _data,
            rType : _type,
            status : RequestStatus.AVAILABLE
        });
        EnumerableSet.UintSet storage _userRequest = userRequests[_user];
        _userRequest.add(_requestId);
        emit RequestCreated(_user, _type, _requestId, block.number, _data);
    }

    function _executeRequest(uint256 _id, bytes32 _blockHash, address _receiver, uint256 _serial) internal {
        Request storage _request = requests[_id];
        require(_request.status == RequestStatus.AVAILABLE, 'NFTRouter: request unavailable');
        require(block.number > _request.createdAt + blockConfirmations, 'NFTRouter: not enough confirmations');

        _request.status = RequestStatus.EXECUTED;
        uint256 _seed = uint256(keccak256(abi.encodePacked(_blockHash, _serial))) / PRECISION * _request.seed;
        uint256 _rand = _seed % SAMPLE;
        uint256 _salt = _seed / SAMPLE % SAMPLE;

        uint256 _r3 = _seed / SAMPLE / SAMPLE % SAMPLE;
        if (_r3 == 0) {
            _r3 = _rand;
        }
        uint256 _r4 = _seed / SAMPLE / SAMPLE / SAMPLE % SAMPLE;
        if (_r4 == 0) {
            _r4 = _salt;
        }

        if (_request.rType == RequestType.BUY) {
            uint256 _lv = _getPandoBoxLv(_rand);
            emit BoxCreated(_receiver, _lv, _request.data[0], pandoBox.create(_receiver, _lv));
        } else {
            if (_request.rType == RequestType.CREATE) {
                (uint256 _lv, uint256 _power) = _getNewBotLv(_request.data[0], _rand, _salt);
                emit BotCreated(_receiver, _request.data[1], droidBot.create(_receiver, _lv, _power));
            } else {
                if (_request.rType == RequestType.UPGRADE) {
                    (uint256 _lv, uint256 _power) = _getUpgradeBotLv(_request.data[0], _request.data[1], _rand, _request.data[5]);
                    droidBot.upgrade(_request.data[2], _lv, _power);
                    lockNFT[address(droidBot)][_request.data[2]] = false;
                    emit BotUpgraded(_receiver, _request.data[2], _request.data[3]);
                } else {
                    if (_request.rType == RequestType.AVATAR) {
                        if (avatar.create(msg.sender, _request.data[0], _rand) == 0) {
                            revert("NFTRouter: duplicate avatar id");
                        }
                        emit RequestExecuted(_id, _receiver);
                        return;
                    }
                }
            }
        }

        uint256 _nTicket = _getNumberOfTicket(_request.rType, _request.data);
        if (block.number - _request.createdAt - blockConfirmations <= 256) {
            if (_request.rType == RequestType.CREATE && address(pandoPot) != address(0)) {
                pandoPot.enter(_receiver, _r3, _nTicket);
            } else {
                if (_request.rType == RequestType.UPGRADE && address(pandoPot) != address(0)) {
                    pandoPot.enter(_receiver, _r4, _nTicket);
                }
            }
        }
        emit RequestExecuted(_id, _receiver);
    }

    function _processRequest(uint256 _id, uint256 _blockNum, bytes32 _blockHash, bytes memory _signature, uint256 _serial) internal {
        // latest
        EnumerableSet.UintSet storage _userRequest = userRequests[msg.sender];
        require(_userRequest.length() > 0, 'NFTRouter: empty request');
        bytes32 _hash;
        if (_id == 0) {
            _id = _userRequest.at(_userRequest.length() - 1);
            require(requests[_id].createdAt + 256 + blockConfirmations > block.number, 'NFTRouter: >256 blocks');
            _hash = blockhash(requests[_id].createdAt + blockConfirmations);
        } else {
            require(_userRequest.contains(_id), 'NFTRouter: !exist request');
            if (requests[_id].createdAt + 256 + blockConfirmations <= block.number) {
                _hash = keccak256(abi.encodePacked(address(this), _blockNum, _blockHash)).toEthSignedMessageHash();
                require(validators.contains(_hash.recover(_signature)), 'NFTRouter: !validator');
                require(requests[_id].createdAt + blockConfirmations == _blockNum, 'NFTRouter: invalid blockNum');
            } else {
                _hash = blockhash(requests[_id].createdAt + blockConfirmations);
            }
        }
        _userRequest.remove(_id);
        require(uint256(_hash) != 0, "NFTRouter: hash is zero");
        _executeRequest(_id, _hash, msg.sender, _serial);
    }

    function _createDroidBot(uint256 _pandoBoxId, uint256 _seed)
    internal
    isLock(address(pandoBox), _pandoBoxId)
    {
        require(pandoBox.ownerOf(_pandoBoxId) == msg.sender, 'NFTRouter : not owner of box');
        pandoBox.burn(_pandoBoxId);
        uint256[] memory _data = new uint[](2);
        _data[0] = pandoBox.info(_pandoBoxId).level;
        _data[1] = _pandoBoxId;
        _createRequest(RequestType.CREATE, _data, msg.sender, _seed);
    }

    function _upgradeDroidBot(uint256 _droidBot0Id, uint256 _droidBot1Id, uint256 _seed)
    internal
    isLock(address(droidBot), _droidBot0Id)
    isLock(address(droidBot), _droidBot1Id)
    returns(uint256 _upgradeFee)
    {
        require(droidBot.ownerOf(_droidBot0Id) == msg.sender && droidBot.ownerOf(_droidBot1Id) == msg.sender, 'NFTRouter : not owner of bot');
        uint256[] memory _data = new uint[](6);
        uint256 _id0 = _droidBot0Id;
        uint256 _id1 = _droidBot1Id;
        if (droidBot.power(_droidBot0Id) < droidBot.power(_droidBot1Id)) {
            _id0 = _droidBot1Id;
            _id1 = _droidBot0Id;
        }
        NFTLib.Info memory _info0 = droidBot.info(_id0);
        NFTLib.Info memory _info1 = droidBot.info(_id1);

        //avoid call stack to deep
        _upgradeFee = upgradeBaseFee * (15 ** _info0.level) / (10 ** _info0.level);
        if (_upgradeFee > 0) {
            _upgradeFee -= _getBonus(_upgradeFee);
        }

        droidBot.burn(_id1);
        _data[0] = _info0.power;
        _data[1] = _info1.power;
        _data[2] = _id0;
        _data[3] = _id1;
        _data[4] = _info1.level;
        _data[5] = _info0.level;
        _createRequest(RequestType.UPGRADE, _data, msg.sender, _seed);
    }

    function _generateSeeds(uint256 _quantity) internal view returns (uint256[] memory){
        uint256[] memory _seeds = new uint256[](_quantity);
        for (uint256 i = 0; i < _quantity; i++) {
            _seeds[i] = _computerSeed(i);
        }
        return _seeds;
    }

    function _generateRands(bytes32 _blockHash, uint256 _quantity) internal view returns (uint256[] memory) {
        uint256[] memory _rands = new uint256[](_quantity);
        uint256 _temp = uint(_blockHash);
        for (uint256 i = 0; i < _quantity; i++) {
            _rands[i] = _computerSeed(_temp >> (i * 10) & 0xFF);
        }
        return _rands;
    }

    /*----------------------------EXTERNAL FUNCTIONS----------------------------*/

    function createPandoBoxBundle(uint256 _option, uint256 _quantity) external whenNotPaused {
        require(block.timestamp >= startTime, 'NFTRouter: not started');
        require(_quantity <= 10 && _quantity > 0, "NFTRouter: quantity invalid");
        uint256 _ndays = (block.timestamp - startTime) / 1 days;

        require(pandoBoxCreated[_ndays] + _quantity <= pandoBoxPerDay, 'NFTRouter: !enough box');
        uint256 _createPandoBoxFee = (createPandoBoxFee - _getBonus(createPandoBoxFee)) * _quantity;

        pandoBoxCreated[_ndays] += _quantity;
        if (_createPandoBoxFee > 0) {
            uint _pan = 0;
            uint _psr = 0;
            if (_option == 0) {// only PAN
                PAN.safeTransferFrom(msg.sender, address(this), _createPandoBoxFee);
                if (PANtoPSRRatio > 0) {
                    uint256 _amountSwap = _createPandoBoxFee *  PANtoPSRRatio / ONE_HUNDRED_PERCENT;
                    uint256[] memory _amounts = swapRouter.getAmountsOut(_amountSwap, PANToPSR);
                    uint256 _minAmount = _amounts[_amounts.length - 1] * slippage / ONE_HUNDRED_PERCENT;
                    swapRouter.swapExactTokensForTokens(_amountSwap, _minAmount, PANToPSR, address(this), block.timestamp + 300);
                    _psr = PSR.balanceOf(address(this));
                    ERC20Burnable(address(PSR)).burn(PSR.balanceOf(address(this)));
                }
                _pan = PAN.balanceOf(address(this));
                ERC20Burnable(address(PAN)).burn(_pan);
            } else {
                require(PSRRatio > 0, 'NFTRouter: PSR_ratio = 0');
                uint256 _price_PAN = PANOracle.consult();
                uint256 _price_PSR = PSROracle.consult();

                uint256 _psr = _createPandoBoxFee * PSRRatio / ONE_HUNDRED_PERCENT * _price_PAN / _price_PSR;
                _pan = _createPandoBoxFee * (ONE_HUNDRED_PERCENT - PSRRatio) / ONE_HUNDRED_PERCENT;
                ERC20Burnable(address(PAN)).burnFrom(msg.sender, _pan);
                ERC20Burnable(address(PSR)).burnFrom(msg.sender, _psr);
            }
            emit CraftBoxFee(_pan, _psr, _option);
        }
        // create request
        uint256[] memory _data = new uint[](1);
        _data[0] = _option;
        uint256[] memory _seeds = _generateSeeds(_quantity);
        for (uint256 i = 0; i < _quantity; i++) {
            _createRequest(RequestType.BUY, _data, msg.sender, _seeds[i]);
        }
    }


    function createDroidBotBundle(uint256[] memory _pandoBoxIds) external whenNotPaused {
        uint256 _length = _pandoBoxIds.length;
        require(_length > 0 && _length <= 10, "NFTRouter: _length > 0");
        uint256[] memory _seeds = _generateSeeds(_length);
        for (uint256 i = 0; i < _length; i++) {
            _createDroidBot(_pandoBoxIds[i], _seeds[i]);
        }
    }

    function upgradeDroidBotBundle(uint256[] memory _droidBot0Ids, uint256[] memory _droidBot1Ids) external whenNotPaused{
        require(_droidBot0Ids.length == _droidBot1Ids.length && _droidBot1Ids.length <= 10 && _droidBot1Ids.length > 0, "NFTRouter: length invalid");
        uint256 _length = _droidBot0Ids.length;
        uint256[] memory _seeds = _generateSeeds(_length);
        uint256 _totalFee = 0;
        for (uint i = 0; i < _length; i++) {
            _totalFee += _upgradeDroidBot(_droidBot0Ids[i], _droidBot1Ids[i], _seeds[i]);
        }
        ERC20Burnable(address(PSR)).burnFrom(msg.sender, _totalFee);
    }

    function createAvatar(uint256 _lv, address _user) external onlyUserLevel onlyEOA  whenNotPaused{
        uint256[] memory _data = new uint[](1);
        _data[0] = _lv;
        _createRequest(RequestType.AVATAR, _data, _user, _computerSeed(_lv));
    }

    function pandoBoxRemain() external view returns (uint256) {
        uint256 _ndays = (block.timestamp - startTime) / 1 days;
        return pandoBoxPerDay - pandoBoxCreated[_ndays];
    }

    function getValidators() external view returns (address[] memory) {
        return validators.values();
    }

    function pendingRequest(address _user) external view returns (uint256[] memory) {
        return userRequests[_user].values();
    }

    function getRequest(uint256 _id) external view returns (Request memory) {
        return requests[_id];
    }


    function processRequestBundle(uint256[] memory _ids, uint256[] memory _blockNums, bytes32[] memory _blockHash, bytes[] memory _signatures) external whenNotPaused {
        require(
            _ids.length == _blockNums.length && _ids.length == _blockHash.length &&
            _ids.length == _signatures.length && _ids.length > 0,
            "NFTRouter: invalid length"
        );
        uint256 _length = _ids.length;
        for (uint256 i = 0; i < _length; i ++) {
            _processRequest(_ids[i], _blockNums[i], _blockHash[i], _signatures[i], i);
        }
    }

    /*----------------------------RESTRICT FUNCTIONS----------------------------*/
    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }

    function setPandoBoxPerDay(uint256 _value) external onlyOwner {
        uint256 oldPandoBoxPerDay = pandoBoxPerDay;
        pandoBoxPerDay = _value;
        emit PandoBoxPerDayChanged(oldPandoBoxPerDay, _value);
    }

    function setCreatePandoBoxFee(uint256 _newFee) external onlyOwner {
        uint256 oldCreatePandoBoxFee = createPandoBoxFee;
        createPandoBoxFee = _newFee;
        emit CreateFeeChanged(oldCreatePandoBoxFee, _newFee);
    }

    function setUpgradeBaseFee(uint256 _newFee) external onlyOwner {
        uint256 oldUpgradeBaseFee = upgradeBaseFee;
        upgradeBaseFee = _newFee;
        emit UpgradeFeeChanged(oldUpgradeBaseFee, _newFee);
    }

    function setPandoPotAddress(address _addr) external onlyOwner {
        address oldPandoPot = address(pandoPot);
        pandoPot = IPandoPot(_addr);
        emit PandoPotChanged(oldPandoPot, _addr);
    }

    function setDataStorageAddress(address _addr) external onlyOwner {
        address oldDataStorage = address(dataStorage);
        dataStorage = IDataStorage(_addr);
        emit DataStorageChanged(oldDataStorage, _addr);
    }

    function setPANOracle(address _addr) external onlyOwner {
        address oldPANOracle = address(PANOracle);
        PANOracle = IOracle(_addr);
        emit PANOracleChanged(oldPANOracle, _addr);
    }

    function setPSROracle(address _addr) external onlyOwner {
        address oldPSROracle = address(PSROracle);
        PSROracle = IOracle(_addr);
        emit PSROracleChanged(oldPSROracle, _addr);
    }

    function setPath(address[] memory _path) external onlyOwner {
        address[] memory oldPath = PANToPSR;
        PANToPSR = _path;
        emit PANtoPSRChanged(oldPath, _path);
    }

    function setPSRRatio(uint256 _ratio) external onlyOwner {
        uint256 oldPSRRatio = PSRRatio;
        PSRRatio = _ratio;
        emit PSRRatioChanged(oldPSRRatio, _ratio);
    }

    function setPANtoPSRRatio(uint256 _ratio) external onlyOwner {
        uint256 oldPANtoPSRRatio = PANtoPSRRatio;
        PANtoPSRRatio = _ratio;
        emit PANtoPSRRatioChanged(oldPANtoPSRRatio, _ratio);
    }

    function setNftAddress(address _droidBot, address _pandoBox) external onlyOwner {
        address oldDroidBot = address(droidBot);
        address oldPandoBox = address(pandoBox);
        droidBot = IDroidBot(_droidBot);
        pandoBox = IPandoBox(_pandoBox);
        emit DroidBotChanged(oldDroidBot, _droidBot);
        emit PandoBoxChanged(oldPandoBox, _pandoBox);
    }

    function setTokenAddress(address _PSR, address _PAN) external onlyOwner {
        address oldPSR = address(PSR);
        address oldPAN = address(PAN);
        PSR = IERC20(_PSR);
        PAN = IERC20(_PAN);
        emit PSRChanged(oldPSR, _PSR);
        emit PANChanged(oldPAN, _PAN);
    }

    function setSwapRouter(address _swapRouter) external onlyOwner {
        address oldSwapRouter = address(swapRouter);
        swapRouter = ISwapRouter02(_swapRouter);
        emit SwapRouterChanged(oldSwapRouter, _swapRouter);
    }

    function setSlippage(uint256 _value) external onlyOwner {
        require(_value <= ONE_HUNDRED_PERCENT, 'NFT Router: > one_hundred_percent');
        uint256 oldSlippage = slippage;
        slippage = _value;
        emit SlippageChanged(oldSlippage, _value);
    }

    function setUserLevelAddress(address _userLevel) external onlyOwner {
        userLevel = IUserLevel(_userLevel);
        emit UserLevelChanged(_userLevel);
    }

    function addValidator(address _validator) public onlyOwner {
        validators.add(_validator);
        emit ValidatorAdded(_validator);
    }

    function removeValidator(address _validator) public onlyOwner {
        validators.remove(_validator);
        emit ValidatorRemoved(_validator);
    }

    function setAvatarAddress(address _avatar) external onlyOwner {
        avatar = IAvatar(_avatar);
        emit AvatarChanged(_avatar);
    }

    /*----------------------------EVENTS----------------------------*/

    event BoxCreated(address indexed receiver, uint256 level, uint256 option, uint256 indexed newBoxId);
    event BotCreated(address indexed receiver, uint256 indexed boxId, uint256 indexed newBotId);
    event BotUpgraded(address indexed user, uint256 indexed bot0Id, uint256 indexed bot1Id);
    event PandoBoxPerDayChanged(uint256 oldPandoBoxPerDay, uint256 newPandoBoxPerDay);
    event CreateFeeChanged(uint256 oldFee, uint256 newFee);
    event UpgradeFeeChanged(uint256 oldFee, uint256 newFee);
    event PandoPotChanged(address indexed oldPandoPot, address indexed newPandoPot);
    event DataStorageChanged(address indexed oldDataStorate, address indexed newDataStorate);
    event PANOracleChanged(address indexed oldPANOracle, address indexed newPANOracle);
    event PSROracleChanged(address indexed oldPSROracle, address indexed newPSROracle);
    event PANtoPSRChanged(address[] oldPath, address[] newPath);
    event PSRRatioChanged(uint256 oldRatio, uint256 newRatio);
    event PandoBoxChanged(address indexed oldPandoBox, address indexed newPandoBox);
    event DroidBotChanged(address indexed oldDroidBot, address indexed newDroidBot);
    event PSRChanged(address indexed oldPSR, address indexed newPSR);
    event PANChanged(address indexed oldPAN, address indexed newPAN);
    event SwapRouterChanged(address indexed oldSwapRouter, address indexed newSwapRouter);
    event SlippageChanged(uint256 oldSlippage, uint256 newSlippage);
    event UserLevelChanged(address indexed userLevel);
    event RequestCreated(address owner, RequestType requestType, uint256 id, uint256 createdAt, uint256[] data);
    event RequestExecuted(uint256 id, address owner);
    event ValidatorAdded(address validator);
    event ValidatorRemoved(address validator);
    event AvatarChanged(address _avatar);
    event PANtoPSRRatioChanged(uint256 oldRatio, uint256 newRatio);
    event CraftBoxFee(uint _pan, uint _psr, uint _option);
}
