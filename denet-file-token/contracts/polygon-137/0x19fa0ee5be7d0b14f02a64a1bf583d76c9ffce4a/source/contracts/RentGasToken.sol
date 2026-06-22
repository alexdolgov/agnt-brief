// SPDX-License-Identifier: MIT

/*
    Created by DeNet Community
*/

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";

import "./ERC20Unsafe.sol";
import "./PoSAdmin.sol";

contract NonTransferToken  {
    event Transfer(address indexed from, address indexed to, uint256 value);

    mapping (address => uint256) public _balances;

    uint256 private _totalSupply;

    string public _name;
    string public _symbol;
    constructor (string memory name_, string memory symbol_) {
        _name = name_;
        _symbol = symbol_;
    }
    function name() public view virtual returns (string memory) {
        return _name;
    }
    function symbol() public view virtual returns (string memory) {
        return _symbol;
    }
    function decimals() public view virtual returns (uint8) {
        return 18;
    }
    function totalSupply() public view virtual  returns (uint256) {
        return _totalSupply;
    }
    function balanceOf(address account) public view virtual  returns (uint256) {
        return _balances[account];
    }
    function _mint(address account, uint256 amount) internal virtual {
        require(account != address(0), "Mint to zero address");

        _beforeTokenTransfer(address(0), account, amount);

        _totalSupply += amount;
        _balances[account] += amount;
        emit Transfer(address(0), account, amount);
    }
    function _burn(address account, uint256 amount) internal virtual {
        require(account != address(0), "Burn from zero address");

        _beforeTokenTransfer(account, address(0), amount);

        uint256 accountBalance = _balances[account];
        require(accountBalance >= amount, "Burn exceeds balance");
        _balances[account] = accountBalance - amount;
        _totalSupply -= amount;

        emit Transfer(account, address(0), amount);
    }
    function _beforeTokenTransfer(address from, address to, uint256 amount) internal virtual { }
}

contract Renter is NonTransferToken, Ownable {
    constructor ()  NonTransferToken("Rented Storage Gastoken", "rtTBY") {
    }

    function mint(address account, uint amount) external onlyOwner{
        _mint(account, amount);
    }

    function burn(address account, uint amount) external onlyOwner{
        _burn(account, amount);
    }
}

