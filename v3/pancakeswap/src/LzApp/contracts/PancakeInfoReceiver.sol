// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "./lzApp/NonblockingLzApp.sol";
import "./interfaces/IUserInfo.sol";
import "./PancakeProfileProxy.sol";
import "./ICakeProxy.sol";

contract PancakeInfoReceiver is NonblockingLzApp {

    address public pancakeProfileProxy;
    address public iCakeProxy;

    event ProxyContractUpdated(address indexed pancakeProfileProxy, address indexed iCakeProxy);
    event SyncMsgReceived(address indexed userAddress, uint256 userId, bool isActive, uint256 userCredit);

    // constructor requires the LayerZero endpoint for this chain
    constructor(address _endpoint) NonblockingLzApp(_endpoint) {}

    /// @dev Update proxy addresses for pancakeProfile and iCake
    /// @param _pancakeProfileProxy the address of pancakeProfileProxy
    /// @param _iCakeProxy the address of iCakeProxy
    function updateProxyContract(address _pancakeProfileProxy, address _iCakeProxy) external onlyOwner {
        pancakeProfileProxy = _pancakeProfileProxy;
        iCakeProxy = _iCakeProxy;
        emit ProxyContractUpdated(_pancakeProfileProxy, _iCakeProxy);
    }

    function _nonblockingLzReceive(
        uint16 _srcChainId,
        bytes memory _srcAddress,
        uint64, /*_nonce*/
        bytes memory _payload
    ) internal override {
        IUserInfo.UserProfilePack memory userProfilePack;
        IUserInfo.UserCreditPack memory userCreditPack;

        (userProfilePack, userCreditPack) = abi.decode(_payload, (IUserInfo.UserProfilePack, IUserInfo.UserCreditPack));

        emit SyncMsgReceived(userProfilePack.userAddress, userProfilePack.userId, userProfilePack.isActive, userCreditPack.userCredit);

        // send to proxy
        PancakeProfileProxy(pancakeProfileProxy).setUserProfile(
            userProfilePack.userAddress,
            userProfilePack.userId,
            userProfilePack.numberPoints,
            userProfilePack.nftAddress,
            userProfilePack.tokenId,
            userProfilePack.isActive
        );

        // send to proxy
        ICakeProxy(iCakeProxy).setUserCredit(userProfilePack.userAddress, userCreditPack.userCredit);
    }
}