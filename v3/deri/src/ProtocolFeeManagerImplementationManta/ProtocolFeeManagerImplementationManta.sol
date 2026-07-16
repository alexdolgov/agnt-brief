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


// File contracts/token/IERC20.sol

// Original license: SPDX_License_Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

interface IERC20 {

    event Approval(address indexed owner, address indexed spender, uint256 amount);

    event Transfer(address indexed from, address indexed to, uint256 amount);

    function name() external view returns (string memory);

    function symbol() external view returns (string memory);

    function decimals() external view returns (uint8);

    function totalSupply() external view returns (uint256);

    function balanceOf(address account) external view returns (uint256);

    function allowance(address owner, address spender) external view returns (uint256);

    function approve(address spender, uint256 amount) external returns (bool);

    function transfer(address to, uint256 amount) external returns (bool);

    function transferFrom(address from, address to, uint256 amount) external returns (bool);

}


// File contracts/utils/SafeMath.sol

// Original license: SPDX_License_Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

library SafeMath {

    error UtoIOverflow(uint256);
    error IToUOverflow(int256);
    error AbsOverflow(int256);

    uint256 constant IMAX = 2**255 - 1;
    int256  constant IMIN = -2**255;

    function utoi(uint256 a) internal pure returns (int256) {
        if (a > IMAX) {
            revert UtoIOverflow(a);
        }
        return int256(a);
    }

    function itou(int256 a) internal pure returns (uint256) {
        if (a < 0) {
            revert IToUOverflow(a);
        }
        return uint256(a);
    }

    function abs(int256 a) internal pure returns (int256) {
        if (a == IMIN) {
            revert AbsOverflow(a);
        }
        return a >= 0 ? a : -a;
    }

    function add(uint256 a, int256 b) internal pure returns (uint256) {
        if (b >= 0) {
            return a + uint256(b);
        } else {
            return a - uint256(-b);
        }
    }

    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a >= b ? a : b;
    }

    function max(int256 a, int256 b) internal pure returns (int256) {
        return a >= b ? a : b;
    }

    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a <= b ? a : b;
    }

    function min(int256 a, int256 b) internal pure returns (int256) {
        return a <= b ? a : b;
    }

    // @notice Rescale a uint256 value from a base of 10^decimals1 to 10^decimals2
    function rescale(uint256 value, uint256 decimals1, uint256 decimals2) internal pure returns (uint256) {
        return decimals1 == decimals2 ? value : value * 10**decimals2 / 10**decimals1;
    }

    // @notice Rescale value with rounding down
    function rescaleDown(uint256 value, uint256 decimals1, uint256 decimals2) internal pure returns (uint256) {
        return rescale(value, decimals1, decimals2);
    }

    // @notice Rescale value with rounding up
    function rescaleUp(uint256 value, uint256 decimals1, uint256 decimals2) internal pure returns (uint256) {
        uint256 rescaled = rescale(value, decimals1, decimals2);
        if (rescale(rescaled, decimals2, decimals1) != value) {
            rescaled += 1;
        }
        return rescaled;
    }

    function rescale(int256 value, uint256 decimals1, uint256 decimals2) internal pure returns (int256) {
        return decimals1 == decimals2 ? value : value * int256(10**decimals2) / int256(10**decimals1);
    }

    function rescaleDown(int256 value, uint256 decimals1, uint256 decimals2) internal pure returns (int256) {
        int256 rescaled = rescale(value, decimals1, decimals2);
        if (value < 0 && rescale(rescaled, decimals2, decimals1) != value) {
            rescaled -= 1;
        }
        return rescaled;
    }

    function rescaleUp(int256 value, uint256 decimals1, uint256 decimals2) internal pure returns (int256) {
        int256 rescaled = rescale(value, decimals1, decimals2);
        if (value > 0 && rescale(rescaled, decimals2, decimals1) != value) {
            rescaled += 1;
        }
        return rescaled;
    }

    // @notice Calculate a + b with overflow allowed
    function addUnchecked(int256 a, int256 b) internal pure returns (int256 c) {
        unchecked { c = a + b; }
    }

    // @notice Calculate a - b with overflow allowed
    function minusUnchecked(int256 a, int256 b) internal pure returns (int256 c) {
        unchecked { c = a - b; }
    }

}


// File contracts/ProtocolFeeManager/ProtocolFeeManagerImplementationManta.sol

// Original license: SPDX_License_Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;
contract ProtocolFeeManagerImplementationManta is ProtocolFeeManagerStorage
{

    using SafeMath for uint256;
    using SafeMath for int256;

    address public constant USDC = 0xb73603C5d87fA094B7314C74ACE2e64D165016fb;
    uint256 public constant decimalB0 = 6;
    address public immutable rebate;
    address public immutable arbitrumProtocolFeeManager;

    constructor(
        address rebate_,
        address arbitrumProtocolFeeManager_
    ) {
        rebate = rebate_;
        arbitrumProtocolFeeManager = arbitrumProtocolFeeManager_;
    }


    function setOperator(address operator_, bool isActive) external _onlyAdmin_ {
        isOperator[operator_] = isActive;
    }


    function distributeReferralFees(address recepient, uint256 amount) external {
        require(msg.sender == rebate, "Only rebate");
        require(
            IERC20(USDC).balanceOf(address(this)) >= amount,
            "Insufficient B0"
        );
        IERC20(USDC).transfer(recepient, amount);
    }

    function rebateUnclaimed() public view returns (uint256) {
        return IRebate(rebate).totalUnclaimed().rescale(18, decimalB0);
    }
}


interface IRebate {
    function totalUnclaimed() external view returns (uint256);
}
