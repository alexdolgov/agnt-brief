// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "./interfaces/IStaking.sol";
import "./tokens/USDR.sol";
import "./tokens/sUSDR.sol";

contract Staking is IStaking, AccessControl, Pausable {
    using SafeERC20 for IERC20;

    event Staked(address indexed account, uint256 amount);
    event Unstaked(address indexed account, uint256 amount);

    address public immutable usdr;
    address public immutable susdr;

    constructor(address usdr_, address susdr_) {
        usdr = usdr_;
        susdr = susdr_;
    }

    function migrate(address to)
        external
        onlyRole(DEFAULT_ADMIN_ROLE)
        whenNotPaused
    {
        _pause();
        uint256 balance = IERC20(usdr).balanceOf(address(this));
        IERC20(usdr).transfer(to, balance);
    }

    function recoverLostTokens(address token)
        external
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        require(token != usdr, "cannot recover USDR");
        uint256 balance = IERC20(token).balanceOf(address(this));
        IERC20(token).transfer(msg.sender, balance);
    }

    function stake(uint256 amount) external whenNotPaused {
        IERC20(usdr).transferFrom(msg.sender, address(this), amount);
        sUSDR(susdr).mint(msg.sender, amount);
        emit Staked(msg.sender, amount);
    }

    function unpause() external onlyRole(DEFAULT_ADMIN_ROLE) whenPaused {
        _unpause();
    }

    function unstake(uint256 amount) external whenNotPaused {
        sUSDR(susdr).burn(msg.sender, amount);
        uint256 balance = IERC20(usdr).balanceOf(address(this));
        if (amount > balance) {
            if (balance > 0) {
                IERC20(usdr).safeTransfer(msg.sender, balance);
            }
            USDR(usdr).mint(msg.sender, amount - balance);
        } else {
            IERC20(usdr).safeTransfer(msg.sender, amount);
        }
        emit Unstaked(msg.sender, amount);
    }

    function usdrMarketCap() external view returns (uint256) {
        return
            IERC20(usdr).totalSupply() -
            IERC20(usdr).balanceOf(address(this)) +
            IERC20(susdr).totalSupply();
    }
}
