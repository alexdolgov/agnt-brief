// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity 0.8.22;

interface ISafe {
    enum Operation {
        Call,
        DelegateCall
    }

    function getThreshold() external view returns (uint256);
    function getOwners() external view returns (address[] memory);
    function isOwner(address owner) external view returns (bool);
    function isModuleEnabled(address module) external view returns (bool);

    // Module management
    function enableModule(address module) external;
    function disableModule(address prevModule, address module) external;

    // Module execution
    function execTransactionFromModule(
        address to,
        uint256 value,
        bytes calldata data,
        Operation operation
    ) external returns (bool success);

    // Safe setup (used for encoding the initializer in SafeDeployer)
    function setup(
        address[] calldata _owners,
        uint256 _threshold,
        address to,
        bytes calldata data,
        address fallbackHandler,
        address paymentToken,
        uint256 payment,
        address payable paymentReceiver
    ) external;
}
