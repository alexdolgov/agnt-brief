// Sources flattened with hardhat v2.17.2 https://hardhat.org

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


// File contracts/OrderbookStorage.sol

// Original license: SPDX_License_Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;
abstract contract OrderbookStorage is Admin {
    address public implementation;

    bool internal _mutex;

    modifier _reentryLock_() {
        require(!_mutex, "Router: reentry");
        _mutex = true;
        _;
        _mutex = false;
    }

    address public executor;
    
    struct Order {
        bool isLite;
        address account;
        uint256 pTokenId;
        bytes32 symbolId;
        address bToken;
        int256 bAmount;
        int256[] orderParams; // 0:trigerPrice, 1:isAboveTrigerPrice, 2: isIndexPrice
        int256[] tradeParams; // 0:volume, 1: priceLimit
    }

    // account -> index -> Order
	mapping (address => mapping(uint256 => Order)) public orders;
    // account -> index -> executionFee
    mapping (address => mapping(uint256 => uint256)) public executionFees;
    mapping (address => uint256) public ordersIndex;

}


// File contracts/Orderbook.sol

// Original license: SPDX_License_Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;
contract Orderbook is OrderbookStorage {
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
