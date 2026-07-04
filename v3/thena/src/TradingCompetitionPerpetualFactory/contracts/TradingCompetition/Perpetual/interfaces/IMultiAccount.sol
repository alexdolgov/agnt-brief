// SPDX-License-Identifier: SYMM-Core-Business-Source-License-1.1
// This contract is licensed under the SYMM Core Business Source License 1.1
// Copyright (c) 2023 Symmetry Labs AG
// For more information, see https://docs.symm.io/legal-disclaimer/license
pragma solidity >=0.8.18;

interface IMultiAccount {

    /*struct SchnorrSign {
        uint256 signature;
        address owner;
        address nonce;
    }
    struct SingleUpnlSig {
        bytes reqId;
        uint256 timestamp;
        int256 upnl;
        bytes gatewaySignature;
        SchnorrSign sigs;
    }*/

    struct Account {
        address accountAddress;
        string name;
    }

    event SetAccountImplementation(bytes oldAddress, bytes newAddress);
    event SetSymmioAddress(address oldAddress, address newAddress);
    event DeployContract(address sender, address contractAddress);
    event AddAccount(address user, address account, string name);
    event EditAccountName(address user, address account, string newName);
    event DepositForAccount(address user, address account, uint256 amount);
    event AllocateForAccount(address user, address account, uint256 amount);
    event WithdrawFromAccount(address user, address account, uint256 amount);
    event Call(
        address user,
        address account,
        bytes _callData,
        bool _success,
        bytes _resultData
    );
    event DelegateAccess(address account, address target, bytes4 selector, bool state);
    event DeallocateFromAccount(address user, address account, uint256 amount);

    
    error NotAccountOwner();
    error CallFailed();
    error CallDataLen();
    error NotAuthorized();
    error InvalidTarget();
    error Create2Failed();
}