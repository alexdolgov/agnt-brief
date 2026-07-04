// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/**
 * @title   TokenAdmin
 * @author  Thruster
 * @notice  This contract "mints" tokens from a token balance when called by the Minter contract.
 * @dev     Adaptations:
 *          - It has a variable rate which is different to Curve's gauge system
 */
contract TokenAdmin is Ownable {
    using SafeERC20 for IERC20;

    address public immutable token;
    address public immutable minter;

    // Mint rate of tokens per second
    uint256 public rate;

    event SetRate(uint256 rate);

    constructor(
        address token_,
        address minter_,
        uint256 rate_
    ) Ownable(msg.sender) {
        token = token_;
        minter = minter_;
        rate = rate_;
    }

    /**
     * @notice Updates mint rate value.
     * @dev The mint rate is read by gauges contract while checkpointing ie StakelessGauge, LiquidityGaugeV5.
     * This function should only be called by the owner of the contract
     * @param _rate The new rate.
     */
    function setRate(uint256 _rate) external onlyOwner {
        rate = _rate;
        emit SetRate(_rate);
    }

    /**
     * @dev The Minter contract is responsible for checks for how much to mint.
     * @param to_ The address to mint to
     * @param amount_ The amount to mint
     */
    function mint(address to_, uint256 amount_) external returns (bool) {
        require(msg.sender == minter, "TokenAdmin: Not minter");
        require(to_ != address(0), "TokenAdmin: Cannot mint to zero address");
        require(amount_ > 0, "TokenAdmin: Cannot mint zero amount");

        IERC20(token).safeTransfer(to_, amount_);

        return true;
    }
}
