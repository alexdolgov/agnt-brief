// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {IXShadow} from "./interfaces/IXShadow.sol";

/// @title SigmaDisperser
/// @notice Receives xSIGMA via direct transfer, owner exits all to SIGMA,
///         then distributes SIGMA to recipients.
/// @dev Pre-config: xSigma.setExemptionTo([this], [true]) so xSIGMA can be transferred in.
///      Exit via XShadow.exit() incurs a 50% slashing penalty.
contract SigmaDisperser is ReentrancyGuard {
    using SafeERC20 for IERC20;

    IERC20 public immutable sigma;
    IXShadow public immutable xSigma;

    address public owner;

    error NOT_OWNER();
    error ZERO();
    error ARRAY_MISMATCH();

    event Exited(uint256 xSigmaAmount, uint256 sigmaReceived);
    event Distributed(address indexed recipient, uint256 sigmaAmount);
    event OwnerChanged(address indexed oldOwner, address indexed newOwner);
    event EmergencyWithdraw(address indexed token, uint256 amount);

    modifier onlyOwner() {
        require(msg.sender == owner, NOT_OWNER());
        _;
    }

    constructor(address _sigma, address _xSigma, address _owner) {
        require(_sigma != address(0) && _xSigma != address(0) && _owner != address(0), ZERO());
        sigma = IERC20(_sigma);
        xSigma = IXShadow(_xSigma);
        owner = _owner;
    }

    /// @notice Exit all xSIGMA held by this contract back to SIGMA (50% penalty)
    function exitAll() external nonReentrant onlyOwner {
        uint256 xBal = IERC20(address(xSigma)).balanceOf(address(this));
        require(xBal != 0, ZERO());

        uint256 sigmaBefore = sigma.balanceOf(address(this));
        xSigma.exit(xBal);
        uint256 sigmaReceived = sigma.balanceOf(address(this)) - sigmaBefore;

        emit Exited(xBal, sigmaReceived);
    }

    /// @notice Distribute SIGMA held by this contract to recipients
    /// @param _recipients Array of recipient addresses
    /// @param _amounts Array of SIGMA amounts to send
    function distribute(
        address[] calldata _recipients,
        uint256[] calldata _amounts
    ) external nonReentrant onlyOwner {
        require(_recipients.length == _amounts.length, ARRAY_MISMATCH());

        for (uint256 i = 0; i < _recipients.length; ++i) {
            require(_recipients[i] != address(0) && _amounts[i] != 0, ZERO());
            sigma.safeTransfer(_recipients[i], _amounts[i]);
            emit Distributed(_recipients[i], _amounts[i]);
        }
    }

    // ============ Admin Functions ============

    function setOwner(address _newOwner) external onlyOwner {
        require(_newOwner != address(0), ZERO());
        emit OwnerChanged(owner, _newOwner);
        owner = _newOwner;
    }

    /// @notice Emergency: withdraw any token stuck in the contract
    function emergencyWithdraw(address _token, uint256 _amount) external onlyOwner {
        IERC20(_token).safeTransfer(owner, _amount);
        emit EmergencyWithdraw(_token, _amount);
    }
}
