// Sources flattened with hardhat v2.19.4 https://hardhat.org

// SPDX-License-Identifier: MIT

// File contracts/utils/Admin.sol

// Original license: SPDX_License_Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

abstract contract Admin {

    error OnlyAdmin();

    event NewAdmin(address newAdmin);

    address public admin;

    modifier _onlyAdmin_() {
        if (msg.sender != admin) {
            revert OnlyAdmin();
        }
        _;
    }

    constructor () {
        admin = msg.sender;
        emit NewAdmin(admin);
    }

    /**
     * @notice Set a new admin for the contract.
     * @dev This function allows the current admin to assign a new admin address without performing any explicit verification.
     *      It's the current admin's responsibility to ensure that the 'newAdmin' address is correct and secure.
     * @param newAdmin The address of the new admin.
     */
    function setAdmin(address newAdmin) external _onlyAdmin_ {
        admin = newAdmin;
        emit NewAdmin(newAdmin);
    }

}


// File contracts/ReferralFee/RebateStorage.sol

// Original license: SPDX_License_Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;
abstract contract RebateStorage is Admin {
    address public implementation;

    bool internal _mutex;

    modifier _reentryLock_() {
        require(!_mutex, "Router: reentry");
        _mutex = true;
        _;
        _mutex = false;
    }

    mapping(bytes32 => address) public brokerAddresses;

    mapping(address => bytes32) public brokerIds;

    mapping(address => BrokerInfo) public brokerInfos;

    mapping(bytes32 => address) public recruiterAddresses;

    mapping(address => bytes32) public recruiterIds;

    mapping(address => RecruiterInfo) public recruiterInfos;

    // trader => broker
    mapping(address => address) public traderReferral;

    // broker => recruiter
    mapping(address => address) public brokerReferral;

    // for recruiter approve
    address public approver;

    address public updater;

    mapping(address => int256) public brokerFees;

    mapping(address => int256) public recruiterFees;

    mapping(address => uint256) public brokerClaimed;

    mapping(address => uint256) public recruiterClaimed;

    uint256 public updatedTimestamp;

    uint256 public totalUnclaimed;

    struct BrokerInfo {
        string code;
        bytes32 id;
        address referral;
    }

    struct RecruiterInfo {
        string code;
        bytes32 id;
    }
}


// File contracts/ReferralFee/Rebate.sol

// Original license: SPDX_License_Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;
contract Rebate is RebateStorage {
    event NewImplementation(address newImplementation);

    function setImplementation(address newImplementation) external _onlyAdmin_ {
        implementation = newImplementation;
        emit NewImplementation(newImplementation);
    }

    receive() external payable {}

    fallback() external payable {
        address imp = implementation;
        assembly {
            calldatacopy(0, 0, calldatasize())
            let result := delegatecall(gas(), imp, 0, calldatasize(), 0, 0)
            returndatacopy(0, 0, returndatasize())
            switch result
            case 0 {
                revert(0, returndatasize())
            }
            default {
                return(0, returndatasize())
            }
        }
    }
}
