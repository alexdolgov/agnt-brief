// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.23;

import { IPMsgSendEndpoint } from "../interfaces/ICrossChainMsg/IPMsgSendEndpoint.sol";
import { ILayerZeroEndpoint } from "../interfaces/ICrossChainMsg/ILayerZeroEndpoint.sol";

import { LayerZeroHelper } from "./libraries/LayerZeroHelper.sol";
import { Errors } from "../libraries/Errors.sol";

import { OwnableUpgradeable, Initializable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import { EnumerableMap } from "@openzeppelin/contracts/utils/structs/EnumerableMap.sol";

/**
 * @dev Initially, currently we will use layer zero's default send and receive version (which is most updated)
 * So we can leave the configuration unset.
 */

///@custom:oz-upgrades-unsafe-allow state-variable-immutable
contract MsgSendEndpointUpg is IPMsgSendEndpoint, Initializable, OwnableUpgradeable {
    using EnumerableMap for EnumerableMap.UintToAddressMap;

    address payable public refundAddress;
    ILayerZeroEndpoint public lzEndpoint;

    EnumerableMap.UintToAddressMap internal receiveEndpoints;
    mapping(uint256 => uint16) public chainIdToLzChainId;
    mapping(address => bool) public isWhitelisted;

    uint256[50] private __gap;

    event ReceiveEndpointAdded(uint256 chainId, address addr);
    event whitelistUpdated(address addr, bool status);
    event SendVersionUpdated(uint16 newVersion);

    modifier onlyWhitelisted() {
        if (!isWhitelisted[msg.sender]) revert Errors.OnlyWhitelisted();
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _refundAddress, ILayerZeroEndpoint _lzEndpoint) external initializer {
        if (_refundAddress == address(0)) revert Errors.ZeroAddress();
        if (address(_lzEndpoint) == address(0)) revert Errors.ZeroAddress();
        refundAddress = payable(_refundAddress);
        lzEndpoint = _lzEndpoint;

        chainIdToLzChainId[1] = 101;
        chainIdToLzChainId[42161] = 110;
        chainIdToLzChainId[34443] = 260;
        chainIdToLzChainId[8453] = 184;
        chainIdToLzChainId[238] = 243;
        chainIdToLzChainId[5000] = 181;
        chainIdToLzChainId[10] = 111;

        __Ownable_init(msg.sender);
    }

    function setLayerZeroChainId(uint256 chainId, uint16 lzChainId) external onlyOwner {
        chainIdToLzChainId[chainId] = lzChainId;
    }

    function setLzEndpoint(ILayerZeroEndpoint _lzEndpoint) external onlyOwner {
        lzEndpoint = _lzEndpoint;
    }

    function calcFee(
        address dstAddress,
        uint256 dstChainId,
        bytes memory payload,
        uint256 estimatedGasAmount
    ) external view returns (uint256 fee) {
        (fee, ) = lzEndpoint.estimateFees(
            chainIdToLzChainId[dstChainId],
            receiveEndpoints.get(dstChainId),
            abi.encode(dstAddress, payload),
            false,
            _getAdapterParams(estimatedGasAmount)
        );
    }

    function sendMessage(
        address dstAddress,
        uint256 dstChainId,
        bytes calldata payload,
        uint256 estimatedGasAmount
    ) external payable onlyWhitelisted {
        if (chainIdToLzChainId[dstChainId] == 0) revert Errors.LzChainIdNotSet(dstChainId);
        bytes memory path = abi.encodePacked(receiveEndpoints.get(dstChainId), address(this));
        lzEndpoint.send{ value: msg.value }(
            chainIdToLzChainId[dstChainId],
            path,
            abi.encode(dstAddress, payload),
            refundAddress,
            address(0),
            _getAdapterParams(estimatedGasAmount)
        );
    }

    function addReceiveEndpoints(address endpointAddr, uint256 endpointChainId) external payable onlyOwner {
        receiveEndpoints.set(endpointChainId, endpointAddr);
        emit ReceiveEndpointAdded(endpointChainId, endpointAddr);
    }

    function setWhitelisted(address addr, bool status) external onlyOwner {
        isWhitelisted[addr] = status;
        emit whitelistUpdated(addr, status);
    }

    function setLzSendVersion(uint16 _newVersion) external onlyOwner {
        ILayerZeroEndpoint(lzEndpoint).setSendVersion(_newVersion);
        emit SendVersionUpdated(_newVersion);
    }

    function getAllReceiveEndpoints() external view returns (uint256[] memory chainIds, address[] memory addrs) {
        uint256 length = receiveEndpoints.length();
        chainIds = new uint256[](length);
        addrs = new address[](length);

        for (uint256 i = 0; i < length; ++i) {
            (chainIds[i], addrs[i]) = receiveEndpoints.at(i);
        }
    }

    function _getAdapterParams(uint256 estimatedGasAmount) internal pure returns (bytes memory adapterParams) {
        // this is more like "type" rather than version
        // It is the type of adapter params you want to pass to relayer
        adapterParams = abi.encodePacked(uint16(1), estimatedGasAmount);
    }
}
