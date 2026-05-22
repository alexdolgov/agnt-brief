// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IERC20 {
    function symbol() external view returns (string memory);
    function decimals() external view returns (uint8);
    function transfer(address, uint256) external;
    function transferFrom(address, address, uint256) external;
}

contract Option {
    address public immutable payout;
    address public immutable quote;
    uint256 public immutable eligible;
    uint256 public immutable expiry;
    address public immutable receiver;
    uint256 public immutable strike;
    bool public immutable call;
    string public name;
    string public symbol;
    uint8 public immutable decimals;
    uint256 public totalSupply;
    mapping(address => uint256) public balanceOf;
    mapping(address => mapping(address => uint256)) public allowance;
    
    event Approval(address indexed from, address indexed to, uint256 amount);
    event Transfer(address indexed from, address indexed to, uint256 amount);
    
    error InsufficientBalance();
    error InsufficientAllowance();
    error Expired();
    error NotExpired();
    error NotEligible();
    error Unauthorized();
    
    constructor(address _payout, address _quote, uint256 _eligible, uint256 _expiry, address _receiver, uint256 _strike, bool _call) {
        payout = _payout;
        quote = _quote;
        eligible = _eligible;
        expiry = _expiry;
        receiver = _receiver;
        strike = _strike;
        call = _call;
        decimals = IERC20(_payout).decimals();
        name = string(abi.encodePacked(
            call ? "CALL " : "PUT ",
            IERC20(_payout).symbol(), " ",
            IERC20(_quote).symbol(), " ",
            toStringDecimals(strike, decimals)
        ));
        symbol = name;
    }

    function create(uint256 amount) external {
        if (block.timestamp > expiry) revert Expired();
        if (call) {
            IERC20(payout).transferFrom(msg.sender, address(this), amount);
        } else {
            uint256 quoteAmount = amount * strike / (10 ** decimals);
            IERC20(quote).transferFrom(msg.sender, address(this), quoteAmount);
        }
        _mint(msg.sender, amount);
    }

    function exercise(uint256 amount) external {
        if (block.timestamp < eligible) revert NotEligible();
        if (block.timestamp >= expiry) revert Expired();
        uint256 quoteAmount = amount * strike / (10 ** decimals);
        if (msg.sender != receiver) {
            if (call) {
                IERC20(quote).transferFrom(msg.sender, receiver, quoteAmount);
            } else {
                IERC20(payout).transferFrom(msg.sender, receiver, amount);
            }
        }
        _burn(msg.sender, amount);
        if (call) {
            IERC20(payout).transfer(msg.sender, amount);
        } else {
            IERC20(quote).transfer(msg.sender, quoteAmount);
        }
    }

    function reclaim(uint256 amount) external {
        if (block.timestamp < expiry) revert NotExpired();
        if (msg.sender != receiver) revert Unauthorized();
        if (call) {
            IERC20(payout).transfer(receiver, amount);
        } else {
            uint256 quoteAmount = amount * strike / (10 ** decimals);
            IERC20(quote).transfer(receiver, quoteAmount);
        }
    }
    
    function transfer(address to, uint256 amount) external returns (bool) {
        return transferFrom(msg.sender, to, amount);
    }

    function transferFrom(address src, address dst, uint256 amt) public returns (bool) {
        uint256 bal = balanceOf[src];
        uint256 all = allowance[src][msg.sender];
        if (bal < amt) revert InsufficientBalance();
        if (src != msg.sender && all != type(uint256).max) {
            if (all < amt) revert InsufficientAllowance();
            allowance[src][msg.sender] = all - amt;
        }
        balanceOf[src] = bal - amt;
        balanceOf[dst] = balanceOf[dst] + amt;
        emit Transfer(src, dst, amt);
        return true;
    }

    function approve(address to, uint256 amount) external returns (bool) {
        allowance[msg.sender][to] = amount;
        emit Approval(msg.sender, to, amount);
        return true;
    }

    function _mint(address usr, uint256 amt) internal {
        balanceOf[usr] = balanceOf[usr] + amt;
        totalSupply = totalSupply + amt;
        emit Transfer(address(0), usr, amt);
    }

    function _burn(address usr, uint256 amt) internal {
        uint256 bal = balanceOf[usr];
        if (bal < amt) revert InsufficientBalance();
        balanceOf[usr] = bal - amt;
        totalSupply = totalSupply - amt;
        emit Transfer(usr, address(0), amt);
    }

    function toStringDecimals(uint256 n, uint256 d) internal pure returns (string memory) {
        uint256 x = 10 ** d;
        return string(abi.encodePacked(toString(n / x), ".", toString(n % x)));
    }

    bytes16 private constant symbols = "0123456789";

    function toString(uint256 value) internal pure returns (string memory) {
        unchecked {
            uint256 length = log10(value) + 1;
            string memory buffer = new string(length);
            uint256 ptr;
            assembly {
                ptr := add(buffer, add(32, length))
            }
            while (true) {
                ptr--;
                assembly {
                    mstore8(ptr, byte(mod(value, 10), symbols))
                }
                value /= 10;
                if (value == 0) break;
            }
            return buffer;
        }
    }

    function log10(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >= 10 ** 64) {
                value /= 10 ** 64;
                result += 64;
            }
            if (value >= 10 ** 32) {
                value /= 10 ** 32;
                result += 32;
            }
            if (value >= 10 ** 16) {
                value /= 10 ** 16;
                result += 16;
            }
            if (value >= 10 ** 8) {
                value /= 10 ** 8;
                result += 8;
            }
            if (value >= 10 ** 4) {
                value /= 10 ** 4;
                result += 4;
            }
            if (value >= 10 ** 2) {
                value /= 10 ** 2;
                result += 2;
            }
            if (value >= 10 ** 1) {
                result += 1;
            }
        }
        return result;
    }
}