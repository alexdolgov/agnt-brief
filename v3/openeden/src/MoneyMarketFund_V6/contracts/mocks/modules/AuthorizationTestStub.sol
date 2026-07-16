// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

import {IAuthorization} from "../../FT/interfaces/IAuthorization.sol";

contract AuthorizationTestStub is IAuthorization {
    bytes32 public constant MODULE_ID = keccak256("MODULE_AUTHORIZATION");

    address fundAdminAccount;
    address authorizedAccount;
    bool isAuthorized;

    constructor(address admin) {
        fundAdminAccount = admin;
    }

    function authorizeAccount(address account) external override {
        authorizedAccount = account;
    }

    function deauthorizeAccount(address account) external override {
        require(authorizedAccount == account, "MOCK_ERROR_INVALID_ACCOUNT");
        authorizedAccount = address(0);
    }

    function isAccountAuthorized(
        address account
    ) external view override returns (bool) {
        return account == authorizedAccount;
    }

    function isAdminAccount(
        address account
    ) external view override returns (bool) {
        return account == fundAdminAccount;
    }

    function getAuthorizedAccountsCount()
        external
        view
        override
        returns (uint256)
    {
        return authorizedAccount != address(0) ? 1 : 0;
    }

    function getAuthorizedAccountAt(
        uint256
    ) external view override returns (address) {
        return authorizedAccount;
    }
}
