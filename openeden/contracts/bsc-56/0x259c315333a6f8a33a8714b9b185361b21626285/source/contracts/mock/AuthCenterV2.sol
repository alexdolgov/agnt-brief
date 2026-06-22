// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/access/AccessControlEnumerable.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";

// import "hardhat/console.sol";

contract AuthCenterV2 is Ownable, AccessControlEnumerable {
    bytes32 public constant ACCOUNT_FULL_ACCESS = bytes32("ACCOUNT_FULL_ACCESS");
    bytes32 public constant ACCOUNT_FULL_ACCESS_ADMIN = bytes32("ACCOUNT_FULL_ACCESS_ADMIN");

    bytes32 public constant FUNDS_PROVIDER_PULL_ACCESS = bytes32("FUNDS_PROVIDER_PULL_ACCESS");
    bytes32 public constant FUNDS_PROVIDER_REBALANCE_ACCESS = bytes32("FUNDS_PROVIDER_REBALANCE_ACCESS");
    bytes32 public constant FUNDS_PROVIDER_FULL_ACCESS_ADMIN = bytes32("FUNDS_PROVIDER_FULL_ACCESS_ADMIN");

    bytes32 public constant OPERATOR_FULL_ACCESS = bytes32("OPERATOR_FULL_ACCESS");
    bytes32 public constant OPERATOR_FULL_ACCESS_ADMIN = bytes32("OPERATOR_FULL_ACCESS_ADMIN");

    bytes32 public constant ACCOUNT_MGR_FULL_ACCESS = bytes32("ACCOUNT_MGR_FULL_ACCESS");
    bytes32 public constant ACCOUNT_MGR_FULL_ACCESS_ADMIN = bytes32("ACCOUNT_MGR_FULL_ACCESS_ADMIN");

    bool flag;

    bytes32 public constant ACCOUNT_MGR_FULL_ACCESSV2 = bytes32("ACCOUNT_MGR_FULL_ACCESSV2");
    bytes32 public constant ACCOUNT_MGR_FULL_ACCESS_ADMINV2 = bytes32("ACCOUNT_MGR_FULL_ACCESS_ADMINV2");

    function init() external {
        require(!flag, "already initialized!");
        // super.initialize(); // TODO
        _setRoleAdmin(ACCOUNT_FULL_ACCESS, ACCOUNT_FULL_ACCESS_ADMIN);
        _setRoleAdmin(FUNDS_PROVIDER_PULL_ACCESS, FUNDS_PROVIDER_FULL_ACCESS_ADMIN);
        _setRoleAdmin(FUNDS_PROVIDER_REBALANCE_ACCESS, FUNDS_PROVIDER_FULL_ACCESS_ADMIN);
        _setRoleAdmin(OPERATOR_FULL_ACCESS, OPERATOR_FULL_ACCESS_ADMIN);
        _setRoleAdmin(ACCOUNT_MGR_FULL_ACCESS, ACCOUNT_MGR_FULL_ACCESS_ADMIN);

        _grantRole(ACCOUNT_FULL_ACCESS_ADMIN, _msgSender());
        _grantRole(FUNDS_PROVIDER_FULL_ACCESS_ADMIN, _msgSender());
        _grantRole(OPERATOR_FULL_ACCESS_ADMIN, _msgSender());
        _grantRole(ACCOUNT_MGR_FULL_ACCESS_ADMIN, _msgSender());
        flag = true;
    }

    function grantRoleInBulk(bytes32 _role, address[] memory array) external onlyRole(getRoleAdmin(_role)) {
        for (uint256 i = 0; i < array.length; ) {
            _grantRole(_role, array[i]);
            unchecked {
                ++i;
            }
        }
    }

    function ensureAccountAccess(address _caller) external view {
        _checkRole(ACCOUNT_FULL_ACCESS, _caller);
    }

    function ensureFundsProviderPullAccess(address _caller) external view {
        _checkRole(FUNDS_PROVIDER_PULL_ACCESS, _caller);
    }

    function ensureFundsProviderRebalanceAccess(address _caller) external view {
        _checkRole(FUNDS_PROVIDER_REBALANCE_ACCESS, _caller);
    }

    function ensureOperatorAccess(address _caller) external view {
        _checkRole(OPERATOR_FULL_ACCESS, _caller);
    }

    function ensureAccountManagerAccess(address _caller) external view {
        _checkRole(ACCOUNT_MGR_FULL_ACCESS, _caller);
    }

    function v2Test() external pure returns (bytes32) {
        return ACCOUNT_MGR_FULL_ACCESSV2;
    }
}
