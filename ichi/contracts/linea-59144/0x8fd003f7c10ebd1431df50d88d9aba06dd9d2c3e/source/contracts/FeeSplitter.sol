// SPDX-License-Identifier: MIT
pragma solidity >=0.7.6;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeMath } from "@openzeppelin/contracts/math/SafeMath.sol";
import { IFeeSplitter } from "./interfaces/IFeeSplitter.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";

contract FeeSplitter is IFeeSplitter, Ownable {

    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    address public immutable override token0;
    address public immutable override token1;
    address public override recipientA;
    address public override recipientB;
    uint256 public override ratio; // Ratio of distribution to recipientB in percentage. 0-10000, 100 is 1%

    uint256 private constant _100_PERCENT = 10000;
    address private constant NULL_ADDRESS = address(0);

    constructor(address _token0, address _token1) {
        token0 = _token0;
        token1 = _token1;
        ratio = _100_PERCENT.div(2); // Default split ratio is 50%
    }

    function distributeFees() external override {
        distribute(token0);
        distribute(token1);
    }

    function distribute(address tokenAddress) private {
        IERC20 token = IERC20(tokenAddress);
        uint256 totalBalance = token.balanceOf(address(this));

        // if totalBalance is very small (dust), it may all go to recipientB
        // if recipientA is not set, all goes to recipientB
        uint256 amountToRecipientA =
            recipientA != NULL_ADDRESS ? totalBalance.mul(ratio).div(_100_PERCENT) : 0;
        uint256 amountToRecipientB = totalBalance.sub(amountToRecipientA);

        if (recipientA != NULL_ADDRESS && amountToRecipientA > 0) {
            token.safeTransfer(recipientA, amountToRecipientA);
            emit FeeDistributed(
                msg.sender,
                tokenAddress,
                recipientA,
                recipientB,
                amountToRecipientA,
                amountToRecipientB
            );
        }
        if (recipientB != NULL_ADDRESS && amountToRecipientB > 0) {
            token.safeTransfer(recipientB, amountToRecipientB);
            emit FeeDistributed(
                msg.sender,
                tokenAddress,
                recipientA,
                recipientB,
                amountToRecipientA,
                amountToRecipientB
            );
        }
    }

    function updateRecipientAddresses(address _recipientA, address _recipientB) external override onlyOwner {
        recipientA = _recipientA;
        recipientB = _recipientB;
    }

    function updateRatio(uint256 _ratio) external override onlyOwner {
        require(_ratio <= _100_PERCENT, "Ratio must be within 0 to 10000");
        ratio = _ratio;
    }

    function sweepExtraTokens(address _token, address _recipient) external override onlyOwner {
        require(_token != token0 && _token != token1, "Can't sweep main tokens");

        IERC20 token = IERC20(_token);
        uint256 tokenBalance = token.balanceOf(address(this));
        require(tokenBalance > 0, "Nothing to sweep");
        require(token.transfer(_recipient, tokenBalance), "Transfer to Recipient failed");

        emit SweepExtraTokens(msg.sender, _token, _recipient, tokenBalance);
    }

}