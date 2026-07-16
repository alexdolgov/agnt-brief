// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin-4.5.0/contracts/security/Pausable.sol";
import "./lzApp/NonblockingLzApp.sol";
import "./interfaces/IPancakeProfile.sol";
import "./interfaces/IUserInfo.sol";
import "./ICakeV2.sol";

import "hardhat/console.sol";

contract PancakeInfoSender is NonblockingLzApp, Pausable {

    address public immutable iCakeAddress;
    address public immutable pancakeProfileAddress;

    /// @dev the minimum value between last sync timestamp and now
    uint256 public minSyncPeriod;

    /// @dev mapping [user][lastSyncTime]
    mapping(address => uint256) public userLastSyncTimes;

    event OperatorUpdated(address indexed operator, bool enabled);
    event SyncMsgSend(address indexed userAddress, uint256 userId, bool isActive, uint256 userCredit);

    constructor(address _iCakeAddress, address _pancakeProfileAddress, address _endpoint)
        NonblockingLzApp(_endpoint) {
        iCakeAddress = _iCakeAddress;
        pancakeProfileAddress = _pancakeProfileAddress;

        minSyncPeriod = 0;//1 days;
    }

    // disable send or receive response
    function pause(bool en) external onlyOwner {
        if (en) {
            _pause();
        } else {
            _unpause();
        }
    }

    /// @dev
    function sendSyncMsg(
        uint16 _dstChainId
    ) external payable whenNotPaused {
        require(block.timestamp - userLastSyncTimes[msg.sender] > minSyncPeriod, "sync period too short");

        IUserInfo.UserProfilePack memory userProfilePack = _fetchUserProfile(msg.sender);
        IUserInfo.UserCreditPack memory userCreditPack = _fetchUserCredit(msg.sender);

        require(userProfilePack.isActive, "user profile is not active");

        // encode the payload with the number of pings
        bytes memory payload = abi.encode(userProfilePack, userCreditPack);

        bytes32 hash = keccak256(payload);

        // use adapterParams v1 to specify more gas for the destination
        uint16 version = 1;
        uint gasForDestinationLzReceive = 350000;
        bytes memory adapterParams = abi.encodePacked(version, gasForDestinationLzReceive);

        // send LayerZero message
        _lzSend(
            _dstChainId, // destination chainId
            payload, // abi.encode()'ed bytes
            payable(msg.sender), // (msg.sender will be this contract) refund address (LayerZero will refund any extra gas back to caller of send()
            address(0x0), // future param, unused for this example
            adapterParams, // v1 adapterParams, specify custom destination gas qty
            msg.value
        );

        emit SyncMsgSend(userProfilePack.userAddress, userProfilePack.userId, userProfilePack.isActive, userCreditPack.userCredit);
    }

    function _nonblockingLzReceive(
        uint16 _srcChainId,
        bytes memory _srcAddress,
        uint64, /*_nonce*/
        bytes memory _payload
    ) internal override {

    }

    function _fetchUserProfile(address _userAddress) internal view returns (IUserInfo.UserProfilePack memory userProfilePack) {
        uint256 _userId;
        uint256 _numberPoints;
        address _nftAddress;
        uint256 _tokenId;
        bool _isActive;

        (_userId, _numberPoints, , _nftAddress, _tokenId, _isActive) = IPancakeProfile(pancakeProfileAddress).getUserProfile(_userAddress);
        userProfilePack.userAddress = _userAddress;
        userProfilePack.userId = _userId;
        userProfilePack.numberPoints = _numberPoints;
        userProfilePack.nftAddress = _nftAddress;
        userProfilePack.tokenId = _tokenId;
        userProfilePack.isActive = _isActive;
    }

    function _fetchUserCredit(address _userAddress) internal view returns (IUserInfo.UserCreditPack memory userCreditPack) {

        uint256 _userCredit;

        _userCredit = ICakeV2(iCakeAddress).getUserCredit(_userAddress);

        userCreditPack.userCredit = _userCredit;
    }
}