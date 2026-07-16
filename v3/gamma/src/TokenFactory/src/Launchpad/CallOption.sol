// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {FullMath} from "v4-core/libraries/FullMath.sol";

/// @title CallOption
/// @notice European-style call option with linear vesting
/// @dev Holder can exercise vested tokens by paying ETH at strike price
contract CallOption {
    using SafeERC20 for IERC20;

    /// @notice The token that can be purchased
    address public immutable token;

    /// @notice The holder who can exercise the option
    address public holder;

    /// @notice Total amount of tokens subject to the option
    uint256 public immutable totalAmount;

    /// @notice Strike price as sqrtPriceX96 (Q96 format)
    /// @dev Same format as Uniswap V4 pool initialization price
    uint160 public immutable sqrtPriceX96;

    /// @notice Timestamp when vesting starts
    uint256 public immutable vestingStart;

    /// @notice Timestamp when vesting ends (12 months from start)
    uint256 public immutable vestingEnd;

    /// @notice Total amount of tokens already exercised
    uint256 public exercised;

    /// @notice Address that receives 99% of exercise ETH (buyback contract)
    address public immutable buybackAddress;

    /// @notice Address that receives 1% of exercise ETH (treasury)
    address public immutable treasury;

    /// @notice Emitted when holder address is changed
    event HolderChanged(address indexed oldHolder, address indexed newHolder);

    /// @notice Emitted when tokens are exercised
    event Exercised(address indexed holder, uint256 tokenAmount, uint256 ethPaid);

    /// @param _token Address of the token
    /// @param _holder Address that can exercise the option
    /// @param _totalAmount Total tokens subject to option (15% of supply)
    /// @param _sqrtPriceX96 Strike price in sqrtPriceX96 format (Q96)
    /// @param _buybackAddress Address receiving 99% of ETH
    /// @param _treasury Address receiving 1% of ETH
    constructor(
        address _token,
        address _holder,
        uint256 _totalAmount,
        uint160 _sqrtPriceX96,
        address _buybackAddress,
        address _treasury
    ) {
        require(_token != address(0), "Invalid token");
        require(_holder != address(0), "Invalid holder");
        require(_totalAmount > 0, "Invalid amount");
        require(_sqrtPriceX96 > 0, "Invalid sqrt price");
        require(_buybackAddress != address(0), "Invalid buyback address");
        require(_treasury != address(0), "Invalid treasury");

        token = _token;
        holder = _holder;
        totalAmount = _totalAmount;
        sqrtPriceX96 = _sqrtPriceX96;
        vestingStart = block.timestamp;
        vestingEnd = block.timestamp + 365 days; // 12 months linear vesting
        buybackAddress = _buybackAddress;
        treasury = _treasury;
    }

    /// @notice Change the holder address
    /// @dev Can only be called by current holder
    /// @param _holder New holder address
    function setHolder(address _holder) external {
        require(msg.sender == holder, "Only holder can change");
        require(_holder != address(0), "Invalid holder");

        address oldHolder = holder;
        holder = _holder;

        emit HolderChanged(oldHolder, _holder);
    }

    /// @notice Calculate amount of tokens currently exercisable
    /// @return uint256 Amount of tokens that have vested and not been exercised
    function getExercisableAmount() public view returns (uint256) {
        if (block.timestamp >= vestingEnd) {
            // After vesting end, all remaining tokens are exercisable
            return totalAmount - exercised;
        }

        // Linear vesting: calculate vested amount
        uint256 elapsed = block.timestamp - vestingStart;
        uint256 duration = vestingEnd - vestingStart;
        uint256 vested = (totalAmount * elapsed) / duration;

        // Return vested minus already exercised
        return vested > exercised ? vested - exercised : 0;
    }

    /// @notice Exercise the call option
    /// @dev Holder pays ETH at strike price to receive vested tokens
    /// @param tokenAmount Amount of tokens to exercise
    function exercise(uint256 tokenAmount) external payable {
        require(msg.sender == holder, "Only holder can exercise");
        require(tokenAmount > 0, "Amount must be positive");
        require(tokenAmount <= getExercisableAmount(), "Exceeds exercisable amount");

        // Calculate required ETH: (tokenAmount * sqrtPrice^2) / 2^192
        // Use FullMath.mulDiv to handle overflow safely
        uint256 sqrtPriceSquared = uint256(sqrtPriceX96) * uint256(sqrtPriceX96);
        uint256 ethRequired = FullMath.mulDiv(tokenAmount, sqrtPriceSquared, 1 << 192);
        require(msg.value >= ethRequired, "Insufficient ETH");

        // Update exercised amount
        exercised += tokenAmount;

        // Split ETH: 1% to treasury, 99% to buyback
        uint256 treasuryAmount = ethRequired / 100;
        uint256 buybackAmount = ethRequired - treasuryAmount;

        // Transfer ETH
        (bool success1,) = treasury.call{value: treasuryAmount}("");
        require(success1, "Treasury transfer failed");

        (bool success2,) = buybackAddress.call{value: buybackAmount}("");
        require(success2, "Buyback transfer failed");

        // Transfer tokens to holder
        IERC20(token).safeTransfer(holder, tokenAmount);

        // Refund excess ETH
        if (msg.value > ethRequired) {
            (bool refund,) = msg.sender.call{value: msg.value - ethRequired}("");
            require(refund, "Refund failed");
        }

        emit Exercised(holder, tokenAmount, ethRequired);
    }

    /// @notice Get total vested amount (including already exercised)
    /// @return uint256 Total tokens that have vested
    function getVestedAmount() external view returns (uint256) {
        if (block.timestamp >= vestingEnd) {
            return totalAmount;
        }

        uint256 elapsed = block.timestamp - vestingStart;
        uint256 duration = vestingEnd - vestingStart;
        return (totalAmount * elapsed) / duration;
    }

    /// @notice Calculate ETH required to exercise given amount of tokens
    /// @param tokenAmount Amount of tokens to exercise
    /// @return uint256 ETH required in wei
    function getExerciseCost(uint256 tokenAmount) external view returns (uint256) {
        uint256 sqrtPriceSquared = uint256(sqrtPriceX96) * uint256(sqrtPriceX96);
        return FullMath.mulDiv(tokenAmount, sqrtPriceSquared, 1 << 192);
    }

    /// @notice Check remaining time until full vesting
    /// @return uint256 Seconds remaining, 0 if fully vested
    function getRemainingVestingTime() external view returns (uint256) {
        if (block.timestamp >= vestingEnd) {
            return 0;
        }
        return vestingEnd - block.timestamp;
    }

    /// @notice Recover tokens accidentally sent to this contract
    /// @dev Cannot recover the option token itself
    /// @param _token Token to recover
    function recoverToken(address _token) external {
        require(_token != token, "Cannot recover option token");
        uint256 balance = IERC20(_token).balanceOf(address(this));
        IERC20(_token).safeTransfer(holder, balance);
    }

    /// @notice Allow contract to receive ETH
    receive() external payable {}
}
