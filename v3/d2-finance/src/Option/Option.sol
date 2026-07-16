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
            _getScientificNotation(strike, decimals)
        ));
        symbol = name;
    }

    function create(uint256 amount) external {
        if (block.timestamp > expiry) revert Expired();
        if (msg.sender != receiver) revert Unauthorized();
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

    function _getPriceDecimals(uint256 price_, uint8 tokenDecimals_) internal pure returns (int8) {
        int8 decimals;
        while (price_ >= 10) {
            price_ = price_ / 10;
            decimals++;
        }
        return decimals - int8(tokenDecimals_);
    }

    function _getScientificNotation(
        uint256 price_,
        uint8 tokenDecimals_
    ) internal pure returns (bytes memory) {
        int8 priceDecimals = _getPriceDecimals(price_, tokenDecimals_);
        bytes memory decStr;
        if (priceDecimals < 0) {
            uint256 decimals = uint256(uint8(-priceDecimals));
            decStr = bytes.concat("e-", bytes(_uint2str(decimals)));
        } else {
            uint256 decimals = uint256(uint8(priceDecimals));
            decStr = bytes.concat("e+", bytes(_uint2str(decimals)));
        }
        uint8 priceMagnitude = uint8(int8(tokenDecimals_) + priceDecimals);
        uint256 digits = price_ / (10 ** (priceMagnitude < 3 ? 0 : priceMagnitude - 3));
        bytes memory digitStr = bytes(_uint2str(digits));
        uint256 len = bytes(digitStr).length;
        bytes memory leadingStr = bytes.concat(digitStr[0], ".");
        for (uint256 i = 1; i < len; ++i) {
            leadingStr = bytes.concat(leadingStr, digitStr[i]);
        }
        return bytes.concat(leadingStr, decStr);
    }

    function _uint2str(uint256 _i) internal pure returns (string memory) {
        if (_i == 0) {
            return "0";
        }
        uint256 j = _i;
        uint256 len;
        while (j != 0) {
            len++;
            j /= 10;
        }
        bytes memory bstr = new bytes(len);
        uint256 k = len;
        while (_i != 0) {
            k = k - 1;
            uint8 temp = (48 + uint8(_i - (_i / 10) * 10));
            bytes1 b1 = bytes1(temp);
            bstr[k] = b1;
            _i /= 10;
        }
        return string(bstr);
    }
}