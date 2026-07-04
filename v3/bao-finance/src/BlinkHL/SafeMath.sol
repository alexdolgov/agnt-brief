pragma solidity ^0.4.23;
library SafeMath {

    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");
        return c;
    }

    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        return sub(a, b, "SafeMath: subtraction overflow");
    }

    function sub(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b <= a, errorMessage);
        uint256 c = a - b;

        return c;
    }
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        if (a == 0) {
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");
        return c;
    }

    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        return div(a, b, "SafeMath: division by zero");
    }

    function div(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b > 0, errorMessage);
        uint256 c = a / b;
        return c;
    }

    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        return mod(a, b, "SafeMath: modulo by zero");
    }

    function mod(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b != 0, errorMessage);
        return a % b;
    }
}

library SafeMath64 {
    function mul(uint64 a, uint64 b) internal pure returns (uint64) {
        if (a == 0) {
            return 0;
        }
        uint64 c = a * b;
        require(c / a == b, "uint64 mul overflow");
        return c;
    }

    function div(uint64 a, uint64 b) internal pure returns (uint64) {
        require(b > 0, "uint64 div divide by 0");
        uint64 c = a / b;
        return c;
    }

    function sub(uint64 a, uint64 b) internal pure returns (uint64) {
        require(b <= a, "uint64 sub overflow");
        return a - b;
    }

    function add(uint64 a, uint64 b) internal pure returns (uint64) {
        uint64 c = a + b;
        require(c >= a, "uint64 add overflow");
        return c;
    }

    function add256(uint64 a, uint256 b) internal pure returns (uint64) {
        uint64 c = uint64(a + b);
        require(c >= a, "uint64 add256 overflow");
        return c;
    }
}

library SafeMath128 {
    function mul(uint128 a, uint128 b) internal pure returns (uint128) {
        if (a == 0) {
            return 0;
        }
        uint128 c = a * b;
        require(c / a == b, "uint128 mul overflow");
        return c;
    }

    function div(uint128 a, uint128 b) internal pure returns (uint128) {
        require(b > 0, "uint128 div divide by 0");
        uint128 c = a / b;
        return c;
    }

    function sub(uint128 a, uint128 b) internal pure returns (uint128) {
        require(b <= a, "uint128 sub overflow");
        return a - b;
    }

    function add(uint128 a, uint128 b) internal pure returns (uint128) {
        uint128 c = a + b;
        require(c >= a, "uint128 add overflow");
        return c;
    }

    function add256(uint128 a, uint256 b) internal pure returns (uint128) {
        uint128 c = uint128(a + b);
        require(c >= a, "uint128 add256 overflow");
        return c;
    }
}
