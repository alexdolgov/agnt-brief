// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract BlackMarketDealRoll is Ownable {
    event BlackMarketDealRolled(address indexed sender, string dealId, uint256 amount);

    address public velaTokenAddress;
    uint256 public boostAmount = 25 * 10 ** 18;
    mapping(address => uint256) public totalBoostAmount;

    constructor(address _velaTokenAddress) {
        velaTokenAddress = _velaTokenAddress;
    }

    function boost(string memory dealId) public {
        require(velaTokenAddress != address(0), "Vela token address not set");
        require(boostAmount > 0, "Invalid vela amount to boost");

        bool success = IERC20(velaTokenAddress).transferFrom(msg.sender, address(this), boostAmount);
        require(success, "Failed to transfer Vela tokens");

        totalBoostAmount[msg.sender] += boostAmount;
        emit BlackMarketDealRolled(msg.sender, dealId, boostAmount);
    }

    function setBoostAmount(uint256 _newAmount) external onlyOwner {
        require(_newAmount > 0, "Invalid vela amount");
        boostAmount = _newAmount;
    }

    function getAccountBoostAmount(address _account) external view returns (uint256) {
        return totalBoostAmount[_account];
    }

    function withdrawAllVela(address _to) external onlyOwner {
        require(_to != address(0), "Invalid address");
        require(velaTokenAddress != address(0), "Vela token address not set");

        uint256 balance = IERC20(velaTokenAddress).balanceOf(address(this));
        require(balance > 0, "No Vela tokens to transfer");

        bool success = IERC20(velaTokenAddress).transfer(_to, balance);
        require(success, "Failed to transfer Vela tokens");
    }
}
