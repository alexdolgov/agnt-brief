// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

import "./interfaces/IVotingEscrow.sol";
import "./interfaces/IWETH.sol";
import "./libraries/Constants.sol";

interface ISWPxNFT {
    function originalMinters(address) external view returns(uint);
    function totalSupply() external view returns(uint);
    function reservedAmount() external view returns(uint);
}

contract Royalties is ReentrancyGuard {

    using SafeERC20 for IERC20;

    IERC20 public wsonic;

    uint public DISTRIBUTION = Constants.EPOCH_LENGTH;

    uint256 public epoch;

    ISWPxNFT public swpxNFT;
    address public owner;

    mapping(uint => uint) public feesPerEpoch;
    mapping(uint => uint) public totalSupply;
    mapping(uint => uint) public reservedAmounts;
    mapping(address => bool) public depositors;
    mapping(address => uint) public userCheckpoint;

    modifier onlyOwner {
        require(msg.sender == owner, 'not owner');
        _;
    }

    modifier allowed {
        require(depositors[msg.sender] == true || msg.sender == owner, 'not allowed');
        _;
    }

    event Deposit(uint256 amount);
    event VestingUpdate(uint256 balance, uint256 vesting_period, uint256 tokenPerSec);

    constructor(address _wsonic, address _swpxNFT) {
        owner = msg.sender;
        wsonic = IERC20(_wsonic);
        swpxNFT = ISWPxNFT(_swpxNFT);
        epoch = 0;
    }


    function deposit(uint256 amount) external payable allowed {

        require(amount > 0 || msg.value > 0);
        uint256 _amount = 0;
        if(msg.value == 0){
            wsonic.safeTransferFrom(msg.sender, address(this), amount);
            _amount = amount;
        } else {
            IWETH(address(wsonic)).deposit{value: address(this).balance}();
            _amount = msg.value;
        }

        feesPerEpoch[epoch] = _amount;
        totalSupply[epoch] = swpxNFT.totalSupply();
        reservedAmounts[epoch] = swpxNFT.reservedAmount();
        epoch++;
    }

    function withdrawERC20(address _token) external onlyOwner {
        require(_token != address(0));
        uint256 _balance = IERC20(_token).balanceOf(address(this));
        IERC20(_token).safeTransfer(msg.sender, _balance);
    }


    function claim(address to) external nonReentrant {
        require(to != address(0));

        // get amount
        uint256 _toClaim = claimable(msg.sender);
        require(_toClaim <= wsonic.balanceOf(address(this)), 'too many rewards');
        require(_toClaim > 0, 'wait next');

        // update checkpoint
        userCheckpoint[msg.sender] = epoch;

        // send and enjoy
        wsonic.safeTransfer(to, _toClaim);
    }

    function claimTill(address to, uint256 tillEpoch) external nonReentrant {
        require(to != address(0));
        require(tillEpoch <= epoch && tillEpoch > userCheckpoint[msg.sender], "wrong epoch");

        // get amount
        uint256 _toClaim = _claimableTill(msg.sender, tillEpoch);
        require(_toClaim <= wsonic.balanceOf(address(this)), 'too many rewards');
        require(_toClaim > 0, 'wait next');

        // update checkpoint
        userCheckpoint[msg.sender] = tillEpoch;

         // send and enjoy
        wsonic.safeTransfer(to, _toClaim);
    }


    function claimable(address user) public view returns(uint) {
        return _claimableTill(user, epoch);
    }

    /*
        OWNER FUNCTIONS
    */

    function setDepositor(address depositor) external onlyOwner {
        require(depositors[depositor] == false);
        depositors[depositor] = true;
    }

    function removeDepositor(address depositor) external onlyOwner {
        require(depositors[depositor] == true);
        depositors[depositor] = false;
    }

    function setOwner(address _owner) external onlyOwner{
        require(_owner != address(0));
        owner = _owner;
    }

    // internal methods

    function _claimableTill(address _user, uint256 _epoch) internal view returns (uint256) {
        require(_user != address(0));
        //Total fees * swpxNFT.originalMinters[msg.sender] / (swpxNFT.totalSupply - swpxNFT.reservedAmount)
        uint256 cp = userCheckpoint[_user];
        if(_epoch > epoch) {
            _epoch = epoch;
        }
        if(cp >= _epoch){
            return 0;
        }

        uint i;
        uint256 _reward = 0;
        for(i = cp; i < _epoch; i++){
            uint256 _resAmnt = reservedAmounts[i];
            uint256 _tot = totalSupply[i];
            uint256 _fee = feesPerEpoch[i];
            uint256 weight = swpxNFT.originalMinters(_user);
            _reward += _fee * weight / (_tot - _resAmnt);
        }
        return _reward;
    }

}