// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.23;

import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

// solhint-disable-next-line max-states-count
abstract contract BaseCefiTrove is OwnableUpgradeable, PausableUpgradeable, ReentrancyGuardUpgradeable {
    using EnumerableSet for EnumerableSet.UintSet;

    struct Request {
        uint128 amount;
        uint40 pendingUntil;
    }

    address public operator;
    uint256 public maxOpenRequestSize;
    uint256 public maxCloseRequestSize;
    uint256 public openCooldown;
    uint256 public closeCooldown;
    address public token;
    Request[] public openRequests;
    Request[] public closeRequests;
    mapping(uint256 => string) public channelNames;

    EnumerableSet.UintSet private _channelIds;
    mapping(address => mapping(uint16 => EnumerableSet.UintSet)) private _openRequestIds;
    mapping(address => mapping(uint16 => EnumerableSet.UintSet)) private _closeRequestIds;
    EnumerableSet.UintSet private _openEnableChannelIds;

    uint256 public totalStaked;
    mapping(uint16 => uint256) public totalStakedByChannel;
    mapping(uint16 => EnumerableSet.UintSet) private _channelToChainIds;

    // record open batch operation for per account
    // user address => channelId => chainId => is already open ?
    mapping(address => mapping(uint16 => mapping(uint256 => bool))) public isAlreadyOpen;

    event Staked(
        address indexed sender,
        uint256 indexed chainId,
        uint16 indexed channelId,
        uint256 openRequestId,
        uint256 amount
    );
    event UnStaked(
        address indexed sender,
        uint16 indexed channelId,
        uint256 openRequestId,
        uint256 closeRequestId,
        uint256 amount
    );
    event Claimed(address indexed sender, uint16 indexed channelId, uint256 closeRequestId, uint256 amount);
    event MaxOpenRequestSizeSet(address indexed sender, uint256 maxOpenRequestSize);
    event MaxCloseRequestSizeSet(address indexed sender, uint256 maxCloseequestSize);
    event OpenCooldownSet(address indexed sender, uint256 openCooldown);
    event CloseCooldownSet(address indexed sender, uint256 closeCooldown);
    event ChannelIdAdded(address indexed sender, uint16 indexed channelId);
    event ChannelIdRemoved(address indexed sender, uint16 indexed channelId);
    event ChannelNameSet(address indexed sender, uint16 indexed channelId, string channelName);
    event OpenFunctionEnabled(address indexed sender, uint16 indexed channelId);
    event OpenFunctionDisabled(address indexed sender, uint16 indexed channelId);
    event OperatorSet(address indexed sender, address indexed operator);
    event ChainIdAdded(address indexed sender, uint16 indexed channelId, uint256 indexed chainId);
    event ChainIdRemoved(address indexed sender, uint16 indexed channelId, uint256 indexed chainId);
    event AlreadyOpened(address indexed sender, uint16 indexed channelId, uint256 indexed chainId);

    error CloseTooEarly();
    error ExceedsMaxRequestSize();
    error StillFrozen();
    error PermissionNotAllowed();
    error FailedToExec();
    error InvalidChainId();
    error InvalidChannel();
    error InvalidRequestId();
    error MismatchLength();
    error OpenFunctionForbidden();
    error ZeroAddress();
    error ZeroAmount();
    error ZeroValue();

    function initialize(
        address _initialOwner,
        address _token,
        uint256 _openCooldown,
        uint256 _closeCooldown,
        uint256 _maxOpenRequestSize,
        uint256 _maxCloseRequestSize,
        uint16[] memory _channelIdList,
        string[] memory _channelNameList
    ) public initializer {
        if (_initialOwner == address(0)) revert ZeroAddress();
        if (_token == address(0)) revert ZeroAddress();
        if (_channelIdList.length != _channelNameList.length) revert MismatchLength();

        __Ownable_init(_initialOwner);
        __Pausable_init();
        __ReentrancyGuard_init();

        token = _token;
        _setOpenCooldown(_openCooldown);
        _setCloseCooldown(_closeCooldown);
        _setMaxOpenRequestSize(_maxOpenRequestSize);
        _setMaxCloseRequestSize(_maxCloseRequestSize);
        for (uint256 i = 0; i < _channelIdList.length; i++) {
            uint16 channelId = _channelIdList[i];
            _addChannelId(channelId);
            _enableOpenFunction(channelId);
            _setChannelName(channelId, _channelNameList[i]);
        }
    }

    function open(uint256 chainId, uint16 channelId, uint128 amount) external nonReentrant whenNotPaused {
        uint256 openRequestId = _open(chainId, channelId, msg.sender, amount, openCooldown);

        _handleOpenToken(token, msg.sender, amount);

        emit Staked(msg.sender, chainId, channelId, openRequestId, amount);
    }

    function closeRequest(uint16 channelId, uint256 openRequestId) external nonReentrant whenNotPaused {
        if (!_channelIds.contains(channelId)) revert InvalidChannel();
        if (_closeRequestIds[msg.sender][channelId].length() >= maxCloseRequestSize) revert ExceedsMaxRequestSize();

        uint256 amount = _closeRequest(channelId, openRequestId);

        totalStaked -= amount;
        totalStakedByChannel[channelId] -= amount;
    }

    function batchCloseRequest(uint16 channelId, uint256[] memory openRequestIds) external nonReentrant whenNotPaused {
        if (!_channelIds.contains(channelId)) revert InvalidChannel();
        if (_closeRequestIds[msg.sender][channelId].length() + openRequestIds.length > maxCloseRequestSize)
            revert ExceedsMaxRequestSize();

        uint256 totalAmount;
        for (uint256 i; i < openRequestIds.length; i++) {
            totalAmount += _closeRequest(channelId, openRequestIds[i]);
        }
        totalStaked -= totalAmount;
        totalStakedByChannel[channelId] -= totalAmount;
    }

    function claim(uint16 channelId, uint256 closeRequestId) external nonReentrant whenNotPaused {
        if (!_channelIds.contains(channelId)) revert InvalidChannel();
        _claim(channelId, closeRequestId);
    }

    function batchClaim(uint16 channelId, uint256[] memory closeRequestIds) external nonReentrant whenNotPaused {
        if (!_channelIds.contains(channelId)) revert InvalidChannel();

        for (uint256 i = 0; i < closeRequestIds.length; i++) {
            _claim(channelId, closeRequestIds[i]);
        }
    }

    function setOperator(address _operator) external onlyOwner {
        operator = _operator;

        emit OperatorSet(msg.sender, _operator);
    }

    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }

    function setMaxOpenRequestSize(uint256 _maxOpenRequestSize) external onlyOwner {
        _setMaxOpenRequestSize(_maxOpenRequestSize);
    }

    function setMaxCloseRequestSize(uint256 _maxCloseRequestSize) external onlyOwner {
        _setMaxCloseRequestSize(_maxCloseRequestSize);
    }

    function setOpenCooldown(uint256 _openCooldown) external onlyOwner {
        _setOpenCooldown(_openCooldown);
    }

    function setCloseCooldown(uint256 _closeCooldown) external onlyOwner {
        _setCloseCooldown(_closeCooldown);
    }

    function addChannelId(uint16 channelId) external onlyOwner {
        _addChannelId(channelId);
    }

    function removeChannelId(uint16 channelId) external onlyOwner {
        _removeChannelId(channelId);
    }

    function setChannelName(uint16 channelId, string memory channelName) external onlyOwner {
        _setChannelName(channelId, channelName);
    }

    function enableOpenFunction(uint16 channelId) external onlyOwner {
        _enableOpenFunction(channelId);
    }

    function disableOpenFunction(uint16 channelId) external onlyOwner {
        _disableOpenFunction(channelId);
    }

    function addChainIdToChannel(uint16 channelId, uint256 chainId) external onlyOwner {
        bool success = _channelToChainIds[channelId].add(chainId);
        if (!success) revert FailedToExec();

        emit ChainIdAdded(msg.sender, channelId, chainId);
    }

    function removeChainIdFromChannel(uint16 channelId, uint256 chainId) external onlyOwner {
        bool success = _channelToChainIds[channelId].remove(chainId);
        if (!success) revert FailedToExec();

        emit ChainIdRemoved(msg.sender, channelId, chainId);
    }

    function batchOpenFor(
        uint256 chainId,
        uint16 channelId,
        address[] memory accounts,
        uint128[] memory amounts
    ) external onlyOperator {
        if (accounts.length != amounts.length) revert MismatchLength();
        for (uint256 i = 0; i < accounts.length; i++) {
            if (isAlreadyOpen[accounts[i]][channelId][chainId]) {
                emit AlreadyOpened(accounts[i], channelId, chainId);
            } else {
                isAlreadyOpen[accounts[i]][channelId][chainId] = true;

                uint256 openId = _open(chainId, channelId, accounts[i], amounts[i], 0);
                _handleBatchOpenFor(token, accounts[i], amounts[i]);

                emit Staked(accounts[i], chainId, channelId, openId, amounts[i]);
            }
        }
    }

    function isOpenFunctionEnabled(uint16 channelId) external view returns (bool) {
        return _openEnableChannelIds.contains(channelId);
    }

    function getOpenRequestIds(uint16 channelId, address account) external view returns (uint256[] memory) {
        return _openRequestIds[account][channelId].values();
    }

    function getCloseRequestIds(uint16 channelId, address account) external view returns (uint256[] memory) {
        return _closeRequestIds[account][channelId].values();
    }

    function getOpenRequestInfo(uint16 channelId, address account) public view returns (uint256 free, uint256 locked) {
        for (uint256 i = 0; i < _openRequestIds[account][channelId].length(); i++) {
            uint256 requestId = _openRequestIds[account][channelId].at(i);
            Request memory request = openRequests[requestId];
            if (request.pendingUntil <= block.timestamp) {
                free += request.amount;
            } else {
                locked += request.amount;
            }
        }

        return (free, locked);
    }

    function getCloseRequestInfo(uint16 channelId, address account) public view returns (uint256 free, uint256 locked) {
        for (uint256 i = 0; i < _closeRequestIds[account][channelId].length(); i++) {
            uint256 requestId = _closeRequestIds[account][channelId].at(i);
            Request memory request = closeRequests[requestId];
            if (request.pendingUntil <= block.timestamp) {
                free += request.amount;
            } else {
                locked += request.amount;
            }
        }

        return (free, locked);
    }

    function getAllOpenRequestIds(
        uint16 channelId,
        address account
    ) external view returns (uint256[] memory freeIds, uint256[] memory lockedIds) {
        uint256[] memory openIds = _openRequestIds[account][channelId].values();

        uint256[] memory tempFreeIds = new uint256[](openIds.length);
        uint256[] memory tempLockedIds = new uint256[](openIds.length);
        uint256 freeLength = 0;
        uint256 lockedLength = 0;

        // Iterate over openIds to classify them into free and locked
        for (uint256 i = 0; i < openIds.length; i++) {
            if (block.timestamp < openRequests[openIds[i]].pendingUntil) {
                tempLockedIds[lockedLength] = openIds[i];
                lockedLength++;
            } else {
                tempFreeIds[freeLength] = openIds[i];
                freeLength++;
            }
        }

        // Copy the valid entries into correctly sized arrays
        freeIds = new uint256[](freeLength);
        lockedIds = new uint256[](lockedLength);

        for (uint256 i = 0; i < freeLength; i++) {
            freeIds[i] = tempFreeIds[i];
        }
        for (uint256 i = 0; i < lockedLength; i++) {
            lockedIds[i] = tempLockedIds[i];
        }

        return (freeIds, lockedIds);
    }

    function getAllCloseRequestIds(
        uint16 channelId,
        address account
    ) external view returns (uint256[] memory freeIds, uint256[] memory lockedIds) {
        uint256[] memory closeIds = _closeRequestIds[account][channelId].values();

        uint256[] memory tempFreeIds = new uint256[](closeIds.length);
        uint256[] memory tempLockedIds = new uint256[](closeIds.length);
        uint256 freeLength = 0;
        uint256 lockedLength = 0;

        // Iterate over closeIds to classify them into free and locked
        for (uint256 i = 0; i < closeIds.length; i++) {
            if (block.timestamp < closeRequests[closeIds[i]].pendingUntil) {
                tempLockedIds[lockedLength] = closeIds[i];
                lockedLength++;
            } else {
                tempFreeIds[freeLength] = closeIds[i];
                freeLength++;
            }
        }

        // Copy the valid entries into correctly sized arrays
        freeIds = new uint256[](freeLength);
        lockedIds = new uint256[](lockedLength);

        for (uint256 i = 0; i < freeLength; i++) {
            freeIds[i] = tempFreeIds[i];
        }
        for (uint256 i = 0; i < lockedLength; i++) {
            lockedIds[i] = tempLockedIds[i];
        }

        return (freeIds, lockedIds);
    }

    function getAllOpenRequestInfo(address account) external view returns (uint256 totalFree, uint256 totalLocked) {
        uint256[] memory ids = getChannelIds();
        for (uint256 i = 0; i < ids.length; i++) {
            (uint256 free, uint256 locked) = getOpenRequestInfo(uint16(ids[i]), account);
            totalFree += free;
            totalLocked += locked;
        }

        return (totalFree, totalLocked);
    }

    function getAllCloseRequestInfo(address account) external view returns (uint256 totalFree, uint256 totalLocked) {
        uint256[] memory ids = getChannelIds();
        for (uint256 i = 0; i < ids.length; i++) {
            (uint256 free, uint256 locked) = getCloseRequestInfo(uint16(ids[i]), account);
            totalFree += free;
            totalLocked += locked;
        }

        return (totalFree, totalLocked);
    }

    function getChannelIds() public view returns (uint256[] memory) {
        return _channelIds.values();
    }

    function getAllChannels() external view returns (uint256[] memory, string[] memory) {
        uint256[] memory channelIdList = _channelIds.values();
        string[] memory channelNameList = new string[](channelIdList.length);
        for (uint256 i = 0; i < channelIdList.length; i++) {
            channelNameList[i] = channelNames[channelIdList[i]];
        }

        return (channelIdList, channelNameList);
    }

    function getChainIdsByChannelId(uint16 channelId) public view returns (uint256[] memory) {
        return _channelToChainIds[channelId].values();
    }

    function _setMaxOpenRequestSize(uint256 _maxOpenRequestSize) private {
        if (_maxOpenRequestSize == 0) revert ZeroValue();

        maxOpenRequestSize = _maxOpenRequestSize;

        emit MaxOpenRequestSizeSet(msg.sender, _maxOpenRequestSize);
    }

    function _setMaxCloseRequestSize(uint256 _maxCloseRequestSize) private {
        if (_maxCloseRequestSize == 0) revert ZeroValue();

        maxCloseRequestSize = _maxCloseRequestSize;

        emit MaxCloseRequestSizeSet(msg.sender, _maxCloseRequestSize);
    }

    function _setOpenCooldown(uint256 _openCooldown) private {
        if (_openCooldown == 0) revert ZeroValue();

        openCooldown = _openCooldown;

        emit OpenCooldownSet(msg.sender, _openCooldown);
    }

    function _setCloseCooldown(uint256 _closeCooldown) private {
        if (_closeCooldown == 0) revert ZeroValue();

        closeCooldown = _closeCooldown;

        emit CloseCooldownSet(msg.sender, _closeCooldown);
    }

    function _addChannelId(uint16 channelId) private {
        bool success = _channelIds.add(channelId);
        if (!success) revert FailedToExec();

        emit ChannelIdAdded(msg.sender, channelId);
    }

    function _removeChannelId(uint16 channelId) private {
        bool success = _channelIds.remove(channelId);
        if (!success) revert FailedToExec();

        emit ChannelIdRemoved(msg.sender, channelId);
    }

    function _setChannelName(uint16 channelId, string memory channelName) private {
        channelNames[channelId] = channelName;

        emit ChannelNameSet(msg.sender, channelId, channelName);
    }

    function _enableOpenFunction(uint16 channelId) private {
        if (!_channelIds.contains(channelId)) revert InvalidChannel();

        bool success = _openEnableChannelIds.add(channelId);
        if (!success) revert FailedToExec();

        emit OpenFunctionEnabled(msg.sender, channelId);
    }

    function _disableOpenFunction(uint16 channelId) private {
        if (!_channelIds.contains(channelId)) revert InvalidChannel();

        bool success = _openEnableChannelIds.remove(channelId);
        if (!success) revert FailedToExec();

        emit OpenFunctionDisabled(msg.sender, channelId);
    }

    function _open(
        uint256 chainId,
        uint16 channelId,
        address account,
        uint128 amount,
        uint256 _openCooldown
    ) private returns (uint256 openRequestId) {
        if (amount == 0) revert ZeroAmount();
        if (!_channelIds.contains(channelId)) revert InvalidChannel();
        if (!_channelToChainIds[channelId].contains(chainId)) revert InvalidChainId();
        if (!_openEnableChannelIds.contains(channelId)) revert OpenFunctionForbidden();
        if (_openRequestIds[account][channelId].length() >= maxOpenRequestSize) revert ExceedsMaxRequestSize();

        openRequestId = openRequests.length;
        openRequests.push(Request(amount, uint40(block.timestamp + _openCooldown)));
        bool success = _openRequestIds[account][channelId].add(openRequestId);
        if (!success) revert FailedToExec();

        totalStaked += amount;
        totalStakedByChannel[channelId] += amount;
    }

    function _closeRequest(uint16 channelId, uint256 openRequestId) private returns (uint256) {
        if (!_openRequestIds[msg.sender][channelId].contains(openRequestId)) revert InvalidRequestId();
        // get the open request data
        Request memory request = openRequests[openRequestId];
        if (request.pendingUntil > block.timestamp) revert StillFrozen();
        // remove open request id
        bool _success = _openRequestIds[msg.sender][channelId].remove(openRequestId);
        if (!_success) revert FailedToExec();

        // insert a new close request
        uint256 closeRequestId = closeRequests.length;
        closeRequests.push(Request(request.amount, uint40(block.timestamp + closeCooldown)));

        // record id of the new close request
        bool success = _closeRequestIds[msg.sender][channelId].add(closeRequestId);
        if (!success) revert FailedToExec();

        emit UnStaked(msg.sender, channelId, openRequestId, closeRequestId, request.amount);
        return request.amount;
    }

    function _claim(uint16 channelId, uint256 closeRequestId) private {
        if (!_closeRequestIds[msg.sender][channelId].contains(closeRequestId)) revert InvalidRequestId();

        // get close request
        Request memory request = closeRequests[closeRequestId];
        if (request.pendingUntil > block.timestamp) revert StillFrozen();

        // remove close request id
        bool _success = _closeRequestIds[msg.sender][channelId].remove(closeRequestId);
        if (!_success) revert FailedToExec();

        _handleTokenClaim(token, msg.sender, request.amount);

        emit Claimed(msg.sender, channelId, closeRequestId, request.amount);
    }

    function _handleOpenToken(address token, address account, uint256 amount) internal virtual;

    function _handleTokenClaim(address token, address account, uint256 amount) internal virtual;

    function _handleBatchOpenFor(address token, address account, uint256 amount) internal virtual;

    modifier onlyOperator() {
        if (msg.sender != operator) revert PermissionNotAllowed();
        _;
    }
}
