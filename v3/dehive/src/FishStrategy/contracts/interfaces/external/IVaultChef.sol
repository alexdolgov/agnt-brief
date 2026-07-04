// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IVaultChef {
    struct PoolInfo {
        IERC20 want;
        address strat;
    }
    struct UserInfo {
        uint256 shares;
    }

    function stakedWantTokens(uint256 _pid, address _user) external view returns (uint256);

    function deposit(uint256 _pid, uint256 _wantAmt) external;

    function withdraw(uint256 _pid, uint256 _wantAmt) external;

    function withdrawAll(uint256 _pid) external;

    function poolInfo(uint256 _pid) external view returns (PoolInfo memory);

    function userInfo(uint256 _pid, address _user) external view returns (UserInfo memory);
}
