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


// File contracts/ProtocolFeeManager/ProtocolFeeManagerStorage.sol

// Original license: SPDX_License_Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;
abstract contract ProtocolFeeManagerStorage is Admin {
    address public implementation;

    mapping(address => bool) public isOperator;
}


// File contracts/ProtocolFeeManager/ProtocolFeeManager.sol

// Original license: SPDX_License_Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;
contract ProtocolFeeManager is ProtocolFeeManagerStorage {
    event NewImplementation(address newImplementation);

    function setImplementation(address newImplementation) external _onlyAdmin_ {
        implementation = newImplementation;
        emit NewImplementation(newImplementation);
    }

    fallback() external {
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

    receive() external payable {}
}
