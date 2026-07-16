// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Ownable2StepUpgradeable} from "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import {ECDSA} from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract CheckerClaimAndWithdraw is Ownable2StepUpgradeable, PausableUpgradeable, ReentrancyGuardUpgradeable {
    using SafeERC20 for IERC20;

    struct ClaimInfo {
        address wallet;
        uint48 cliffTimestamp;
        bool withdrawFinished;
        uint256 amount;
    }

    mapping(uint256 /* orderId */ => ClaimInfo) claimRecords;

    address public adminAddress;
    address[] private _signerArray;
    mapping(address => bool) private _signerMap;
    mapping(address => bool) private _signerConfirmMap;
    uint256 public signerThreshold;

    address public aethirTokenAdress;

    /* cliffSeconds should greater than minCliffSeconds */
    uint48 private _minCliffSeconds;
    uint48 private _maxCliffSeconds;

    event EventAdminUpdated(address newAdmin);
    event EventSignerUpdated(uint256 threshold, address[] newSigner);
    event EventCliffUpdated(uint48 minCliffSeconds, uint48 maxCliffSeconds);
    event EventAlreadyWithdraw(uint256 orderId);
    event EventWithdraw(uint256[] orderIdArray, uint256 withdrawAmount);
    event EventClaim(uint256 orderId, address wallet, uint48 cliffTimestamp, uint256 amount);
    event EventOrderFrozen(uint256 orderId, uint48 oldCliffTimestamp, uint48 newCliffTimestamp);

    /**
     * @dev Throws if called by any account other than the admin.
     */
    modifier onlyAdmin() {
        require(msg.sender == adminAddress, "only admin");
        _;
    }

    constructor() {
        _disableInitializers();
    }

    function initialize(address aethirToken_) public initializer {
        __Ownable2Step_init();
        __Pausable_init();
        __ReentrancyGuard_init();
        aethirTokenAdress = aethirToken_;
        _maxCliffSeconds = 365 * 86400;
        signerThreshold = 1;
        adminAddress = msg.sender;
    }

    function getClaimInfo(uint256 orderId)
        external
        view
        returns (address wallet, uint48 cliffTimestamp, bool withdrawFinished, uint256 amount)
    {
        ClaimInfo storage claimInfo = claimRecords[orderId];
        wallet = claimInfo.wallet;
        cliffTimestamp = claimInfo.cliffTimestamp;
        withdrawFinished = claimInfo.withdrawFinished;
        amount = claimInfo.amount;
    }

    function claim(
        uint256 orderId,
        uint48 cliffSeconds,
        uint48 expiryTimestamp,
        uint256 amount,
        bytes[] memory signatureArray
    ) external whenNotPaused nonReentrant {
        require(cliffSeconds >= _minCliffSeconds && cliffSeconds <= _maxCliffSeconds, "invalid cliffSeconds");
        require(block.timestamp < expiryTimestamp, "order expired");
        require(amount > 0, "invalid amount");

        require(claimRecords[orderId].amount == 0, "orderId aready exists");

        bytes32 hash1 = keccak256(abi.encode(block.chainid, address(this), msg.sender, orderId, cliffSeconds, expiryTimestamp, amount));

        _checkerSignerData(hash1, signatureArray);

        ClaimInfo storage claimInfo = claimRecords[orderId];
        claimInfo.wallet = msg.sender;
        claimInfo.cliffTimestamp = uint48(block.timestamp + cliffSeconds);
        claimInfo.amount = amount;

        emit EventClaim(orderId, claimInfo.wallet, claimInfo.cliffTimestamp, claimInfo.amount);
    }

    function withdraw(uint256[] memory orderIdArray, uint48 expiryTimestamp, bytes[] memory signatureArray)
        external
        whenNotPaused
        nonReentrant
    {
        require(block.timestamp < expiryTimestamp, "order expired");

        bytes32 hash1 = keccak256(abi.encode(block.chainid, address(this), msg.sender, orderIdArray, expiryTimestamp));

        _checkerSignerData(hash1, signatureArray);

        uint256 totalAmount = 0;
        for (uint256 i = 0; i < orderIdArray.length; i++) {
            uint256 orderId = orderIdArray[i];
            ClaimInfo storage claimInfo = claimRecords[orderId];
            require(claimInfo.wallet == msg.sender, "invalid msg.sender");
            require(claimInfo.cliffTimestamp <= block.timestamp, "can not withdraw now");
            if (claimInfo.withdrawFinished == false) {
                totalAmount += claimInfo.amount;
                claimInfo.withdrawFinished = true;
            } else {
                emit EventAlreadyWithdraw(orderId);
            }
        }

        if (totalAmount > 0) {
            SafeERC20.safeTransfer(IERC20(aethirTokenAdress), msg.sender, totalAmount);
            emit EventWithdraw(orderIdArray, totalAmount);
        }
    }

    function _checkerSignerData(bytes32 hash1, bytes[] memory signature) internal {
        bytes32 hash2 = keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n32", hash1));

        require(signature.length == signerThreshold, "invalid signature count");
        uint256 validSignerCount = 0;
        _clearSignerConfirmData();
        for (uint256 i = 0; i < signature.length; i++) {
            address signer = ECDSA.recover(hash2, signature[i]);
            validSignerCount += _signerConfirm(signer);
        }
        require(validSignerCount == signerThreshold, "invalid signer count");
    }

    function updateCliffTime(uint48 minCliffSeconds_, uint48 maxCliffSeconds_) external onlyOwner {
        require(maxCliffSeconds_ >= minCliffSeconds_, "invalid inputs");
        _minCliffSeconds = minCliffSeconds_;
        _maxCliffSeconds = maxCliffSeconds_;
        emit EventCliffUpdated(_minCliffSeconds, _maxCliffSeconds);
    }

    function getCliffTime() external view returns (uint48 minCliffSeconds, uint48 maxCliffSeconds) {
        minCliffSeconds = _minCliffSeconds;
        maxCliffSeconds = _maxCliffSeconds;
    }

    function updateAdmin(address admin) public onlyOwner {
        adminAddress = admin;
        emit EventAdminUpdated(admin);
    }

    function freezeClaimRecord(uint256 orderId) public onlyAdmin {
        require(!claimRecords[orderId].withdrawFinished, "already withdrawed");
        uint48 newCliffTimestamp = type(uint48).max;
        emit EventOrderFrozen(orderId, claimRecords[orderId].cliffTimestamp, newCliffTimestamp);
        claimRecords[orderId].cliffTimestamp = newCliffTimestamp;
    }

    function pause() public onlyAdmin {
        _pause();
    }

    function unpause() public onlyAdmin {
        _unpause();
    }

    function withdrawERC20(address tokenAddress, address to, uint256 amount) public onlyOwner {
        SafeERC20.safeTransfer(IERC20(tokenAddress), to, amount);
    }

    function getSignerAddress() public view returns (address[] memory) {
        return _signerArray;
    }

    function updateSigner(address[] calldata newSignerArray_, uint256 signerThreshold_) public onlyOwner {
        require(signerThreshold_ > 0, "signerThreshold_ can not be 0");
        signerThreshold = signerThreshold_;
        require(newSignerArray_.length >= signerThreshold, "signer count is less than signerThreshold");
        _clearSignerData();
        _signerArray = newSignerArray_;
        for (uint256 i = 0; i < _signerArray.length; i++) {
            _signerMap[_signerArray[i]] = true;
        }
        emit EventSignerUpdated(signerThreshold, _signerArray);
    }

    function _clearSignerData() internal {
        for (uint256 i = 0; i < _signerArray.length; i++) {
            _signerMap[_signerArray[i]] = false;
        }
        delete _signerArray;
    }

    function _clearSignerConfirmData() internal {
        for (uint256 i = 0; i < _signerArray.length; i++) {
            _signerConfirmMap[_signerArray[i]] = false;
        }
    }

    function _signerConfirm(address signer) internal returns (uint256) {
        if (_signerMap[signer] && !_signerConfirmMap[signer]) {
            _signerConfirmMap[signer] = true;
            return 1;
        }
        return 0;
    }
}
