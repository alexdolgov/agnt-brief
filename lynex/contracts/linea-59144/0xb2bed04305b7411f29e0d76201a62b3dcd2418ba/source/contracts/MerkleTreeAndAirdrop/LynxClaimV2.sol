// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";

import {IVotingEscrowV2} from "../VoterV5/VotingEscrow/interfaces/IVotingEscrowV2.sol";
//import Ownable contract from OpenZeppelin library
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IOptionTokenV3} from "../OptionToken/IOptionTokenV3.sol";

contract LynxClaimV2 is ReentrancyGuard, Ownable {
    using SafeERC20 for IERC20;

    bool public init;

    IOptionTokenV3 public oLynx;

    // 50% veLYNX, 50% instant claim
    uint256 public constant PRECISION = 1000;
    uint256 public constant VE_SHARE = 500;

    address public constant DEAD = 0x000000000000000000000000000000000000dEaD;

    uint256 public totalAirdrop;

    address public immutable ve;
    IERC20 public immutable token;
    IERC20 public immutable claimToken;

    mapping(address => bool) public depositors;

    event Deposit(uint256 amount);
    event Withdraw(uint256 amount);
    event Init();
    event SetDepositor(address indexed depositor, bool status);
    event Claim(address indexed to, uint256 amount, uint256 instantAmount, uint256 veAmount);

    constructor(address _token, address _claimToken, address _ve, IOptionTokenV3 _oLynx) {
        token = IERC20(_token);
        claimToken = IERC20(_claimToken);
        ve = _ve;
        oLynx = _oLynx;
        token.approve(ve, type(uint256).max);
        token.approve(address(oLynx), type(uint256).max);
    }

    /**
     * @notice deposit LYNX to claim. Only owner or depositors can deposit
     * @param amount amount of LYNX to deposit
     */
    function deposit(uint256 amount) external {
        require(depositors[msg.sender] || msg.sender == owner(), "not depositor");
        require(!init, "not initialized");
        token.safeTransferFrom(msg.sender, address(this), amount);
        totalAirdrop += amount;
        emit Deposit(amount);
    }

    /**
     * @notice withdraw LYNX from claim. Only owner or depositors can withdraw
     * @param amount amount of LYNX to withdraw
     * @param _to recipient of
     */
    function withdraw(uint256 amount, address _to) external {
        require(depositors[msg.sender] || msg.sender == owner(), "not depositor");
        IERC20(token).safeTransfer(_to, amount);
        totalAirdrop -= amount;

        emit Withdraw(amount);
    }

    /// @notice claim LYNX with LYNXClaim token
    /// @param _amount total amount to claim
    function claim(uint256 _amount) external nonReentrant {
        _claim(msg.sender, _amount);
    }

    /// @notice claim LYNX with LYNXClaim token
    /// @param _to who's getting LYNX token
    /// @param _amount total amount to claim
    function claim(address _to, uint256 _amount) external nonReentrant {
        _claim(_to, _amount);
    }

    /// @notice claim LYNX with LYNXClaim token
    /// @param _to who's getting LYNX token
    /// @param _amount total amount to claim
    function _claim(address _to, uint256 _amount) internal {
        require(_to != address(0), "addr 0");
        require(_amount > 0, "amnt 0");
        require(init, "not init");

        // Burn claim tokens
        claimToken.safeTransferFrom(_to, DEAD, _amount);

        uint256 _totalVeAmount = (_amount * VE_SHARE) / PRECISION;
        uint256 _instantAmount = _amount - _totalVeAmount;

        // send out initial LYNX amount
        oLynx.mint(_to, _instantAmount);

        // Send out veLYNX tokens max locked
        IVotingEscrowV2(ve).createLockFor(_totalVeAmount, 2 * 364 * 86400, _to, true);
        emit Claim(_to, _amount, _instantAmount, _totalVeAmount);
    }

    /* 
        OWNER FUNCTIONS
    */
    function setDepositor(address depositor, bool status) external onlyOwner {
        depositors[depositor] = status;
        emit SetDepositor(depositor, status);
    }

    function _init() external onlyOwner {
        require(init == false, "already initialized");
        init = true;
        emit Init();
    }
}
