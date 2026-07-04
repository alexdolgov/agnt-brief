// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

contract MultiCall is Initializable, Ownable2StepUpgradeable {
    error LengthMismatch();
    error ZeroAddress();
    error CallFailedNoData();

    event Call(address indexed sender, address indexed target, bytes data, bool success, bytes result);

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers(); // Disable the constructor to prevent initialization outside of the proxy.
    }

    /**
     * @dev Initializes the contract with the owner.
     * @param initialOwner Address of the initial owner.
     */
    function initialize(address initialOwner) public initializer {
        if (initialOwner == address(0)) revert ZeroAddress();
        __Ownable2Step_init(); // Initialize Ownable2Step
        _transferOwnership(initialOwner);
    }

    /**
     * @notice Executes multiple calls to different addresses with different calldatas.
     * @param destinations Array of addresses to call.
     * @param datas Array of calldatas to send to each address.
     */
    function call(address[] calldata destinations, bytes[] calldata datas) external onlyOwner {
        if (destinations.length != datas.length) {
            revert LengthMismatch();
        }

        for (uint256 i = 0; i < destinations.length; i++) {
            (bool _success, bytes memory _resultData) = destinations[i].call(datas[i]);

            if (!_success) {
                if (_resultData.length == 0) {
                    revert CallFailedNoData();
                } else {
                    assembly {
                        revert(add(_resultData, 32), mload(_resultData))
                    }
                }
            }
        }
    }
    function singleDataCall(address[] calldata destinations, bytes calldata data) external onlyOwner {
        for (uint256 i = 0; i < destinations.length; i++) {
            (bool _success, bytes memory _resultData) = destinations[i].call(data);

            if (!_success) {
                if (_resultData.length == 0) {
                    revert CallFailedNoData();
                } else {
                    assembly {
                        revert(add(_resultData, 32), mload(_resultData))
                    }
                }
            }
        }
    }
}
