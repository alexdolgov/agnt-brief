// SPDX-License-Identifier: MIT

pragma solidity 0.8.9;

import "@openzeppelin/contracts/utils/Address.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "./interfaces/IOperators.sol";

contract AirdropPayoutForRebate is ReentrancyGuard {
    using SafeERC20 for IERC20;
    address public rebateToken;
    IOperators public operators;
    mapping(address => bool) public isPayer;

    event AirdropPayout(address indexed account, address indexed _token, uint256 amount);

    modifier onlyOperator(uint256 level) {
        require(operators.getOperatorLevel(msg.sender) >= level, "invalid operator");
        _;
    }

    modifier onlyPayer() {
        require(isPayer[msg.sender], "!payer");
        _;
    }

    /* ========== INITIALIZE FUNCTIONS ========== */

    constructor(address _rebateToken, address _operators) {   
        require(Address.isContract(_operators), "operators invalid");
        operators = IOperators(_operators);
        rebateToken = _rebateToken;
    }

    function setPayer(address _account, bool _isPayer) external onlyOperator(4) {
        isPayer[_account] = _isPayer;
    }

    // deposit stablecoin to mint vusd
    function airdropPayout(address _account, uint256 _amount) external nonReentrant onlyPayer {
        require(_amount > 0, "zero amount");
        IERC20(rebateToken).safeTransfer(_account, _amount);
        emit AirdropPayout(_account, rebateToken, _amount);
    }

    function rescueToken(address _token, uint256 _amount) external onlyOperator(4) {
        IERC20(_token).safeTransfer(msg.sender, _amount);
    }
}