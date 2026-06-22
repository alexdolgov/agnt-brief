pragma solidity 0.4.24;

contract SafeMath {
    function safeAdd(uint a, uint b) public pure returns (uint c) {
        c = a + b;
        require(c >= a);
    }

    function safeSub(uint a, uint b) public pure returns (uint c) {
        require(b <= a);
        c = a - b;
    }

    function safeMul(uint a, uint b) public pure returns (uint c) {
        c = a * b;
        require(a == 0 || c / a == b);
    }

    function safeDiv(uint a, uint b) public pure returns (uint c) {
        require(b > 0);
        c = a / b;
    }
}

contract owned {
    address public owner;

    constructor() public {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }

    function transferOwnership(address newOwner) onlyOwner public {
        owner = newOwner;
    }
}

contract ERC20Interface {
    function totalSupply() public constant returns (uint);

    function balanceOf(address tokenOwner) public constant returns (uint balance);

    function allowance(address tokenOwner, address spender) public constant returns (uint remaining);

    function transfer(address to, uint tokens) public returns (bool success);

    function approve(address spender, uint tokens) public returns (bool success);

    function transferFrom(address from, address to, uint tokens) public returns (bool success);

    function changeTokensForSell(uint newTokensForSell) public returns (bool success);

    function changeEndSale(uint newEndSale) public returns (bool success);

    function changeRate(uint newRateUSD) public returns (bool success);

    function buyTokens() payable public returns (bool success);

    event Transfer(address indexed from, address indexed to, uint tokens);
    event Approval(address indexed tokenOwner, address indexed spender, uint tokens);
    event ChangeRate(uint newRateUSD);
}

contract ApproveAndCallFallBack {
    function receiveApproval(address from, uint256 tokens, address token, bytes data) public;
}

contract WOWToken is ERC20Interface, SafeMath, owned {
    string public symbol = "WOW";
    string public  name = "WOWswap";
    uint8 public decimals = 18;
    uint256 DEC = 10 ** uint256(decimals);
    uint public _totalSupply = 1000000 * DEC;
    uint public tokensForSell = 140000 * DEC;
    uint public totalSold = 0;
    uint public rateUSD = 12800; //$128.00 (2 decimals)
    uint public tokenPriceUSD = 500; //$5.00
    uint256 public startSale = 1614243600; //Thu Feb 25 2021 09:00:00 GMT+0000
    uint256 public endSale = 1614502800; //Sun Feb 28 2021 09:00:00 GMT+0000
    uint256 public maxBNB = 100 * DEC;

    mapping(address => uint) balances;
    mapping(address => mapping(address => uint)) allowed;

    constructor() public {
        balances[owner] = _totalSupply;
        emit Transfer(0x0, owner, _totalSupply);
    }

    function totalSupply() public constant returns (uint) {
        return _totalSupply;
    }

    function balanceOf(address tokenOwner) public constant returns (uint balance) {
        return balances[tokenOwner];
    }

    function transfer(address to, uint tokens) public returns (bool success) {
        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
        balances[to] = safeAdd(balances[to], tokens);
        emit Transfer(msg.sender, to, tokens);
        return true;
    }

    function approve(address spender, uint tokens) public returns (bool success) {
        require((tokens == 0) || (allowed[msg.sender][spender] == 0));
        allowed[msg.sender][spender] = tokens;
        emit Approval(msg.sender, spender, tokens);
        return true;
    }

    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
        balances[from] = safeSub(balances[from], tokens);
        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
        balances[to] = safeAdd(balances[to], tokens);
        emit Transfer(from, to, tokens);
        return true;
    }

    function allowance(address tokenOwner, address spender) public constant returns (uint remaining) {
        return allowed[tokenOwner][spender];
    }

    function approveAndCall(address spender, uint tokens, bytes data) public returns (bool success) {
        allowed[msg.sender][spender] = tokens;
        emit Approval(msg.sender, spender, tokens);
        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, this, data);
        return true;
    }

    function changeRate(uint newRateUSD) onlyOwner public returns (bool success) {
        rateUSD = newRateUSD;
        emit ChangeRate(newRateUSD);
        return true;
    }

    function changeTokensForSell(uint newTokensForSell) onlyOwner public returns (bool success) {
        tokensForSell = newTokensForSell;
        return true;
    }

    function changeEndSale(uint256 newEndSale) onlyOwner public returns (bool success) {
        endSale = newEndSale;
        return true;
    }

    function buyTokens() payable public returns (bool success) {
        require((now > startSale && now < endSale));

        uint tokenPriceBNB = safeDiv(rateUSD, tokenPriceUSD);

        uint nowBNB = safeDiv(balances[msg.sender], tokenPriceBNB);
        uint availableBNB = safeSub(maxBNB, nowBNB);
        uint value = msg.value;

        if (value > availableBNB) {
            uint payBack = safeSub(value, availableBNB);
            msg.sender.transfer(payBack);
            value = availableBNB;
        }

        uint amount = safeMul(tokenPriceBNB, value);

        require(safeAdd(totalSold, amount) <= tokensForSell);

        balances[owner] = safeSub(balances[owner], amount);
        balances[msg.sender] = safeAdd(balances[msg.sender], amount);
        totalSold = safeAdd(totalSold, amount);

        owner.transfer(value);

        emit Transfer(owner, msg.sender, amount);
        return true;
    }

    function() public payable {
        buyTokens();
    }
}