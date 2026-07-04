// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "@openzeppelin-4.5.0/contracts/security/Pausable.sol";

import "./lzApp/NonblockingLzApp.sol";
import "./interfaces/ILayerZeroEndpoint.sol";
import "./interfaces/IVECakeStruct.sol";
import "./interfaces/IVECake.sol";
import "./libraries/SafeCast.sol";

contract LzSender is NonblockingLzApp, Pausable {
    address public immutable veCake;

    uint16 public version;
    uint256 public gasForDestinationLzReceive;

    event GasForDestinationLzReceiveUpdated(uint16 version, uint256 gas);

    /// @notice Constructor initializes the contract with the router address.
    /// @param veCake_ The VECake address
    /// @param endpoint_ The address of LzApp contract.
    constructor(address veCake_, address endpoint_) NonblockingLzApp(endpoint_) {
        veCake = veCake_;

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
    function sendSyncMsg(
        uint16 _dstChainId
    ) external payable whenNotPaused {
        (uint256 amount, uint256 end, uint256 totalSupply) = _fetchUserLocked(msg.sender);

        IVECakeStruct.LockedBalance memory locked;
        locked.userAddress = msg.sender;
        locked.amount = amount;
        locked.end = end;
        locked.supply = totalSupply;

        bytes memory payload = abi.encode(locked);

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
    }

    /// @dev Get estimate gas fees from endpoint contract.
    function getEstimateGasFees(address _userAddress, uint16 _dstChainId) external view returns (uint256, uint256) {
        (uint256 amount, uint256 end, uint256 totalSupply) = _fetchUserLocked(_userAddress);

        IVECakeStruct.LockedBalance memory locked;
        locked.userAddress = _userAddress;
        locked.amount = amount;
        locked.end = end;
        locked.supply = totalSupply;

        // encode the payload with the number of pings
        bytes memory payload = abi.encode(locked);

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

    function _fetchUserLocked(address _user) internal view returns (uint256, uint256, uint256) {
        uint256 amount;
        uint256 end;
        uint256 totalSupply;

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

        amount = SafeCast.toUint256(veNative) + SafeCast.toUint256(veMigrate);

        if (veNativeEnd == 0) {
            end = veMigrateEnd;
        } else if (veMigrateEnd == 0) {
            end = veNativeEnd;
        } else {
            end = veNativeEnd < veMigrateEnd ? veNativeEnd : veMigrateEnd;
        }

        totalSupply = IVECake(veCake).supply();

        return (amount, end, totalSupply);
    }
}