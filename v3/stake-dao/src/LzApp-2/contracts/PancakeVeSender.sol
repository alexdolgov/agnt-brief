// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "@openzeppelin-4.5.0/contracts/security/Pausable.sol";

import "./lzApp/NonblockingLzApp.sol";
import "./interfaces/ILayerZeroEndpoint.sol";
import "./interfaces/IVECake.sol";
import "./interfaces/IPancakeProfile.sol";
import "./interfaces/IUserInfo.sol";
import "./libraries/SafeCast.sol";

contract PancakeVeSender is NonblockingLzApp, Pausable {
    address public immutable veCake;
    address public immutable pancakeProfileAddress;

    uint16 public version;
    uint256 public gasForDestinationLzReceive;

    event GasForDestinationLzReceiveUpdated(uint16 version, uint256 gas);
    event SyncMsgSend(address indexed userAddress, uint256 userId, bool isActive, address indexed nftAddress, uint256 tokenId, uint256 amount, uint256 end, uint256 totalSupply);

    /// @notice Constructor initializes the contract with the router address.
    /// @param veCake_ The VECake address
    /// @param pancakeProfileAddress_ The pancake profile address
    /// @param endpoint_ The address of LzApp contract.
    constructor(address veCake_, address pancakeProfileAddress_, address endpoint_) NonblockingLzApp(endpoint_) {
        veCake = veCake_;
        pancakeProfileAddress = pancakeProfileAddress_;

        version = 1;
        gasForDestinationLzReceive = 600000;
    }

    // disable send or receive response
    function pause(bool en) external onlyOwner {
        if (en) {
            _pause();
        } else {
            _unpause();
        }
    }

    /// @dev Update version and gas for dest lz receive
    function updateGasForDestinationLzReceive(uint16 _version, uint256 _gasForDestinationLzReceive) external onlyOwner {
        version = _version;
        gasForDestinationLzReceive = _gasForDestinationLzReceive;

        emit GasForDestinationLzReceiveUpdated(_version, _gasForDestinationLzReceive);
    }

    /// @notice Sends data to receiver on the destination chain.
    /// @dev Assumes your contract has sufficient LINK.
    /// @param _dstChainId The id for destination chain.
    /// @param _user The address of user for sync veCake lock information.
    function sendSyncMsg(
        uint16 _dstChainId,
        address _user
    ) external payable whenNotPaused {
        IUserInfo.UserVeCakePack memory userVeCakePack = _fetchVeCakeUserLocked(_user);
        IUserInfo.TotalVeCakePack memory totalVeCakePack = _fetchVeCakeTotalSupply();
        IUserInfo.UserProfilePack memory userProfilePack = _fetchUserProfile(_user);

        // encode the payload with the number of pings
        bytes memory payload = abi.encode(userVeCakePack, totalVeCakePack, userProfilePack);

        // use adapterParams v1 to specify more gas for the destination
        bytes memory adapterParams = abi.encodePacked(version, gasForDestinationLzReceive);

        require(userVeCakePack.amount > 0, "user locked amount is invalid");

        // send LayerZero message
        _lzSend(
            _dstChainId, // destination chainId
            payload, // abi.encode()'ed bytes
            payable(msg.sender), // (msg.sender will be this contract) refund address (LayerZero will refund any extra gas back to caller of send()
            address(0x0), // future param, unused for this example
            adapterParams, // v1 adapterParams, specify custom destination gas qty
            msg.value
        );

        emit SyncMsgSend(
            userProfilePack.userAddress,
            userProfilePack.userId,
            userProfilePack.isActive,
            userProfilePack.nftAddress,
            userProfilePack.tokenId,
            userVeCakePack.amount,
            userVeCakePack.end,
            totalVeCakePack.supply
        );
    }

    /// @notice Sends data to receiver on the destination chain.
    /// @dev Assumes your contract has sufficient LINK.
    /// @param _dstChainId The id for destination chain.
    function sendSyncTotalSupply(
        uint16 _dstChainId
    ) external payable whenNotPaused {
        IUserInfo.UserVeCakePack memory userVeCakePack = _fetchVeCakeUserLocked(address(0));
        IUserInfo.TotalVeCakePack memory totalVeCakePack = _fetchVeCakeTotalSupply();
        IUserInfo.UserProfilePack memory userProfilePack = _fetchUserProfile(address(0));

        // encode the payload with the number of pings
        bytes memory payload = abi.encode(userVeCakePack, totalVeCakePack, userProfilePack);

        // use adapterParams v1 to specify more gas for the destination
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

        emit SyncMsgSend(
            userProfilePack.userAddress,
            userProfilePack.userId,
            userProfilePack.isActive,
            userProfilePack.nftAddress,
            userProfilePack.tokenId,
            userVeCakePack.amount,
            userVeCakePack.end,
            totalVeCakePack.supply
        );
    }

    /// @dev Get estimate gas fees from endpoint contract.
    function getEstimateGasFees(uint16 _dstChainId, address _user) external view returns (uint256, uint256) {
        IUserInfo.UserVeCakePack memory userVeCakePack = _fetchVeCakeUserLocked(_user);
        IUserInfo.TotalVeCakePack memory totalVeCakePack = _fetchVeCakeTotalSupply();
        IUserInfo.UserProfilePack memory userProfilePack = _fetchUserProfile(_user);

        // encode the payload with the number of pings
        bytes memory payload = abi.encode(userVeCakePack, totalVeCakePack, userProfilePack);

        // use adapterParams v1 to specify more gas for the destination
        bytes memory adapterParams = abi.encodePacked(version, gasForDestinationLzReceive);

        (uint nativeFee, uint zroFee) = ILayerZeroEndpoint(lzEndpoint).estimateFees(
            _dstChainId,
            address(this),
            payload,
            false,
            adapterParams
        );

        return (nativeFee, zroFee);
    }

    function _nonblockingLzReceive(
        uint16 _srcChainId,
        bytes memory _srcAddress,
        uint64, /*_nonce*/
        bytes memory _payload
    ) internal override {

    }

    function _fetchVeCakeUserLocked(address _user) internal view returns (IUserInfo.UserVeCakePack memory userVeCakePack) {
        uint256 _amount;
        uint256 _end;

        if (_user != address(0)) {
            int128 veNative;
            uint256 veNativeEnd;
            // get native
            (veNative, veNativeEnd) = IVECake(veCake).locks(_user);

            // get proxy/migrated
            int128 veMigrate;
            uint256 veMigrateEnd;
            ( , ,address cakePoolProxy, , , , , )  = IVECake(veCake).getUserInfo(_user);
            if (cakePoolProxy != address(0)) {
                (veMigrate, veMigrateEnd)  = IVECake(veCake).locks(cakePoolProxy);
            }

            _amount = SafeCast.toUint256(veNative) + SafeCast.toUint256(veMigrate);

            if (veNativeEnd == 0) {
                _end = veMigrateEnd;
            } else if (veMigrateEnd == 0) {
                _end = veNativeEnd;
            } else {
                _end = veNativeEnd < veMigrateEnd ? veNativeEnd : veMigrateEnd;
            }
        }

        userVeCakePack.amount = _amount;
        userVeCakePack.end = _end;
    }

    function _fetchVeCakeTotalSupply() internal view returns (IUserInfo.TotalVeCakePack memory totalVeCakePack) {
        totalVeCakePack.supply = IVECake(veCake).supply();
    }

    function _fetchUserProfile(address _user) internal view returns (IUserInfo.UserProfilePack memory userProfilePack) {
        uint256 _userId;
        uint256 _numberPoints;
        address _nftAddress;
        uint256 _tokenId;
        bool _isActive;

        if (_user != address(0)) {
            (_userId, _numberPoints, , _nftAddress, _tokenId, _isActive) = IPancakeProfile(pancakeProfileAddress).getUserProfile(_user);
        }

        userProfilePack.userAddress = _user;
        userProfilePack.userId = _userId;
        userProfilePack.numberPoints = _numberPoints;
        userProfilePack.nftAddress = _nftAddress;
        userProfilePack.tokenId = _tokenId;
        userProfilePack.isActive = _isActive;
    }
}