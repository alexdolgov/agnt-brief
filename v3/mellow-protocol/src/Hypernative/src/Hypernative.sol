// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;

import "@openzeppelin/contracts/access/extensions/AccessControlEnumerable.sol";
import "./interfaces/IVault.sol";
import "./interfaces/IDepositWrapper.sol";

contract Hypernative is AccessControlEnumerable {
    bytes32 public constant ADMIN_ROLE = keccak256("admin");
    IVault[] public vaults;
    IDepositWrapper[] public depositWrappers;
    uint256 public utilizationThresholdD9;
    uint256 public maxAllowedRequestTime;
    uint256 public depositAmount;

    constructor(
        address admin,
        IVault[] memory _vaults,
        IDepositWrapper[] memory _depositWrappers,
        uint256 _threshold,
        uint256 _time,
        uint256 _amount
    ) {
        _grantRole(ADMIN_ROLE, admin);
        _grantRole(ADMIN_ROLE, address(this));
        _setRoleAdmin(ADMIN_ROLE, ADMIN_ROLE);
        vaults = _vaults;
        depositWrappers = _depositWrappers;
        utilizationThresholdD9 = _threshold;
        maxAllowedRequestTime = _time;
        depositAmount = _amount;
    }

    modifier onlyAdmin() {
        require(
            hasRole(ADMIN_ROLE, msg.sender),
            "Hypernative: must have admin role to perform this action"
        );
        _;
    }

    function setUtilizationThresholdD9(uint256 threshold) public onlyAdmin {
        utilizationThresholdD9 = threshold;
    }

    function setMaxAllowedRequestTime(uint256 time) public onlyAdmin {
        maxAllowedRequestTime = time;
    }

    function setVaults(IVault[] memory _vaults) public onlyAdmin {
        vaults = _vaults;
    }

    function addVault(IVault vault) public onlyAdmin {
        vaults.push(vault);
    }

    function setDepositAmount(uint256 amount) public onlyAdmin {
        depositAmount = amount;
    }

    function makeDeposit(IDepositWrapper wrapper) public onlyAdmin {
        wrapper.deposit{value: depositAmount}(
            address(wrapper),
            address(0),
            depositAmount,
            0,
            type(uint256).max
        );
    }

    function getUtilizationD9(IVault vault) public view returns (uint256) {
        uint256 totalSupply = vault.totalSupply();
        IVaultConfigurator configurator = IVaultConfigurator(
            vault.configurator()
        );
        uint256 maxTotalSupply = configurator.maximalTotalSupply();
        return (totalSupply * 1e9) / maxTotalSupply;
    }

    function getMaxWithdrawalRequestTime(
        IVault vault
    ) public view returns (uint256) {
        address[] memory withdrawers = vault.pendingWithdrawers();
        uint256 maxTime = type(uint256).max;
        for (uint256 i = 0; i < withdrawers.length; i++) {
            address withdrawer = withdrawers[i];
            IVault.WithdrawalRequest memory request = vault.withdrawalRequest(
                withdrawer
            );
            if (request.timestamp < maxTime) {
                maxTime = request.timestamp;
            }
        }
        return block.timestamp - maxTime;
    }

    function makeDeposits() public onlyAdmin {
        for (uint256 i = 0; i < depositWrappers.length; i++) {
            try
                Hypernative(this).makeDeposit(depositWrappers[i])
            {} catch Error(string memory) {}
        }
    }

    function getViolatingUtilizationVault()
        public
        view
        returns (address violatingVault)
    {
        for (uint256 i = 0; i < vaults.length; i++) {
            IVault vault = IVault(vaults[i]);
            if (getUtilizationD9(vault) > utilizationThresholdD9) {
                return address(vault);
            }
        }
        return address(0);
    }

    function getViolatingWithdrawalVault()
        public
        view
        returns (address violatingVault)
    {
        for (uint256 i = 0; i < vaults.length; i++) {
            IVault vault = IVault(vaults[i]);
            if (getMaxWithdrawalRequestTime(vault) > maxAllowedRequestTime) {
                return address(vault);
            }
        }
        return address(0);
    }
}
