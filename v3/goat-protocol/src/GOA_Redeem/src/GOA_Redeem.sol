// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import { Ownable } from "@openzeppelin/access/Ownable.sol";
import { Pausable } from "@openzeppelin/utils/Pausable.sol";
import { Math } from "@openzeppelin/utils/math/Math.sol";
import { IERC20} from "@openzeppelin/token/ERC20/IERC20.sol";

contract GOA_Redeem is Ownable, Pausable {
    using Math for uint256;

    IERC20 public GOA;
    IERC20 public crvUSD;

    address public constant BURN_ADDRESS = 0x000000000000000000000000000000000000dEaD;

    event Redeemed(address indexed user, uint256 goaAmount, uint256 crvUSDAmount);

    constructor(address _goa, address _crvUSD) Ownable(msg.sender) {
        GOA = IERC20(_goa);
        crvUSD = IERC20(_crvUSD);
    }

    /**
     * @notice Owner can withdraw crvUSD from the contract
     * @param _amount Amount of crvUSD to withdraw
     */
    function withdraw(uint256 _amount) external onlyOwner {
        crvUSD.transfer(msg.sender, _amount);
    }

    /**
     * @notice Opens redemption (unpauses the contract)
     */
    function open() external onlyOwner {
        _unpause();
    }

    /**
     * @notice Closes redemption (pauses the contract)
     */
    function close() external onlyOwner {
        _pause();
    }

    /**
     * @notice User redeems GOA for crvUSD atomically at 1 GOA = 0.2 crvUSD
     * @param _amount Amount of GOA to redeem
     */
    function redeem(uint256 _amount) external whenNotPaused {
        require(_amount > 0, "Amount must be greater than 0");
        
        // Calculate crvUSD amount: 1 GOA = 0.2 crvUSD
        uint256 crvUSDAmount = _amount.mulDiv(2, 10);
        require(crvUSD.balanceOf(address(this)) >= crvUSDAmount, "Insufficient crvUSD in contract");
        
        GOA.transferFrom(msg.sender, BURN_ADDRESS, _amount);
        crvUSD.transfer(msg.sender, crvUSDAmount);
        
        emit Redeemed(msg.sender, _amount, crvUSDAmount);
    }

    /**
     * @notice Get the contract's crvUSD balance
     * @return The amount of crvUSD held by the contract
     */
    function getCrvUSDBalance() external view returns (uint256) {
        return crvUSD.balanceOf(address(this));
    }
}
