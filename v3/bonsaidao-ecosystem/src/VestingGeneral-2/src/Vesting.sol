// SPDX-License-Identifier: GNU GPLv3
pragma solidity 0.8.17;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/**
 * @title Generic ERC20 Token Team Vesting Contract
 */
contract VestingGeneral {
    using SafeERC20 for IERC20;

    event TokensReleased(address token, uint256 amount);

    IERC20 public token;
    address public beneficiary;
    address public treasury;
    uint256 public start;
    uint256 public duration;
    mapping(address => uint256) public released;

    /**
     * @param _beneficiary address of the beneficiary to whom vested tokens are transferred
     * @param _treasury address of treasury for remaining tokens to be returned to if rescinded
     * @param _tokenAddress address of vested token
     * @param _startTime start time of the vest
     * @param _duration duration in seconds of the period in which the tokens will vest
     */
    constructor(
        address _beneficiary,
        address _treasury,
        address _tokenAddress,
        uint256 _startTime,
        uint256 _duration
    ) {
        require(_beneficiary != address(0), "Beneficiary address cannot be 0");
        require(_duration > 0, "Duration must be more than 0");
        require(_tokenAddress != address(0), "Token address cannot be 0");
        require(_treasury != address(0), "Treasury address cannot be 0");
        beneficiary = _beneficiary;
        treasury = _treasury;
        duration = _duration;
        start = _startTime;
        token = IERC20(_tokenAddress);
    }

    /**
     * @notice Transfers vested tokens to beneficiary.
     */
    function release() public onlyBeneficiaryOrTreasury {
        // Vested token claim
        uint256 unreleased = _releasableAmount();

        require(unreleased > 0);
        address tokenAddress = address(token);
        released[tokenAddress] = released[tokenAddress] + unreleased;

        token.safeTransfer(beneficiary, unreleased);

        emit TokensReleased(tokenAddress, unreleased);
    }

    function updateBenificiary(address newBenificiary) external onlyBeneficiaryOrTreasury {
        require(newBenificiary != address(0));
        beneficiary = newBenificiary;
    }

    /**
     * @dev Calculates the amount that has already vested but hasn't been released yet.
     */
    function _releasableAmount() private view returns (uint256) {
        return _vestedAmount() - released[address(token)];
    }

    /**
     * @dev Calculates the amount that has already vested.
     */
    function _vestedAmount() private view returns (uint256) {
        uint256 currentBalance = token.balanceOf(address(this));
        uint256 totalBalance = currentBalance + released[address(token)];

        if (block.timestamp >= start + duration) {
            return totalBalance;
        } else {
            return (totalBalance * (block.timestamp - start)) / duration;
        }
    }

    /**
     * @return the amount of token that can be released at the current block timestamp.
     */
    function releasable() public view returns (uint256) {
        return _releasableAmount();
    }

    /************************************************
     *  ADMIN
     ***********************************************/

    function rescind() public onlyTreasury {
        uint256 toRescind = token.balanceOf(address(this));
        token.safeTransfer(treasury, toRescind);
    }

    function updateTreasury(address newTreasury) external onlyTreasury {
        require(newTreasury != address(0));
        treasury = newTreasury;
    }

    function withdraw(IERC20 _token, uint256 amount) external onlyTreasury {
        _token.safeTransfer(msg.sender, amount);
    }

    /**
     * @dev Access control.
     */
    modifier onlyTreasury() {
        require(msg.sender == treasury, "Caller is not treasury");
        _;
    }

    /**
     * @dev Access control.
     */
    modifier onlyBeneficiaryOrTreasury() {
        require(msg.sender == treasury || msg.sender == beneficiary, "Caller is not treasury or beneficiary");
        _;
    }
}