contract StakerV1 is ERC20, PoSAdmin {

    mapping(address => uint256) private _stakedAmount;
    uint256 public reserve = 0;
    address public rentTokenAddress;
    uint256 public minInterestRate = 200; // 2%
    uint256 public maxInterestRate = 100000; // 10ч
    uint256 public minFee = 1e16; // 0.01 TBY
    uint256 public minRentPeriod = 60*60; // 1 hour
    uint256 public graceFee = 500; // 5% for close Rent

    uint256 public rentCount = 0;

    struct rentPosition {
        address owner;
        uint256 lockedReserve;
        uint256 graceReward;
        uint256 deadline;
    }

    // rentId => Rent
    mapping (uint256 => rentPosition) public rentMap;

    constructor(
        address adminAddress
    ) ERC20("Staked Storage GasToken", "stTBY") PoSAdmin(adminAddress){
        Renter rent = new Renter();
        rentTokenAddress = address(rent);

        reserve = DECIMALS_18;
        _mint(msg.sender, DECIMALS_18);
    }

    function getRentMapRange(uint _from, uint _to) public view returns (rentPosition[] memory) {
        rentPosition[] memory  _returns;
        for (uint i = _from; i < _to; i++) {
            _returns[i % (_to - _from)] = rentMap[i];
        }
        return _returns;
    }

    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a >= b ? a : b;
    }
    function getInterest(uint _amount, uint rentPeriod) public view returns(uint256) {
        rentPeriod = max(rentPeriod, minRentPeriod);
        IERC20 tok = IERC20(gasTokenAddress);
        uint curBalance = tok.balanceOf(address(this));
        uint borrowed = curBalance - reserve;
        uint avInterestRate = maxInterestRate - minInterestRate;
        uint interestRate = minInterestRate + (borrowed*uint256(DIV_FEE)*10 / curBalance)*avInterestRate/uint256(DIV_FEE)/10;
        uint interestValue = interestRate * _amount * rentPeriod / TIME_1Y;
        return max(interestValue, minFee);
    }

    function Repay(uint rentId) public {
        rentPosition memory tmpPosition = rentMap[rentId];
        require(tmpPosition.deadline <= block.timestamp, "Repay: deadline > timestamp");
    
        // Burn Rented Token
        Renter rentToken = Renter(rentTokenAddress);
        rentToken.burn(tmpPosition.owner, tmpPosition.lockedReserve);  

        // Unlock Reserve
        _add_reserve(tmpPosition.lockedReserve);

        // Stake Reward
        transfer(msg.sender, tmpPosition.graceReward);
        
        // Flash this rent
        rentMap[rentId] = rentPosition(address(0), 0, 0, 0);
        rentMap[rentId] = rentMap[rentCount - 1]; // remove from map (if it last, it will already flashed)
        rentCount -= 1;
    }

    function Borrow(uint _amount, uint rentPeriod) public {
        require(_amount <= reserve, "Borrow: reserve < _amount");
        uint amountToPay = getInterest(_amount, rentPeriod);
        
        IERC20 tok = IERC20(gasTokenAddress);
        uint balanceBefore = tok.balanceOf(address(this));
        tok.transferFrom(msg.sender, address(this), amountToPay);
        uint balanceAfter = tok.balanceOf(address(this));
        uint feeAmount = balanceAfter - balanceBefore;
        require(feeAmount == amountToPay, "Borrow: wrong feeAmount");
        // calc grace fee 
        uint graceFeeGastoken = graceFee * feeAmount / uint256(DIV_FEE);
        
        // Mint Grace Reward to contract
        uint stakedGraceReward = getStakeReturns(graceFeeGastoken, balanceBefore);
        _mint(address(this), stakedGraceReward);

        feeAmount = feeAmount - graceFeeGastoken;
        _add_reserve(feeAmount);
        _del_reserve(_amount);
        rentMap[rentCount] = rentPosition(
            msg.sender,
            _amount,
            stakedGraceReward,
            block.timestamp + rentPeriod
        );
        rentCount += 1;

        Renter rentToken = Renter(rentTokenAddress);
        rentToken.mint(msg.sender, _amount);        
    }

    function _add_reserve(uint _amount) internal {
        require(_amount > 0, "_add_reserve: _amount < 0");
        reserve = reserve + _amount; 
    }

    function _del_reserve(uint _amount) internal {
        require(_amount > 0, "_del_reserve: _amount < 0");
        require(reserve >= _amount, "_del_reserve: reserve < amount");
        reserve = reserve - _amount;
    }

    function getStakeReturns(uint _amount, uint _balanceBefore) public view returns(uint256){
        require(_amount > 0, "getStakeReturns: amount <= 0");
        require(_balanceBefore > 0, "getStakeReturns: _balanceBefore <= 0");
        return totalSupply() * _amount * uint256(DIV_FEE) / _balanceBefore / uint256(DIV_FEE);
    }

    function getUnstakeAmount(uint _amount) public view returns(uint256) {
        require(_amount <= totalSupply(), "getUnstakeAmount: amount <= totalSupply");
        IERC20 tok = IERC20(gasTokenAddress);
        uint currentBalance = tok.balanceOf(address(this));
        return uint256(DIV_FEE) * currentBalance * _amount / totalSupply() / uint256(DIV_FEE);
    }

    function stake(uint256 _amount) public {
        IERC20 tok = IERC20(gasTokenAddress);
        uint balanceBefore = tok.balanceOf(address(this));
        tok.transferFrom(msg.sender, address(this), _amount);
        uint balanceAfter = tok.balanceOf(address(this));
        uint pushedAmount = balanceAfter - balanceBefore;
        uint mintAmount = getStakeReturns(pushedAmount, balanceBefore);
        _mint(msg.sender, mintAmount);
        _add_reserve(pushedAmount);
    }

    function unstake(uint _amount) public {
        uint stakerBalance = balanceOf(msg.sender);
        require(stakerBalance >= _amount, "unstake: _amount < stakerBalance");
        uint tokAmount =  getUnstakeAmount(_amount);
        require(tokAmount <= reserve, "unstake: tokAmount > reserve");
        _burn(msg.sender, _amount);
        IERC20 tok = IERC20(gasTokenAddress);
        tok.transfer(msg.sender, tokAmount);
    }
}