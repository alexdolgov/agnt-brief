// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

import "../VoterV5/VotingEscrow/interfaces/IVotingEscrowV2.sol";

contract AirdropClaimV2 is ReentrancyGuard {

    using SafeERC20 for IERC20;

    struct UserInfo{
        uint256 totalAmount;
        uint256 initAmount;
        uint256 veAmount;
        address to;
    }

    bool public init;

    uint256 public INIT_SHARE;
    uint16 constant public PRECISION = 1000;

    uint256 public totalAirdrop;

    
    address public owner;
    address public ve;
    address public merkle;
    IERC20 public token;
    

    mapping(address => UserInfo) public users;
    mapping(address => bool) public usersFlag;
    mapping(address => bool) public depositors;

    modifier onlyOwner {
        require(msg.sender == owner, 'not owner');
        _;
    }

    modifier onlyMerkle {
        require(msg.sender == merkle, 'not merkle');
        _;
    }

    event Deposit(uint256 amount);
    event Withdraw(uint256 amount);

    constructor(address _token, address _ve) {
        owner = msg.sender;
        token = IERC20(_token);
        ve = _ve;
    }


    function deposit(uint256 amount) external {
        require(depositors[msg.sender] == true || msg.sender == owner);
        require(init == false);
        token.safeTransferFrom(msg.sender, address(this), amount);
        totalAirdrop += amount;
        emit Deposit(amount);
    }

    function withdraw(uint256 amount, address _token, address _to) external {
        require(depositors[msg.sender] == true || msg.sender == owner);
        IERC20(_token).safeTransfer(_to, amount);
        totalAirdrop -= amount;

        emit Withdraw(amount);
    }
    

    /// @notice set user infromation for LYNX claim
    /// @param _who is claiming
    /// @param _to who's getting LYNX token
    /// @param _amount total amount to claim
    /// @param veShare percentage in veTokens (1000 = 100%)
    function setUserInfo(address _who, address _to, uint256 _amount, uint16 veShare) external onlyMerkle nonReentrant returns(bool status) {

        require(_who != address(0), 'addr 0');
        require(_to != address(0), 'addr 0');
        require(_amount > 0, 'amnt 0');
        require(usersFlag[_who] == false, '!flag');
        require(init, 'not init');

        uint256 _totalVeAmount = _amount * veShare / PRECISION;
        uint256 _veAmount = _totalVeAmount / 3;
        uint256 _instantAmount = _amount  - _totalVeAmount;

        UserInfo memory _user = UserInfo({
            totalAmount: _amount,
            initAmount: _instantAmount,
            veAmount: _totalVeAmount,
            to: _to
        });

        users[_who] = _user;
        usersFlag[_who] = true;

        // send out initil LYNX amount
        token.safeTransfer(_to, _instantAmount);
        token.approve(ve, _totalVeAmount);

        // Send out tokens split 30% on each type of lock
        // 6 months, 12 months and 24 months
        IVotingEscrowV2(ve).createLockFor(_veAmount, 2 * 364 * 86400, _who, false);
        IVotingEscrowV2(ve).createLockFor(_veAmount, 1 * 364 * 86400, _who, false);
        IVotingEscrowV2(ve).createLockFor(_veAmount, 6 * 30 * 86400, _who, false);
        status = true;
    }

    /* 
        OWNER FUNCTIONS
    */

    function setDepositor(address depositor) external onlyOwner {
        require(depositors[depositor] == false);
        depositors[depositor] = true;
    }

    function setMerkleTreeContract(address _merkle) external onlyOwner {
        require(_merkle != address(0));
        merkle = _merkle;
    }

    function setOwner(address _owner) external onlyOwner{
        require(_owner != address(0));
        owner = _owner;
    }

    
    function _init() external onlyOwner {
        require(init == false);
        init = true;
    }

}