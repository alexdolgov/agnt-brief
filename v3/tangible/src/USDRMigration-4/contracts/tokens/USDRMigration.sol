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
    IStaking public immutable staking;

    constructor(
        address oldUSDR_,
        address oldSUSDR_,
        address staking_
    ) {
        oldUSDR = oldUSDR_;
        oldSUSDR = oldSUSDR_;
        staking = IStaking(staking_);
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    function initialize() external onlyRole(DEFAULT_ADMIN_ROLE) {
        IUSDR(addressProvider.getAddress(USDR_ADDRESS)).mint(
            address(this),
            staking.usdrMarketCap()
        );
    }

    function migrate() external {
        uint256 susdrBalance = IERC20(oldSUSDR).balanceOf(msg.sender);
        if (susdrBalance > 0) {
            IERC20(oldSUSDR).transferFrom(
                msg.sender,
                address(this),
                susdrBalance
            );
            staking.unstake(susdrBalance);
            IUSDR(oldUSDR).burn(msg.sender, susdrBalance);
        }
        uint256 usdrBalance = IERC20(oldUSDR).balanceOf(msg.sender);
        if (usdrBalance > 0) {
            IUSDR(oldUSDR).burn(msg.sender, usdrBalance);
        }
        uint256 total = susdrBalance + usdrBalance;
        require(total > 0);
        IERC20(addressProvider.getAddress(USDR_ADDRESS)).transfer(
            msg.sender,
            total
        );
    }
}
