// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {VeilForwarder} from "./VeilForwarder.sol";

/// @title VeilForwarderFactory
/// @notice Immutable CREATE2 factory for deterministic single-use forwarder deployment.
contract VeilForwarderFactory is Ownable {
    error ZeroAddress();
    error NotRelayer();
    error InvalidDepositKey();
    error AlreadyDeployed();
    error DeployFailed();

    string public constant CONTRACT_VERSION = "1";

    address public relayer;
    address payable public veilEntry;
    address public usdc;

    event RelayerUpdated(address indexed relayer);
    event ForwarderDeployed(address indexed forwarder, bytes32 indexed salt, address indexed owner);

    modifier onlyRelayer() {
        if (msg.sender != relayer) revert NotRelayer();
        _;
    }

    constructor(address payable _veilEntry, address _usdc, address _relayer) Ownable(msg.sender) {
        if (_veilEntry == address(0) || _usdc == address(0) || _relayer == address(0)) revert ZeroAddress();

        relayer = _relayer;
        veilEntry = _veilEntry;
        usdc = _usdc;
    }

    function setRelayer(address _relayer) external onlyOwner {
        if (_relayer == address(0)) revert ZeroAddress();

        relayer = _relayer;
        emit RelayerUpdated(_relayer);
    }

    function computeAddress(bytes32 _salt, bytes memory _childDepositKey, address _owner)
        public
        view
        returns (address)
    {
        _validateParams(_childDepositKey, _owner);
        bytes memory initCode = _getInitCode(_childDepositKey, _owner);
        return _computeCREATE2(initCode, _salt);
    }

    function deploy(bytes32 _salt, bytes memory _childDepositKey, address _owner)
        external
        onlyRelayer
        returns (address forwarder)
    {
        _validateParams(_childDepositKey, _owner);
        bytes memory code = _getInitCode(_childDepositKey, _owner);
        forwarder = _deploy(code, _salt);

        emit ForwarderDeployed(forwarder, _salt, _owner);
    }

    function _validateParams(bytes memory _childDepositKey, address _owner) internal pure {
        if (_owner == address(0)) revert ZeroAddress();
        if (_childDepositKey.length != 64) revert InvalidDepositKey();
    }

    function _getInitCode(bytes memory _childDepositKey, address _owner) internal view returns (bytes memory) {
        return abi.encodePacked(
            type(VeilForwarder).creationCode, abi.encode(address(this), veilEntry, _childDepositKey, _owner, usdc)
        );
    }

    function _computeCREATE2(bytes memory _initCode, bytes32 _salt) internal view returns (address addr) {
        bytes32 initCodeHash = keccak256(_initCode);
        addr = address(uint160(uint256(keccak256(abi.encodePacked(bytes1(0xff), address(this), _salt, initCodeHash)))));
    }

    function _deploy(bytes memory _code, bytes32 _salt) internal returns (address addr) {
        address predicted = _computeCREATE2(_code, _salt);
        if (predicted.code.length > 0) revert AlreadyDeployed();

        assembly {
            addr := create2(0, add(_code, 0x20), mload(_code), _salt)
        }

        if (addr == address(0)) revert DeployFailed();
    }
}
