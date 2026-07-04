pragma solidity ^0.4.23;

import "./AddressUtil.sol";

contract BaseAdmin {
    bool public isPaused;

    address public addrAdmin;
    address public operator;

    constructor() public {
        isPaused = false;
        addrAdmin = msg.sender;
    }

    modifier onlyAdmin() {
        require(msg.sender == addrAdmin, "not admin");
        _;
    }

    modifier onlyOperator() {
        require(msg.sender == operator, "not op");
        _;
    }

    modifier onlyHuman() {
        require(msg.sender == tx.origin, "not human");
        _;
    }

    modifier unPaused() {
        require(!isPaused, "paused");
        _;
    }

    function setAdmin(address _newAdmin) external onlyAdmin {
        require(_newAdmin != address(0), "_newAdmin can't be address 0");
        addrAdmin = _newAdmin;
    }

    function setOperator(address _addr) external onlyAdmin {
        require(_addr != address(0), "_addr can't be address 0");
        operator = _addr;
    }

    function setPause(bool _pause) external onlyAdmin {
        isPaused = _pause;
    }
}


contract FinanceAdmin is BaseAdmin{
    address public addrFinance;
    using AddressUtil for address;

    constructor() public {
        addrFinance = msg.sender;
    }

    modifier onlyFinance() {
        require(msg.sender == addrFinance, "not finance");
        _;
    }

    function setFinance(address _addr) external onlyFinance {
        require(_addr != address(0), "_addr is 0");
        addrFinance= _addr;
    }

    function updateVersion(address[] tokenAddrs) external onlyAdmin {
        require(addrFinance != address(0), "finance is 0");
        uint256[] memory tokenValues= address(this).getAllBalance(tokenAddrs);
        addrFinance.transferAll(tokenAddrs, tokenValues);
    }
}
