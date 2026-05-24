// SPDX-License-Identifier: MIT

pragma solidity 0.8.13;

import "@openzeppelin/contracts@4.8.0/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts@4.8.0/access/Ownable.sol";
import "@openzeppelin/contracts@4.8.0/security/ReentrancyGuard.sol";

/**
 * @title oBMXConverter
 * @author daedboi (Morphex)
 * @dev Allows users to convert their oBMX to USDC.
 */
contract oBMXConverter is Ownable, ReentrancyGuard {
    IERC20 public constant obmx =
        IERC20(0x3Ff7AB26F2dfD482C40bDaDfC0e88D01BFf79713);
    IERC20 public constant usdc =
        IERC20(0x833589fCD6eDb6E08f4c7C32D4f71b54bdA02913);
    bool public conversionEnabled;
    uint256 public ratio; // precision of 6, example: 0.18 USDC per 1 oBMX would be 180000

    event SetConversionState(bool conversionEnabled);
    event Converted(
        address indexed user,
        uint256 oBmxAmount,
        uint256 usdcAmount
    );

    /**
     * @notice Converts oBMX to USDC at a specified ratio
     * @param _amount Amount of oBMX to convert
     */
    function convert(uint256 _amount) public nonReentrant {
        require(conversionEnabled, "Conversion is not enabled.");
        require(_amount > 0, "Amount must be larger than 0.");

        obmx.transferFrom(msg.sender, address(this), _amount);

        uint256 amount = (_amount * ratio) / 10e18; // precision of 6
        usdc.transfer(msg.sender, amount);
        
        emit Converted(msg.sender, _amount, amount);
    }

    /**
     * @notice Allows the contract owner to collect any leftover MPX tokens.
     * @dev Intended for use in recovering tokens mistakenly sent to the contract or unclaimed tokens.
     */
    function collectLeftoverTokens() external onlyOwner {
        uint256 usdcBalance = usdc.balanceOf(address(this));
        uint256 obmxBalance = obmx.balanceOf(address(this));

        usdc.transfer(owner(), usdcBalance);
        obmx.transfer(owner(), obmxBalance);
    }

    /**
     * @notice Allows the contract owner to enable/disable conversions.
     */
    function setConversionState(bool _conversionEnabled) external onlyOwner {
        conversionEnabled = _conversionEnabled;

        emit SetConversionState(_conversionEnabled);
    }

    /**
     * @notice Allows the contract owner to set the conversion ratio.
     * @param _ratio The conversion ratio to set (0.18 USDC per 1 oBMX would be 180000)
     */
    function setRatio(uint256 _ratio) external onlyOwner {
        ratio = _ratio;
    }
}
