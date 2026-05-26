// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

import '../smart-account/ISmartAccount.sol';
import './IManager.sol';
import '../library/Consts.sol';
import '../library/Errors.sol';
import './ManagerStorage.sol';

contract ManagerImplementation is ManagerStorage {

    event AddExecutor(address executor);

    event RemoveExecutor(address executor);

    event CreateSmartAccount(address indexed owner, address indexed smartAccount);

    address public immutable smartAccountTemplate;

    address public immutable smartAccountImplementation;

    constructor (address smartAccountTemplate_, address smartAccountImplementation_) {
        smartAccountTemplate = smartAccountTemplate_;
        smartAccountImplementation = smartAccountImplementation_;
    }

    //================================================================================
    // Getter
    //================================================================================

    function getGateway(uint256 gatewayIdx) external view returns (address) {
        return _gateways[gatewayIdx];
    }

    function isExecutor(address executor) external view returns (bool) {
        return _executors[executor];
    }

    function getSmartAccount(address owner) external view returns (address) {
        return _smartAccounts[owner];
    }

    function getOpGasTokens() external view returns (address[] memory) {
        return _opGasTokens;
    }

    function getOpGases() external view returns(uint256[6][] memory) {
        return _opGases;
    }

    function getOpGas(uint256 bIndex, uint256 opIndex) external view returns (uint256) {
        return _opGases[bIndex][opIndex];
    }

    //================================================================================
    // Admin
    //================================================================================

    function setGateways(address[] memory gateways) external _onlyAdmin_ {
        _gateways = gateways;
    }

    function addExecutor(address executor) external _onlyAdmin_ {
        _executors[executor] = true;
        emit AddExecutor(executor);
    }

    function removeExecutor(address executor) external _onlyAdmin_ {
        _executors[executor] = false;
        emit RemoveExecutor(executor);
    }

    function setOpGasTokens(address[] memory tokens) external _onlyAdmin_ {
        _opGasTokens = tokens;
    }

    function setOpGases(uint256[6][] memory opGases) external _onlyAdmin_ {
        _opGases = opGases;
    }

    //================================================================================
    // Interaction
    //================================================================================

    receive() external payable {
        address smartAccount = _smartAccounts[msg.sender];
        if (smartAccount == address(0)) {
            smartAccount = _clone(smartAccountTemplate);
            ISmartAccount(smartAccount).setOwner(msg.sender);
            _smartAccounts[msg.sender] = smartAccount;
            emit CreateSmartAccount(msg.sender, smartAccount);
        }

        (bool success, ) = payable(smartAccount).call{value: msg.value}('');
        require(success, Errors.TRANSFER_ETH_FAIL);
    }

    //================================================================================
    // Internal
    //================================================================================

    function _clone(address source) internal returns (address target) {
        bytes20 sourceBytes = bytes20(source);
        assembly {
            let c := mload(0x40)
            mstore(c, 0x3d602d80600a3d3981f3363d3d373d3d3d363d73000000000000000000000000)
            mstore(add(c, 0x14), sourceBytes)
            mstore(add(c, 0x28), 0x5af43d82803e903d91602b57fd5bf30000000000000000000000000000000000)
            target := create(0, c, 0x37)
        }
    }

}
