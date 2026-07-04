//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.4;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

contract ClaimReward is Ownable, Pausable, ReentrancyGuard {
    using SafeERC20 for IERC20;
    using ECDSA for bytes32;
    using Counters for Counters.Counter;

    uint256 public constant ONE_HUNDRED_PERCENT = 10000;
    address public tokenReward;
    address public validator;
    
    mapping(address => bool) public isClaimed;

    constructor (address _tokenReward, address _validator) {
        tokenReward = _tokenReward;
        validator = _validator;
    }

    modifier onlyEOA() {
        // Try to make flash-loan exploit harder to do by only allowing externally owned addresses.
        require(msg.sender == tx.origin, "ClaimReward: must use EOA");
        _;
    }

    // ================= INTERNAL FUNCTIONS ================= //
    function _getValidatorSignature(bytes32 hash, bytes memory signature) internal view returns (address) {
        return ECDSA.recover(hash, signature);
    }

    function _prefixed(bytes32 hash) internal pure returns (bytes32) {
        return keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n32", hash));
    }

    // ================= PUBLIC FUNCTIONS ================= //
    function claimReward(uint _amount, uint _expiredTime, bytes memory signature) external onlyEOA whenNotPaused nonReentrant {
        require(msg.sender != address(0), "ClaimReward: Address not zero");
        require(block.timestamp <= _expiredTime, "ClaimReward: Expired time");
        require(!isClaimed[msg.sender], "ClaimReward: You are claimed");
        isClaimed[msg.sender] = true;

        bytes32 _hash = _prefixed(keccak256(abi.encodePacked(_amount, _expiredTime, msg.sender, address(this))));
        require(validator == _getValidatorSignature(_hash, signature), "ClaimReward: Signature invalid");

        IERC20(tokenReward).safeTransfer(msg.sender, _amount);
        
        emit ClaimRewarded(msg.sender, tokenReward, _amount);
    }

    function checkBalance()public view returns(uint256) {
        return IERC20(tokenReward).balanceOf(address(this));
    }

    // ================= ADMIN FUNCTIONS ================= //
    function emergencyWithdraw(address _token) external onlyOwner whenPaused {
        uint256 _amount = IERC20(tokenReward).balanceOf(address(this));
        IERC20(tokenReward).safeTransfer(msg.sender, _amount);
        emit EmergencyWithdraw(tokenReward, _amount);
    }

    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }

    function changeValidator(address _validator) external onlyOwner {
        address oldValidator = validator;
        validator = _validator;
        emit ValidatorChanged(oldValidator, validator);
    }

    event ClaimRewarded(address user, address token, uint256 amount);
    event EmergencyWithdraw(address token, uint256 amount);
    event AddBalance(address token, uint256 amount);
    event ValidatorChanged(address indexed oldValidator, address indexed newValidator);
}