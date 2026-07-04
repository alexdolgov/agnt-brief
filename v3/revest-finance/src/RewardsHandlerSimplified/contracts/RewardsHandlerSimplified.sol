// SPDX-License-Identifier: GNU-GPL v3.0 or later

pragma solidity ^0.8.0;

import "./interfaces/IRewardsHandler.sol";
import "./utils/RevestAccessControl.sol";
import "@openzeppelin/contracts/access/AccessControlEnumerable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract RewardsHandlerSimplified is RevestAccessControl, IRewardsHandler {
    using SafeERC20 for IERC20;

    constructor(address provider) RevestAccessControl(provider) {}

    function receiveFee(address token, uint amount) external override {
        IERC20(token).safeTransferFrom(_msgSender(), addressesProvider.getAdmin(), amount);
    }

    function updateLPShares(uint fnftId, uint newShares) external override {}

    function updateBasicShares(uint fnftId, uint newShares) external override {}

    function getAllocPoint(uint fnftId, address token, bool isBasic) external view override returns (uint) {}

    function claimRewards(uint fnftId, address caller) external override returns (uint) {}

    function setStakingContract(address stake) external override {}

    function getRewards(uint fnftId, address token) external view override returns (uint) {}

}
