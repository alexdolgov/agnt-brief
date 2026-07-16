// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import "../constants/addresses.sol";
import "../interfaces/IUSDR.sol";
import "../AddressAccessor.sol";

interface IStaking {
    function unstake(uint256 amount) external;

    function usdrMarketCap() external view returns (uint256);
}

contract USDRMigration is AddressAccessor {
    address public immutable oldUSDR;
    address public immutable oldSUSDR;
    address public immutable newUSDR;
    IStaking public immutable staking;

    bool private _initialized;

    constructor(
        address oldUSDR_,
        address oldSUSDR_,
        address newUSDR_,
        address staking_
    ) {
        oldUSDR = oldUSDR_;
        oldSUSDR = oldSUSDR_;
        newUSDR = newUSDR_;
        staking = IStaking(staking_);
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    function initialize() external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(!_initialized);
        IUSDR(addressProvider.getAddress(USDR_ADDRESS)).mint(
            address(this),
            staking.usdrMarketCap() + IERC20(newUSDR).totalSupply()
        );
        _initialized = true;
    }

    function migrate() external {
        uint256 susdrBalance = IERC20(oldSUSDR).balanceOf(msg.sender);
        if (susdrBalance > 0) {
            IERC20(oldSUSDR).transferFrom(
                msg.sender,
                address(this),
                susdrBalance
            );
            IERC20(oldSUSDR).approve(address(staking), susdrBalance);
            staking.unstake(susdrBalance);
            IUSDR(oldUSDR).burn(address(this), susdrBalance);
        }
        uint256 usdrBalance = IERC20(oldUSDR).balanceOf(msg.sender);
        if (usdrBalance > 0) {
            IUSDR(oldUSDR).burn(msg.sender, usdrBalance);
        }
        uint256 usdrBalance2 = IERC20(newUSDR).balanceOf(msg.sender);
        uint256 total = susdrBalance + usdrBalance + usdrBalance2;
        require(total > 0);
        IERC20(addressProvider.getAddress(USDR_ADDRESS)).transfer(
            msg.sender,
            total
        );
    }
}
